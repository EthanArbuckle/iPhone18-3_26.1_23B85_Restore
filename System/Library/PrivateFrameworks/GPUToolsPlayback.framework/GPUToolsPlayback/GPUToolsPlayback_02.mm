void std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 48 * ((48 * a2 - 48) / 0x30) + 48;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x555555555555555)
    {
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>(a1, v9);
    }

    v11 = 48 * v6;
    v12 = 48 * ((48 * a2 - 48) / 0x30) + 48;
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,std::vector<unsigned long long>,std::vector<unsigned long long>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,std::vector<unsigned long long>,std::vector<unsigned long long>>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,std::vector<unsigned long long>,std::vector<unsigned long long>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,std::vector<unsigned long long>,std::vector<unsigned long long>>>>(a1, a2);
  }

  std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,std::vector<unsigned long long>,std::vector<unsigned long long>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,std::vector<unsigned long long>,std::vector<unsigned long long>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 10;
        std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,std::vector<unsigned long long>,std::vector<unsigned long long>>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,std::vector<unsigned long long>,std::vector<unsigned long long>>>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = a2[7];
  if (v3)
  {
    a2[8] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

uint64_t *std::back_insert_iterator<std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>::operator=[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (v5 >= v6)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 4);
    v11 = v10 + 1;
    if (v10 + 1 > 0x555555555555555)
    {
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 4);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x2AAAAAAAAAAAAAALL)
    {
      v13 = 0x555555555555555;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>(*a1, v13);
    }

    v14 = 48 * v10;
    v15 = *a2;
    v16 = a2[2];
    *(v14 + 16) = a2[1];
    *(v14 + 32) = v16;
    *v14 = v15;
    v9 = 48 * v10 + 48;
    v17 = *(v4 + 8) - *v4;
    v18 = v14 - v17;
    memcpy((v14 - v17), *v4, v17);
    v19 = *v4;
    *v4 = v18;
    *(v4 + 8) = v9;
    *(v4 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v7 = *a2;
    v8 = a2[2];
    v5[1] = a2[1];
    v5[2] = v8;
    *v5 = v7;
    v9 = (v5 + 3);
  }

  *(v4 + 8) = v9;
  return a1;
}

void std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
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

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>(a1, v9);
    }

    v11 = 56 * v6;
    v12 = 56 * ((56 * a2 - 56) / 0x38) + 56;
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,false>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
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
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 4);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v24, a2 - 6, v9);
      if (result)
      {
        v22 = v9;
        v23 = a2 - 6;
        return std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](v22, v23);
      }

      return result;
    }

LABEL_11:
    if (v12 <= 1151)
    {
      if (a5)
      {
        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(v9, a2);
      }

      else
      {
        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(v9, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = &v9[6 * (v13 >> 1)];
    if (v12 < 0x1801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(v15, v9, a2 - 6);
      if (a5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(v9, v15, a2 - 6);
      v16 = 3 * v14;
      v17 = &v9[6 * v14 - 6];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(v9 + 6, v17, a2 - 12);
      v18 = &v9[2 * v16 + 6];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(v8 + 12, v18, a2 - 18);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(v17, v15, v18);
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](v8, v15);
      if (a5)
      {
        goto LABEL_18;
      }
    }

    if (!std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v28, v8 - 6, v8))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,std::__less<void,void> &>(v8, a2);
      v9 = result;
      goto LABEL_23;
    }

LABEL_18:
    v19 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,std::__less<void,void> &>(v8, a2);
    if ((v20 & 1) == 0)
    {
      goto LABEL_21;
    }

    v21 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(v8, v19);
    v9 = v19 + 6;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(v19 + 6, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v19;
      if (v21)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v21)
    {
LABEL_21:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,false>(v8, v19, a3, -v11, a5 & 1);
      v9 = v19 + 6;
LABEL_23:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v13 == 3)
  {
    return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(v9, v9 + 6, a2 - 6);
  }

  if (v13 != 4)
  {
    if (v13 == 5)
    {
      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(v9, v9 + 6, v9 + 12, v9 + 18, a2 - 6);
    }

    goto LABEL_11;
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(v9, v9 + 6, v9 + 12);
  result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v25, a2 - 6, v9 + 12);
  if (result)
  {
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](v9 + 12, a2 - 6);
    result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v26, v9 + 12, v9 + 6);
    if (result)
    {
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](v9 + 6, v9 + 12);
      result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v27, v9 + 6, v9);
      if (result)
      {
        v23 = v9 + 6;
        v22 = v9;
        return std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](v22, v23);
      }
    }
  }

  return result;
}

BOOL std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v9, a2, a1))
  {
    if (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v12, a3, a2))
    {
      v6 = a1;
LABEL_9:
      v8 = a3;
      goto LABEL_10;
    }

    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a1, a2);
    if (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v13, a3, a2))
    {
      v6 = a2;
      goto LABEL_9;
    }
  }

  else
  {
    result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v10, a3, a2);
    if (!result)
    {
      return result;
    }

    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a2, a3);
    if (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v11, a2, a1))
    {
      v6 = a1;
      v8 = a2;
LABEL_10:
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](v6, v8);
    }
  }

  return 1;
}

uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(a1, a2, a3);
  if (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v11, a4, a3))
  {
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a3, a4);
    if (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v12, a3, a2))
    {
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a2, a3);
      if (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v13, a2, a1))
      {
        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a1, a2);
      }
    }
  }

  result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v14, a5, a4);
  if (result)
  {
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a4, a5);
    result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v15, a4, a3);
    if (result)
    {
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a3, a4);
      result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v16, a3, a2);
      if (result)
      {
        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a2, a3);
        result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v17, a2, a1);
        if (result)
        {
          return std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a1, a2);
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(_BOOL8 result, _OWORD *a2)
{
  if (result != a2)
  {
    *&v16[49] = v2;
    v17 = v3;
    v5 = result;
    v6 = (result + 48);
    if ((result + 48) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v8;
        v8 = v6;
        result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v14, v6, v9);
        if (result)
        {
          v10 = v8[1];
          v14 = *v8;
          *v15 = v10;
          *&v15[16] = v8[2];
          v11 = v7;
          while (1)
          {
            v12 = v5 + v11;
            *(v12 + 48) = *(v5 + v11);
            *(v12 + 64) = *(v5 + v11 + 16);
            *(v12 + 72) = *(v5 + v11 + 24);
            *(v12 + 88) = *(v5 + v11 + 40);
            if (!v11)
            {
              break;
            }

            v11 -= 48;
            result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(v16, &v14, (v11 + v5));
            if (!result)
            {
              v13 = v5 + v11 + 48;
              goto LABEL_10;
            }
          }

          v13 = v5;
LABEL_10:
          *v13 = v14;
          *(v13 + 16) = *v15;
          *(v13 + 24) = *&v15[8];
          *(v13 + 40) = *&v15[24];
        }

        v6 = v8 + 3;
        v7 += 48;
      }

      while (v8 + 3 != a2);
    }
  }

  return result;
}

BOOL std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(_BOOL8 result, _OWORD *a2)
{
  if (result != a2)
  {
    *&v13[33] = v2;
    v14 = v3;
    v5 = result;
    v6 = (result + 48);
    if ((result + 48) != a2)
    {
      v7 = result - 48;
      do
      {
        v8 = v5;
        v5 = v6;
        result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v11, v6, v8);
        if (result)
        {
          v9 = v5[1];
          v11 = *v5;
          *v12 = v9;
          *&v12[16] = v5[2];
          v10 = v7;
          do
          {
            *(v10 + 96) = *(v10 + 48);
            *(v10 + 112) = *(v10 + 64);
            *(v10 + 120) = *(v10 + 72);
            *(v10 + 136) = *(v10 + 88);
            result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(v13, &v11, v10);
            v10 -= 48;
          }

          while (result);
          *(v10 + 96) = v11;
          *(v10 + 112) = *v12;
          *(v10 + 120) = *&v12[8];
          *(v10 + 136) = *&v12[24];
        }

        v6 = v5 + 3;
        v7 += 48;
      }

      while (v5 + 3 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,std::__less<void,void> &>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = *(a1 + 1);
  v9 = *a1;
  v10 = v4;
  v11 = *(a1 + 2);
  if (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v12, &v9, a2 - 6))
  {
    v5 = a1;
    do
    {
      v5 += 6;
    }

    while (!std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v12, &v9, v5));
  }

  else
  {
    v6 = a1 + 6;
    do
    {
      v5 = v6;
      if (v6 >= v2)
      {
        break;
      }

      v7 = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v12, &v9, v6);
      v6 = v5 + 6;
    }

    while (!v7);
  }

  if (v5 < v2)
  {
    do
    {
      v2 -= 6;
    }

    while (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v12, &v9, v2));
  }

  while (v5 < v2)
  {
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](v5, v2);
    do
    {
      v5 += 6;
    }

    while (!std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v12, &v9, v5));
    do
    {
      v2 -= 6;
    }

    while (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v12, &v9, v2));
  }

  if (v5 - 6 != a1)
  {
    *a1 = *(v5 - 6);
    a1[1] = *(v5 - 5);
    a1[2] = *(v5 - 4);
    a1[3] = *(v5 - 3);
    a1[4] = *(v5 - 2);
    a1[5] = *(v5 - 1);
  }

  *(v5 - 3) = v9;
  *(v5 - 2) = v10;
  *(v5 - 1) = v11;
  return v5;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,std::__less<void,void> &>(uint64_t *a1, uint64_t *a2)
{
  v4 = 0;
  v5 = *(a1 + 1);
  v10 = *a1;
  v11 = v5;
  v12 = *(a1 + 2);
  do
  {
    v4 += 6;
  }

  while (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v13, &a1[v4], &v10));
  v6 = &a1[v4];
  if (v4 == 6)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      a2 -= 6;
    }

    while (!std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v13, a2, &v10));
  }

  else
  {
    do
    {
      a2 -= 6;
    }

    while (!std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v13, a2, &v10));
  }

  v7 = &a1[v4];
  if (v6 < a2)
  {
    v8 = a2;
    do
    {
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](v7, v8);
      do
      {
        v7 += 6;
      }

      while (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v13, v7, &v10));
      do
      {
        v8 -= 6;
      }

      while (!std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v13, v8, &v10));
    }

    while (v7 < v8);
  }

  result = v7 - 6;
  if (v7 - 6 != a1)
  {
    *a1 = *(v7 - 6);
    a1[1] = *(v7 - 5);
    a1[2] = *(v7 - 4);
    a1[3] = *(v7 - 3);
    a1[4] = *(v7 - 2);
    a1[5] = *(v7 - 1);
  }

  *(v7 - 3) = v10;
  *(v7 - 2) = v11;
  *(v7 - 1) = v12;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(uint64_t *a1, uint64_t *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(a1, a1 + 6, a2 - 6);
        return 1;
      case 4:
        v16 = a2 - 6;
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(a1, a1 + 6, a1 + 12);
        if (!std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v18, v16, a1 + 12))
        {
          return 1;
        }

        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a1 + 12, v16);
        if (!std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v18, a1 + 12, a1 + 6))
        {
          return 1;
        }

        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a1 + 6, a1 + 12);
        if (!std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v18, a1 + 6, a1))
        {
          return 1;
        }

        v7 = a1 + 6;
        v6 = a1;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(a1, a1 + 6, a1 + 12, a1 + 18, a2 - 6);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 6;
      if (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v18, a2 - 6, a1))
      {
        v6 = a1;
        v7 = v5;
LABEL_6:
        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](v6, v7);
      }

      return 1;
    }
  }

  v8 = a1 + 12;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(a1, a1 + 6, a1 + 12);
  v9 = a1 + 18;
  if (a1 + 18 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v18, v9, v8))
    {
      v12 = *(v9 + 1);
      v18 = *v9;
      *v19 = v12;
      *&v19[16] = *(v9 + 2);
      v13 = v10;
      while (1)
      {
        v14 = a1 + v13;
        *(v14 + 9) = *(a1 + v13 + 96);
        *(v14 + 20) = *(a1 + v13 + 112);
        *(v14 + 168) = *(a1 + v13 + 120);
        *(v14 + 23) = *(a1 + v13 + 136);
        if (v13 == -96)
        {
          break;
        }

        v13 -= 48;
        if (!std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v20, &v18, v14 + 6))
        {
          v15 = a1 + v13 + 144;
          goto LABEL_20;
        }
      }

      v15 = a1;
LABEL_20:
      *v15 = v18;
      *(v15 + 16) = *v19;
      *(v15 + 24) = *&v19[8];
      *(v15 + 40) = *&v19[24];
      if (++v11 == 8)
      {
        return v9 + 6 == a2;
      }
    }

    v8 = v9;
    v10 += 48;
    v9 += 6;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

BOOL std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(uint64_t a1, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    return 1;
  }

  if (*a3 < *a2)
  {
    return 0;
  }

  v6 = a2[1];
  v7 = a3[1];
  if (v6 < v7)
  {
    return 1;
  }

  if (v7 < v6)
  {
    return 0;
  }

  *&v8[1] = v3;
  v9 = v4;
  return std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(v8, a2, a3);
}

BOOL std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[2];
  v4 = a3[2];
  if (v3 < v4)
  {
    return 1;
  }

  if (v4 < v3)
  {
    return 0;
  }

  v6 = a2[3];
  v7 = a3[3];
  if (v6 < v7)
  {
    return 1;
  }

  if (v7 < v6)
  {
    return 0;
  }

  v8 = a2[4];
  v9 = a3[4];
  if (v8 < v9)
  {
    return 1;
  }

  if (v9 < v8)
  {
    return 0;
  }

  return a2[5] < a3[5];
}

uint64_t *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  result[2] = a2[2];
  a2[2] = v4;
  v5 = result[3];
  result[3] = a2[3];
  a2[3] = v5;
  v6 = result[4];
  result[4] = a2[4];
  a2[4] = v6;
  v7 = result[5];
  result[5] = a2[5];
  a2[5] = v7;
  return result;
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
    if (a2 - a1 >= 49)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[6 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(a1, a4, v9, v12);
        v12 -= 6;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v26, v13, a1))
        {
          std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](v13, a1);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(a1, a4, v9, a1);
        }

        v13 += 6;
      }

      while (v13 != a3);
    }

    if (v8 >= 49)
    {
      v24 = a4;
      v14 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      v15 = a2 - 6;
      do
      {
        v16 = *a1;
        v17 = a1[1];
        v19 = a1[2];
        v18 = a1[3];
        v20 = a1[4];
        v25 = a1[5];
        v21 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(a1, v24, v14);
        if (v15 == v21)
        {
          *v21 = v16;
          v21[1] = v17;
          v21[2] = v19;
          v21[3] = v18;
          v21[4] = v20;
          v21[5] = v25;
        }

        else
        {
          *v21 = *v15;
          v21[1] = v15[1];
          v21[2] = v15[2];
          v21[3] = v15[3];
          v21[4] = v15[4];
          v21[5] = v15[5];
          *v15 = v16;
          v15[1] = v17;
          v15[2] = v19;
          v15[3] = v18;
          v15[4] = v20;
          v15[5] = v25;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(a1, (v21 + 6), v24, 0xAAAAAAAAAAAAAAABLL * (((v21 + 6) - a1) >> 4));
        }

        v15 -= 6;
      }

      while (v14-- > 2);
    }

    return v13;
  }

  return a3;
}

BOOL std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(_BOOL8 result, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v8 = result;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 4)))
    {
      v11 = (0x5555555555555556 * ((a4 - result) >> 4)) | 1;
      v12 = (result + 48 * v11);
      v13 = 0x5555555555555556 * ((a4 - result) >> 4) + 2;
      if (v13 < a3 && std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v18, (result + 48 * v11), v12 + 6))
      {
        v12 += 6;
        v11 = v13;
      }

      result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v18, v12, v7);
      if (!result)
      {
        v14 = v7[1];
        v18 = *v7;
        v19 = v14;
        v20 = v7[2];
        do
        {
          v15 = v12;
          *v7 = *v12;
          *(v7 + 1) = v12[1];
          *(v7 + 2) = v12[2];
          *(v7 + 3) = v12[3];
          *(v7 + 4) = v12[4];
          *(v7 + 5) = v12[5];
          if (v9 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v8 + 48 * v16);
          v17 = 2 * v11 + 2;
          if (v17 < a3 && std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v21, (v8 + 48 * v16), v12 + 6))
          {
            v12 += 6;
            v16 = v17;
          }

          result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v21, v12, &v18);
          v7 = v15;
          v11 = v16;
        }

        while (!result);
        *v15 = v18;
        v15[1] = v19;
        v15[2] = v20;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[6 * v5];
    v8 = v7 + 6;
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 < a3)
    {
      v11 = v7 + 12;
      if (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v13, v7 + 6, v7 + 12))
      {
        v8 = v11;
        v9 = v10;
      }
    }

    *a1 = *v8;
    a1[1] = v8[1];
    a1[2] = v8[2];
    a1[3] = v8[3];
    a1[4] = v8[4];
    a1[5] = v8[5];
    a1 = v8;
    v5 = v9;
  }

  while (v9 <= v6);
  return v8;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    *&v17[49] = v4;
    v18 = v5;
    v7 = (a4 - 2) >> 1;
    v8 = (a1 + 48 * v7);
    v9 = (a2 - 48);
    if (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v14, v8, (a2 - 48)))
    {
      v11 = v9[1];
      v14 = *v9;
      v15 = v11;
      *v16 = v9[2];
      do
      {
        v12 = v8;
        *v9 = *v8;
        *(v9 + 1) = v8[1];
        *(v9 + 2) = v8[2];
        *(v9 + 3) = v8[3];
        *(v9 + 4) = v8[4];
        *(v9 + 5) = v8[5];
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 48 * v7);
        v9 = v12;
      }

      while (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(v17, v8, &v14));
      v13 = v15;
      *v12 = v14;
      v12[1] = v13;
      result = v16[0];
      v12[2] = *v16;
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,false>(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
  v9 = 0x6DB6DB6DB6DB6DB7;
LABEL_2:
  v29 = a2 - 7;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = ((a2 - v10) >> 3) * v9;
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3uLL:
          return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(v10, (v10 + 56), v29);
        case 4uLL:
          return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(v10, (v10 + 56), (v10 + 112), v29);
        case 5uLL:
          return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(v10, (v10 + 56), (v10 + 112), (v10 + 168), v29);
      }
    }

    else
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v28 = *(a2 - 7);
        v27 = (a2 - 7);
        v26 = v28;
        if (v28 < *v10)
        {
          return std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](v10, v27);
        }

        if (*v10 >= v26)
        {
          result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v30, v27, v10);
          if (result)
          {
            return std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](v10, v27);
          }
        }

        return result;
      }
    }

    if (v13 <= 1343)
    {
      if (a5)
      {
        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(v10, a2);
      }

      else
      {
        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(v10, a2);
      }
    }

    if (v12 == 1)
    {
      break;
    }

    v15 = v14 >> 1;
    v16 = (v10 + 56 * (v14 >> 1));
    if (v13 < 0x1C01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(v16, v10, v29);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(v10, v16, v29);
      v17 = v10 + 56;
      v18 = v9;
      v19 = 56 * v15;
      v20 = &v8[7 * v15 - 7];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(v8 + 7, v20, a2 - 14);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(v8 + 14, (v17 + v19), a2 - 21);
      v21 = (v17 + v19);
      v9 = v18;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(v20, v16, v21);
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](v8, v16);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v22 = *(v8 - 7);
    if (v22 >= *v8 && (*v8 < v22 || !std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v31, v8 - 7, v8)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,std::__less<void,void> &>(v8, a2);
      v10 = result;
      goto LABEL_25;
    }

LABEL_20:
    v23 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,std::__less<void,void> &>(v8, a2);
    if ((v24 & 1) == 0)
    {
      goto LABEL_23;
    }

    v25 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(v8, v23);
    v10 = (v23 + 7);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>((v23 + 7), a2);
    if (result)
    {
      a4 = -v12;
      a2 = v23;
      if (v25)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v25)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,false>(v8, v23, a3, -v12, a5 & 1);
      v10 = (v23 + 7);
LABEL_25:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  if (v10 != a2)
  {
    return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(v10, a2, a2, a3);
  }

  return result;
}

BOOL std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v6 = *a2;
  if (*a2 < *a1 || *a1 >= v6 && (v8 = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v11, a2, a1), v6 = *a2, v8))
  {
    if (*a3 < v6 || v6 >= *a3 && std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v14, a3, a2))
    {
      v7 = a1;
    }

    else
    {
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a1, a2);
      if (*a3 >= *a2 && (*a2 < *a3 || !std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v15, a3, a2)))
      {
        return 1;
      }

      v7 = a2;
    }

    v9 = a3;
LABEL_14:
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](v7, v9);
    return 1;
  }

  if (*a3 < v6)
  {
LABEL_7:
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a2, a3);
    if (*a2 >= *a1 && (*a1 < *a2 || !std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v13, a2, a1)))
    {
      return 1;
    }

    v7 = a1;
    v9 = a2;
    goto LABEL_14;
  }

  if (v6 < *a3)
  {
    return 0;
  }

  result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v12, a3, a2);
  if (result)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(uint64_t *a1, uint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(a1, a2, a3);
  if (*a4 < *a3 || *a3 >= *a4 && (result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v9, a4, a3), result))
  {
    result = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a3, a4);
    if (*a3 < *a2 || *a2 >= *a3 && (result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v10, a3, a2), result))
    {
      result = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a2, a3);
      if (*a2 < *a1)
      {
        return std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a1, a2);
      }

      if (*a1 >= *a2)
      {
        result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v11, a2, a1);
        if (result)
        {
          return std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a1, a2);
        }
      }
    }
  }

  return result;
}

uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(uint64_t *a1, uint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(a1, a2, a3, a4);
  if (*a5 < *a4 || *a4 >= *a5 && (result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v11, a5, a4), result))
  {
    result = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a4, a5);
    if (*a4 < *a3 || *a3 >= *a4 && (result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v12, a4, a3), result))
    {
      result = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a3, a4);
      if (*a3 < *a2 || *a2 >= *a3 && (result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v13, a3, a2), result))
      {
        result = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a2, a3);
        if (*a2 < *a1)
        {
          return std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a1, a2);
        }

        if (*a1 >= *a2)
        {
          result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v14, a2, a1);
          if (result)
          {
            return std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a1, a2);
          }
        }
      }
    }
  }

  return result;
}

unint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(unint64_t *result, unint64_t *a2)
{
  if (result == a2)
  {
    return result;
  }

  v23 = v2;
  v24 = v3;
  v5 = result;
  v6 = (result + 7);
  if (result + 7 == a2)
  {
    return result;
  }

  v7 = 0;
  v8 = result;
  do
  {
    v9 = v8;
    v8 = v6;
    v10 = v9[7];
    if (v10 >= *v9)
    {
      if (*v9 < v10)
      {
        goto LABEL_19;
      }

      result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v18, v8, v9);
      if (!result)
      {
        goto LABEL_19;
      }
    }

    v11 = v8[1];
    v18 = *v8;
    v19 = v11;
    v20 = v8[2];
    v21 = *(v8 + 6);
    v12 = v9[1];
    v9[7] = *v9;
    *(v8 + 1) = v12;
    *(v8 + 2) = v9[2];
    *(v8 + 3) = v9[3];
    *(v8 + 4) = v9[4];
    *(v8 + 5) = v9[5];
    *(v8 + 6) = v9[6];
    v13 = v5;
    if (v9 == v5)
    {
      goto LABEL_18;
    }

    v14 = v7;
    while (1)
    {
      v15 = v5 + v14;
      v16 = *(v5 + v14 - 56);
      if (v18 >= v16)
      {
        break;
      }

LABEL_11:
      v9 -= 7;
      *v15 = v16;
      v17 = *(v15 - 2);
      *(v15 + 8) = *(v15 - 3);
      *(v15 + 24) = v17;
      *(v15 + 40) = *(v15 - 1);
      v14 -= 56;
      if (!v14)
      {
        v13 = v5;
        goto LABEL_18;
      }
    }

    if (v16 < v18)
    {
      v13 = v9;
      goto LABEL_18;
    }

    result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v22, &v18, (v5 + v14 - 56));
    if (result)
    {
      v16 = *(v5 + v14 - 56);
      goto LABEL_11;
    }

    v13 = (v5 + v14);
LABEL_18:
    *v13 = v18;
    *(v13 + 1) = v19;
    *(v13 + 2) = v20;
    v13[6] = v21;
LABEL_19:
    v6 = (v8 + 56);
    v7 += 56;
  }

  while ((v8 + 56) != a2);
  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    *&v17[33] = v2;
    v18 = v3;
    v5 = result;
    v6 = result + 56;
    if (result + 56 != a2)
    {
      v7 = (result + 104);
      do
      {
        v8 = v5;
        v5 = v6;
        v9 = v8[7];
        if (v9 < *v8 || *v8 >= v9 && (result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(v14, v5, v8), result))
        {
          v10 = *(v5 + 16);
          *v14 = *v5;
          *&v14[16] = v10;
          v15 = *(v5 + 32);
          v16 = *(v5 + 48);
          for (i = v7; ; i -= 7)
          {
            *(i - 6) = *(i - 13);
            *(i - 5) = *(i - 6);
            *(i - 3) = *(i - 10);
            *(i - 1) = *(i - 9);
            *i = *(i - 7);
            v12 = *(i - 20);
            v13 = *v14;
            if (*v14 >= v12)
            {
              if (v12 < *v14)
              {
                goto LABEL_14;
              }

              result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(v17, v14, i - 20);
              if (!result)
              {
                break;
              }
            }
          }

          v13 = *v14;
LABEL_14:
          *(i - 13) = v13;
          *(i - 6) = *&v14[8];
          *(i - 10) = *&v14[24];
          *(i - 9) = v15;
          *(i - 7) = v16;
        }

        v6 = v5 + 56;
        v7 += 7;
      }

      while (v5 + 56 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,std::__less<void,void> &>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = *(a1 + 1);
  v19 = *a1;
  v20 = v4;
  v21 = *(a1 + 2);
  v22 = a1[6];
  v5 = *(a2 - 7);
  v6 = v19;
  if (v19 >= v5)
  {
    if (v5 < v19 || !std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v23, &v19, a2 - 7))
    {
        ;
      }

      goto LABEL_16;
    }

    v6 = v19;
  }

  i = a1;
  while (1)
  {
    v9 = i[7];
    i += 7;
    v8 = v9;
    if (v6 < v9)
    {
      break;
    }

    if (v8 >= v6)
    {
      if (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v23, &v19, i))
      {
        break;
      }

      v6 = v19;
    }
  }

LABEL_16:
  if (i < v2)
  {
    do
    {
      do
      {
        v11 = *(v2 - 7);
        v2 -= 7;
        v10 = v11;
      }

      while (v19 < v11);
    }

    while (v10 >= v19 && std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v23, &v19, v2));
  }

  while (i < v2)
  {
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](i, v2);
    v13 = i[7];
    i += 7;
    v12 = v13;
    v14 = v19;
    while (v14 >= v12)
    {
      if (v12 >= v14)
      {
        if (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v23, &v19, i))
        {
          goto LABEL_27;
        }

        v14 = v19;
      }

      v15 = i[7];
      i += 7;
      v12 = v15;
    }

    do
    {
      do
      {
LABEL_27:
        v17 = *(v2 - 7);
        v2 -= 7;
        v16 = v17;
      }

      while (v19 < v17);
    }

    while (v16 >= v19 && std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v23, &v19, v2));
  }

  if (i - 7 != a1)
  {
    *a1 = *(i - 7);
    a1[1] = *(i - 6);
    a1[2] = *(i - 5);
    a1[3] = *(i - 4);
    a1[4] = *(i - 3);
    a1[5] = *(i - 2);
    a1[6] = *(i - 1);
  }

  *(i - 7) = v19;
  *(i - 5) = v20;
  *(i - 3) = v21;
  *(i - 1) = v22;
  return i;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,std::__less<void,void> &>(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 1);
  v23 = *a1;
  v24 = v4;
  v25 = *(a1 + 2);
  v26 = a1[6];
  for (i = 7; ; i += 7)
  {
    v6 = a1[i];
    if (v6 >= v23 && (v23 < v6 || !std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v27, &a1[i], &v23)))
    {
      break;
    }
  }

  v7 = &a1[i];
  if (i == 7)
  {
LABEL_18:
    if (v7 < a2)
    {
      do
      {
        v13 = *(a2 - 7);
        a2 -= 7;
        v12 = v13;
        if (v13 < v23)
        {
          break;
        }

        if (v23 < v12)
        {
          goto LABEL_18;
        }

        v14 = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v27, a2, &v23);
        if (v7 >= a2)
        {
          break;
        }
      }

      while (!v14);
    }
  }

  else
  {
    v9 = *(a2 - 7);
    a2 -= 7;
    v8 = v9;
    v10 = v23;
    while (v8 >= v10)
    {
      if (v10 >= v8)
      {
        if (std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v27, a2, &v23))
        {
          break;
        }

        v10 = v23;
      }

      v11 = *(a2 - 7);
      a2 -= 7;
      v8 = v11;
    }
  }

  v15 = &a1[i];
  if (v7 < a2)
  {
    v16 = a2;
    do
    {
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](v15, v16);
      while (1)
      {
        do
        {
          v18 = v15[7];
          v15 += 7;
          v17 = v18;
          v19 = v23;
        }

        while (v18 < v23);
        if (v23 < v17)
        {
          break;
        }

        if (!std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v27, v15, &v23))
        {
          goto LABEL_29;
        }
      }

      do
      {
LABEL_26:
        v21 = *(v16 - 7);
        v16 -= 7;
        v20 = v21;
        if (v21 < v19)
        {
          goto LABEL_30;
        }
      }

      while (v19 < v20);
      if (!std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v27, v16, &v23))
      {
LABEL_29:
        v19 = v23;
        goto LABEL_26;
      }

LABEL_30:
      ;
    }

    while (v15 < v16);
  }

  result = v15 - 7;
  if (v15 - 7 != a1)
  {
    *a1 = *(v15 - 7);
    a1[1] = *(v15 - 6);
    a1[2] = *(v15 - 5);
    a1[3] = *(v15 - 4);
    a1[4] = *(v15 - 3);
    a1[5] = *(v15 - 2);
    a1[6] = *(v15 - 1);
  }

  *(v15 - 7) = v23;
  *(v15 - 5) = v24;
  *(v15 - 3) = v25;
  *(v15 - 1) = v26;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(uint64_t a1, uint64_t a2)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(a1, (a1 + 56), (a2 - 56));
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(a1, (a1 + 56), (a1 + 112), (a2 - 56));
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(a1, (a1 + 56), (a1 + 112), (a1 + 168), (a2 - 56));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v6 = (a2 - 56);
      v5 = *(a2 - 56);
      if (v5 < *a1 || *a1 >= v5 && std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(v18, v6, a1))
      {
        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](a1, v6);
      }

      return 1;
    }
  }

  v7 = (a1 + 112);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,0>(a1, (a1 + 56), (a1 + 112));
  v8 = a1 + 168;
  if (a1 + 168 == a2)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while (2)
  {
    if (*v8 >= *v7 && (*v7 < *v8 || !std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(v18, v8, v7)))
    {
      goto LABEL_26;
    }

    v20 = *(v8 + 48);
    v11 = *(v8 + 32);
    *&v18[16] = *(v8 + 16);
    v19 = v11;
    *v18 = *v8;
    *v8 = *v7;
    *(v8 + 8) = v7[1];
    *(v8 + 16) = v7[2];
    *(v8 + 24) = v7[3];
    *(v8 + 32) = v7[4];
    *(v8 + 40) = v7[5];
    *(v8 + 48) = v7[6];
    v12 = v9;
    while (1)
    {
      v13 = a1 + v12;
      v14 = *(a1 + v12 + 56);
      if (*v18 >= v14)
      {
        break;
      }

LABEL_19:
      *(v13 + 112) = v14;
      v15 = *(v13 + 80);
      *(v13 + 120) = *(v13 + 64);
      *(v13 + 136) = v15;
      *(v13 + 152) = *(v13 + 96);
      v12 -= 56;
      if (v12 == -112)
      {
        v16 = a1;
        goto LABEL_25;
      }
    }

    if (v14 >= *v18 && std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v21, v18, (a1 + v12 + 56)))
    {
      v14 = *(a1 + v12 + 56);
      goto LABEL_19;
    }

    v16 = a1 + v12 + 112;
LABEL_25:
    *v16 = *v18;
    *(v16 + 8) = *&v18[8];
    *(v16 + 24) = *&v18[24];
    *(v16 + 32) = v19;
    *(v16 + 48) = v20;
    if (++v10 != 8)
    {
LABEL_26:
      v7 = v8;
      v9 += 56;
      v8 += 56;
      if (v8 == a2)
      {
        return 1;
      }

      continue;
    }

    return v8 + 56 == a2;
  }
}

BOOL std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(uint64_t a1, void *a2, void *a3)
{
  v5 = a2[1];
  v6 = a3[1];
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v8 = a2[2];
  v9 = a3[2];
  if (v8 < v9)
  {
    return 1;
  }

  if (v9 < v8)
  {
    return 0;
  }

  *&v10[1] = v3;
  v11 = v4;
  return std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(v10, a2, a3);
}

BOOL std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[3];
  v4 = a3[3];
  if (v3 < v4)
  {
    return 1;
  }

  if (v4 < v3)
  {
    return 0;
  }

  v6 = a2[4];
  v7 = a3[4];
  if (v6 < v7)
  {
    return 1;
  }

  if (v7 < v6)
  {
    return 0;
  }

  v8 = a2[5];
  v9 = a3[5];
  if (v8 < v9)
  {
    return 1;
  }

  if (v9 < v8)
  {
    return 0;
  }

  return a2[6] < a3[6];
}

uint64_t *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  result[2] = a2[2];
  a2[2] = v4;
  v5 = result[3];
  result[3] = a2[3];
  a2[3] = v5;
  v6 = result[4];
  result[4] = a2[4];
  a2[4] = v6;
  v7 = result[5];
  result[5] = a2[5];
  a2[5] = v7;
  v8 = result[6];
  result[6] = a2[6];
  a2[6] = v8;
  return result;
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0x6DB6DB6DB6DB6DB7 * (a2 - a1);
    if (a2 - a1 >= 57)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[7 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(a1, a4, v9, v12);
        v12 = (v12 - 56);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (*v13 < *a1 || *a1 >= *v13 && std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v27, v13, a1))
        {
          std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>::swap[abi:ne200100](v13, a1);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(a1, a4, v9, a1);
        }

        v13 += 7;
      }

      while (v13 != a3);
    }

    if (v8 >= 57)
    {
      v14 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
      v15 = a2 - 7;
      v16 = a4;
      do
      {
        v18 = *a1;
        v17 = a1[1];
        v19 = a1[2];
        v20 = a1[3];
        v21 = a1[4];
        v25 = a1[5];
        v26 = a1[6];
        v22 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(a1, v16, v14);
        if (v15 == v22)
        {
          *v22 = v18;
          v22[1] = v17;
          v22[2] = v19;
          v22[3] = v20;
          v22[4] = v21;
          v22[5] = v25;
          v22[6] = v26;
        }

        else
        {
          *v22 = *v15;
          v22[1] = v15[1];
          v22[2] = v15[2];
          v22[3] = v15[3];
          v22[4] = v15[4];
          v22[5] = v15[5];
          v22[6] = v15[6];
          *v15 = v18;
          v15[1] = v17;
          v15[2] = v19;
          v15[3] = v20;
          v15[4] = v21;
          v15[5] = v25;
          v15[6] = v26;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(a1, (v22 + 7), v16, 0x6DB6DB6DB6DB6DB7 * (v22 + 7 - a1));
        }

        v15 -= 7;
      }

      while (v14-- > 2);
    }

    return v13;
  }

  return a3;
}

BOOL std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(_BOOL8 result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v27 = v4;
    v28 = v5;
    v8 = result;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= 0x6DB6DB6DB6DB6DB7 * ((a4 - result) >> 3))
    {
      v11 = (0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 3)) | 1;
      v12 = (result + 56 * v11);
      v13 = 0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 3) + 2;
      if (v13 < a3)
      {
        v14 = v12[7];
        if (*v12 < v14 || v14 >= *v12 && (result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v22, (result + 56 * v11), v12 + 7)))
        {
          v12 += 7;
          v11 = v13;
        }
      }

      v15 = *v12;
      if (*v12 >= *a4)
      {
        if (*a4 >= v15)
        {
          result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v22, v12, a4);
          if (result)
          {
            return result;
          }

          v15 = *v12;
        }

        v16 = a4[1];
        v22 = *a4;
        v23 = v16;
        v24 = a4[2];
        v25 = *(a4 + 6);
        *a4 = v15;
        *(a4 + 1) = v12[1];
        *(a4 + 2) = v12[2];
        *(a4 + 3) = v12[3];
        *(a4 + 4) = v12[4];
        *(a4 + 5) = v12[5];
        *(a4 + 6) = v12[6];
        if (v9 >= v11)
        {
          while (1)
          {
            v18 = 2 * v11;
            v11 = (2 * v11) | 1;
            v17 = (v8 + 56 * v11);
            v19 = v18 + 2;
            if (v18 + 2 < a3)
            {
              v20 = v17[7];
              if (*v17 < v20 || v20 >= *v17 && (result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v26, (v8 + 56 * v11), v17 + 7)))
              {
                v17 += 7;
                v11 = v19;
              }
            }

            v21 = *v17;
            if (*v17 < v22)
            {
              break;
            }

            if (v22 >= v21)
            {
              result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v26, v17, &v22);
              if (result)
              {
                break;
              }

              v21 = *v17;
            }

            *v12 = v21;
            v12[1] = v17[1];
            v12[2] = v17[2];
            v12[3] = v17[3];
            v12[4] = v17[4];
            v12[5] = v17[5];
            v12[6] = v17[6];
            v12 = v17;
            if (v9 < v11)
            {
              goto LABEL_14;
            }
          }
        }

        v17 = v12;
LABEL_14:
        *v17 = v22;
        *(v17 + 1) = v23;
        *(v17 + 2) = v24;
        v17[6] = v25;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1;
    v8 = &a1[7 * v5];
    a1 = v8 + 7;
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v13 = v8[14];
      v12 = v8 + 14;
      v11 = v13;
      v14 = *(v12 - 7);
      if (v14 < v13 || v11 >= v14 && std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v16, a1, v12))
      {
        a1 = v12;
        v5 = v10;
      }
    }

    *v7 = *a1;
    v7[1] = a1[1];
    v7[2] = a1[2];
    v7[3] = a1[3];
    v7[4] = a1[4];
    v7[5] = a1[5];
    v7[6] = a1[6];
  }

  while (v5 <= v6);
  return a1;
}

BOOL std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *>(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 56 * (v4 >> 1));
    v10 = (a2 - 56);
    v9 = *(a2 - 56);
    v11 = *v8;
    if (*v8 >= v9)
    {
      if (v9 < v11)
      {
        return result;
      }

      result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v17, v8, v10);
      if (!result)
      {
        return result;
      }

      v11 = *v8;
    }

    v12 = v10[1];
    v17 = *v10;
    v18 = v12;
    v19 = v10[2];
    v20 = *(v10 + 6);
    *(a2 - 56) = v11;
    *(a2 - 48) = v8[1];
    *(a2 - 40) = v8[2];
    *(a2 - 32) = v8[3];
    *(a2 - 24) = v8[4];
    *(a2 - 16) = v8[5];
    *(a2 - 8) = v8[6];
    if (v4 >= 2)
    {
      while (1)
      {
        v14 = v7 - 1;
        v7 = (v7 - 1) >> 1;
        v13 = (v6 + 56 * v7);
        v15 = *v13;
        if (*v13 >= v17)
        {
          if (v17 < v15)
          {
            break;
          }

          result = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v21, (v6 + 56 * v7), &v17);
          if (!result)
          {
            break;
          }

          v15 = *v13;
        }

        v16 = v13[1];
        *v8 = v15;
        v8[1] = v16;
        v8[2] = v13[2];
        v8[3] = v13[3];
        v8[4] = v13[4];
        v8[5] = v13[5];
        v8[6] = v13[6];
        v8 = (v6 + 56 * v7);
        if (v14 <= 1)
        {
          goto LABEL_13;
        }
      }
    }

    v13 = v8;
LABEL_13:
    *v13 = v17;
    *(v13 + 1) = v18;
    *(v13 + 2) = v19;
    v13[6] = v20;
  }

  return result;
}

void std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::destroy(a1, a2[1]);
    v4 = a2[8];
    if (v4)
    {
      a2[9] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::find<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v9, (v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v10, a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

BOOL std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(uint64_t a1, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    return 1;
  }

  if (*a3 < *a2)
  {
    return 0;
  }

  v4 = a2[1];
  v5 = a3[1];
  if (v4 < v5)
  {
    return 1;
  }

  if (v5 < v4)
  {
    return 0;
  }

  v6 = a2[2];
  v7 = a3[2];
  if (v6 < v7)
  {
    return 1;
  }

  if (v7 < v6)
  {
    return 0;
  }

  return a2[3] < a3[3];
}

uint64_t std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::__emplace_unique_key_args<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::piecewise_construct_t const&,std::tuple<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long> const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::__find_equal<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::__find_equal<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(uint64_t a1, void *a2, void *a3)
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
        if (!std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v9, a3, v4 + 4))
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

      if (!std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&v10, v7 + 4, a3))
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

void *std::vector<std::pair<unsigned long long,unsigned long long>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<DYMTLOriginalProcessBuffer>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_24D706060(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(void *a1, unint64_t *a2)
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

void *std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::find<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(uint64_t a1, unint64_t *a2)
{
  v3 = (a1 + 8);
  result = std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::__lower_bound<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == result)
  {
    return v3;
  }

  v5 = result[4];
  if (*a2 < v5)
  {
    return v3;
  }

  if (v5 >= *a2)
  {
    v6 = a2[1];
    v7 = result[5];
    if (v6 < v7 || v7 >= v6 && a2[2] < result[6])
    {
      return v3;
    }
  }

  return result;
}

void *std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::__lower_bound<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(uint64_t a1, unint64_t *a2, void *a3, void *a4)
{
  result = a4;
  if (a3)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    while (1)
    {
      v8 = a3[4];
      if (v8 >= v5)
      {
        if (v5 < v8)
        {
          goto LABEL_6;
        }

        v9 = a3[5];
        if (v9 >= v6)
        {
          break;
        }
      }

      ++a3;
LABEL_7:
      a3 = *a3;
      if (!a3)
      {
        return result;
      }
    }

    if (v6 >= v9)
    {
      v10 = a3[6];
      v11 = v10 >= v7;
      v12 = v10 < v7;
      if (v11)
      {
        result = a3;
      }

      a3 += v12;
      goto LABEL_7;
    }

LABEL_6:
    result = a3;
    goto LABEL_7;
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::__emplace_unique_key_args<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::piecewise_construct_t const&,std::tuple<std::tuple<unsigned long long,unsigned long long,unsigned long long> const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::__find_equal<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::__find_equal<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    while (1)
    {
      while (1)
      {
        v9 = v4;
        v10 = v4[4];
        if (v6 >= v10)
        {
          break;
        }

LABEL_4:
        v4 = *v9;
        result = v9;
        if (!*v9)
        {
          goto LABEL_17;
        }
      }

      if (v10 >= v6)
      {
        v11 = v9[5];
        if (v7 < v11 || v11 >= v7 && v8 < v9[6])
        {
          goto LABEL_4;
        }

        v12 = v9[5];
        if (v12 >= v7 && (v7 < v12 || v9[6] >= v8))
        {
          goto LABEL_17;
        }
      }

      result = v9 + 1;
      v4 = v9[1];
      if (!v4)
      {
        goto LABEL_17;
      }
    }
  }

  v9 = result;
LABEL_17:
  *a2 = v9;
  return result;
}

void sub_24D70698C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_24D706AD4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_24D706D0C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void GPUTraceResourceResolutionDecode(NSDictionary *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  *a2 = xmmword_24D740D90;
  *(a2 + 16) = 32;
  if (v3)
  {
    v7 = v3;
    v4 = [(NSDictionary *)v3 objectForKeyedSubscript:@"width"];
    v5 = [(NSDictionary *)v7 objectForKeyedSubscript:@"height"];
    v6 = [(NSDictionary *)v7 objectForKeyedSubscript:@"format"];
    if (v4)
    {
      *a2 = [v4 unsignedIntegerValue];
    }

    if (v5)
    {
      *(a2 + 8) = [v5 unsignedIntegerValue];
    }

    if (v6)
    {
      *(a2 + 16) = [v6 unsignedIntegerValue];
    }

    v3 = v7;
  }
}

uint64_t GPUThumbnailOptionsColorGetIndex(NSString *a1)
{
  v1 = a1;
  v2 = [@"Color." length];
  v3 = [(NSString *)v1 substringWithRange:v2, [(NSString *)v1 length]- v2];
  v4 = [v3 integerValue];

  return v4;
}

BOOL IsFuncEnumPixelHistoryInterestingRenderPassStateItems(int a1)
{
  result = 1;
  if ((a1 + 16279) > 0x3C || ((1 << (a1 - 105)) & 0x100000000700FE01) == 0)
  {
    return (a1 + 16077) < 2;
  }

  return result;
}

void sub_24D710F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id a60)
{
  _Block_object_dispose(&a26, 8);
  std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::destroy(&a32, a33);

  _Block_object_dispose(&a47, 8);
  std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::destroy(&a53, a54);

  _Block_object_dispose((v69 - 184), 8);
  std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::destroy(v69 - 136, *(v69 - 128));

  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__4(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

id *DYMTLBoundBufferInfo::operator=(id *location, uint64_t a2)
{
  v4 = location[1];
  if (v4)
  {
    free(v4);
  }

  objc_storeStrong(location, *a2);
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  location[1] = v6;
  location[2] = v5;
  if (v6)
  {
    v7 = malloc_type_malloc(v5, 0x74086AF5uLL);
    location[1] = v7;
    memcpy(v7, *(a2 + 8), location[2]);
  }

  return location;
}

uint64_t std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>::__emplace_back_slow_path<MTLArgument * {__strong}>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(v3 + 8) = v4;
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void sub_24D711BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  _Block_object_dispose(&a23, 8);
  std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::destroy(v32 + 48, a30);

  _Unwind_Resume(a1);
}

void sub_24D71217C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  _Block_object_dispose(&a23, 8);
  *(v26 - 96) = a10;
  std::vector<objc_object  {objcproto10MTLTexture}* {__strong}>::__destroy_vector::operator()[abi:ne200100]((v26 - 96));
  a23 = (v26 - 120);
  std::vector<objc_object  {objcproto10MTLTexture}* {__strong}>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__511(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_24D713A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  GPUTools::AutoCATransaction::~AutoCATransaction(va);
  _Unwind_Resume(a1);
}

void sub_24D713F80(_Unwind_Exception *a1)
{
  GPUTools::AutoCATransaction::~AutoCATransaction((v4 - 96));

  _Unwind_Resume(a1);
}

void sub_24D71416C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_24D7151E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__633(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_24D716CD4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void std::vector<unsigned long long>::resize(void *a1, unint64_t a2)
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
    std::vector<unsigned long long>::__append(a1, a2 - v2);
  }
}

void sub_24D717F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::~__hash_table(&a25);
  v27 = *(v25 - 120);
  if (v27)
  {
    *(v25 - 112) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

void *std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>(result, a2);
    }

    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_24D7182E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>(v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22, &v18);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v20, v5);
    return;
  }

  v14 = *a1 + 8 * (v4 >> 6);
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v20, v5);
}

void sub_24D7188D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

GPUTools::AutoCATransaction *GPUTools::AutoCATransaction::AutoCATransaction(GPUTools::AutoCATransaction *this, int a2, char a3)
{
  *(this + 1) = [MEMORY[0x277CD9FF0] animationTimingFunction];
  [MEMORY[0x277CD9FF0] animationDuration];
  *(this + 2) = v6;
  *(this + 3) = 0;
  *(this + 32) = [MEMORY[0x277CD9FF0] disableActions];
  *(this + 33) = a3;
  v7 = [MEMORY[0x277CD9FF0] completionBlock];
  v8 = [v7 copy];
  v9 = *(this + 3);
  *(this + 3) = v8;

  if (a2)
  {
    [MEMORY[0x277CD9FF0] setDisableActions:1];
  }

  return this;
}

void GPUTools::AutoCATransaction::~AutoCATransaction(GPUTools::AutoCATransaction *this)
{
  if (*(this + 33) == 1)
  {
    [MEMORY[0x277CD9FF0] flush];
  }

  v2 = MEMORY[0x277CD9FF0];
  v3 = *(this + 1);
  [v2 setAnimationTimingFunction:v3];

  [MEMORY[0x277CD9FF0] setAnimationDuration:*(this + 2)];
  [MEMORY[0x277CD9FF0] setCompletionBlock:*(this + 3)];
  [MEMORY[0x277CD9FF0] setDisableActions:*(this + 32)];
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>>>::__emplace_unique_key_args<unsigned long,unsigned long,std::vector<std::pair<unsigned int,unsigned int>>&>(void *a1, unint64_t *a2)
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
    std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>>>::__construct_node_hash<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>&>();
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

void sub_24D71A180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D71A244(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<unsigned int,unsigned int>>::__init_with_size[abi:ne200100]<std::pair<unsigned int,unsigned int>*,std::pair<unsigned int,unsigned int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24D71A2B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<OffsetPair>>>>::__deallocate_node(a1, *(a1 + 16));
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,EncoderInfo>(void *a1, unint64_t *a2)
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

void std::__tree<std::__value_type<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>,std::__map_value_compare<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>,std::less<objc_object  {objcproto9MTLBuffer}*>,true>,std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}><std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>,std::__map_value_compare<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>,std::less<objc_object  {objcproto9MTLBuffer}*>,true>,std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}><std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>,std::__map_value_compare<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>,std::less<objc_object  {objcproto9MTLBuffer}*>,true>,std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}><std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 40);
    std::vector<DYMTLReplayerIAB::Usage>::__destroy_vector::operator()[abi:ne200100](&v4);
    operator delete(a2);
  }
}

void std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::destroy(a1, a2[1]);
    free(a2[6]);

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

void *std::__tree<std::__value_type<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>,std::__map_value_compare<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>,std::less<objc_object  {objcproto9MTLBuffer}*>,true>,std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}><std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>>::__emplace_unique_key_args<objc_object  {objcproto9MTLBuffer}*,std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto9MTLBuffer} const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

uint64_t std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>::__emplace_back_slow_path<MTLArgument * {__strong}>(uint64_t *a1, uint64_t a2)
{
  v3 = 0xAAAAAAAAAAAAAAALL;
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 - *a1;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
  if (v7 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - v4) >> 3) > v7)
  {
    v7 = 0x5555555555555556 * ((a1[2] - v4) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - v4) >> 3) < 0x555555555555555)
  {
    v3 = v7;
  }

  v19 = a1;
  if (v3)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<DYMTLReplayerIAB::Usage>>(a1, v3);
  }

  v9 = 8 * (v6 >> 3);
  v16 = 0;
  v17 = v9;
  *(&v18 + 1) = 0;
  *v9 = *a2;
  v10 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v9 + 8) = v10;
  *&v18 = v9 + 24;
  v11 = v9 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>,MTLArgument * {__strong}*>(a1, v4, v5, v9 - v6);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<DYMTLReplayerIAB::Usage>::~__split_buffer(&v16);
  return v15;
}

void sub_24D71A984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<DYMTLReplayerIAB::Usage>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>,MTLArgument * {__strong}*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      v5 = *(v4 + 8);
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(a4 + 8) = v5;
      v4 += 24;
      a4 += 24;
    }

    while (v4 != a3);
    v10 = a4;
  }

  v8 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<DYMTLReplayerIAB::Usage>,DYMTLReplayerIAB::Usage*,DYMTLReplayerIAB::Usage*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>,MTLArgument * {__strong}*>>::~__exception_guard_exceptions[abi:ne200100](v7);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>,MTLArgument * {__strong}*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<DYMTLReplayerIAB::Usage>,std::reverse_iterator<DYMTLReplayerIAB::Usage*>,std::reverse_iterator<DYMTLReplayerIAB::Usage*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void sub_24D71ACC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,unsigned long long &>(void *a1, unint64_t *a2)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,GPUTools::MTL::Utils::DYMTLRenderPassDescriptor>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,GPUTools::MTL::Utils::DYMTLRenderPassDescriptor>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,GPUTools::MTL::Utils::DYMTLRenderPassDescriptor>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,GPUTools::MTL::Utils::DYMTLRenderPassDescriptor>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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
    std::__hash_table<std::__hash_value_type<unsigned long long,GPUTools::MTL::Utils::DYMTLRenderPassDescriptor>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,GPUTools::MTL::Utils::DYMTLRenderPassDescriptor>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,GPUTools::MTL::Utils::DYMTLRenderPassDescriptor>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,GPUTools::MTL::Utils::DYMTLRenderPassDescriptor>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>();
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

void sub_24D71B11C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D71B1C0(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__14pairIKyN8GPUTools3MTL5Utils25DYMTLRenderPassDescriptorEEC2B8ne200100IJRS1_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSA_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSJ_IJXspT2_EEEE(uint64_t a1, void **a2)
{
  *a1 = **a2;
  bzero((a1 + 8), 0x640uLL);
  for (i = 0; i != 1152; i += 144)
  {
    v4 = a1 + i;
    *(v4 + 72) = 0uLL;
    *(v4 + 56) = 0uLL;
    *(v4 + 40) = 0uLL;
    *(v4 + 24) = 0uLL;
    *(v4 + 88) = 0;
    *(v4 + 96) = 1;
    *(v4 + 104) = 0uLL;
    *(v4 + 120) = 0uLL;
    *(v4 + 136) = 0x3FF0000000000000;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0;
  }

  *(a1 + 1240) = 0;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1248) = 1;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0x3FF0000000000000;
  *(a1 + 1384) = 0;
  *(a1 + 1304) = 0u;
  *(a1 + 1320) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1392) = 1;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 0x3FF0000000000000;
  *(a1 + 1448) = 0u;
  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CommandBufferInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CommandBufferInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CommandBufferInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CommandBufferInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,CommandBufferInfo>(void *a1, unint64_t *a2)
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

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long &>(void *a1, unint64_t *a2)
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

void std::vector<unsigned long long>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v10);
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

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_24D71B8EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v2);
  }

  std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

unint64_t *std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t *__src@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - __src);
  if (v8 <= 0)
  {
    v16 = *a5;
  }

  else
  {
    v9 = __src;
    __src = *a5;
    if (a2)
    {
      if (v8 >= (64 - a2))
      {
        v10 = 64 - a2;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2);
      v12 = v10 + *(a5 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a5 = __src;
      *(a5 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a5;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a5 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a5 + 8) = v15;
    }
  }

  *a6 = v16;
  *(a6 + 8) = *(a5 + 8);
  return __src;
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

BOOL ShaderDebugger::MmapFile::open(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (stat(v4, &v9) || (v9.st_mode & 0xF000) != 0x8000)
  {
    return 0;
  }

  *(a1 + 32) = v9.st_size;
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = open(v5, 0, 0);
  *(a1 + 24) = v6;
  v7 = mmap(0, *(a1 + 32), 1, 2, v6, 0);
  *(a1 + 40) = v7;
  *(a1 + 48) = v7;
  return *(a1 + 24) != -1;
}

uint64_t ShaderDebugger::MmapFile::close(uint64_t this)
{
  if (*(this + 24) != -1)
  {
    v1 = this;
    munmap(*(this + 40), *(this + 32));
    this = close(*(v1 + 24));
    *(v1 + 24) = -1;
  }

  return this;
}

uint64_t ShaderDebugger::TraceBufferVersionedHeader::TraceBufferVersionedHeader(uint64_t result, uint64_t a2, int a3)
{
  *result = &unk_2860B2B18;
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

uint64_t ShaderDebugger::VertexTraceBufferVersionedHeader::getHeaderSize(ShaderDebugger::VertexTraceBufferVersionedHeader *this)
{
  v1 = *(this + 4);
  if (v1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_24D740DB8[v1] + 4 * *(*(this + 1) + qword_24D740DA0[v1]);
  }
}

uint64_t ShaderDebugger::PostTessellationVertexTraceBufferVersionedHeader::getHeaderSize(ShaderDebugger::PostTessellationVertexTraceBufferVersionedHeader *this)
{
  v1 = *(this + 4);
  if (v1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_24D740DB8[v1] + 4 * *(*(this + 1) + qword_24D740DA0[v1]);
  }
}

void ShaderDebugger::MmapFile::~MmapFile(void **this)
{
  ShaderDebugger::MmapFile::close(this);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_24D71C28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  free(a11);

  _Unwind_Resume(a1);
}

void sub_24D71C438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  free(a11);

  _Unwind_Resume(a1);
}

DYMTLComputeCommandEncoderStateTracker *DYMTLNewStatefulComputeCommandEncoder(void *a1, uint64_t a2)
{
  v3 = [a1 computeCommandEncoderWithDispatchType:a2];
  v4 = [[DYMTLComputeCommandEncoderStateTracker alloc] initWithEncoder:v3 dispatchType:a2];

  return v4;
}

void DYMTLBoundBufferInfo::DYMTLBoundBufferInfo(DYMTLBoundBufferInfo *this, const void *a2, size_t size)
{
  this->m_buffer = 0;
  this->m_bytes = 0;
  this->m_offsetOrLength = size;
  if (a2)
  {
    if (size)
    {
      v6 = malloc_type_malloc(size, 0xC1446B52uLL);
      this->m_bytes = v6;
      memcpy(v6, a2, size);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<DYMTLUsedResourceInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_24D71FE88(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

_OWORD *std::vector<MTLViewport>::assign(void *a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 4) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0x555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 4);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x2AAAAAAAAAAAAAALL)
      {
        v9 = 0x555555555555555;
      }

      else
      {
        v9 = v8;
      }

      std::vector<MTLViewport>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - result) >> 4);
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - result) >> 4);
  }

  for (; v11; --v11)
  {
    v12 = *a3;
    v13 = a3[2];
    result[1] = a3[1];
    result[2] = v13;
    *result = v12;
    result += 3;
  }

  if (a2 <= v10)
  {
    a1[1] = *a1 + 48 * a2;
  }

  else
  {
    v14 = a1[1];
    v15 = &v14[3 * (a2 - v10)];
    v16 = 48 * a2 - 48 * v10;
    do
    {
      v17 = *a3;
      v18 = a3[2];
      v14[1] = a3[1];
      v14[2] = v18;
      *v14 = v17;
      v14 += 3;
      v16 -= 48;
    }

    while (v16);
    a1[1] = v15;
  }

  return result;
}

_OWORD *std::vector<MTLScissorRect>::assign(void *a1, unint64_t a2, _OWORD *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 5)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 59))
    {
      v7 = v5 >> 4;
      if (v5 >> 4 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFE0)
      {
        v8 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<MTLScissorRect>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
  }

  v9 = (a1[1] - result) >> 5;
  if (v9 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = (a1[1] - result) >> 5;
  }

  for (; v10; --v10)
  {
    v11 = a3[1];
    *result = *a3;
    result[1] = v11;
    result += 2;
  }

  if (a2 <= v9)
  {
    a1[1] = *a1 + 32 * a2;
  }

  else
  {
    v12 = a1[1];
    v13 = &v12[2 * (a2 - v9)];
    v14 = 32 * a2 - 32 * v9;
    do
    {
      v15 = a3[1];
      *v12 = *a3;
      v12[1] = v15;
      v12 += 2;
      v14 -= 32;
    }

    while (v14);
    a1[1] = v13;
  }

  return result;
}

void sub_24D720610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  free(a11);

  _Unwind_Resume(a1);
}

void sub_24D7207BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  free(a11);

  _Unwind_Resume(a1);
}

void sub_24D720948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  free(a11);

  _Unwind_Resume(a1);
}

void sub_24D720AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  free(a11);

  _Unwind_Resume(a1);
}

void sub_24D720CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  free(a11);

  _Unwind_Resume(a1);
}

void sub_24D720E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  free(a11);

  _Unwind_Resume(a1);
}

void std::vector<objc_object  {objcproto7MTLHeap}*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>(a1, v10);
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
}

void enumerateObjects(void *a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  v5 = 0;
  while ((*a1 == 0) == (a1[1] == 0))
  {
    if (v4 > 0x1D)
    {
      goto LABEL_8;
    }

LABEL_7:
    ++v4;
    a1 += 3;
  }

  v3[2](v3, a1, v4, &v5);
  if (v4 <= 0x1D && (v5 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
}

{
  v3 = a2;
  v4 = 0;
  v5 = 0;
  while (!*a1)
  {
    if (v4 > 0xE)
    {
      goto LABEL_8;
    }

LABEL_7:
    ++v4;
    a1 += 2;
  }

  v3[2](v3, a1, v4, &v5);
  if (v4 <= 0xE && (v5 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
}

void enumerateObjects(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  v6 = 0;
  while (1)
  {
    v5 = *(a1 + 8 * v4);
    if (v5)
    {
      break;
    }

    if (v4 > 0x7E)
    {
      goto LABEL_8;
    }

LABEL_7:
    ++v4;
  }

  v3[2](v3, v5, v4, &v6);
  if (v4 <= 0x7E && (v6 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
}

DYMTLRenderCommandEncoderStateTracker *DYMTLNewStatefulRenderCommandEncoder(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 renderCommandEncoderWithDescriptor:v3];
  v5 = [[DYMTLRenderCommandEncoderStateTracker alloc] initWithEncoder:v4 descriptor:v3];

  return v5;
}

{
  v3 = a1;
  v4 = a2;
  v5 = [[DYMTLRenderCommandEncoderStateTracker alloc] initWithDevice:v3 descriptor:v4];

  return v5;
}

DYMTLRenderCommandEncoderStateTracker *DYMTLNewStatefulRenderCommandEncoder(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 renderCommandEncoder];
    v4 = DYMTLGetAssociatedObject(v2, 0);
    v5 = [[DYMTLRenderCommandEncoderStateTracker alloc] initWithEncoder:v3 descriptor:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t std::vector<MTLViewport>::__init_with_size[abi:ne200100]<MTLViewport*,MTLViewport*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLViewport>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24D722CB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MTLViewport>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>(a1, a2);
  }

  std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
}

void std::vector<MTLScissorRect>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLScissorRect>>(a1, a2);
  }

  std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLScissorRect>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<MTLViewport>::__assign_with_size[abi:ne200100]<MTLViewport const*,MTLViewport const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 4) < a4)
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

    if (a4 <= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x2AAAAAAAAAAAAAALL)
      {
        v11 = 0x555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<MTLViewport>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 4) >= a4)
  {
    v20 = a3 - __src;
    if (v20)
    {
      result = memmove(*result, __src, v20);
    }

    v19 = &v8[v20];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        v18 = *(v14 + 2);
        *(v16 + 1) = *(v14 + 1);
        *(v16 + 2) = v18;
        *v16 = v17;
        v16 += 48;
        v14 += 48;
        v15 += 48;
      }

      while (v14 != a3);
    }

    v19 = v15;
  }

  v6[1] = v19;
  return result;
}

void *std::vector<MTLScissorRect>::__assign_with_size[abi:ne200100]<MTLScissorRect const*,MTLScissorRect const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
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

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTLScissorRect>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v19 = a3 - __src;
    if (v19)
    {
      result = memmove(*result, __src, v19);
    }

    v18 = &v8[v19];
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
        v17 = *(v13 + 1);
        v13 += 32;
        *v15 = v16;
        *(v15 + 1) = v17;
        v15 += 32;
        v14 += 32;
      }

      while (v13 != a3);
    }

    v18 = v14;
  }

  v6[1] = v18;
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,DYMTLStoreInfo>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,DYMTLStoreInfo>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,DYMTLStoreInfo>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,DYMTLStoreInfo>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

uint64_t GPUTools::MTL::Utils::DYMTLTranslateGPUAddressToBuffer(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2 != *a1)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v2 = *a1;
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[3 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 3;
      v3 += ~(v3 >> 1);
      if (v7 > a2)
      {
        v3 = v4;
      }

      else
      {
        v2 = v6;
      }
    }

    while (v3);
  }

  if (v2 == *a1 || *(v2 - 2) + *(v2 - 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 - 1);
  }
}

uint64_t *GPUTools::MTL::Utils::DYMTLCreateIndirectCommandEncoder@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(a2 + 8) = v2;
  *(a2 + 104) = -1;
  *(a2 + 88) = v2;
  *(a2 + 72) = v2;
  *(a2 + 56) = v2;
  *(a2 + 40) = v2;
  *(a2 + 24) = v2;
  *a2 = 0;
  if (*(result + 9))
  {
    v3 = 8;
  }

  else
  {
    *(a2 + 8) = 8;
    v3 = 16;
  }

  if ((result[1] & 1) == 0)
  {
    v4 = result[2];
    v5 = result[3];
    *(a2 + 16) = v3;
    *(a2 + 24) = v3 + 8 * v4;
    v6 = v4 + v5;
    v7 = v3 + 8 * v6;
    v8 = result[5];
    v9 = v6 + result[4];
    *(a2 + 32) = v7;
    *(a2 + 40) = v3 + 8 * v9;
    v10 = v9 + v8;
    *(a2 + 48) = v3 + 8 * v10;
    v3 += 8 * (v10 + result[6]);
  }

  v11 = result[7];
  v12 = result[8];
  *(a2 + 56) = v3;
  *(a2 + 64) = v3 + 8 * v11;
  v13 = v11 + v12;
  v14 = v3 + 8 * (v11 + v12);
  *(a2 + 72) = v14;
  v15 = *result;
  if (*(result + 11) == 1)
  {
    if ((v15 & 0xF) != 0)
    {
      v16 = 2;
    }

    else
    {
      if ((v15 & 0x60) == 0)
      {
        goto LABEL_12;
      }

      v16 = 6;
    }

    v17 = result[v16];
    v14 = v3 + 8 * (v13 + v17);
    *(a2 + 80) = v17;
  }

LABEL_12:
  if (*(result + 12))
  {
    v18 = v14 + 8;
  }

  else
  {
    v18 = v14;
  }

  *(a2 + 88) = v14;
  *(a2 + 96) = v18;
  v19 = (v15 << 63 >> 63) & 0x28;
  if ((v15 & 2) != 0)
  {
    v19 = 56;
  }

  v20 = 72;
  if ((v15 & 4) != 0)
  {
    v19 = 72;
  }

  if ((v15 & 8) != 0)
  {
    v19 = 80;
  }

  if (v19 <= 0x48)
  {
    v21 = 72;
  }

  else
  {
    v21 = v19;
  }

  if ((v15 & 0x80) != 0)
  {
    v19 = v21;
  }

  if (v19 > 0x48)
  {
    v20 = v19;
  }

  if ((v15 & 0x100) != 0)
  {
    v19 = v20;
  }

  v22 = (v15 & 0x60) == 0;
  v23 = 120;
  if (v22)
  {
    v23 = v19;
  }

  *(a2 + 104) = v18 + v23;
  return result;
}

__CFData *GPUTools::MTL::Utils::DYMTLConvertIndirectCommandBufferDataToFBufStream(uint64_t a1, void *a2, char a3, unint64_t a4, uint64_t a5, void *a6, __int16 a7)
{
  v184 = *MEMORY[0x277D85DE8];
  v145 = a2;
  v146 = a6;
  v13 = *a1;
  if (GPUTools::MTL::Utils::IsIndirectCommandBufferRender())
  {
    v150 = v145;
    v14 = v146;
    v144 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v15 = GPUTools::FB::Stream::Stream(v179, v144);
    GPUTools::FB::Stream::Open(v15, @"ConvertIndirectCommandBufferDataToFBufStreamRender");
    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    v172 = 0u;
    GPUTools::MTL::Utils::DYMTLCreateIndirectCommandEncoder(a1, &v172);
    v180[0] = 0;
    v180[1] = 0;
    v181 = 0;
    if ((a7 & 0x8004) == 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = 32772;
    }

    v152 = v16;
    v148 = a4 + a5;
    if (a4 < a4 + a5)
    {
      v17 = *(&v178 + 1);
      v147 = v178;
      v18 = *(&v176 + 1) + a4 * *(&v178 + 1);
      v166 = v173 + a4 * *(&v178 + 1);
      v164 = *(&v173 + 1) + a4 * *(&v178 + 1);
      v162 = v175 + a4 * *(&v178 + 1);
      v160 = v174 + a4 * *(&v178 + 1);
      v158 = *(&v174 + 1) + a4 * *(&v178 + 1);
      v168 = *(&v175 + 1) + a4 * *(&v178 + 1);
      v19 = v172;
      do
      {
        v24 = [v150 bytes];
        v25 = v24 + a4 * v17;
        v26 = *(v25 + v19);
        if (v26)
        {
          if ((*(a1 + 9) & 1) == 0)
          {
            [v14 renderPipelineIdForUniqueIdentifier:*(v25 + *(&v19 + 1))];
            GPUTools::FB::Encode(v180, 4294951017, 4, "Ct", v27, v28, v29, v30, a3);
            GPUTools::FB::Stream::Write(v179, v180);
          }

          v154 = v24 + a4 * v17;
          if ((*(a1 + 8) & 1) == 0)
          {
            v156 = a4;
            if (*(a1 + 16))
            {
              v31 = 0;
              v32 = v24 + v18;
              do
              {
                [v14 bufferIdAndOffsetForGPUVirtualAddress:*(v24 + v166 + 8 * v31)];
                if (*(a1 + 11) != 1 || *(v32 + 8 * v31) == -1)
                {
                  GPUTools::FB::Encode(v180, 4294951018, 4, "Ctulul", v33, v34, v35, v36, a3);
                }

                else
                {
                  v129 = *(v32 + 8 * v31);
                  GPUTools::FB::Encode(v180, 4294952021, 4, "Ctulul", v33, v34, v35, v36, a3);
                }

                GPUTools::FB::Stream::Write(v179, v180);
                ++v31;
              }

              while (v31 < *(a1 + 16));
            }

            if (*(a1 + 24))
            {
              v37 = 0;
              do
              {
                [v14 bufferIdAndOffsetForGPUVirtualAddress:*(v24 + v164 + 8 * v37)];
                GPUTools::FB::Encode(v180, 4294951033, 4, "Ctulul", v38, v39, v40, v41, a3);
                GPUTools::FB::Stream::Write(v179, v180);
                ++v37;
              }

              while (v37 < *(a1 + 24));
            }

            a4 = v156;
            if (*(a1 + 48))
            {
              v42 = 0;
              do
              {
                [v14 bufferIdAndOffsetForGPUVirtualAddress:*(v24 + v162 + 8 * v42)];
                GPUTools::FB::Encode(v180, 4294951154, 4, "Ctulul", v43, v44, v45, v46, a3);
                GPUTools::FB::Stream::Write(v179, v180);
                ++v42;
              }

              while (v42 < *(a1 + 48));
            }

            if (*(a1 + 32))
            {
              v47 = 0;
              do
              {
                [v14 bufferIdAndOffsetForGPUVirtualAddress:*(v24 + v160 + 8 * v47)];
                GPUTools::FB::Encode(v180, 4294951905, 4, "Ctulul", v48, v49, v50, v51, a3);
                GPUTools::FB::Stream::Write(v179, v180);
                ++v47;
              }

              while (v47 < *(a1 + 32));
            }

            if (*(a1 + 40))
            {
              v52 = 0;
              do
              {
                [v14 bufferIdAndOffsetForGPUVirtualAddress:*(v24 + v158 + 8 * v52)];
                GPUTools::FB::Encode(v180, 4294951895, 4, "Ctulul", v53, v54, v55, v56, a3);
                GPUTools::FB::Stream::Write(v179, v180);
                ++v52;
              }

              while (v52 < *(a1 + 40));
            }
          }

          if (*(a1 + 56))
          {
            v57 = 0;
            v58 = v24 + v168;
            do
            {
              v122 = *(v58 + 8 * v57);
              GPUTools::FB::Encode(v180, 4294951915, 0, "Culul", v20, v21, v22, v23, a3);
              GPUTools::FB::Stream::Write(v179, v180);
              ++v57;
            }

            while (v57 < *(a1 + 56));
          }

          if (v26 > 7)
          {
            switch(v26)
            {
              case 8:
                [v14 bufferIdAndOffsetForGPUVirtualAddress:*(v154 + v147)];
                v132 = *(v154 + v147 + 8);
                GPUTools::FB::Encode(v180, 4294951148, v152, "Ctulul", v63, v64, v65, v66, a3);
                GPUTools::FB::Stream::Write(v179, v180);
                v125 = *(v154 + v147 + 16);
                GPUTools::FB::Encode(v180, 4294951164, v152, "Cf", v67, v68, v69, v70, a3);
                GPUTools::FB::Stream::Write(v179, v180);
                [v14 bufferIdAndOffsetForGPUVirtualAddress:*(v154 + v147 + 48)];
                [v14 bufferIdAndOffsetForGPUVirtualAddress:*(v154 + v147 + 56)];
                v140 = *(v154 + v147 + 64);
                v142 = *(v154 + v147 + 72);
                v133 = *(v154 + v147 + 40);
                v126 = *(v154 + v147 + 24);
                GPUTools::FB::Encode(v180, 4294951151, v152, "Cululultultululul", v71, v72, v73, v74, a3);
                GPUTools::FB::Stream::Write(v179, v180);
                break;
              case 128:
                GPUTools::FB::Encode(v180, 4294951880, v152, "C@3ul@3ul@3ul", v20, v21, v22, v23, a3);
                GPUTools::FB::Stream::Write(v179, v180);
                break;
              case 256:
                GPUTools::FB::Encode(v180, 4294951882, v152, "C@3ul@3ul@3ul", v20, v21, v22, v23, a3);
                GPUTools::FB::Stream::Write(v179, v180);
                break;
            }
          }

          else
          {
            switch(v26)
            {
              case 1:
                v136 = *(v154 + v147 + 32);
                v131 = *(v154 + v147 + 16);
                v124 = *(v154 + v147);
                GPUTools::FB::Encode(v180, 4294951078, v152, "Cululululul", v20, v21, v22, v23, a3);
                GPUTools::FB::Stream::Write(v179, v180);
                break;
              case 2:
                [v14 bufferIdAndOffsetForGPUVirtualAddress:*(v154 + v147 + 24)];
                v141 = *(v154 + v147 + 48);
                v138 = *(v154 + v147 + 32);
                v134 = *(v154 + v147 + 16);
                v127 = *(v154 + v147);
                GPUTools::FB::Encode(v180, 4294951079, v152, "Cululultulullul", v75, v76, v77, v78, a3);
                GPUTools::FB::Stream::Write(v179, v180);
                break;
              case 4:
                [v14 bufferIdAndOffsetForGPUVirtualAddress:*(v154 + v147)];
                [v14 bufferIdAndOffsetForGPUVirtualAddress:*(v154 + v147 + 48)];
                v143 = *(v154 + v147 + 8);
                v139 = *(v154 + v147 + 64);
                v137 = *(v154 + v147 + 56);
                v130 = *(v154 + v147 + 40);
                v123 = *(v154 + v147 + 24);
                GPUTools::FB::Encode(v180, 4294951344, v152, "Cululultululultulul", v59, v60, v61, v62, a3);
                GPUTools::FB::Stream::Write(v179, v180);
                break;
            }
          }
        }

        else
        {
          GPUTools::FB::Encode(v180, 4294957079, v152 | 2, "C", v20, v21, v22, v23, a3);
          GPUTools::FB::Stream::Write(v179, v180);
        }

        ++a4;
        v18 += v17;
        v166 += v17;
        v164 += v17;
        v162 += v17;
        v160 += v17;
        v158 += v17;
        v168 += v17;
      }

      while (a4 != v148);
    }

    GPUTools::FB::Stream::Flush(v179);
    GPUTools::FB::Stream::Close(v179);
    v119 = v180[0];
    if (!v180[0])
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  v79 = *a1;
  if (GPUTools::MTL::Utils::IsIndirectCommandBufferCompute())
  {
    v80 = v145;
    v169 = v146;
    v144 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v81 = GPUTools::FB::Stream::Stream(v179, v144);
    GPUTools::FB::Stream::Open(v81, @"ConvertIndirectCommandBufferDataToFBufStreamCompute");
    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    v172 = 0u;
    GPUTools::MTL::Utils::DYMTLCreateIndirectCommandEncoder(a1, &v172);
    v170[0] = 0;
    v170[1] = 0;
    v171 = 0;
    v82 = a4 + a5;
    if ((a7 & 0x8004) == 4)
    {
      v83 = 4;
    }

    else
    {
      v83 = 32772;
    }

    v159 = v82;
    v153 = v80;
    if (a4 < v82)
    {
      v84 = *(&v178 + 1);
      v165 = *(&v176 + 1) + a4 * *(&v178 + 1);
      v163 = v175 + a4 * *(&v178 + 1);
      v167 = v176 + a4 * *(&v178 + 1);
      v85 = v178 + a4 * *(&v178 + 1);
      v155 = *(&v178 + 1);
      v86 = v172;
      v149 = v178;
      v151 = v83;
      do
      {
        v87 = v80;
        v92 = [v80 bytes];
        v157 = a4;
        v161 = v92 + a4 * v84;
        v93 = *(v161 + v86);
        if (v93)
        {
          if ((*(a1 + 9) & 1) == 0)
          {
            [v169 computePipelineIdForUniqueIdentifier:*(v161 + *(&v86 + 1))];
            GPUTools::FB::Encode(v170, 4294950959, 4, "Ct", v94, v95, v96, v97, a3);
            GPUTools::FB::Stream::Write(v179, v170);
          }

          if ((*(a1 + 8) & 1) == 0 && *(a1 + 48))
          {
            v98 = 0;
            v99 = v92 + v165;
            do
            {
              [v169 bufferIdAndOffsetForGPUVirtualAddress:*(v92 + v163 + 8 * v98)];
              if (*(a1 + 11) != 1 || *(v99 + 8 * v98) == -1)
              {
                GPUTools::FB::Encode(v170, 4294950960, 4, "Ctulul", v100, v101, v102, v103, a3);
              }

              else
              {
                v135 = *(v99 + 8 * v98);
                GPUTools::FB::Encode(v170, 4294952012, 4, "Ctulul", v100, v101, v102, v103, a3);
              }

              GPUTools::FB::Stream::Write(v179, v170);
              ++v98;
            }

            while (v98 < *(a1 + 48));
          }

          v83 = v151;
          if (*(a1 + 64))
          {
            v104 = 0;
            do
            {
              v128 = *(v92 + v167 + 8 * v104);
              GPUTools::FB::Encode(v170, 4294950968, 0, "Culul", v88, v89, v90, v91, a3);
              GPUTools::FB::Stream::Write(v179, v170);
              ++v104;
            }

            while (v104 < *(a1 + 64));
          }

          if (v93 == 32)
          {
            v113 = 0;
            v114 = v161 + v149;
            v80 = v153;
            do
            {
              v180[v113] = *(v92 + v85 + v113 * 8);
              ++v113;
            }

            while (v113 != 3);
            v182 = *(v114 + 24);
            v183 = *(v114 + 40);
            GPUTools::FB::Encode(v170, 4294951196, v151, "C@6ul", v88, v89, v90, v91, a3);
            v106 = v157;
            GPUTools::FB::Stream::Write(v179, v170);
            if (*(v114 + 64) == 1)
            {
              GPUTools::FB::Encode(v170, 4294951471, v151 | 2, "C", v115, v116, v117, v118, a3);
              GPUTools::FB::Stream::Write(v179, v170);
            }

            GPUTools::FB::Encode(v170, 4294950969, v151, "C@3ul@3ul", v115, v116, v117, v118, a3);
            v84 = v155;
            GPUTools::FB::Stream::Write(v179, v170);
          }

          else
          {
            v105 = v93 == 64;
            v106 = v157;
            v80 = v153;
            v84 = v155;
            if (v105)
            {
              v107 = 0;
              v108 = v161 + v149;
              do
              {
                v180[v107] = *(v92 + v85 + v107 * 8);
                ++v107;
              }

              while (v107 != 3);
              v182 = *(v108 + 24);
              v183 = *(v108 + 40);
              GPUTools::FB::Encode(v170, 4294951196, v151, "C@6ul", v88, v89, v90, v91, a3);
              GPUTools::FB::Stream::Write(v179, v170);
              GPUTools::FB::Encode(v170, 4294951218, v151, "C@3ul@3ul", v109, v110, v111, v112, a3);
              v84 = v155;
              GPUTools::FB::Stream::Write(v179, v170);
            }
          }
        }

        else
        {
          GPUTools::FB::Encode(v170, 4294957079, v83 | 2u, "C", v88, v89, v90, v91, a3);
          v106 = v157;
          GPUTools::FB::Stream::Write(v179, v170);
        }

        a4 = v106 + 1;
        v165 += v84;
        v163 += v84;
        v167 += v84;
        v85 += v84;
      }

      while (a4 != v159);
    }

    GPUTools::FB::Stream::Flush(v179);
    GPUTools::FB::Stream::Close(v179);
    v119 = v170[0];
    if (!v170[0])
    {
      goto LABEL_86;
    }

LABEL_85:
    free(v119);
LABEL_86:
    MEMORY[0x253031C40](v179);

    goto LABEL_88;
  }

  v144 = 0;
LABEL_88:

  v120 = *MEMORY[0x277D85DE8];

  return v144;
}

void sub_24D724318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, void *a38)
{
  MEMORY[0x253031C40](v39 - 216);

  _Unwind_Resume(a1);
}

void GPUTools::FB::Encode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = &a9;
  GPUTools::FB::VAListArgumentProvider::VAListArgumentProvider(v9, &a9);
  GPUTools::FB::Encode();
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(v9);
}

void sub_24D7244AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(va);
  _Unwind_Resume(a1);
}

uint64_t GPUTools::FB::Stream::Write(uint64_t a1, unsigned int **a2)
{
  for (i = (a1 + 56); atomic_exchange(i, 1u) == 1; i = (a1 + 56))
  {
      ;
    }
  }

  v4 = **a2;
  result = GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, (a1 + 56));
  return result;
}

uint64_t GPUTools::FB::Stream::Flush(GPUTools::FB::Stream *this)
{
  for (i = (this + 56); atomic_exchange(i, 1u) == 1; i = (this + 56))
  {
      ;
    }
  }

  v3 = *(this + 5);
  result = (*(*(this + 5) + 16))();
  *(this + 2) = *(this + 1) + 8;
  *(this + 60) = 1;
  atomic_store(0, this + 14);
  return result;
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void ShaderDebugger::Metadata::MDSerializer::addReferencedSourceFile(uint64_t a1, void *a2, uint64_t a3)
{
  if (!std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 24), a2))
  {
    v6 = *(a3 + 23);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a3 + 8);
    }

    if (v6)
    {
      v11[0] = a2;
      v7 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 24), a2);
      std::string::operator=((v7 + 5), a3);
    }

    else
    {
      v11[0] = 0;
      v11[1] = 0;
      v12 = 0;
      v13 = -1;
      v15 = 0;
      v16 = 0;
      __n = 0;
      ShaderDebugger::MmapFile::open(v11, a2);
      if (v13 != -1)
      {
        memset(&__p, 0, sizeof(__p));
        if (__n)
        {
          std::string::resize(&__p, __n, 0);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          memcpy(p_p, v15, __n);
        }

        v17 = a2;
        v9 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 24), a2);
        std::string::operator=((v9 + 5), &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      ShaderDebugger::MmapFile::close(v11);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(v11[0]);
      }
    }
  }
}

void sub_24D724884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ShaderDebugger::Metadata::MDSerializer::serializeToBuffer(void *a1, void *a2)
{
  v4 = *a2;
  a2[1] = *a2;
  v67 = 4;
  v5 = a2[2] - v4;
  if (v5 <= 7)
  {
    std::vector<unsigned char>::reserve(a2, (2 * v5) | 1);
    v4 = a2[1];
  }

  for (i = 0; i != 8; ++i)
  {
    v7 = a2[2];
    if (v4 >= v7)
    {
      v8 = *a2;
      v9 = &v4[-*a2];
      v10 = (v9 + 1);
      if ((v9 + 1) < 0)
      {
LABEL_108:
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
      }

      v11 = v7 - v8;
      if (2 * v11 > v10)
      {
        v10 = 2 * v11;
      }

      if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        operator new();
      }

      v13 = &v4[-*a2];
      *v9 = *(&v67 + i);
      v4 = v9 + 1;
      memcpy(0, v8, v13);
      *a2 = 0;
      a2[1] = v9 + 1;
      a2[2] = 0;
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v4++ = *(&v67 + i);
    }

    a2[1] = v4;
  }

  v14 = a2[2] - *a2;
  if (v14 < &v4[-*a2 + 8])
  {
    std::vector<unsigned char>::reserve(a2, (2 * v14) | 1);
    v4 = a2[1];
  }

  for (j = 64; j != 72; ++j)
  {
    v16 = a2[2];
    if (v4 >= v16)
    {
      v17 = *a2;
      v18 = &v4[-*a2];
      v19 = (v18 + 1);
      if ((v18 + 1) < 0)
      {
        goto LABEL_108;
      }

      v20 = v16 - v17;
      if (2 * v20 > v19)
      {
        v19 = 2 * v20;
      }

      if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v21 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        operator new();
      }

      v22 = &v4[-*a2];
      *v18 = *(a1 + j);
      v4 = v18 + 1;
      memcpy(0, v17, v22);
      *a2 = 0;
      a2[1] = v18 + 1;
      a2[2] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v4++ = *(a1 + j);
    }

    a2[1] = v4;
  }

  v23 = *a1;
  if (*a1 != a1 + 1)
  {
    do
    {
      v24 = v23[4];
      v66 = (v23[6] - v23[5]) >> 3;
      v67 = v24;
      v25 = a2[1];
      v26 = a2[2] - *a2;
      if (v26 < &v25[-*a2 + 8])
      {
        std::vector<unsigned char>::reserve(a2, (2 * v26) | 1);
        v25 = a2[1];
      }

      for (k = 0; k != 8; ++k)
      {
        v28 = a2[2];
        if (v25 >= v28)
        {
          v29 = *a2;
          v30 = &v25[-*a2];
          v31 = (v30 + 1);
          if ((v30 + 1) < 0)
          {
            goto LABEL_108;
          }

          v32 = v28 - v29;
          if (2 * v32 > v31)
          {
            v31 = 2 * v32;
          }

          if (v32 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v33 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            operator new();
          }

          v34 = &v25[-*a2];
          *v30 = *(&v67 + k);
          v25 = v30 + 1;
          memcpy(0, v29, v34);
          *a2 = 0;
          a2[1] = v30 + 1;
          a2[2] = 0;
          if (v29)
          {
            operator delete(v29);
          }
        }

        else
        {
          *v25++ = *(&v67 + k);
        }

        a2[1] = v25;
      }

      v35 = a2[2] - *a2;
      if (v35 < &v25[-*a2 + 8])
      {
        std::vector<unsigned char>::reserve(a2, (2 * v35) | 1);
        v25 = a2[1];
      }

      for (m = 0; m != 8; ++m)
      {
        v37 = a2[2];
        if (v25 >= v37)
        {
          v38 = *a2;
          v39 = &v25[-*a2];
          v40 = (v39 + 1);
          if ((v39 + 1) < 0)
          {
            goto LABEL_108;
          }

          v41 = v37 - v38;
          if (2 * v41 > v40)
          {
            v40 = 2 * v41;
          }

          if (v41 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v42 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v40;
          }

          if (v42)
          {
            operator new();
          }

          v43 = &v25[-*a2];
          *v39 = *(&v66 + m);
          v25 = v39 + 1;
          memcpy(0, v38, v43);
          *a2 = 0;
          a2[1] = v39 + 1;
          a2[2] = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v25++ = *(&v66 + m);
        }

        a2[1] = v25;
      }

      std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(a2, v25, v23[11], v23[12], v23[12] - v23[11]);
      v44 = v23[1];
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
          v45 = v23[2];
          v46 = *v45 == v23;
          v23 = v45;
        }

        while (!v46);
      }

      v23 = v45;
    }

    while (v45 != a1 + 1);
    v4 = a2[1];
  }

  v67 = -1;
  v47 = a2[2] - *a2;
  if (v47 < &v4[-*a2 + 8])
  {
    std::vector<unsigned char>::reserve(a2, (2 * v47) | 1);
    v4 = a2[1];
  }

  for (n = 0; n != 8; ++n)
  {
    v49 = a2[2];
    if (v4 >= v49)
    {
      v50 = *a2;
      v51 = &v4[-*a2];
      v52 = (v51 + 1);
      if ((v51 + 1) < 0)
      {
        goto LABEL_108;
      }

      v53 = v49 - v50;
      if (2 * v53 > v52)
      {
        v52 = 2 * v53;
      }

      if (v53 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v54 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v54 = v52;
      }

      if (v54)
      {
        operator new();
      }

      v55 = &v4[-*a2];
      *v51 = *(&v67 + n);
      v4 = v51 + 1;
      memcpy(0, v50, v55);
      *a2 = 0;
      a2[1] = v51 + 1;
      a2[2] = 0;
      if (v50)
      {
        operator delete(v50);
      }
    }

    else
    {
      *v4++ = *(&v67 + n);
    }

    a2[1] = v4;
  }

  v67 = a1[6];
  v56 = a2[2] - *a2;
  if (v56 < &v4[-*a2 + 8])
  {
    std::vector<unsigned char>::reserve(a2, (2 * v56) | 1);
    v4 = a2[1];
  }

  for (ii = 0; ii != 8; ++ii)
  {
    v58 = a2[2];
    if (v4 >= v58)
    {
      v59 = *a2;
      v60 = &v4[-*a2];
      v61 = (v60 + 1);
      if ((v60 + 1) < 0)
      {
        goto LABEL_108;
      }

      v62 = v58 - v59;
      if (2 * v62 > v61)
      {
        v61 = 2 * v62;
      }

      if (v62 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v63 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v63 = v61;
      }

      if (v63)
      {
        operator new();
      }

      v64 = &v4[-*a2];
      *v60 = *(&v67 + ii);
      v4 = v60 + 1;
      memcpy(0, v59, v64);
      *a2 = 0;
      a2[1] = v60 + 1;
      a2[2] = 0;
      if (v59)
      {
        operator delete(v59);
      }
    }

    else
    {
      *v4++ = *(&v67 + ii);
    }

    a2[1] = v4;
  }

  for (jj = a1[5]; jj; jj = *jj)
  {
    ShaderDebugger::Metadata::MDSerializer::write<std::string>(a1, a2, (jj + 2));
    ShaderDebugger::Metadata::MDSerializer::write<std::string>(a1, a2, (jj + 5));
  }
}

void ShaderDebugger::Metadata::MDSerializer::write<std::string>(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 8);
  }

  v20 = v4;
  v5 = a2[1];
  v6 = a2[2] - *a2;
  if (v6 < &v5[-*a2 + 8])
  {
    std::vector<unsigned char>::reserve(a2, (2 * v6) | 1);
    v5 = a2[1];
  }

  for (i = 0; i != 8; ++i)
  {
    v8 = a2[2];
    if (v5 >= v8)
    {
      v9 = *a2;
      v10 = &v5[-*a2];
      v11 = (v10 + 1);
      if ((v10 + 1) < 0)
      {
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
      }

      v12 = v8 - v9;
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        operator new();
      }

      v14 = &v5[-*a2];
      *v10 = *(&v20 + i);
      v5 = v10 + 1;
      memcpy(0, v9, v14);
      *a2 = 0;
      a2[1] = v10 + 1;
      a2[2] = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v5++ = *(&v20 + i);
    }

    a2[1] = v5;
  }

  v15 = *(a3 + 23);
  if (v15 >= 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *a3;
  }

  if (v15 >= 0)
  {
    v17 = *(a3 + 23);
  }

  else
  {
    v17 = *(a3 + 8);
  }

  ShaderDebugger::Metadata::MDSerializer::write(a1, a2, v16, v17);
}

uint64_t ShaderDebugger::Metadata::MDSerializer::reserveAndLinearizeMetadataId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  v4 = *(a2 + 8);
  v5 = *a2;
  if (*a2 != v4)
  {
    while (*v5 != a3)
    {
      if (++v5 == v4)
      {
        v5 = *(a2 + 8);
        break;
      }
    }
  }

  if (v4 != v5)
  {
    v6 = v5 - *a2;
    if (v6 != -8)
    {
      return v6 >> 3;
    }
  }

  std::vector<unsigned long long>::push_back[abi:ne200100](a2, &v9);
  v8 = 1;
  std::vector<BOOL>::push_back(a2 + 24, &v8);
  return ((*(a2 + 8) - *a2) >> 3) - 1;
}

uint64_t ShaderDebugger::Metadata::MDSerializer::getLinearMetadataId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *a2;
  if (*a2 != v3)
  {
    while (*v4 != a3)
    {
      if (++v4 == v3)
      {
        v4 = *(a2 + 8);
        break;
      }
    }
  }

  if (v3 == v4)
  {
    return -1;
  }

  else
  {
    return (v4 - *a2) >> 3;
  }
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

uint64_t ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  isMetadataIdReserved = ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(a1, a2, a3);
  v6 = *(a2 + 8);
  v7 = *a2;
  if (*a2 != v6)
  {
    while (*v7 != a3)
    {
      if (++v7 == v6)
      {
        v7 = *(a2 + 8);
        break;
      }
    }
  }

  if (v6 == v7)
  {
    v9 = -1;
    if (!isMetadataIdReserved)
    {
LABEL_8:
      std::vector<unsigned long long>::push_back[abi:ne200100](a2, &v12);
      v11 = 0;
      std::vector<BOOL>::push_back(a2 + 24, &v11);
      return ((*(a2 + 8) - *a2) >> 3) - 1;
    }
  }

  else
  {
    v8 = v7 - *a2;
    if (!((v8 == -8) | isMetadataIdReserved & 1))
    {
      return -1;
    }

    v9 = v8 >> 3;
    if (!isMetadataIdReserved)
    {
      goto LABEL_8;
    }
  }

  if (*(a2 + 32) <= v9)
  {
    std::vector<BOOL>::__throw_out_of_range[abi:ne200100]();
  }

  *(*(a2 + 24) + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v9);
  return v9;
}

uint64_t ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *a2;
  if (*a2 != v3)
  {
    while (*v4 != a3)
    {
      if (++v4 == v3)
      {
        v4 = *(a2 + 8);
        break;
      }
    }
  }

  if (v3 == v4)
  {
    return 0;
  }

  v5 = v4 - *a2;
  if (*(a2 + 32) <= (v5 >> 3))
  {
    std::vector<BOOL>::__throw_out_of_range[abi:ne200100]();
  }

  return (*(*(a2 + 24) + (((v5 >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v5 >> 3)) & 1;
}

unint64_t *ShaderDebugger::Metadata::MDSerializer::serializeThreadTracepoint(ShaderDebugger::Metadata::MDSerializer *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v48 = a3;
  v46 = 5;
  v49 = &v46;
  v6 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(this, &v46);
  v7 = v6;
  v9 = (v6 + 5);
  v8 = v6[5];
  v10 = v6[6];
  v11 = v8;
  if (v8 != v10)
  {
    while (*v11 != a2)
    {
      v11 += 8;
      if (v11 == v10)
      {
        v11 = v6[6];
        break;
      }
    }
  }

  if (v10 != v11)
  {
    v12 = v11 - v8;
    if (v11 - v8 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(v6, (v6 + 5), a2))
    {
      return (v12 >> 3);
    }
  }

  v49 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(this, v9, a2);
  v14 = (v7 + 11);
  v13 = v7[11];
  v15 = v7[12];
  v16 = v7[13] - v13;
  if (v16 < &v15[-v13 + 8])
  {
    std::vector<unsigned char>::reserve(v7 + 11, (2 * v16) | 1);
    v15 = v7[12];
  }

  for (i = 0; i != 8; ++i)
  {
    v18 = v7[13];
    if (v15 >= v18)
    {
      v19 = *v14;
      v20 = (v15 - *v14);
      v21 = (v20 + 1);
      if ((v20 + 1) < 0)
      {
LABEL_59:
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
      }

      v22 = v18 - v19;
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        operator new();
      }

      v24 = v15 - *v14;
      *v20 = *(&v49 + i);
      v15 = v20 + 1;
      memcpy(0, v19, v24);
      v7[11] = 0;
      v7[12] = v20 + 1;
      v7[13] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v15++ = *(&v49 + i);
    }

    v7[12] = v15;
  }

  v25 = v7[11];
  v26 = v7[13] - v25;
  if (v26 < &v15[-v25 + 8])
  {
    std::vector<unsigned char>::reserve(v7 + 11, (2 * v26) | 1);
    v15 = v7[12];
  }

  for (j = 0; j != 8; ++j)
  {
    v28 = v7[13];
    if (v15 >= v28)
    {
      v29 = *v14;
      v30 = (v15 - *v14);
      v31 = (v30 + 1);
      if ((v30 + 1) < 0)
      {
        goto LABEL_59;
      }

      v32 = v28 - v29;
      if (2 * v32 > v31)
      {
        v31 = 2 * v32;
      }

      if (v32 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v33 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v31;
      }

      if (v33)
      {
        operator new();
      }

      v34 = v15 - *v14;
      *v30 = *(&v48 + j);
      v15 = v30 + 1;
      memcpy(0, v29, v34);
      v7[11] = 0;
      v7[12] = v30 + 1;
      v7[13] = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v15++ = *(&v48 + j);
    }

    v7[12] = v15;
  }

  v35 = v7[11];
  v36 = v7[13] - v35;
  if (v36 < &v15[-v35 + 8])
  {
    std::vector<unsigned char>::reserve(v7 + 11, (2 * v36) | 1);
    v15 = v7[12];
  }

  for (k = 0; k != 8; ++k)
  {
    v38 = v7[13];
    if (v15 >= v38)
    {
      v39 = *v14;
      v40 = (v15 - *v14);
      v41 = (v40 + 1);
      if ((v40 + 1) < 0)
      {
        goto LABEL_59;
      }

      v42 = v38 - v39;
      if (2 * v42 > v41)
      {
        v41 = 2 * v42;
      }

      if (v42 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v43 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v41;
      }

      if (v43)
      {
        operator new();
      }

      v44 = v15 - *v14;
      *v40 = *(&v47 + k);
      v15 = v40 + 1;
      memcpy(0, v39, v44);
      v7[11] = 0;
      v7[12] = v40 + 1;
      v7[13] = 0;
      if (v39)
      {
        operator delete(v39);
      }
    }

    else
    {
      *v15++ = *(&v47 + k);
    }

    v7[12] = v15;
  }

  return v49;
}

uint64_t ShaderDebugger::Metadata::MDSerializer::serializeLocation(uint64_t a1, uint64_t a2, std::string::value_type *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v85 = *MEMORY[0x277D85DE8];
  v81 = a6;
  v82 = a5;
  v78.__r_.__value_.__r.__words[0] = 1;
  __str.__r_.__value_.__r.__words[0] = &v78;
  v9 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, &v78);
  v10 = v9;
  v12 = (v9 + 5);
  v11 = v9[5];
  v13 = v9[6];
  v14 = v11;
  if (v11 != v13)
  {
    while (*v14 != a2)
    {
      v14 += 8;
      if (v14 == v13)
      {
        v14 = v9[6];
        break;
      }
    }
  }

  if (v13 != v14)
  {
    v15 = v14 - v11;
    if (v14 - v11 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(v9, (v9 + 5), a2))
    {
      v19 = v15 >> 3;
      goto LABEL_140;
    }
  }

  v80 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(a1, v12, a2);
  if (a3[23] < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a3, *(a3 + 1));
  }

  else
  {
    __str = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v78, *a4, *(a4 + 8));
  }

  else
  {
    v78 = *a4;
  }

  LODWORD(v16) = a3[23];
  if ((v16 & 0x80000000) == 0)
  {
    v77 = *a3;
    goto LABEL_17;
  }

  std::string::__init_copy_ctor_external(&v77, *a3, *(a3 + 1));
  LODWORD(v16) = a3[23];
  if ((v16 & 0x80000000) == 0)
  {
LABEL_17:
    v16 = v16;
    v17 = a3;
    if (!v16)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v17 = *a3;
  v16 = *(a3 + 1);
  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_18:
  v18 = 0;
  while (v17[v18] != 47)
  {
    if (v16 == ++v18)
    {
      goto LABEL_27;
    }
  }

  if (v16 == v18 || v18)
  {
LABEL_27:
    v20 = *(a4 + 23);
    if (v20 < 0)
    {
      if (*(a4 + 8) != 1)
      {
LABEL_36:
        if (v20 >= 0)
        {
          v22 = *(a4 + 23);
        }

        else
        {
          v22 = *(a4 + 8);
        }

        std::string::basic_string[abi:ne200100](&v76, v22 + 1);
        if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v76;
        }

        else
        {
          v23 = v76.__r_.__value_.__r.__words[0];
        }

        if (v22)
        {
          if (*(a4 + 23) >= 0)
          {
            v24 = a4;
          }

          else
          {
            v24 = *a4;
          }

          memmove(v23, v24, v22);
        }

        *(&v23->__r_.__value_.__l.__data_ + v22) = 47;
        v25 = a3[23];
        if (v25 >= 0)
        {
          v26 = a3;
        }

        else
        {
          v26 = *a3;
        }

        if (v25 >= 0)
        {
          v27 = a3[23];
        }

        else
        {
          v27 = *(a3 + 1);
        }

        v28 = std::string::append(&v76, v26, v27);
        v29 = v28->__r_.__value_.__r.__words[0];
        *&v83 = v28->__r_.__value_.__l.__size_;
        *(&v83 + 7) = *(&v28->__r_.__value_.__r.__words[1] + 7);
        v30 = HIBYTE(v28->__r_.__value_.__r.__words[2]);
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str.__r_.__value_.__r.__words[0] = v29;
        __str.__r_.__value_.__l.__size_ = v83;
        *(&__str.__r_.__value_.__r.__words[1] + 7) = *(&v83 + 7);
        *(&__str.__r_.__value_.__s + 23) = v30;
        if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v76.__r_.__value_.__l.__data_);
        }

        goto LABEL_57;
      }

      v21 = *a4;
    }

    else
    {
      v21 = a4;
      if (v20 != 1)
      {
        goto LABEL_36;
      }
    }

    if (*v21 == 47)
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, a3, &v76);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v76;
      goto LABEL_57;
    }

    goto LABEL_36;
  }

LABEL_57:
  p_str = &__str;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v33 = ~size;
  v34 = (p_str + size - 1);
  while (v33 != -1)
  {
    v35 = v34->__r_.__value_.__s.__data_[0];
    v34 = (v34 - 1);
    ++v33;
    if (v35 == 47)
    {
      if (v33)
      {
        v36 = -v33;
        std::string::basic_string(&v76, &__str, 0, -v33, &v83);
        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        v78 = v76;
        std::string::basic_string(&v76, &__str, v36, 0xFFFFFFFFFFFFFFFFLL, &v83);
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        v77 = v76;
      }

      break;
    }
  }

  v37 = SHIBYTE(v78.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v37 = v78.__r_.__value_.__l.__size_;
    if (!v78.__r_.__value_.__l.__size_)
    {
      goto LABEL_78;
    }

    v38 = v78.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&v78.__r_.__value_.__s + 23))
    {
      goto LABEL_78;
    }

    v38 = &v78;
  }

  if (v38->__r_.__value_.__s.__data_[v37 - 1] != 47)
  {
    std::string::append(&v78, "/");
  }

LABEL_78:
  v39 = v10[12];
  v40 = v10[11];
  v41 = v10[13] - v40;
  if (v41 < &v39[-v40 + 8])
  {
    std::vector<unsigned char>::reserve(v10 + 11, (2 * v41) | 1);
    v39 = v10[12];
  }

  for (i = 0; i != 8; ++i)
  {
    v43 = v10[13];
    if (v39 >= v43)
    {
      v44 = v10[11];
      v45 = (v39 - v44);
      v46 = v39 - v44 + 1;
      if (v46 < 0)
      {
LABEL_141:
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
      }

      v47 = v43 - v44;
      if (2 * v47 > v46)
      {
        v46 = 2 * v47;
      }

      if (v47 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v48 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v48 = v46;
      }

      if (v48)
      {
        operator new();
      }

      v49 = v39 - v44;
      *v45 = *(&v80 + i);
      v39 = v45 + 1;
      memcpy(0, v44, v49);
      v10[11] = 0;
      v10[12] = v45 + 1;
      v10[13] = 0;
      if (v44)
      {
        operator delete(v44);
      }
    }

    else
    {
      *v39++ = *(&v80 + i);
    }

    v10[12] = v39;
  }

  ShaderDebugger::Metadata::MDSerializer::write<std::string>(a1, v10 + 11, &v77);
  ShaderDebugger::Metadata::MDSerializer::write<std::string>(a1, v10 + 11, &v78);
  v50 = v10[12];
  v51 = v10[11];
  v52 = v10[13] - v51;
  if (v52 < &v50[-v51 + 8])
  {
    std::vector<unsigned char>::reserve(v10 + 11, (2 * v52) | 1);
    v50 = v10[12];
  }

  for (j = 0; j != 8; ++j)
  {
    v54 = v10[13];
    if (v50 >= v54)
    {
      v55 = v10[11];
      v56 = (v50 - v55);
      v57 = v50 - v55 + 1;
      if (v57 < 0)
      {
        goto LABEL_141;
      }

      v58 = v54 - v55;
      if (2 * v58 > v57)
      {
        v57 = 2 * v58;
      }

      if (v58 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v59 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v59 = v57;
      }

      if (v59)
      {
        operator new();
      }

      v60 = v50 - v55;
      *v56 = *(&v82 + j);
      v50 = v56 + 1;
      memcpy(0, v55, v60);
      v10[11] = 0;
      v10[12] = v56 + 1;
      v10[13] = 0;
      if (v55)
      {
        operator delete(v55);
      }
    }

    else
    {
      *v50++ = *(&v82 + j);
    }

    v10[12] = v50;
  }

  v61 = v10[11];
  v62 = v10[13] - v61;
  if (v62 < &v50[-v61 + 8])
  {
    std::vector<unsigned char>::reserve(v10 + 11, (2 * v62) | 1);
    v50 = v10[12];
  }

  for (k = 0; k != 8; ++k)
  {
    v64 = v10[13];
    if (v50 >= v64)
    {
      v65 = v10[11];
      v66 = (v50 - v65);
      v67 = v50 - v65 + 1;
      if (v67 < 0)
      {
        goto LABEL_141;
      }

      v68 = v64 - v65;
      if (2 * v68 > v67)
      {
        v67 = 2 * v68;
      }

      if (v68 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v69 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v69 = v67;
      }

      if (v69)
      {
        operator new();
      }

      v70 = v50 - v65;
      *v66 = *(&v81 + k);
      v50 = v66 + 1;
      memcpy(0, v65, v70);
      v10[11] = 0;
      v10[12] = v66 + 1;
      v10[13] = 0;
      if (v65)
      {
        operator delete(v65);
      }
    }

    else
    {
      *v50++ = *(&v81 + k);
    }

    v10[12] = v50;
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v78.__r_.__value_.__l.__data_, &v77.__r_.__value_.__l.__data_, &v76);
  v71 = HIBYTE(v76.__r_.__value_.__r.__words[2]);
  v72 = HIBYTE(v76.__r_.__value_.__r.__words[2]);
  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v71 = v76.__r_.__value_.__l.__size_;
  }

  if (v71)
  {
    v83 = 0uLL;
    v84 = 0;
    ShaderDebugger::Metadata::MDSerializer::addReferencedSourceFile(a1, &v76, &v83);
    if (SHIBYTE(v84) < 0)
    {
      operator delete(v83);
    }

    v72 = HIBYTE(v76.__r_.__value_.__r.__words[2]);
  }

  v19 = v80;
  if (v72 < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_140:
  v73 = *MEMORY[0x277D85DE8];
  return v19;
}

void sub_24D726020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ShaderDebugger::Metadata::MDSerializer::serializeSubprogram(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = 0;
  v41 = a4;
  v42 = &v40;
  v7 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, &v40);
  v8 = v7;
  v10 = (v7 + 5);
  v9 = v7[5];
  v11 = v7[6];
  v12 = v9;
  if (v9 != v11)
  {
    while (*v12 != a2)
    {
      v12 += 8;
      if (v12 == v11)
      {
        v12 = v7[6];
        break;
      }
    }
  }

  if (v11 != v12)
  {
    v13 = v12 - v9;
    if (v12 - v9 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(v7, (v7 + 5), a2))
    {
      return v13 >> 3;
    }
  }

  v38 = a1;
  v39 = a3;
  v42 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(a1, v10, a2);
  v15 = (v8 + 11);
  v14 = v8[11];
  v16 = v8[12];
  v17 = v8[13] - v14;
  if (v17 < &v16[-v14 + 8])
  {
    std::vector<unsigned char>::reserve(v8 + 11, (2 * v17) | 1);
    v16 = v8[12];
  }

  for (i = 0; i != 8; ++i)
  {
    v19 = v8[13];
    if (v16 >= v19)
    {
      v20 = *v15;
      v21 = (v16 - *v15);
      v22 = (v21 + 1);
      if ((v21 + 1) < 0)
      {
LABEL_43:
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
      }

      v23 = v19 - v20;
      if (2 * v23 > v22)
      {
        v22 = 2 * v23;
      }

      if (v23 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        operator new();
      }

      v25 = v16 - *v15;
      *v21 = *(&v42 + i);
      v16 = v21 + 1;
      memcpy(0, v20, v25);
      v8[11] = 0;
      v8[12] = v21 + 1;
      v8[13] = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v16++ = *(&v42 + i);
    }

    v8[12] = v16;
  }

  ShaderDebugger::Metadata::MDSerializer::write<std::string>(v38, v8 + 11, v39);
  v26 = v8[12];
  v27 = v8[11];
  v28 = v8[13] - v27;
  if (v28 < &v26[-v27 + 8])
  {
    std::vector<unsigned char>::reserve(v8 + 11, (2 * v28) | 1);
    v26 = v8[12];
  }

  for (j = 0; j != 8; ++j)
  {
    v30 = v8[13];
    if (v26 >= v30)
    {
      v31 = *v15;
      v32 = (v26 - *v15);
      v33 = (v32 + 1);
      if ((v32 + 1) < 0)
      {
        goto LABEL_43;
      }

      v34 = v30 - v31;
      if (2 * v34 > v33)
      {
        v33 = 2 * v34;
      }

      if (v34 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v33;
      }

      if (v35)
      {
        operator new();
      }

      v36 = v26 - *v15;
      *v32 = *(&v41 + j);
      v26 = v32 + 1;
      memcpy(0, v31, v36);
      v8[11] = 0;
      v8[12] = v32 + 1;
      v8[13] = 0;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      *v26++ = *(&v41 + j);
    }

    v8[12] = v26;
  }

  return v42;
}

unint64_t *ShaderDebugger::Metadata::MDSerializer::serializeSubrange(ShaderDebugger::Metadata::MDSerializer *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v48 = a3;
  v46 = 4;
  v49 = &v46;
  v6 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(this, &v46);
  v7 = v6;
  v9 = (v6 + 5);
  v8 = v6[5];
  v10 = v6[6];
  v11 = v8;
  if (v8 != v10)
  {
    while (*v11 != a2)
    {
      v11 += 8;
      if (v11 == v10)
      {
        v11 = v6[6];
        break;
      }
    }
  }

  if (v10 != v11)
  {
    v12 = v11 - v8;
    if (v11 - v8 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(v6, (v6 + 5), a2))
    {
      return (v12 >> 3);
    }
  }

  v49 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(this, v9, a2);
  v14 = (v7 + 11);
  v13 = v7[11];
  v15 = v7[12];
  v16 = v7[13] - v13;
  if (v16 < &v15[-v13 + 8])
  {
    std::vector<unsigned char>::reserve(v7 + 11, (2 * v16) | 1);
    v15 = v7[12];
  }

  for (i = 0; i != 8; ++i)
  {
    v18 = v7[13];
    if (v15 >= v18)
    {
      v19 = *v14;
      v20 = (v15 - *v14);
      v21 = (v20 + 1);
      if ((v20 + 1) < 0)
      {
LABEL_59:
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
      }

      v22 = v18 - v19;
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        operator new();
      }

      v24 = v15 - *v14;
      *v20 = *(&v49 + i);
      v15 = v20 + 1;
      memcpy(0, v19, v24);
      v7[11] = 0;
      v7[12] = v20 + 1;
      v7[13] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v15++ = *(&v49 + i);
    }

    v7[12] = v15;
  }

  v25 = v7[11];
  v26 = v7[13] - v25;
  if (v26 < &v15[-v25 + 8])
  {
    std::vector<unsigned char>::reserve(v7 + 11, (2 * v26) | 1);
    v15 = v7[12];
  }

  for (j = 0; j != 8; ++j)
  {
    v28 = v7[13];
    if (v15 >= v28)
    {
      v29 = *v14;
      v30 = (v15 - *v14);
      v31 = (v30 + 1);
      if ((v30 + 1) < 0)
      {
        goto LABEL_59;
      }

      v32 = v28 - v29;
      if (2 * v32 > v31)
      {
        v31 = 2 * v32;
      }

      if (v32 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v33 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v31;
      }

      if (v33)
      {
        operator new();
      }

      v34 = v15 - *v14;
      *v30 = *(&v48 + j);
      v15 = v30 + 1;
      memcpy(0, v29, v34);
      v7[11] = 0;
      v7[12] = v30 + 1;
      v7[13] = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v15++ = *(&v48 + j);
    }

    v7[12] = v15;
  }

  v35 = v7[11];
  v36 = v7[13] - v35;
  if (v36 < &v15[-v35 + 8])
  {
    std::vector<unsigned char>::reserve(v7 + 11, (2 * v36) | 1);
    v15 = v7[12];
  }

  for (k = 0; k != 8; ++k)
  {
    v38 = v7[13];
    if (v15 >= v38)
    {
      v39 = *v14;
      v40 = (v15 - *v14);
      v41 = (v40 + 1);
      if ((v40 + 1) < 0)
      {
        goto LABEL_59;
      }

      v42 = v38 - v39;
      if (2 * v42 > v41)
      {
        v41 = 2 * v42;
      }

      if (v42 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v43 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v41;
      }

      if (v43)
      {
        operator new();
      }

      v44 = v15 - *v14;
      *v40 = *(&v47 + k);
      v15 = v40 + 1;
      memcpy(0, v39, v44);
      v7[11] = 0;
      v7[12] = v40 + 1;
      v7[13] = 0;
      if (v39)
      {
        operator delete(v39);
      }
    }

    else
    {
      *v15++ = *(&v47 + k);
    }

    v7[12] = v15;
  }

  return v49;
}

uint64_t ShaderDebugger::Metadata::MDSerializer::serializeFunctionTracepoint(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v84 = a5;
  v85 = a3;
  v82 = a7;
  v83 = a6;
  v81 = 6;
  v86 = &v81;
  v10 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, &v81);
  v11 = v10;
  v13 = (v10 + 5);
  v12 = v10[5];
  v14 = v10[6];
  v15 = v12;
  if (v12 != v14)
  {
    while (*v15 != a2)
    {
      v15 += 8;
      if (v15 == v14)
      {
        v15 = v10[6];
        break;
      }
    }
  }

  if (v14 != v15)
  {
    v16 = v15 - v12;
    if (v15 - v12 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(v10, (v10 + 5), a2))
    {
      return v16 >> 3;
    }
  }

  v80 = a4;
  v86 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(a1, v13, a2);
  v18 = (v11 + 11);
  v17 = v11[11];
  v19 = v11[12];
  v20 = v11[13] - v17;
  if (v20 < &v19[-v17 + 8])
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v20) | 1);
    v19 = v11[12];
  }

  for (i = 0; i != 8; ++i)
  {
    v22 = v11[13];
    if (v19 >= v22)
    {
      v23 = *v18;
      v24 = (v19 - *v18);
      v25 = (v24 + 1);
      if ((v24 + 1) < 0)
      {
LABEL_107:
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
      }

      v26 = v22 - v23;
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v27 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        operator new();
      }

      v28 = v19 - *v18;
      *v24 = *(&v86 + i);
      v19 = v24 + 1;
      memcpy(0, v23, v28);
      v11[11] = 0;
      v11[12] = v24 + 1;
      v11[13] = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v19++ = *(&v86 + i);
    }

    v11[12] = v19;
  }

  v29 = v11[11];
  v30 = v11[13] - v29;
  if (v30 < &v19[-v29 + 8])
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v30) | 1);
    v19 = v11[12];
  }

  for (j = 0; j != 8; ++j)
  {
    v32 = v11[13];
    if (v19 >= v32)
    {
      v33 = *v18;
      v34 = (v19 - *v18);
      v35 = (v34 + 1);
      if ((v34 + 1) < 0)
      {
        goto LABEL_107;
      }

      v36 = v32 - v33;
      if (2 * v36 > v35)
      {
        v35 = 2 * v36;
      }

      if (v36 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v37 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        operator new();
      }

      v38 = v19 - *v18;
      *v34 = *(&v85 + j);
      v19 = v34 + 1;
      memcpy(0, v33, v38);
      v11[11] = 0;
      v11[12] = v34 + 1;
      v11[13] = 0;
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      *v19++ = *(&v85 + j);
    }

    v11[12] = v19;
  }

  v81 = v80;
  v39 = v11[11];
  v40 = v11[13] - v39;
  if (v40 < &v19[-v39 + 8])
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v40) | 1);
    v19 = v11[12];
  }

  for (k = 0; k != 8; ++k)
  {
    v42 = v11[13];
    if (v19 >= v42)
    {
      v43 = *v18;
      v44 = (v19 - *v18);
      v45 = (v44 + 1);
      if ((v44 + 1) < 0)
      {
        goto LABEL_107;
      }

      v46 = v42 - v43;
      if (2 * v46 > v45)
      {
        v45 = 2 * v46;
      }

      if (v46 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v47 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        operator new();
      }

      v48 = v19 - *v18;
      *v44 = *(&v81 + k);
      v19 = v44 + 1;
      memcpy(0, v43, v48);
      v11[11] = 0;
      v11[12] = v44 + 1;
      v11[13] = 0;
      if (v43)
      {
        operator delete(v43);
      }
    }

    else
    {
      *v19++ = *(&v81 + k);
    }

    v11[12] = v19;
  }

  v49 = v11[11];
  v50 = v11[13] - v49;
  if (v50 < &v19[-v49 + 8])
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v50) | 1);
    v19 = v11[12];
  }

  for (m = 0; m != 8; ++m)
  {
    v52 = v11[13];
    if (v19 >= v52)
    {
      v53 = *v18;
      v54 = (v19 - *v18);
      v55 = (v54 + 1);
      if ((v54 + 1) < 0)
      {
        goto LABEL_107;
      }

      v56 = v52 - v53;
      if (2 * v56 > v55)
      {
        v55 = 2 * v56;
      }

      if (v56 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v57 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v57 = v55;
      }

      if (v57)
      {
        operator new();
      }

      v58 = v19 - *v18;
      *v54 = *(&v84 + m);
      v19 = v54 + 1;
      memcpy(0, v53, v58);
      v11[11] = 0;
      v11[12] = v54 + 1;
      v11[13] = 0;
      if (v53)
      {
        operator delete(v53);
      }
    }

    else
    {
      *v19++ = *(&v84 + m);
    }

    v11[12] = v19;
  }

  v59 = v11[11];
  v60 = v11[13] - v59;
  if (v60 < &v19[-v59 + 8])
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v60) | 1);
    v19 = v11[12];
  }

  for (n = 0; n != 8; ++n)
  {
    v62 = v11[13];
    if (v19 >= v62)
    {
      v63 = *v18;
      v64 = (v19 - *v18);
      v65 = (v64 + 1);
      if ((v64 + 1) < 0)
      {
        goto LABEL_107;
      }

      v66 = v62 - v63;
      if (2 * v66 > v65)
      {
        v65 = 2 * v66;
      }

      if (v66 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v67 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v67 = v65;
      }

      if (v67)
      {
        operator new();
      }

      v68 = v19 - *v18;
      *v64 = *(&v83 + n);
      v19 = v64 + 1;
      memcpy(0, v63, v68);
      v11[11] = 0;
      v11[12] = v64 + 1;
      v11[13] = 0;
      if (v63)
      {
        operator delete(v63);
      }
    }

    else
    {
      *v19++ = *(&v83 + n);
    }

    v11[12] = v19;
  }

  v69 = v11[11];
  v70 = v11[13] - v69;
  if (v70 < &v19[-v69 + 8])
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v70) | 1);
    v19 = v11[12];
  }

  for (ii = 0; ii != 8; ++ii)
  {
    v72 = v11[13];
    if (v19 >= v72)
    {
      v73 = *v18;
      v74 = (v19 - *v18);
      v75 = (v74 + 1);
      if ((v74 + 1) < 0)
      {
        goto LABEL_107;
      }

      v76 = v72 - v73;
      if (2 * v76 > v75)
      {
        v75 = 2 * v76;
      }

      if (v76 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v77 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v77 = v75;
      }

      if (v77)
      {
        operator new();
      }

      v78 = v19 - *v18;
      *v74 = *(&v82 + ii);
      v19 = v74 + 1;
      memcpy(0, v73, v78);
      v11[11] = 0;
      v11[12] = v74 + 1;
      v11[13] = 0;
      if (v73)
      {
        operator delete(v73);
      }
    }

    else
    {
      *v19++ = *(&v82 + ii);
    }

    v11[12] = v19;
  }

  return v86;
}

uint64_t ShaderDebugger::Metadata::MDSerializer::serializeWaypointTracepoint(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v60 = a5;
  v61 = a3;
  v59 = 9;
  v62 = &v59;
  v8 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, &v59);
  v9 = v8;
  v11 = (v8 + 5);
  v10 = v8[5];
  v12 = v8[6];
  v13 = v10;
  if (v10 != v12)
  {
    while (*v13 != a2)
    {
      v13 += 8;
      if (v13 == v12)
      {
        v13 = v8[6];
        break;
      }
    }
  }

  if (v12 != v13)
  {
    v14 = v13 - v10;
    if (v13 - v10 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(v8, (v8 + 5), a2))
    {
      return v14 >> 3;
    }
  }

  v58 = a4;
  v62 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(a1, v11, a2);
  v16 = (v9 + 11);
  v15 = v9[11];
  v17 = v9[12];
  v18 = v9[13] - v15;
  if (v18 < &v17[-v15 + 8])
  {
    std::vector<unsigned char>::reserve(v9 + 11, (2 * v18) | 1);
    v17 = v9[12];
  }

  for (i = 0; i != 8; ++i)
  {
    v20 = v9[13];
    if (v17 >= v20)
    {
      v21 = *v16;
      v22 = (v17 - *v16);
      v23 = (v22 + 1);
      if ((v22 + 1) < 0)
      {
LABEL_75:
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
      }

      v24 = v20 - v21;
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        operator new();
      }

      v26 = v17 - *v16;
      *v22 = *(&v62 + i);
      v17 = v22 + 1;
      memcpy(0, v21, v26);
      v9[11] = 0;
      v9[12] = v22 + 1;
      v9[13] = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v17++ = *(&v62 + i);
    }

    v9[12] = v17;
  }

  v27 = v9[11];
  v28 = v9[13] - v27;
  if (v28 < &v17[-v27 + 8])
  {
    std::vector<unsigned char>::reserve(v9 + 11, (2 * v28) | 1);
    v17 = v9[12];
  }

  for (j = 0; j != 8; ++j)
  {
    v30 = v9[13];
    if (v17 >= v30)
    {
      v31 = *v16;
      v32 = (v17 - *v16);
      v33 = (v32 + 1);
      if ((v32 + 1) < 0)
      {
        goto LABEL_75;
      }

      v34 = v30 - v31;
      if (2 * v34 > v33)
      {
        v33 = 2 * v34;
      }

      if (v34 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v33;
      }

      if (v35)
      {
        operator new();
      }

      v36 = v17 - *v16;
      *v32 = *(&v61 + j);
      v17 = v32 + 1;
      memcpy(0, v31, v36);
      v9[11] = 0;
      v9[12] = v32 + 1;
      v9[13] = 0;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      *v17++ = *(&v61 + j);
    }

    v9[12] = v17;
  }

  v59 = v58;
  v37 = v9[11];
  v38 = v9[13] - v37;
  if (v38 < &v17[-v37 + 8])
  {
    std::vector<unsigned char>::reserve(v9 + 11, (2 * v38) | 1);
    v17 = v9[12];
  }

  for (k = 0; k != 8; ++k)
  {
    v40 = v9[13];
    if (v17 >= v40)
    {
      v41 = *v16;
      v42 = (v17 - *v16);
      v43 = (v42 + 1);
      if ((v42 + 1) < 0)
      {
        goto LABEL_75;
      }

      v44 = v40 - v41;
      if (2 * v44 > v43)
      {
        v43 = 2 * v44;
      }

      if (v44 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v45 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v45 = v43;
      }

      if (v45)
      {
        operator new();
      }

      v46 = v17 - *v16;
      *v42 = *(&v59 + k);
      v17 = v42 + 1;
      memcpy(0, v41, v46);
      v9[11] = 0;
      v9[12] = v42 + 1;
      v9[13] = 0;
      if (v41)
      {
        operator delete(v41);
      }
    }

    else
    {
      *v17++ = *(&v59 + k);
    }

    v9[12] = v17;
  }

  v47 = v9[11];
  v48 = v9[13] - v47;
  if (v48 < &v17[-v47 + 8])
  {
    std::vector<unsigned char>::reserve(v9 + 11, (2 * v48) | 1);
    v17 = v9[12];
  }

  for (m = 0; m != 8; ++m)
  {
    v50 = v9[13];
    if (v17 >= v50)
    {
      v51 = *v16;
      v52 = (v17 - *v16);
      v53 = (v52 + 1);
      if ((v52 + 1) < 0)
      {
        goto LABEL_75;
      }

      v54 = v50 - v51;
      if (2 * v54 > v53)
      {
        v53 = 2 * v54;
      }

      if (v54 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v55 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = v53;
      }

      if (v55)
      {
        operator new();
      }

      v56 = v17 - *v16;
      *v52 = *(&v60 + m);
      v17 = v52 + 1;
      memcpy(0, v51, v56);
      v9[11] = 0;
      v9[12] = v52 + 1;
      v9[13] = 0;
      if (v51)
      {
        operator delete(v51);
      }
    }

    else
    {
      *v17++ = *(&v60 + m);
    }

    v9[12] = v17;
  }

  return v62;
}

uint64_t ShaderDebugger::Metadata::MDSerializer::serializeDataTracepoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  v72 = a4;
  v73 = a3;
  v71 = a5;
  v70 = 8;
  v74 = &v70;
  v9 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, &v70);
  v10 = v9;
  v12 = (v9 + 5);
  v11 = v9[5];
  v13 = v9[6];
  v14 = v11;
  if (v11 != v13)
  {
    while (*v14 != a2)
    {
      v14 += 8;
      if (v14 == v13)
      {
        v14 = v9[6];
        break;
      }
    }
  }

  if (v13 != v14)
  {
    v15 = v14 - v11;
    if (v14 - v11 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(v9, (v9 + 5), a2))
    {
      return v15 >> 3;
    }
  }

  v69 = a6;
  v74 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(a1, v12, a2);
  v17 = (v10 + 11);
  v16 = v10[11];
  v18 = v10[12];
  v19 = v10[13] - v16;
  if (v19 < &v18[-v16 + 8])
  {
    std::vector<unsigned char>::reserve(v10 + 11, (2 * v19) | 1);
    v18 = v10[12];
  }

  for (i = 0; i != 8; ++i)
  {
    v21 = v10[13];
    if (v18 >= v21)
    {
      v22 = *v17;
      v23 = (v18 - *v17);
      v24 = (v23 + 1);
      if ((v23 + 1) < 0)
      {
LABEL_91:
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
      }

      v25 = v21 - v22;
      if (2 * v25 > v24)
      {
        v24 = 2 * v25;
      }

      if (v25 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v26 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        operator new();
      }

      v27 = v18 - *v17;
      *v23 = *(&v74 + i);
      v18 = v23 + 1;
      memcpy(0, v22, v27);
      v10[11] = 0;
      v10[12] = v23 + 1;
      v10[13] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v18++ = *(&v74 + i);
    }

    v10[12] = v18;
  }

  v28 = v10[11];
  v29 = v10[13] - v28;
  if (v29 < &v18[-v28 + 8])
  {
    std::vector<unsigned char>::reserve(v10 + 11, (2 * v29) | 1);
    v18 = v10[12];
  }

  for (j = 0; j != 8; ++j)
  {
    v31 = v10[13];
    if (v18 >= v31)
    {
      v32 = *v17;
      v33 = (v18 - *v17);
      v34 = (v33 + 1);
      if ((v33 + 1) < 0)
      {
        goto LABEL_91;
      }

      v35 = v31 - v32;
      if (2 * v35 > v34)
      {
        v34 = 2 * v35;
      }

      if (v35 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v36 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = v34;
      }

      if (v36)
      {
        operator new();
      }

      v37 = v18 - *v17;
      *v33 = *(&v73 + j);
      v18 = v33 + 1;
      memcpy(0, v32, v37);
      v10[11] = 0;
      v10[12] = v33 + 1;
      v10[13] = 0;
      if (v32)
      {
        operator delete(v32);
      }
    }

    else
    {
      *v18++ = *(&v73 + j);
    }

    v10[12] = v18;
  }

  v38 = v10[11];
  v39 = v10[13] - v38;
  if (v39 < &v18[-v38 + 8])
  {
    std::vector<unsigned char>::reserve(v10 + 11, (2 * v39) | 1);
    v18 = v10[12];
  }

  for (k = 0; k != 8; ++k)
  {
    v41 = v10[13];
    if (v18 >= v41)
    {
      v42 = *v17;
      v43 = (v18 - *v17);
      v44 = (v43 + 1);
      if ((v43 + 1) < 0)
      {
        goto LABEL_91;
      }

      v45 = v41 - v42;
      if (2 * v45 > v44)
      {
        v44 = 2 * v45;
      }

      if (v45 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v46 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v46 = v44;
      }

      if (v46)
      {
        operator new();
      }

      v47 = v18 - *v17;
      *v43 = *(&v72 + k);
      v18 = v43 + 1;
      memcpy(0, v42, v47);
      v10[11] = 0;
      v10[12] = v43 + 1;
      v10[13] = 0;
      if (v42)
      {
        operator delete(v42);
      }
    }

    else
    {
      *v18++ = *(&v72 + k);
    }

    v10[12] = v18;
  }

  v48 = v10[11];
  v49 = v10[13] - v48;
  if (v49 < &v18[-v48 + 4])
  {
    std::vector<unsigned char>::reserve(v10 + 11, (2 * v49) | 1);
    v18 = v10[12];
  }

  for (m = 0; m != 4; ++m)
  {
    v51 = v10[13];
    if (v18 >= v51)
    {
      v52 = *v17;
      v53 = (v18 - *v17);
      v54 = (v53 + 1);
      if ((v53 + 1) < 0)
      {
        goto LABEL_91;
      }

      v55 = v51 - v52;
      if (2 * v55 > v54)
      {
        v54 = 2 * v55;
      }

      if (v55 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v56 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v56 = v54;
      }

      if (v56)
      {
        operator new();
      }

      v57 = v18 - *v17;
      *v53 = *(&v71 + m);
      v18 = v53 + 1;
      memcpy(0, v52, v57);
      v10[11] = 0;
      v10[12] = v53 + 1;
      v10[13] = 0;
      if (v52)
      {
        operator delete(v52);
      }
    }

    else
    {
      *v18++ = *(&v71 + m);
    }

    v10[12] = v18;
  }

  v70 = v69;
  v58 = v10[11];
  v59 = v10[13] - v58;
  if (v59 < &v18[-v58 + 8])
  {
    std::vector<unsigned char>::reserve(v10 + 11, (2 * v59) | 1);
    v18 = v10[12];
  }

  for (n = 0; n != 8; ++n)
  {
    v61 = v10[13];
    if (v18 >= v61)
    {
      v62 = *v17;
      v63 = (v18 - *v17);
      v64 = (v63 + 1);
      if ((v63 + 1) < 0)
      {
        goto LABEL_91;
      }

      v65 = v61 - v62;
      if (2 * v65 > v64)
      {
        v64 = 2 * v65;
      }

      if (v65 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v66 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v66 = v64;
      }

      if (v66)
      {
        operator new();
      }

      v67 = v18 - *v17;
      *v63 = *(&v70 + n);
      v18 = v63 + 1;
      memcpy(0, v62, v67);
      v10[11] = 0;
      v10[12] = v63 + 1;
      v10[13] = 0;
      if (v62)
      {
        operator delete(v62);
      }
    }

    else
    {
      *v18++ = *(&v70 + n);
    }

    v10[12] = v18;
  }

  return v74;
}

unint64_t *ShaderDebugger::Metadata::MDSerializer::serializeDataValueTracepoint(ShaderDebugger::Metadata::MDSerializer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v95 = a4;
  v96 = a3;
  v93 = a6;
  v94 = a5;
  v91 = a8;
  v92 = a7;
  v90 = 10;
  v97 = &v90;
  v10 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(this, &v90);
  v11 = v10;
  v13 = (v10 + 5);
  v12 = v10[5];
  v14 = v10[6];
  v15 = v12;
  if (v12 != v14)
  {
    while (*v15 != a2)
    {
      v15 += 8;
      if (v15 == v14)
      {
        v15 = v10[6];
        break;
      }
    }
  }

  if (v14 != v15)
  {
    v16 = v15 - v12;
    if (v15 - v12 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(v10, (v10 + 5), a2))
    {
      return (v16 >> 3);
    }
  }

  v97 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(this, v13, a2);
  v18 = (v11 + 11);
  v17 = v11[11];
  v19 = v11[12];
  v20 = v11[13] - v17;
  if (v20 < &v19[-v17 + 8])
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v20) | 1);
    v19 = v11[12];
  }

  for (i = 0; i != 8; ++i)
  {
    v22 = v11[13];
    if (v19 >= v22)
    {
      v23 = *v18;
      v24 = (v19 - *v18);
      v25 = (v24 + 1);
      if ((v24 + 1) < 0)
      {
LABEL_123:
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
      }

      v26 = v22 - v23;
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v27 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        operator new();
      }

      v28 = v19 - *v18;
      *v24 = *(&v97 + i);
      v19 = v24 + 1;
      memcpy(0, v23, v28);
      v11[11] = 0;
      v11[12] = v24 + 1;
      v11[13] = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v19++ = *(&v97 + i);
    }

    v11[12] = v19;
  }

  v29 = v11[11];
  v30 = v11[13] - v29;
  if (v30 < &v19[-v29 + 8])
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v30) | 1);
    v19 = v11[12];
  }

  for (j = 0; j != 8; ++j)
  {
    v32 = v11[13];
    if (v19 >= v32)
    {
      v33 = *v18;
      v34 = (v19 - *v18);
      v35 = (v34 + 1);
      if ((v34 + 1) < 0)
      {
        goto LABEL_123;
      }

      v36 = v32 - v33;
      if (2 * v36 > v35)
      {
        v35 = 2 * v36;
      }

      if (v36 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v37 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        operator new();
      }

      v38 = v19 - *v18;
      *v34 = *(&v96 + j);
      v19 = v34 + 1;
      memcpy(0, v33, v38);
      v11[11] = 0;
      v11[12] = v34 + 1;
      v11[13] = 0;
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      *v19++ = *(&v96 + j);
    }

    v11[12] = v19;
  }

  v39 = v11[11];
  v40 = v11[13] - v39;
  if (v40 < &v19[-v39 + 8])
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v40) | 1);
    v19 = v11[12];
  }

  for (k = 0; k != 8; ++k)
  {
    v42 = v11[13];
    if (v19 >= v42)
    {
      v43 = *v18;
      v44 = (v19 - *v18);
      v45 = (v44 + 1);
      if ((v44 + 1) < 0)
      {
        goto LABEL_123;
      }

      v46 = v42 - v43;
      if (2 * v46 > v45)
      {
        v45 = 2 * v46;
      }

      if (v46 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v47 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        operator new();
      }

      v48 = v19 - *v18;
      *v44 = *(&v95 + k);
      v19 = v44 + 1;
      memcpy(0, v43, v48);
      v11[11] = 0;
      v11[12] = v44 + 1;
      v11[13] = 0;
      if (v43)
      {
        operator delete(v43);
      }
    }

    else
    {
      *v19++ = *(&v95 + k);
    }

    v11[12] = v19;
  }

  v49 = v11[11];
  v50 = v11[13] - v49;
  if (v50 < &v19[-v49 + 8])
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v50) | 1);
    v19 = v11[12];
  }

  for (m = 0; m != 8; ++m)
  {
    v52 = v11[13];
    if (v19 >= v52)
    {
      v53 = *v18;
      v54 = (v19 - *v18);
      v55 = (v54 + 1);
      if ((v54 + 1) < 0)
      {
        goto LABEL_123;
      }

      v56 = v52 - v53;
      if (2 * v56 > v55)
      {
        v55 = 2 * v56;
      }

      if (v56 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v57 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v57 = v55;
      }

      if (v57)
      {
        operator new();
      }

      v58 = v19 - *v18;
      *v54 = *(&v94 + m);
      v19 = v54 + 1;
      memcpy(0, v53, v58);
      v11[11] = 0;
      v11[12] = v54 + 1;
      v11[13] = 0;
      if (v53)
      {
        operator delete(v53);
      }
    }

    else
    {
      *v19++ = *(&v94 + m);
    }

    v11[12] = v19;
  }

  v59 = v11[11];
  v60 = v11[13] - v59;
  if (v60 < &v19[-v59 + 8])
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v60) | 1);
    v19 = v11[12];
  }

  for (n = 0; n != 8; ++n)
  {
    v62 = v11[13];
    if (v19 >= v62)
    {
      v63 = *v18;
      v64 = (v19 - *v18);
      v65 = (v64 + 1);
      if ((v64 + 1) < 0)
      {
        goto LABEL_123;
      }

      v66 = v62 - v63;
      if (2 * v66 > v65)
      {
        v65 = 2 * v66;
      }

      if (v66 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v67 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v67 = v65;
      }

      if (v67)
      {
        operator new();
      }

      v68 = v19 - *v18;
      *v64 = *(&v93 + n);
      v19 = v64 + 1;
      memcpy(0, v63, v68);
      v11[11] = 0;
      v11[12] = v64 + 1;
      v11[13] = 0;
      if (v63)
      {
        operator delete(v63);
      }
    }

    else
    {
      *v19++ = *(&v93 + n);
    }

    v11[12] = v19;
  }

  v69 = v11[11];
  v70 = v11[13] - v69;
  if (v70 < &v19[-v69 + 8])
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v70) | 1);
    v19 = v11[12];
  }

  for (ii = 0; ii != 8; ++ii)
  {
    v72 = v11[13];
    if (v19 >= v72)
    {
      v73 = *v18;
      v74 = (v19 - *v18);
      v75 = (v74 + 1);
      if ((v74 + 1) < 0)
      {
        goto LABEL_123;
      }

      v76 = v72 - v73;
      if (2 * v76 > v75)
      {
        v75 = 2 * v76;
      }

      if (v76 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v77 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v77 = v75;
      }

      if (v77)
      {
        operator new();
      }

      v78 = v19 - *v18;
      *v74 = *(&v92 + ii);
      v19 = v74 + 1;
      memcpy(0, v73, v78);
      v11[11] = 0;
      v11[12] = v74 + 1;
      v11[13] = 0;
      if (v73)
      {
        operator delete(v73);
      }
    }

    else
    {
      *v19++ = *(&v92 + ii);
    }

    v11[12] = v19;
  }

  v79 = v11[11];
  v80 = v11[13] - v79;
  if (v80 < &v19[-v79 + 8])
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v80) | 1);
    v19 = v11[12];
  }

  for (jj = 0; jj != 8; ++jj)
  {
    v82 = v11[13];
    if (v19 >= v82)
    {
      v83 = *v18;
      v84 = (v19 - *v18);
      v85 = (v84 + 1);
      if ((v84 + 1) < 0)
      {
        goto LABEL_123;
      }

      v86 = v82 - v83;
      if (2 * v86 > v85)
      {
        v85 = 2 * v86;
      }

      if (v86 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v87 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v87 = v85;
      }

      if (v87)
      {
        operator new();
      }

      v88 = v19 - *v18;
      *v84 = *(&v91 + jj);
      v19 = v84 + 1;
      memcpy(0, v83, v88);
      v11[11] = 0;
      v11[12] = v84 + 1;
      v11[13] = 0;
      if (v83)
      {
        operator delete(v83);
      }
    }

    else
    {
      *v19++ = *(&v91 + jj);
    }

    v11[12] = v19;
  }

  return v97;
}

uint64_t ShaderDebugger::Metadata::MDSerializer::serializeVariableTracepoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v60 = a4;
  v61 = a3;
  v59 = 7;
  v62 = &v59;
  v8 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, &v59);
  v9 = v8;
  v11 = (v8 + 5);
  v10 = v8[5];
  v12 = v8[6];
  v13 = v10;
  if (v10 != v12)
  {
    while (*v13 != a2)
    {
      v13 += 8;
      if (v13 == v12)
      {
        v13 = v8[6];
        break;
      }
    }
  }

  if (v12 != v13)
  {
    v14 = v13 - v10;
    if (v13 - v10 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(v8, (v8 + 5), a2))
    {
      return v14 >> 3;
    }
  }

  v58 = a5;
  v62 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(a1, v11, a2);
  v16 = (v9 + 11);
  v15 = v9[11];
  v17 = v9[12];
  v18 = v9[13] - v15;
  if (v18 < &v17[-v15 + 8])
  {
    std::vector<unsigned char>::reserve(v9 + 11, (2 * v18) | 1);
    v17 = v9[12];
  }

  for (i = 0; i != 8; ++i)
  {
    v20 = v9[13];
    if (v17 >= v20)
    {
      v21 = *v16;
      v22 = (v17 - *v16);
      v23 = (v22 + 1);
      if ((v22 + 1) < 0)
      {
LABEL_75:
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
      }

      v24 = v20 - v21;
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        operator new();
      }

      v26 = v17 - *v16;
      *v22 = *(&v62 + i);
      v17 = v22 + 1;
      memcpy(0, v21, v26);
      v9[11] = 0;
      v9[12] = v22 + 1;
      v9[13] = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v17++ = *(&v62 + i);
    }

    v9[12] = v17;
  }

  v27 = v9[11];
  v28 = v9[13] - v27;
  if (v28 < &v17[-v27 + 8])
  {
    std::vector<unsigned char>::reserve(v9 + 11, (2 * v28) | 1);
    v17 = v9[12];
  }

  for (j = 0; j != 8; ++j)
  {
    v30 = v9[13];
    if (v17 >= v30)
    {
      v31 = *v16;
      v32 = (v17 - *v16);
      v33 = (v32 + 1);
      if ((v32 + 1) < 0)
      {
        goto LABEL_75;
      }

      v34 = v30 - v31;
      if (2 * v34 > v33)
      {
        v33 = 2 * v34;
      }

      if (v34 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v33;
      }

      if (v35)
      {
        operator new();
      }

      v36 = v17 - *v16;
      *v32 = *(&v61 + j);
      v17 = v32 + 1;
      memcpy(0, v31, v36);
      v9[11] = 0;
      v9[12] = v32 + 1;
      v9[13] = 0;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      *v17++ = *(&v61 + j);
    }

    v9[12] = v17;
  }

  v37 = v9[11];
  v38 = v9[13] - v37;
  if (v38 < &v17[-v37 + 8])
  {
    std::vector<unsigned char>::reserve(v9 + 11, (2 * v38) | 1);
    v17 = v9[12];
  }

  for (k = 0; k != 8; ++k)
  {
    v40 = v9[13];
    if (v17 >= v40)
    {
      v41 = *v16;
      v42 = (v17 - *v16);
      v43 = (v42 + 1);
      if ((v42 + 1) < 0)
      {
        goto LABEL_75;
      }

      v44 = v40 - v41;
      if (2 * v44 > v43)
      {
        v43 = 2 * v44;
      }

      if (v44 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v45 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v45 = v43;
      }

      if (v45)
      {
        operator new();
      }

      v46 = v17 - *v16;
      *v42 = *(&v60 + k);
      v17 = v42 + 1;
      memcpy(0, v41, v46);
      v9[11] = 0;
      v9[12] = v42 + 1;
      v9[13] = 0;
      if (v41)
      {
        operator delete(v41);
      }
    }

    else
    {
      *v17++ = *(&v60 + k);
    }

    v9[12] = v17;
  }

  v59 = v58;
  v47 = v9[11];
  v48 = v9[13] - v47;
  if (v48 < &v17[-v47 + 8])
  {
    std::vector<unsigned char>::reserve(v9 + 11, (2 * v48) | 1);
    v17 = v9[12];
  }

  for (m = 0; m != 8; ++m)
  {
    v50 = v9[13];
    if (v17 >= v50)
    {
      v51 = *v16;
      v52 = (v17 - *v16);
      v53 = (v52 + 1);
      if ((v52 + 1) < 0)
      {
        goto LABEL_75;
      }

      v54 = v50 - v51;
      if (2 * v54 > v53)
      {
        v53 = 2 * v54;
      }

      if (v54 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v55 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = v53;
      }

      if (v55)
      {
        operator new();
      }

      v56 = v17 - *v16;
      *v52 = *(&v59 + m);
      v17 = v52 + 1;
      memcpy(0, v51, v56);
      v9[11] = 0;
      v9[12] = v52 + 1;
      v9[13] = 0;
      if (v51)
      {
        operator delete(v51);
      }
    }

    else
    {
      *v17++ = *(&v59 + m);
    }

    v9[12] = v17;
  }

  return v62;
}

void ShaderDebugger::Metadata::MDSerializer::serializeVariableBase(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = a5;
  v52 = a3;
  v50 = a6;
  v8 = a2[1];
  v9 = a2[2] - *a2;
  if (v9 < &v8[-*a2 + 8])
  {
    std::vector<unsigned char>::reserve(a2, (2 * v9) | 1);
    v8 = a2[1];
  }

  for (i = 0; i != 8; ++i)
  {
    v11 = a2[2];
    if (v8 >= v11)
    {
      v12 = *a2;
      v13 = &v8[-*a2];
      v14 = (v13 + 1);
      if ((v13 + 1) < 0)
      {
LABEL_66:
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
      }

      v15 = v11 - v12;
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        operator new();
      }

      v17 = &v8[-*a2];
      *v13 = *(&v52 + i);
      v8 = v13 + 1;
      memcpy(0, v12, v17);
      *a2 = 0;
      a2[1] = v13 + 1;
      a2[2] = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v8++ = *(&v52 + i);
    }

    a2[1] = v8;
  }

  ShaderDebugger::Metadata::MDSerializer::write<std::string>(a1, a2, a4);
  v18 = a2[1];
  v19 = a2[2] - *a2;
  if (v19 < &v18[-*a2 + 8])
  {
    std::vector<unsigned char>::reserve(a2, (2 * v19) | 1);
    v18 = a2[1];
  }

  for (j = 0; j != 8; ++j)
  {
    v21 = a2[2];
    if (v18 >= v21)
    {
      v22 = *a2;
      v23 = &v18[-*a2];
      v24 = (v23 + 1);
      if ((v23 + 1) < 0)
      {
        goto LABEL_66;
      }

      v25 = v21 - v22;
      if (2 * v25 > v24)
      {
        v24 = 2 * v25;
      }

      if (v25 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v26 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        operator new();
      }

      v27 = &v18[-*a2];
      *v23 = *(&v51 + j);
      v18 = v23 + 1;
      memcpy(0, v22, v27);
      *a2 = 0;
      a2[1] = v23 + 1;
      a2[2] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v18++ = *(&v51 + j);
    }

    a2[1] = v18;
  }

  v28 = a2[2] - *a2;
  if (v28 < &v18[-*a2 + 8])
  {
    std::vector<unsigned char>::reserve(a2, (2 * v28) | 1);
    v18 = a2[1];
  }

  for (k = 0; k != 8; ++k)
  {
    v30 = a2[2];
    if (v18 >= v30)
    {
      v31 = *a2;
      v32 = &v18[-*a2];
      v33 = (v32 + 1);
      if ((v32 + 1) < 0)
      {
        goto LABEL_66;
      }

      v34 = v30 - v31;
      if (2 * v34 > v33)
      {
        v33 = 2 * v34;
      }

      if (v34 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v33;
      }

      if (v35)
      {
        operator new();
      }

      v36 = &v18[-*a2];
      *v32 = *(&v50 + k);
      v18 = v32 + 1;
      memcpy(0, v31, v36);
      *a2 = 0;
      a2[1] = v32 + 1;
      a2[2] = 0;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      *v18++ = *(&v50 + k);
    }

    a2[1] = v18;
  }

  v49 = a7;
  v37 = a2[2] - *a2;
  if (v37 < &v18[-*a2 + 8])
  {
    std::vector<unsigned char>::reserve(a2, (2 * v37) | 1);
    v18 = a2[1];
  }

  for (m = 0; m != 8; ++m)
  {
    v39 = a2[2];
    if (v18 >= v39)
    {
      v40 = *a2;
      v41 = &v18[-*a2];
      v42 = (v41 + 1);
      if ((v41 + 1) < 0)
      {
        goto LABEL_66;
      }

      v43 = v39 - v40;
      if (2 * v43 > v42)
      {
        v42 = 2 * v43;
      }

      if (v43 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v44 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        operator new();
      }

      v45 = &v18[-*a2];
      *v41 = *(&v49 + m);
      v18 = v41 + 1;
      memcpy(0, v40, v45);
      *a2 = 0;
      a2[1] = v41 + 1;
      a2[2] = 0;
      if (v40)
      {
        operator delete(v40);
      }
    }

    else
    {
      *v18++ = *(&v49 + m);
    }

    a2[1] = v18;
  }
}

uint64_t ShaderDebugger::Metadata::MDSerializer::serializeLocalVariable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v31[0] = 2;
  v31[2] = v31;
  v12 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, v31);
  v13 = v12;
  v15 = (v12 + 5);
  v14 = v12[5];
  v16 = v12[6];
  v17 = v14;
  if (v14 != v16)
  {
    while (*v17 != a2)
    {
      v17 += 8;
      if (v17 == v16)
      {
        v17 = v12[6];
        break;
      }
    }
  }

  if (v16 != v17)
  {
    v18 = v17 - v14;
    if (v17 - v14 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(v12, (v12 + 5), a2))
    {
      return v18 >> 3;
    }
  }

  v19 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(a1, v15, a2);
  ShaderDebugger::Metadata::MDSerializer::serializeVariableBase(a1, v13 + 11, v19, a3, a4, a5, 0);
  v21 = v13[12];
  v20 = v13[13];
  v22 = v13[11];
  if (v20 - v22 < &v21[-v22 + 1])
  {
    std::vector<unsigned char>::reserve(v13 + 11, (2 * (v20 - v22)) | 1);
    v21 = v13[12];
    v20 = v13[13];
  }

  if (v21 >= v20)
  {
    v24 = v13[11];
    v25 = (v21 - v24);
    v26 = v21 - v24 + 1;
    if (v26 < 0)
    {
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
    }

    v27 = v20 - v24;
    if (2 * v27 > v26)
    {
      v26 = 2 * v27;
    }

    if (v27 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v26;
    }

    if (v28)
    {
      operator new();
    }

    v29 = v21 - v24;
    *v25 = a6;
    v23 = v25 + 1;
    memcpy(0, v24, v29);
    v13[11] = 0;
    v13[12] = v25 + 1;
    v13[13] = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v21 = a6;
    v23 = v21 + 1;
  }

  v13[12] = v23;
  return v19;
}

uint64_t ShaderDebugger::Metadata::MDSerializer::serializeGlobalVariable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[0] = 2;
  v19[2] = v19;
  v10 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, v19);
  v11 = v10;
  v13 = (v10 + 5);
  v12 = v10[5];
  v14 = v10[6];
  v15 = v12;
  if (v12 != v14)
  {
    while (*v15 != a2)
    {
      v15 += 8;
      if (v15 == v14)
      {
        v15 = v10[6];
        break;
      }
    }
  }

  if (v14 != v15)
  {
    v16 = v15 - v12;
    if (v15 - v12 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(v10, (v10 + 5), a2))
    {
      return v16 >> 3;
    }
  }

  v17 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(a1, v13, a2);
  ShaderDebugger::Metadata::MDSerializer::serializeVariableBase(a1, v11 + 11, v17, a3, a4, a5, 1);
  return v17;
}

void ShaderDebugger::Metadata::MDSerializer::serializeTypeBase(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, uint64_t a10)
{
  v82 = a5;
  v83 = a3;
  v80 = a7;
  v81 = a6;
  v79 = a8;
  v11 = a2[1];
  v12 = a2[2] - *a2;
  if (v12 < &v11[-*a2 + 8])
  {
    std::vector<unsigned char>::reserve(a2, (2 * v12) | 1);
    v11 = a2[1];
  }

  for (i = 0; i != 8; ++i)
  {
    v14 = a2[2];
    if (v11 >= v14)
    {
      v15 = *a2;
      v16 = &v11[-*a2];
      v17 = (v16 + 1);
      if ((v16 + 1) < 0)
      {
LABEL_114:
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
      }

      v18 = v14 - v15;
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v19 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        operator new();
      }

      v20 = &v11[-*a2];
      *v16 = *(&v83 + i);
      v11 = v16 + 1;
      memcpy(0, v15, v20);
      *a2 = 0;
      a2[1] = v16 + 1;
      a2[2] = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v11++ = *(&v83 + i);
    }

    a2[1] = v11;
  }

  ShaderDebugger::Metadata::MDSerializer::write<std::string>(a1, a2, a4);
  v21 = a2[1];
  v22 = a2[2] - *a2;
  if (v22 < &v21[-*a2 + 8])
  {
    std::vector<unsigned char>::reserve(a2, (2 * v22) | 1);
    v21 = a2[1];
  }

  for (j = 0; j != 8; ++j)
  {
    v24 = a2[2];
    if (v21 >= v24)
    {
      v25 = *a2;
      v26 = &v21[-*a2];
      v27 = (v26 + 1);
      if ((v26 + 1) < 0)
      {
        goto LABEL_114;
      }

      v28 = v24 - v25;
      if (2 * v28 > v27)
      {
        v27 = 2 * v28;
      }

      if (v28 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v29 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        operator new();
      }

      v30 = &v21[-*a2];
      *v26 = *(&v82 + j);
      v21 = v26 + 1;
      memcpy(0, v25, v30);
      *a2 = 0;
      a2[1] = v26 + 1;
      a2[2] = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v21++ = *(&v82 + j);
    }

    a2[1] = v21;
  }

  v31 = a2[2] - *a2;
  if (v31 < &v21[-*a2 + 8])
  {
    std::vector<unsigned char>::reserve(a2, (2 * v31) | 1);
    v21 = a2[1];
  }

  for (k = 0; k != 8; ++k)
  {
    v33 = a2[2];
    if (v21 >= v33)
    {
      v34 = *a2;
      v35 = &v21[-*a2];
      v36 = (v35 + 1);
      if ((v35 + 1) < 0)
      {
        goto LABEL_114;
      }

      v37 = v33 - v34;
      if (2 * v37 > v36)
      {
        v36 = 2 * v37;
      }

      if (v37 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v38 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        operator new();
      }

      v39 = &v21[-*a2];
      *v35 = *(&v81 + k);
      v21 = v35 + 1;
      memcpy(0, v34, v39);
      *a2 = 0;
      a2[1] = v35 + 1;
      a2[2] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v21++ = *(&v81 + k);
    }

    a2[1] = v21;
  }

  v40 = a2[2] - *a2;
  if (v40 < &v21[-*a2 + 8])
  {
    std::vector<unsigned char>::reserve(a2, (2 * v40) | 1);
    v21 = a2[1];
  }

  for (m = 0; m != 8; ++m)
  {
    v42 = a2[2];
    if (v21 >= v42)
    {
      v43 = *a2;
      v44 = &v21[-*a2];
      v45 = (v44 + 1);
      if ((v44 + 1) < 0)
      {
        goto LABEL_114;
      }

      v46 = v42 - v43;
      if (2 * v46 > v45)
      {
        v45 = 2 * v46;
      }

      if (v46 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v47 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        operator new();
      }

      v48 = &v21[-*a2];
      *v44 = *(&v80 + m);
      v21 = v44 + 1;
      memcpy(0, v43, v48);
      *a2 = 0;
      a2[1] = v44 + 1;
      a2[2] = 0;
      if (v43)
      {
        operator delete(v43);
      }
    }

    else
    {
      *v21++ = *(&v80 + m);
    }

    a2[1] = v21;
  }

  v49 = a2[2] - *a2;
  if (v49 < &v21[-*a2 + 8])
  {
    std::vector<unsigned char>::reserve(a2, (2 * v49) | 1);
    v21 = a2[1];
  }

  for (n = 0; n != 8; ++n)
  {
    v51 = a2[2];
    if (v21 >= v51)
    {
      v52 = *a2;
      v53 = &v21[-*a2];
      v54 = (v53 + 1);
      if ((v53 + 1) < 0)
      {
        goto LABEL_114;
      }

      v55 = v51 - v52;
      if (2 * v55 > v54)
      {
        v54 = 2 * v55;
      }

      if (v55 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v56 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v56 = v54;
      }

      if (v56)
      {
        operator new();
      }

      v57 = &v21[-*a2];
      *v53 = *(&v79 + n);
      v21 = v53 + 1;
      memcpy(0, v52, v57);
      *a2 = 0;
      a2[1] = v53 + 1;
      a2[2] = 0;
      if (v52)
      {
        operator delete(v52);
      }
    }

    else
    {
      *v21++ = *(&v79 + n);
    }

    a2[1] = v21;
  }

  v78 = a9;
  v58 = a2[2] - *a2;
  if (v58 < &v21[-*a2 + 8])
  {
    std::vector<unsigned char>::reserve(a2, (2 * v58) | 1);
    v21 = a2[1];
  }

  for (ii = 0; ii != 8; ++ii)
  {
    v60 = a2[2];
    if (v21 >= v60)
    {
      v61 = *a2;
      v62 = &v21[-*a2];
      v63 = (v62 + 1);
      if ((v62 + 1) < 0)
      {
        goto LABEL_114;
      }

      v64 = v60 - v61;
      if (2 * v64 > v63)
      {
        v63 = 2 * v64;
      }

      if (v64 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v65 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v65 = v63;
      }

      if (v65)
      {
        operator new();
      }

      v66 = &v21[-*a2];
      *v62 = *(&v78 + ii);
      v21 = v62 + 1;
      memcpy(0, v61, v66);
      *a2 = 0;
      a2[1] = v62 + 1;
      a2[2] = 0;
      if (v61)
      {
        operator delete(v61);
      }
    }

    else
    {
      *v21++ = *(&v78 + ii);
    }

    a2[1] = v21;
  }

  v78 = a10;
  v67 = a2[2] - *a2;
  if (v67 < &v21[-*a2 + 8])
  {
    std::vector<unsigned char>::reserve(a2, (2 * v67) | 1);
    v21 = a2[1];
  }

  for (jj = 0; jj != 8; ++jj)
  {
    v69 = a2[2];
    if (v21 >= v69)
    {
      v70 = *a2;
      v71 = &v21[-*a2];
      v72 = (v71 + 1);
      if ((v71 + 1) < 0)
      {
        goto LABEL_114;
      }

      v73 = v69 - v70;
      if (2 * v73 > v72)
      {
        v72 = 2 * v73;
      }

      if (v73 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v74 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v74 = v72;
      }

      if (v74)
      {
        operator new();
      }

      v75 = &v21[-*a2];
      *v71 = *(&v78 + jj);
      v21 = v71 + 1;
      memcpy(0, v70, v75);
      *a2 = 0;
      a2[1] = v71 + 1;
      a2[2] = 0;
      if (v70)
      {
        operator delete(v70);
      }
    }

    else
    {
      *v21++ = *(&v78 + jj);
    }

    a2[1] = v21;
  }
}

uint64_t ShaderDebugger::Metadata::MDSerializer::serializeBasicType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int16 a8, uint64_t a9)
{
  v37[0] = 3;
  v37[2] = v37;
  v16 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, v37);
  v17 = v16;
  v19 = (v16 + 5);
  v18 = v16[5];
  v20 = v16[6];
  v21 = v18;
  if (v18 != v20)
  {
    while (*v21 != a2)
    {
      v21 += 8;
      if (v21 == v20)
      {
        v21 = v16[6];
        break;
      }
    }
  }

  if (v20 != v21)
  {
    v22 = v21 - v18;
    if (v21 - v18 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(v16, (v16 + 5), a2))
    {
      return v22 >> 3;
    }
  }

  v35 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(a1, v19, a2);
  ShaderDebugger::Metadata::MDSerializer::serializeTypeBase(a1, v17 + 11, v35, a3, a4, a5, a6, a7, a8, 0);
  v23 = v17[12];
  v24 = v17[11];
  v25 = v17[13] - v24;
  if (v25 < &v23[-v24 + 4])
  {
    std::vector<unsigned char>::reserve(v17 + 11, (2 * v25) | 1);
    v23 = v17[12];
  }

  for (i = 0; i != 4; ++i)
  {
    v27 = v17[13];
    if (v23 >= v27)
    {
      v28 = v17[11];
      v29 = (v23 - v28);
      v30 = v23 - v28 + 1;
      if (v30 < 0)
      {
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
      }

      v31 = v27 - v28;
      if (2 * v31 > v30)
      {
        v30 = 2 * v31;
      }

      if (v31 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v32 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v30;
      }

      if (v32)
      {
        operator new();
      }

      v33 = v23 - v28;
      *v29 = *(&a9 + i);
      v23 = v29 + 1;
      memcpy(0, v28, v33);
      v17[11] = 0;
      v17[12] = v29 + 1;
      v17[13] = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v23++ = *(&a9 + i);
    }

    v17[12] = v23;
  }

  return v35;
}

uint64_t ShaderDebugger::Metadata::MDSerializer::serializeDerivedType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int16 a8, uint64_t a9, unsigned int a10)
{
  v49 = 3;
  v50 = &v49;
  v17 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, &v49);
  v18 = v17;
  v20 = (v17 + 5);
  v19 = v17[5];
  v21 = v17[6];
  v22 = v19;
  if (v19 != v21)
  {
    while (*v22 != a2)
    {
      v22 += 8;
      if (v22 == v21)
      {
        v22 = v17[6];
        break;
      }
    }
  }

  if (v21 != v22)
  {
    v23 = v22 - v19;
    if (v22 - v19 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(v17, (v17 + 5), a2))
    {
      return v23 >> 3;
    }
  }

  v46 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(a1, v20, a2);
  ShaderDebugger::Metadata::MDSerializer::serializeTypeBase(a1, v18 + 11, v46, a3, a4, a5, a6, a7, a8, 2);
  v24 = v18[12];
  v25 = v18[11];
  v26 = v18[13] - v25;
  if (v26 < &v24[-v25 + 8])
  {
    std::vector<unsigned char>::reserve(v18 + 11, (2 * v26) | 1);
    v24 = v18[12];
  }

  v27 = 0;
  v48 = a10;
  do
  {
    v28 = v18[13];
    if (v24 >= v28)
    {
      v29 = v18[11];
      v30 = (v24 - v29);
      v31 = v24 - v29 + 1;
      if (v31 < 0)
      {
LABEL_43:
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
      }

      v32 = v28 - v29;
      if (2 * v32 > v31)
      {
        v31 = 2 * v32;
      }

      if (v32 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v33 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v31;
      }

      if (v33)
      {
        operator new();
      }

      v34 = v24 - v29;
      *v30 = *(&a9 + v27);
      v24 = v30 + 1;
      memcpy(0, v29, v34);
      v18[11] = 0;
      v18[12] = v30 + 1;
      v18[13] = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v24++ = *(&a9 + v27);
    }

    v18[12] = v24;
    ++v27;
  }

  while (v27 != 8);
  v50 = v48;
  v35 = v18[11];
  v36 = v18[13] - v35;
  if (v36 < &v24[-v35 + 8])
  {
    std::vector<unsigned char>::reserve(v18 + 11, (2 * v36) | 1);
    v24 = v18[12];
  }

  for (i = 0; i != 8; ++i)
  {
    v38 = v18[13];
    if (v24 >= v38)
    {
      v39 = v18[11];
      v40 = (v24 - v39);
      v41 = v24 - v39 + 1;
      if (v41 < 0)
      {
        goto LABEL_43;
      }

      v42 = v38 - v39;
      if (2 * v42 > v41)
      {
        v41 = 2 * v42;
      }

      if (v42 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v43 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v41;
      }

      if (v43)
      {
        operator new();
      }

      v44 = v24 - v39;
      *v40 = *(&v50 + i);
      v24 = v40 + 1;
      memcpy(0, v39, v44);
      v18[11] = 0;
      v18[12] = v40 + 1;
      v18[13] = 0;
      if (v39)
      {
        operator delete(v39);
      }
    }

    else
    {
      *v24++ = *(&v50 + i);
    }

    v18[12] = v24;
  }

  return v46;
}

uint64_t ShaderDebugger::Metadata::MDSerializer::serializeCompositeType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int16 a8, uint64_t a9, uint64_t **a10)
{
  v73 = 3;
  v74 = &v73;
  v18 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, &v73);
  v19 = v18;
  v21 = (v18 + 5);
  v20 = v18[5];
  v22 = v18[6];
  v69 = a8;
  v23 = v20;
  if (v20 != v22)
  {
    while (*v23 != a2)
    {
      v23 += 8;
      if (v23 == v22)
      {
        v23 = v18[6];
        break;
      }
    }
  }

  if (v22 != v23)
  {
    v24 = v23 - v20;
    if (v23 - v20 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(v18, (v18 + 5), a2))
    {
      return v24 >> 3;
    }
  }

  v71 = a10;
  v68 = v69;
  v70 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(a1, v21, a2);
  ShaderDebugger::Metadata::MDSerializer::serializeTypeBase(a1, v19 + 11, v70, a3, a4, a5, a6, a7, v68, 1);
  v25 = v19[12];
  v26 = v19[11];
  v27 = v19[13] - v26;
  if (v27 < &v25[-v26 + 8])
  {
    std::vector<unsigned char>::reserve(v19 + 11, (2 * v27) | 1);
    v25 = v19[12];
  }

  for (i = 0; i != 8; ++i)
  {
    v29 = v19[13];
    if (v25 >= v29)
    {
      v30 = v19[11];
      v31 = (v25 - v30);
      v32 = v25 - v30 + 1;
      if (v32 < 0)
      {
LABEL_77:
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
      }

      v33 = v29 - v30;
      if (2 * v33 > v32)
      {
        v32 = 2 * v33;
      }

      if (v33 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v34 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        operator new();
      }

      v35 = v25 - v30;
      *v31 = *(&a9 + i);
      v25 = v31 + 1;
      memcpy(0, v30, v35);
      v19[11] = 0;
      v19[12] = v31 + 1;
      v19[13] = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *v25++ = *(&a9 + i);
    }

    v19[12] = v25;
  }

  v74 = (v71[1] - *v71) >> 4;
  v36 = v19[11];
  v37 = v19[13] - v36;
  if (v37 < &v25[-v36 + 8])
  {
    std::vector<unsigned char>::reserve(v19 + 11, (2 * v37) | 1);
    v25 = v19[12];
  }

  for (j = 0; j != 8; ++j)
  {
    v39 = v19[13];
    if (v25 >= v39)
    {
      v40 = v19[11];
      v41 = (v25 - v40);
      v42 = v25 - v40 + 1;
      if (v42 < 0)
      {
        goto LABEL_77;
      }

      v43 = v39 - v40;
      if (2 * v43 > v42)
      {
        v42 = 2 * v43;
      }

      if (v43 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v44 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        operator new();
      }

      v45 = v25 - v40;
      *v41 = *(&v74 + j);
      v25 = v41 + 1;
      memcpy(0, v40, v45);
      v19[11] = 0;
      v19[12] = v41 + 1;
      v19[13] = 0;
      if (v40)
      {
        operator delete(v40);
      }
    }

    else
    {
      *v25++ = *(&v74 + j);
    }

    v19[12] = v25;
  }

  v46 = *v71;
  for (k = v71[1]; v46 != k; v46 += 2)
  {
    v74 = *v46;
    v47 = v19[11];
    v48 = v19[13] - v47;
    if (v48 < &v25[-v47 + 8])
    {
      std::vector<unsigned char>::reserve(v19 + 11, (2 * v48) | 1);
      v25 = v19[12];
    }

    for (m = 0; m != 8; ++m)
    {
      v50 = v19[13];
      if (v25 >= v50)
      {
        v51 = v19[11];
        v52 = (v25 - v51);
        v53 = v25 - v51 + 1;
        if (v53 < 0)
        {
          goto LABEL_77;
        }

        v54 = v50 - v51;
        if (2 * v54 > v53)
        {
          v53 = 2 * v54;
        }

        if (v54 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v55 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v55 = v53;
        }

        if (v55)
        {
          operator new();
        }

        v56 = v25 - v51;
        *v52 = *(&v74 + m);
        v25 = v52 + 1;
        memcpy(0, v51, v56);
        v19[11] = 0;
        v19[12] = v52 + 1;
        v19[13] = 0;
        if (v51)
        {
          operator delete(v51);
        }
      }

      else
      {
        *v25++ = *(&v74 + m);
      }

      v19[12] = v25;
    }

    v74 = v46[1];
    v57 = v19[11];
    v58 = v19[13] - v57;
    if (v58 < &v25[-v57 + 8])
    {
      std::vector<unsigned char>::reserve(v19 + 11, (2 * v58) | 1);
      v25 = v19[12];
    }

    for (n = 0; n != 8; ++n)
    {
      v60 = v19[13];
      if (v25 >= v60)
      {
        v61 = v19[11];
        v62 = (v25 - v61);
        v63 = v25 - v61 + 1;
        if (v63 < 0)
        {
          goto LABEL_77;
        }

        v64 = v60 - v61;
        if (2 * v64 > v63)
        {
          v63 = 2 * v64;
        }

        if (v64 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v65 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v65 = v63;
        }

        if (v65)
        {
          operator new();
        }

        v66 = v25 - v61;
        *v62 = *(&v74 + n);
        v25 = v62 + 1;
        memcpy(0, v61, v66);
        v19[11] = 0;
        v19[12] = v62 + 1;
        v19[13] = 0;
        if (v61)
        {
          operator delete(v61);
        }
      }

      else
      {
        *v25++ = *(&v74 + n);
      }

      v19[12] = v25;
    }
  }

  return v70;
}

uint64_t ShaderDebugger::Metadata::MDSerializer::serializeSubroutineType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int16 a8, uint64_t **a9)
{
  v61 = 3;
  v62 = &v61;
  v17 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, &v61);
  v18 = v17;
  v20 = (v17 + 5);
  v19 = v17[5];
  v21 = v17[6];
  v59 = a3;
  if (v19 == v21)
  {
    v23 = a7;
    v22 = v17[5];
  }

  else
  {
    v22 = v17[5];
    while (*v22 != a2)
    {
      v22 += 8;
      if (v22 == v21)
      {
        v22 = v17[6];
        break;
      }
    }

    v23 = a7;
  }

  if (v21 != v22)
  {
    v24 = v22 - v19;
    if (v22 - v19 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(v17, (v17 + 5), a2))
    {
      return v24 >> 3;
    }
  }

  v58 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(a1, v20, a2);
  ShaderDebugger::Metadata::MDSerializer::serializeTypeBase(a1, v18 + 11, v58, v59, a4, a5, a6, v23, a8, 3);
  v62 = (a9[1] - *a9) >> 4;
  v25 = v18[12];
  v26 = v18[11];
  v27 = v18[13] - v26;
  if (v27 < &v25[-v26 + 8])
  {
    std::vector<unsigned char>::reserve(v18 + 11, (2 * v27) | 1);
    v25 = v18[12];
  }

  for (i = 0; i != 8; ++i)
  {
    v29 = v18[13];
    if (v25 >= v29)
    {
      v30 = v18[11];
      v31 = (v25 - v30);
      v32 = v25 - v30 + 1;
      if (v32 < 0)
      {
LABEL_64:
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
      }

      v33 = v29 - v30;
      if (2 * v33 > v32)
      {
        v32 = 2 * v33;
      }

      if (v33 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v34 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        operator new();
      }

      v35 = v25 - v30;
      *v31 = *(&v62 + i);
      v25 = v31 + 1;
      memcpy(0, v30, v35);
      v18[11] = 0;
      v18[12] = v31 + 1;
      v18[13] = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *v25++ = *(&v62 + i);
    }

    v18[12] = v25;
  }

  v36 = *a9;
  v60 = a9[1];
  if (*a9 != v60)
  {
    do
    {
      v62 = *v36;
      v37 = v18[11];
      v38 = v18[13] - v37;
      if (v38 < &v25[-v37 + 8])
      {
        std::vector<unsigned char>::reserve(v18 + 11, (2 * v38) | 1);
        v25 = v18[12];
      }

      for (j = 0; j != 8; ++j)
      {
        v40 = v18[13];
        if (v25 >= v40)
        {
          v41 = v18[11];
          v42 = (v25 - v41);
          v43 = v25 - v41 + 1;
          if (v43 < 0)
          {
            goto LABEL_64;
          }

          v44 = v40 - v41;
          if (2 * v44 > v43)
          {
            v43 = 2 * v44;
          }

          if (v44 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v45 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v45 = v43;
          }

          if (v45)
          {
            operator new();
          }

          v46 = v25 - v41;
          *v42 = *(&v62 + j);
          v25 = v42 + 1;
          memcpy(0, v41, v46);
          v18[11] = 0;
          v18[12] = v42 + 1;
          v18[13] = 0;
          if (v41)
          {
            operator delete(v41);
          }
        }

        else
        {
          *v25++ = *(&v62 + j);
        }

        v18[12] = v25;
      }

      v62 = v36[1];
      v47 = v18[11];
      v48 = v18[13] - v47;
      if (v48 < &v25[-v47 + 8])
      {
        std::vector<unsigned char>::reserve(v18 + 11, (2 * v48) | 1);
        v25 = v18[12];
      }

      for (k = 0; k != 8; ++k)
      {
        v50 = v18[13];
        if (v25 >= v50)
        {
          v51 = v18[11];
          v52 = (v25 - v51);
          v53 = v25 - v51 + 1;
          if (v53 < 0)
          {
            goto LABEL_64;
          }

          v54 = v50 - v51;
          if (2 * v54 > v53)
          {
            v53 = 2 * v54;
          }

          if (v54 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v55 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v55 = v53;
          }

          if (v55)
          {
            operator new();
          }

          v56 = v25 - v51;
          *v52 = *(&v62 + k);
          v25 = v52 + 1;
          memcpy(0, v51, v56);
          v18[11] = 0;
          v18[12] = v52 + 1;
          v18[13] = 0;
          if (v51)
          {
            operator delete(v51);
          }
        }

        else
        {
          *v25++ = *(&v62 + k);
        }

        v18[12] = v25;
      }

      v36 += 2;
    }

    while (v36 != v60);
  }

  return v58;
}

void ShaderDebugger::Metadata::MDSerializer::write(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a4;
  v7 = a2[2] - *a2;
  if (v7 < a4 - *a2 + a2[1])
  {
    std::vector<unsigned char>::reserve(a2, (2 * v7) | 1);
  }

  if (v4)
  {
    v8 = a2[1];
    do
    {
      v9 = a2[2];
      if (v8 >= v9)
      {
        v10 = *a2;
        v11 = &v8[-*a2];
        v12 = (v11 + 1);
        if ((v11 + 1) < 0)
        {
          std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
        }

        v13 = v9 - v10;
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          operator new();
        }

        v15 = &v8[-*a2];
        *v11 = *a3;
        v8 = v11 + 1;
        memcpy(0, v10, v15);
        *a2 = 0;
        a2[1] = v11 + 1;
        a2[2] = 0;
        if (v10)
        {
          operator delete(v10);
        }
      }

      else
      {
        *v8++ = *a3;
      }

      ++a3;
      a2[1] = v8;
      --v4;
    }

    while (v4);
  }
}

void *std::vector<unsigned char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(void *a1, const void **a2)
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

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v7 = __src;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v10 - v9 >= a5)
  {
    v15 = v9 - __dst;
    if (v9 - __dst >= a5)
    {
      v19 = &__dst[a5];
      v20 = &v9[-a5];
      v21 = *(a1 + 8);
      if (v9 >= a5)
      {
        do
        {
          v22 = *v20++;
          *v21++ = v22;
        }

        while (v20 != v9);
      }

      *(a1 + 8) = v21;
      if (v9 != v19)
      {
        memmove(&__dst[a5], __dst, v9 - v19);
      }

      v23 = v5;
      v24 = v7;
      v25 = v6;
    }

    else
    {
      v16 = &__src[v15];
      if (&__src[v15] == a4)
      {
        v17 = *(a1 + 8);
        v18 = v17;
      }

      else
      {
        v17 = (&v9[a4] - v16);
        v18 = *(a1 + 8);
        do
        {
          v34 = *v16++;
          *v18++ = v34;
        }

        while (v16 != a4);
      }

      *(a1 + 8) = v17;
      if (v15 < 1)
      {
        return v5;
      }

      v35 = &__dst[a5];
      v36 = &v17[-a5];
      v37 = v17;
      if (&v17[-a5] < v9)
      {
        do
        {
          v38 = *v36++;
          *v37++ = v38;
        }

        while (v36 != v9);
      }

      *(a1 + 8) = v37;
      if (v18 != v35)
      {
        memmove(&__dst[a5], __dst, v17 - v35);
      }

      v23 = v5;
      v24 = v7;
      v25 = v15;
    }

    memmove(v23, v24, v25);
    return v5;
  }

  v11 = *a1;
  v12 = &v9[a5 - *a1];
  if (v12 < 0)
  {
    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
  }

  v13 = v10 - v11;
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    operator new();
  }

  v26 = (__dst - v11);
  v27 = (__dst - v11 + a5);
  v28 = (__dst - v11);
  do
  {
    v29 = *v7++;
    *v28++ = v29;
    --v6;
  }

  while (v6);
  v30 = *(a1 + 8) - __dst;
  memcpy(v27, __dst, v30);
  v31 = &v27[v30];
  *(a1 + 8) = v5;
  v32 = *a1;
  v33 = &v26[*a1 - v5];
  memcpy(v33, *a1, &v5[-*a1]);
  *a1 = v33;
  *(a1 + 8) = v31;
  *(a1 + 16) = 0;
  if (v32)
  {
    operator delete(v32);
  }

  return v26;
}

void sub_24D72AE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = DYReplayController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_24D72B054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24D72BA14(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_24D72E158(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

uint64_t std::deque<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 9];
    v7 = (*v6 + 8 * (v5 & 0x1FF));
    v8 = *(v2 + (((a1[5] + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v5) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7++;

        if (v7 - *v6 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 256;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = 512;
  }

  a1[4] = v12;
LABEL_16:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<void({block_pointer} {__strong}*)(void),std::allocator<void({block_pointer} {__strong}*)(void)>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<void({block_pointer} {__strong}*)(void),std::allocator<void({block_pointer} {__strong}*)(void)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::deque<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::push_back(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = ((v5 - v4) << 6) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF));
  }

  result = MEMORY[0x253032370](*a2);
  *v8 = result;
  ++a1[5];
  return result;
}

void *std::deque<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<void({block_pointer} {__strong}*)(void),std::allocator<void({block_pointer} {__strong}*)(void)>>::emplace_back<void({block_pointer} {__strong}*&)(void)>(a1, &v10);
}

void sub_24D72F100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<void({block_pointer} {__strong}*)(void),std::allocator<void({block_pointer} {__strong}*)(void)>>::emplace_back<void({block_pointer} {__strong}*&)(void)>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<void({block_pointer} {__strong}*)(void),std::allocator<void({block_pointer} {__strong}*)(void)>>::emplace_front<void({block_pointer} {__strong}*)(void)>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<void({block_pointer} {__strong}*)(void),std::allocator<void({block_pointer} {__strong}*)(void)> &>::emplace_back<void({block_pointer} {__strong}*)(void)>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<void({block_pointer} {__strong}*)(void),std::allocator<void({block_pointer} {__strong}*)(void)> &>::emplace_front<void({block_pointer} {__strong}*&)(void)>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t std::deque<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::pop_front(int64x2_t *a1)
{
  a1[2] = vaddq_s64(a1[2], xmmword_24D740DF0);

  return std::deque<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

uint64_t GPUTools::MTL::CaptureHelper::SaveObject()
{
  return MEMORY[0x2821846C0]();
}

{
  return MEMORY[0x2821846C8]();
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