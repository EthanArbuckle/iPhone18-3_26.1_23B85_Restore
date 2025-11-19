uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    if (result + 16 != a2)
    {
      for (i = result + 8; ; i += 16)
      {
        v4 = result;
        result = v2;
        v5 = *(v4 + 16);
        v6 = *v4;
        if (v5 < *v4)
        {
          break;
        }

        if (v6 >= v5)
        {
          v7 = *(v4 + 24);
          if (v7 < *(v4 + 8))
          {
            goto LABEL_6;
          }
        }

LABEL_14:
        v2 = result + 16;
        if (result + 16 == a2)
        {
          return result;
        }
      }

      v7 = *(v4 + 24);
LABEL_6:
      for (j = i; ; j -= 16)
      {
        *(j + 8) = v6;
        *(j + 16) = *j;
        v6 = *(j - 24);
        if (v5 >= v6 && (v6 < v5 || v7 >= *(j - 16)))
        {
          break;
        }
      }

      *(j - 8) = v5;
      *j = v7;
      goto LABEL_14;
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<float,unsigned long> *,std::__less<void,void> &>(unint64_t a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 - 16);
  if (*a1 < v4 || v4 >= v2 && v3 < *(a2 - 8))
  {
    i = a1;
    do
    {
      v6 = *(i + 16);
      i += 16;
      v7 = v6;
    }

    while (v2 >= v6 && (v7 < v2 || v3 >= *(i + 8)));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 16; v2 < v4 || v4 >= v2 && v3 < *(a2 + 8); a2 -= 16)
    {
      v8 = *(a2 - 16);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = *(i + 16);
      i += 16;
      v9 = v11;
      v12 = *(i - 8);
      *(i - 8) = *(a2 + 8);
      *(a2 + 8) = v12;
      while (v2 >= v9 && (v9 < v2 || v3 >= *(i + 8)))
      {
        v13 = *(i + 16);
        i += 16;
        v9 = v13;
      }

      do
      {
        do
        {
          v14 = *(a2 - 16);
          a2 -= 16;
          v10 = v14;
        }

        while (v2 < v14);
      }

      while (v10 >= v2 && v3 < *(a2 + 8));
    }

    while (i < a2);
  }

  if (i - 16 != a1)
  {
    *a1 = *(i - 16);
    *(a1 + 8) = *(i - 8);
  }

  *(i - 16) = v2;
  *(i - 8) = v3;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<float,unsigned long> *,std::__less<void,void> &>(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  while (1)
  {
    v5 = *(a1 + v2 + 16);
    if (v5 >= v3 && (v3 < v5 || *(a1 + v2 + 24) >= v4))
    {
      break;
    }

    v2 += 16;
  }

  v6 = a1 + v2 + 16;
  if (v2)
  {
    do
    {
      v7 = *(a2 - 16);
      a2 -= 16;
      v8 = v7;
    }

    while (v7 >= v3 && (v3 < v8 || *(a2 + 8) >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v9 = *(a2 - 16);
        a2 -= 16;
        v10 = v9;
        if (v9 < v3)
        {
          break;
        }

        if (v3 < v10)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 8) >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = a1 + v2 + 16;
  }

  else
  {
    v12 = *a2;
    v13 = a1 + v2 + 16;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = *(v13 + 8);
      *(v13 + 8) = *(v14 + 8);
      *(v14 + 8) = v15;
      do
      {
        do
        {
          v16 = *(v13 + 16);
          v13 += 16;
          v5 = v16;
        }

        while (v16 < v3);
      }

      while (v3 >= v5 && *(v13 + 8) < v4);
      do
      {
        v17 = *(v14 - 16);
        v14 -= 16;
        v12 = v17;
      }

      while (v17 >= v3 && (v3 < v12 || *(v14 + 8) >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 16 != a1)
  {
    *a1 = *(v13 - 16);
    *(a1 + 8) = *(v13 - 8);
  }

  *(v13 - 16) = v3;
  *(v13 - 8) = v4;
  return v13 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,0>(a1, a1 + 16, a2 - 16);
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,0>(a1, a1 + 16, a1 + 32);
        v23 = *(a2 - 16);
        v24 = *(a1 + 32);
        if (v23 >= v24)
        {
          if (v24 < v23)
          {
            return 1;
          }

          v26 = *(a2 - 8);
          v25 = *(a1 + 40);
          if (v26 >= v25)
          {
            return 1;
          }
        }

        else
        {
          v25 = *(a1 + 40);
          v26 = *(a2 - 8);
        }

        *(a1 + 32) = v23;
        *(a2 - 16) = v24;
        *(a1 + 40) = v26;
        *(a2 - 8) = v25;
        v27 = *(a1 + 32);
        v28 = *(a1 + 16);
        if (v27 >= v28)
        {
          if (v28 < v27)
          {
            return 1;
          }

          v30 = *(a1 + 40);
          v29 = *(a1 + 24);
          if (v30 >= v29)
          {
            return 1;
          }
        }

        else
        {
          v29 = *(a1 + 24);
          v30 = *(a1 + 40);
        }

        *(a1 + 16) = v27;
        *(a1 + 32) = v28;
        *(a1 + 24) = v30;
        *(a1 + 40) = v29;
        v31 = *a1;
        if (v27 >= *a1)
        {
          if (v31 < v27)
          {
            return 1;
          }

          v32 = *(a1 + 8);
          if (v30 >= v32)
          {
            return 1;
          }
        }

        else
        {
          v32 = *(a1 + 8);
        }

        *a1 = v27;
        *(a1 + 16) = v31;
        *(a1 + 8) = v30;
        result = 1;
        *(a1 + 24) = v32;
        return result;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16);
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
      v5 = *(a2 - 16);
      v6 = *a1;
      if (v5 < *a1)
      {
        v7 = *(a1 + 8);
        v8 = *(a2 - 8);
LABEL_6:
        *a1 = v5;
        *(a2 - 16) = v6;
        *(a1 + 8) = v8;
        result = 1;
        *(a2 - 8) = v7;
        return result;
      }

      if (v6 >= v5)
      {
        v8 = *(a2 - 8);
        v7 = *(a1 + 8);
        if (v8 < v7)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

  v10 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,0>(a1, a1 + 16, a1 + 32);
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = *v11;
    v15 = *v10;
    if (*v11 >= *v10)
    {
      if (v15 < v14)
      {
        goto LABEL_28;
      }

      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
      if (v16 >= v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
    }

    *v11 = v15;
    *(v11 + 8) = v17;
    v18 = v12;
    while (1)
    {
      v19 = a1 + v18;
      v20 = *(a1 + v18 + 16);
      if (v14 >= v20)
      {
        break;
      }

      v21 = *(v19 + 24);
LABEL_21:
      *(v19 + 32) = v20;
      *(a1 + v18 + 40) = v21;
      v18 -= 16;
      if (v18 == -32)
      {
        v22 = a1;
        goto LABEL_27;
      }
    }

    if (v20 >= v14)
    {
      v21 = *(a1 + v18 + 24);
      if (v16 < v21)
      {
        goto LABEL_21;
      }
    }

    v22 = a1 + v18 + 32;
LABEL_27:
    *v22 = v14;
    *(v22 + 8) = v16;
    if (++v13 != 8)
    {
LABEL_28:
      v10 = v11;
      v12 += 16;
      v11 += 16;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 16 == a2;
  }
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,std::pair<float,unsigned long> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = a1 + 16 * v9;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *>(a1, a4, v8, v11);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }

    i = a2;
    if (a2 != a3)
    {
      for (i = a2; i != a3; i += 16)
      {
        v13 = *i;
        v14 = *a1;
        if (*i >= *a1)
        {
          if (v14 < v13)
          {
            continue;
          }

          v15 = *(i + 8);
          v16 = *(a1 + 8);
          if (v15 >= v16)
          {
            continue;
          }
        }

        else
        {
          v15 = *(i + 8);
          v16 = *(a1 + 8);
        }

        *i = v14;
        *a1 = v13;
        *(i + 8) = v16;
        *(a1 + 8) = v15;
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *>(a1, a4, v8, a1);
      }
    }

    if (v8 >= 2)
    {
      v17 = a2 - 16;
      do
      {
        v18 = *a1;
        v19 = *(a1 + 8);
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *>(a1, a4, v8);
        if (v17 == v20)
        {
          *v20 = v18;
          *(v20 + 8) = v19;
        }

        else
        {
          *v20 = *v17;
          *(v20 + 8) = *(v17 + 8);
          *v17 = v18;
          *(v17 + 8) = v19;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *>(a1, v20 + 16, a4, (v20 + 16 - a1) >> 4);
        }

        v17 -= 16;
      }

      while (v8-- > 2);
    }

    return i;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = result + 16 * v7;
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 16);
        if (*v8 < v10 || v10 >= *v8 && *(v8 + 8) < *(v8 + 24))
        {
          v8 += 16;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v12 >= v11)
        {
          v14 = *(v8 + 8);
          v13 = *(a4 + 8);
          if (v14 < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = *(a4 + 8);
          v14 = *(v8 + 8);
        }

        *a4 = v11;
        *(a4 + 8) = v14;
        if (v5 >= v7)
        {
          while (1)
          {
            v16 = 2 * v7;
            v7 = (2 * v7) | 1;
            v15 = result + 16 * v7;
            v17 = v16 + 2;
            if (v17 < a3)
            {
              v18 = *(v15 + 16);
              if (*v15 < v18 || v18 >= *v15 && *(v15 + 8) < *(v15 + 24))
              {
                v15 += 16;
                v7 = v17;
              }
            }

            v19 = *v15;
            if (*v15 < v12)
            {
              break;
            }

            v20 = *(v15 + 8);
            if (v12 >= v19 && v20 < v13)
            {
              break;
            }

            *v8 = v19;
            *(v8 + 8) = v20;
            v8 = v15;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v15 = v8;
LABEL_14:
        *v15 = v12;
        *(v15 + 8) = v13;
      }
    }
  }

  return result;
}

float std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    v5 = a1 + 16 * v3;
    a1 = v5 + 16;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = *(v5 + 32);
      v9 = *(v5 + 16);
      if (v9 < v8 || v8 >= v9 && *(v5 + 24) < *(v5 + 40))
      {
        a1 = v5 + 32;
        v3 = v7;
      }
    }

    result = *a1;
    *v4 = *a1;
    *(v4 + 8) = *(a1 + 8);
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = result + 16 * (v4 >> 1);
    v7 = *v6;
    v8 = *(a2 - 16);
    if (*v6 >= v8)
    {
      if (v8 < v7)
      {
        return result;
      }

      v10 = *(v6 + 8);
      v9 = *(a2 - 8);
      if (v10 >= v9)
      {
        return result;
      }
    }

    else
    {
      v9 = *(a2 - 8);
      v10 = *(v6 + 8);
    }

    *(a2 - 16) = v7;
    *(a2 - 8) = v10;
    if (v4 >= 2)
    {
      while (1)
      {
        v12 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v11 = result + 16 * v5;
        v13 = *v11;
        if (*v11 >= v8)
        {
          if (v8 < v13)
          {
            break;
          }

          v14 = *(v11 + 8);
          if (v14 >= v9)
          {
            break;
          }
        }

        else
        {
          v14 = *(v11 + 8);
        }

        *v6 = v13;
        *(v6 + 8) = v14;
        v6 = result + 16 * v5;
        if (v12 <= 1)
        {
          goto LABEL_11;
        }
      }
    }

    v11 = v6;
LABEL_11:
    *v11 = v8;
    *(v11 + 8) = v9;
  }

  return result;
}

void *BM_malloc(size_t a1)
{
  v2 = *mallocListTLS();
  if (!v2)
  {
    operator new();
  }

  v3 = freeListsTLS();
  v4 = *v3;
  if (!*v3)
  {
    v5 = v3;
    v4 = malloc_type_calloc(0x10uLL, 8uLL, 0x2004093837F09uLL);
    *v5 = v4;
  }

  v6 = allocCountsTLS();
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = malloc_type_calloc(0x10uLL, 4uLL, 0x100004052888210uLL);
    *v8 = v7;
  }

  v9 = a1 - 1;
  if (a1 - 1 < 0x78)
  {
    v11 = (v9 >> 3) + 1;
    result = v4[v11];
    if (!result)
    {
      v12 = 0x100000 - 8 * (0x20000 % v11);
      result = malloc_type_malloc(v12, 0x74B148C0uLL);
      if (!result)
      {
        return result;
      }

      v13 = result;
      v15 = *(v2 + 8);
      v14 = *(v2 + 16);
      if (v15 >= v14)
      {
        v17 = (v15 - *v2) >> 3;
        if ((v17 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v18 = v14 - *v2;
        v19 = v18 >> 2;
        if (v18 >> 2 <= (v17 + 1))
        {
          v19 = v17 + 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(v2, v20);
        }

        *(8 * v17) = result;
        v16 = 8 * v17 + 8;
        v21 = *(v2 + 8) - *v2;
        v22 = (8 * v17 - v21);
        memcpy(v22, *v2, v21);
        v23 = *v2;
        *v2 = v22;
        *(v2 + 8) = v16;
        *(v2 + 16) = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v15 = result;
        v16 = (v15 + 1);
      }

      v24 = ~(v9 >> 3);
      *(v2 + 8) = v16;
      result = (v13 + v12);
      v25 = &v13[v24] + v12;
      v26 = v4[v11];
      if (v25 >= v13)
      {
        v27 = 8 * v24;
        do
        {
          result = (result + v27);
          *result = v26;
          v4[v11] = result;
          v26 = v25;
          v25 += v27;
        }

        while (&result[v27 / 8] >= v13);
      }

      else
      {
        result = v4[v11];
      }

      ++v7[v11];
    }

    v4[v11] = *result;
  }

  else
  {

    return malloc_type_malloc(a1, 0x8D08AB17uLL);
  }

  return result;
}

void BM_free(void *a1, uint64_t a2)
{
  v4 = freeListsTLS();
  v5 = *v4;
  if (!*v4)
  {
    v5 = malloc_type_calloc(0x10uLL, 8uLL, 0x2004093837F09uLL);
    *v4 = v5;
  }

  if ((a2 - 1) < 0x78)
  {
    v6 = &v5[(a2 - 1) & 0xFFFFFFFFFFFFFFF8];
    *a1 = *(v6 + 1);
    *(v6 + 1) = a1;
  }

  else
  {

    free(a1);
  }
}

void BM_freeThread()
{
  v0 = mallocListTLS();
  v1 = *v0;
  if (!*v0)
  {
    operator new();
  }

  v2 = *v1;
  v3 = v1[1];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      free(v4);
    }

    while (v2 != v3);
    v2 = *v1;
  }

  v1[1] = v2;
  TLSWrapper<std::vector<void *>,1,true>::release(v0);
  v5 = allocCountsTLS();
  if (*v5)
  {
    free(*v5);
    *v5 = 0;
  }

  v6 = freeListsTLS();
  if (*v6)
  {
    free(*v6);
    *v6 = 0;
  }
}

void *TLSWrapper<std::vector<void *>,1,true>::release(void *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    result = MEMORY[0x1B8C85350](v1, 0x80C40D6874129);
    *v2 = 0;
  }

  return result;
}

uint64_t BM_printstats()
{
  result = allocCountsTLS();
  v1 = *result;
  if (!*result)
  {
    v2 = result;
    result = malloc_type_calloc(0x10uLL, 4uLL, 0x100004052888210uLL);
    v1 = result;
    *v2 = result;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E9848];
  do
  {
    if (*(v1 + 4 * v3))
    {
      result = fprintf(*v4, "%u blocks of %u-word chunks\n", *(v1 + 4 * v3), v3);
    }

    ++v3;
  }

  while (v3 != 16);
  return result;
}

void quasar::QuasarEuclid::~QuasarEuclid(void **this)
{
  *this = &unk_1F2D38260;
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  v4 = this + 9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = this[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void quasar::QuasarEuclid::createQuasarEuclid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39[2] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&v36, "euclid");
  if (a3 < 2)
  {
    if (a2 != 1)
    {
      if (!a2)
      {
        if ((v38 & 0x80u) == 0)
        {
          v5 = v38;
        }

        else
        {
          v5 = *v37;
        }

        v6 = __p;
        std::string::basic_string[abi:ne200100](__p, v5 + 1);
        if (SBYTE7(v20) < 0)
        {
          v6 = __p[0];
        }

        if (v5)
        {
          if ((v38 & 0x80u) == 0)
          {
            v7 = &v36;
          }

          else
          {
            v7 = v36;
          }

          memmove(v6, v7, v5);
        }

        *(v6 + v5) = 46;
        v8 = std::string::append(__p, "grapheme-encoder");
        v9 = v8->__r_.__value_.__r.__words[0];
        v39[0] = v8->__r_.__value_.__l.__size_;
        *(v39 + 7) = *(&v8->__r_.__value_.__r.__words[1] + 7);
        v10 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
        v8->__r_.__value_.__l.__size_ = 0;
        v8->__r_.__value_.__r.__words[2] = 0;
        v8->__r_.__value_.__r.__words[0] = 0;
        if (v38 < 0)
        {
          operator delete(v36);
        }

        v36 = v9;
        *v37 = v39[0];
        *&v37[7] = *(v39 + 7);
        v38 = v10;
        if (SBYTE7(v20) < 0)
        {
          operator delete(__p[0]);
        }

        operator new();
      }

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unrecognized EuclidEncoderType:", 31);
      MEMORY[0x1B8C84C00](v18, a2);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    if ((v38 & 0x80u) == 0)
    {
      v11 = v38;
    }

    else
    {
      v11 = *v37;
    }

    v12 = __p;
    std::string::basic_string[abi:ne200100](__p, v11 + 1);
    if (SBYTE7(v20) < 0)
    {
      v12 = __p[0];
    }

    if (v11)
    {
      if ((v38 & 0x80u) == 0)
      {
        v13 = &v36;
      }

      else
      {
        v13 = v36;
      }

      memmove(v12, v13, v11);
    }

    *(v12 + v11) = 46;
    v14 = std::string::append(__p, "phoneme-encoder");
    v15 = v14->__r_.__value_.__r.__words[0];
    v39[0] = v14->__r_.__value_.__l.__size_;
    *(v39 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (v38 < 0)
    {
      operator delete(v36);
    }

    v36 = v15;
    *v37 = v39[0];
    *&v37[7] = *(v39 + 7);
    v38 = v16;
    if (SBYTE7(v20) < 0)
    {
      operator delete(__p[0]);
    }

    operator new();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *__p = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unrecognized EuclidInitFlag: ", 29);
  MEMORY[0x1B8C84C00](v17, a3);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void sub_1B58EE10C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B58EE144);
}

void sub_1B58EE130(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1B58EE140(_Unwind_Exception *exception_object)
{
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  _Unwind_Resume(exception_object);
}

void quasar::QuasarEuclid::registerParams(quasar::QuasarEuclid *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "version");
  std::string::basic_string[abi:ne200100]<0>(__p, "Euclid asset version in semantic versioning format(MAJOR.MINOR.PATCH)");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 48, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B58EE1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::QuasarEuclid::QuasarEuclid(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, __int128 *a7)
{
  *a1 = &unk_1F2D38260;
  *(a1 + 8) = a6;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  std::string::basic_string[abi:ne200100]<0>((a1 + 48), "0.0.0");
  *(a1 + 72) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  if (*(a7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 152), *a7, *(a7 + 1));
  }

  else
  {
    v11 = *a7;
    *(a1 + 168) = *(a7 + 2);
    *(a1 + 152) = v11;
  }

  if (*(a3 + 23) >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v12 + 1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v12)
  {
    if (*(a3 + 23) >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    memmove(p_p, v14, v12);
  }

  *(&p_p->__r_.__value_.__l.__data_ + v12) = 46;
  quasar::SystemConfig::setPrefix(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  quasar::QuasarEuclid::registerParams(a1, a2);
  quasar::SystemConfig::readPtree(a2, a3);
}

void sub_1B58EE624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    quasar::QuasarEuclid::QuasarEuclid(a13);
  }

  JUMPOUT(0x1B58EE65CLL);
}

void sub_1B58EE640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, void **a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20)
{
  if ((a18 & 0x80000000) == 0)
  {
    if (*(v20 + 175) < 0)
    {
      operator delete(*(v21 + 80));
    }

    if (*(v20 + 143) < 0)
    {
      operator delete(*a12);
    }

    if (*(v20 + 119) < 0)
    {
      operator delete(*(v21 + 24));
    }

    a20 = v21;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a20);
    if (*(v20 + 71) < 0)
    {
      operator delete(*a11);
    }

    if (*(v20 + 40))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100]();
    }

    if (*(v20 + 24))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100]();
    }

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1B58EE668);
}

void sub_1B58EE658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 + 175) < 0)
  {
    operator delete(v23[10]);
  }

  if (*(v22 + 143) < 0)
  {
    operator delete(*a12);
  }

  if (*(v22 + 119) < 0)
  {
    operator delete(v23[3]);
  }

  __p = v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v22 + 71) < 0)
  {
    operator delete(*a11);
  }

  v25 = *(v22 + 40);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v26 = *(v22 + 24);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void *std::shared_ptr<quasar::TextEmbedder>::operator=[abi:ne200100]<quasar::TextEmbedder,std::default_delete<quasar::TextEmbedder>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<quasar::TextEmbedder>::shared_ptr[abi:ne200100]<quasar::TextEmbedder,std::default_delete<quasar::TextEmbedder>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void quasar::loadNearestNeighborSearch(uint64_t a1, const void **a2, char a3)
{
  v13 = a3;
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = &v10;
  std::string::basic_string[abi:ne200100](&v10, v5 + 1);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v10.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 46;
  v8 = std::string::append(&v10, "nearest-neighbor-search");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v12 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  quasar::SystemConfig::getPtreeOptional(a1, __p);
}

void sub_1B58EE864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::QuasarEuclid::findNearestNeighbors(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (!*(a1 + 32))
  {
    if (*(a1 + 144))
    {
      if (quasar::gLogLevel >= 4)
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "No nearest neighbor created due to EuclidInitFlag during init. Try to reload the asset", 86);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v19);
      }

      quasar::SystemConfig::SystemConfig(&v19);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v19);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v19, "No nearest neighbor asset configured");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v19);
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  if (a3 >= 1)
  {
    quasar::QuasarEuclid::preprocessInput(a1, a2, 1, __p);
    v12 = HIBYTE(v18);
    v13 = HIBYTE(v18);
    if (v18 < 0)
    {
      v12 = __p[1];
    }

    if (v12)
    {
      quasar::QuasarEuclid::computeEmbeddingVectorWithPreprocessedInput(a1, __p, &v19);
      memset(v16, 0, sizeof(v16));
      if (a4)
      {
        std::vector<std::string>::push_back[abi:ne200100](v16, a2);
      }

      quasar::NearestNeighborSearch::findNearestNeighbors(*(a1 + 32), &v19, a3, v16, a5, &v14);
      std::vector<std::pair<std::string,float>>::__vdeallocate(a6);
      *a6 = v14;
      a6[2] = v15;
      v15 = 0;
      v14 = 0uLL;
      v36 = &v14;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v36);
      *&v14 = v16;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
      if (v21 == 1)
      {
        kaldi::CuVector<float>::~CuVector(&v19);
      }

      v13 = HIBYTE(v18);
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t quasar::QuasarEuclid::preprocessInput@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  return (*(**(a1 + 16) + 32))(*(a1 + 16), a2, a4, a3);
}

void sub_1B58EEC28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::QuasarEuclid::computeEmbeddingVectorWithPreprocessedInput@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 32) = 0;
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v6 = result;
    (*(*result + 24))(v7);
    result = std::__optional_storage_base<kaldi::CuVector<float>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<kaldi::CuVector<float>,false>>(a3, v7);
    if (v8 == 1)
    {
      result = kaldi::CuVector<float>::~CuVector(v7);
    }

    if ((*(a3 + 32) & 1) == 0)
    {
      quasar::QuasarEuclid::inferEmbeddingVectorWithPreprocessedInput(v6, a2, v7);
      result = std::__optional_storage_base<kaldi::CuVector<float>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<kaldi::CuVector<float>,false>>(a3, v7);
      if (v8 == 1)
      {
        return kaldi::CuVector<float>::~CuVector(v7);
      }
    }
  }

  return result;
}

void sub_1B58EED1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    kaldi::CuVector<float>::~CuVector(&a10);
  }

  if (*(v14 + 32) == 1)
  {
    kaldi::CuVector<float>::~CuVector(v14);
  }

  _Unwind_Resume(exception_object);
}

float quasar::QuasarEuclid::computeDistance(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  v4 = -1.0;
  if (v3)
  {
    v6 = *(a3 + 23);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a3 + 8);
    }

    if (v6)
    {
      quasar::QuasarEuclid::computeEmbeddingVector(a1, a2, v11);
      quasar::QuasarEuclid::computeEmbeddingVector(a1, a3, v9);
      if (v12 == 1 && v10 == 1)
      {
        v4 = quasar::computeL2Dist(v11, v9);
      }

      if (v10 == 1)
      {
        kaldi::CuVector<float>::~CuVector(v9);
      }

      if (v12 == 1)
      {
        kaldi::CuVector<float>::~CuVector(v11);
      }
    }
  }

  return v4;
}

void sub_1B58EEE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a13 == 1)
  {
    kaldi::CuVector<float>::~CuVector(&a9);
  }

  if (a19 == 1)
  {
    kaldi::CuVector<float>::~CuVector(&a15);
  }

  _Unwind_Resume(exception_object);
}

void quasar::QuasarEuclid::computeEmbeddingVector(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v8[0]) = 0;
  v9 = 0;
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    quasar::QuasarEuclid::preprocessInput(a1, a2, 0, __p);
    quasar::QuasarEuclid::computeEmbeddingVectorWithPreprocessedInput(a1, __p, a3);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    std::__optional_move_base<kaldi::CuVector<float>,false>::__optional_move_base[abi:ne200100](a3, v8);
  }

  if (v9 == 1)
  {
    kaldi::CuVector<float>::~CuVector(v8);
  }
}

void sub_1B58EEF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    kaldi::CuVector<float>::~CuVector(&a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::QuasarEuclid::getAssetVersionInVector@<X0>(quasar::QuasarEuclid *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *(this + 9), *(this + 10), 0xAAAAAAAAAAAAAAABLL * ((*(this + 10) - *(this + 9)) >> 3));
}

void *quasar::QuasarEuclid::inferEmbeddingVectorWithPreprocessedInput@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v6[1] = 0;
    v7 = 0;
    v8 = 0;
    v6[0] = &unk_1F2D3AC18;
    quasar::TextEmbedder::computeTextEmbeddingVector(result[2], a2, v6);
    v5 = v7;
    if (v7)
    {
      kaldi::CuVector<float>::CuVector(a3, v6);
      v5 = 1;
    }

    else
    {
      *a3 = 0;
    }

    *(a3 + 32) = v5;
    return kaldi::CuVector<float>::~CuVector(v6);
  }

  else
  {
    *a3 = 0;
    *(a3 + 32) = 0;
  }

  return result;
}

void quasar::QuasarEuclidGrapheme::lookupEmbedding(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    quasar::NearestNeighborSearch::lookupEmbedding(v3, a2, 0, a3);
  }

  else
  {
    *a3 = 0;
    a3[32] = 0;
  }
}

void quasar::QuasarEuclidPhoneme::lookupEmbedding(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    quasar::NearestNeighborSearch::lookupEmbedding(v3, a2, 1, a3);
  }

  else
  {
    *a3 = 0;
    a3[32] = 0;
  }
}

void quasar::QuasarEuclidGrapheme::~QuasarEuclidGrapheme(void **this)
{
  quasar::QuasarEuclid::~QuasarEuclid(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::QuasarEuclidPhoneme::~QuasarEuclidPhoneme(void **this)
{
  quasar::QuasarEuclid::~QuasarEuclid(this);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::NearestNeighborSearch>::__shared_ptr_emplace[abi:ne200100]<quasar::SystemConfig &,std::string &,BOOL &,std::string const&,std::allocator<quasar::NearestNeighborSearch>,0>(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D38330;
  quasar::NearestNeighborSearch::NearestNeighborSearch(a1 + 3, a2, a3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<quasar::NearestNeighborSearch>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D38330;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void quasar::NearestNeighborSearch::~NearestNeighborSearch(quasar::NearestNeighborSearch *this)
{
  v2 = *(this + 37);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 279) < 0)
  {
    operator delete(*(this + 32));
  }

  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  v3 = *(this + 15);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  kaldi::CuVector<float>::~CuVector(this + 10);
  v4 = *(this + 9);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this);
}

uint64_t std::__optional_move_base<kaldi::CuVector<float>,false>::__optional_move_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    kaldi::CuVector<float>::CuVector(a1, a2);
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_1B58EF388(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    kaldi::CuVector<float>::~CuVector(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::shared_ptr<quasar::TextEmbedder>::shared_ptr[abi:ne200100]<quasar::TextEmbedder,std::default_delete<quasar::TextEmbedder>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<quasar::TextEmbedder  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::TextEmbedder  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::TextEmbedder  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL quasar::fileExists()
{
  v4[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v2);
  v0 = *&v3[*(v2[0] - 24) + 16] == 0;
  v2[0] = *MEMORY[0x1E69E54C8];
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v3);
  std::istream::~istream();
  MEMORY[0x1B8C85200](v4);
  return v0;
}

void quasar::ModelLoader::readNnetWordMap(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v82 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v77, *a2, *(a2 + 8));
  }

  else
  {
    v77 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v76, *a3, *(a3 + 8));
  }

  else
  {
    v76 = *a3;
  }

  quasar::MakeCacheKey<std::string,std::string>(&v77, &v76);
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 128), v78))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, ":");
    quasar::splitAndTrimNoEmpty(a2, __p, v75);
    if (SBYTE7(v56) < 0)
    {
      operator delete(__p[0]);
    }

    memset(&v74, 0, sizeof(v74));
    v10 = v75[0];
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v75[1] - v75[0]) >> 3);
    if (v11 == 2)
    {
      if (*(v75[0] + 23) >= 0)
      {
        v22 = *(v75[0] + 23);
      }

      else
      {
        v22 = *(v75[0] + 8);
      }

      v23 = __p;
      std::string::basic_string[abi:ne200100](__p, v22 + 1);
      if (SBYTE7(v56) < 0)
      {
        v23 = __p[0];
      }

      if (v22)
      {
        if (v10[23] >= 0)
        {
          v24 = v10;
        }

        else
        {
          v24 = *v10;
        }

        memmove(v23, v24, v22);
      }

      *(v23 + v22) = 46;
      v25 = *(a3 + 23);
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
        v27 = *(a3 + 23);
      }

      else
      {
        v27 = *(a3 + 8);
      }

      v28 = std::string::append(__p, v26, v27);
      v29 = *&v28->__r_.__value_.__l.__data_;
      v81 = v28->__r_.__value_.__r.__words[2];
      v80 = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      if (SBYTE7(v56) < 0)
      {
        operator delete(__p[0]);
      }

      v30 = v75[0];
      if (*(v75[0] + 47) >= 0)
      {
        v31 = *(v75[0] + 47);
      }

      else
      {
        v31 = *(v75[0] + 32);
      }

      v32 = __p;
      std::string::basic_string[abi:ne200100](__p, v31 + 1);
      if (SBYTE7(v56) < 0)
      {
        v32 = __p[0];
      }

      if (v31)
      {
        if (*(v30 + 47) >= 0)
        {
          v33 = (v30 + 24);
        }

        else
        {
          v33 = *(v30 + 24);
        }

        memmove(v32, v33, v31);
      }

      *(v32 + v31) = 46;
      v34 = *(a3 + 23);
      if (v34 >= 0)
      {
        v35 = a3;
      }

      else
      {
        v35 = *a3;
      }

      if (v34 >= 0)
      {
        v36 = *(a3 + 23);
      }

      else
      {
        v36 = *(a3 + 8);
      }

      v37 = std::string::append(__p, v35, v36);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v73 = v37->__r_.__value_.__r.__words[2];
      v72 = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      if (SBYTE7(v56) < 0)
      {
        operator delete(__p[0]);
      }

      v39 = quasar::fileExists();
      if (((v39 | quasar::fileExists()) & 1) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "leftNnetWordmapExist || rightNnetWordmapExist", 45);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
      }

      if (v39)
      {
        v40 = &v80;
      }

      else
      {
        v40 = &v72;
      }

      std::string::operator=(&v74, v40);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72);
      }

      if (SHIBYTE(v81) < 0)
      {
        v21 = v80;
        goto LABEL_82;
      }
    }

    else if (v11 == 1)
    {
      if (*(a2 + 23) >= 0)
      {
        v12 = *(a2 + 23);
      }

      else
      {
        v12 = *(a2 + 8);
      }

      v13 = __p;
      std::string::basic_string[abi:ne200100](__p, v12 + 1);
      if (SBYTE7(v56) < 0)
      {
        v13 = __p[0];
      }

      if (v12)
      {
        if (*(a2 + 23) >= 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = *a2;
        }

        memmove(v13, v14, v12);
      }

      *(v13 + v12) = 46;
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

      v18 = std::string::append(__p, v16, v17);
      v19 = v18->__r_.__value_.__r.__words[0];
      *&v80 = v18->__r_.__value_.__l.__size_;
      *(&v80 + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
      v20 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v74.__r_.__value_.__l.__data_);
      }

      v74.__r_.__value_.__r.__words[0] = v19;
      v74.__r_.__value_.__l.__size_ = v80;
      *(&v74.__r_.__value_.__r.__words[1] + 7) = *(&v80 + 7);
      *(&v74.__r_.__value_.__s + 23) = v20;
      if (SBYTE7(v56) < 0)
      {
        v21 = __p[0];
LABEL_82:
        operator delete(v21);
      }
    }

    else if ((quasar::gLogLevel & 0x80000000) == 0)
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      *__p = 0u;
      v56 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Malformed wordmap files. fileBasename=", 38);
      v42 = *(a2 + 23);
      if (v42 >= 0)
      {
        v43 = a2;
      }

      else
      {
        v43 = *a2;
      }

      if (v42 >= 0)
      {
        v44 = *(a2 + 23);
      }

      else
      {
        v44 = *(a2 + 8);
      }

      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v43, v44);
      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, ", fileExtension=", 16);
      v47 = *(a3 + 23);
      if (v47 >= 0)
      {
        v48 = a3;
      }

      else
      {
        v48 = *a3;
      }

      if (v47 >= 0)
      {
        v49 = *(a3 + 23);
      }

      else
      {
        v49 = *(a3 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v48, v49);
      quasar::QuasarFatalMessage::~QuasarFatalMessage(__p);
    }

    v54 = 0;
    kaldi::Input::Input(&v72, &v74, &v54);
    v50 = kaldi::Input::Stream(&v72);
    if (*(v50 + *(*v50 - 24) + 32) && (quasar::gLogLevel & 0x80000000) == 0)
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      *__p = 0u;
      v56 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not read the NNLM word map file ", 38);
      if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = &v74;
      }

      else
      {
        v52 = v74.__r_.__value_.__r.__words[0];
      }

      if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v74.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v74.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v52, size);
      quasar::QuasarFatalMessage::~QuasarFatalMessage(__p);
    }

    _ZNSt3__115allocate_sharedB8ne200100IN5kaldi6quasar15NnlmDecoderWordENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  __p[0] = v78;
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 128), v78);
  *a4 = v8[5];
  v9 = v8[6];
  a4[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  if (v79 < 0)
  {
    operator delete(v78[0]);
  }
}

void sub_1B58F0228(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B58F0290);
}

uint64_t quasar::MakeCacheKey<std::string,std::string>(uint64_t a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, v5, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
  std::stringbuf::str();
  v12 = *MEMORY[0x1E69E54E8];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v16);
}

void sub_1B58F041C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void quasar::ModelLoader::loadIntoTFInferenceNet(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  memset(v1, 0, sizeof(v1));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "Compile with USE_TENSORFLOW=ON to use TensorFlow models", 55);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v1);
}

void quasar::ModelLoader::readNeuralNetwork(uint64_t a1@<X0>, const std::string::value_type **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, const void ***a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v107 = a3;
  v106 = a4;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v103, *a2, a2[1]);
  }

  else
  {
    v103 = *a2;
  }

  std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(a7, "", &v102);
  quasar::MakeCacheKey<std::string,BOOL,BOOL,std::string>(&v103, a3, a4, &v102);
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 48), v104))
  {
    v101 = 0;
    v18 = *a6;
    if (v18)
    {
      v19 = *(a2 + 23);
      if (v19 >= 0)
      {
        v20 = *(a2 + 23);
      }

      else
      {
        v20 = a2[1];
      }

      v21 = *(v18 + 23);
      v22 = v21;
      if (v21 < 0)
      {
        v21 = v18[1];
      }

      v25 = v20 == v21 && (v19 >= 0 ? (v23 = a2) : (v23 = *a2), v22 >= 0 ? (v24 = v18) : (v24 = *v18), !memcmp(v23, v24, v20)) && *(v18 + 6) == 1.0;
      v101 = v25;
    }

    *a8 = 0;
    a8[1] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__p, ".pb");
    v26 = *(a2 + 23);
    v27 = a2[1];
    if ((v26 & 0x80u) == 0)
    {
      v28 = *(a2 + 23);
    }

    else
    {
      v28 = a2[1];
    }

    v29 = v100;
    if ((v100 & 0x80u) == 0)
    {
      v30 = v100;
    }

    else
    {
      v30 = v99;
    }

    v31 = v28 >= v30;
    v32 = v28 - v30;
    if (!v31)
    {
      v33 = 0;
      goto LABEL_58;
    }

    if ((v26 & 0x80) != 0)
    {
      if (v30 == -1 || v27 < v32)
      {
LABEL_201:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (v27 - v32 >= v30)
      {
        v35 = v30;
      }

      else
      {
        v35 = v27 - v32;
      }

      v36 = *a2;
    }

    else
    {
      if (v30 == -1)
      {
        goto LABEL_201;
      }

      v31 = v26 >= v32;
      v34 = v26 - v32;
      if (!v31)
      {
        goto LABEL_201;
      }

      if (v34 >= v30)
      {
        v35 = v30;
      }

      else
      {
        v35 = v34;
      }

      v36 = a2;
    }

    if ((v100 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v38 = memcmp(v36 + v32, p_p, v35);
    v33 = v35 == v30 && v38 == 0;
LABEL_58:
    v40 = v33 & a5;
    if (v29 < 0)
    {
      operator delete(__p);
    }

    if (v40)
    {
      quasar::ModelLoader::loadIntoTFInferenceNet(&__p);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, ".bnns.mil");
    v41 = *(a2 + 23);
    v42 = a2[1];
    if ((v41 & 0x80u) == 0)
    {
      v43 = *(a2 + 23);
    }

    else
    {
      v43 = a2[1];
    }

    v44 = v100;
    if ((v100 & 0x80u) == 0)
    {
      v45 = v100;
    }

    else
    {
      v45 = v99;
    }

    v31 = v43 >= v45;
    v46 = v43 - v45;
    if (!v31)
    {
      goto LABEL_68;
    }

    if ((v41 & 0x80) != 0)
    {
      if (v45 == -1 || v42 < v46)
      {
LABEL_202:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (v42 - v46 >= v45)
      {
        v67 = v45;
      }

      else
      {
        v67 = v42 - v46;
      }

      v68 = *a2;
    }

    else
    {
      if (v45 == -1)
      {
        goto LABEL_202;
      }

      v31 = v41 >= v46;
      v66 = v41 - v46;
      if (!v31)
      {
        goto LABEL_202;
      }

      if (v66 >= v45)
      {
        v67 = v45;
      }

      else
      {
        v67 = v66;
      }

      v68 = a2;
    }

    if ((v100 & 0x80u) == 0)
    {
      v78 = &__p;
    }

    else
    {
      v78 = __p;
    }

    v79 = memcmp(v68 + v46, v78, v67);
    if (v67 == v45 && !v79)
    {
      v65 = 1;
      if ((v44 & 0x80) == 0)
      {
LABEL_101:
        if (v65)
        {
          goto LABEL_102;
        }

        goto LABEL_150;
      }

LABEL_149:
      operator delete(__p);
      if (v65)
      {
LABEL_102:
        if (*(a7 + 24) == 1)
        {
          std::allocate_shared[abi:ne200100]<kaldi::quasar::CEInferenceNet,std::allocator<kaldi::quasar::CEInferenceNet>,std::string const&,std::string const&,BOOL &,0>();
        }

        std::allocate_shared[abi:ne200100]<kaldi::quasar::CEInferenceNet,std::allocator<kaldi::quasar::CEInferenceNet>,std::string const&,BOOL &,0>();
      }

LABEL_150:
      std::allocate_shared[abi:ne200100]<kaldi::nnet1::Nnet1InferenceNet,std::allocator<kaldi::nnet1::Nnet1InferenceNet>,std::string const&,BOOL &,BOOL &,BOOL &,0>();
    }

LABEL_68:
    std::string::basic_string[abi:ne200100]<0>(v96, ".pt");
    v47 = *(a2 + 23);
    v48 = a2[1];
    if ((v47 & 0x80u) == 0)
    {
      v49 = *(a2 + 23);
    }

    else
    {
      v49 = a2[1];
    }

    v50 = v97;
    if ((v97 & 0x80u) == 0)
    {
      v51 = v97;
    }

    else
    {
      v51 = v96[1];
    }

    v31 = v49 >= v51;
    v52 = v49 - v51;
    if (!v31)
    {
      goto LABEL_75;
    }

    if ((v47 & 0x80) != 0)
    {
      if (v51 == -1 || v48 < v52)
      {
LABEL_203:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (v48 - v52 >= v51)
      {
        v70 = v51;
      }

      else
      {
        v70 = v48 - v52;
      }

      v71 = *a2;
    }

    else
    {
      if (v51 == -1)
      {
        goto LABEL_203;
      }

      v31 = v47 >= v52;
      v69 = v47 - v52;
      if (!v31)
      {
        goto LABEL_203;
      }

      if (v69 >= v51)
      {
        v70 = v51;
      }

      else
      {
        v70 = v69;
      }

      v71 = a2;
    }

    if ((v97 & 0x80u) == 0)
    {
      v80 = v96;
    }

    else
    {
      v80 = v96[0];
    }

    v81 = memcmp(v71 + v52, v80, v70);
    if (v70 == v51 && !v81)
    {
      v65 = 1;
      if ((v50 & 0x80) == 0)
      {
LABEL_100:
        if ((v100 & 0x80) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_149;
      }

LABEL_99:
      operator delete(v96[0]);
      goto LABEL_100;
    }

LABEL_75:
    std::string::basic_string[abi:ne200100]<0>(v94, ".espresso/code.nitroir");
    v53 = *(a2 + 23);
    v54 = a2[1];
    if ((v53 & 0x80u) == 0)
    {
      v55 = *(a2 + 23);
    }

    else
    {
      v55 = a2[1];
    }

    v56 = v95;
    if ((v95 & 0x80u) == 0)
    {
      v57 = v95;
    }

    else
    {
      v57 = v94[1];
    }

    v31 = v55 >= v57;
    v58 = v55 - v57;
    if (!v31)
    {
      goto LABEL_82;
    }

    if ((v53 & 0x80) != 0)
    {
      if (v57 == -1 || v54 < v58)
      {
LABEL_204:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (v54 - v58 >= v57)
      {
        v73 = v57;
      }

      else
      {
        v73 = v54 - v58;
      }

      v74 = *a2;
    }

    else
    {
      if (v57 == -1)
      {
        goto LABEL_204;
      }

      v31 = v53 >= v58;
      v72 = v53 - v58;
      if (!v31)
      {
        goto LABEL_204;
      }

      if (v72 >= v57)
      {
        v73 = v57;
      }

      else
      {
        v73 = v72;
      }

      v74 = a2;
    }

    if ((v95 & 0x80u) == 0)
    {
      v82 = v94;
    }

    else
    {
      v82 = v94[0];
    }

    v83 = memcmp(v74 + v58, v82, v73);
    if (v73 == v57 && !v83)
    {
      v65 = 1;
      if ((v56 & 0x80) == 0)
      {
LABEL_98:
        if ((v97 & 0x80) == 0)
        {
          goto LABEL_100;
        }

        goto LABEL_99;
      }

LABEL_97:
      operator delete(v94[0]);
      goto LABEL_98;
    }

LABEL_82:
    std::string::basic_string[abi:ne200100]<0>(v92, ".espresso.net");
    v59 = *(a2 + 23);
    v60 = a2[1];
    if ((v59 & 0x80u) == 0)
    {
      v61 = *(a2 + 23);
    }

    else
    {
      v61 = a2[1];
    }

    v62 = v93;
    if ((v93 & 0x80u) == 0)
    {
      v63 = v93;
    }

    else
    {
      v63 = v92[1];
    }

    v31 = v61 >= v63;
    v64 = v61 - v63;
    if (!v31)
    {
      goto LABEL_89;
    }

    if ((v59 & 0x80) != 0)
    {
      if (v63 == -1 || v60 < v64)
      {
LABEL_205:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (v60 - v64 >= v63)
      {
        v76 = v63;
      }

      else
      {
        v76 = v60 - v64;
      }

      v77 = *a2;
    }

    else
    {
      if (v63 == -1)
      {
        goto LABEL_205;
      }

      v31 = v59 >= v64;
      v75 = v59 - v64;
      if (!v31)
      {
        goto LABEL_205;
      }

      if (v75 >= v63)
      {
        v76 = v63;
      }

      else
      {
        v76 = v75;
      }

      v77 = a2;
    }

    if ((v93 & 0x80u) == 0)
    {
      v84 = v92;
    }

    else
    {
      v84 = v92[0];
    }

    v85 = memcmp(v77 + v64, v84, v76);
    if (v76 == v63 && !v85)
    {
      v65 = 1;
      if ((v62 & 0x80) != 0)
      {
LABEL_95:
        operator delete(v92[0]);
      }

LABEL_96:
      if ((v95 & 0x80) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    }

LABEL_89:
    std::string::basic_string[abi:ne200100]<0>(v90, ".bundle");
    if (kaldi::EndsWith(a2, v90) || kaldi::quasar::isEspressoV2Mil(a2))
    {
      v65 = 1;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v88, ".pb");
      if (kaldi::EndsWith(a2, v88))
      {
        v65 = 1;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v86, ".mlmodelc");
        v65 = kaldi::EndsWith(a2, v86);
        if (v87 < 0)
        {
          operator delete(v86[0]);
        }
      }

      if (v89 < 0)
      {
        operator delete(v88[0]);
      }
    }

    if (v91 < 0)
    {
      operator delete(v90[0]);
    }

    if ((v93 & 0x80) != 0)
    {
      goto LABEL_95;
    }

    goto LABEL_96;
  }

  __p = v104;
  v16 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 48), v104);
  v17 = v16[6];
  *a8 = v16[5];
  a8[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
  }

  if (v105 < 0)
  {
    operator delete(v104[0]);
  }
}

void sub_1B58F0BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (*(v48 - 89) < 0)
  {
    operator delete(*(v48 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::MakeCacheKey<std::string,BOOL,BOOL,std::string>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  v8 = *(a1 + 23);
  if (v8 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v9, v10);
  v12 = MEMORY[0x1B8C84BD0](v11, a2);
  v13 = MEMORY[0x1B8C84BD0](v12, a3);
  v14 = *(a4 + 23);
  if (v14 >= 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = *a4;
  }

  if (v14 >= 0)
  {
    v16 = *(a4 + 23);
  }

  else
  {
    v16 = *(a4 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  std::stringbuf::str();
  v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v22);
}

void sub_1B58F0E84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

const void **quasar::ModelLoader::readAcousticEncoder@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 88), a2))
  {
    std::allocate_shared[abi:ne200100]<kaldi::quasar::CEAcousticEncoderNet,std::allocator<kaldi::quasar::CEAcousticEncoderNet>,std::string const&,0>();
  }

  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 88), a2);
  v7 = result[6];
  *a3 = result[5];
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B58F0F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ModelLoader::readFeedForwardNetwork(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X6>, void *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, ".mlmodelc");
  v14 = a2[23];
  v15 = *(a2 + 1);
  if ((v14 & 0x80u) == 0)
  {
    v16 = a2[23];
  }

  else
  {
    v16 = *(a2 + 1);
  }

  v17 = v34;
  if ((v34 & 0x80u) == 0)
  {
    v18 = v34;
  }

  else
  {
    v18 = __p[1];
  }

  v23 = v16 >= v18;
  v19 = v16 - v18;
  if (!v23)
  {
    v20 = 0;
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_40:
    operator delete(__p[0]);
    if (v20)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

  v21 = a3;
  v22 = a4;
  if ((v14 & 0x80) != 0)
  {
    if (v18 == -1 || v15 < v19)
    {
LABEL_49:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v24 = a5;
    if (v15 - v19 >= v18)
    {
      v26 = v18;
    }

    else
    {
      v26 = v15 - v19;
    }

    v27 = *a2;
  }

  else
  {
    v23 = v18 != -1 && v14 >= v19;
    if (!v23)
    {
      goto LABEL_49;
    }

    v24 = a5;
    v25 = v14 - v19;
    if (v25 >= v18)
    {
      v26 = v18;
    }

    else
    {
      v26 = v25;
    }

    v27 = a2;
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  v30 = memcmp(&v27[v19], v29, v26);
  v20 = v26 == v18 && v30 == 0;
  a5 = v24;
  a4 = v22;
  a3 = v21;
  if (v17 < 0)
  {
    goto LABEL_40;
  }

LABEL_9:
  if (v20)
  {
LABEL_10:
    quasar::ModelLoader::readCoreMLModel(a1, a2, __p);
    *a7 = *__p;
    return;
  }

LABEL_41:
  v32 = *(a6 + 8);
  v36[0] = *a6;
  v36[1] = &v32->__vftable;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(__p[0]) = 0;
  v35 = 0;
  quasar::ModelLoader::readNeuralNetwork(a1, a2, a3, a4, a5, v36, __p, &v37);
  *a7 = v37;
  if ((v35 & 1) != 0 && v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }
}

void sub_1B58F1174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ModelLoader::readCoreMLModel(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock((a1 + 512));
  if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 288), a2))
  {
    v8 = *(a1 + 504);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    kaldi::ReadCoreMLModelNet();
  }

  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 288), a2);
  v7 = v6[6];
  *a3 = v6[5];
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((a1 + 512));
}

void sub_1B58F12EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::mutex::unlock(v12 + 8);
  _Unwind_Resume(a1);
}

void quasar::ModelLoader::readNeuralNetworkLm(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X5>, const void **a7@<X8>, float a8@<S0>)
{
  v84 = *MEMORY[0x1E69E9840];
  v66 = a8;
  v65 = a5;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, *a2, *(a2 + 8));
  }

  else
  {
    v62 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v61, *a3, *(a3 + 8));
  }

  else
  {
    v61 = *a3;
  }

  v14 = v65;
  std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(a6, "", &__p);
  quasar::MakeCacheKey<std::string,std::string,BOOL,float,int,std::string>(&v62, &v61, a4, v14, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 168), v63))
  {
    v67[0] = v63;
    v15 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 168), v63);
    v16 = v15[6];
    *a7 = v15[5];
    a7[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a7 = 0;
    a7[1] = 0;
    std::string::basic_string[abi:ne200100]<0>(v67, ":");
    quasar::splitAndTrimNoEmpty(a2, v67, &v59);
    if (SBYTE7(v68) < 0)
    {
      operator delete(v67[0]);
    }

    LOBYTE(v67[0]) = 0;
    BYTE8(v68) = 0;
    LOBYTE(v69) = 0;
    BYTE8(v70) = 0;
    memset(v58, 0, sizeof(v58));
    std::vector<std::optional<std::string>>::__init_with_size[abi:ne200100]<std::optional<std::string> const*,std::optional<std::string> const*>(v58, v67, &v71, 2uLL);
    for (i = 0; i != -8; i -= 4)
    {
      v18 = &v67[i];
      if (*(&v70 + i * 8 + 8) == 1 && *(v18 + 55) < 0)
      {
        operator delete(v18[4]);
      }
    }

    if (*(a6 + 24) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v67, ":");
      quasar::splitAndTrimNoEmpty(a6, v67, &v56);
      if (SBYTE7(v68) < 0)
      {
        operator delete(v67[0]);
      }

      v19 = v56;
      v20 = 0xAAAAAAAAAAAAAAABLL * (v57 - v56);
      if (v20 - 1 > 1)
      {
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        *v67 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v67);
        v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "Expected one or two config files in ", 36);
        if (*(a6 + 24))
        {
          v46 = *(a6 + 23);
          if (v46 >= 0)
          {
            v47 = a6;
          }

          else
          {
            v47 = *a6;
          }

          if (v46 >= 0)
          {
            v48 = *(a6 + 23);
          }

          else
          {
            v48 = *(a6 + 8);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v47, v48);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v67);
        }

        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (v57 == v56)
      {
        v24 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        do
        {
          std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>((v58[0] + v22), &v19[v21]);
          ++v23;
          v19 = v56;
          v24 = v57 - v56;
          v20 = 0xAAAAAAAAAAAAAAABLL * (v57 - v56);
          v22 += 32;
          v21 += 3;
        }

        while (v20 > v23);
      }

      v25 = v59.__end_ - v59.__begin_;
      if (v20 >= 2 && v25 == 24)
      {
        std::vector<std::string>::resize(&v59, v20);
        if (0xAAAAAAAAAAAAAAABLL * (v57 - v56) >= 2)
        {
          v31 = 1;
          v32 = 1;
          do
          {
            std::string::operator=(&v59.__begin_[v32], v59.__begin_);
            ++v31;
            ++v32;
          }

          while (0xAAAAAAAAAAAAAAABLL * (v57 - v56) > v31);
        }
      }

      else if (v25 != v24)
      {
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        *v67 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v67);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "Invalid number of NNLMs (", 25);
        v28 = MEMORY[0x1B8C84C30](v27, 0xAAAAAAAAAAAAAAABLL * ((v59.__end_ - v59.__begin_) >> 3));
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ") and configs (", 15);
        v30 = MEMORY[0x1B8C84C30](v29, 0xAAAAAAAAAAAAAAABLL * (v57 - v56));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ")", 1);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v67);
      }

      v67[0] = &v56;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v67);
    }

    begin = v59.__begin_;
    v34 = 0xAAAAAAAAAAAAAAABLL * ((v59.__end_ - v59.__begin_) >> 3);
    if (v34 == 2)
    {
      v51[0] = 0;
      v51[1] = 0;
      quasar::ModelLoader::readNeuralNetwork(a1, &v59.__begin_->__r_.__value_.__l.__data_, a4, 1, 0, v51, v58[0], v67);
      v49 = 0;
      v50 = 0;
      quasar::ModelLoader::readNeuralNetwork(a1, &begin[1].__r_.__value_.__l.__data_, a4, 1, 0, &v49, v58[0] + 32, &v56);
      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      }

      quasar::ModelLoader::readNnetWordMap(a1, a2, a3, &v54);
      v36 = v67[0];
      if ((*(*v67[0] + 168))(v67[0]) && (*(*v56 + 21))(v56))
      {
        v52 = v36;
        v53 = v54;
        std::allocate_shared[abi:ne200100]<kaldi::quasar::FofeLmEvaluator,std::allocator<kaldi::quasar::FofeLmEvaluator>,kaldi::quasar::NnlmDecoderWord *,kaldi::InferenceNetItf *,kaldi::InferenceNetItf *,float &,int &,0>();
      }

      if ((*(*v36 + 160))(v36) && (*(*v56 + 20))(v56))
      {
        v52 = v36;
        v53 = v54;
        std::allocate_shared[abi:ne200100]<kaldi::quasar::RnnlmEvaluator,std::allocator<kaldi::quasar::RnnlmEvaluator>,kaldi::quasar::NnlmDecoderWord *,kaldi::InferenceNetItf *,kaldi::InferenceNetItf *,float &,int &,0>();
      }

      v52 = v36;
      v53 = v54;
      std::allocate_shared[abi:ne200100]<kaldi::quasar::DnnlmEvaluator,std::allocator<kaldi::quasar::DnnlmEvaluator>,kaldi::quasar::NnlmDecoderWord *,kaldi::InferenceNetItf *,kaldi::InferenceNetItf *,float &,0>();
    }

    if (v34 == 1)
    {
      v55[0] = 0;
      v55[1] = 0;
      quasar::ModelLoader::readNeuralNetwork(a1, a2, a4, 1, 0, v55, v58[0], v67);
      quasar::ModelLoader::readNnetWordMap(a1, a2, a3, &v56);
      v35 = v67[0];
      if ((*(*v67[0] + 168))(v67[0]))
      {
        v52 = 0;
        v53 = v35;
        std::allocate_shared[abi:ne200100]<kaldi::quasar::FofeLmEvaluator,std::allocator<kaldi::quasar::FofeLmEvaluator>,kaldi::quasar::NnlmDecoderWord *,kaldi::InferenceNetItf *,decltype(nullptr),float &,int &,0>();
      }

      if ((*(*v35 + 160))(v35))
      {
        v52 = 0;
        v53 = v35;
        std::allocate_shared[abi:ne200100]<kaldi::quasar::RnnlmEvaluator,std::allocator<kaldi::quasar::RnnlmEvaluator>,kaldi::quasar::NnlmDecoderWord *,kaldi::InferenceNetItf *,decltype(nullptr),float &,int &,0>();
      }

      v52 = 0;
      v53 = v35;
      std::allocate_shared[abi:ne200100]<kaldi::quasar::DnnlmEvaluator,std::allocator<kaldi::quasar::DnnlmEvaluator>,kaldi::quasar::NnlmDecoderWord *,kaldi::InferenceNetItf *,decltype(nullptr),float &,0>();
    }

    if ((quasar::gLogLevel & 0x80000000) == 0)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      *v67 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v67);
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "Malformed LM neural network file name, fileBasename=", 52);
      v38 = *(a2 + 23);
      if (v38 >= 0)
      {
        v39 = a2;
      }

      else
      {
        v39 = *a2;
      }

      if (v38 >= 0)
      {
        v40 = *(a2 + 23);
      }

      else
      {
        v40 = *(a2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v39, v40);
      quasar::QuasarFatalMessage::~QuasarFatalMessage(v67);
    }

    v56 = v63;
    v41 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::FstTokenTransform>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 168), v63);
    v43 = *a7;
    v42 = a7[1];
    if (v42)
    {
      atomic_fetch_add_explicit(v42 + 1, 1uLL, memory_order_relaxed);
    }

    v44 = v41[6];
    v41[5] = v43;
    v41[6] = v42;
    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }

    std::vector<std::string>::push_back[abi:ne200100](a1 + 448, a2);
    v67[0] = v58;
    std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](v67);
    v67[0] = &v59;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v67);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }
}

void sub_1B58F1C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a14)
  {
    JUMPOUT(0x1B58F1CE4);
  }

  JUMPOUT(0x1B58F1CE0);
}

void sub_1B58F1C84(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B58F1E10);
}

void sub_1B58F1CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a48);
  }

  JUMPOUT(0x1B58F1DCCLL);
}

void sub_1B58F1CAC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B58F1DCCLL);
}

void sub_1B58F1CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void **a47)
{
  v48 = 0;
  while (1)
  {
    v49 = v47 + v48;
    if (*(v47 + v48 + 56) == 1 && *(v49 + 55) < 0)
    {
      operator delete(*(v49 + 32));
    }

    v48 -= 32;
    if (v48 == -64)
    {
      a47 = &a29;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a47);
      JUMPOUT(0x1B58F1DFCLL);
    }
  }
}

void sub_1B58F1D3C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B58F1DFCLL);
}

void sub_1B58F1D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    JUMPOUT(0x1B58F1E08);
  }

  JUMPOUT(0x1B58F1E10);
}

void sub_1B58F1D70(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a50 < 0)
  {
    JUMPOUT(0x1B58F1E08);
  }

  JUMPOUT(0x1B58F1E10);
}

void sub_1B58F1DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, void **a50)
{
  a50 = &a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a50);
  a50 = &a26;
  std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&a50);
  v52 = *(v50 + 8);
  a50 = &a29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a50);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::MakeCacheKey<std::string,std::string,BOOL,float,int,std::string>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v24);
  v10 = *(a1 + 23);
  if (v10 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = *(a1 + 8);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v11, v12);
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  MEMORY[0x1B8C84BD0](v17, a3);
  v18 = std::ostream::operator<<();
  v19 = MEMORY[0x1B8C84C00](v18, a4);
  v20 = *(a5 + 23);
  if (v20 >= 0)
  {
    v21 = a5;
  }

  else
  {
    v21 = *a5;
  }

  if (v20 >= 0)
  {
    v22 = *(a5 + 23);
  }

  else
  {
    v22 = *(a5 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
  std::stringbuf::str();
  v24 = *MEMORY[0x1E69E54E8];
  *(&v24 + *(v24 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v25 = MEMORY[0x1E69E5548] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v26);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v28);
}

void sub_1B58F1FF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void quasar::ModelLoader::writeFst(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[71] = *MEMORY[0x1E69E9840];
  std::ofstream::basic_ofstream(v12);
  if (v12[16])
  {
    quasar::ModelLoader::writeFst(a1, a2);
  }

  memset(v11, 0, sizeof(v11));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Writing FST: unable to open file to write: ", 43);
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = *(a4 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v11);
}

void sub_1B58F21CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ModelLoader::writeFst(int a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8) == 6 && **a2 == 1952671094 && *(*a2 + 4) == 29295)
    {
      goto LABEL_54;
    }

    if (*(a2 + 8) != 5 || (**a2 == 1936617315 ? (v8 = *(*a2 + 4) == 116) : (v8 = 0), !v8))
    {
      if (*(a2 + 8) != 5 || (**a2 == 1634887534 ? (v9 = *(*a2 + 4) == 109) : (v9 = 0), !v9))
      {
        if (*(a2 + 8) == 15)
        {
          if (**a2 == 0x75715F6D6172676ELL && *(*a2 + 7) == 0x64657A69746E6175)
          {
            goto LABEL_60;
          }

          if ((v3 & 0x80) == 0)
          {
            goto LABEL_77;
          }
        }

        if (*(a2 + 8) != 18)
        {
          goto LABEL_71;
        }

        if (**a2 == 0x5F64656375646572 && *(*a2 + 8) == 0x637564736E617274 && *(*a2 + 16) == 29285)
        {
          goto LABEL_86;
        }

        if ((v3 & 0x80) != 0)
        {
LABEL_71:
          if (*(a2 + 8) != 16)
          {
            goto LABEL_77;
          }

          v4 = *a2;
        }

        else
        {
          v4 = a2;
          if (v3 != 16)
          {
            goto LABEL_77;
          }
        }

        goto LABEL_73;
      }

LABEL_83:
      fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::NGramFst();
    }
  }

  else
  {
    if (*(a2 + 23) > 0xEu)
    {
      if (v3 != 15)
      {
        v4 = a2;
        if (v3 != 16)
        {
          if (v3 != 18)
          {
            goto LABEL_77;
          }

          v5 = *a2 == 0x5F64656375646572 && *(a2 + 8) == 0x637564736E617274;
          if (!v5 || *(a2 + 16) != 29285)
          {
            goto LABEL_77;
          }

LABEL_86:
          fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::ReducedFst();
        }

LABEL_73:
        v17 = *v4;
        v18 = v4[1];
        if (v17 == 0x5F64656375646572 && v18 == 0x726F747065636361)
        {
          fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::ReducedFst();
        }

LABEL_77:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "reduced_quantized_transducer"))
        {
          fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::ReducedFst();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "reduced_quantized_acceptor"))
        {
          fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::ReducedFst();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "squeezed_transducer"))
        {
          fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::SqueezedFst();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "squeezed_acceptor"))
        {
          fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::SqueezedFst();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "squeezed_quantized_transducer"))
        {
          fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::SqueezedFst();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "squeezed_quantized_acceptor"))
        {
          fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::SqueezedFst();
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        memset(v21, 0, sizeof(v21));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Writing FST: unsupported FST type: ", 35);
        std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v20, a2);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v21);
      }

      if (*a2 != 0x75715F6D6172676ELL || *(a2 + 7) != 0x64657A69746E6175)
      {
        goto LABEL_77;
      }

LABEL_60:
      fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::NGramFst();
    }

    if (v3 != 5)
    {
      if (v3 != 6)
      {
        goto LABEL_77;
      }

      if (*a2 != 1952671094 || *(a2 + 4) != 29295)
      {
        goto LABEL_77;
      }

LABEL_54:
      fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst();
    }

    if (*a2 != 1936617315 || *(a2 + 4) != 116)
    {
      if (*a2 != 1634887534 || *(a2 + 4) != 109)
      {
        goto LABEL_77;
      }

      goto LABEL_83;
    }
  }

  fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>::ConstFst();
}

const void **quasar::ModelLoader::readContextDependency@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 328), a2);
  if (!result)
  {
    operator new();
  }

  v5 = result[6];
  *a3 = result[5];
  a3[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t quasar::ModelLoader::compileModel(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, ".espresso.net");
  v3 = *(a2 + 23);
  v4 = *(a2 + 8);
  if ((v3 & 0x80u) == 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = SBYTE7(v32);
  if ((SBYTE7(v32) & 0x80u) == 0)
  {
    v7 = BYTE7(v32);
  }

  else
  {
    v7 = __p[1];
  }

  v18 = v5 >= v7;
  v8 = v5 - v7;
  if (!v18)
  {
    v9 = 0;
    if ((SBYTE7(v32) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((v3 & 0x80) != 0)
  {
    if (v7 == -1 || v4 < v8)
    {
LABEL_69:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v4 - v8 >= v7)
    {
      v20 = v7;
    }

    else
    {
      v20 = v4 - v8;
    }

    v21 = *a2;
  }

  else
  {
    v18 = v7 != -1 && v3 >= v8;
    if (!v18)
    {
      goto LABEL_69;
    }

    v19 = v3 - v8;
    if (v19 >= v7)
    {
      v20 = v7;
    }

    else
    {
      v20 = v19;
    }

    v21 = a2;
  }

  if ((SBYTE7(v32) & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  v29 = memcmp((v21 + v8), v28, v20);
  v9 = v20 == v7 && v29 == 0;
  if (v6 < 0)
  {
LABEL_9:
    operator delete(__p[0]);
  }

LABEL_10:
  if (v9)
  {
    if (quasar::gLogLevel >= 5)
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      *__p = 0u;
      v32 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Compiling espresso model: ", 26);
      v11 = *(a2 + 23);
      if (v11 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      if (v11 >= 0)
      {
        v13 = *(a2 + 23);
      }

      else
      {
        v13 = *(a2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    if (espresso_ane_cache_has_network())
    {
      std::allocate_shared[abi:ne200100]<kaldi::quasar::CEInferenceNet,std::allocator<kaldi::quasar::CEInferenceNet>,std::string const&,0>();
    }

    if (quasar::gLogLevel >= 4)
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      *__p = 0u;
      v32 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Skipping already compiled ANE model: ", 37);
      v15 = *(a2 + 23);
      if (v15 >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a2;
      }

      if (v15 >= 0)
      {
        v17 = *(a2 + 23);
      }

      else
      {
        v17 = *(a2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    }

    return 1;
  }

  else
  {
    if (quasar::gLogLevel >= 4)
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      *__p = 0u;
      v32 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Model is not in espresso format: ", 33);
      v23 = *(a2 + 23);
      if (v23 >= 0)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a2;
      }

      if (v23 >= 0)
      {
        v25 = *(a2 + 23);
      }

      else
      {
        v25 = *(a2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    }

    return 0;
  }
}

uint64_t quasar::ModelLoader::purgeModel(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, ".espresso.net");
  v3 = *(a2 + 23);
  v4 = *(a2 + 8);
  if ((v3 & 0x80u) == 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = SBYTE7(v48);
  if ((SBYTE7(v48) & 0x80u) == 0)
  {
    v7 = BYTE7(v48);
  }

  else
  {
    v7 = __p[1];
  }

  v22 = v5 >= v7;
  v8 = v5 - v7;
  if (!v22)
  {
    v9 = 0;
    if ((SBYTE7(v48) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((v3 & 0x80) != 0)
  {
    if (v7 == -1 || v4 < v8)
    {
LABEL_86:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v4 - v8 >= v7)
    {
      v24 = v7;
    }

    else
    {
      v24 = v4 - v8;
    }

    v25 = *a2;
  }

  else
  {
    v22 = v7 != -1 && v3 >= v8;
    if (!v22)
    {
      goto LABEL_86;
    }

    v23 = v3 - v8;
    if (v23 >= v7)
    {
      v24 = v7;
    }

    else
    {
      v24 = v23;
    }

    v25 = a2;
  }

  if ((SBYTE7(v48) & 0x80u) == 0)
  {
    v32 = __p;
  }

  else
  {
    v32 = __p[0];
  }

  v33 = memcmp((v25 + v8), v32, v24);
  v9 = v24 == v7 && v33 == 0;
  if (v6 < 0)
  {
LABEL_9:
    operator delete(__p[0]);
  }

LABEL_10:
  if (!v9)
  {
    if (quasar::gLogLevel >= 4)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      *__p = 0u;
      v48 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Model is not in espresso format: ", 33);
      v27 = *(a2 + 23);
      if (v27 >= 0)
      {
        v28 = a2;
      }

      else
      {
        v28 = *a2;
      }

      if (v27 >= 0)
      {
        v29 = *(a2 + 23);
      }

      else
      {
        v29 = *(a2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
      goto LABEL_46;
    }

    return 0;
  }

  if (quasar::gLogLevel >= 5)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    *__p = 0u;
    v48 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Purging espresso model: ", 24);
    v11 = *(a2 + 23);
    if (v11 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    if (v11 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

  has_network = espresso_ane_cache_has_network();
  if (has_network)
  {
    if (quasar::gLogLevel >= 4)
    {
      v15 = has_network;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      *__p = 0u;
      v48 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Failed to check ANE cache existence, network: ", 46);
      v17 = *(a2 + 23);
      if (v17 >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      if (v17 >= 0)
      {
        v19 = *(a2 + 23);
      }

      else
      {
        v19 = *(a2 + 8);
      }

      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", status: ", 10);
      MEMORY[0x1B8C84C00](v21, v15);
LABEL_46:
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
      return 0;
    }

    return 0;
  }

  v35 = espresso_ane_cache_purge_network();
  if (v35)
  {
    if (quasar::gLogLevel >= 2)
    {
      v36 = v35;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      *__p = 0u;
      v48 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Failed to purge model from ANE cache, network: ", 47);
      v38 = *(a2 + 23);
      if (v38 >= 0)
      {
        v39 = a2;
      }

      else
      {
        v39 = *a2;
      }

      if (v38 >= 0)
      {
        v40 = *(a2 + 23);
      }

      else
      {
        v40 = *(a2 + 8);
      }

      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v39, v40);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", status: ", 10);
      MEMORY[0x1B8C84C00](v42, v36);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(__p);
    }

    return 0;
  }

  if (quasar::gLogLevel >= 4)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    *__p = 0u;
    v48 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Successfully purged model from ANE cache: ", 42);
    v44 = *(a2 + 23);
    if (v44 >= 0)
    {
      v45 = a2;
    }

    else
    {
      v45 = *a2;
    }

    if (v44 >= 0)
    {
      v46 = *(a2 + 23);
    }

    else
    {
      v46 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v45, v46);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  return 1;
}

void sub_1B58F32BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  _Unwind_Resume(a1);
}

dispatch_group_t quasar::ModelLoader::enableParallelLoading(quasar::ModelLoader *this)
{
  *(this + 59) = dispatch_queue_create("backgroundLoading", 0);
  result = dispatch_group_create();
  *(this + 60) = result;
  atomic_store(1u, this + 489);
  return result;
}

BOOL quasar::ModelLoader::isParallelLoadingEnabled(uint64_t a1, uint64_t **a2)
{
  v2 = atomic_load((a1 + 489));
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, ".mlmodelc");
  v4 = *(a2 + 23);
  v5 = a2[1];
  if ((v4 & 0x80u) == 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = v20;
  if ((v20 & 0x80u) == 0)
  {
    v8 = v20;
  }

  else
  {
    v8 = __p[1];
  }

  v11 = v6 >= v8;
  v9 = v6 - v8;
  if (v11)
  {
    if ((v4 & 0x80) != 0)
    {
      if (v8 == -1 || v5 < v9)
      {
LABEL_42:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (v5 - v9 >= v8)
      {
        v13 = v8;
      }

      else
      {
        v13 = v5 - v9;
      }

      a2 = *a2;
    }

    else
    {
      v11 = v8 != -1 && v4 >= v9;
      if (!v11)
      {
        goto LABEL_42;
      }

      v12 = v4 - v9;
      if (v12 >= v8)
      {
        v13 = v8;
      }

      else
      {
        v13 = v12;
      }
    }

    if ((v20 & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    v16 = memcmp(a2 + v9, v15, v13);
    v10 = v13 == v8 && v16 == 0;
    if (v7 < 0)
    {
      goto LABEL_40;
    }

    return v10;
  }

  v10 = 0;
  if (v20 < 0)
  {
LABEL_40:
    operator delete(__p[0]);
  }

  return v10;
}

NSObject *quasar::ModelLoader::waitUntilLoadingFinishes(quasar::ModelLoader *this)
{
  result = *(this + 60);
  if (result)
  {
    return dispatch_group_wait(result, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

void quasar::ModelLoader::setEmbeddedMlockOverrides(quasar::ModelLoader *this, const quasar::PTree *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(this + 584);
  v4 = quasar::PTree::begin(a2);
  if (v4 != quasar::PTree::end(a2))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "model-file");
    quasar::PTree::getString(v4 + 24, __p);
  }

  if (quasar::gLogLevel > 3)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "ModelLoader embedded mlock overrides: ", 38);
    MEMORY[0x1B8C84C30](v5, *(this + 76));
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }
}

uint64_t quasar::ModelLoader::requestEmbeddedMlock@<X0>(uint64_t result@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  if (*(result + 576) == 1)
  {
    v4 = result;
    if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((result + 584), a2))
    {
      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::string const&,float &>((v4 + 584), a2);
    }

    std::allocate_shared[abi:ne200100]<quasar::ModelLoader::EmbeddedMlockContext,std::allocator<quasar::ModelLoader::EmbeddedMlockContext>,std::string const&,float &,0>();
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t quasar::ModelLoader::dumpInCoreStats(quasar::ModelLoader *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v38);
  v36 = 0;
  v37 = 0;
  v35 = sysconf(29);
  if (v35 == -1)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "could not sysconf(_SC_PAGESIZE): ", 33);
    v17 = __error();
    MEMORY[0x1B8C84C00](v16, *v17);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  for (i = *(this + 3); i; i = *i)
  {
    __p[0] = &v38;
    __p[1] = &v35;
    *&v19 = &v37;
    *(&v19 + 1) = &v36;
    quasar::ModelLoader::enumerateSubFiles<quasar::ModelLoader::dumpInCoreStats(void)::$_0>((i + 2), __p);
  }

  for (j = *(this + 38); j; j = *j)
  {
    __p[0] = &v38;
    __p[1] = &v35;
    *&v19 = &v37;
    *(&v19 + 1) = &v36;
    quasar::ModelLoader::enumerateSubFiles<quasar::ModelLoader::dumpInCoreStats(void)::$_0>((j + 2), __p);
  }

  for (k = *(this + 28); k; k = *k)
  {
    __p[0] = &v38;
    __p[1] = &v35;
    *&v19 = &v37;
    *(&v19 + 1) = &v36;
    quasar::ModelLoader::enumerateSubFiles<quasar::ModelLoader::dumpInCoreStats(void)::$_0>((k + 2), __p);
  }

  for (m = *(this + 33); m; m = *m)
  {
    __p[0] = &v38;
    __p[1] = &v35;
    *&v19 = &v37;
    *(&v19 + 1) = &v36;
    quasar::ModelLoader::enumerateSubFiles<quasar::ModelLoader::dumpInCoreStats(void)::$_0>((m + 2), __p);
  }

  for (n = *(this + 43); n; n = *n)
  {
    __p[0] = &v38;
    __p[1] = &v35;
    *&v19 = &v37;
    *(&v19 + 1) = &v36;
    quasar::ModelLoader::enumerateSubFiles<quasar::ModelLoader::dumpInCoreStats(void)::$_0>((n + 2), __p);
  }

  for (ii = *(this + 48); ii; ii = *ii)
  {
    __p[0] = &v38;
    __p[1] = &v35;
    *&v19 = &v37;
    *(&v19 + 1) = &v36;
    quasar::ModelLoader::enumerateSubFiles<quasar::ModelLoader::dumpInCoreStats(void)::$_0>((ii + 2), __p);
  }

  v9 = *(this + 56);
  for (jj = *(this + 57); v9 != jj; v9 += 24)
  {
    __p[0] = &v38;
    __p[1] = &v35;
    *&v19 = &v37;
    *(&v19 + 1) = &v36;
    quasar::ModelLoader::enumerateSubFiles<quasar::ModelLoader::dumpInCoreStats(void)::$_0>(v9, __p);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "total ", 6);
  v11 = MEMORY[0x1B8C84C30](v10, v37);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " pages loaded of ", 17);
  v13 = MEMORY[0x1B8C84C30](v12, v36);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);
  std::stringbuf::str();
  if ((SBYTE7(v19) & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  fputs(v14, *MEMORY[0x1E69E9848]);
  if (SBYTE7(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v38 = *MEMORY[0x1E69E54E8];
  *(&v38 + *(v38 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v39 = MEMORY[0x1E69E5548] + 16;
  if (v41 < 0)
  {
    operator delete(v40[7].__locale_);
  }

  v39 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v40);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v42);
}

void sub_1B58F3EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, char a15, int a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a17);
  _Unwind_Resume(a1);
}

uint64_t fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::NGramFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  v2 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 68) = _D0;
  *a1 = &unk_1F2D24E30;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  std::string::basic_string[abi:ne200100]<0>(&__str, "ngram");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
    *v2 = 0;
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(*v8 + 8))(v8);
    *(a1 + 48) = 0;
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x25A555550001;
  return a1;
}

void sub_1B58F4090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::~CompactLatticeMinimizer((v15 + 344));
  fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::~CompactLatticeMinimizer((v15 + 280));
  fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::~CompactLatticeMinimizer(v16);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v15);
  _Unwind_Resume(a1);
}

void sub_1B58F43F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, char a15, int a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a17);
  _Unwind_Resume(a1);
}

uint64_t fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::NGramFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  v2 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 68) = _D0;
  *a1 = &unk_1F2D251D0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::TypeString(&__str);
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
    *v2 = 0;
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(*v8 + 8))(v8);
    *(a1 + 48) = 0;
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x25A555550001;
  return a1;
}

void sub_1B58F45E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::~CompactLatticeMinimizer((v15 + 344));
  fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::~CompactLatticeMinimizer((v15 + 280));
  fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::~CompactLatticeMinimizer(v16);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v15);
  _Unwind_Resume(a1);
}

void sub_1B58F489C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, void *a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a19);
  _Unwind_Resume(a1);
}

uint64_t fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::ReducedFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D25570;
  *(a1 + 88) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = -1;
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::TypeString(&__str);
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950001;
  return a1;
}

void sub_1B58F49D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v15);
  _Unwind_Resume(a1);
}

void sub_1B58F4C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, void *a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a19);
  _Unwind_Resume(a1);
}

uint64_t fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::ReducedFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D25820;
  *(a1 + 88) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = -1;
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::TypeString(&__str);
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950001;
  return a1;
}

void sub_1B58F4DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v15);
  _Unwind_Resume(a1);
}

void sub_1B58F504C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, void *a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a19);
  _Unwind_Resume(a1);
}

uint64_t fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::ReducedFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D25B50;
  *(a1 + 88) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = -1;
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::TypeString(&__str);
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950001;
  return a1;
}

void sub_1B58F5180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v15);
  _Unwind_Resume(a1);
}

void sub_1B58F5420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, void *a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a19);
  _Unwind_Resume(a1);
}

uint64_t fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::ReducedFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D25E80;
  *(a1 + 88) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = -1;
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>::TypeString(&__str);
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950001;
  return a1;
}

void sub_1B58F5554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::SqueezedFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D261B0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = -1;
  *(a1 + 144) = 0;
  fst::SqueezedFstConsts<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::TypeString(&__str);
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950001;
  return a1;
}

void sub_1B58F5C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 144);
  *(v15 + 144) = 0;
  if (v17)
  {
    MEMORY[0x1B8C85350](v17, 0x1000C40451B5BE8);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::SqueezedFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D26408;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = -1;
  *(a1 + 144) = 0;
  fst::SqueezedFstConsts<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::TypeString(&__str);
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950001;
  return a1;
}

void sub_1B58F6388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 144);
  *(v15 + 144) = 0;
  if (v17)
  {
    MEMORY[0x1B8C85350](v17, 0x1000C40451B5BE8);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v15);
  _Unwind_Resume(a1);
}

void fst::SqueezedQuantizationOptions<false,true>::Read()
{
  std::istream::read();
  std::istream::read();
  std::istream::read();
  std::istream::read();
  operator new();
}

uint64_t fst::SqueezedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::SqueezedFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D266E0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = -1;
  *(a1 + 144) = 0;
  fst::SqueezedFstConsts<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::TypeString(&__str);
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950001;
  return a1;
}

void sub_1B58F6B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 144);
  *(v15 + 144) = 0;
  if (v17)
  {
    MEMORY[0x1B8C85350](v17, 0x1000C40504FFAC1);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v15);
  _Unwind_Resume(a1);
}

void fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Read()
{
  v3 = 0u;
  v2 = 0u;
  v1 = 0u;
  v0 = 0u;
  v5 = 0;
  v6 = 0;
  v4 = -1;
  operator new();
}

void sub_1B58F7228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  fst::LogMessage::~LogMessage(&a21);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  fst::FstHeader::~FstHeader(&a39);
  v46 = *(v44 - 176);
  *(v44 - 176) = 0;
  if (v46)
  {
    std::default_delete<fst::EnumerationData const>::operator()[abi:ne200100](v44 - 176, v46);
  }

  v47 = *(v44 - 160);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  fst::FstHeader::~FstHeader((v44 - 144));
  _Unwind_Resume(a1);
}

uint64_t fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::EnumerationFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D38430;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__str, "enumeration");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x555550001;
  return a1;
}

void sub_1B58F7510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>> const,std::default_delete<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>> const>>::~unique_ptr[abi:ne200100](v17);
  v19 = *(v15 + 72);
  *(v15 + 72) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *v16;
  *v16 = 0;
  if (v20)
  {
    std::default_delete<fst::EnumerationData const>::operator()[abi:ne200100](v16, v20);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>> const,std::default_delete<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>> const>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 216);
    if (v3)
    {
      *(v2 + 224) = v3;
      operator delete(v3);
    }

    std::__tree<int>::destroy(v2 + 192, *(v2 + 200));
    *(v2 + 16) = &unk_1F2D38488;
    fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::~SortedMatcher((v2 + 24));
    MEMORY[0x1B8C85350](v2, 0x10F0C40F7479C92);
  }

  return a1;
}

uint64_t fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::~EnumerationFstImpl(void *a1)
{
  *a1 = &unk_1F2D38430;
  std::unique_ptr<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>> const,std::default_delete<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>> const>>::~unique_ptr[abi:ne200100](a1 + 10);
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    std::default_delete<fst::EnumerationData const>::operator()[abi:ne200100]((a1 + 8), v3);
  }

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);
}

void fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::~EnumerationFstImpl(void *a1)
{
  *a1 = &unk_1F2D38430;
  std::unique_ptr<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>> const,std::default_delete<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>> const>>::~unique_ptr[abi:ne200100](a1 + 10);
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    std::default_delete<fst::EnumerationData const>::operator()[abi:ne200100]((a1 + 8), v3);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FstStateDenseDistribution<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::GetWeight(uint64_t a1, int a2)
{
  v3 = fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Find(a1 + 8, a2);
  FstCheck(v3, "(const_cast<fst::SortedMatcher<InnerFstT>*>(&matcher_)->Find(label)) == (true)", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 330);
  if (*(a1 + 80) == 1)
  {
    v4 = a1 + 64;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = v6 | 0xF;
    if (v6 != (v6 | 0xF))
    {
      fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(v5);
      v5 = *(a1 + 32);
    }

    v4 = v5 + 24;
  }

  return v4 + 8;
}

void *fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::~SortedMatcher(void *a1)
{
  *a1 = &unk_1F2D384D0;
  v2 = a1[3];
  if (v2)
  {
    (**v2)(a1[3]);
    *(v2 + 64) = a1[17];
    a1[17] = v2;
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  a1[10] = &unk_1F2D38568;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::Link>::~MemoryArena(a1 + 11);
  quasar::Bitmap::~Bitmap((a1 + 10));
  return a1;
}

void fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::~SortedMatcher(void *a1)
{
  fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::~SortedMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Type(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 == 3)
  {
    return 3;
  }

  if (v2)
  {
    v6 = 0x40000000;
  }

  else
  {
    v6 = 0x10000000;
  }

  v7 = *(a1 + 8);
  if (v2)
  {
    v8 = 3221225472;
  }

  else
  {
    v8 = 805306368;
  }

  v9 = (*(*v7 + 64))(v7, v8, a2);
  if ((v9 & v6) != 0)
  {
    return *(a1 + 32);
  }

  v10 = 0x80000000;
  if (!v2)
  {
    v10 = 0x20000000;
  }

  if ((v9 & v10) != 0)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 74))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Value_(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    return a1 + 56;
  }

  v3 = *(a1 + 24);
  v4 = *(v3 + 56);
  *(v3 + 56) = v4 | 0xF;
  if (v4 != (v4 | 0xF))
  {
    fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(v3);
    v3 = *(a1 + 24);
  }

  return v3 + 24;
}

uint64_t fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Next_(uint64_t result)
{
  if (*(result + 72) == 1)
  {
    *(result + 72) = 0;
  }

  else
  {
    v1 = *(result + 24);
    ++*(v1 + 48);
    return fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(v1);
  }

  return result;
}

float fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Final_(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 8) + 8);
  v3 = *(*(v2 + 72) + 4 * a2);
  if (v3 <= 0)
  {
    return *(*(v2 + 104) + 8 * -v3);
  }

  else
  {
    return INFINITY;
  }
}

uint64_t fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Priority_(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 8) + 8);
  if (*(v2 + 112) - 1 == a2)
  {
    fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Priority_();
    return v7;
  }

  else
  {
    v3 = *(v2 + 72);
    v4 = *(v3 + 4 * a2 + 4);
    if (v4 <= 0)
    {
      v4 = *(*(v2 + 104) + 8 * -v4 + 4);
    }

    v5 = *(v3 + 4 * a2);
    if (v5 <= 0)
    {
      v5 = *(*(v2 + 104) + 8 * -v5 + 4);
    }

    return v4 - v5;
  }
}

void fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D38568;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2D38568;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::Link>::~MemoryArena(void *a1)
{
  *a1 = &unk_1F2D385A8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B8C85310](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  quasar::Bitmap::~Bitmap(a1);
}

{
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SortedMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D384D0;
  *(a1 + 8) = (*(**(a2 + 8) + 88))(*(a2 + 8), a3);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 74) = *(a2 + 74);
  fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::MemoryPool((a1 + 80), 1);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D385A8;
  a1[1] = 72 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B58F7F4C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetState(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != a2)
  {
    *(a1 + 16) = a2;
    if (*(a1 + 32) == 3)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v4 = fst::LogMessage::LogMessage(&v17, __p);
      v5 = fst::cerr(v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "SortedMatcher: bad match type", 29);
      fst::LogMessage::~LogMessage(&v17);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      *(a1 + 74) = 1;
    }

    v6 = *(a1 + 24);
    if (v6)
    {
      (*(*v6 + 16))(v6, a2);
      v7 = *(a1 + 24);
    }

    else
    {
      v8 = *(a1 + 136);
      if (v8)
      {
        *(a1 + 136) = *(v8 + 64);
      }

      else
      {
        v8 = fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::Link>::Allocate((a1 + 88), 1);
        *(v8 + 64) = 0;
      }

      v7 = fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ArcIterator(v8, *(a1 + 8), a2);
      *(a1 + 24) = v7;
    }

    v9 = *(v7 + 56);
    *(v7 + 56) = v9 & 0xFFFFFFEF;
    if (v9 != (v9 & 0xFFFFFFEF))
    {
      fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(v7);
    }

    v10 = *(*(a1 + 8) + 8);
    if (*(v10 + 112) - 1 == a2)
    {
      fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Priority_();
      v14 = v18;
    }

    else
    {
      v11 = *(v10 + 72);
      v12 = *(v11 + 4 * a2 + 4);
      if (v12 <= 0)
      {
        v12 = *(*(v10 + 104) + 8 * -v12 + 4);
      }

      v13 = *(v11 + 4 * a2);
      if (v13 <= 0)
      {
        v13 = *(*(v10 + 104) + 8 * -v13 + 4);
      }

      v14 = v12 - v13;
    }

    *(a1 + 48) = v14;
    *(a1 + 68) = a2;
  }
}

void sub_1B58F8140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 72 * a2;
  v4 = a1[1];
  if (288 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Find(uint64_t a1, int a2)
{
  *(a1 + 73) = 1;
  if (*(a1 + 74) == 1)
  {
    v3 = 0;
    *(a1 + 72) = 0;
    *(a1 + 40) = -1;
  }

  else
  {
    *(a1 + 72) = a2 == 0;
    if (a2 == -1)
    {
      v4 = 0;
    }

    else
    {
      v4 = a2;
    }

    *(a1 + 40) = v4;
    if (fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Search(a1))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(a1 + 72);
    }
  }

  return v3 & 1;
}

uint64_t fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Search(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v2 + 56);
  v5 = v4 & 0xFFFFFFF0 | v3;
  *(v2 + 56) = v5;
  if (v4 != 15 && v4 != v5)
  {
    fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(v2);
  }

  if (*(a1 + 40) < *(a1 + 36))
  {
    v7 = *(a1 + 24);
    *(v7 + 48) = 0;
    fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(v7);
    v8 = *(a1 + 24);
    v9 = (v8 + 48);
    v10 = *(v8 + 48);
    if (v10 < *(v8 + 40))
    {
      while (1)
      {
        v11 = *(a1 + 32) ? 28 : 24;
        v12 = *(v8 + v11);
        v13 = *(a1 + 40);
        v14 = v12 == v13;
        v15 = v12 <= v13 ? 0 : 7;
        if (v14)
        {
          v15 = 1;
        }

        if (v15)
        {
          break;
        }

        *v9 = v10 + 1;
        fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(v8);
        v8 = *(a1 + 24);
        v9 = (v8 + 48);
        v10 = *(v8 + 48);
        if (v10 >= *(v8 + 40))
        {
          return 0;
        }
      }

      if (v15 == 1)
      {
        return 1;
      }
    }

    return 0;
  }

  v16 = *(a1 + 48);
  v17 = *(a1 + 24);
  v18 = 0;
  if (!v16)
  {
LABEL_32:
    *(v17 + 48) = v18;
    fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(v17);
    return 0;
  }

  while (1)
  {
    v19 = (v18 + v16) >> 1;
    *(v17 + 48) = v19;
    fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(v17);
    v17 = *(a1 + 24);
    v20 = *(a1 + 32) ? 28 : 24;
    v21 = *(v17 + v20);
    v22 = *(a1 + 40);
    if (v21 <= v22)
    {
      break;
    }

    v16 = (v18 + v16) >> 1;
LABEL_31:
    if (v18 >= v16)
    {
      goto LABEL_32;
    }
  }

  if (v21 < v22)
  {
    v18 = v19 + 1;
    goto LABEL_31;
  }

  while (v19 > v18)
  {
    *(v17 + 48) = --v19;
    fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(v17);
    v17 = *(a1 + 24);
    if (*(a1 + 32))
    {
      v24 = 28;
    }

    else
    {
      v24 = 24;
    }

    if (*(v17 + v24) != *(a1 + 40))
    {
      *(v17 + 48) = v19 + 1;
      fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(v17);
      return 1;
    }
  }

  return 1;
}

BOOL fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Done(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (*(v3 + 48) >= *(v3 + 40))
  {
    return 1;
  }

  if (*(a1 + 73) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(v3 + 56);
  v7 = v6 & 0xFFFFFFF0 | v5;
  *(v3 + 56) = v7;
  v8 = v6 == 15 || v6 == v7;
  if (!v8)
  {
    fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(v3);
    v4 = *(a1 + 32);
  }

  v8 = v4 == 0;
  v9 = 28;
  if (v8)
  {
    v9 = 24;
  }

  return *(*(a1 + 24) + v9) != *(a1 + 40);
}

void std::default_delete<fst::EnumerationData const>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x1B8C85350);
  }
}

void fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::EnumerationFstImpl(uint64_t a1, fst::EnumerationData *a2)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D38430;
  fst::EnumerationData::Copy(a2);
}

void sub_1B58F888C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>> const,std::default_delete<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>> const>>::~unique_ptr[abi:ne200100](v15 + 10);
  v17 = v15[9];
  v15[9] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = v15[8];
  v15[8] = 0;
  if (v18)
  {
    std::default_delete<fst::EnumerationData const>::operator()[abi:ne200100]((v15 + 8), v18);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v15);
  _Unwind_Resume(a1);
}

void sub_1B58F89C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x1B8C85350](v11, v10);
  _Unwind_Resume(a1);
}

uint64_t *fst::EnumerationData::EnumerationData(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  FstCheck(*(v3 + 24) != 0, "(region_->Size()) > (0)", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 207);
  return a1;
}

void sub_1B58F8A50(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::VirtualStateSpaceManager(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  fst::FstStateDenseDistribution<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::FstStateDenseDistribution(a1 + 2, a3);
}

void sub_1B58F8D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  v23 = *v21;
  if (*v21)
  {
    *(v19 + 224) = v23;
    operator delete(v23);
  }

  std::__tree<int>::destroy(v20, *(v19 + 200));
  *(v19 + 16) = &unk_1F2D38488;
  fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::~SortedMatcher((v19 + 24));
  _Unwind_Resume(a1);
}

uint64_t fst::EnumerationData::TeleportationPoint(fst::EnumerationData *this, int a2)
{
  FstCheck(a2 >= 0, "(idx) >= (0)", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 220);
  FstCheck(*(*(*this + 8) + 8) > a2, "(idx) < (Header().num_teleportation_points)", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 221);
  return *(*this + 8) + 12 * a2 + 40;
}

uint64_t fst::EnumerationData::SubFst(fst::EnumerationData *this, int a2)
{
  FstCheck(a2 >= 0, "(idx) >= (0)", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 229);
  FstCheck(*(*(*this + 8) + 4) > a2, "(idx) < (NumSubFsts())", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 230);
  return *(*this + 8) + 12 * *(*(*this + 8) + 8) + 20 * a2 + 40;
}

void fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SortedMatcher(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_1F2D384D0;
  *(a1 + 8) = (*(*a2 + 88))(a2, 0);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 36) = a4;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_1B5AE3080;
  *(a1 + 74) = 0;
  fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::MemoryPool((a1 + 80), 1);
}

void sub_1B58F914C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::~MemoryPool((v18 + 80));
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,int const&,int &>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 28);
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

void fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::EnumerationFstImpl(uint64_t a1, void *a2, uint64_t *a3)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D38430;
  *(a1 + 64) = *a2;
  *a2 = 0;
  v6 = *a3;
  *a3 = 0;
  *(a1 + 72) = v6;
  operator new();
}

void sub_1B58F93F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>> const,std::default_delete<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>> const>>::~unique_ptr[abi:ne200100]((v15 + 80));
  v18 = *(v15 + 72);
  *(v15 + 72) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *v16;
  *v16 = 0;
  if (v19)
  {
    std::default_delete<fst::EnumerationData const>::operator()[abi:ne200100](v16, v19);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v15);
  _Unwind_Resume(a1);
}

void fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::~EnumerationFst(void *a1)
{
  fst::ImplToFst<fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

BOOL fst::ImplToFst<fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumOutputEpsilons(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 8) + 80);
  if (*(v3 + 184) > a2 && ((fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ArcIterator(v6, *(v3 + 8), a2), v8 < v7) ? (v4 = v6[6] == 0) : (v4 = 0), v4))
  {
    return 1;
  }

  else
  {
    return fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::HasVirtualBackoffArc(v3, a2);
  }
}

uint64_t fst::ImplToFst<fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = *(*(v2 + 80) + 240);
  return result;
}

void *fst::ImplToFst<fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D386E8;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

float fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Final(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 80) + 184) <= a2)
  {
    return INFINITY;
  }

  v2 = a2;
  v4 = (*(**(a1 + 72) + 32))(*(a1 + 72));
  v5 = v4;
  if (v4 != INFINITY)
  {
    v6 = *(a1 + 80);
    if (*(v6 + 184) <= v2)
    {
      v7 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ToTeleportationPointIdx(v6, v2);
      v8 = *v6;
      v9 = fst::EnumerationData::TeleportationPoint(*v6, v7);
      v10 = fst::EnumerationData::SubFst(v8, *v9);
      v11 = *(v6 + 216);
      if (v7 >= ((*(v6 + 224) - v11) >> 2))
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      LODWORD(v2) = *v10 + v2 - *(v11 + 4 * v7);
    }

    if (v2 != **(**v6 + 8))
    {
      v5 = NAN;
      if (v4 != -INFINITY)
      {
        v12 = *(v6 + 176);
        v5 = NAN;
        if (v12 != -INFINITY)
        {
          v13 = v12 == INFINITY || v4 == INFINITY;
          v14 = v4 + v12;
          if (v13)
          {
            return INFINITY;
          }

          else
          {
            return v14;
          }
        }
      }
    }
  }

  return v5;
}

uint64_t fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ToTeleportationPointIdx(uint64_t a1, uint64_t a2)
{
  FstCheck(*(a1 + 184) <= a2, "(IsMainGraph(virtual_state_id)) == (false)", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 412);
  v5 = (a1 + 200);
  for (i = *(a1 + 200); i; i = *(i + 8 * (*(i + 28) <= a2)))
  {
    if (*(i + 28) > a2)
    {
      v5 = i;
    }
  }

  if (v5 == *(a1 + 192))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    v6 = fst::LogMessage::LogMessage(&v16, __p);
    v7 = fst::cerr(v6);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Unable to find teleportation point index for virtual state ", 59);
    v9 = MEMORY[0x1B8C84C00](v8, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ".", 1);
    fst::LogMessage::~LogMessage(&v16);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = *v5;
  if (*v5)
  {
    do
    {
      v11 = v10;
      v10 = *(v10 + 8);
    }

    while (v10);
  }

  else
  {
    do
    {
      v11 = v5[2];
      v12 = *v11 == v5;
      v5 = v11;
    }

    while (v12);
  }

  return *(v11 + 32);
}

void sub_1B58F9AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::NumArcs(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  HasVirtualBackoffArc = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::HasVirtualBackoffArc(*(a1 + 80), a2);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = *(v6 + 184);
  if (HasVirtualBackoffArc)
  {
    if (v7 > v2)
    {
      return (*(*v5 + 40))(v5, v2) + 1;
    }

    v8 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ToTeleportationPointIdx(v6, v2);
    v9 = *v6;
    v10 = fst::EnumerationData::TeleportationPoint(*v6, v8);
    v11 = fst::EnumerationData::SubFst(v9, *v10);
    v12 = *(v6 + 216);
    if (v8 < ((*(v6 + 224) - v12) >> 2))
    {
      v2 = (*v11 + v2 - *(v12 + 4 * v8));
      return (*(*v5 + 40))(v5, v2) + 1;
    }

LABEL_12:
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  if (v7 <= v2)
  {
    v14 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ToTeleportationPointIdx(v6, v2);
    v15 = *v6;
    v16 = fst::EnumerationData::TeleportationPoint(*v6, v14);
    v17 = fst::EnumerationData::SubFst(v15, *v16);
    v18 = *(v6 + 216);
    if (v14 >= ((*(v6 + 224) - v18) >> 2))
    {
      goto LABEL_12;
    }

    v2 = (*v17 + v2 - *(v18 + 4 * v14));
  }

  v19 = *(*v5 + 40);

  return v19(v5, v2);
}

BOOL fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::HasVirtualBackoffArc(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2;
  if (*(a1 + 184) <= a2)
  {
    v5 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ToTeleportationPointIdx(a1, a2);
    v6 = *a1;
    v7 = fst::EnumerationData::TeleportationPoint(*a1, v5);
    v8 = fst::EnumerationData::SubFst(v6, *v7);
    v9 = *(a1 + 216);
    if (v5 >= ((*(a1 + 224) - v9) >> 2))
    {
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    v4 = *v8 + v2 - *(v9 + 4 * v5);
  }

  if (v4 == **(**a1 + 8))
  {
    return 0;
  }

  if (*(a1 + 184) <= v2)
  {
    return 1;
  }

  fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ArcIterator(v12, *(a1 + 8), v2);
  return v14 >= v13 || v12[6] != 0;
}

uint64_t fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::NumInputEpsilons()
{
  std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  v0 = fst::LogMessage::LogMessage(&v5, __p);
  v1 = fst::cerr(v0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "NumInputEpsilons is not implemented on EnumerationFst since it cannot be computed efficiently.", 94);
  fst::LogMessage::~LogMessage(&v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B58F9DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::ArcIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D387A0;
  *(a1 + 8) = a2;
  *(a1 + 16) = -1;
  *(a1 + 56) = -1;
  *(a1 + 64) = -1;
  *(a1 + 72) = 15;
  fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ArcIterator(a1 + 80, *(a2 + 72), 0);
  *(a1 + 144) = 0;
  fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::SetState(a1, a3);
  return a1;
}

uint64_t fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::SetState(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(*(a1 + 8) + 80);
  if (*(v4 + 184) <= a2)
  {
    v5 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ToTeleportationPointIdx(*(*(a1 + 8) + 80), a2);
    v6 = *v4;
    v7 = fst::EnumerationData::TeleportationPoint(*v4, v5);
    v8 = fst::EnumerationData::SubFst(v6, *v7);
    v9 = *(v4 + 216);
    if (v5 >= ((*(v4 + 224) - v9) >> 2))
    {
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    a2 = (*v8 + v2 - *(v9 + 4 * v5));
  }

  (*(*(a1 + 80) + 16))(a1 + 80, a2);
  *(a1 + 144) = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::HasVirtualBackoffArc(*(*(a1 + 8) + 80), v2);
  *(a1 + 16) = v2;
  *(a1 + 56) = fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::NumArcs(*(a1 + 8), v2);
  v10 = *(*a1 + 56);

  return v10(a1);
}

uint64_t fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::Value_(uint64_t a1)
{
  if (*(a1 + 144) == 1 && !*(a1 + 64))
  {
    v1 = 36;
  }

  else
  {
    v1 = 20;
  }

  return a1 + v1;
}

void fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::Next_(uint64_t a1)
{
  v2 = *(a1 + 64) + 1;
  *(a1 + 64) = v2;
  FstCheck(v2 != 0, "(i_) >= (1)", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 1110);
  if (*(a1 + 144) != 1 || *(a1 + 64) >= 2uLL)
  {
    ++*(a1 + 128);
    fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(a1 + 80);
  }

  fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::ComputeFullArc(a1);
}

void fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::Reset_(uint64_t a1)
{
  *(a1 + 128) = 0;
  fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(a1 + 80);
  *(a1 + 64) = 0;
  if (*(a1 + 144) == 1)
  {

    fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::ComputeBackoffArc(a1);
  }

  else
  {

    fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::ComputeFullArc(a1);
  }
}

void fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::Seek_(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 144);
  if (((a2 == 0) & v4) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2 - v4;
  }

  *(a1 + 128) = v5;
  fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(a1 + 80);
  *(a1 + 64) = a2;
  if (a2 || (*(a1 + 144) & 1) == 0)
  {

    fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::ComputeFullArc(a1);
  }
}

void fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::SetFlags_(uint64_t a1, char a2, int a3)
{
  v4 = *(a1 + 136);
  v5 = ~a3;
  v6 = a2 & 0xF;
  v7 = v4 & ~a3 | v6;
  *(a1 + 136) = v7;
  if (v4 != 15 && v4 != v7)
  {
    fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SetFullArc(a1 + 80);
  }

  v9 = *(a1 + 72);
  v10 = v9 & v5 | v6;
  *(a1 + 72) = v10;
  if (v9 != 15 && v9 != v10)
  {
    if (*(a1 + 144) == 1 && !*(a1 + 64))
    {

      fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::ComputeBackoffArc(a1);
    }

    else
    {

      fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::ComputeFullArc(a1);
    }
  }
}

void fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::ComputeFullArc(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 < *(a1 + 56))
  {
    if (*(a1 + 144) == 1)
    {
      FstCheck(v1 != 0, "(i_) >= (1)", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 1071);
    }

    v3 = *(a1 + 72);
    *(a1 + 20) = *(a1 + 104);
    if ((v3 & 0xFu) - 1 >= 2)
    {
      if ((v3 & 8) != 0)
      {
        v4 = *(*(a1 + 8) + 80);
        v5 = *(a1 + 16);
        v6 = *(a1 + 116);
        if (*(v4 + 184) <= v5)
        {
          v9 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ToTeleportationPointIdx(*(*(a1 + 8) + 80), v5);
          v10 = *v4;
          v11 = fst::EnumerationData::TeleportationPoint(*v4, v9);
          v12 = fst::EnumerationData::SubFst(v10, *v11);
          v13 = *(v4 + 216);
          if (v9 >= ((*(v4 + 224) - v13) >> 2))
          {
            goto LABEL_27;
          }

          v6 = *(v13 + 4 * v9) + v6 - *v12;
        }

        else
        {
          v7 = *(v4 + 188);
          v8 = v6 - v7;
          if (v6 >= v7)
          {
            FstCheck(v8 < *(*(**v4 + 8) + 8), "(teleportation_point_idx) < (metadata_.NumTeleportationPoints())", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 653);
            v6 = *(*(v4 + 216) + 4 * v8);
          }
        }

        *(a1 + 32) = v6;
        v3 = *(a1 + 72);
      }

      if ((v3 & 4) == 0)
      {
        return;
      }

      *(a1 + 28) = *(a1 + 112);
      if (!*(a1 + 20))
      {
        return;
      }

      v14 = *(*(a1 + 8) + 80);
      v15 = *(a1 + 16);
      if (*(v14 + 184) > v15)
      {
        goto LABEL_17;
      }

      v16 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ToTeleportationPointIdx(*(*(a1 + 8) + 80), *(a1 + 16));
      v17 = *v14;
      v18 = fst::EnumerationData::TeleportationPoint(*v14, v16);
      v19 = fst::EnumerationData::SubFst(v17, *v18);
      v20 = *(v14 + 216);
      if (v16 < ((*(v14 + 224) - v20) >> 2))
      {
        v15 = *v19 + v15 - *(v20 + 4 * v16);
LABEL_17:
        if (v15 != **(**v14 + 8))
        {
          v21 = *(a1 + 28);
          v22 = NAN;
          if (v21 != -INFINITY)
          {
            v23 = *(v14 + 176);
            v22 = NAN;
            if (v23 != -INFINITY)
            {
              v22 = INFINITY;
              v24 = v23 == INFINITY || v21 == INFINITY;
              v25 = v21 + v23;
              if (!v24)
              {
                v22 = v25;
              }
            }
          }

          *(a1 + 28) = v22;
        }

        return;
      }

LABEL_27:
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }
  }
}

void fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::ComputeBackoffArc(uint64_t a1)
{
  FstCheck(*(a1 + 144), "(has_virtual_backoff_arc_) == (true)", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 1041);
  v2 = *(a1 + 72);
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  if ((v2 & 0xFu) - 1 >= 2)
  {
    if ((v2 & 8) != 0)
    {
      v3 = *(*(a1 + 8) + 80);
      v4 = *(a1 + 16);
      if (*(v3 + 184) <= v4)
      {
        v6 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ToTeleportationPointIdx(*(*(a1 + 8) + 80), v4);
        v5 = (fst::EnumerationData::TeleportationPoint(*v3, v6) + 8);
        v2 = *(a1 + 72);
      }

      else
      {
        v5 = *(**v3 + 8);
      }

      *(a1 + 48) = *v5;
    }

    if ((v2 & 4) != 0)
    {
      *(a1 + 44) = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::GetBackoffWeight(*(*(a1 + 8) + 80), *(a1 + 16));
    }
  }
}

float fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::GetBackoffWeight(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (*(a1 + 184) <= a2)
  {
    v5 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ToTeleportationPointIdx(a1, a2);
    v6 = *a1;
    v7 = fst::EnumerationData::TeleportationPoint(*a1, v5);
    v8 = fst::EnumerationData::SubFst(v6, *v7);
    v9 = *(a1 + 216);
    if (v5 >= ((*(a1 + 224) - v9) >> 2))
    {
      goto LABEL_18;
    }

    v4 = *v8 + a2 - *(v9 + 4 * v5);
  }

  FstCheck(v4 != **(**a1 + 8), "(IsUnigramState(virtual_state_id)) == (false)", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 506);
  v10 = *(a1 + 184);
  v11 = a2;
  if (v10 > a2)
  {
    goto LABEL_7;
  }

  v12 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ToTeleportationPointIdx(a1, a2);
  v13 = *a1;
  v14 = fst::EnumerationData::TeleportationPoint(*a1, v12);
  v15 = fst::EnumerationData::SubFst(v13, *v14);
  v16 = *(a1 + 216);
  if (v12 >= ((*(a1 + 224) - v16) >> 2))
  {
LABEL_18:
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v11 = *v15 + a2 - *(v16 + 4 * v12);
  v10 = *(a1 + 184);
LABEL_7:
  v17 = *a1;
  if (v10 <= a2)
  {
    v20 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ToTeleportationPointIdx(a1, a2);
    v21 = fst::EnumerationData::TeleportationPoint(v17, v20);
    fst::EnumerationData::SubFst(*a1, *v21);
    v22 = *(a1 + 184);
    if (v22 <= a2)
    {
      v24 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ToTeleportationPointIdx(a1, a2);
      v23 = (fst::EnumerationData::TeleportationPoint(*a1, v24) + 8);
      v22 = *(a1 + 184);
    }

    else
    {
      v23 = *(**a1 + 8);
    }

    v25 = *v23;
    FstCheck(v22 > *v23, "(IsMainGraph(backoff_state_id)) == (true)", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 525);
    if (*(a1 + 184) > v25)
    {
      fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ArcIterator(__p, *(a1 + 8), v25);
      if (v35 < v34 && !v33)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "WARNING");
        v26 = fst::LogMessage::LogMessage(v30, __p);
        v27 = fst::cerr(v26);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Backing off to a state with an explicit back-off arc ", 53);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "is not supported and will yield an unnormalized model.", 54);
        fst::LogMessage::~LogMessage(v30);
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::SortedMatcher(__p, *(a1 + 8), 0, 1);
  }

  v18 = *(a1 + 180);
  v19 = expf(*(*(*v17 + 8) + 12 * *(*(*v17 + 8) + 8) + 20 * *(*(*v17 + 8) + 4) + 4 * *(*(*v17 + 8) + 36) + 4 * v11 + 40));
  return v18 + log1pf(-v19);
}

void sub_1B58FAE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double fst::NegLogDiff(fst *this, double a2, double a3, BOOL *a4, double a5)
{
  v5 = a2;
  if (a3 != INFINITY)
  {
    if (a2 >= a3)
    {
      if (a2 - a3 >= a5)
      {
        if (FLAGS_v >= 1)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
          v9 = fst::LogMessage::LogMessage(&v17, __p);
          v10 = fst::cerr(v9);
          v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "NegLogDiff: undefined ", 22);
          v12 = MEMORY[0x1B8C84BE0](v11, v5);
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ", 1);
          MEMORY[0x1B8C84BE0](v13, a3);
          fst::LogMessage::~LogMessage(&v17);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (this)
        {
          *this = 1;
        }
      }

      return INFINITY;
    }

    else
    {
      v7 = exp(a3 - a2);
      return a3 - log(v7 + -1.0);
    }
  }

  return v5;
}

void sub_1B58FB058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::Read()
{
  v3 = 0u;
  v2 = 0u;
  v1 = 0u;
  v0 = 0u;
  v5 = 0;
  v6 = 0;
  v4 = -1;
  operator new();
}

void sub_1B58FB708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  fst::LogMessage::~LogMessage(&a21);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  fst::FstHeader::~FstHeader(&a39);
  v46 = *(v44 - 176);
  *(v44 - 176) = 0;
  if (v46)
  {
    std::default_delete<fst::EnumerationData const>::operator()[abi:ne200100](v44 - 176, v46);
  }

  v47 = *(v44 - 160);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  fst::FstHeader::~FstHeader((v44 - 144));
  _Unwind_Resume(a1);
}

uint64_t fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::EnumerationFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D38820;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__str, "quantized_enumeration");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x555550001;
  return a1;
}

void sub_1B58FB9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>> const,std::default_delete<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>> const>>::~unique_ptr[abi:ne200100](v17);
  v19 = *(v15 + 72);
  *(v15 + 72) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *v16;
  *v16 = 0;
  if (v20)
  {
    std::default_delete<fst::EnumerationData const>::operator()[abi:ne200100](v16, v20);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>> const,std::default_delete<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>> const>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 216);
    if (v3)
    {
      *(v2 + 224) = v3;
      operator delete(v3);
    }

    std::__tree<int>::destroy(v2 + 192, *(v2 + 200));
    *(v2 + 16) = &unk_1F2D38878;
    fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::~SortedMatcher((v2 + 24));
    MEMORY[0x1B8C85350](v2, 0x10F0C40F7479C92);
  }

  return a1;
}

uint64_t fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::~EnumerationFstImpl(void *a1)
{
  *a1 = &unk_1F2D38820;
  std::unique_ptr<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>> const,std::default_delete<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>> const>>::~unique_ptr[abi:ne200100](a1 + 10);
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    std::default_delete<fst::EnumerationData const>::operator()[abi:ne200100]((a1 + 8), v3);
  }

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);
}

void fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::~EnumerationFstImpl(void *a1)
{
  *a1 = &unk_1F2D38820;
  std::unique_ptr<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>> const,std::default_delete<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>> const>>::~unique_ptr[abi:ne200100](a1 + 10);
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    std::default_delete<fst::EnumerationData const>::operator()[abi:ne200100]((a1 + 8), v3);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FstStateDenseDistribution<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::GetWeight(uint64_t a1, int a2)
{
  v3 = fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::Find(a1 + 8, a2);
  FstCheck(v3, "(const_cast<fst::SortedMatcher<InnerFstT>*>(&matcher_)->Find(label)) == (true)", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 330);
  if (*(a1 + 80) == 1)
  {
    v4 = a1 + 64;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = v6 | 0xF;
    if (v6 != (v6 | 0xF))
    {
      fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(v5);
      v5 = *(a1 + 32);
    }

    v4 = v5 + 24;
  }

  return v4 + 8;
}

void *fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::~SortedMatcher(void *a1)
{
  *a1 = &unk_1F2D388B0;
  v2 = a1[3];
  if (v2)
  {
    (**v2)(a1[3]);
    *(v2 + 64) = a1[17];
    a1[17] = v2;
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  a1[10] = &unk_1F2D38948;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::Link>::~MemoryArena(a1 + 11);
  quasar::Bitmap::~Bitmap((a1 + 10));
  return a1;
}

void fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::~SortedMatcher(void *a1)
{
  fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::~SortedMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::Type(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 == 3)
  {
    return 3;
  }

  if (v2)
  {
    v6 = 0x40000000;
  }

  else
  {
    v6 = 0x10000000;
  }

  v7 = *(a1 + 8);
  if (v2)
  {
    v8 = 3221225472;
  }

  else
  {
    v8 = 805306368;
  }

  v9 = (*(*v7 + 64))(v7, v8, a2);
  if ((v9 & v6) != 0)
  {
    return *(a1 + 32);
  }

  v10 = 0x80000000;
  if (!v2)
  {
    v10 = 0x20000000;
  }

  if ((v9 & v10) != 0)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 74))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::Value_(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    return a1 + 56;
  }

  v3 = *(a1 + 24);
  v4 = *(v3 + 56);
  *(v3 + 56) = v4 | 0xF;
  if (v4 != (v4 | 0xF))
  {
    fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(v3);
    v3 = *(a1 + 24);
  }

  return v3 + 24;
}

float fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::Next_(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    *(a1 + 72) = 0;
  }

  else
  {
    v1 = *(a1 + 24);
    ++*(v1 + 48);
    return fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(v1);
  }

  return result;
}

float fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::Final_(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 8) + 8);
  v3 = *(*(v2 + 72) + 4 * a2);
  if (v3 <= 0)
  {
    return *(*(v2 + 104) + 8 * -v3);
  }

  else
  {
    return INFINITY;
  }
}

uint64_t fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::Priority_(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 8) + 8);
  if (*(v2 + 112) - 1 == a2)
  {
    fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Priority_();
    return v7;
  }

  else
  {
    v3 = *(v2 + 72);
    v4 = *(v3 + 4 * a2 + 4);
    if (v4 <= 0)
    {
      v4 = *(*(v2 + 104) + 8 * -v4 + 4);
    }

    v5 = *(v3 + 4 * a2);
    if (v5 <= 0)
    {
      v5 = *(*(v2 + 104) + 8 * -v5 + 4);
    }

    return v4 - v5;
  }
}

void fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D38948;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2D38948;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::Link>::~MemoryArena(void *a1)
{
  *a1 = &unk_1F2D38988;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B8C85310](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  quasar::Bitmap::~Bitmap(a1);
}

{
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SortedMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D388B0;
  *(a1 + 8) = (*(**(a2 + 8) + 88))(*(a2 + 8), a3);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 74) = *(a2 + 74);
  fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::MemoryPool((a1 + 80), 1);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D38988;
  a1[1] = 72 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B58FC42C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetState(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != a2)
  {
    *(a1 + 16) = a2;
    if (*(a1 + 32) == 3)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v4 = fst::LogMessage::LogMessage(&v17, __p);
      v5 = fst::cerr(v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "SortedMatcher: bad match type", 29);
      fst::LogMessage::~LogMessage(&v17);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      *(a1 + 74) = 1;
    }

    v6 = *(a1 + 24);
    if (v6)
    {
      (*(*v6 + 16))(v6, a2);
      v7 = *(a1 + 24);
    }

    else
    {
      v8 = *(a1 + 136);
      if (v8)
      {
        *(a1 + 136) = *(v8 + 64);
      }

      else
      {
        v8 = fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>>::Link>::Allocate((a1 + 88), 1);
        *(v8 + 64) = 0;
      }

      v7 = fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ArcIterator(v8, *(a1 + 8), a2);
      *(a1 + 24) = v7;
    }

    v9 = *(v7 + 56);
    *(v7 + 56) = v9 & 0xFFFFFFEF;
    if (v9 != (v9 & 0xFFFFFFEF))
    {
      fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(v7);
    }

    v10 = *(*(a1 + 8) + 8);
    if (*(v10 + 112) - 1 == a2)
    {
      fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Priority_();
      v14 = v18;
    }

    else
    {
      v11 = *(v10 + 72);
      v12 = *(v11 + 4 * a2 + 4);
      if (v12 <= 0)
      {
        v12 = *(*(v10 + 104) + 8 * -v12 + 4);
      }

      v13 = *(v11 + 4 * a2);
      if (v13 <= 0)
      {
        v13 = *(*(v10 + 104) + 8 * -v13 + 4);
      }

      v14 = v12 - v13;
    }

    *(a1 + 48) = v14;
    *(a1 + 68) = a2;
  }
}

void sub_1B58FC620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::Find(uint64_t a1, int a2)
{
  *(a1 + 73) = 1;
  if (*(a1 + 74) == 1)
  {
    v3 = 0;
    *(a1 + 72) = 0;
    *(a1 + 40) = -1;
  }

  else
  {
    *(a1 + 72) = a2 == 0;
    if (a2 == -1)
    {
      v4 = 0;
    }

    else
    {
      v4 = a2;
    }

    *(a1 + 40) = v4;
    if (fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::Search(a1))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(a1 + 72);
    }
  }

  return v3 & 1;
}

uint64_t fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::Search(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v2 + 56);
  v5 = v4 & 0xFFFFFFF0 | v3;
  *(v2 + 56) = v5;
  if (v4 != 15 && v4 != v5)
  {
    fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(v2);
  }

  if (*(a1 + 40) < *(a1 + 36))
  {
    v7 = *(a1 + 24);
    *(v7 + 48) = 0;
    fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(v7);
    v8 = *(a1 + 24);
    v9 = (v8 + 48);
    v10 = *(v8 + 48);
    if (v10 < *(v8 + 40))
    {
      while (1)
      {
        v11 = *(a1 + 32) ? 28 : 24;
        v12 = *(v8 + v11);
        v13 = *(a1 + 40);
        v14 = v12 == v13;
        v15 = v12 <= v13 ? 0 : 7;
        if (v14)
        {
          v15 = 1;
        }

        if (v15)
        {
          break;
        }

        *v9 = v10 + 1;
        fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(v8);
        v8 = *(a1 + 24);
        v9 = (v8 + 48);
        v10 = *(v8 + 48);
        if (v10 >= *(v8 + 40))
        {
          return 0;
        }
      }

      if (v15 == 1)
      {
        return 1;
      }
    }

    return 0;
  }

  v16 = *(a1 + 48);
  v17 = *(a1 + 24);
  v18 = 0;
  if (!v16)
  {
LABEL_32:
    *(v17 + 48) = v18;
    fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(v17);
    return 0;
  }

  while (1)
  {
    v19 = (v18 + v16) >> 1;
    *(v17 + 48) = v19;
    fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(v17);
    v17 = *(a1 + 24);
    v20 = *(a1 + 32) ? 28 : 24;
    v21 = *(v17 + v20);
    v22 = *(a1 + 40);
    if (v21 <= v22)
    {
      break;
    }

    v16 = (v18 + v16) >> 1;
LABEL_31:
    if (v18 >= v16)
    {
      goto LABEL_32;
    }
  }

  if (v21 < v22)
  {
    v18 = v19 + 1;
    goto LABEL_31;
  }

  while (v19 > v18)
  {
    *(v17 + 48) = --v19;
    fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(v17);
    v17 = *(a1 + 24);
    if (*(a1 + 32))
    {
      v24 = 28;
    }

    else
    {
      v24 = 24;
    }

    if (*(v17 + v24) != *(a1 + 40))
    {
      *(v17 + 48) = v19 + 1;
      fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(v17);
      return 1;
    }
  }

  return 1;
}

BOOL fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::Done(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (*(v3 + 48) >= *(v3 + 40))
  {
    return 1;
  }

  if (*(a1 + 73) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(v3 + 56);
  v7 = v6 & 0xFFFFFFF0 | v5;
  *(v3 + 56) = v7;
  v8 = v6 == 15 || v6 == v7;
  if (!v8)
  {
    fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(v3);
    v4 = *(a1 + 32);
  }

  v8 = v4 == 0;
  v9 = 28;
  if (v8)
  {
    v9 = 24;
  }

  return *(*(a1 + 24) + v9) != *(a1 + 40);
}

void fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::EnumerationFstImpl(uint64_t a1, fst::EnumerationData *a2)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D38820;
  fst::EnumerationData::Copy(a2);
}

void sub_1B58FCBF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>> const,std::default_delete<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>> const>>::~unique_ptr[abi:ne200100](v15 + 10);
  v17 = v15[9];
  v15[9] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = v15[8];
  v15[8] = 0;
  if (v18)
  {
    std::default_delete<fst::EnumerationData const>::operator()[abi:ne200100]((v15 + 8), v18);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v15);
  _Unwind_Resume(a1);
}

void fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::VirtualStateSpaceManager(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  fst::FstStateDenseDistribution<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::FstStateDenseDistribution(a1 + 2, a3);
}

void sub_1B58FCFBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  v23 = *v21;
  if (*v21)
  {
    *(v19 + 224) = v23;
    operator delete(v23);
  }

  std::__tree<int>::destroy(v20, *(v19 + 200));
  *(v19 + 16) = &unk_1F2D38878;
  fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::~SortedMatcher((v19 + 24));
  _Unwind_Resume(a1);
}

void fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SortedMatcher(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_1F2D388B0;
  *(a1 + 8) = (*(*a2 + 88))(a2, 0);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 36) = a4;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_1B5AE3080;
  *(a1 + 74) = 0;
  fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::MemoryPool((a1 + 80), 1);
}

void sub_1B58FD26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::MemoryPool<fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::~MemoryPool((v18 + 80));
  _Unwind_Resume(a1);
}

void fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::EnumerationFstImpl(uint64_t a1, void *a2, uint64_t *a3)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D38820;
  *(a1 + 64) = *a2;
  *a2 = 0;
  v6 = *a3;
  *a3 = 0;
  *(a1 + 72) = v6;
  operator new();
}

void sub_1B58FD444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>> const,std::default_delete<fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>> const>>::~unique_ptr[abi:ne200100]((v15 + 80));
  v18 = *(v15 + 72);
  *(v15 + 72) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *v16;
  *v16 = 0;
  if (v19)
  {
    std::default_delete<fst::EnumerationData const>::operator()[abi:ne200100](v16, v19);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v15);
  _Unwind_Resume(a1);
}

void fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::~EnumerationFst(void *a1)
{
  fst::ImplToFst<fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

BOOL fst::ImplToFst<fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumOutputEpsilons(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 8) + 80);
  if (*(v3 + 184) > a2 && ((fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ArcIterator(v6, *(v3 + 8), a2), v8 < v7) ? (v4 = v6[6] == 0) : (v4 = 0), v4))
  {
    return 1;
  }

  else
  {
    return fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::HasVirtualBackoffArc(v3, a2);
  }
}

uint64_t fst::ImplToFst<fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = *(*(v2 + 80) + 240);
  return result;
}

void *fst::ImplToFst<fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D38AC8;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

float fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::Final(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 80) + 184) <= a2)
  {
    return INFINITY;
  }

  v2 = a2;
  v4 = (*(**(a1 + 72) + 32))(*(a1 + 72));
  v5 = v4;
  if (v4 != INFINITY)
  {
    v6 = *(a1 + 80);
    if (*(v6 + 184) <= v2)
    {
      v7 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ToTeleportationPointIdx(v6, v2);
      v8 = *v6;
      v9 = fst::EnumerationData::TeleportationPoint(*v6, v7);
      v10 = fst::EnumerationData::SubFst(v8, *v9);
      v11 = *(v6 + 216);
      if (v7 >= ((*(v6 + 224) - v11) >> 2))
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      LODWORD(v2) = *v10 + v2 - *(v11 + 4 * v7);
    }

    if (v2 != **(**v6 + 8))
    {
      v5 = NAN;
      if (v4 != -INFINITY)
      {
        v12 = *(v6 + 176);
        v5 = NAN;
        if (v12 != -INFINITY)
        {
          v13 = v12 == INFINITY || v4 == INFINITY;
          v14 = v4 + v12;
          if (v13)
          {
            return INFINITY;
          }

          else
          {
            return v14;
          }
        }
      }
    }
  }

  return v5;
}

uint64_t fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ToTeleportationPointIdx(uint64_t a1, uint64_t a2)
{
  FstCheck(*(a1 + 184) <= a2, "(IsMainGraph(virtual_state_id)) == (false)", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 412);
  v5 = (a1 + 200);
  for (i = *(a1 + 200); i; i = *(i + 8 * (*(i + 28) <= a2)))
  {
    if (*(i + 28) > a2)
    {
      v5 = i;
    }
  }

  if (v5 == *(a1 + 192))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    v6 = fst::LogMessage::LogMessage(&v16, __p);
    v7 = fst::cerr(v6);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Unable to find teleportation point index for virtual state ", 59);
    v9 = MEMORY[0x1B8C84C00](v8, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ".", 1);
    fst::LogMessage::~LogMessage(&v16);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = *v5;
  if (*v5)
  {
    do
    {
      v11 = v10;
      v10 = *(v10 + 8);
    }

    while (v10);
  }

  else
  {
    do
    {
      v11 = v5[2];
      v12 = *v11 == v5;
      v5 = v11;
    }

    while (v12);
  }

  return *(v11 + 32);
}

void sub_1B58FDAF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::NumArcs(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  HasVirtualBackoffArc = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::HasVirtualBackoffArc(*(a1 + 80), a2);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = *(v6 + 184);
  if (HasVirtualBackoffArc)
  {
    if (v7 > v2)
    {
      return (*(*v5 + 40))(v5, v2) + 1;
    }

    v8 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ToTeleportationPointIdx(v6, v2);
    v9 = *v6;
    v10 = fst::EnumerationData::TeleportationPoint(*v6, v8);
    v11 = fst::EnumerationData::SubFst(v9, *v10);
    v12 = *(v6 + 216);
    if (v8 < ((*(v6 + 224) - v12) >> 2))
    {
      v2 = (*v11 + v2 - *(v12 + 4 * v8));
      return (*(*v5 + 40))(v5, v2) + 1;
    }

LABEL_12:
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  if (v7 <= v2)
  {
    v14 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ToTeleportationPointIdx(v6, v2);
    v15 = *v6;
    v16 = fst::EnumerationData::TeleportationPoint(*v6, v14);
    v17 = fst::EnumerationData::SubFst(v15, *v16);
    v18 = *(v6 + 216);
    if (v14 >= ((*(v6 + 224) - v18) >> 2))
    {
      goto LABEL_12;
    }

    v2 = (*v17 + v2 - *(v18 + 4 * v14));
  }

  v19 = *(*v5 + 40);

  return v19(v5, v2);
}

BOOL fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::HasVirtualBackoffArc(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2;
  if (*(a1 + 184) <= a2)
  {
    v5 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ToTeleportationPointIdx(a1, a2);
    v6 = *a1;
    v7 = fst::EnumerationData::TeleportationPoint(*a1, v5);
    v8 = fst::EnumerationData::SubFst(v6, *v7);
    v9 = *(a1 + 216);
    if (v5 >= ((*(a1 + 224) - v9) >> 2))
    {
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    v4 = *v8 + v2 - *(v9 + 4 * v5);
  }

  if (v4 == **(**a1 + 8))
  {
    return 0;
  }

  if (*(a1 + 184) <= v2)
  {
    return 1;
  }

  fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ArcIterator(v12, *(a1 + 8), v2);
  return v14 >= v13 || v12[6] != 0;
}

uint64_t fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::NumInputEpsilons()
{
  std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  v0 = fst::LogMessage::LogMessage(&v5, __p);
  v1 = fst::cerr(v0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "NumInputEpsilons is not implemented on EnumerationFst since it cannot be computed efficiently.", 94);
  fst::LogMessage::~LogMessage(&v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B58FDDF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::ArcIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D38B80;
  *(a1 + 8) = a2;
  *(a1 + 16) = -1;
  *(a1 + 56) = -1;
  *(a1 + 64) = -1;
  *(a1 + 72) = 15;
  fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ArcIterator(a1 + 80, *(a2 + 72), 0);
  *(a1 + 144) = 0;
  fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::SetState(a1, a3);
  return a1;
}

uint64_t fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::SetState(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(*(a1 + 8) + 80);
  if (*(v4 + 184) <= a2)
  {
    v5 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ToTeleportationPointIdx(*(*(a1 + 8) + 80), a2);
    v6 = *v4;
    v7 = fst::EnumerationData::TeleportationPoint(*v4, v5);
    v8 = fst::EnumerationData::SubFst(v6, *v7);
    v9 = *(v4 + 216);
    if (v5 >= ((*(v4 + 224) - v9) >> 2))
    {
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    a2 = (*v8 + v2 - *(v9 + 4 * v5));
  }

  (*(*(a1 + 80) + 16))(a1 + 80, a2);
  *(a1 + 144) = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::HasVirtualBackoffArc(*(*(a1 + 8) + 80), v2);
  *(a1 + 16) = v2;
  *(a1 + 56) = fst::EnumerationFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::NumArcs(*(a1 + 8), v2);
  v10 = *(*a1 + 56);

  return v10(a1);
}

uint64_t fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::Value_(uint64_t a1)
{
  if (*(a1 + 144) == 1 && !*(a1 + 64))
  {
    v1 = 36;
  }

  else
  {
    v1 = 20;
  }

  return a1 + v1;
}

void fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::Next_(uint64_t a1)
{
  v2 = *(a1 + 64) + 1;
  *(a1 + 64) = v2;
  FstCheck(v2 != 0, "(i_) >= (1)", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 1110);
  if (*(a1 + 144) != 1 || *(a1 + 64) >= 2uLL)
  {
    ++*(a1 + 128);
    fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(a1 + 80);
  }

  fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::ComputeFullArc(a1);
}

void fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::Reset_(uint64_t a1)
{
  *(a1 + 128) = 0;
  fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(a1 + 80);
  *(a1 + 64) = 0;
  if (*(a1 + 144) == 1)
  {

    fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::ComputeBackoffArc(a1);
  }

  else
  {

    fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::ComputeFullArc(a1);
  }
}

void fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::Seek_(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 144);
  if (((a2 == 0) & v4) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2 - v4;
  }

  *(a1 + 128) = v5;
  fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(a1 + 80);
  *(a1 + 64) = a2;
  if (a2 || (*(a1 + 144) & 1) == 0)
  {

    fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::ComputeFullArc(a1);
  }
}

void fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::SetFlags_(uint64_t a1, char a2, int a3)
{
  v4 = *(a1 + 136);
  v5 = ~a3;
  v6 = a2 & 0xF;
  v7 = v4 & ~a3 | v6;
  *(a1 + 136) = v7;
  if (v4 != 15 && v4 != v7)
  {
    fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SetFullArc(a1 + 80);
  }

  v9 = *(a1 + 72);
  v10 = v9 & v5 | v6;
  *(a1 + 72) = v10;
  if (v9 != 15 && v9 != v10)
  {
    if (*(a1 + 144) == 1 && !*(a1 + 64))
    {

      fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::ComputeBackoffArc(a1);
    }

    else
    {

      fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::ComputeFullArc(a1);
    }
  }
}

void fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::ComputeFullArc(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 < *(a1 + 56))
  {
    if (*(a1 + 144) == 1)
    {
      FstCheck(v1 != 0, "(i_) >= (1)", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 1071);
    }

    v3 = *(a1 + 72);
    *(a1 + 20) = *(a1 + 104);
    if ((v3 & 0xFu) - 1 >= 2)
    {
      if ((v3 & 8) != 0)
      {
        v4 = *(*(a1 + 8) + 80);
        v5 = *(a1 + 16);
        v6 = *(a1 + 116);
        if (*(v4 + 184) <= v5)
        {
          v9 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ToTeleportationPointIdx(*(*(a1 + 8) + 80), v5);
          v10 = *v4;
          v11 = fst::EnumerationData::TeleportationPoint(*v4, v9);
          v12 = fst::EnumerationData::SubFst(v10, *v11);
          v13 = *(v4 + 216);
          if (v9 >= ((*(v4 + 224) - v13) >> 2))
          {
            goto LABEL_27;
          }

          v6 = *(v13 + 4 * v9) + v6 - *v12;
        }

        else
        {
          v7 = *(v4 + 188);
          v8 = v6 - v7;
          if (v6 >= v7)
          {
            FstCheck(v8 < *(*(**v4 + 8) + 8), "(teleportation_point_idx) < (metadata_.NumTeleportationPoints())", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 653);
            v6 = *(*(v4 + 216) + 4 * v8);
          }
        }

        *(a1 + 32) = v6;
        v3 = *(a1 + 72);
      }

      if ((v3 & 4) == 0)
      {
        return;
      }

      *(a1 + 28) = *(a1 + 112);
      if (!*(a1 + 20))
      {
        return;
      }

      v14 = *(*(a1 + 8) + 80);
      v15 = *(a1 + 16);
      if (*(v14 + 184) > v15)
      {
        goto LABEL_17;
      }

      v16 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ToTeleportationPointIdx(*(*(a1 + 8) + 80), *(a1 + 16));
      v17 = *v14;
      v18 = fst::EnumerationData::TeleportationPoint(*v14, v16);
      v19 = fst::EnumerationData::SubFst(v17, *v18);
      v20 = *(v14 + 216);
      if (v16 < ((*(v14 + 224) - v20) >> 2))
      {
        v15 = *v19 + v15 - *(v20 + 4 * v16);
LABEL_17:
        if (v15 != **(**v14 + 8))
        {
          v21 = *(a1 + 28);
          v22 = NAN;
          if (v21 != -INFINITY)
          {
            v23 = *(v14 + 176);
            v22 = NAN;
            if (v23 != -INFINITY)
            {
              v22 = INFINITY;
              v24 = v23 == INFINITY || v21 == INFINITY;
              v25 = v21 + v23;
              if (!v24)
              {
                v22 = v25;
              }
            }
          }

          *(a1 + 28) = v22;
        }

        return;
      }

LABEL_27:
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }
  }
}

void fst::ArcIterator<fst::EnumerationFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>>::ComputeBackoffArc(uint64_t a1)
{
  FstCheck(*(a1 + 144), "(has_virtual_backoff_arc_) == (true)", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 1041);
  v2 = *(a1 + 72);
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  if ((v2 & 0xFu) - 1 >= 2)
  {
    if ((v2 & 8) != 0)
    {
      v3 = *(*(a1 + 8) + 80);
      v4 = *(a1 + 16);
      if (*(v3 + 184) <= v4)
      {
        v6 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ToTeleportationPointIdx(*(*(a1 + 8) + 80), v4);
        v5 = (fst::EnumerationData::TeleportationPoint(*v3, v6) + 8);
        v2 = *(a1 + 72);
      }

      else
      {
        v5 = *(**v3 + 8);
      }

      *(a1 + 48) = *v5;
    }

    if ((v2 & 4) != 0)
    {
      *(a1 + 44) = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::GetBackoffWeight(*(*(a1 + 8) + 80), *(a1 + 16));
    }
  }
}

float fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::GetBackoffWeight(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (*(a1 + 184) <= a2)
  {
    v5 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ToTeleportationPointIdx(a1, a2);
    v6 = *a1;
    v7 = fst::EnumerationData::TeleportationPoint(*a1, v5);
    v8 = fst::EnumerationData::SubFst(v6, *v7);
    v9 = *(a1 + 216);
    if (v5 >= ((*(a1 + 224) - v9) >> 2))
    {
      goto LABEL_18;
    }

    v4 = *v8 + a2 - *(v9 + 4 * v5);
  }

  FstCheck(v4 != **(**a1 + 8), "(IsUnigramState(virtual_state_id)) == (false)", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 506);
  v10 = *(a1 + 184);
  v11 = a2;
  if (v10 > a2)
  {
    goto LABEL_7;
  }

  v12 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ToTeleportationPointIdx(a1, a2);
  v13 = *a1;
  v14 = fst::EnumerationData::TeleportationPoint(*a1, v12);
  v15 = fst::EnumerationData::SubFst(v13, *v14);
  v16 = *(a1 + 216);
  if (v12 >= ((*(a1 + 224) - v16) >> 2))
  {
LABEL_18:
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v11 = *v15 + a2 - *(v16 + 4 * v12);
  v10 = *(a1 + 184);
LABEL_7:
  v17 = *a1;
  if (v10 <= a2)
  {
    v20 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ToTeleportationPointIdx(a1, a2);
    v21 = fst::EnumerationData::TeleportationPoint(v17, v20);
    fst::EnumerationData::SubFst(*a1, *v21);
    v22 = *(a1 + 184);
    if (v22 <= a2)
    {
      v24 = fst::VirtualStateSpaceManager<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ToTeleportationPointIdx(a1, a2);
      v23 = (fst::EnumerationData::TeleportationPoint(*a1, v24) + 8);
      v22 = *(a1 + 184);
    }

    else
    {
      v23 = *(**a1 + 8);
    }

    v25 = *v23;
    FstCheck(v22 > *v23, "(IsMainGraph(backoff_state_id)) == (true)", "../libquasar/libkaldi/tools/openfst/src/include/fst/enumeration-fst.h", 525);
    if (*(a1 + 184) > v25)
    {
      fst::ArcIterator<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::ArcIterator(__p, *(a1 + 8), v25);
      if (v35 < v34 && !v33)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "WARNING");
        v26 = fst::LogMessage::LogMessage(v30, __p);
        v27 = fst::cerr(v26);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Backing off to a state with an explicit back-off arc ", 53);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "is not supported and will yield an unnormalized model.", 54);
        fst::LogMessage::~LogMessage(v30);
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    fst::SortedMatcher<fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,true>>::SortedMatcher(__p, *(a1 + 8), 0, 1);
  }

  v18 = *(a1 + 180);
  v19 = expf(*(*(*v17 + 8) + 12 * *(*(*v17 + 8) + 8) + 20 * *(*(*v17 + 8) + 4) + 4 * *(*(*v17 + 8) + 36) + 4 * v11 + 40));
  return v18 + log1pf(-v19);
}

void sub_1B58FEEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__120__shared_ptr_emplaceIN5kaldi6quasar15NnlmDecoderWordENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D38C00;
  kaldi::quasar::NnlmDecoderWord::NnlmDecoderWord((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::NnlmDecoderWord>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D38C00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void kaldi::quasar::NnlmDecoderWord::~NnlmDecoderWord(kaldi::quasar::NnlmDecoderWord *this)
{
  v2 = *(this + 25);
  *(this + 25) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  std::__tree<int>::destroy(this + 48, *(this + 7));
  if (*(this + 40) == 1)
  {
    v3 = *(this + 3);
    if (v3)
    {
      MEMORY[0x1B8C85310](v3, 0x1000C8077774924);
    }
  }

  if (*(this + 16) == 1)
  {
    if (*this)
    {
      MEMORY[0x1B8C85310](*this, 0x1000C8077774924);
    }
  }
}

void *std::__shared_ptr_emplace<kaldi::quasar::CEInferenceNet>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::string const&,BOOL &,std::allocator<kaldi::quasar::CEInferenceNet>,0>(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D38C50;
  kaldi::quasar::CEInferenceNet::CEInferenceNet(a1 + 3, a2, a3, *a4, 0);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::CEInferenceNet>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D38C50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<kaldi::quasar::CEInferenceNet>::__shared_ptr_emplace[abi:ne200100]<std::string const&,BOOL &,std::allocator<kaldi::quasar::CEInferenceNet>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D38C50;
  kaldi::quasar::CEInferenceNet::CEInferenceNet((a1 + 3), a2);
}

void std::__shared_ptr_emplace<kaldi::nnet1::Nnet1InferenceNet>::__shared_ptr_emplace[abi:ne200100]<std::string const&,BOOL &,BOOL &,BOOL &,std::allocator<kaldi::nnet1::Nnet1InferenceNet>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D27A78;
  kaldi::nnet1::Nnet1InferenceNet::Nnet1InferenceNet(a1 + 3);
}

void *std::__shared_ptr_emplace<kaldi::quasar::CEAcousticEncoderNet>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<kaldi::quasar::CEAcousticEncoderNet>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D38CA0;
  kaldi::quasar::CEAcousticEncoderNet::CEAcousticEncoderNet(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::CEAcousticEncoderNet>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D38CA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::vector<std::optional<std::string>>::__init_with_size[abi:ne200100]<std::optional<std::string> const*,std::optional<std::string> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::optional<std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B58FF6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::optional<std::string>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::optional<std::string>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::optional<std::string>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::optional<std::string>>,std::optional<std::string> const*,std::optional<std::string> const*,std::optional<std::string>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *a4)
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
      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v4, v6);
      v6 += 2;
      v4 = (v11 + 32);
      v11 = (v11 + 32);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::optional<std::string>>,std::optional<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::optional<std::string>>,std::optional<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::optional<std::string>>,std::optional<std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::optional<std::string>>,std::optional<std::string>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = v1;
    v1 -= 4;
    if (*(v3 - 8) == 1 && *(v3 - 9) < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::optional<std::string>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::optional<std::string>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  while (v4 != a2)
  {
    v5 = v4;
    v4 -= 4;
    if (*(v5 - 8) == 1 && *(v5 - 9) < 0)
    {
      operator delete(*v4);
    }
  }

  *(a1 + 8) = a2;
}

void *std::__shared_ptr_emplace<kaldi::quasar::FofeLmEvaluator>::__shared_ptr_emplace[abi:ne200100]<kaldi::quasar::NnlmDecoderWord *,kaldi::InferenceNetItf *,decltype(nullptr),float &,int &,std::allocator<kaldi::quasar::FofeLmEvaluator>,0>(void *a1, const kaldi::quasar::NnlmDecoderWord **a2, kaldi::InferenceNetItf **a3, uint64_t a4, float *a5, int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D38CF0;
  kaldi::quasar::FofeLmEvaluator::FofeLmEvaluator((a1 + 3), *a2, *a3, 0, *a5, *a6, 0x2000, 0x20000);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::FofeLmEvaluator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D38CF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::quasar::RnnlmEvaluator>::__shared_ptr_emplace[abi:ne200100]<kaldi::quasar::NnlmDecoderWord *,kaldi::InferenceNetItf *,decltype(nullptr),float &,int &,std::allocator<kaldi::quasar::RnnlmEvaluator>,0>(void *a1, const kaldi::quasar::NnlmDecoderWord **a2, kaldi::InferenceNetItf **a3, uint64_t a4, float *a5, int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D38D40;
  kaldi::quasar::RnnlmEvaluator::RnnlmEvaluator((a1 + 3), *a2, *a3, 0, *a5, *a6, 0x2000, 0, 0x20000);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::RnnlmEvaluator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D38D40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::quasar::DnnlmEvaluator>::__shared_ptr_emplace[abi:ne200100]<kaldi::quasar::NnlmDecoderWord *,kaldi::InferenceNetItf *,decltype(nullptr),float &,std::allocator<kaldi::quasar::DnnlmEvaluator>,0>(void *a1, const kaldi::quasar::NnlmDecoderWord **a2, kaldi::InferenceNetItf **a3, uint64_t a4, float *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D38D90;
  kaldi::quasar::DnnlmEvaluator::DnnlmEvaluator((a1 + 3), *a2, *a3, 0, *a5, 0x2000, 0x20000);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::DnnlmEvaluator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D38D90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::quasar::FofeLmEvaluator>::__shared_ptr_emplace[abi:ne200100]<kaldi::quasar::NnlmDecoderWord *,kaldi::InferenceNetItf *,kaldi::InferenceNetItf *,float &,int &,std::allocator<kaldi::quasar::FofeLmEvaluator>,0>(void *a1, const kaldi::quasar::NnlmDecoderWord **a2, kaldi::InferenceNetItf **a3, kaldi::InferenceNetItf **a4, float *a5, int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D38CF0;
  kaldi::quasar::FofeLmEvaluator::FofeLmEvaluator((a1 + 3), *a2, *a3, *a4, *a5, *a6, 0x2000, 0x20000);
  return a1;
}

void *std::__shared_ptr_emplace<kaldi::quasar::RnnlmEvaluator>::__shared_ptr_emplace[abi:ne200100]<kaldi::quasar::NnlmDecoderWord *,kaldi::InferenceNetItf *,kaldi::InferenceNetItf *,float &,int &,std::allocator<kaldi::quasar::RnnlmEvaluator>,0>(void *a1, const kaldi::quasar::NnlmDecoderWord **a2, kaldi::InferenceNetItf **a3, kaldi::InferenceNetItf **a4, float *a5, int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D38D40;
  kaldi::quasar::RnnlmEvaluator::RnnlmEvaluator((a1 + 3), *a2, *a3, *a4, *a5, *a6, 0x2000, 0, 0x20000);
  return a1;
}

void *std::__shared_ptr_emplace<kaldi::quasar::DnnlmEvaluator>::__shared_ptr_emplace[abi:ne200100]<kaldi::quasar::NnlmDecoderWord *,kaldi::InferenceNetItf *,kaldi::InferenceNetItf *,float &,std::allocator<kaldi::quasar::DnnlmEvaluator>,0>(void *a1, const kaldi::quasar::NnlmDecoderWord **a2, kaldi::InferenceNetItf **a3, kaldi::InferenceNetItf **a4, float *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D38D90;
  kaldi::quasar::DnnlmEvaluator::DnnlmEvaluator((a1 + 3), *a2, *a3, *a4, *a5, 0x2000, 0x20000);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::TransitionModel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D38DE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<kaldi::ContextDependency>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D38E30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<kaldi::quasar::CEInferenceNet>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<kaldi::quasar::CEInferenceNet>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D38C50;
  kaldi::quasar::CEInferenceNet::CEInferenceNet((a1 + 3), a2);
}

const void **std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::string const&,double &>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__construct_node_hash<std::string const&,double &>();
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

void sub_1B59005B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5900688(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::__shared_ptr_emplace<quasar::ModelLoader::EmbeddedMlockContext>::__shared_ptr_emplace[abi:ne200100]<std::string const&,float &,std::allocator<quasar::ModelLoader::EmbeddedMlockContext>,0>(std::string *a1, __int128 *a2, float *a3)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F2D38E80;
  quasar::ModelLoader::EmbeddedMlockContext::EmbeddedMlockContext(a1 + 1, a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::ModelLoader::EmbeddedMlockContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D38E80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::ModelLoader::EmbeddedMlockContext>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

std::string *quasar::ModelLoader::EmbeddedMlockContext::EmbeddedMlockContext(std::string *this, __int128 *a2, float a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  v6 = 1.0;
  if (a3 <= 1.0)
  {
    v6 = a3;
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  *&this[1].__r_.__value_.__l.__data_ = v6;
  return this;
}

void quasar::ModelLoader::enumerateSubFiles<quasar::ModelLoader::dumpInCoreStats(void)::$_0>(uint64_t a1, void **a2)
{
  v71 = *MEMORY[0x1E69E9840];
  memset(v52, 0, 24);
  std::string::basic_string[abi:ne200100]<0>(&__p, ".mlmodelc");
  v4 = *(a1 + 23);
  v5 = *(a1 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v7 = SBYTE7(v55);
  if ((SBYTE7(v55) & 0x80u) == 0)
  {
    v8 = BYTE7(v55);
  }

  else
  {
    v8 = *(&__p + 1);
  }

  v14 = v6 >= v8;
  v9 = v6 - v8;
  if (!v14)
  {
    v10 = 0;
    if ((SBYTE7(v55) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((v4 & 0x80) != 0)
  {
    if (v8 == -1 || v5 < v9)
    {
LABEL_122:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v5 - v9 >= v8)
    {
      v16 = v8;
    }

    else
    {
      v16 = v5 - v9;
    }

    v17 = *a1;
  }

  else
  {
    v14 = v8 != -1 && v4 >= v9;
    if (!v14)
    {
      goto LABEL_122;
    }

    v15 = v4 - v9;
    if (v15 >= v8)
    {
      v16 = v8;
    }

    else
    {
      v16 = v15;
    }

    v17 = a1;
  }

  if ((SBYTE7(v55) & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v30 = memcmp(&v17[v9], p_p, v16);
  v10 = v16 == v8 && v30 == 0;
  if (v7 < 0)
  {
LABEL_9:
    operator delete(__p);
  }

LABEL_10:
  if (v10)
  {
    if (*(a1 + 23) >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = *(a1 + 8);
    }

    v12 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v11 + 10);
    if (SBYTE7(v55) < 0)
    {
      v12 = __p;
    }

    if (v11)
    {
      if (*(a1 + 23) >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      memmove(v12, v13, v11);
    }

            std::string::basic_string[abi:ne200100]<0>(__p, "");
            TException::TException(v28, __p);
            v28[0].__vftable = &unk_1F2CFF890;
            if (v29 >= 0)
            {
              v24 = &v28[1];
            }

            else
            {
              v24 = v28[1].__vftable;
            }

            conditionalAssert(v24, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/lexer.cpp", 339);
            TException::~TException(v28);
            if (v27 < 0)
            {
              operator delete(__p[0]);
            }

            exception = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v28, "");
            TException::TException(exception, v28);
            *exception = &unk_1F2CFF890;
          }
        }

        else
        {
          LongestMatch = TLexerLexicon::findLongestMatch(*(this + 10), &v30, *(this + 9));
          v17 = v16;
          v18 = TAllocator::allocate(*(this + 9), 24);
          v19 = *(a2 + 8);
          v18->~exception = LongestMatch;
          v18->~exception_0 = v17;
          v18->what = v19;
          v28[0].__vftable = v18;
          std::vector<TVertex const*>::push_back[abi:ne200100](this + 88, v28);
          v14 = v30;
        }

LABEL_28:
        v13 = *v14;
        if (!v13)
        {
          goto LABEL_8;
        }
      }
    }
  }

  if (v34 == 1 && __s1 != v33 && __s1 != 0)
  {
    MEMORY[0x1B8C85310]();
  }
}

void sub_1B5A11794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, TAllocator *a13, uint64_t a14, void **a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (LOBYTE(STACK[0x490]) == 1 && a24 != a14 && a24 != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  v27 = *a15;
  if (*a15)
  {
    *(v24 + 96) = v27;
    operator delete(v27);
  }

  TAllocator::clear(a13);
  if (*(v24 + 23) < 0)
  {
    operator delete(*v24);
  }

  _Unwind_Resume(a1);
}

void quasar::CustomLMBuilder::CustomLMBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 64) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  quasar::PTree::PTree((a1 + 136));
  std::string::basic_string[abi:ne200100]<0>((a1 + 200), "fst_custom.fst");
  *(a1 + 232) = 0u;
  *(a1 + 224) = a3;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  quasar::SystemConfig::SystemConfig(v5);
}