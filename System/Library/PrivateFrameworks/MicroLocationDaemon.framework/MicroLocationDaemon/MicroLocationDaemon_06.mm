__n128 std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamProbabilityVectorAlgorithm::localizeRfFingerprint(std::vector<ULROI> const&,CLMicroLocationFingerprint const&,ULHomeSlamSettings const&)::$_1 &,ULRoomProbability *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5)
{
  v5 = a2->n128_u32[0];
  v6 = a3->n128_u32[0];
  if (a2->n128_u32[0] >= a1->n128_u32[0])
  {
    if (v6 < v5)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      v6 = result.n128_u32[0];
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
        v6 = a3->n128_u32[0];
      }
    }
  }

  else
  {
    v7 = a1->n128_u64[0];
    v8 = a1->n128_u64[1];
    if (v6 < v5)
    {
      result = *a3;
      *a1 = *a3;
LABEL_9:
      a3->n128_u64[0] = v7;
      a3->n128_u64[1] = v8;
      v6 = v7;
      goto LABEL_10;
    }

    result = *a2;
    *a1 = *a2;
    a2->n128_u64[0] = v7;
    a2->n128_u64[1] = v8;
    v6 = a3->n128_u32[0];
    if (a3->n128_u32[0] < v7)
    {
      result = *a3;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u32[0] < v6)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_u32[0] < a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (a5->n128_u32[0] < a4->n128_u32[0])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (a4->n128_u32[0] < a3->n128_u32[0])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (a3->n128_u32[0] < a2->n128_u32[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u32[0] < a1->n128_u32[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamProbabilityVectorAlgorithm::localizeRfFingerprint(std::vector<ULROI> const&,CLMicroLocationFingerprint const&,ULHomeSlamSettings const&)::$_1 &,ULRoomProbability *>(__n128 *a1, __n128 *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1 + 1;
      v7 = a1[1].n128_i32[0];
      v8 = a2 - 1;
      v9 = a2[-1].n128_i32[0];
      if (v7 < a1->n128_u32[0])
      {
        v11 = a1->n128_u64[0];
        v10 = a1->n128_u64[1];
        if (v9 >= v7)
        {
          *a1 = *v6;
          a1[1].n128_u64[0] = v11;
          a1[1].n128_u64[1] = v10;
          if (v8->n128_u32[0] >= v11)
          {
            goto LABEL_52;
          }

          *v6 = *v8;
        }

        else
        {
          *a1 = *v8;
        }

        a2[-1].n128_u64[0] = v11;
        a2[-1].n128_u64[1] = v10;
        goto LABEL_52;
      }

      if (v9 >= v7)
      {
LABEL_52:
        result = 1;
        goto LABEL_53;
      }

      v26 = a1[1];
      *v6 = *v8;
      *v8 = v26;
LABEL_50:
      if (a1[1].n128_u32[0] < a1->n128_u32[0])
      {
        v40 = *a1;
        *a1 = *v6;
        a1[1] = v40;
      }

      goto LABEL_52;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamProbabilityVectorAlgorithm::localizeRfFingerprint(std::vector<ULROI> const&,CLMicroLocationFingerprint const&,ULHomeSlamSettings const&)::$_1 &,ULRoomProbability *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      goto LABEL_52;
    }

    v6 = a1 + 1;
    v19 = a1[1].n128_i32[0];
    v20 = a1 + 2;
    v21 = a1[2].n128_i32[0];
    v22 = &a2[-1];
    v23 = a1->n128_u32[0];
    if (v19 >= a1->n128_u32[0])
    {
      if (v21 < v19)
      {
        v29 = *v6;
        *v6 = *v20;
        *v20 = v29;
        v21 = v29.n128_u32[0];
        if (v6->n128_u32[0] < v23)
        {
          v30 = *a1;
          *a1 = *v6;
          a1[1] = v30;
        }
      }

      goto LABEL_47;
    }

    v24 = a1->n128_u64[0];
    v25 = a1->n128_u64[1];
    if (v21 >= v19)
    {
      *a1 = *v6;
      a1[1].n128_u64[0] = v24;
      a1[1].n128_u64[1] = v25;
      if (v21 >= v24)
      {
        goto LABEL_47;
      }

      *v6 = *v20;
    }

    else
    {
      *a1 = *v20;
    }

    a1[2].n128_u64[0] = v24;
    a1[2].n128_u64[1] = v25;
    v21 = v24;
LABEL_47:
    if (*v22 >= v21)
    {
      goto LABEL_52;
    }

    v38 = *v20;
    *v20 = *v22;
    *v22 = v38;
    if (v20->n128_u32[0] >= v6->n128_u32[0])
    {
      goto LABEL_52;
    }

    v39 = a1[1];
    *v6 = *v20;
    a1[2] = v39;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    goto LABEL_52;
  }

  if (v2 == 2)
  {
    v4 = a2[-1].n128_i32[0];
    v3 = a2 - 1;
    if (v4 < a1->n128_u32[0])
    {
      v5 = *a1;
      *a1 = *v3;
      *v3 = v5;
    }

    goto LABEL_52;
  }

LABEL_13:
  v12 = a1 + 2;
  v13 = a1[2].n128_i32[0];
  v14 = a1 + 1;
  v15 = a1[1].n128_i32[0];
  v16 = a1->n128_u32[0];
  if (v15 >= a1->n128_u32[0])
  {
    if (v13 < v15)
    {
      v27 = *v14;
      *v14 = *v12;
      *v12 = v27;
      if (v14->n128_u32[0] < v16)
      {
        v28 = *a1;
        *a1 = *v14;
        a1[1] = v28;
      }
    }
  }

  else
  {
    v18 = a1->n128_u64[0];
    v17 = a1->n128_u64[1];
    if (v13 >= v15)
    {
      *a1 = *v14;
      a1[1].n128_u64[0] = v18;
      a1[1].n128_u64[1] = v17;
      if (v13 >= v18)
      {
        goto LABEL_33;
      }

      *v14 = *v12;
    }

    else
    {
      *a1 = *v12;
    }

    a1[2].n128_u64[0] = v18;
    a1[2].n128_u64[1] = v17;
  }

LABEL_33:
  v31 = a1 + 3;
  if (&a1[3] == a2)
  {
    goto LABEL_52;
  }

  v32 = 0;
  v33 = 0;
  while (1)
  {
    v34 = v31->n128_u32[0];
    if (v31->n128_u32[0] < v12->n128_u32[0])
    {
      v43 = *(v31->n128_i64 + 4);
      v44 = v31->n128_u32[3];
      v35 = v32;
      while (1)
      {
        *(a1 + v35 + 48) = *(a1 + v35 + 32);
        if (v35 == -32)
        {
          break;
        }

        v36 = *(a1[1].n128_i32 + v35);
        v35 -= 16;
        if (v34 >= v36)
        {
          v37 = &a1[3] + v35;
          goto LABEL_41;
        }
      }

      v37 = a1;
LABEL_41:
      *v37 = v34;
      *(v37 + 4) = v43;
      *(v37 + 12) = v44;
      if (++v33 == 8)
      {
        break;
      }
    }

    v12 = v31;
    v32 += 16;
    if (++v31 == a2)
    {
      goto LABEL_52;
    }
  }

  result = &v31[1] == a2;
LABEL_53:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

uint64_t std::__hash_table<std::__hash_value_type<int,std::multiset<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::multiset<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::multiset<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::multiset<double>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::multiset<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::multiset<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::multiset<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::multiset<double>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::multiset<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::multiset<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::multiset<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::multiset<double>>>>::__deallocate_node(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy((v2 + 3), v2[4]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::multiset<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::multiset<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::multiset<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::multiset<double>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::multiset<double>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy((a2 + 3), a2[4]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,double>,std::__unordered_map_hasher<int,std::__hash_value_type<int,double>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,double>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

double CLReducerFunction<std::multiset<double>,double>::minimumValueSorted(void *a1)
{
  if (!a1[2])
  {
    CLReducerFunction<std::multiset<double>,double>::minimumValueSorted();
  }

  return *(*a1 + 32);
}

double CLReducerFunction<std::multiset<double>,double>::minimumValue(void *a1)
{
  if (!a1[2])
  {
    CLReducerFunction<std::multiset<double>,double>::minimumValue();
  }

  v3 = *a1;
  v1 = (a1 + 1);
  v2 = v3;
  if (v3 == v1)
  {
    v2 = v1;
  }

  else
  {
    v4 = v2;
    while (1)
    {
      v5 = *(v4 + 1);
      v6 = v4;
      if (v5)
      {
        do
        {
          v4 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = *(v6 + 2);
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (!v7);
      }

      if (v4 == v1)
      {
        break;
      }

      if (v4[4] < v2[4])
      {
        v2 = v4;
      }
    }
  }

  return v2[4];
}

double CLReducerFunction<std::multiset<double>,double>::meanValue(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    CLReducerFunction<std::multiset<double>,double>::meanValue();
  }

  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  v5 = 0.0;
  if (v4 != v2)
  {
    do
    {
      v6 = v3[1];
      v7 = v3;
      if (v6)
      {
        do
        {
          v8 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v8 = v7[2];
          v9 = *v8 == v7;
          v7 = v8;
        }

        while (!v9);
      }

      v5 = v5 + *(v3 + 4);
      v3 = v8;
    }

    while (v8 != v2);
  }

  return v5 / v1;
}

double CLReducerFunction<std::multiset<double>,double>::maximumValueSorted(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    CLReducerFunction<std::multiset<double>,double>::maximumValueSorted();
  }

  v3 = *(a1 + 8);
  v1 = a1 + 8;
  v2 = v3;
  if (v3)
  {
    do
    {
      v4 = v2;
      v2 = *(v2 + 8);
    }

    while (v2);
  }

  else
  {
    do
    {
      v4 = *(v1 + 16);
      v5 = *v4 == v1;
      v1 = v4;
    }

    while (v5);
  }

  return *(v4 + 32);
}

double CLReducerFunction<std::multiset<double>,double>::maximumValue(void *a1)
{
  if (!a1[2])
  {
    CLReducerFunction<std::multiset<double>,double>::maximumValue();
  }

  v3 = *a1;
  v1 = (a1 + 1);
  v2 = v3;
  if (v3 == v1)
  {
    v2 = v1;
  }

  else
  {
    v4 = v2;
    while (1)
    {
      v5 = *(v4 + 1);
      v6 = v4;
      if (v5)
      {
        do
        {
          v4 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = *(v6 + 2);
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (!v7);
      }

      if (v4 == v1)
      {
        break;
      }

      if (v2[4] < v4[4])
      {
        v2 = v4;
      }
    }
  }

  return v2[4];
}

double CLReducerFunction<std::multiset<double>,double>::firstQuartileValueSorted(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    CLReducerFunction<std::multiset<double>,double>::firstQuartileValueSorted();
  }

  v3 = *a1;
  std::__advance[abi:ne200100]<std::__tree_const_iterator<float,std::__tree_node<float,void *> *,long>>(&v3, llround(vcvtd_n_f64_u64(v1, 2uLL)));
  return v3[4];
}

double CLReducerFunction<std::multiset<double>,double>::medianValueSorted(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    CLReducerFunction<std::multiset<double>,double>::medianValueSorted();
  }

  v3 = *a1;
  std::__advance[abi:ne200100]<std::__tree_const_iterator<float,std::__tree_node<float,void *> *,long>>(&v3, llround(vcvtd_n_f64_u64(v1, 1uLL)));
  return v3[4];
}

uint64_t std::__function::__func<double (*)(std::multiset<double> const&),std::allocator<double (*)(std::multiset<double> const&)>,double ()(std::multiset<double>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A54BE0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<double (*)(std::multiset<double> const&),std::allocator<double (*)(std::multiset<double> const&)>,double ()(std::multiset<double>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::function<double ()(std::multiset<double>)> ULAlgorithms::createReducerFunction<std::multiset<double>,double>(ULAlgorithms::ReducerFunctionType,ULAlgorithms::SortedContainer,double,double)::{lambda(std::multiset<double> const&)#1},std::allocator<std::function<double ()(std::multiset<double>)> ULAlgorithms::createReducerFunction<std::multiset<double>,double>(ULAlgorithms::ReducerFunctionType,ULAlgorithms::SortedContainer,double,double)::{lambda(std::multiset<double> const&)#1}>,double ()(std::multiset<double>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286A54C90;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::function<double ()(std::multiset<double>)> ULAlgorithms::createReducerFunction<std::multiset<double>,double>(ULAlgorithms::ReducerFunctionType,ULAlgorithms::SortedContainer,double,double)::{lambda(std::multiset<double> const&)#1},std::allocator<std::function<double ()(std::multiset<double>)> ULAlgorithms::createReducerFunction<std::multiset<double>,double>(ULAlgorithms::ReducerFunctionType,ULAlgorithms::SortedContainer,double,double)::{lambda(std::multiset<double> const&)#1}>,double ()(std::multiset<double>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double CLReducerFunction<std::multiset<double>,double>::parameterizedTruncatedMeanValueSorted(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    CLReducerFunction<std::multiset<double>,double>::parameterizedTruncatedMeanValueSorted();
  }

  if (a3 > 1.0 || (a2 >= 0.0 ? (v4 = a2 > 1.0) : (v4 = 1), !v4 ? (v5 = a3 < a2) : (v5 = 1), v5))
  {
    CLReducerFunction<std::multiset<double>,double>::parameterizedTruncatedMeanValueSorted();
  }

  v6 = llround(floor(v3 * a2));
  v7 = llround(ceil(v3 * a3));
  v8 = v7 - v6;
  if (v7 <= v6)
  {
    CLReducerFunction<std::multiset<double>,double>::parameterizedTruncatedMeanValueSorted();
  }

  v16 = *a1;
  std::__advance[abi:ne200100]<std::__tree_const_iterator<float,std::__tree_node<float,void *> *,long>>(&v16, v6);
  v9 = v16;
  std::__advance[abi:ne200100]<std::__tree_const_iterator<float,std::__tree_node<float,void *> *,long>>(&v16, v8);
  v10 = 0.0;
  if (v9 != v16)
  {
    do
    {
      v11 = *(v9 + 1);
      v12 = v9;
      if (v11)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = *(v12 + 2);
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v10 = v10 + v9[4];
      v9 = v13;
    }

    while (v13 != v16);
  }

  return v10 / v8;
}

uint64_t std::__function::__value_func<double ()(std::multiset<double>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,ULHomeSlamProbabilityVectorAlgorithm::ReducedDistanceAndWeight>,std::__unordered_map_hasher<int,std::__hash_value_type<int,ULHomeSlamProbabilityVectorAlgorithm::ReducedDistanceAndWeight>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,ULHomeSlamProbabilityVectorAlgorithm::ReducedDistanceAndWeight>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,ULHomeSlamProbabilityVectorAlgorithm::ReducedDistanceAndWeight>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

void *std::multiset<double>::multiset[abi:ne200100](void *a1, uint64_t *a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::multiset<double>::insert[abi:ne200100]<std::__tree_const_iterator<double,std::__tree_node<double,void *> *,long>>(a1, *a2, (a2 + 1));
  return a1;
}

void ULNullSpaceLocalizationAlgorithm::localize(CLMicroLocationModel *this@<X1>, uint64_t a2@<X0>, id *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v111[4] = *MEMORY[0x277D85DE8];
  if (!CLMicroLocationModel::isValid(this))
  {
    ULNullSpaceLocalizationAlgorithm::localize();
  }

  if ((*(a5 + 32) & 1) == 0)
  {
    ULNullSpaceLocalizationAlgorithm::localize();
  }

  v103[0] = 0;
  v103[1] = 0;
  v102 = v103;
  v12 = *(this + 22);
  if (v12 != *(this + 23))
  {
    *buf = v12 + 2;
    std::__tree<std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::multiset<double>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(&v102, v12 + 2);
    v13 = *(a5 + 24);
    if (v13)
    {
      *buf = (*(*v13 + 48))(v13, *v12, a4);
      std::__tree<double>::__emplace_multi<double>();
    }

    std::__throw_bad_function_call[abi:ne200100]();
  }

  v90 = a6;
  (*(*a2 + 24))(&v100, a2, &v102, a3);
  v99[0] = 0;
  v99[1] = 0;
  v97 = 0;
  v98 = v99;
  __p = 0;
  v96 = 0;
  v14 = CLMicroLocationLocalizationSettings::getKernelFuncSettings(a3);
  ULAlgorithms::createKernelFunction(v14, &v94);

  v15 = v100;
  if (v100 != v101)
  {
    do
    {
      v16 = (*(*v94 + 24))(v94, *(v15 + 6));
      v17 = v15 + 4;
      *buf = v15 + 4;
      *(std::__tree<std::__value_type<boost::uuids::uuid,double>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,double>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,double>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(&v98, v15 + 4) + 48) = 0;
      if (v16 >= 0.0)
      {
        if (v16 >= 0.999)
        {
          v18 = v96;
          if (v96 >= v97)
          {
            v20 = (v96 - __p) >> 4;
            v21 = v20 + 1;
            if ((v20 + 1) >> 60)
            {
              std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
            }

            v22 = v97 - __p;
            if ((v97 - __p) >> 3 > v21)
            {
              v21 = v22 >> 3;
            }

            if (v22 >= 0x7FFFFFFFFFFFFFF0)
            {
              v23 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v23 = v21;
            }

            if (v23)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(&__p, v23);
            }

            v24 = (16 * v20);
            *v24 = *v17;
            v19 = 16 * v20 + 16;
            v25 = (16 * v20 - (v96 - __p));
            memcpy(v24 - (v96 - __p), __p, v96 - __p);
            v26 = __p;
            __p = v25;
            v96 = v19;
            v97 = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v96 = *v17;
            v19 = (v18 + 16);
          }

          v96 = v19;
        }

        else
        {
          *buf = v15 + 4;
          *(std::__tree<std::__value_type<boost::uuids::uuid,double>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,double>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,double>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(&v98, v15 + 4) + 48) = v16 / (1.0 - v16);
        }
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULNullSpaceLocalizationAlgorithm::localize();
      }

      v27 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        operator new();
      }

      v28 = v15[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v15[2];
          v30 = *v29 == v15;
          v15 = v29;
        }

        while (!v30);
      }

      v15 = v29;
    }

    while (v29 != v101);
  }

  buf[0] = 0;
  v107 = 0;
  LOBYTE(v108) = 0;
  v109[8] = 0;
  *&v109[16] = 0;
  v109[18] = 0;
  v110 = 0u;
  memset(v111, 0, 32);
  v91 = 0;
  v92 = 0uLL;
  v93 = 1;
  std::__optional_storage_base<std::vector<ULLocalizationResultInternal>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<ULLocalizationResultInternal>,false>>(buf, &v91);
  if (v93 == 1 && v91)
  {
    *&v92 = v91;
    operator delete(v91);
  }

  v31 = __p;
  v32 = v96;
  v33 = v98;
  if (__p == v96)
  {
    v39 = 1.0;
    if (v98 != v99)
    {
      do
      {
        v40 = v33[1];
        v41 = v33;
        if (v40)
        {
          do
          {
            v42 = v40;
            v40 = *v40;
          }

          while (v40);
        }

        else
        {
          do
          {
            v42 = v41[2];
            v30 = *v42 == v41;
            v41 = v42;
          }

          while (!v30);
        }

        v39 = v39 + *(v33 + 6);
        v33 = v42;
      }

      while (v42 != v99);
    }

    v43 = v105;
    v44 = 1.0 / v39;
    if (v105 >= v106)
    {
      v48 = 0xCCCCCCCCCCCCCCCDLL * ((v105 - *buf) >> 2);
      v49 = v48 + 1;
      if (v48 + 1 > 0xCCCCCCCCCCCCCCCLL)
      {
        std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
      }

      if (0x999999999999999ALL * ((v106 - *buf) >> 2) > v49)
      {
        v49 = 0x999999999999999ALL * ((v106 - *buf) >> 2);
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v106 - *buf) >> 2) >= 0x666666666666666)
      {
        v50 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v50 = v49;
      }

      if (v50)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ULParticle>>(buf, v50);
      }

      v67 = 4 * ((v105 - *buf) >> 2);
      v68 = v44;
      *v67 = 0;
      *(v67 + 8) = 0;
      *(v67 + 16) = v68;
      v38 = 20 * v48 + 20;
      v69 = (v67 - (v105 - *buf));
      memcpy(v69, *buf, v105 - *buf);
      v70 = *buf;
      *buf = *&v69;
      v105 = v38;
      v106 = 0;
      if (v70)
      {
        operator delete(v70);
      }
    }

    else
    {
      v45 = v44;
      *v105 = 0;
      *(v43 + 1) = 0;
      v43[4] = v45;
      v38 = (v43 + 5);
    }

    v105 = v38;
    v71 = v98;
    if (v98 != v99)
    {
      do
      {
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v74 = v44 * v71[6];
        if (v38 >= v106)
        {
          v76 = 0xCCCCCCCCCCCCCCCDLL * ((v38 - *buf) >> 2);
          v77 = v76 + 1;
          if (v76 + 1 > 0xCCCCCCCCCCCCCCCLL)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          if (0x999999999999999ALL * ((v106 - *buf) >> 2) > v77)
          {
            v77 = 0x999999999999999ALL * ((v106 - *buf) >> 2);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v106 - *buf) >> 2) >= 0x666666666666666)
          {
            v78 = 0xCCCCCCCCCCCCCCCLL;
          }

          else
          {
            v78 = v77;
          }

          if (v78)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ULParticle>>(buf, v78);
          }

          v79 = 20 * v76;
          v80 = v74;
          *v79 = v73;
          *(v79 + 8) = v72;
          *(v79 + 16) = v80;
          v38 = 20 * v76 + 20;
          v81 = (v79 - (v105 - *buf));
          memcpy(v81, *buf, v105 - *buf);
          v82 = *buf;
          *buf = *&v81;
          v105 = v38;
          v106 = 0;
          if (v82)
          {
            operator delete(v82);
          }
        }

        else
        {
          v75 = v74;
          *v38 = v73;
          *(v38 + 8) = v72;
          *(v38 + 16) = v75;
          v38 += 20;
        }

        v105 = v38;
        v83 = *(v71 + 1);
        if (v83)
        {
          do
          {
            v84 = v83;
            v83 = *v83;
          }

          while (v83);
        }

        else
        {
          do
          {
            v84 = *(v71 + 2);
            v30 = *v84 == v71;
            v71 = v84;
          }

          while (!v30);
        }

        v71 = v84;
      }

      while (v84 != v99);
    }
  }

  else
  {
    if (v98 != v99)
    {
      do
      {
        v91 = v33 + 4;
        *(std::__tree<std::__value_type<boost::uuids::uuid,double>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,double>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,double>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(&v98, v33 + 4) + 48) = 0;
        v34 = v33[1];
        if (v34)
        {
          do
          {
            v35 = v34;
            v34 = *v34;
          }

          while (v34);
        }

        else
        {
          do
          {
            v35 = v33[2];
            v30 = *v35 == v33;
            v33 = v35;
          }

          while (!v30);
        }

        v33 = v35;
      }

      while (v35 != v99);
      v31 = __p;
      v32 = v96;
    }

    if (v32 != v31)
    {
      v36 = 1.0 / ((v32 - v31) >> 4);
      do
      {
        v91 = v31;
        *(std::__tree<std::__value_type<boost::uuids::uuid,double>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,double>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,double>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(&v98, v31) + 48) = v36;
        v31 += 16;
      }

      while (v31 != v32);
    }

    v37 = v105;
    if (v105 >= v106)
    {
      v46 = 0xCCCCCCCCCCCCCCCDLL * ((v105 - *buf) >> 2) + 1;
      if (v46 > 0xCCCCCCCCCCCCCCCLL)
      {
        std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
      }

      if (0x999999999999999ALL * ((v106 - *buf) >> 2) > v46)
      {
        v46 = 0x999999999999999ALL * ((v106 - *buf) >> 2);
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v106 - *buf) >> 2) >= 0x666666666666666)
      {
        v47 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v47 = v46;
      }

      if (v47)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ULParticle>>(buf, v47);
      }

      v51 = 4 * ((v105 - *buf) >> 2);
      v38 = v51 + 20;
      *v51 = 0;
      *(v51 + 8) = 0;
      *(v51 + 16) = 0;
      v52 = (v51 - (v105 - *buf));
      memcpy(v52, *buf, v105 - *buf);
      v53 = *buf;
      *buf = *&v52;
      v105 = v38;
      v106 = 0;
      if (v53)
      {
        operator delete(v53);
      }
    }

    else
    {
      v38 = (v105 + 5);
      *v105 = 0;
      *(v37 + 1) = 0;
      v37[4] = 0.0;
    }

    v105 = v38;
    v54 = v98;
    if (v98 != v99)
    {
      do
      {
        v56 = *(v54 + 4);
        v55 = *(v54 + 5);
        if (v38 >= v106)
        {
          v58 = 0xCCCCCCCCCCCCCCCDLL * ((v38 - *buf) >> 2);
          v59 = v58 + 1;
          if (v58 + 1 > 0xCCCCCCCCCCCCCCCLL)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          if (0x999999999999999ALL * ((v106 - *buf) >> 2) > v59)
          {
            v59 = 0x999999999999999ALL * ((v106 - *buf) >> 2);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v106 - *buf) >> 2) >= 0x666666666666666)
          {
            v60 = 0xCCCCCCCCCCCCCCCLL;
          }

          else
          {
            v60 = v59;
          }

          if (v60)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ULParticle>>(buf, v60);
          }

          v61 = 20 * v58;
          v62 = v54[6];
          *v61 = v56;
          *(v61 + 8) = v55;
          *(v61 + 16) = v62;
          v38 = 20 * v58 + 20;
          v63 = (v61 - (v105 - *buf));
          memcpy(v63, *buf, v105 - *buf);
          v64 = *buf;
          *buf = *&v63;
          v105 = v38;
          v106 = 0;
          if (v64)
          {
            operator delete(v64);
          }
        }

        else
        {
          v57 = v54[6];
          *v38 = v56;
          *(v38 + 8) = v55;
          *(v38 + 16) = v57;
          v38 += 20;
        }

        v105 = v38;
        v65 = *(v54 + 1);
        if (v65)
        {
          do
          {
            v66 = v65;
            v65 = *v65;
          }

          while (v65);
        }

        else
        {
          do
          {
            v66 = *(v54 + 2);
            v30 = *v66 == v54;
            v54 = v66;
          }

          while (!v30);
        }

        v54 = v66;
      }

      while (v66 != v99);
    }
  }

  *v90 = 0;
  *(v90 + 24) = 0;
  v85 = v107;
  if (v107 == 1)
  {
    v86 = v106;
    *v90 = *buf;
    *(v90 + 8) = v38;
    *(v90 + 16) = v86;
    v105 = 0;
    v106 = 0;
    *buf = 0.0;
    *(v90 + 24) = 1;
  }

  v87 = *v109;
  *(v90 + 32) = v108;
  *(v90 + 48) = v87;
  *(v90 + 63) = *&v109[15];
  *(v90 + 72) = v110;
  *(v90 + 88) = v111[0];
  v111[0] = 0;
  v110 = 0uLL;
  *(v90 + 96) = *&v111[1];
  *(v90 + 112) = v111[3];
  memset(&v111[1], 0, 24);
  *(v90 + 120) = 1;
  if (v85 && *buf != 0.0)
  {
    v105 = *buf;
    operator delete(*buf);
  }

  v88 = v94;
  v94 = 0;
  if (v88)
  {
    (*(*v88 + 8))(v88);
  }

  if (__p)
  {
    v96 = __p;
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v98, v99[0]);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v100, v101[0]);
  std::__tree<std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::multiset<double>>>>::destroy(&v102, v103[0]);
  v89 = *MEMORY[0x277D85DE8];
}

void sub_25904F944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, char a24, void *a25, uint64_t a26, char a27, void *a28, uint64_t a29, uint64_t a30, char a31)
{
  ULLocalizationResult::~ULLocalizationResult(&a31);
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a21, a22);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a24, a25);
  std::__tree<std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::multiset<double>>>>::destroy(&a27, a28);
  _Unwind_Resume(a1);
}

uint64_t ULNullSpaceLocalizationAlgorithm::createReducedDistancesMap@<X0>(CLMicroLocationLocalizationSettings *this@<X2>, void *a2@<X1>, void *a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2 + 1;
  v6 = *a2;
  if (*a2 == a2 + 1)
  {
    v13 = 0.0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = v6[1];
      v10 = v6;
      if (v9)
      {
        do
        {
          v11 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v11 = v10[2];
          v12 = *v11 == v10;
          v10 = v11;
        }

        while (!v12);
      }

      v8 += v6[8];
      v6 = v11;
    }

    while (v11 != v7);
    v13 = v8;
  }

  MinPercentileForReducerFunction = CLMicroLocationLocalizationSettings::getMinPercentileForReducerFunction(this);
  MaxPercentileForReducerFunction = CLMicroLocationLocalizationSettings::getMaxPercentileForReducerFunction(this);
  v16 = +[ULDefaultsSingleton shared];
  v17 = [v16 defaultsDictionary];

  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNullSpaceDistanceReductionFunction"];
  v19 = [v17 objectForKey:v18];
  if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = [v19 unsignedIntValue];
  }

  else
  {
    v20 = [&unk_286A716E8 unsignedIntValue];
  }

  v21 = v20;

  ULAlgorithms::createReducerFunction<std::multiset<double>,double>(v21, 0, v31, MinPercentileForReducerFunction, MaxPercentileForReducerFunction);
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  v22 = *a2;
  if (*a2 != v7)
  {
    do
    {
      std::multiset<double>::multiset[abi:ne200100](v30, v22 + 6);
      if (!v32)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v23 = (*(*v32 + 48))(v32, v30);
      v24 = v22[8];
      v30[4] = v22 + 4;
      v25 = std::__tree<std::__value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(a3, v22 + 4);
      *(v25 + 48) = v23;
      *(v25 + 56) = v24 / v13;
      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v30, v30[1]);
      v26 = v22[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v22[2];
          v12 = *v27 == v22;
          v22 = v27;
        }

        while (!v12);
      }

      v22 = v27;
    }

    while (v27 != v7);
  }

  result = std::__function::__value_func<double ()(std::multiset<double>)>::~__value_func[abi:ne200100](v31);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_14()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::__tree<std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::multiset<double>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::multiset<double>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::multiset<double>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy((a2 + 6), a2[7]);

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::multiset<double>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::multiset<double>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>>>::__find_equal<boost::uuids::uuid>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<boost::uuids::uuid,double>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,double>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,double>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>>>::__find_equal<boost::uuids::uuid>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>>>::__find_equal<boost::uuids::uuid>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void ULHomeSlamLocalizer::localize(const ULModel *a1@<X1>, const CLMicroLocationFingerprint *a2@<X2>, ULHomeSlamLocalizerState *a3@<X3>, ULHomeSlamModel *a4@<X4>, uint64_t a5@<X8>)
{
  if ((*(a1 + 520) & 1) == 0)
  {
    ULHomeSlamLocalizer::localize();
  }

  if (ULHomeSlamModel::getWorkMode((a1 + 312)))
  {
    if (*(a1 + 520))
    {
      ULHomeSlamLocalizer::localize_geoWorkMode((a1 + 312), a2, a3, a4, v11);
      std::optional<ULLocalizationResult>::optional[abi:ne200100]<ULLocalizationResult,0>(a5, v11);
      goto LABEL_7;
    }

LABEL_16:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((*(a1 + 520) & 1) == 0)
  {
    goto LABEL_16;
  }

  ULHomeSlamLocalizer::localize_clusteringWorkMode((a1 + 312), a2, a3, v11);
  std::optional<ULLocalizationResult>::optional[abi:ne200100]<ULLocalizationResult,0>(a5, v11);
LABEL_7:
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v12 == 1)
  {
    if (v11[0])
    {
      v11[1] = v11[0];
      operator delete(v11[0]);
    }
  }
}

void sub_259050128(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ULLocalizationResult::~ULLocalizationResult(va);
  _Unwind_Resume(a1);
}

void ULHomeSlamLocalizer::localize_clusteringWorkMode(const ULHomeSlamModel *a1@<X1>, const CLMicroLocationFingerprint *a2@<X2>, const ULHomeSlamSettings *a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 66) = 0;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 65) = *(a2 + 192);
  Rois = ULHomeSlamModel::getRois(a1);
  ULHomeSlamProbabilityVectorAlgorithm::localize(Rois, a2, a3, &v35);
  __p = 0;
  v33 = 0;
  v34 = 0;
  v9 = v35;
  v10 = v36;
  if (v35 == v36)
  {
    v12 = 0.0;
  }

  else
  {
    v11 = 0;
    v12 = 0.0;
    do
    {
      v13 = v9[1];
      if (v11 >= v34)
      {
        v14 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - __p) >> 2);
        v15 = v14 + 1;
        if (v14 + 1 > 0xCCCCCCCCCCCCCCCLL)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        if (0x999999999999999ALL * ((v34 - __p) >> 2) > v15)
        {
          v15 = 0x999999999999999ALL * ((v34 - __p) >> 2);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v34 - __p) >> 2) >= 0x666666666666666)
        {
          v16 = 0xCCCCCCCCCCCCCCCLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ULParticle>>(&__p, v16);
        }

        v17 = 4 * ((v11 - __p) >> 2);
        *v17 = 0;
        *(v17 + 8) = 0;
        *(v17 + 16) = v13;
        v11 = 20 * v14 + 20;
        memcpy((20 * v14 - (v33 - __p)), __p, v33 - __p);
        v18 = __p;
        __p = (20 * v14 - (v33 - __p));
        v33 = v11;
        v34 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v11 = 0;
        *(v11 + 8) = 0;
        *(v11 + 16) = v13;
        v11 += 20;
      }

      v33 = v11;
      v12 = v12 + v9[1];
      v9 += 2;
    }

    while (v9 != v10);
  }

  std::optional<std::vector<ULLocalizationResultInternal>>::operator=[abi:ne200100]<std::vector<ULLocalizationResultInternal>&,void>(a4, &__p);
  v19 = +[ULDefaultsSingleton shared];
  v20 = [v19 defaultsDictionary];

  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNullClusterThresholdForLowConfidence"];
  v22 = [v20 objectForKey:v21];
  if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v22 floatValue];
  }

  else
  {
    [&unk_286A72CF0 floatValue];
  }

  v24 = v23;
  v25 = 1.0 - v12;

  *(a4 + 64) = v25 > v24;
  v26 = +[ULDefaultsSingleton shared];
  v27 = [v26 defaultsDictionary];

  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamHighNullClusterThreshold"];
  v29 = [v27 objectForKey:v28];
  if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v29 floatValue];
  }

  else
  {
    [&unk_286A72D00 floatValue];
  }

  v31 = v30;

  *(a4 + 66) = v25 > v31;
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void sub_2590504B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  ULLocalizationResult::~ULLocalizationResult(v13);
  _Unwind_Resume(a1);
}

__n128 std::optional<ULLocalizationResult>::optional[abi:ne200100]<ULLocalizationResult,0>(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  v2 = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  result = *(a2 + 96);
  *(a1 + 96) = result;
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a1 + 120) = 1;
  return result;
}

void ULHomeSlamLocalizer::localize_geoWorkMode(const ULHomeSlamModel *a1@<X1>, const CLMicroLocationFingerprint *a2@<X2>, ULHomeSlamLocalizerState *a3@<X3>, ULHomeSlamModel *a4@<X4>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  v7 = (a5 + 32);
  *(a5 + 56) = 0;
  *(a5 + 64) = 0;
  *(a5 + 66) = 0;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 65) = *(a2 + 192);
  ULHomeSlamLocalizationPipeline::ingestValidFingerprintUpdate(a2, a3, a1, a4, v8);
  *(a5 + 64) = v9;
  *v7 = v8[0];
  *(v7 + 9) = *(v8 + 9);
  if ((a5 + 96) != &__p)
  {
    std::vector<ULParticle>::__assign_with_size[abi:ne200100]<ULParticle*,ULParticle*>((a5 + 96), __p, v11, 0xCCCCCCCCCCCCCCCDLL * ((v11 - __p) >> 2));
  }

  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_2590506B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  ULLocalizationResult::~ULLocalizationResult(v15);
  _Unwind_Resume(a1);
}

void ULHomeSlamLocalizer::localize(const ULModel *a1@<X1>, ULOdometryStatus *a2@<X2>, const ULOdometryStatus *a3@<X3>, const ULHomeSlamModel *a4@<X4>, _BYTE *a5@<X8>)
{
  v10 = a2;
  if (*(a1 + 520))
  {
    LOBYTE(v16[0]) = 0;
    v17 = 0;
    v18[0] = 0;
    v18[24] = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    if (ULHomeSlamModel::getWorkMode((a1 + 312)))
    {
      if ((*(a1 + 520) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      ULHomeSlamLocalizationPipeline::ingestValidIOUpdate(v10, a3, (a1 + 312), a4, buf);
      LOBYTE(v19) = v13;
      *v18 = *buf;
      *&v18[9] = *&buf[9];
      std::vector<ULParticle>::__assign_with_size[abi:ne200100]<ULParticle*,ULParticle*>(&v22 + 1, __p, v15, 0xCCCCCCCCCCCCCCCDLL * ((v15 - __p) >> 2));
      std::optional<ULLocalizationResult>::optional[abi:ne200100]<ULLocalizationResult,0>(a5, v16);
      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        _CLLogObjectForCategory_MicroLocation_Default();
      }

      v11 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_INFO, "got IO localization for homeslam model without geo model, return nil", buf, 2u);
      }

      *a5 = 0;
      a5[120] = 0;
    }

    if (*(&v22 + 1))
    {
      *&v23 = *(&v22 + 1);
      operator delete(*(&v22 + 1));
    }

    if (v21)
    {
      *(&v21 + 1) = v21;
      operator delete(v21);
    }

    if (v17 == 1)
    {
      if (v16[0])
      {
        v16[1] = v16[0];
        operator delete(v16[0]);
      }
    }
  }

  else
  {
    ULHomeSlamLocalizer::localize(v16);

    abort_report_np();
    __break(1u);
  }
}

void sub_2590508D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  ULLocalizationResult::~ULLocalizationResult(&a22);

  _Unwind_Resume(a1);
}

void ULHomeSlamLocalizer::ioError(uint64_t a1, uint64_t a2, ULHomeSlamLocalizationPipeline *a3)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "homelsam localizer got io error", v7, 2u);
  }

  if ((*(a2 + 520) & 1) == 0)
  {
    ULHomeSlamLocalizer::ioError();
  }

  ULHomeSlamLocalizationPipeline::resetParticles(a3, (a2 + 312), v6);
}

void ULHomeSlamLocalizer::reset(const ULModel *a1@<X1>, ULHomeSlamLocalizerState *a2@<X8>)
{
  if ((*(a1 + 520) & 1) == 0)
  {
    ULHomeSlamLocalizer::reset();
  }

  ULHomeSlamLocalizationPipeline::initState((a1 + 312), a2);
}

uint64_t std::optional<std::vector<ULLocalizationResultInternal>>::operator=[abi:ne200100]<std::vector<ULLocalizationResultInternal>&,void>(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      std::vector<ULParticle>::__assign_with_size[abi:ne200100]<ULParticle*,ULParticle*>(a1, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2));
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<ULLocalizationResultInternal>::__init_with_size[abi:ne200100]<ULLocalizationResultInternal*,ULLocalizationResultInternal*>(a1, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2));
    *(a1 + 24) = 1;
  }

  return a1;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_15()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULLocalizationController::reset(uint64_t a1, const ULModel ***a2, unint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      if (*(*v3 + 304) == *(*v3 + 520))
      {
        ULLocalizationController::reset();
      }

      if (*(*v3 + 520))
      {
        ULHomeSlamLocalizer::reset(*v3, v14);
        v5 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::find<unsigned long>(*v3 + 76, &v13);
        v6 = v5;
        if (!v5)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        ULHomeSlamSettings::operator=((v5 + 3), v14);
        v7 = *(v15 + 9);
        *(v6 + 24) = v15[0];
        *(v6 + 393) = v7;
        v8 = v6[52];
        if (v8)
        {
          v6[53] = v8;
          operator delete(v8);
          v6[52] = 0;
          v6[53] = 0;
          v6[54] = 0;
        }

        *(v6 + 26) = v16;
        v6[54] = v17;
        v17 = 0;
        v16 = 0uLL;
        v9 = *&v20[13];
        v11 = v19;
        v10 = *v20;
        *(v6 + 55) = v18;
        *(v6 + 57) = v11;
        *(v6 + 59) = v10;
        *(v6 + 485) = v9;
        ULHomeSlamSettings::~ULHomeSlamSettings(v14);
      }

      v3 += 2;
    }

    while (v3 != v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_259050C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ULHomeSlamLocalizerState::~ULHomeSlamLocalizerState(va);
  _Unwind_Resume(a1);
}

uint64_t ULLocalizationController::localize@<X0>(unint64_t **a1@<X1>, ULScanningEventDO *a2@<X2>, void *a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  CLMicroLocationFingerprintConfiguration::getLocalizingConfigurationFromSettings(&v11);
  CLMicroLocationFingerprint::create(a2, &v11, v19);
  ULLocalizationController::getAssociatedAccessPointInfo(a2, v9);
  std::__optional_copy_base<CLMicroLocationFingerprint,false>::__optional_copy_base[abi:ne200100](v13, v19);
  std::__optional_copy_base<CLMicroLocationProto::AssociatedAccessPointInfo,false>::__optional_copy_base[abi:ne200100](v8, v9);
  ULLocalizationController::localizeAllModels(a1, v13, v8, a2, 1, a3);
  if (v8[32] == 1)
  {
    CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(v8);
  }

  if (v18[24] == 1)
  {
    v12 = v18;
    std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v12);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v15);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v14);
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v13);
  }

  if (v10 == 1)
  {
    CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(v9);
  }

  if (v24[24] == 1)
  {
    v9[0] = v24;
    std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v9);
    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v21);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v20);
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v19);
  }

  result = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v11.var1);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259050E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  if (a14 == 1)
  {
    CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(&a10);
  }

  std::optional<CLMicroLocationFingerprint>::~optional(&a29);
  if (a20 == 1)
  {
    CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(&a16);
  }

  std::optional<CLMicroLocationFingerprint>::~optional(&a58);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a23);
  _Unwind_Resume(a1);
}

void ULLocalizationController::getAssociatedAccessPointInfo(const CLMacAddress *a1@<X1>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 32) = 0;
  if (LOBYTE(a1[24].var0) == 1 && CLMacAddress::isValid(&a1[22], a1))
  {
    if ((a1[24].var0 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v13.var0 = a1[22].var0;
    var0 = a1[23].var0;
    v6 = a1[11].var0;
    v7 = a1[12].var0;
    if (v6 != v7)
    {
      v8 = (v6 + 16);
      do
      {
        if (CLMacAddress::operator==(v8, &v13))
        {
          if (var0 <= *(v8 - 2))
          {
            var0 = *(v8 - 2);
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            ULLocalizationController::getAssociatedAccessPointInfo();
          }

          v9 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289282;
            v15 = 2082;
            v16 = "";
            v17 = 1026;
            v18 = var0;
            _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LocalizationController, setting associated AP's RSSI based on scan data, RSSI:%{public}d}", buf, 0x18u);
          }
        }

        v10 = (v8 + 2);
        v8 += 4;
      }

      while (v10 != v7);
    }

    CLMicroLocationProto::AssociatedAccessPointInfo::AssociatedAccessPointInfo(buf);
    v19 = 1;
    std::__optional_storage_base<CLMicroLocationProto::AssociatedAccessPointInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<CLMicroLocationProto::AssociatedAccessPointInfo,false>>(a2, buf);
    if (v19 == 1)
    {
      CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(buf);
    }

    if ((*(a2 + 32) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *(a2 + 24) |= 2u;
    *(a2 + 16) = var0;
    v11 = CLMacAddress::toUint64(&v13);
    *(a2 + 24) |= 1u;
    *(a2 + 8) = v11;
  }

  v12 = *MEMORY[0x277D85DE8];
}

void ULLocalizationController::localizeAllModels(unint64_t **a1@<X1>, uint64_t a2@<X2>, const CLMicroLocationProto::AssociatedAccessPointInfo *a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, void *a6@<X8>)
{
  v6 = a6;
  v99 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v93[0] = 0;
  v7 = *a1;
  v75 = a1[1];
  if (*a1 != v75)
  {
    v9 = __p;
    do
    {
      v10 = *v7;
      if (*(*v7 + 304) == *(*v7 + 520))
      {
        ULLocalizationController::localizeAllModels(buf);

        abort_report_np();
        goto LABEL_120;
      }

      if (*(*v7 + 304) && *(v10 + 600) == 1)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULLocalizationController::getAssociatedAccessPointInfo();
        }

        v11 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          operator new();
        }
      }

      memset(__p, 0, sizeof(__p));
      v92 = 1065353216;
      if (*(a2 + 224) == 1)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULLocalizationController::getAssociatedAccessPointInfo();
        }

        v12 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a2 + 16);
          if (v13)
          {
            v14 = 0;
            v15 = *(a2 + 16);
            do
            {
              if (*(v15 + 6) == 1)
              {
                ++v14;
              }

              v15 = *v15;
            }

            while (v15);
            v16 = 0;
            v17 = *(a2 + 16);
            do
            {
              if (*(v17 + 6) == 5)
              {
                ++v16;
              }

              v17 = *v17;
            }

            while (v17);
            v18 = 0;
            do
            {
              if (*(v13 + 6) == 6)
              {
                ++v18;
              }

              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            v16 = 0;
            v14 = 0;
            v18 = 0;
          }

          v22 = *(a2 + 24);
          LODWORD(__src) = 1;
          v23 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>((a2 + 104), &__src);
          if (v23)
          {
            v24 = *(v23 + 4) - *(v23 + 3);
          }

          else
          {
            v24 = 0.0;
          }

          v25 = *(a2 + 144);
          v26 = *(a2 + 192);
          v27 = *(a2 + 152);
          *buf = 68291075;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2049;
          *&buf[20] = v22;
          *&buf[28] = 2049;
          *&buf[30] = v14;
          *&buf[38] = 2049;
          *&buf[40] = v16;
          *&buf[48] = 2049;
          *&buf[50] = v18;
          *&buf[58] = 2049;
          *&buf[60] = v24;
          *&buf[68] = 1025;
          *&buf[70] = v26;
          *&buf[74] = 1025;
          *&buf[76] = v25;
          LOWORD(v95) = 1025;
          *(&v95 + 2) = v27;
          _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:testFingerprint, size:%{private}lu, NumWiFiMeasurements:%{private}lu, NumBLEMeasurements:%{private}lu, NumUWBMeasurements:%{private}lu, WiFi RSSI duration_s:%{private}.09f, inMotion:%{private}d, start:%{private}d, end:%{private}d}", buf, 0x56u);
          v6 = a6;
        }

        if (*(v10 + 304) != 1)
        {
          if (*(v10 + 520) != 1)
          {
            goto LABEL_100;
          }

          __src = 0;
          v81 = 0;
          v82 = 0;
          v31 = *(*v7 + 624);
          if (v31)
          {
            v32 = 0;
            do
            {
              v33 = v31[2];
              if (v32 >= v82)
              {
                v34 = __src;
                v35 = v32 - __src;
                v36 = (v32 - __src) >> 3;
                v37 = v36 + 1;
                if ((v36 + 1) >> 61)
                {
                  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
                }

                v38 = v82 - __src;
                if ((v82 - __src) >> 2 > v37)
                {
                  v37 = v38 >> 2;
                }

                v39 = v38 >= 0x7FFFFFFFFFFFFFF8;
                v40 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v39)
                {
                  v40 = v37;
                }

                if (v40)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v40);
                }

                v41 = (v32 - __src) >> 3;
                v42 = (8 * v36);
                v43 = (8 * v36 - 8 * v41);
                *v42 = v33;
                v32 = (v42 + 1);
                memcpy(v43, v34, v35);
                v44 = __src;
                __src = v43;
                v81 = v32;
                v82 = 0;
                if (v44)
                {
                  operator delete(v44);
                }

                v6 = a6;
              }

              else
              {
                *v32 = v33;
                v32 += 8;
              }

              v81 = v32;
              v31 = *v31;
            }

            while (v31);
          }

          v45 = v93[0];
          v46 = +[ULDefaultsSingleton shared];
          v47 = [v46 defaultsDictionary];

          v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULSharedInputsBetweenConnectedDevices"];
          v49 = [v47 objectForKey:v48];
          if (v49 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v50 = [v49 BOOLValue];
          }

          else
          {
            v50 = [MEMORY[0x277CBEC28] BOOLValue];
          }

          v51 = v50;

          if (v51)
          {
            v77 = 0;
            v78 = 0;
            v79 = 0;
            std::vector<ULDeviceClass>::__init_with_size[abi:ne200100]<ULDeviceClass*,ULDeviceClass*>(&v77, __src, v81, (v81 - __src) >> 3);
          }

          else
          {
            *buf = v45;
            v78 = 0;
            v79 = 0;
            v77 = 0;
            std::vector<ULDeviceClass>::__init_with_size[abi:ne200100]<ULDeviceClass const*,ULDeviceClass const*>(&v77, buf, &buf[8], 1uLL);
          }

          v10 = v77;
          v52 = v78;
          if (v77 != v78)
          {
            do
            {
              if (!std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::find<ULDeviceClass>((*v7 + 608), v10))
              {
                if (onceToken_MicroLocation_Default != -1)
                {
                  goto LABEL_121;
                }

                while (1)
                {
                  v59 = logObject_MicroLocation_Default;
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
                  {
                    v60 = *v10;
                    v61 = ULDeviceClassToString();
                    v62 = v61;
                    v63 = [v61 UTF8String];
                    *buf = 68289795;
                    *&buf[8] = 2082;
                    *(v9 + 74) = "";
                    *&buf[18] = 2082;
                    *(v9 + 84) = v63;
                    *&buf[28] = 2082;
                    *(v9 + 94) = "assert";
                    *&buf[38] = 2081;
                    *&buf[40] = "modelAndStates->states.count(deviceIdentifier) > 0";
                    _os_log_impl(&dword_258FE9000, v59, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:There is no localizerState for the device , device:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
                  }

                  if (onceToken_MicroLocation_Default != -1)
                  {
                    ULLocalizationController::getAssociatedAccessPointInfo();
                  }

                  v64 = logObject_MicroLocation_Default;
                  if (os_signpost_enabled(v64))
                  {
                    v65 = *v10;
                    v66 = ULDeviceClassToString();
                    v67 = v66;
                    v68 = [v66 UTF8String];
                    *buf = 68289795;
                    *&buf[8] = 2082;
                    *(v9 + 74) = "";
                    *&buf[18] = 2082;
                    *(v9 + 84) = v68;
                    *&buf[28] = 2082;
                    *(v9 + 94) = "assert";
                    *&buf[38] = 2081;
                    *&buf[40] = "modelAndStates->states.count(deviceIdentifier) > 0";
                    _os_signpost_emit_with_name_impl(&dword_258FE9000, v64, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "There is no localizerState for the device ", "{msg%{public}.0s:There is no localizerState for the device , device:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
                  }

                  if (onceToken_MicroLocation_Default != -1)
                  {
                    ULLocalizationController::getAssociatedAccessPointInfo();
                  }

                  v69 = logObject_MicroLocation_Default;
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
                  {
                    v70 = *v10;
                    v9 = ULDeviceClassToString();
                    v71 = v9;
                    ULLocalizationController::localizeAllModels([v9 UTF8String], buf, v69, v9);
                  }

                  abort_report_np();
LABEL_120:
                  __break(1u);
LABEL_121:
                  ULLocalizationController::getAssociatedAccessPointInfo();
                }
              }

              v53 = *v7;
              v54 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::find<unsigned long>((*v7 + 608), v10);
              if (!v54)
              {
                std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
              }

              ULHomeSlamLocalizer::localize(v53, a2, (v54 + 3), 0, buf);
              v93[2] = v10;
              v55 = std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__emplace_unique_key_args<ULDeviceClass,std::piecewise_construct_t const&,std::tuple<ULDeviceClass const&>,std::tuple<>>(__p, v10);
              std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ULLocalizationResult,false> const&>((v55 + 3), buf);
              if (v98 == 1)
              {
                if (v96)
                {
                  *(&v96 + 1) = v96;
                  operator delete(v96);
                }

                if (*&buf[72])
                {
                  *&v95 = *&buf[72];
                  operator delete(*&buf[72]);
                }

                if (buf[24] == 1 && *buf)
                {
                  *&buf[8] = *buf;
                  operator delete(*buf);
                }
              }

              v10 += 8;
            }

            while (v10 != v52);
            v10 = v77;
          }

          if (v10)
          {
            v78 = v10;
            operator delete(v10);
          }

          v21 = __src;
          if (!__src)
          {
            goto LABEL_100;
          }

          v81 = __src;
          goto LABEL_99;
        }

        v28 = *v7;
        std::__optional_copy_base<CLMicroLocationProto::AssociatedAccessPointInfo,false>::__optional_copy_base[abi:ne200100](v90, a3);
        ULRfClusterLocalizer::localize(v28, v10 + 536, a2, v90, buf);
        if (v90[32] == 1)
        {
          CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(v90);
        }

        __src = v93;
        v29 = std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__emplace_unique_key_args<ULDeviceClass,std::piecewise_construct_t const&,std::tuple<ULDeviceClass const&>,std::tuple<>>(__p, v93);
        std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ULLocalizationResult,false> const&>((v29 + 3), buf);
        if (a5)
        {
          v30 = std::__optional_copy_base<ULLocalizationResult,false>::__optional_copy_base[abi:ne200100](v83, buf);
          ULLocalizationController::sendLocalizationCoreAnalyticsEvent(v30, v10, v83, a2, a4);
          if (v89 == 1)
          {
            if (v87)
            {
              v88 = v87;
              operator delete(v87);
            }

            if (v85)
            {
              v86 = v85;
              operator delete(v85);
            }

            if (v84 == 1 && v83[0])
            {
              v83[1] = v83[0];
              operator delete(v83[0]);
            }
          }
        }
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULLocalizationController::getAssociatedAccessPointInfo();
        }

        v19 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LocalizationController fingerprint was not created}", buf, 0x12u);
        }

        v97 = 0;
        v95 = 0u;
        v96 = 0u;
        memset(buf, 0, sizeof(buf));
        v98 = 1;
        buf[64] = 1;
        __src = v93;
        v20 = std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__emplace_unique_key_args<ULDeviceClass,std::piecewise_construct_t const&,std::tuple<ULDeviceClass const&>,std::tuple<>>(__p, v93);
        std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ULLocalizationResult,false> const&>((v20 + 3), buf);
      }

      if (v98 != 1)
      {
        goto LABEL_100;
      }

      if (v96)
      {
        *(&v96 + 1) = v96;
        operator delete(v96);
      }

      if (*&buf[72])
      {
        *&v95 = *&buf[72];
        operator delete(*&buf[72]);
      }

      if (buf[24] != 1)
      {
        goto LABEL_100;
      }

      v21 = *buf;
      if (!*buf)
      {
        goto LABEL_100;
      }

      *&buf[8] = *buf;
LABEL_99:
      operator delete(v21);
LABEL_100:
      v56 = *(v6 + 8);
      if (v56 >= *(v6 + 16))
      {
        v57 = std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__emplace_back_slow_path<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>&>(v6, __p);
      }

      else
      {
        std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>::unordered_map(*(v6 + 8), __p);
        v57 = v56 + 40;
      }

      *(v6 + 8) = v57;
      std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(__p);
      v7 += 2;
    }

    while (v7 != v75);
  }

  v58 = *MEMORY[0x277D85DE8];
}

void sub_259051BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(&a53);
  a53 = a25;
  std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__destroy_vector::operator()[abi:ne200100](&a53);
  _Unwind_Resume(a1);
}

void ULLocalizationController::localizeAllModels(uint64_t a1@<X0>, uint64_t **a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v59 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v9 = a4;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v43 = 0;
  v10 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    while (1)
    {
      v12 = *v10;
      v13 = *(*v10 + 520);
      if (*(*v10 + 304) == v13)
      {
        break;
      }

      memset(v41, 0, sizeof(v41));
      v42 = 1065353216;
      LOBYTE(v34[0]) = 0;
      v40 = 0;
      if (v13)
      {
        if (!std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::find<ULDeviceClass>((v12 + 608), &v43))
        {
          v22 = _CLLogObjectForCategory_MicroLocation_Default();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            v23 = ULDeviceClassToString();
            v24 = v23;
            v25 = [v23 UTF8String];
            *buf = 68289795;
            *&buf[4] = 0;
            *v45 = 2082;
            *&v45[2] = "";
            v46 = 2082;
            v47 = v25;
            v48 = 2082;
            v49 = "assert";
            v50 = 2081;
            v51 = "modelAndStates->states.count(odometrySourceDeviceClass) > 0";
            _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Trying to use HomeSlam localizer without localizerState for the device , device:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
          }

          v26 = _CLLogObjectForCategory_MicroLocation_Default();
          if (os_signpost_enabled(v26))
          {
            v27 = ULDeviceClassToString();
            v28 = v27;
            v29 = [v27 UTF8String];
            *buf = 68289795;
            *&buf[4] = 0;
            *v45 = 2082;
            *&v45[2] = "";
            v46 = 2082;
            v47 = v29;
            v48 = 2082;
            v49 = "assert";
            v50 = 2081;
            v51 = "modelAndStates->states.count(odometrySourceDeviceClass) > 0";
            _os_signpost_emit_with_name_impl(&dword_258FE9000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Trying to use HomeSlam localizer without localizerState for the device ", "{msg%{public}.0s:Trying to use HomeSlam localizer without localizerState for the device , device:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
          }

          v30 = _CLLogObjectForCategory_MicroLocation_Default();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = ULDeviceClassToString();
            v32 = v31;
            ULLocalizationController::localizeAllModels([v31 UTF8String], buf, v30, v31);
          }

          abort_report_np();
LABEL_42:
          __break(1u);
        }

        if (v9)
        {
          v14 = *v10;
          v15 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::find<unsigned long>((*v10 + 608), &v43);
          if (!v15)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          ULHomeSlamLocalizer::ioError(a1 + 9, v14, (v15 + 3));
          buf[0] = 0;
          BYTE4(v47) = 0;
          BYTE2(v49) = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 1;
          std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULLocalizationResult,false>>(v34, buf);
        }

        else
        {
          v16 = *v10;
          v17 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::find<unsigned long>((*v10 + 608), &v43);
          if (!v17)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          ULHomeSlamLocalizer::localize(v16, v33, (v17 + 3), 0, buf);
          std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULLocalizationResult,false>>(v34, buf);
        }

        if (v58 == 1)
        {
          if (*(&v56 + 1))
          {
            *&v57 = *(&v56 + 1);
            operator delete(*(&v56 + 1));
          }

          if (v55)
          {
            *(&v55 + 1) = v55;
            operator delete(v55);
          }

          if (BYTE4(v47) == 1 && *buf)
          {
            *v45 = *buf;
            operator delete(*buf);
          }
        }

        *buf = &v43;
        v18 = std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__emplace_unique_key_args<ULDeviceClass,std::piecewise_construct_t const&,std::tuple<ULDeviceClass const&>,std::tuple<>>(v41, &v43);
        std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ULLocalizationResult,false> const&>((v18 + 3), v34);
      }

      v19 = a5[1];
      if (v19 >= a5[2])
      {
        v20 = std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__emplace_back_slow_path<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>&>(a5, v41);
      }

      else
      {
        std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>::unordered_map(a5[1], v41);
        v20 = v19 + 40;
      }

      a5[1] = v20;
      if (v40 == 1)
      {
        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }

        if (v35 == 1 && v34[0])
        {
          v34[1] = v34[0];
          operator delete(v34[0]);
        }
      }

      std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(v41);
      v10 += 2;
      if (v10 == v11)
      {
        goto LABEL_31;
      }
    }

    ULLocalizationController::localizeAllModels(v34);

    abort_report_np();
    goto LABEL_42;
  }

LABEL_31:

  v21 = *MEMORY[0x277D85DE8];
}

void sub_25905227C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::optional<ULLocalizationResult>::~optional(&a13);
  std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(&a29);
  std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

void ULLocalizationController::sendLocalizationCoreAnalyticsEvent(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = +[ULDefaultsSingleton shared];
  v10 = [v9 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnalyticsSendEventEnabled"];
  v12 = [v10 objectForKey:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = [v12 BOOLValue];
  }

  else
  {
    v13 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v14 = v13;

  if (v14)
  {
    v15 = *(a4 + 16);
    if (v15)
    {
      v16 = 0;
      v17 = *(a4 + 16);
      do
      {
        if (*(v17 + 6) == 1)
        {
          ++v16;
        }

        v17 = *v17;
      }

      while (v17);
      v18 = 0;
      v19 = v15;
      do
      {
        if (*(v19 + 6) == 5)
        {
          ++v18;
        }

        v19 = *v19;
      }

      while (v19);
      v20 = 0;
      do
      {
        if (*(v15 + 6) == 6)
        {
          ++v20;
        }

        v15 = *v15;
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    v22 = 0.0;
    v23 = 0.0;
    if (*(a3 + 120) == 1)
    {
      std::__optional_copy_base<std::vector<ULLocalizationResultInternal>,false>::__optional_copy_base[abi:ne200100](&buf, a3);
      if (v36 == 1)
      {
        if (buf.__r_.__value_.__r.__words[0] != buf.__r_.__value_.__l.__size_)
        {
          v24 = 0.0;
          for (i = buf.__r_.__value_.__r.__words[0]; i != buf.__r_.__value_.__l.__size_; i += 20)
          {
            v26 = *(i + 16);
            v23 = v26;
            if (*i == 0)
            {
              v22 = v26;
            }

            else if (v24 < v23)
            {
              goto LABEL_34;
            }

            v23 = v24;
LABEL_34:
            v24 = v23;
          }
        }

        if (buf.__r_.__value_.__r.__words[0])
        {
          buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }
    }

    CLMicroLocationProtobufHelper::ModelTypeToDomain(a2[1], &buf);
    v27 = cl::chrono::CFAbsoluteTimeClock::now();
    if (*a2 == 4)
    {
      v28 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
    }

    else
    {
      v28 = 0;
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = buf;
    }

    v31 = v22;
    v32 = v16;
    v33 = v27;
    v34 = a5;
    v29 = v28;
    AnalyticsSendEventLazy();

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v21 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_DEFAULT, "ULLocalizationController, sendLocalizationCoreAnalyticsEvent, not sending event because sending to CoreAnalytics is disabled", &buf, 2u);
    }
  }
}

id ___ZNK24ULLocalizationController34sendLocalizationCoreAnalyticsEventERK20CLMicroLocationModelNSt3__18optionalI20ULLocalizationResultEERK26CLMicroLocationFingerprintRK17ULScanningEventDO_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 40)];
  [v2 setObject:v3 forKeyedSubscript:@"bleFingerprintSize"];

  if (*(a1 + 40) >= 0x19uLL)
  {
    v4 = 25;
  }

  else
  {
    v4 = *(a1 + 40);
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v4];
  [v2 setObject:v5 forKeyedSubscript:@"bleFingerprintSizeBounded"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 48)];
  [v2 setObject:v6 forKeyedSubscript:@"uwbFingerprintSize"];

  if (*(a1 + 48) >= 0x19uLL)
  {
    v7 = 25;
  }

  else
  {
    v7 = *(a1 + 48);
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v7];
  [v2 setObject:v8 forKeyedSubscript:@"uwbFingerprintSizeBounded"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  [v2 setObject:v9 forKeyedSubscript:@"maxClusterProbability"];

  v10 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v10 = *v10;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  [v2 setObject:v11 forKeyedSubscript:@"modelType"];

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 88)];
  [v2 setObject:v12 forKeyedSubscript:@"nullspaceClusterProbability"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 96)];
  [v2 setObject:v13 forKeyedSubscript:@"wifiFingerprintSize"];

  if (*(a1 + 96) >= 0x64uLL)
  {
    v14 = 100;
  }

  else
  {
    v14 = *(a1 + 96);
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v14];
  [v2 setObject:v15 forKeyedSubscript:@"wifiFingerprintSizeBounded"];

  [v2 setObject:&unk_286A71700 forKeyedSubscript:@"localizationTriggerEventCount"];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 104) - *(*(a1 + 112) + 48)];
  [v2 setObject:v16 forKeyedSubscript:@"localizationRunTime"];

  v17 = *(a1 + 32);
  if (v17)
  {
    [v2 setObject:v17 forKeyedSubscript:@"roiProbability"];
  }

  v18 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 112) + 59)];
  [v2 setObject:v18 forKeyedSubscript:@"bleRssiSamplesIgnore"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 112) + 58)];
  [v2 setObject:v19 forKeyedSubscript:@"uwbRangeSamplesIgnore"];

  return v2;
}

void __copy_helper_block_ea8_64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v2 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v2;
  }
}

void __destroy_helper_block_ea8_64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_16()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t ULHomeSlamSettings::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = v4;
  v5 = *(a2 + 4);
  *(a1 + 40) = *(a2 + 10);
  *(a1 + 32) = v5;
  std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 48, a2 + 3);
  std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 72, (a2 + 72));
  std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 96, a2 + 6);
  v6 = *(a2 + 15);
  *(a1 + 128) = *(a2 + 32);
  *(a1 + 120) = v6;
  std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 136, (a2 + 136));
  std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 160, a2 + 10);
  std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 184, (a2 + 184));
  v7 = a2[13];
  v8 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v8;
  *(a1 + 208) = v7;
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::operator=[abi:ne200100](a1 + 256, (a2 + 16));
  v9 = a2[18];
  *(a1 + 304) = *(a2 + 38);
  *(a1 + 288) = v9;
  v10 = *(a2 + 39);
  *(a2 + 39) = 0;
  v11 = *(a1 + 312);
  *(a1 + 312) = v10;

  v12 = a2[20];
  v13 = a2[21];
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 320) = v12;
  *(a1 + 336) = v13;
  return a1;
}

CLMicroLocationFingerprint *std::__optional_copy_base<CLMicroLocationFingerprint,false>::__optional_copy_base[abi:ne200100](CLMicroLocationFingerprint *this, const CLMicroLocationFingerprint *a2)
{
  *this = 0;
  *(this + 224) = 0;
  if (*(a2 + 224) == 1)
  {
    CLMicroLocationFingerprint::CLMicroLocationFingerprint(this, a2);
    *(this + 224) = 1;
  }

  return this;
}

void sub_259052C14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 224) == 1)
  {
    CLMicroLocationFingerprint::~CLMicroLocationFingerprint(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(void *a1, unsigned int *a2)
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
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
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

void std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ULLocalizationResult,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120) == *(a2 + 120))
  {
    if (*(a1 + 120))
    {
      std::__optional_storage_base<std::vector<ULLocalizationResultInternal>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<ULLocalizationResultInternal>,false> const&>(a1, a2);
      v4 = *(a2 + 32);
      v5 = *(a2 + 48);
      *(a1 + 63) = *(a2 + 63);
      *(a1 + 32) = v4;
      *(a1 + 48) = v5;
      if (a1 != a2)
      {
        std::vector<boost::uuids::uuid>::__assign_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 4);
        v6 = *(a2 + 96);
        v7 = *(a2 + 104);

        std::vector<ULParticle>::__assign_with_size[abi:ne200100]<ULParticle*,ULParticle*>((a1 + 96), v6, v7, 0xCCCCCCCCCCCCCCCDLL * ((v7 - v6) >> 2));
      }
    }
  }

  else if (*(a1 + 120))
  {

    std::__optional_destruct_base<ULLocalizationResult,false>::reset[abi:ne200100](a1);
  }

  else
  {

    std::__optional_storage_base<ULLocalizationResult,false>::__construct[abi:ne200100]<ULLocalizationResult const&>(a1, a2);
  }
}

void std::__optional_destruct_base<ULLocalizationResult,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    v2 = *(a1 + 96);
    if (v2)
    {
      *(a1 + 104) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 72);
    if (v3)
    {
      *(a1 + 80) = v3;
      operator delete(v3);
    }

    if (*(a1 + 24) == 1)
    {
      v4 = *a1;
      if (*a1)
      {
        *(a1 + 8) = v4;
        operator delete(v4);
      }
    }

    *(a1 + 120) = 0;
  }
}

uint64_t std::__optional_storage_base<ULLocalizationResult,false>::__construct[abi:ne200100]<ULLocalizationResult const&>(uint64_t a1, uint64_t a2)
{
  v4 = std::__optional_copy_base<std::vector<ULLocalizationResultInternal>,false>::__optional_copy_base[abi:ne200100](a1, a2);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 63);
  *(v4 + 72) = 0;
  *(v4 + 63) = v7;
  *(v4 + 48) = v6;
  *(v4 + 32) = v5;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(v4 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 4);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  result = std::vector<ULParticle>::__init_with_size[abi:ne200100]<ULParticle*,ULParticle*>(a1 + 96, *(a2 + 96), *(a2 + 104), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 104) - *(a2 + 96)) >> 2));
  *(a1 + 120) = 1;
  return result;
}

void sub_259052ED8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  if (*(v1 + 24) == 1)
  {
    v5 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v5;
      operator delete(v5);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<std::vector<ULLocalizationResultInternal>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<ULLocalizationResultInternal>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = 0xCCCCCCCCCCCCCCCDLL * (&v3[-*a2] >> 2);
      v5 = *a2;

      std::vector<ULParticle>::__assign_with_size[abi:ne200100]<ULParticle*,ULParticle*>(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<ULLocalizationResultInternal>::__init_with_size[abi:ne200100]<ULLocalizationResultInternal*,ULLocalizationResultInternal*>(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 2));
    *(a1 + 24) = 1;
  }
}

_BYTE *std::__optional_copy_base<ULLocalizationResult,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[120] = 0;
  if (*(a2 + 120) == 1)
  {
    std::__optional_storage_base<ULLocalizationResult,false>::__construct[abi:ne200100]<ULLocalizationResult const&>(a1, a2);
  }

  return a1;
}

void sub_259053020(_Unwind_Exception *exception_object)
{
  if (*(v1 + 120) == 1)
  {
    ULLocalizationResult::~ULLocalizationResult(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ULDeviceClass>::__init_with_size[abi:ne200100]<ULDeviceClass*,ULDeviceClass*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2590530A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ULDeviceClass>::__init_with_size[abi:ne200100]<ULDeviceClass const*,ULDeviceClass const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259053114(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__emplace_back_slow_path<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>>(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>::unordered_map(40 * v2, a2);
  v15 = 40 * v2 + 40;
  v7 = *(a1 + 8);
  v8 = 40 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>,std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::~__split_buffer(&v13);
  return v12;
}

void sub_25905324C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__emplace_unique_key_args<ULDeviceClass,std::pair<ULDeviceClass const,std::optional<ULLocalizationResult>> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__emplace_unique_key_args<ULDeviceClass,std::pair<ULDeviceClass const,std::optional<ULLocalizationResult>> const&>(void *a1, unint64_t *a2)
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
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__construct_node_hash<std::pair<ULDeviceClass const,std::optional<ULLocalizationResult>> const&>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_2590534E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25905358C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 144) == 1)
    {
      v3 = __p[15];
      if (v3)
      {
        __p[16] = v3;
        operator delete(v3);
      }

      v4 = __p[12];
      if (v4)
      {
        __p[13] = v4;
        operator delete(v4);
      }

      if (*(__p + 48) == 1)
      {
        v5 = __p[3];
        if (v5)
        {
          __p[4] = v5;
          operator delete(v5);
        }
      }
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::pair<ULDeviceClass const,std::optional<ULLocalizationResult>>::~pair(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    v2 = *(a1 + 104);
    if (v2)
    {
      *(a1 + 112) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 80);
    if (v3)
    {
      *(a1 + 88) = v3;
      operator delete(v3);
    }

    if (*(a1 + 32) == 1)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        *(a1 + 16) = v4;
        operator delete(v4);
      }
    }
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<ULDeviceClass const,std::optional<ULLocalizationResult>>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>,std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(a4, v7);
      v7 += 5;
      a4 = v8 + 40;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(v6);
      v6 += 40;
    }
  }
}

uint64_t std::__split_buffer<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__optional_storage_base<CLMicroLocationProto::AssociatedAccessPointInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<CLMicroLocationProto::AssociatedAccessPointInfo,false>>(CLMicroLocationProto::AssociatedAccessPointInfo *a1, unsigned __int8 *a2)
{
  if (*(a1 + 32) == a2[32])
  {
    if (*(a1 + 32))
    {

      CLMicroLocationProto::AssociatedAccessPointInfo::CopyFrom(a1, a2);
    }
  }

  else if (*(a1 + 32))
  {
    CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(a1);
    *(v2 + 32) = 0;
  }

  else
  {
    *(CLMicroLocationProto::AssociatedAccessPointInfo::AssociatedAccessPointInfo(a1, a2) + 32) = 1;
  }
}

void *std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__emplace_unique_key_args<ULDeviceClass,std::piecewise_construct_t const&,std::tuple<ULDeviceClass const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void *std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::find<ULDeviceClass>(void *a1, unint64_t *a2)
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
      if (v3 == v8)
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

uint64_t OUTLINED_FUNCTION_3_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, __int16 a3@<W8>)
{
  *(a2 + 10) = v3;
  *(a2 + 18) = a3;
  *(a2 + 20) = result;
  *(a2 + 28) = a3;
  return result;
}

void ULLocalizationResult::getProbabilitiesAsFloatVector(ULLocalizationResult *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 24) == 1)
  {
    __src = 0;
    v21 = 0;
    v22 = 0;
    v3 = *this;
    v4 = *(this + 1);
    if (*this == v4)
    {
      v18 = 0;
      v5 = 0;
      v17 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        v6 = *(v3 + 16);
        if (v5 >= v22)
        {
          v7 = __src;
          v8 = v5 - __src;
          v9 = (v5 - __src) >> 2;
          v10 = v9 + 1;
          if ((v9 + 1) >> 62)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v11 = v22 - __src;
          if ((v22 - __src) >> 1 > v10)
          {
            v10 = v11 >> 1;
          }

          if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v12 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v10;
          }

          if (v12)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(&__src, v12);
          }

          v13 = (v5 - __src) >> 2;
          v14 = (4 * v9);
          v15 = (4 * v9 - 4 * v13);
          *v14 = v6;
          v5 = (v14 + 1);
          memcpy(v15, v7, v8);
          v16 = __src;
          __src = v15;
          v21 = v5;
          v22 = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *v5 = v6;
          v5 += 4;
        }

        v21 = v5;
        v3 += 20;
      }

      while (v3 != v4);
      v17 = __src;
      v18 = v22;
    }

    *a2 = v17;
    *(a2 + 8) = v5;
    v19 = 1;
    *(a2 + 16) = v18;
  }

  else
  {
    v19 = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v19;
}

void sub_259053DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *ULLocalizationResult::removeNullCluster(uint64_t *this)
{
  if (*(this + 24) == 1)
  {
    v2 = *this;
    v1 = this[1];
    if (*this != v1)
    {
      while (*v2 != 0)
      {
        v2 += 20;
        if (v2 == v1)
        {
          return this;
        }
      }

      if (v2 != v1)
      {
        v3 = (v2 + 20);
        if ((v2 + 20) != v1)
        {
          do
          {
            if (*v3 != 0)
            {
              v4 = *v3;
              *(v2 + 16) = *(v3 + 4);
              *v2 = v4;
              v2 += 20;
            }

            v3 = (v3 + 20);
          }

          while (v3 != v1);
          v1 = this[1];
        }
      }
    }

    if (v2 != v1)
    {
      this[1] = v2;
    }
  }

  return this;
}

uint64_t ULLocalizationResult::getPointLocation(ULLocalizationResult *this)
{
  if (*(this + 56) != 1)
  {
    return 0;
  }

  result = *(this + 4);
  v3 = *(this + 10) | 0x100000000;
  return result;
}

uint64_t ULLocalizationResult::getBlueDotConfidence(ULLocalizationResult *this)
{
  if (*(this + 56) == 1)
  {
    return *(this + 6);
  }

  else
  {
    return 0;
  }
}

void ULRfClusterLocalizer::localize(CLMicroLocationModel *this@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, const CLMicroLocationProto::AssociatedAccessPointInfo *a4@<X4>, _BYTE *a5@<X8>)
{
  v70 = *MEMORY[0x277D85DE8];
  if ((*(this + 304) & 1) == 0)
  {
    ULRfClusterLocalizer::localize();
  }

  if ((*(a2 + 64) & 1) == 0)
  {
    ULRfClusterLocalizer::localize();
  }

  if (CLMicroLocationModel::isValid(this))
  {
    LocalizerAlgorithm = CLMicroLocationLocalizationSettings::getLocalizerAlgorithm((a2 + 24));
    ULAlgorithms::createLocalizerAlgorithm(LocalizerAlgorithm, &v59);
    v68[0] = 0;
    v69 = 0;
    FingerprintDistanceFunctionType = CLMicroLocationLocalizationSettings::getFingerprintDistanceFunctionType((a2 + 24));
    if (LocalizerAlgorithm - 1 < 2)
    {
      v55 = FingerprintDistanceFunctionType;
      v16 = +[ULDefaultsSingleton shared];
      v17 = [v16 defaultsDictionary];

      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveAnchorsEnable"];
      v19 = [v17 objectForKey:v18];
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v20 = [v19 BOOLValue];
      }

      else
      {
        v20 = [MEMORY[0x277CBEC38] BOOLValue];
      }

      v21 = v20;

      if (v21)
      {
        std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(buf, this + 16);
        v66 = *(this + 56);
        v22 = 1;
      }

      else
      {
        v22 = 0;
        buf[0] = 0;
      }

      v67 = v22;
      v25 = +[ULDefaultsSingleton shared];
      v26 = [v25 defaultsDictionary];

      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingWifiRssiEnable"];
      v28 = [v26 objectForKey:v27];
      if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v29 = [v28 BOOLValue];
      }

      else
      {
        v29 = [MEMORY[0x277CBEC38] BOOLValue];
      }

      v54 = v29;

      v30 = +[ULDefaultsSingleton shared];
      v31 = [v30 defaultsDictionary];

      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingBleLeechEnable"];
      v33 = [v31 objectForKey:v32];
      if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v34 = [v33 BOOLValue];
      }

      else
      {
        v34 = [MEMORY[0x277CBEC38] BOOLValue];
      }

      v53 = v34;

      v35 = +[ULDefaultsSingleton shared];
      v36 = [v35 defaultsDictionary];

      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingUwbRangeEnable"];
      v38 = [v36 objectForKey:v37];
      if (v38 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v39 = [v38 BOOLValue];
      }

      else
      {
        v39 = [MEMORY[0x277CBEC38] BOOLValue];
      }

      v40 = v39;

      if (v40)
      {
        isUwbRangingSupportedOnDevice = ULHomeNearbyRangingSupport::isUwbRangingSupportedOnDevice(v41);
      }

      else
      {
        isUwbRangingSupportedOnDevice = 0;
      }

      v43 = +[ULDefaultsSingleton shared];
      v44 = [v43 defaultsDictionary];

      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingPhotoFeaturesEnable"];
      v46 = [v44 objectForKey:v45];
      if (v46 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v47 = [v46 BOOLValue];
      }

      else
      {
        v47 = [MEMORY[0x277CBEC38] BOOLValue];
      }

      v48 = v47;

      EnabledTechnologies = CLMicroLocationUtils::createEnabledTechnologies(v54, v53, isUwbRangingSupportedOnDevice, v48);
      v58 = ULSettings::get<ULSettings::AdaptiveSensorsEnable>();
      v49 = ULSettings::getFingerprintDistanceFunctionParamsForType(v55);
      ULAlgorithms::createLocalizeFingerprintDistanceFunction(v55, v49, &EnabledTechnologies, buf, v60);
      std::optional<std::function<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>>::operator=[abi:ne200100]<std::function<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>,void>(v68, v60);
      std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v60);
    }

    else
    {
      if (LocalizerAlgorithm == 3)
      {
LABEL_50:
        if (*(this + 304) != 1 || (*(a2 + 64) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v50 = v59;
        std::__optional_copy_base<CLMicroLocationProto::AssociatedAccessPointInfo,false>::__optional_copy_base[abi:ne200100](v56, a4);
        (*(*v50 + 16))(v50, this, a2 + 24, a3, v68, v56);
        if (v56[32] == 1)
        {
          CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(v56);
        }

        if (a5[120] == 1)
        {
          a5[65] = *(a3 + 192);
        }

        if (v69 == 1)
        {
          std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v68);
        }

        v51 = v59;
        v59 = 0;
        if (v51)
        {
          (*(*v51 + 8))(v51);
        }

        goto LABEL_60;
      }

      if (LocalizerAlgorithm != 4)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULRfClusterLocalizer::localize();
        }

        v23 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289282;
          v62 = 2082;
          v63 = "";
          v64 = 2050;
          v65 = LocalizerAlgorithm;
          _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Invalid localization algorithm! No localization done, Localization Algo:%{public}lu}", buf, 0x1Cu);
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULRfClusterLocalizer::localize();
        }

        v24 = logObject_MicroLocation_Default;
        if (os_signpost_enabled(logObject_MicroLocation_Default))
        {
          *buf = 68289282;
          v62 = 2082;
          v63 = "";
          v64 = 2050;
          v65 = LocalizerAlgorithm;
          _os_signpost_emit_with_name_impl(&dword_258FE9000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid localization algorithm! No localization done", "{msg%{public}.0s:Invalid localization algorithm! No localization done, Localization Algo:%{public}lu}", buf, 0x1Cu);
        }

        goto LABEL_50;
      }

      v12 = FingerprintDistanceFunctionType;
      buf[0] = 0;
      v67 = 0;
      EnabledTechnologies = 2;
      v58 = ULSettings::get<ULSettings::AdaptiveSensorsEnable>();
      v13 = ULSettings::getFingerprintDistanceFunctionParamsForType(v12);
      ULAlgorithms::createLocalizeFingerprintDistanceFunction(v12, v13, &EnabledTechnologies, buf, v60);
      std::optional<std::function<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>>::operator=[abi:ne200100]<std::function<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>,void>(v68, v60);
      std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v60);
    }

    if (v67 == 1)
    {
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(buf);
    }

    goto LABEL_50;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULRfClusterLocalizer::localize();
  }

  v14 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(this + 1);
    *buf = 67174657;
    *&buf[4] = v15;
    _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_DEFAULT, "#Warning No results for model type %{private}d because it is invalid", buf, 8u);
  }

  *a5 = 0;
  a5[120] = 0;
LABEL_60:
  v52 = *MEMORY[0x277D85DE8];
}

void sub_259054654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a30 == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a23);
  }

  if (*(v33 - 104) == 1)
  {
    std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v33 - 136);
  }

  if (a18)
  {
    (*(*a18 + 8))(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::AdaptiveSensorsEnable>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveSensorsEnable"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

uint64_t std::optional<std::function<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>>::operator=[abi:ne200100]<std::function<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 1)
  {
    std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::operator=[abi:ne200100](a1, a2);
  }

  else
  {
    std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__value_func[abi:ne200100](a1, a2);
    *(a1 + 32) = 1;
  }

  return a1;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_17()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_259054F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ULLogicAdapter;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25905543C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, int a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a41)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

void sub_259055870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void boost::lexical_cast<std::string,boost::uuids::uuid>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,2ul>::lexical_istream_limited_src(&v6);
  boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,2ul>::shl_input_streamable<boost::uuids::uuid const>(&v6, a1);
  v5 = v4;
  if (v4)
  {
    std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(a2, v10, v11, v11 - v10);
  }

  std::ostream::~ostream();
  v6.n128_u64[0] = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(__p);
  }

  v6.n128_u64[0] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v6.n128_i8[8]);
  if ((v5 & 1) == 0)
  {
    std::bad_cast::bad_cast(&v6);
    v6.n128_u64[0] = &unk_286A55058;
    boost::throw_exception<boost::bad_lexical_cast>(&v6);
  }
}

void sub_259055A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,2ul>::~lexical_istream_limited_src(&a9);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

void sub_259055C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_2590563B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2590566BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_259057D98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_259058314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2590585FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2590587AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2590588D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_259058B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259059994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id a63)
{
  objc_destroyWeak((v69 + 32));
  objc_destroyWeak((v68 + 32));
  objc_destroyWeak((v67 + 32));
  objc_destroyWeak((v66 + 32));
  objc_destroyWeak(&a38);
  objc_destroyWeak(&a43);
  objc_destroyWeak(&a48);
  objc_destroyWeak(&a53);
  objc_destroyWeak(&a58);
  objc_destroyWeak(&a63);
  objc_destroyWeak((v70 - 200));
  objc_destroyWeak((v70 - 160));
  objc_destroyWeak((v70 - 120));
  objc_destroyWeak((v70 - 112));
  _Unwind_Resume(a1);
}

void sub_25905AAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v24 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25905AEBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v2 - 72);
  CLMicroLocationLearner::~CLMicroLocationLearner(va);
  _Unwind_Resume(a1);
}

void sub_25905AFB4(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v2 - 56);
  *(v2 - 64) = v1 + 16;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100]((v2 - 64));

  _Unwind_Resume(a1);
}

void sub_25905B0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void **);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  v9 = (v7 + 8);
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_25905B1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void **);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  v9 = (v7 + 16);
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_25905B2C0(_Unwind_Exception *a1, void *a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](v2 + 16);

  _Unwind_Resume(a1);
}

void sub_25905B3BC(_Unwind_Exception *a1, void *a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_25905C2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_25905C820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_25905CD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25905DB9C(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_25905DDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_18()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *std::vector<ULLocationTypeEnum>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_25905DFE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ULLocationTypeEnum>::__init_with_size[abi:ne200100]<ULLocationTypeEnum*,ULLocationTypeEnum*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25905E05C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationLearner::~CLMicroLocationLearner(id *this)
{
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>>>::~__hash_table((this + 10));
  v2 = this + 6;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t std::__hash_table<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,2ul>::lexical_istream_limited_src(uint64_t a1)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::stringbuf::basic_stringbuf[abi:ne200100](a1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_286A54EB0;
  *(a1 + 160) = 0;
  *(a1 + 104) = MEMORY[0x277D82850] + 24;
  *(a1 + 112) = MEMORY[0x277D82850] + 64;
  std::ios_base::init((a1 + 112), a1);
  *(a1 + 248) = 0;
  *(a1 + 256) = -1;
  *(a1 + 272) = a1 + 264;
  *(a1 + 280) = a1 + 266;
  return a1;
}

uint64_t boost::detail::basic_unlockedbuf<std::stringbuf,char>::~basic_unlockedbuf(uint64_t a1)
{
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void boost::detail::basic_unlockedbuf<std::stringbuf,char>::~basic_unlockedbuf(uint64_t a1)
{
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));

  JUMPOUT(0x259CA1F90);
}

void *boost::detail::basic_pointerbuf<char,std::stringbuf>::setbuf(void *result, uint64_t a2, uint64_t a3)
{
  result[2] = a2;
  result[3] = a2;
  result[4] = a2 + a3;
  return result;
}

double boost::detail::basic_pointerbuf<char,std::stringbuf>::seekoff@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 0x10) != 0)
  {
    v7 = -1;
    goto LABEL_19;
  }

  v5 = a1[2];
  v6 = a1[4] - v5;
  if (!a3)
  {
    v7 = -1;
    if (a2 < 0 || v6 < a2)
    {
      goto LABEL_19;
    }

    v9 = v5 + a2;
LABEL_15:
    v8 = a1[4];
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v7 = -1;
    v10 = a1[3] - v5 + a2;
    if (v10 < 0 || v10 > v6)
    {
      goto LABEL_19;
    }

    v9 = a1[3] + a2;
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    v9 = a1[3];
    goto LABEL_18;
  }

  v7 = -1;
  if ((a2 & 0x8000000000000000) == 0 && v6 >= a2)
  {
    v8 = a1[4];
    v9 = v8 - a2;
LABEL_16:
    a1[3] = v9;
    a1[4] = v8;
LABEL_18:
    v7 = v9 - v5;
  }

LABEL_19:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

double boost::detail::basic_pointerbuf<char,std::stringbuf>::seekpos@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x10) == 0)
  {
    v4 = a1[2];
    v5 = *(a2 + 128);
    if (v5 <= a1[4] - v4)
    {
      v6 = v4 + v5;
      v7 = a1[4];
      a1[3] = v6;
      a1[4] = v7;
    }
  }

  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = -1;
  return result;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x259CA1E90](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_25905E5D0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

__n128 boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,2ul>::shl_input_streamable<boost::uuids::uuid const>(__n128 *a1, uint64_t a2)
{
  v4 = &a1[6].n128_i64[1];
  v5 = &a1[6].n128_i8[*(a1[6].n128_u64[1] - 24) + 8];
  v5->__exceptions_ = 1;
  std::ios_base::clear(v5, v5->__rdstate_);
  v6 = boost::uuids::operator<<<char,std::char_traits<char>>(v4, a2);
  v7 = (*(v6 + *(*v6 - 24) + 32) & 5) == 0;
  result = *(*(v4 + *(a1[6].n128_u64[1] - 24) + 40) + 40);
  a1[17] = result;
  return result;
}

uint64_t *boost::uuids::operator<<<char,std::char_traits<char>>(uint64_t *a1, uint64_t a2)
{
  v4 = (a1 + *(*a1 - 24));
  fmtflags = v4->__fmtflags_;
  v33 = v4;
  v6 = v4[1].__fmtflags_;
  if (v6 == -1)
  {
    std::ios_base::getloc(v4);
    v7 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
    v6 = (v7->__vftable[2].~facet_0)(v7, 32);
    std::locale::~locale(&v32);
    v4[1].__fmtflags_ = v6;
  }

  v34 = v6;
  MEMORY[0x259CA1D40](&v32, a1);
  if (LOBYTE(v32.__locale_) == 1)
  {
    v31 = fmtflags;
    v30 = v4;
    v8 = *a1;
    v9 = a1 + *(*a1 - 24);
    v10 = *(v9 + 3);
    *(v9 + 3) = 0;
    v11 = a1 + *(v8 - 24);
    v12 = *(v11 + 2);
    v13 = *(v11 + 36);
    if (v13 == -1)
    {
      std::ios_base::getloc((a1 + *(v8 - 24)));
      v14 = std::locale::use_facet(&v35, MEMORY[0x277D82680]);
      v13 = (v14->__vftable[2].~facet_0)(v14, 32);
      std::locale::~locale(&v35);
      *(v11 + 36) = v13;
    }

    if ((v12 & 0x90) != 0 && v10 >= 37)
    {
      v15 = v10 - 36;
      do
      {
        LOBYTE(v35.__locale_) = v13;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v35, 1);
        --v15;
      }

      while (v15);
    }

    v16 = *a1;
    *(a1 + *(*a1 - 24) + 8) = *(a1 + *(*a1 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(a1 + *(v16 - 24) + 8) = *(a1 + *(v16 - 24) + 8) & 0xFFFFFF4F | 0x80;
    v17 = (a1 + *(v16 - 24));
    std::ios_base::getloc(v17);
    v28 = v12;
    v29 = v10;
    v18 = std::locale::use_facet(&v35, MEMORY[0x277D82680]);
    v19 = (v18->__vftable[2].~facet_0)(v18, 48);
    std::locale::~locale(&v35);
    if (v17[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(v17);
      v20 = std::locale::use_facet(&v35, MEMORY[0x277D82680]);
      v21 = (v20->__vftable[2].~facet_0)(v20, 32);
      std::locale::~locale(&v35);
      v17[1].__fmtflags_ = v21;
    }

    v22 = 0;
    v17[1].__fmtflags_ = v19;
    v23 = MEMORY[0x277D82680];
    do
    {
      *(a1 + *(*a1 - 24) + 24) = 2;
      MEMORY[0x259CA1DC0](a1, *(a2 + v22));
      if (v22 <= 9 && ((1 << v22) & 0x2A8) != 0)
      {
        std::ios_base::getloc((a1 + *(*a1 - 24)));
        v24 = std::locale::use_facet(&v35, v23);
        v25 = (v24->__vftable[2].~facet_0)(v24, 45);
        std::locale::~locale(&v35);
        LOBYTE(v35.__locale_) = v25;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v35, 1);
      }

      ++v22;
    }

    while (v22 != 16);
    fmtflags = v31;
    if ((v28 & 0x20) != 0 && v29 >= 37)
    {
      v26 = v29 - 36;
      do
      {
        LOBYTE(v35.__locale_) = v13;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v35, 1);
        --v26;
      }

      while (v26);
    }

    *(a1 + *(*a1 - 24) + 24) = 0;
    v4 = v30;
  }

  MEMORY[0x259CA1D50](&v32);
  boost::io::basic_ios_fill_saver<char,std::char_traits<char>>::~basic_ios_fill_saver(&v33);
  v4->__fmtflags_ = fmtflags;
  return a1;
}

void sub_25905EB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, std::locale a15, uint64_t a16, char a17, uint64_t a18, std::locale a19)
{
  std::locale::~locale(&a19);
  MEMORY[0x259CA1D50](&a15);
  boost::io::basic_ios_fill_saver<char,std::char_traits<char>>::~basic_ios_fill_saver(&a17);
  *(a12 + 8) = a14;
  _Unwind_Resume(a1);
}

uint64_t boost::io::basic_ios_fill_saver<char,std::char_traits<char>>::~basic_ios_fill_saver(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(*a1 + 144) == -1)
  {
    std::ios_base::getloc(*a1);
    v4 = std::locale::use_facet(&v6, MEMORY[0x277D82680]);
    (v4->__vftable[2].~facet_0)(v4, 32);
    std::locale::~locale(&v6);
  }

  v2[1].__fmtflags_ = v3;
  return a1;
}

void std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

uint64_t boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,2ul>::~lexical_istream_limited_src(uint64_t a1)
{
  std::ostream::~ostream();
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void boost::throw_exception<boost::bad_lexical_cast>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::bad_lexical_cast>::wrapexcept(exception, a1);
}

__n128 boost::wrapexcept<boost::bad_lexical_cast>::wrapexcept(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = &unk_286A547F0;
  a1->n128_u64[1] = &unk_286A55058;
  result = *(a2 + 8);
  a1[1] = result;
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u32[0] = -1;
  a1->n128_u64[0] = &unk_286A54FE0;
  a1->n128_u64[1] = &unk_286A55010;
  a1[2].n128_u64[0] = &unk_286A55038;
  a1[2].n128_u64[1] = 0;
  return result;
}

uint64_t boost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::exception::~exception((a1 + 8));
  return a1;
}

void sub_25905F0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::bad_lexical_cast>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::bad_lexical_cast>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::exception::~exception((a1 + 8));

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));

  std::exception::~exception(a1);
}

{
  *(a1 + 24) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::exception::~exception(a1);

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(void *a1)
{
  *a1 = &unk_286A54820;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::exception::~exception(v1);
}

{
  *a1 = &unk_286A54820;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x259CA1F90);
}

void boost::bad_lexical_cast::~bad_lexical_cast(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t boost::wrapexcept<boost::bad_lexical_cast>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286A547F0;
  *(a1 + 8) = &unk_286A55058;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = &unk_286A54820;
  *(a1 + 40) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  *a1 = &unk_286A54FE0;
  *(a1 + 8) = &unk_286A55010;
  *(a1 + 32) = &unk_286A55038;
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZZ32__ULLogicAdapter__learnExecute__EUb_E3__0NS_9allocatorIS2_EEFbvEE7__cloneEPNS0_6__baseIS5_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A55080;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZ32__ULLogicAdapter__learnExecute__EUb_E3__0NS_9allocatorIS2_EEFbvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZ32__ULLogicAdapter__learnExecute__EUb_E3__0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x26u);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x26u);
}

BOOL OUTLINED_FUNCTION_4_0(NSObject *a1)
{
  *v1 = a1;

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

BOOL OUTLINED_FUNCTION_6_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

id ULLogicAdapterHelper::createULPredictionContext(ULLogicAdapterHelper *this, const ULLocalizationResult *a2, const uuid *a3)
{
  v5 = objc_alloc(MEMORY[0x277D287F8]);
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a2];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = *(this + 65);
  v10 = MEMORY[0x277D28830];
  if ((*(this + 56) & (*(this + 6) == 2)) != 0)
  {
    v10 = (this + 32);
  }

  v17 = *v10;
  v11 = ULLogicAdapterHelper::getULProbabilityVectorFromResults(this, v7);
  v12 = ULDBUtils::NSStringArrayFromBoostUUIDs(this + 9);
  v14 = ULLogicAdapterHelper::getParticlesFromResults(this, v13);
  v15 = [v5 initWithUniqueIdentifier:v6 timestamp:v8 isMotionDetected:v9 coordinates:v11 probabilityVector:v12 imageIdentifiersVector:v14 particles:*&v17];

  return v15;
}

id ULLogicAdapterHelper::getULProbabilityVectorFromResults(ULLogicAdapterHelper *this, const ULLocalizationResult *a2)
{
  v3 = [MEMORY[0x277CBEB18] array];
  if (*(this + 24) == 1)
  {
    v5 = *this;
    v6 = *(this + 1);
    if (*this != v6)
    {
      do
      {
        LODWORD(v4) = *(v5 + 16);
        v7 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
        [v3 addObject:v7];

        v5 += 20;
      }

      while (v5 != v6);
    }
  }

  v8 = [v3 copy];

  return v8;
}

id ULLogicAdapterHelper::getParticlesFromResults(ULLogicAdapterHelper *this, const ULLocalizationResult *a2)
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xCCCCCCCCCCCCCCCDLL * ((*(this + 13) - *(this + 12)) >> 2)];
  v4 = *(this + 12);
  for (i = *(this + 13); v4 != i; v4 += 5)
  {
    v6 = objc_alloc(MEMORY[0x277D287D0]);
    LODWORD(v7) = *v4;
    LODWORD(v8) = v4[1];
    LODWORD(v9) = v4[2];
    v10 = [v6 initWithX:v7 Y:v8 Z:v9];
    [v3 addObject:v10];
  }

  return v3;
}

id ULLogicAdapterHelper::getULMapFromInternalStatus(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  for (i = a1; v3 != v4; ++v3)
  {
    v5 = [objc_alloc(MEMORY[0x277D28810]) initWithSuspendReasonEnum:*v3];
    [v2 addObject:v5];
  }

  if (*(i + 88))
  {
    v6 = *(i + 64);
    if (v6 == 3)
    {
      v62 = 0;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277CCAD78]);
      if ((*(i + 88) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v62 = [v7 initWithUUIDBytes:i + 72];
    }
  }

  else
  {
    v62 = 0;
    v6 = 3;
  }

  v8 = objc_alloc(MEMORY[0x277D28808]);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 96)];
  v61 = v2;
  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 100)];
  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 104)];
  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 112)];
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 108)];
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 116)];
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 120)];
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 124)];
  v52 = v6;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 128)];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 132)];
  v53 = [v8 initWithNumClustersLearnedInModel:v9 numRecordingTriggersAtCurrentLOI:v60 numInputValidFingerprints:v59 numInputValidFingerprintsLabeled:v58 numInputValidFingerprintsUnlabeled:v57 numFingerprintsBeforePruning:v56 numFingerprintsAfterPruning:v55 numWiFiAccessPoints:v54 numBLESources:v10 numUWBSources:v11];

  v12 = [MEMORY[0x277CBEB18] array];
  v13 = *(i + 144);
  v14 = *(i + 152);
  while (v13 != v14)
  {
    [v12 addObject:*v13++];
  }

  v15 = [MEMORY[0x277CBEB18] array];
  v17 = *(i + 168);
  for (j = *(i + 176); v17 != j; v17 += 32)
  {
    v18 = [MEMORY[0x277CBEB18] array];
    v20 = *v17;
    v19 = *(v17 + 8);
    while (v20 != v19)
    {
      v21 = objc_alloc(MEMORY[0x277D287D0]);
      LODWORD(v22) = *v20;
      LODWORD(v23) = v20[1];
      LODWORD(v24) = v20[2];
      v25 = [v21 initWithX:v22 Y:v23 Z:v24];
      [v18 addObject:v25];

      v20 += 60;
    }

    v26 = objc_alloc(MEMORY[0x277D287D8]);
    v27 = [MEMORY[0x277CCABB0] numberWithInt:*(v17 + 24)];
    v28 = [v26 initWithMapPoints:v18 roomIndex:v27];

    [v15 addObject:v28];
  }

  v29 = [MEMORY[0x277CBEB18] array];
  v30 = i;
  if (*(i + 224) == 1)
  {
    ULTrajectoryPointCloud::getAllPoints((i + 192), &v64);
    v32 = v64;
    v31 = v65;
    if (v64 != v65)
    {
      do
      {
        v33 = objc_alloc(MEMORY[0x277D287D0]);
        LODWORD(v34) = *v32;
        LODWORD(v35) = v32[1];
        LODWORD(v36) = v32[2];
        v37 = [v33 initWithX:v34 Y:v35 Z:v36];
        v38 = objc_alloc(MEMORY[0x277D287E0]);
        LODWORD(v39) = v32[3];
        LODWORD(v40) = v32[4];
        LODWORD(v41) = v32[5];
        LODWORD(v42) = v32[6];
        v43 = [v38 initWithMapPoint:v37 forwardAzimuth:v39 forwardElevation:v40 backwardAzimuth:v41 backwardElevation:v42];
        [v29 addObject:v43];

        v32 += 7;
      }

      while (v32 != v31);
      v30 = i;
      v32 = v64;
    }

    if (v32)
    {
      v65 = v32;
      operator delete(v32);
    }
  }

  v44 = objc_alloc(MEMORY[0x277D28798]);
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v30 + 136)];
  v46 = [v44 initWithMapROIs:v15 trajectoryPoints:v29 numInputSegments:v45];

  v47 = [objc_alloc(MEMORY[0x277D287B0]) initWithLocationOfInterestType:v52 locationOfInterestUUID:v62];
  v48 = objc_alloc(MEMORY[0x277D287C0]);
  v49 = [MEMORY[0x277D287F8] emptyPredictionContext];
  v50 = [v48 initWithMapItems:v12 predictionContext:v49 locationOfInterest:v47 serviceState:*v30 serviceSuspendReasons:v61 isMapValid:*(v30 + 232) metaInfo:v53 homeSlamModelData:v46];

  return v50;
}

uint64_t ULLogicAdapterImpl::ULLogicAdapterImpl(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  *a1 = &unk_286A55390;
  *(a1 + 8) = &unk_286A55460;
  *(a1 + 16) = &unk_286A554B0;
  *(a1 + 24) = &unk_286A554D8;
  *(a1 + 32) = &unk_286A554F8;
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 56) = 0;
  v14 = v11;
  *(a1 + 64) = v14;
  v15 = v12;
  *(a1 + 72) = v15;
  v16 = v13;
  *(a1 + 104) = 0u;
  *(a1 + 80) = v16;
  *(a1 + 88) = a5;
  *(a1 + 96) = a6;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (onceToken_MicroLocationQE_Default != -1)
  {
    ULLogicAdapterImpl::ULLogicAdapterImpl();
  }

  v17 = logObject_MicroLocationQE_Default;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    ULSettings::get<ULSettings::Version>(__p);
    if (v22 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    *buf = 68289283;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    v27 = 2081;
    v28 = v18;
    _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MicroLocation Initialization, Microlocation Version:%{private, location:escape_only}s}", buf, 0x1Cu);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2590607D4(_Unwind_Exception *a1)
{
  v9 = *(v1 + 144);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  ULLogicAdapterImpl::ULLogicAdapterImpl(v1, v7 + 1, v7);

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v5, *(v1 + 48));
  _Unwind_Resume(a1);
}

void ULLogicAdapterImpl::setDependencies(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a2;
  *a2 = 0;
  v10 = a1[13];
  a1[13] = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *a3;
  *a3 = 0;
  v12 = a1[14];
  a1[14] = v11;
  if (v12)
  {
    std::default_delete<CLMicroLocationLegacyClient>::operator()[abi:ne200100]((a1 + 14), v12);
  }

  v14 = *a4;
  v13 = a4[1];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a1[16];
  a1[15] = v14;
  a1[16] = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v17 = *a5;
  v16 = a5[1];
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = a1[18];
  a1[17] = v17;
  a1[18] = v16;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = +[ULEventLog shared];
  v20 = MEMORY[0x277CCACA8];
  ULSettings::get<ULSettings::Version>(__p);
  if (v24 >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  v22 = [v20 stringWithFormat:@"Milo Init Event version: %s", v21];
  [v19 log:v22];

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_259060B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ULLogicAdapterImpl::onSendStatusToClient(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  CLMicroLocationLegacyClient::updateStatus(*(a1 + 112), a2);
  v6 = *(a1 + 64);
  v8 = ULLogicAdapterHelper::getULMapFromInternalStatus(a2);
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  [v6 didUpdateMap:v8 toConnection:v7];
}

void ULLogicAdapterImpl::onSendRequestResponseToClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 64);
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  if (a4 == -1)
  {
    v11 = 0;
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"request failed internally";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v11 = [v10 errorWithDomain:@"ULLogicDomain" code:a4 userInfo:v5];
  }

  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a5];
  [v8 didCompleteRequest:v9 withError:v11 toConnection:v12];

  if (a4 != -1)
  {
  }

  v13 = *MEMORY[0x277D85DE8];
}

void ULLogicAdapterImpl::onSendRecordingMetaInfoToClient(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if ([MEMORY[0x277D28868] isInternalInstall])
  {
    v9 = objc_alloc(MEMORY[0x277D28790]);
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*a4];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4[1]];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4[2]];
    v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
    v17 = [v9 initWithNumWiFiAccessPoints:v10 numBLESources:v11 numUWBSources:v12 requestIdentifier:v13];

    v14 = *(a1 + 64);
    v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a5];
    [v14 didCompleteObservationWithMetaInformation:v17 toConnection:v15];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULLogicAdapterImpl::onSendRecordingMetaInfoToClient();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_DEBUG, "onSendRecordingMetaInfoToClient called on non-internal platform. ignored", buf, 2u);
    }
  }
}

void ULLogicAdapterImpl::onSendPredictionMetaInfoToClient(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D28868] isInternalInstall])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULLogicAdapterImpl::onSendRecordingMetaInfoToClient();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }

    v10 = objc_alloc(MEMORY[0x277D28790]);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*a4];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4[1]];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4[2]];
    v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
    v15 = [v10 initWithNumWiFiAccessPoints:v11 numBLESources:v12 numUWBSources:v13 requestIdentifier:v14];

    v16 = *(a1 + 64);
    v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a5];
    [v16 didCompletePredictionWithMetaInformation:v15 toConnection:v17];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULLogicAdapterImpl::onSendRecordingMetaInfoToClient();
    }

    v18 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_DEBUG, "onSendPredictionMetaInfoToClient called on non-internal platform. ignored", &v20, 2u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_259061224(_Unwind_Exception *a1)
{
  operator delete(v3);
  operator delete(v2);

  _Unwind_Resume(a1);
}

void ULLogicAdapterImpl::onSendPredictionResultsToClient(ULLogicAdapterImpl *this, const ULService::ServiceDescriptor *a2, const uuid *a3, const ULLocalizationResult *a4, const uuid *a5)
{
  CLMicroLocationLegacyClient::publishResultsToBiomeAndCoreDuet(*(this + 14), a2, a4);
  v9 = *(this + 8);
  v12 = ULLogicAdapterHelper::createULPredictionContext(a4, a3, v10);
  v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a5];
  [v9 didSendPredictionContextResults:v12 toConnection:v11];
}

void ULLogicAdapterImpl::onSendGenericEventResponseToClient(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if ([MEMORY[0x277D28868] isInternalInstall])
  {
    v8 = *(a1 + 64);
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a4];
    [v8 didSendGenericEvent:a2 withDescription:v12 toConnection:v10];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULLogicAdapterImpl::onSendRecordingMetaInfoToClient();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEBUG, "onSendGenericEventResponseToClient called on non-internal platform. ignored", buf, 2u);
    }
  }
}

void ULLogicAdapterImpl::onEnableMiLoAtCurrentLocationCompleted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 64);
  if (a2 == -1)
  {
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = @"request failed internally";
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v7 errorWithDomain:@"ULLogicDomain" code:a2 userInfo:v3];
  }

  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  [v6 didCreateCustomLoiAtCurrentLocationWithError:v8 forConnection:v9];

  if (a2 != -1)
  {
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t ULLogicAdapterImpl::onLearningBegin(ULLogicAdapterImpl *this)
{
  v2 = +[ULEventLog shared];
  [v2 log:@"Learning Begin Event"];

  v3 = *(**(this + 13) + 184);

  return v3();
}

void ULLogicAdapterImpl::onLearningSingleModelOfTypeCompleted(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v13 = a2;
  v7 = a4;
  if (*(a3 + 320) == 1)
  {
    v10 = *(a1 + 48);
    v9 = a1 + 48;
    v8 = v10;
    if (!v10)
    {
      goto LABEL_9;
    }

    v11 = v9;
    do
    {
      if (*(v8 + 28) >= a2)
      {
        v11 = v8;
      }

      v8 = *(v8 + 8 * (*(v8 + 28) < a2));
    }

    while (v8);
    if (v11 == v9 || *(v11 + 28) > a2)
    {
LABEL_9:
      v14 = &v13;
      *(std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v9 - 8, &v13) + 8) = 0;
    }

    v14 = &v13;
    v12 = std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v9 - 8, &v13);
    ++*(v12 + 8);
  }
}

void ULLogicAdapterImpl::onLearningForModelTypeCompleted(uint64_t a1, signed int a2)
{
  v7 = a2;
  v2 = a1 + 48;
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = a1 + 40;
    v6 = v2;
    do
    {
      if (*(v3 + 28) >= a2)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 28) < a2));
    }

    while (v3);
    if (v6 != v2 && *(v6 + 28) <= a2)
    {
      if (*(v6 + 32))
      {
        v8 = &v7;
        *(std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v5, &v7) + 8) = 0;
        CLMicroLocationLogic::onModelGenerated(*(a1 + 104), v7);
      }
    }
  }
}

uint64_t ULLogicAdapterImpl::onLearningCompleted(ULLogicAdapterImpl *this)
{
  v2 = +[ULEventLog shared];
  [v2 log:@"Learning Completed Event"];

  (*(**(this + 13) + 184))(*(this + 13), 0);
  v3 = *(this + 13);

  return CLMicroLocationLogic::onLearningCompleted(v3);
}

void ULLogicAdapterImpl::triggerLearning(ULLogicAdapterImpl *this)
{
  v2 = +[ULTransactionManager shared];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = ___ZN18ULLogicAdapterImpl15triggerLearningEv_block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = this;
  [v2 performUnderTransaction:@"com.milod.learn" block:v3];
}

void ___ZN18ULLogicAdapterImpl15triggerLearningEv_block_invoke(uint64_t a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  CLMicroLocationLearner::CLMicroLocationLearner(v4, v1 + 8, *(v1 + 88), *(v1 + 96));
  v10[0] = &unk_286A55630;
  v10[3] = v10;
  CLMicroLocationLearner::executeWorkItems(v4, v10);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v10);
  v2 = ULWiFiHistogramAnalyzer::ULWiFiHistogramAnalyzer(v8, v1 + 32, *(v1 + 88));
  v7[0] = &unk_286A55630;
  v7[3] = v7;
  ULWiFiHistogramAnalyzer::executeWiFiItem(v2, v7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](&v9);
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>>>::~__hash_table(&v6);
  v8[0] = &v5;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](v8);

  v3 = *MEMORY[0x277D85DE8];
}

void sub_259061AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&a24);
  std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](v24 - 104);
  CLMicroLocationLearner::~CLMicroLocationLearner(&a9);
  _Unwind_Resume(a1);
}

void ULLogicAdapterImpl::learnBlueAtlasModel(ULLogicAdapterImpl *this, uuid *a2)
{
  CLMicroLocationLearner::CLMicroLocationLearner(v3, this + 8, *(this + 11), *(this + 12));
  CLMicroLocationLearner::learnBlueAtlasModel(v3, a2);
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>>>::~__hash_table(&v5);
  v6 = &v4;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void ULLogicAdapterImpl::~ULLogicAdapterImpl(ULLogicAdapterImpl *this)
{
  ULLogicAdapterImpl::~ULLogicAdapterImpl(this);

  JUMPOUT(0x259CA1F90);
}

{
  *this = &unk_286A55390;
  *(this + 1) = &unk_286A55460;
  *(this + 2) = &unk_286A554B0;
  *(this + 3) = &unk_286A554D8;
  *(this + 4) = &unk_286A554F8;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    std::default_delete<CLMicroLocationLegacyClient>::operator()[abi:ne200100](this + 112, v4);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(this + 40, *(this + 6));
}

void non-virtual thunk toULLogicAdapterImpl::~ULLogicAdapterImpl(ULLogicAdapterImpl *this)
{
  ULLogicAdapterImpl::~ULLogicAdapterImpl((this - 8));
}

{
  ULLogicAdapterImpl::~ULLogicAdapterImpl((this - 8));

  JUMPOUT(0x259CA1F90);
}

{
  ULLogicAdapterImpl::~ULLogicAdapterImpl((this - 16));
}

{
  ULLogicAdapterImpl::~ULLogicAdapterImpl((this - 16));

  JUMPOUT(0x259CA1F90);
}

{
  ULLogicAdapterImpl::~ULLogicAdapterImpl((this - 24));
}

{
  ULLogicAdapterImpl::~ULLogicAdapterImpl((this - 24));

  JUMPOUT(0x259CA1F90);
}

{
  ULLogicAdapterImpl::~ULLogicAdapterImpl((this - 32));
}

{
  ULLogicAdapterImpl::~ULLogicAdapterImpl((this - 32));

  JUMPOUT(0x259CA1F90);
}

void ___ZL47_CLLogObjectForCategory_MicroLocationQE_Defaultv_block_invoke()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocationQE");
  v1 = logObject_MicroLocationQE_Default;
  logObject_MicroLocationQE_Default = v0;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_19()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::default_delete<CLMicroLocationLegacyClient>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 32);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x259CA1F90);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN18ULLogicAdapterImpl15triggerLearningEvEUb_E3__0NS_9allocatorIS3_EEFbvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN18ULLogicAdapterImpl15triggerLearningEvEUb_E3__0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float CLHierarchicalClustering::singleLinkage(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 <= a6)
  {
    v6 = a6;
  }

  else
  {
    v6 = a2;
  }

  if (a2 >= a6)
  {
    v7 = a6;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a1 + 8);
  result = *(v8 + 4 * ((v6 + v6 * v6) >> 1) + 4 * v7);
  if (a4 <= a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = a4;
  }

  if (a4 >= a6)
  {
    v11 = a6;
  }

  else
  {
    v11 = a4;
  }

  v12 = v8 + 4 * ((v10 + v10 * v10) >> 1);
  if (*(v12 + 4 * v11) < result)
  {
    return *(v12 + 4 * v11);
  }

  return result;
}

float CLHierarchicalClustering::averageLinkage(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a2 <= a6)
  {
    v6 = a6;
  }

  else
  {
    v6 = a2;
  }

  if (a2 >= a6)
  {
    v7 = a6;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a1 + 8);
  result = *(v8 + 4 * ((v6 + v6 * v6) >> 1) + 4 * v7);
  if (a4 <= a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = a4;
  }

  if (a4 >= a6)
  {
    v11 = a6;
  }

  else
  {
    v11 = a4;
  }

  v12 = *(v8 + 4 * ((v10 + v10 * v10) >> 1) + 4 * v11);
  if ((LODWORD(result) & 0x7FFFFFFFu) < 0x7F800000)
  {
    if ((LODWORD(v12) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      return ((v12 * a5) + (a3 * result)) / (a5 + a3);
    }
  }

  else
  {
    result = INFINITY;
    if ((LODWORD(v12) & 0x7FFFFFFFu) < 0x7F800000)
    {
      return *(v8 + 4 * ((v10 + v10 * v10) >> 1) + 4 * v11);
    }
  }

  return result;
}

float CLHierarchicalClustering::linearInterpolationLinkage(uint64_t a1, unint64_t a2, float a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a2 <= a7)
  {
    v7 = a7;
  }

  else
  {
    v7 = a2;
  }

  if (a2 >= a7)
  {
    v8 = a7;
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a1 + 8);
  v10 = *(v9 + 4 * ((v7 + v7 * v7) >> 1) + 4 * v8);
  if (a5 <= a7)
  {
    v11 = a7;
  }

  else
  {
    v11 = a5;
  }

  if (a5 >= a7)
  {
    v12 = a7;
  }

  else
  {
    v12 = a5;
  }

  v13 = *(v9 + 4 * ((v11 + v11 * v11) >> 1) + 4 * v12);
  if ((LODWORD(v10) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    if ((LODWORD(v13) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      return INFINITY;
    }

    else
    {
      return *(v9 + 4 * ((v11 + v11 * v11) >> 1) + 4 * v12);
    }
  }

  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return v10;
  }

  if (v10 >= v13)
  {
    v15 = *(v9 + 4 * ((v11 + v11 * v11) >> 1) + 4 * v12);
  }

  else
  {
    v15 = v10;
  }

  if (v10 < v13)
  {
    v10 = *(v9 + 4 * ((v11 + v11 * v11) >> 1) + 4 * v12);
  }

  return (v10 * a3) + (v15 * (1.0 - a3));
}

float CLHierarchicalClustering::completeLinkage(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 <= a6)
  {
    v6 = a6;
  }

  else
  {
    v6 = a2;
  }

  if (a2 >= a6)
  {
    v7 = a6;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a1 + 8);
  v9 = *(v8 + 4 * ((v6 + v6 * v6) >> 1) + 4 * v7);
  if (a4 <= a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = a4;
  }

  if (a4 >= a6)
  {
    v11 = a6;
  }

  else
  {
    v11 = a4;
  }

  v12 = *(v8 + 4 * ((v10 + v10 * v10) >> 1) + 4 * v11);
  if (v9 >= v12)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v8 + 4 * ((v10 + v10 * v10) >> 1) + 4 * v11);
  }

  if ((LODWORD(v12) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    v13 = v9;
  }

  v14 = LODWORD(v9) & 0x7FFFFFFF;
  result = INFINITY;
  if ((LODWORD(v12) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    result = v12;
  }

  if (v14 < 2139095040)
  {
    return v13;
  }

  return result;
}

const void **CLHierarchicalClustering::CLHierarchicalClustering(const void **a1, unint64_t *a2, uint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<CLHierarchicalClustering::GraphEdge>::reserve(a1, *a2 - 1);
  v55 = 0;
  v56 = 0;
  v54 = &v55;
  if (*a2)
  {
    v5 = 0;
    do
    {
      *buf = v5;
      *v58 = 1;
      std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_hint_unique_key_args<unsigned long,std::pair<unsigned long,unsigned long>>(&v54, &v55, buf);
      ++v5;
    }

    while (v5 < *a2);
    if (v56 >= 2)
    {
      v49 = a3;
      do
      {
        v6 = v54;
        v7 = v54[1];
        v8 = v54;
        if (v7)
        {
          do
          {
            v9 = v7;
            v7 = *v7;
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

          while (!v10);
        }

        if (v54 == &v55)
        {
          v11 = INFINITY;
        }

        else
        {
          v11 = INFINITY;
          v12 = v54;
          do
          {
            v13 = v12[1];
            v14 = v13;
            v15 = v12;
            if (v13)
            {
              do
              {
                v16 = v14;
                v14 = *v14;
              }

              while (v14);
            }

            else
            {
              do
              {
                v16 = v15[2];
                v10 = *v16 == v15;
                v15 = v16;
              }

              while (!v10);
            }

            if (v16 != &v55)
            {
              v17 = v12[4];
              do
              {
                v18 = v16[4];
                if (v17 <= v18)
                {
                  v19 = v16[4];
                }

                else
                {
                  v19 = v12[4];
                }

                if (v17 < v18)
                {
                  v18 = v12[4];
                }

                v20 = *(a2[1] + 4 * ((v19 + v19 * v19) >> 1) + 4 * v18);
                if ((LODWORD(v20) & 0x7FFFFFFFu) < 0x7F800000 && v20 < v11)
                {
                  v11 = *(a2[1] + 4 * ((v19 + v19 * v19) >> 1) + 4 * v18);
                  v9 = v16;
                  v6 = v12;
                }

                v21 = v16[1];
                if (v21)
                {
                  do
                  {
                    v22 = v21;
                    v21 = *v21;
                  }

                  while (v21);
                }

                else
                {
                  do
                  {
                    v22 = v16[2];
                    v10 = *v22 == v16;
                    v16 = v22;
                  }

                  while (!v10);
                }

                v16 = v22;
              }

              while (v22 != &v55);
            }

            if (v13)
            {
              do
              {
                v23 = v13;
                v13 = *v13;
              }

              while (v13);
            }

            else
            {
              do
              {
                v23 = v12[2];
                v10 = *v23 == v12;
                v12 = v23;
              }

              while (!v10);
            }

            v12 = v23;
          }

          while (v23 != &v55);
        }

        v24 = v9[1];
        v25 = v9;
        if (v24)
        {
          do
          {
            v26 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v26 = v25[2];
            v10 = *v26 == v25;
            v25 = v26;
          }

          while (!v10);
        }

        v28 = v6[4];
        v27 = v6[5];
        v30 = v9[4];
        v29 = v9[5];
        v31 = a1[1];
        v32 = a1[2];
        if (v31 >= v32)
        {
          v34 = *a1;
          v35 = v31 - *a1;
          v50 = v35 >> 5;
          v36 = (v35 >> 5) + 1;
          if (v36 >> 59)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v37 = v32 - v34;
          if (v37 >> 4 > v36)
          {
            v36 = v37 >> 4;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFE0)
          {
            v36 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v36)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CLHierarchicalClustering::GraphEdge>>(a1, v36);
          }

          v38 = 32 * v50;
          *v38 = v28;
          *(v38 + 8) = v30;
          *(v38 + 16) = v11;
          *(v38 + 24) = v29 + v27;
          v51 = 32 * v50 + 32;
          v48 = (v38 - 32 * (v35 >> 5));
          memcpy(v48, v34, v35);
          v39 = *a1;
          *a1 = v48;
          a1[1] = v51;
          a1[2] = 0;
          if (v39)
          {
            operator delete(v39);
          }

          v33 = v51;
        }

        else
        {
          *v31 = v28;
          *(v31 + 1) = v30;
          *(v31 + 4) = v11;
          v33 = (v31 + 32);
          *(v31 + 3) = v29 + v27;
        }

        a1[1] = v33;
        if (onceToken_MicroLocation_Default != -1)
        {
          CLHierarchicalClustering::CLHierarchicalClustering();
        }

        v52 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68290050;
          *&buf[4] = 0;
          *v58 = 2082;
          *&v58[2] = "";
          v59 = 2050;
          v60 = v28;
          v61 = 2050;
          v62 = v30;
          v63 = 2050;
          v64 = v11;
          v65 = 2050;
          v66 = v29 + v27;
          _os_log_impl(&dword_258FE9000, v52, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:dendrogram, left:%{public}lu, right:%{public}lu, dist:%{public}f, size:%{public}lu}", buf, 0x3Au);
        }

        *buf = v30;
        *v58 = v29 + v27;
        std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(&v54, v6);
        operator delete(v6);
        std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(&v54, v9);
        operator delete(v9);
        v40 = v54;
        if (v54 != &v55)
        {
          do
          {
            std::function<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::operator()(v49, a2, v28, v27, v30, v29, v40[4], v40[5]);
            v42 = v40[4];
            if (v42 <= *buf)
            {
              v43 = *buf;
            }

            else
            {
              v43 = v40[4];
            }

            if (v42 >= *buf)
            {
              v42 = *buf;
            }

            *(a2[1] + 4 * ((v43 + v43 * v43) >> 1) + 4 * v42) = v41;
            v44 = v40[1];
            if (v44)
            {
              do
              {
                v45 = v44;
                v44 = *v44;
              }

              while (v44);
            }

            else
            {
              do
              {
                v45 = v40[2];
                v10 = *v45 == v40;
                v40 = v45;
              }

              while (!v10);
            }

            v40 = v45;
          }

          while (v45 != &v55);
        }

        std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_hint_unique_key_args<unsigned long,std::pair<unsigned long,unsigned long>>(&v54, v26, buf);
      }

      while (v56 > 1);
    }
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v54, v55);
  v46 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::vector<CLHierarchicalClustering::GraphEdge>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<CLHierarchicalClustering::GraphEdge>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::function<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a5;
  v11[1] = a6;
  v10[0] = a7;
  v10[1] = a8;
  v8 = *(a1 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v8 + 48))(v8, a2, v12, v11, v10);
}

unint64_t CLHierarchicalClustering::getClusterLabels(float **a1, void *a2, void *a3, unint64_t a4, unint64_t a5, double a6)
{
  v56 = *MEMORY[0x277D85DE8];
  if (*a3 == a3[1])
  {
    CLHierarchicalClustering::getClusterLabels();
  }

  if (*&a5 == 0.0)
  {
    CLHierarchicalClustering::getClusterLabels();
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289794;
    *&buf[4] = 0;
    v46 = 2082;
    v47 = "";
    v48 = 2050;
    v49 = a4;
    v50 = 2050;
    v51 = a6;
    v52 = 2050;
    v53 = *&a5;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:getClusterLabels, smallNodeSize:%{public}lu, distanceThresholdForSmallNode:%{public}f, minNumClusters:%{public}lu}", buf, 0x30u);
  }

  a2[1] = *a2;
  v12 = (a1[1] - *a1) >> 5;
  *buf = 0;
  std::vector<unsigned long>::resize(a2, v12 + 1, buf);
  v13 = a1[1];
  v14 = *a1;
  if (v13 != *a1)
  {
    v15 = a3[1];
    v16 = *(v13 - 4);
    v17 = a5 != 1;
    if (*(*a3 + 8 * (v15 != *a3) - 8) < v16 || a5 != 1)
    {
      v19 = (v15 - *a3) >> 3;
      v20 = v13 - 6;
      v21 = 1;
      while (1)
      {
        v13 = v20 - 2;
        v22 = *a2;
        v23 = v16 > a6 || *(v20 + 2) > a4;
        if (v23 || v17)
        {
          *(v22 + 8 * *v13) = v21;
          if (onceToken_MicroLocation_Default != -1)
          {
            CLHierarchicalClustering::CLHierarchicalClustering();
          }

          ++v21;
          v31 = logObject_MicroLocation_Default;
          if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_27;
          }

          v32 = *(v20 - 1);
          v33 = *v20;
          v34 = v20[2];
          v35 = *(v20 + 2);
          *buf = 68290050;
          *&buf[4] = 0;
          v46 = 2082;
          v47 = "";
          v48 = 2050;
          v49 = v32;
          v50 = 2050;
          v51 = v33;
          v52 = 2050;
          v53 = v34;
          v54 = 2050;
          v55 = v35;
          v29 = v31;
          v30 = "{msg%{public}.0s:getClusterLabels - split, left:%{public}lu, right:%{public}lu, dist:%{public}f, size:%{public}lu}";
        }

        else
        {
          *(v22 + 8 * *(v20 - 1)) = *(v22 + 8 * *v20);
          if (onceToken_MicroLocation_Default != -1)
          {
            CLHierarchicalClustering::CLHierarchicalClustering();
          }

          v24 = logObject_MicroLocation_Default;
          if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_27;
          }

          v25 = *(v20 - 1);
          v26 = *v20;
          v27 = v20[2];
          v28 = *(v20 + 2);
          *buf = 68290050;
          *&buf[4] = 0;
          v46 = 2082;
          v47 = "";
          v48 = 2050;
          v49 = v25;
          v50 = 2050;
          v51 = v26;
          v52 = 2050;
          v53 = v27;
          v54 = 2050;
          v55 = v28;
          v29 = v24;
          v30 = "{msg%{public}.0s:getClusterLabels - don't split, left:%{public}lu, right:%{public}lu, dist:%{public}f, size:%{public}lu}";
        }

        _os_log_impl(&dword_258FE9000, v29, OS_LOG_TYPE_DEBUG, v30, buf, 0x3Au);
LABEL_27:
        v14 = *a1;
        if (v13 != *a1)
        {
          v16 = *(v20 - 6);
          v36 = v19 >= v21 ? v21 : v19;
          v37 = *(*a3 + 8 * v36 - 8);
          v17 = v21 < a5;
          v20 -= 8;
          if (v37 < v16 || v21 < a5)
          {
            continue;
          }
        }

        goto LABEL_38;
      }
    }
  }

  v21 = 1;
LABEL_38:
  if (v13 != v14)
  {
    v39 = *a2;
    do
    {
      v40 = *(v13 - 4);
      v41 = *(v13 - 3);
      v13 -= 8;
      *(v39 + 8 * v40) = *(v39 + 8 * v41);
    }

    while (v13 != v14);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v21;
}

void std::vector<unsigned long>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(a1, a2 - v3, a3);
  }
}

unint64_t CLHierarchicalClustering::getClusterLabels(float **a1, void *a2, unint64_t a3, double a4, double a5)
{
  __p[3] = *&a4;
  std::vector<double>::vector[abi:ne200100](__p, 1uLL);
  ClusterLabels = CLHierarchicalClustering::getClusterLabels(a1, a2, __p, a3, 1uLL, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return ClusterLabels;
}

void sub_259062D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CLHierarchicalClustering::GraphEdge>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_20()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25921A970)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_25921A970)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_259063068(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_hint_unique_key_args<unsigned long,std::pair<unsigned long,unsigned long>>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__find_equal<unsigned long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__find_equal<unsigned long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
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
    if (v10[4] < *a5)
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
          v18 = v16[4];
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

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
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

uint64_t *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void sub_259063A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v10 + 48);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::EnableCloudBackup>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULEnableCloudBackup"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

void sub_259063C18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_259063E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259064608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  (*(*v12 + 8))(v12);

  _Unwind_Resume(a1);
}

void sub_259064FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v24 + 8))(v24);
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_21()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::vector<ULMigrationDO>::__init_with_size[abi:ne200100]<ULMigrationDO const*,ULMigrationDO const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULMigrationDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2590663E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ULMigrationDO>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<double,int>>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_25906668C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_259066DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::CloudBackupDefaultTableLimit>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCloudBackupDefaultTableLimit"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A71778 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::ConfigurationTableMigrationPageSize>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULConfigurationTableMigrationPageSize"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A71760 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::MeasurementTableMigrationPageSize>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementTableMigrationPageSize"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A71730 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

void sub_259067DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259068B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259068F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *std::function<BOOL ()(void)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<BOOL ()(void)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_22()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *std::__function::__value_func<BOOL ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259069DB0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_259069E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ULDataContainer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_23()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void BasicMutex::BasicMutex(BasicMutex *this, const char *a2)
{
  v2 = *MEMORY[0x277D85DE8];
  *this = &unk_286A557E8;
  operator new();
}

void BasicMutex::~BasicMutex(pthread_mutex_t **this)
{
  *this = &unk_286A557E8;
  pthread_mutex_destroy(this[1]);
  v2 = this[1];
  if (*&v2[1].__opaque[16])
  {
    free(*&v2[1].__opaque[16]);
    *&this[1][1].__opaque[16] = 0;
  }

  MEMORY[0x259CA1F90]();
}

{
  BasicMutex::~BasicMutex(this);

  JUMPOUT(0x259CA1F90);
}

pthread_t BasicMutex::lock(pthread_mutex_t **this)
{
  if (pthread_mutex_lock(this[1]))
  {
    result = BasicMutex::lock();
    goto LABEL_9;
  }

  result = pthread_self();
  v3 = this[1];
  sig = v3[1].__sig;
  if (sig < 0)
  {
LABEL_9:
    result = BasicMutex::lock(result);
    goto LABEL_10;
  }

  v5 = *v3[1].__opaque;
  if (sig)
  {
    if (v5 == result)
    {
LABEL_7:
      LODWORD(v3[1].__sig) = sig + 1;
      *v3[1].__opaque = result;
      return result;
    }

    result = BasicMutex::lock();
  }

  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_10:
  BasicMutex::lock(result);
  return _CLLogObjectForCategory_MicroLocation_Default();
}

uint64_t BasicMutex::unlock(BasicMutex *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 64);
  if (v2 <= 0)
  {
    result = BasicMutex::unlock();
LABEL_7:
    v5 = BasicMutex::unlock(result);
    return BasicMutex::__assertOwned(v5);
  }

  v3 = v2 - 1;
  *(v1 + 64) = v3;
  if (!v3)
  {
    *(v1 + 72) = 0;
  }

  result = pthread_mutex_unlock(v1);
  if (result)
  {
    goto LABEL_7;
  }

  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_24()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void CLSqliteDatabase::init(CLSqliteDatabase *this)
{
  v62 = *MEMORY[0x277D85DE8];
  *(this + 28) = 0;
  memset(&__p, 0, sizeof(__p));
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v2 = logObject_MicroLocation_Default;
  v3 = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    v4 = (this + 64);
    if (*(this + 87) < 0)
    {
      v4 = *v4;
    }

    v5 = *(this + 12);
    v6 = *(this + 13);
    *buf = 136315650;
    *&buf[4] = v4;
    v44 = 1024;
    *v45 = v5;
    *&v45[4] = 1024;
    *&v45[6] = v6;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEBUG, "database open. path: %s, protection: %d, persistence: %d", buf, 0x18u);
  }

  v7 = *(this + 87);
  if (v7 < 0)
  {
    v7 = *(this + 9);
  }

  v8 = this + 88;
  if (v7)
  {
    v9 = std::string::operator=((this + 88), (this + 64));
    v10 = CLSqliteDatabaseManager::instance(v9);
    v37 = *(this + 6);
    v38 = *(this + 28);
    v11 = &v39;
    if (*(this + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&v39, *(this + 8), *(this + 9));
    }

    else
    {
      v39 = *(this + 64);
    }

    v14 = CLSqliteDatabaseManager::openDatabase(v10, &v37, this + 8, &v40);
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_37:
    operator delete(v11->__r_.__value_.__l.__data_);
    if (v14)
    {
      goto LABEL_20;
    }

LABEL_38:
    *(this + 8) = v40;
    v18 = *(this + 111);
    if (v18 < 0)
    {
      v19 = *(this + 12);
    }

    else
    {
      v19 = *(this + 111);
    }

    if (v19)
    {
      if (v18 >= 0)
      {
        v20 = *(this + 111);
      }

      else
      {
        v20 = *(this + 12);
      }

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (v20 == size)
      {
        v22 = v18 >= 0 ? (this + 88) : *v8;
        v23 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        if (!memcmp(v22, v23, v20))
        {
          goto LABEL_71;
        }
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabase::init();
      }

      v24 = logObject_MicroLocation_Default;
      if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_71;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (*(this + 111) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315394;
      *&buf[4] = p_p;
      v44 = 2080;
      *v45 = v8;
      v26 = "Requested filename. expected: %s, actual: %s";
      v27 = v24;
      v28 = OS_LOG_TYPE_FAULT;
      v29 = 22;
    }

    else
    {
      std::string::operator=((this + 88), &__p);
      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabase::init();
      }

      v30 = logObject_MicroLocation_Default;
      if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
      {
        goto LABEL_71;
      }

      if (*(this + 111) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315138;
      *&buf[4] = v8;
      v26 = "Returned database. path: %s";
      v27 = v30;
      v28 = OS_LOG_TYPE_INFO;
      v29 = 12;
    }

    _os_log_impl(&dword_258FE9000, v27, v28, v26, buf, v29);
LABEL_71:
    if ((*(this + 56) & 1) == 0)
    {
      v31 = *(this + 2);
      (*(*v31 + 16))(v31);
      if ((*v41 & 1) == 0)
      {
        *buf = "TableName";
        *&buf[8] = 3;
        v44 = 1;
        v45[2] = 0;
        v46 = 0;
        v47 = "SoftwareVersion";
        v48 = 3;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = "SerialNumber";
        v53 = 3;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v58 = 5;
        v59 = 0;
        v60 = 0;
        v61 = 0;
        CLSqliteDatabase::createTableIfSchemaDiffers(this, "TableInfo", buf, 0, 1);
        *v41 = 1;
      }

      CLSqliteDatabase::initUUID(this);
      (*(*v31 + 24))(v31);
    }

    if (!CLSqliteDatabase::setForeignKeysEnabled(this, 1))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabase::init();
      }

      v32 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v32, OS_LOG_TYPE_FAULT, "Unable to turn ON foreign keys check", buf, 2u);
      }
    }

    goto LABEL_80;
  }

  v12 = *(this + 111);
  if (v12 < 0)
  {
    v12 = *(this + 12);
  }

  if (!v12)
  {
    CLSqliteDatabase::init();

    abort_report_np();
    __break(1u);
    return;
  }

  v13 = CLSqliteDatabaseManager::instance(v3);
  v34 = *(this + 6);
  v35 = *(this + 28);
  v11 = &v36;
  if (*(this + 87) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *(this + 8), *(this + 9));
  }

  else
  {
    v36 = *(this + 64);
  }

  v14 = CLSqliteDatabaseManager::openDatabase(v13, &v34, this + 11, &v40);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_37;
  }

LABEL_19:
  if (!v14)
  {
    goto LABEL_38;
  }

LABEL_20:
  if (v14 == 23)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v15 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 111) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315394;
      *&buf[4] = v8;
      v44 = 1024;
      *v45 = v14;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "#warning Could not open database. path: %s, rc: %d", buf, 0x12u);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      v17 = this + 88;
      if (*(this + 111) < 0)
      {
        v17 = *v8;
      }

      *buf = 136315394;
      *&buf[4] = v17;
      v44 = 1024;
      *v45 = v14;
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_FAULT, "Could not open database. path: %s, rc: %d", buf, 0x12u);
    }

    CLSqliteDatabase::handleSqlError(*(this + 1), this + 88, *(this + 56), v14);
  }

  *(this + 1) = 0;
LABEL_80:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void sub_25906AF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, pthread_mutex_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  AutoLocker::~AutoLocker(&a12);
  if (a39 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLSqliteDatabase::CLSqliteDatabase(CLSqliteDatabase *this, uint64_t *a2)
{
  *this = &unk_286A558A0;
  *(this + 1) = 0;
  *(this + 3) = this + 24;
  *(this + 4) = this + 24;
  *(this + 5) = 0;
  v3 = *a2;
  *(this + 28) = *(a2 + 4);
  *(this + 6) = v3;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), a2[2], a2[3]);
  }

  else
  {
    v4 = *(a2 + 1);
    *(this + 10) = a2[4];
    *(this + 4) = v4;
  }

  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 15) = 0;
  CLSqliteDatabase::init(this);
}

void CLSqliteDatabase::~CLSqliteDatabase(CLSqliteDatabase *this)
{
  *this = &unk_286A558A0;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, this);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, this);
  for (i = *(this + 4); i != (this + 24); i = v6)
  {
    v6 = *(i + 8);
    v4 = CLSqliteDatabase::finalizeStatement(this, *(i + 16));
  }

  if (*(this + 1))
  {
    if (*(this + 28) >= 1)
    {
      do
      {
        v4 = CLMutexDubiousUnlock(*(this + 2));
        v7 = *(this + 28);
        v8 = __OFSUB__(v7--, 1);
        *(this + 28) = v7;
      }

      while (!((v7 < 0) ^ v8 | (v7 == 0)));
    }

    v9 = CLSqliteDatabaseManager::instance(v4);
    CLSqliteDatabaseManager::closeDatabase(v9, *(this + 1));
    *(this + 1) = 0;
  }

  if (*(this + 2))
  {
    *(this + 2) = 0;
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  std::__list_imp<sqlite3_stmt *>::clear(this + 3);
}

{
  CLSqliteDatabase::~CLSqliteDatabase(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLSqliteDatabase::finalizeStatement(CLSqliteDatabase *this, sqlite3_stmt *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  (*(*v4 + 16))(v4);
  v5 = *(this + 4);
  if (v5 == (this + 24))
  {
LABEL_4:
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v13 = a2;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "Could not find prepared statement. statement: %p", buf, 0xCu);
    }
  }

  else
  {
    while (1)
    {
      v6 = *(v5 + 1);
      if (*(v5 + 2) == a2)
      {
        break;
      }

      v5 = *(v5 + 1);
      if (v6 == (this + 24))
      {
        goto LABEL_4;
      }
    }

    v8 = *v5;
    *(v8 + 8) = v6;
    *v6 = v8;
    --*(this + 5);
    operator delete(v5);
    CLSqliteDatabase::finalizeStatement(*(this + 1), a2, v9);
  }

  result = (*(*v4 + 24))(v4);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CLSqliteDatabase::createTableIfSchemaDiffers(uint64_t a1, char *a2, const char **a3, char **a4, char a5)
{
  v145[19] = *MEMORY[0x277D85DE8];
  v125 = *(a1 + 16);
  (*(*v125 + 16))(v125);
  v127 = 256;
  if (!a3 || !*a3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v35 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      *buf = 136380675;
      *&buf[4] = a2;
      _os_log_impl(&dword_258FE9000, v35, OS_LOG_TYPE_FAULT, "Need at least one column in table. table: %{private}s", buf, 0xCu);
    }

    v36 = 0;
    goto LABEL_138;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v141, "PRAGMA table_info(", 18);
  v9 = strlen(a2);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, a2, v9);
  __p[0] = 41;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, __p, 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](buf, __p);
  if (__p[23] >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = *__p;
  }

  v12 = CLSqliteDatabase::prepareStatementNoCache(a1, v11);
  v108 = a5;
  v109 = a4;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v117 = 0;
  v13 = 1;
  v115 = a3;
  while (sqlite3_step(v12) == 100)
  {
    v15 = &a3[6 * v117];
    v16 = *v15;
    if (!*v15)
    {
      goto LABEL_36;
    }

    v17 = sqlite3_column_text(v12, 1);
    if (strcmp(v16, v17))
    {
      goto LABEL_19;
    }

    v18 = *(v15 + 2);
    v19 = "INTEGER";
    if (v18 != 1)
    {
      v20 = &off_2798D46B0;
      v21 = 5;
      do
      {
        v22 = v20;
        if (!--v21)
        {
          break;
        }

        v20 += 2;
      }

      while (*(v22 - 2) != v18);
      v19 = *v22;
    }

    v23 = sqlite3_column_text(v12, 2);
    if (strcmp(v19, v23) || *(v15 + 12) != sqlite3_column_int(v12, 5) > 0)
    {
LABEL_19:
      if (onceToken_MicroLocation_Default != -1)
      {
        CLSqliteDatabase::init();
      }

      v24 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(v15 + 2);
        v26 = "INTEGER";
        if (v25 != 1)
        {
          v27 = &off_2798D46B0;
          v28 = 5;
          do
          {
            v29 = v27;
            if (!--v28)
            {
              break;
            }

            v27 += 2;
          }

          while (*(v29 - 2) != v25);
          v26 = *v29;
        }

        v30 = *v15;
        v31 = *(v15 + 12);
        v32 = sqlite3_column_text(v12, 1);
        v33 = sqlite3_column_text(v12, 2);
        v34 = sqlite3_column_int(v12, 5);
        *__p = 136382467;
        *&__p[4] = a2;
        *&__p[12] = 1024;
        *&__p[14] = v117;
        *&__p[18] = 2080;
        *&__p[20] = v30;
        *&__p[28] = 2080;
        *&__p[30] = v26;
        *&__p[38] = 1024;
        *&__p[40] = v31;
        *v129 = 2080;
        *&v129[2] = v32;
        *v130 = 2080;
        *&v130[2] = v33;
        LOWORD(v131) = 1024;
        *(&v131 + 2) = v34 > 0;
        _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_DEFAULT, "#warning Existing table's column does not match expected. table: %{private}s, index: %d, expected name: %s, expected type: %s, expected primary key: %d, actual name: %s, actual type: %s, actual primary key: %d", __p, 0x46u);
        a3 = v115;
      }

      v13 = 0;
    }

    ++v117;
  }

  if (!a3[6 * v117])
  {
    goto LABEL_41;
  }

LABEL_36:
  if (onceToken_MicroLocation_Default != -1)
  {
    CLSqliteDatabase::init();
  }

  v37 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136380675;
    *&__p[4] = a2;
    _os_log_impl(&dword_258FE9000, v37, OS_LOG_TYPE_DEFAULT, "#warning Existing table's schema does not have the same number of columns as the requested schema. table: %{private}s", __p, 0xCu);
  }

  v13 = 0;
LABEL_41:
  CLSqliteDatabase::finalizeStatement(*(a1 + 8), v12, v14);
  if ((v13 & 1) == 0)
  {
    goto LABEL_124;
  }

  v38 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v39 = v117;
  do
  {
    v40 = &a3[6 * v39];
    if (*(v40 + 40) == 1)
    {
      if (v38 >= v124)
      {
        v43 = v122;
        v44 = 0xAAAAAAAAAAAAAAABLL * ((v38 - v122) >> 4);
        v45 = v44 + 1;
        if (v44 + 1 > 0x555555555555555)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v124 - v122) >> 4) > v45)
        {
          v45 = 0x5555555555555556 * ((v124 - v122) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v124 - v122) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v46 = 0x555555555555555;
        }

        else
        {
          v46 = v45;
        }

        if (v46)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CLSqliteDatabase::ColumnInfo>>(&v122, v46);
        }

        v47 = (16 * ((v38 - v122) >> 4));
        v48 = *v40;
        v49 = *(v40 + 2);
        v47[1] = *(v40 + 1);
        v47[2] = v49;
        *v47 = v48;
        v50 = (48 * v44 + v43 - v38);
        if (v43 != v38)
        {
          v51 = v43;
          v52 = (v47 + v43 - v38);
          do
          {
            v53 = *v51;
            v54 = *(v51 + 2);
            v52[1] = *(v51 + 1);
            v52[2] = v54;
            *v52 = v53;
            v52 += 3;
            v51 += 48;
          }

          while (v51 != v38);
        }

        v38 = (v47 + 3);
        v122 = v50;
        v123 = (v47 + 3);
        v124 = 0;
        a3 = v115;
        if (v43)
        {
          operator delete(v43);
        }
      }

      else
      {
        v41 = *v40;
        v42 = *(v40 + 2);
        *(v38 + 1) = *(v40 + 1);
        *(v38 + 2) = v42;
        *v38 = v41;
        v38 += 48;
      }

      v123 = v38;
    }
  }

  while (v39-- > 0);
  memset(__p, 0, 24);
  std::stringbuf::str[abi:ne200100](&v142, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v141, "PRAGMA foreign_key_list(", 24);
  v57 = strlen(a2);
  v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, a2, v57);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ")", 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](buf, __p);
  if (__p[23] >= 0)
  {
    v59 = __p;
  }

  else
  {
    v59 = *__p;
  }

  v60 = CLSqliteDatabase::prepareStatementNoCache(a1, v59);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v61 = sqlite3_step(v60);
  v63 = v122;
  v64 = v123;
  if (v123 == v122 && v61 == 100)
  {
    goto LABEL_115;
  }

  v65 = v61 == 100 || v123 == v122;
  if (v61 != 100)
  {
    v100 = 0;
    v101 = 0;
    goto LABEL_111;
  }

  v66 = 1;
  v67 = 36;
  v65 = 1;
  do
  {
    v68 = *&v63[v67 - 36];
    v69 = sqlite3_column_text(v60, 3);
    if (!strcmp(v68, v69))
    {
      v70 = *(v122 + v67 - 20);
      v71 = sqlite3_column_text(v60, 2);
      if (!strcmp(v70, v71))
      {
        v72 = *(v122 + v67 - 12);
        v73 = sqlite3_column_text(v60, 4);
        if (!strcmp(v72, v73))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, off_2798D46F8[*(v122 + v67)]);
          v74 = __p[23];
          v75 = *__p;
          v76 = sqlite3_column_text(v60, 5);
          if (v74 >= 0)
          {
            v77 = __p;
          }

          else
          {
            v77 = v75;
          }

          if (!strcmp(v77, v76))
          {
            std::string::basic_string[abi:ne200100]<0>(v120, off_2798D46F8[*(v122 + v67 - 4)]);
            v79 = v121;
            v80 = v120[0];
            v81 = sqlite3_column_text(v60, 6);
            if (v79 >= 0)
            {
              v82 = v120;
            }

            else
            {
              v82 = v80;
            }

            v78 = strcmp(v82, v81) != 0;
            if (v121 < 0)
            {
              operator delete(v120[0]);
            }
          }

          else
          {
            v78 = 1;
          }

          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
            if (!v78)
            {
              goto LABEL_108;
            }
          }

          else if (!v78)
          {
            goto LABEL_108;
          }
        }
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v83 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
    {
      v112 = v83;
      v84 = *(v122 + v67 - 36);
      v85 = *(v122 + v67 - 20);
      v86 = *(v122 + v67 - 12);
      v87 = sqlite3_column_text(v60, 3);
      v88 = sqlite3_column_text(v60, 2);
      v111 = sqlite3_column_text(v60, 4);
      v114 = v67;
      std::string::basic_string[abi:ne200100]<0>(v120, off_2798D46F8[*(v122 + v67 - 4)]);
      v89 = v88;
      v110 = v66;
      if (v121 >= 0)
      {
        v90 = v120;
      }

      else
      {
        v90 = v120[0];
      }

      v91 = sqlite3_column_text(v60, 6);
      v92 = v86;
      v93 = v60;
      std::string::basic_string[abi:ne200100]<0>(v118, off_2798D46F8[*(v122 + v114)]);
      v94 = v119;
      v95 = v118[0];
      v96 = sqlite3_column_text(v93, 5);
      *__p = 136383235;
      v97 = v118;
      if (v94 < 0)
      {
        v97 = v95;
      }

      *&__p[4] = a2;
      *&__p[12] = 2080;
      *&__p[14] = v84;
      *&__p[22] = 2080;
      *&__p[24] = v85;
      *&__p[32] = 2080;
      *&__p[34] = v92;
      *&__p[42] = 2080;
      *v129 = v87;
      *&v129[8] = 2080;
      *v130 = v89;
      *&v130[8] = 2080;
      v83 = v112;
      v131 = v111;
      v132 = 2080;
      v133 = v90;
      v134 = 2080;
      v135 = v91;
      v136 = 2080;
      v137 = v97;
      v138 = 2080;
      v139 = v96;
      _os_log_impl(&dword_258FE9000, v112, OS_LOG_TYPE_DEBUG, "#warning Existing table's foreign key constraint does not match expected. table: %{private}s, ExpectedFromCol: %s, ExpectedToTable: %s, ExpectedToCol: %s, ActualFromCol: %s, ActualToTable: %s, ActualToCol: %s, ExpectedOnDelete: %s, ActualOnDelete: %s, ExpectedOnUpdate: %s, ActualOnUpdate: %s", __p, 0x70u);
      if (v119 < 0)
      {
        operator delete(v118[0]);
      }

      a3 = v115;
      v60 = v93;
      v67 = v114;
      if (v121 < 0)
      {
        operator delete(v120[0]);
      }

      v66 = v110;
    }

    v65 = 0;
LABEL_108:
    v98 = sqlite3_step(v60);
    v63 = v122;
    v64 = v123;
    v101 = v98 == 100;
    v99 = v66 + 1;
    if (v66 == 0xAAAAAAAAAAAAAAABLL * ((v123 - v122) >> 4))
    {
      break;
    }

    v67 += 48;
    ++v66;
  }

  while (v98 == 100);
  v100 = v99 - 1;
LABEL_111:
  if (v100 < 0xAAAAAAAAAAAAAAABLL * ((v64 - v63) >> 4) || v101)
  {
LABEL_115:
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v103 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&dword_258FE9000, v103, OS_LOG_TYPE_DEFAULT, "#warning Actual table has more foreign key contraints than expected", __p, 2u);
    }

    v65 = 0;
  }

  CLSqliteDatabase::finalizeStatement(*(a1 + 8), v60, v62);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  if (v65)
  {
    v36 = 0;
    goto LABEL_131;
  }

LABEL_124:
  if (v117)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLSqliteDatabase::init();
    }

    v104 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 136380675;
      *&__p[4] = a2;
      _os_log_impl(&dword_258FE9000, v104, OS_LOG_TYPE_DEFAULT, "#warning Table exists but does not have matching schema. table: %{private}s", __p, 0xCu);
    }

    CLSqliteDatabase::dropTable_internal(a1, a2);
  }

  CLSqliteDatabase::createTable(a1, a2, a3);
  v36 = 1;
LABEL_131:
  if ((v108 & 1) == 0)
  {
    CLSqliteDatabase::createCountTriggersIfNecessary(a1, a2);
  }

  if (v109)
  {
    CLSqliteDatabase::createIndexIfNecessary(a1, a2, v109);
  }

  *buf = *MEMORY[0x277D82818];
  v105 = *(MEMORY[0x277D82818] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
  v141 = v105;
  v142 = MEMORY[0x277D82878] + 16;
  if (v144 < 0)
  {
    operator delete(v143[7].__locale_);
  }

  v142 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v143);
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](v145);
  if ((v127 & 0x100) != 0)
  {
LABEL_138:
    if (v127)
    {
      pthread_mutex_unlock(v126);
    }

    else
    {
      (*(*v125 + 24))(v125);
    }
  }

  v106 = *MEMORY[0x277D85DE8];
  return v36;
}