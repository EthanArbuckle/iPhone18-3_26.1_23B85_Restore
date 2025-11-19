unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> *,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &>(uint64_t *a1, unint64_t a2)
{
  v22 = *a1;
  v23 = *(a1 + 2);
  std::list<int>::list(v24, (a1 + 2));
  v4 = *(a1 + 12);
  v25 = *(a1 + 10);
  v26 = v4;
  v5 = *(a2 - 56);
  if (v22 < v5 || v22 <= v5 && ((v21 = *(a2 - 52), SHIDWORD(v22) < v21) || SHIDWORD(v22) <= v21 && v4 < *(a2 - 8)))
  {
    i = (a1 + 7);
    v6 = *(a1 + 14);
    if (v22 >= v6)
    {
      do
      {
        if (v22 <= v6)
        {
          v8 = *(i + 4);
          if (SHIDWORD(v22) < v8 || SHIDWORD(v22) <= v8 && v4 < *(i + 48))
          {
            break;
          }
        }

        v9 = *(i + 56);
        i += 56;
        v6 = v9;
      }

      while (v22 >= v9);
    }
  }

  else
  {
    for (i = (a1 + 7); i < a2; i += 56)
    {
      if (v22 < *i)
      {
        break;
      }

      if (v22 <= *i)
      {
        v10 = *(i + 4);
        if (SHIDWORD(v22) < v10 || SHIDWORD(v22) <= v10 && v4 < *(i + 48))
        {
          break;
        }
      }
    }
  }

  if (i < a2)
  {
    for (a2 -= 56; ; a2 -= 56)
    {
      if (v22 >= v5)
      {
        if (v22 > v5)
        {
          break;
        }

        v11 = *(a2 + 4);
        if (SHIDWORD(v22) >= v11 && (SHIDWORD(v22) > v11 || v4 >= *(a2 + 48)))
        {
          break;
        }
      }

      v12 = *(a2 - 56);
      v5 = v12;
    }
  }

  while (i < a2)
  {
    std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(i, a2);
    v14 = *(i + 56);
    i += 56;
    for (j = v14; v22 >= j; j = v16)
    {
      if (v22 <= j)
      {
        v15 = *(i + 4);
        if (SHIDWORD(v22) < v15 || SHIDWORD(v22) <= v15 && v26 < *(i + 48))
        {
          break;
        }
      }

      v16 = *(i + 56);
      i += 56;
    }

    do
    {
      do
      {
        v17 = *(a2 - 56);
        a2 -= 56;
        v18 = v22 <= v17;
      }

      while (v22 < v17);
      if (!v18)
      {
        break;
      }

      v19 = *(a2 + 4);
    }

    while (SHIDWORD(v22) < v19 || SHIDWORD(v22) <= v19 && v26 < *(a2 + 48));
  }

  if ((i - 56) != a1)
  {
    *a1 = *(i - 56);
    *(a1 + 2) = *(i - 48);
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(a1 + 2, *(i - 32), i - 40);
    *(a1 + 10) = *(i - 16);
    *(a1 + 12) = *(i - 8);
  }

  *(i - 56) = v22;
  *(i - 48) = v23;
  if ((i - 56) != &v22)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((i - 40), v24[1], v24);
  }

  *(i - 16) = v25;
  *(i - 8) = v26;
  std::__list_imp<char *>::clear(v24);
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> *,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &>(uint64_t *a1, unint64_t a2)
{
  v23 = *a1;
  v24 = *(a1 + 2);
  std::list<int>::list(v25, (a1 + 2));
  v4 = 0;
  v5 = *(a1 + 12);
  v26 = *(a1 + 10);
  v27 = v5;
  while (1)
  {
    v6 = a1[v4 + 7];
    if (v6 >= v23)
    {
      if (v6 > v23)
      {
        break;
      }

      v7 = HIDWORD(a1[v4 + 7]);
      if (v7 >= SHIDWORD(v23) && (v7 > SHIDWORD(v23) || SLODWORD(a1[v4 + 13]) >= v5))
      {
        break;
      }
    }

    v4 += 7;
  }

  v8 = &a1[v4 + 7];
  if (v4 * 8)
  {
    while (1)
    {
      v10 = *(a2 - 56);
      a2 -= 56;
      v9 = v10;
      if (v10 < v23)
      {
        break;
      }

      if (v9 <= v23)
      {
        v11 = *(a2 + 4);
        if (v11 < SHIDWORD(v23) || v11 <= SHIDWORD(v23) && *(a2 + 48) < v5)
        {
          break;
        }
      }
    }
  }

  else
  {
LABEL_25:
    if (v8 < a2)
    {
      do
      {
        v13 = *(a2 - 56);
        a2 -= 56;
        v12 = v13;
        if (v13 < v23)
        {
          break;
        }

        if (v12 > v23)
        {
          goto LABEL_25;
        }

        v14 = *(a2 + 4);
        if (v14 < SHIDWORD(v23))
        {
          break;
        }

        if (v14 > SHIDWORD(v23))
        {
          goto LABEL_25;
        }
      }

      while (*(a2 + 48) >= v5 && v8 < a2);
    }
  }

  v16 = v8;
  if (v8 < a2)
  {
    v17 = a2;
    do
    {
      std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(v16, v17);
      for (v16 += 56; ; v16 += 56)
      {
        if (*v16 >= v23)
        {
          if (*v16 > v23)
          {
            break;
          }

          v18 = *(v16 + 4);
          if (v18 >= SHIDWORD(v23) && (v18 > SHIDWORD(v23) || *(v16 + 48) >= v27))
          {
            break;
          }
        }
      }

      while (1)
      {
        v20 = *(v17 - 56);
        v17 -= 56;
        v19 = v20;
        if (v20 < v23)
        {
          break;
        }

        if (v19 <= v23)
        {
          v21 = *(v17 + 4);
          if (v21 < SHIDWORD(v23) || v21 <= SHIDWORD(v23) && *(v17 + 48) < v27)
          {
            break;
          }
        }
      }
    }

    while (v16 < v17);
  }

  if ((v16 - 56) != a1)
  {
    *a1 = *(v16 - 56);
    *(a1 + 2) = *(v16 - 48);
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(a1 + 2, *(v16 - 32), v16 - 40);
    *(a1 + 10) = *(v16 - 16);
    *(a1 + 12) = *(v16 - 8);
  }

  *(v16 - 56) = v23;
  *(v16 - 48) = v24;
  if ((v16 - 56) != &v23)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v16 - 40), v25[1], v25);
  }

  *(v16 - 16) = v26;
  *(v16 - 8) = v27;
  std::__list_imp<char *>::clear(v25);
  return v16 - 56;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(uint64_t a1, _DWORD *a2)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(a1, (a1 + 56), (a2 - 14));
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(a1, a1 + 56, a1 + 112, (a2 - 14));
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(a1, a1 + 56, a1 + 112, a1 + 168, (a2 - 14));
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
      v5 = (a2 - 14);
      v6 = *(a2 - 14);
      if (v6 < *a1 || v6 <= *a1 && ((v22 = *(a2 - 13), v23 = *(a1 + 4), v22 < v23) || v22 <= v23 && *(a2 - 2) < *(a1 + 48)))
      {
        std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a1, v5);
      }

      return 1;
    }
  }

  v7 = (a1 + 112);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(a1, (a1 + 56), a1 + 112);
  v8 = (a1 + 168);
  if ((a1 + 168) != a2)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (*v8 < *v7 || *v8 <= *v7 && ((v16 = v8[1], v17 = v7[1], v16 < v17) || v16 <= v17 && v8[12] < v7[12]))
      {
        v24 = *v8;
        v25 = v8[2];
        std::list<int>::list(v26, (v8 + 4));
        v11 = v8[12];
        v27 = v8[10];
        v28 = v11;
        for (i = v9; ; i -= 56)
        {
          v13 = a1 + i;
          *(v13 + 168) = *(a1 + i + 112);
          *(v13 + 176) = *(a1 + i + 120);
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a1 + i + 184), *(a1 + i + 136), a1 + 128 + i);
          *(v13 + 208) = *(v13 + 152);
          *(v13 + 216) = *(v13 + 160);
          if (i == -112)
          {
            v18 = a1;
            goto LABEL_29;
          }

          v14 = *(a1 + i + 56);
          if (v24 >= v14)
          {
            if (v24 > v14)
            {
              break;
            }

            v15 = *(a1 + i + 60);
            if (SHIDWORD(v24) >= v15 && (SHIDWORD(v24) > v15 || v28 >= *(a1 + i + 104)))
            {
              break;
            }
          }
        }

        v18 = a1 + i + 112;
LABEL_29:
        *v18 = v24;
        *(v18 + 8) = v25;
        if (v18 != &v24)
        {
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v18 + 16), v26[1], v26);
        }

        v19 = v28;
        *(v18 + 40) = v27;
        *(v18 + 48) = v19;
        if (++v10 == 8)
        {
          v20 = v8 + 14 == a2;
          std::__list_imp<char *>::clear(v26);
          return v20;
        }

        std::__list_imp<char *>::clear(v26);
      }

      v7 = v8;
      v9 += 56;
      v8 += 14;
    }

    while (v8 != a2);
  }

  return 1;
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 57)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 56 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(a1, a4, v9, v12);
        v12 -= 7;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (*v13 < *a1 || *v13 <= *a1 && ((v14 = *(v13 + 4), v15 = *(a1 + 4), v14 < v15) || v14 <= v15 && *(v13 + 48) < *(a1 + 48)))
        {
          std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(v13, a1);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(a1, a4, v9, a1);
        }

        v13 += 56;
      }

      while (v13 != a3);
    }

    if (v8 >= 57)
    {
      v16 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(a1, v6, a4, v16);
        v6 -= 56;
      }

      while (v16-- > 2);
    }

    return v13;
  }

  return a3;
}

void *std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= 0x6DB6DB6DB6DB6DB7 * (a4 - result))
    {
      v9 = (0xDB6DB6DB6DB6DB6ELL * (a4 - result)) | 1;
      v10 = &result[7 * v9];
      if ((0xDB6DB6DB6DB6DB6ELL * (a4 - result) + 2) < a3)
      {
        v11 = *(v10 + 14);
        if (*v10 < v11 || *v10 <= v11 && ((v22 = *(v10 + 1), v23 = *(v10 + 15), v22 < v23) || v22 <= v23 && *(v10 + 12) < *(v10 + 26)))
        {
          v10 += 7;
          v9 = 0xDB6DB6DB6DB6DB6ELL * (a4 - result) + 2;
        }
      }

      if (*v10 >= *a4)
      {
        if (*v10 > *a4 || (v20 = *(v10 + 1), v21 = *(a4 + 1), v20 >= v21) && (v20 > v21 || *(v10 + 12) >= *(a4 + 12)))
        {
          v24 = *a4;
          v25 = *(a4 + 2);
          std::list<int>::list(v26, (a4 + 2));
          v12 = *(v5 + 12);
          v27 = *(v5 + 10);
          v28 = v12;
          while (1)
          {
            v13 = v10;
            *v5 = *v10;
            *(v5 + 2) = *(v10 + 2);
            if (v5 != v10)
            {
              std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v5 + 2, v10[3], (v10 + 2));
            }

            *(v5 + 10) = *(v10 + 10);
            *(v5 + 12) = *(v10 + 12);
            if (v7 < v9)
            {
              break;
            }

            v14 = 2 * v9;
            v9 = (2 * v9) | 1;
            v10 = &v6[7 * v9];
            v15 = v14 + 2;
            if (v15 < a3)
            {
              v16 = *(v10 + 14);
              if (*v10 < v16 || *v10 <= v16 && ((v18 = *(v10 + 1), v19 = *(v10 + 15), v18 < v19) || v18 <= v19 && *(v10 + 12) < *(v10 + 26)))
              {
                v10 += 7;
                v9 = v15;
              }
            }

            if (*v10 < v24)
            {
              break;
            }

            v5 = v13;
            if (*v10 <= v24)
            {
              v17 = *(v10 + 1);
              if (v17 < SHIDWORD(v24))
              {
                break;
              }

              v5 = v13;
              if (v17 <= SHIDWORD(v24))
              {
                v5 = v13;
                if (*(v10 + 12) < v28)
                {
                  break;
                }
              }
            }
          }

          *v13 = v24;
          *(v13 + 2) = v25;
          if (v13 != &v24)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v13 + 2, v26[1], v26);
          }

          *(v13 + 10) = v27;
          *(v13 + 12) = v28;
          return std::__list_imp<char *>::clear(v26);
        }
      }
    }
  }

  return result;
}

void *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = result;
    v12 = *result;
    v13 = *(result + 2);
    std::list<int>::list(&v14, (result + 2));
    v8 = *(v7 + 12);
    v16 = *(v7 + 10);
    v17 = v8;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(v7, a3, a4);
    v10 = v9;
    if (v9 == (a2 - 56))
    {
      *v9 = v12;
      *(v9 + 2) = v13;
      if (v9 != &v12)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v9 + 2, v15, &v14);
      }

      *(v10 + 10) = v16;
      *(v10 + 12) = v17;
    }

    else
    {
      *v9 = *(a2 - 56);
      *(v9 + 2) = *(a2 - 48);
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v9 + 2, *(a2 - 32), a2 - 40);
      *(v10 + 10) = *(a2 - 16);
      *(v10 + 12) = *(a2 - 8);
      *(a2 - 56) = v12;
      *(a2 - 48) = v13;
      if ((a2 - 56) != &v12)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a2 - 40), v15, &v14);
      }

      v11 = v17;
      *(a2 - 16) = v16;
      *(a2 - 8) = v11;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(v7, (v10 + 7), a3, 0x6DB6DB6DB6DB6DB7 * (v10 + 7 - v7));
    }

    return std::__list_imp<char *>::clear(&v14);
  }

  return result;
}

uint64_t *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[7 * v5];
    v8 = v7 + 7;
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v10 < a3)
    {
      v11 = *(v7 + 28);
      v12 = *(v7 + 14);
      if (v12 < v11 || v12 <= v11 && ((v13 = *(v7 + 15), v14 = *(v7 + 29), v13 < v14) || v13 <= v14 && *(v7 + 26) < *(v7 + 40)))
      {
        v8 = v7 + 14;
        v5 = v10;
      }
    }

    *a1 = *v8;
    *(a1 + 2) = *(v8 + 2);
    if (a1 != v8)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(a1 + 2, v8[3], (v8 + 2));
    }

    *(a1 + 10) = *(v8 + 10);
    *(a1 + 12) = *(v8 + 12);
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

void *std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = &result[7 * (v4 >> 1)];
    v10 = (a2 - 56);
    v9 = *(a2 - 56);
    if (*v8 < v9 || *v8 <= v9 && ((v15 = *(v8 + 1), v16 = *(a2 - 52), v15 < v16) || v15 <= v16 && *(v8 + 12) < *(a2 - 8)))
    {
      v17 = *(a2 - 56);
      v18 = *(a2 - 48);
      std::list<int>::list(v19, a2 - 40);
      v11 = *(a2 - 8);
      v20 = *(a2 - 16);
      v21 = v11;
      while (1)
      {
        v12 = v8;
        *v10 = *v8;
        *(v10 + 2) = *(v8 + 2);
        if (v10 != v8)
        {
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v10 + 2, v8[3], (v8 + 2));
        }

        *(v10 + 10) = *(v8 + 10);
        *(v10 + 12) = *(v8 + 12);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = &v6[7 * v7];
        v10 = v12;
        if (*v8 >= v17)
        {
          if (*v8 > v17)
          {
            break;
          }

          v13 = *(v8 + 1);
          v10 = v12;
          if (v13 >= SHIDWORD(v17))
          {
            if (v13 > SHIDWORD(v17))
            {
              break;
            }

            v10 = v12;
            if (*(v8 + 12) >= v21)
            {
              break;
            }
          }
        }
      }

      *v12 = v17;
      *(v12 + 2) = v18;
      if (v12 != &v17)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v12 + 2, v19[1], v19);
      }

      v14 = v21;
      *(v12 + 10) = v20;
      *(v12 + 12) = v14;
      return std::__list_imp<char *>::clear(v19);
    }
  }

  return result;
}

uint64_t std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> *>,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> *>,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Equal &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = a2;
  if (a1 != a2)
  {
    while (1)
    {
      v7 = a1 + 56;
      if (a1 + 56 == a2)
      {
        break;
      }

      v8 = fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Equal::operator()(a3, a1, a1 + 56);
      a1 = v7;
      if (v8)
      {
        v9 = v7 - 56;
        goto LABEL_6;
      }
    }

    v9 = a2;
LABEL_6:
    result = a2;
    if (v9 != a2)
    {
      v10 = v9 + 112;
      if (v9 + 112 != a2)
      {
        v11 = v9 + 128;
        do
        {
          if (!fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Equal::operator()(a3, v9, v10))
          {
            *(v9 + 56) = *v10;
            *(v9 + 64) = *(v10 + 8);
            if (v10 - 56 != v9)
            {
              std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v9 + 72), *(v10 + 24), v11);
            }

            *(v9 + 96) = *(v10 + 40);
            *(v9 + 104) = *(v10 + 48);
            v9 += 56;
          }

          v10 += 56;
          v11 += 56;
        }

        while (v10 != a2);
      }

      return v9 + 56;
    }
  }

  return result;
}

BOOL fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Equal::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 != *a3 || *(a2 + 4) != *(a3 + 4) || *(a2 + 48) != *(a3 + 48))
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v4 = v3 ? *(a2 + 32) + 1 : 0;
  v5 = *(a3 + 8);
  v6 = v5 ? *(a3 + 32) + 1 : 0;
  if (v4 != v6)
  {
    return 0;
  }

  v7 = (a2 + 24);
  v8 = (a3 + 24);
  for (i = 1; ; i = 0)
  {
    v10 = *v7;
    v11 = *v8;
    if (i)
    {
      if (!v3)
      {
        return *(a2 + 40) == *(a3 + 40);
      }

      if (v3 != v5)
      {
        break;
      }
    }

    if (v10 == a2 + 16)
    {
      return *(a2 + 40) == *(a3 + 40);
    }

    if (*(v10 + 16) != *(v11 + 16))
    {
      break;
    }

    v7 = (v10 + 8);
    v8 = (v11 + 8);
  }

  return 0;
}

uint64_t *std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v5 + 56 * a2;
      v11 = 56 * a2;
      v12 = (v5 + 16);
      do
      {
        *v12 = v12;
        v12[1] = v12;
        v12[2] = 0;
        *(v12 - 2) = 0;
        v12 += 7;
        v11 -= 56;
      }

      while (v11);
    }

    else
    {
      v10 = result[1];
    }

    result[1] = v10;
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x492492492492492)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v7;
    }

    v23 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>(result, v9);
    }

    v13 = 56 * v6;
    v20 = 0;
    v21 = 56 * v6;
    *(&v22 + 1) = 0;
    v14 = 56 * a2;
    v15 = (56 * v6 + 16);
    do
    {
      *v15 = v15;
      v15[1] = v15;
      v15[2] = 0;
      *(v15 - 2) = 0;
      v15 += 7;
      v14 -= 56;
    }

    while (v14);
    *&v22 = v13 + 56 * a2;
    v16 = result[1];
    v17 = v13 + *result - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(result, *result, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = v3[2];
    *(v3 + 1) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(&v20);
  }

  return result;
}

void sub_1B55A8198(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void fst::RmFinalEpsilon<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t a1)
{
  memset(v4, 0, sizeof(v4));
  memset(v3, 0, sizeof(v3));
  v2 = 0;
  v1[0] = 0;
  v1[1] = v4;
  v1[2] = v3;
  v1[3] = &v2;
  fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a1, v1);
}

void sub_1B55A8B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, void **a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  a40 = &a37;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100](&a40);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a45);
  v47 = *(v45 - 184);
  if (v47)
  {
    operator delete(v47);
  }

  v48 = *(v45 - 160);
  if (v48)
  {
    operator delete(v48);
  }

  _Unwind_Resume(a1);
}

void fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::~FactorWeightFst(void *a1)
{
  fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void sub_1B55A9344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v21 = v19;
  v22 = (v19 - 5);
  v23 = *v21;
  if (*v21)
  {
    v18[30] = v23;
    operator delete(v23);
  }

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::~__hash_table(v22);
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__destroy_vector::operator()[abi:ne200100](&__p);
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~CacheBaseImpl(v18);
  _Unwind_Resume(a1);
}

void fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::~FactorWeightFstImpl(uint64_t a1)
{
  fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::~FactorWeightFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D1DDE8;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D1E728;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *a2;
  *(a1 + 112) = *(a2 + 8);
  operator new();
}

{
  *a1 = &unk_1F2D1DDE8;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D1E728;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_1B55A95B0(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

void fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::VectorCacheStore(void *a1, _BYTE *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a1 + 4;
  a1[5] = a1 + 4;
  a1[6] = 0;
  a1[7] = 0;
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Clear(a1);
  a1[7] = a1[5];
  return a1;
}

void sub_1B55A9684(_Unwind_Exception *a1)
{
  v4 = v3;
  std::__list_imp<char *>::clear(v2);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~CacheBaseImpl(void *a1)
{
  *a1 = &unk_1F2D1E728;
  v2 = a1[15];
  if (v2)
  {
    v3 = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::~VectorCacheStore(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C407A9BBF1FLL);
  }

  v4 = a1[9];
  if (v4)
  {
    operator delete(v4);
  }

  return fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::~FstImpl(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::~VectorCacheStore(void *a1)
{
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Clear(a1);
  std::__list_imp<char *>::clear(a1 + 4);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::~FactorWeightFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D1E6A8;
  v2 = *(a1 + 136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 232);
  if (v3)
  {
    *(a1 + 240) = v3;
    operator delete(v3);
  }

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::~__hash_table(a1 + 192);
  v5 = (a1 + 168);
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__destroy_vector::operator()[abi:ne200100](&v5);
  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~CacheBaseImpl(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      result = (*(**(a1 + 136) + 24))(*(a1 + 136));
      if (result == -1)
      {
        return result;
      }

      v3 = (*(**(a1 + 136) + 24))(*(a1 + 136));
      v4 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
      v6 = *v4;
      std::list<int>::list(v7, (v4 + 2));
      v8 = v4[8];
      v9[0] = v3;
      v9[2] = v6;
      std::list<int>::list(v10, v7);
      v11 = v8;
      State = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::FindState(a1, v9);
      std::__list_imp<char *>::clear(v10);
      std::__list_imp<char *>::clear(v7);
      *(a1 + 64) = State;
      *(a1 + 60) = 1;
      if (*(a1 + 68) <= State)
      {
        *(a1 + 68) = State + 1;
      }
    }
  }

  return *(a1 + 64);
}

void sub_1B55A9974(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v1 + 16));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::FindState(uint64_t a1, int *a2)
{
  if ((*(a1 + 148) & 2) != 0)
  {
    goto LABEL_21;
  }

  v4 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
  v5 = a2[2];
  v6 = v5 ? *(a2 + 4) + 1 : 0;
  v7 = *v4 ? *(v4 + 24) + 1 : 0;
  if (v6 != v7)
  {
    goto LABEL_21;
  }

  v8 = (a2 + 6);
  v9 = (v4 + 16);
  for (i = 1; ; i = 0)
  {
    v11 = *v8;
    v12 = *v9;
    if (i)
    {
      if (!v5)
      {
        break;
      }

      if (v5 != *v4)
      {
        goto LABEL_21;
      }
    }

    if (v11 == a2 + 4)
    {
      break;
    }

    if (*(v11 + 16) != *(v12 + 16))
    {
      goto LABEL_21;
    }

    v8 = (v11 + 8);
    v9 = (v12 + 8);
  }

  v24[0] = a2[10];
  v28 = *(v4 + 32);
  v13 = *a2;
  if (*v24 != v28 || v13 == -1)
  {
LABEL_21:
    v15 = std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::find<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>((a1 + 192), a2);
    if (v15)
    {
      return *(v15 + 16);
    }

    else
    {
      v16 = -1431655765 * ((*(a1 + 176) - *(a1 + 168)) >> 4);
      std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element>>::push_back[abi:ne200100]((a1 + 168), a2);
      v17 = a2[2];
      v24[0] = *a2;
      v24[2] = v17;
      std::list<int>::list(v25, (a2 + 4));
      v26 = a2[10];
      v27 = v16;
      std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::__emplace_unique_key_args<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::pair<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element const,int>>((a1 + 192), v24);
      std::__list_imp<char *>::clear(v25);
    }
  }

  else
  {
    v19 = v13;
    v20 = *(a1 + 232);
    if (v13 >= ((*(a1 + 240) - v20) >> 2))
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100]((a1 + 232), &fst::kNoStateId);
        v20 = *(a1 + 232);
        v13 = *a2;
        v19 = *a2;
      }

      while (v19 >= (*(a1 + 240) - v20) >> 2);
    }

    if (*(v20 + 4 * v19) == -1)
    {
      v21 = *(a1 + 168);
      v22 = *(a1 + 176);
      v23 = (a1 + 168);
      *(v20 + 4 * v19) = -1431655765 * ((v22 - v21) >> 4);
      std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element>>::push_back[abi:ne200100](v23, a2);
      v13 = *a2;
      v20 = v23[8];
    }

    return *(v20 + 4 * v13);
  }

  return v16;
}

uint64_t std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element>>::push_back[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element>>::__emplace_back_slow_path<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element const&>(a1, a2);
  }

  else
  {
    std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element>>::__construct_one_at_end[abi:ne200100]<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element const&>(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void *std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element>>::__construct_one_at_end[abi:ne200100]<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element const&>(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = a2[2];
  result = std::list<int>::list((v4 + 16), (a2 + 4));
  *(v4 + 40) = a2[10];
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element>>::__emplace_back_slow_path<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element const&>(uint64_t *a1, _DWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 8) = a2[2];
  std::list<int>::list((v7 + 16), (a2 + 4));
  *(v7 + 40) = a2[10];
  *&v16 = v16 + 48;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element> &>::~__split_buffer(&v14);
  return v13;
}

void sub_1B55A9D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Element*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = (a4 + v7);
      *v9 = *(v6 + v7);
      v9[2] = *(v6 + v7 + 8);
      result = std::list<int>::list((a4 + v7 + 16), v6 + v7 + 16);
      v9[10] = *(v6 + v7 + 40);
      v7 += 48;
    }

    while (v8 + 48 != a3);
    while (v6 != a3)
    {
      result = std::__list_imp<char *>::clear((v6 + 16));
      v6 += 48;
    }
  }

  return result;
}

void sub_1B55A9E1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 32);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 6;
      v4 += 48;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

void *fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v6 = (*(a1 + 168) + 48 * a2);
    if (*v6 == -1)
    {
      v26 = v6[2];
      std::list<int>::list(v27, (v6 + 4));
      v28 = *(v6 + 10);
    }

    else
    {
      (*(**(a1 + 136) + 32))(&v22);
      fst::Times<int,(fst::StringType)0>(v6 + 2, &v22, &v29);
      v7 = *(v6 + 10);
      v8 = NAN;
      if (v7 != -INFINITY)
      {
        v8 = NAN;
        if (v24 != -INFINITY)
        {
          v8 = INFINITY;
          v9 = v24 == INFINITY || v7 == INFINITY;
          v10 = v7 + v24;
          if (!v9)
          {
            v8 = v10;
          }
        }
      }

      fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v26, &v29, v8);
      std::__list_imp<char *>::clear(v30);
      std::__list_imp<char *>::clear(v23);
    }

    LODWORD(v22) = v26;
    std::list<int>::list(v23, v27);
    v24 = v28;
    if (v26)
    {
      v11 = (v27[2] + 1) >= 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = !v11;
    v25 = v12;
    if ((*(a1 + 148) & 1) == 0 || v12)
    {
      v19 = v26;
      v14 = v20;
      std::list<int>::list(v20, v27);
      v21 = v28;
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::SetFinal(a1, a2, &v19);
    }

    else
    {
      v13 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
      v16 = *v13;
      v14 = v17;
      std::list<int>::list(v17, (v13 + 2));
      v18 = v13[8];
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::SetFinal(a1, a2, &v16);
    }

    std::__list_imp<char *>::clear(v14);
    std::__list_imp<char *>::clear(v23);
    std::__list_imp<char *>::clear(v27);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Final(a1, a2, a3);
}

void sub_1B55AA074(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v1);
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

void *fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
  v7 = *a3;
  std::list<int>::list(v8, (a3 + 2));
  v5 = a3[8];
  v9 = v5;
  *MutableState = v7;
  if (MutableState != &v7)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((MutableState + 8), v8[1], v8);
    v5 = v9;
  }

  *(MutableState + 32) = v5;
  result = std::__list_imp<char *>::clear(v8);
  *(MutableState + 80) |= 9u;
  return result;
}

uint64_t fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::GetMutableState(a1, a2);
  v4 = MutableState;
  if (*(a1 + 88) == 1)
  {
    v5 = *(MutableState + 80);
    if ((v5 & 4) == 0)
    {
      *(MutableState + 80) = v5 | 4;
      v6 = *(MutableState + 64) - *(MutableState + 56) + *(a1 + 112) + 88;
      *(a1 + 112) = v6;
      *(a1 + 104) = 1;
      if (v6 > *(a1 + 96))
      {
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::GetMutableState(uint64_t a1, int a2)
{
  v3 = *(a1 + 76);
  if (v3 == a2)
  {
    return *(a1 + 80);
  }

  if (*(a1 + 72) == 1)
  {
    if (v3 == -1)
    {
      *(a1 + 76) = a2;
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::GetMutableState(a1, 0);
      *(a1 + 80) = MutableState;
      *(MutableState + 80) |= 4u;
      std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::reserve((MutableState + 56), 0x80uLL);
      return *(a1 + 80);
    }

    v5 = *(a1 + 80);
    if (!*(v5 + 84))
    {
      *(a1 + 76) = a2;
      fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::Reset(v5);
      result = *(a1 + 80);
      *(result + 80) |= 4u;
      return result;
    }

    *(v5 + 80) &= ~4u;
    *(a1 + 72) = 0;
  }

  v6 = a2 + 1;

  return fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GC(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  if (*(a1 + 104) == 1)
  {
    if (FLAGS_v >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
      v8 = fst::LogMessage::LogMessage(v45, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GCCacheStore: Enter GC: object = ", 33);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "(", 1);
      v12 = MEMORY[0x1B8C84BB0](v11, a1);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "), free recently cached = ", 26);
      v14 = MEMORY[0x1B8C84BD0](v13, a3);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", cache size = ", 15);
      v16 = MEMORY[0x1B8C84C30](v15, *(a1 + 112));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", cache frac = ", 15);
      v17 = std::ostream::operator<<();
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", cache limit = ", 16);
      v19 = MEMORY[0x1B8C84C30](v18, *(a1 + 96));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\n", 1);
      fst::LogMessage::~LogMessage(v45);
      if (v50 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v20 = (*(a1 + 96) * a4);
    v21 = *(a1 + 40);
    *(a1 + 56) = v21;
    while (v21 != a1 + 32)
    {
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = v22 - 1;
      }

      else
      {
        v23 = *(a1 + 76);
      }

      MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::GetMutableState(a1, v23);
      v25 = *(a1 + 112);
      if (v25 > v20 && !*(MutableState + 84))
      {
        if (a3)
        {
          if (MutableState != a2)
          {
            v26 = *(MutableState + 80);
LABEL_19:
            if ((v26 & 4) != 0)
            {
              v27 = *(MutableState + 64) - *(MutableState + 56) + 88;
              FstCheck(v27 <= v25, "(size) <= (cache_size_)", "../libquasar/libkaldi/tools/openfst/src/include/fst/cache.h", 730);
              *(a1 + 112) -= v27;
            }

            fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>::Delete(a1);
            v21 = *(a1 + 56);
            continue;
          }
        }

        else
        {
          v26 = *(MutableState + 80);
          if ((v26 & 8) == 0 && MutableState != a2)
          {
            goto LABEL_19;
          }
        }
      }

      *(MutableState + 80) &= ~8u;
      v21 = *(*(a1 + 56) + 8);
      *(a1 + 56) = v21;
    }

    if ((a3 & 1) != 0 || *(a1 + 112) <= v20)
    {
      v28 = *(a1 + 112);
      if (v20)
      {
        if (v28 > v20)
        {
          v29 = *(a1 + 96);
          do
          {
            v29 *= 2;
            v30 = v28 > 2 * v20;
            v20 *= 2;
          }

          while (v30);
          *(a1 + 96) = v29;
        }
      }

      else if (v28)
      {
        if (FLAGS_fst_error_fatal == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
        }

        v31 = fst::LogMessage::LogMessage(&v48, __p);
        v32 = fst::cerr(v31);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "GCCacheStore:GC: Unable to free all cached states", 49);
        fst::LogMessage::~LogMessage(&v48);
        if (v50 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GC(a1, a2, 1, a4);
    }

    if (FLAGS_v >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(v45, "INFO");
      v33 = fst::LogMessage::LogMessage(&v47, v45);
      v34 = fst::cerr(v33);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "GCCacheStore: Exit GC: object = ", 32);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "(", 1);
      v37 = MEMORY[0x1B8C84BB0](v36, a1);
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "), free recently cached = ", 26);
      v39 = MEMORY[0x1B8C84BD0](v38, a3);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", cache size = ", 15);
      v41 = MEMORY[0x1B8C84C30](v40, *(a1 + 112));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", cache frac = ", 15);
      v42 = std::ostream::operator<<();
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ", cache limit = ", 16);
      v44 = MEMORY[0x1B8C84C30](v43, *(a1 + 96));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "\n", 1);
      fst::LogMessage::~LogMessage(&v47);
      if (v46 < 0)
      {
        operator delete(v45[0]);
      }
    }
  }
}

void sub_1B55AA6C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::GetMutableState(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v2 = (a1 + 8);
  if (a2 >= ((v4 - v3) >> 3))
  {
    v6 = 0;
    std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize(v2, a2 + 1, &v6);
    goto LABEL_5;
  }

  if (!*(v3 + 8 * a2))
  {
LABEL_5:
    operator new();
  }

  return *(v3 + 8 * a2);
}

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::Reset(uint64_t a1)
{
  result = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
  v3 = result;
  *a1 = *result;
  if (result != a1)
  {
    result = std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a1 + 8), *(result + 16), result + 8);
  }

  *(a1 + 32) = *(v3 + 32);
  *(a1 + 80) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v4 != v5)
  {
    do
    {
      v6 = v4 - 56;
      result = std::__list_imp<char *>::clear((v4 - 40));
      v4 = v6;
    }

    while (v6 != v5);
  }

  *(a1 + 64) = v5;
  return result;
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return 0x6DB6DB6DB6DB6DB7 * ((*(*v5 + 64) - *(*v5 + 56)) >> 3);
}

void *fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Expand(uint64_t a1, int a2)
{
  v3 = *(a1 + 168) + 48 * a2;
  v80 = *v3;
  v81 = *(v3 + 8);
  std::list<int>::list(v82, v3 + 16);
  v83 = *(v3 + 40);
  if (v80 == -1)
  {
    goto LABEL_33;
  }

  v4 = *(a1 + 136);
  v79 = 0;
  (*(*v4 + 136))(v4);
  while (1)
  {
    if (!v76)
    {
      if (v79 >= v77[1])
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    if ((*(*v76 + 24))(v76))
    {
      break;
    }

    if (v76)
    {
      v5 = (*(*v76 + 32))(v76);
      goto LABEL_9;
    }

LABEL_8:
    v5 = v77[0] + 56 * v79;
LABEL_9:
    fst::Times<int,(fst::StringType)0>(&v81, v5 + 8, &v57);
    v6 = NAN;
    if (v83 != -INFINITY)
    {
      v7 = *(v5 + 40);
      v6 = NAN;
      if (v7 != -INFINITY)
      {
        v6 = INFINITY;
        if (v7 != INFINITY && v83 != INFINITY)
        {
          v6 = v83 + v7;
        }
      }
    }

    fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v73, &v57, v6);
    std::__list_imp<char *>::clear(&v58);
    v69 = *&v73;
    std::list<int>::list(v70, v74);
    v71 = v75;
    v10 = *&v73 == 0.0 || (v74[2] + 1) < 2;
    v72 = v10;
    if (*(a1 + 148) & 2) == 0 || (v10)
    {
      v15 = *(v5 + 48);
      v16 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
      v66 = *v16;
      std::list<int>::list(v67, (v16 + 2));
      v68 = v16[8];
      LODWORD(v57) = v15;
      LODWORD(v58) = v66;
      std::list<int>::list(v59, v67);
      v61 = v68;
      LODWORD(v16) = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::FindState(a1, &v57);
      std::__list_imp<char *>::clear(v59);
      std::__list_imp<char *>::clear(v67);
      v17 = *v5;
      v63 = v73;
      std::list<int>::list(v64, v74);
      v65 = v75;
      v57 = v17;
      LODWORD(v58) = v63;
      std::list<int>::list(v59, v64);
      v61 = v65;
      LODWORD(v62[0]) = v16;
      MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::push_back[abi:ne200100]((MutableState + 56), &v57);
      std::__list_imp<char *>::clear(v59);
      std::__list_imp<char *>::clear(v64);
    }

    else
    {
      fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Value(&v69, &v57);
      v11 = *(v5 + 48);
      fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Quantize(&v61, &v54, *(a1 + 144));
      LODWORD(v49) = v11;
      LODWORD(v50) = v54;
      std::list<int>::list(v51, v55);
      v52 = v56;
      State = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::FindState(a1, &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v55);
      v13 = *v5;
      v46 = v57;
      std::list<int>::list(v47, &v58);
      v48 = v60;
      v49 = v13;
      LODWORD(v50) = v46;
      std::list<int>::list(v51, v47);
      v52 = v48;
      v53 = State;
      v14 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::push_back[abi:ne200100]((v14 + 56), &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v47);
      std::__list_imp<char *>::clear(v62);
      std::__list_imp<char *>::clear(&v58);
      v72 = 1;
    }

    std::__list_imp<char *>::clear(v70);
    std::__list_imp<char *>::clear(v74);
    if (v76)
    {
      (*(*v76 + 40))(v76);
    }

    else
    {
      ++v79;
    }
  }

  if (v76)
  {
    (*(*v76 + 8))(v76);
    goto LABEL_33;
  }

LABEL_31:
  if (v78)
  {
    --*v78;
  }

LABEL_33:
  if (*(a1 + 148))
  {
    if (v80 == -1)
    {
      goto LABEL_65;
    }

    (*(**(a1 + 136) + 32))(&v57);
    v19 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
    v20 = v57 ? v59[1] + 1 : 0;
    v21 = *v19 ? *(v19 + 24) + 1 : 0;
    if (v20 == v21)
    {
      v22 = v59[0];
      v23 = (v19 + 16);
      if (v57)
      {
        v24 = v57 == *v19;
      }

      else
      {
        v24 = 0;
      }

      v25 = !v24;
      v26 = 1;
      v27 = v25 ^ 1;
      while (1)
      {
        v28 = *v23;
        if ((v26 & 1) != 0 && !v27)
        {
          break;
        }

        if (v22 == &v58)
        {
          goto LABEL_77;
        }

        if (*(v22 + 16) != *(v28 + 16))
        {
          goto LABEL_55;
        }

        v26 = 0;
        v22 = *(v22 + 8);
        v23 = (v28 + 8);
      }

      if (v57)
      {
        goto LABEL_55;
      }

LABEL_77:
      *&v49 = v60;
      v69 = *(v19 + 32);
      v37 = v60;
      v38 = v69;
      std::__list_imp<char *>::clear(&v58);
      if (v37 == v38)
      {
        goto LABEL_76;
      }
    }

    else
    {
LABEL_55:
      std::__list_imp<char *>::clear(&v58);
    }

    if (v80 == -1)
    {
LABEL_65:
      LODWORD(v76) = v81;
      std::list<int>::list(v77, v82);
      *&v79 = v83;
    }

    else
    {
      (*(**(a1 + 136) + 32))(&v57);
      fst::Times<int,(fst::StringType)0>(&v81, &v57, &v49);
      v29 = NAN;
      if (v83 != -INFINITY)
      {
        v29 = NAN;
        if (v60 != -INFINITY)
        {
          v29 = INFINITY;
          if (v60 != INFINITY && v83 != INFINITY)
          {
            v29 = v83 + v60;
          }
        }
      }

      fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v76, &v49, v29);
      std::__list_imp<char *>::clear(&v50);
      std::__list_imp<char *>::clear(&v58);
    }

    v31 = *(a1 + 152);
    v69 = *&v76;
    std::list<int>::list(v70, v77);
    v71 = v79;
    if (v76)
    {
      v32 = v78 + 1 >= 2;
    }

    else
    {
      v32 = 0;
    }

    v33 = !v32;
    v72 = v33;
    if (v32)
    {
      fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Value(&v69, &v57);
      fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Quantize(&v61, &v43, *(a1 + 144));
      LODWORD(v49) = -1;
      LODWORD(v50) = v43;
      std::list<int>::list(v51, v44);
      v52 = v45;
      v34 = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::FindState(a1, &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v44);
      v40 = v57;
      std::list<int>::list(v41, &v58);
      v42 = v60;
      v49 = v31;
      LODWORD(v50) = v40;
      std::list<int>::list(v51, v41);
      v52 = v42;
      v53 = v34;
      v35 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::push_back[abi:ne200100]((v35 + 56), &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v41);
      std::__list_imp<char *>::clear(v62);
      std::__list_imp<char *>::clear(&v58);
      v72 = 1;
    }

    std::__list_imp<char *>::clear(v70);
    std::__list_imp<char *>::clear(v77);
  }

LABEL_76:
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::SetArcs(a1, a2);
  return std::__list_imp<char *>::clear(v82);
}

void sub_1B55AB114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  std::__list_imp<char *>::clear((v39 + 8));
  std::__list_imp<char *>::clear(&a39);
  std::__list_imp<char *>::clear((v40 - 136));
  _Unwind_Resume(a1);
}

void *fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Value@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = *a1;
  std::list<int>::list(v38, (a1 + 2));
  if (*a1)
  {
    v4 = (*(a1 + 3) + 1) >= 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = !v4;
  v39 = v5;
  fst::StringFactor<int,(fst::StringType)0>::Value(&v37, &v24);
  v32 = v24;
  v33[0] = v33;
  v33[1] = v33;
  v34 = 0;
  v6 = v27;
  if (v27)
  {
    v8 = v25;
    v7 = v26;
    v9 = *(v25 + 8);
    v10 = *v26;
    *(v10 + 8) = v9;
    *v9 = v10;
    v11 = v33[0];
    *(v33[0] + 8) = v7;
    *v7 = v11;
    v33[0] = v8;
    *(v8 + 8) = v33;
    v34 = v6;
    v27 = 0;
  }

  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v35, &v32, *(a1 + 8));
  std::__list_imp<char *>::clear(v33);
  std::__list_imp<char *>::clear(&v29);
  std::__list_imp<char *>::clear(&v25);
  fst::StringFactor<int,(fst::StringType)0>::Value(&v37, &v24);
  v19 = v28;
  v20[0] = v20;
  v20[1] = v20;
  v21 = 0;
  v12 = v31;
  if (v31)
  {
    v14 = v29;
    v13 = v30;
    v15 = *(v29 + 8);
    v16 = *v30;
    *(v16 + 8) = v15;
    *v15 = v16;
    v17 = v20[0];
    *(v20[0] + 8) = v13;
    *v13 = v17;
    v20[0] = v14;
    *(v14 + 8) = v20;
    v21 = v12;
    v31 = 0;
  }

  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v22, &v19, 0.0);
  std::__list_imp<char *>::clear(v20);
  std::__list_imp<char *>::clear(&v29);
  std::__list_imp<char *>::clear(&v25);
  std::pair<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::pair[abi:ne200100]<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>&,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>&,0>(a2, &v35, &v22);
  std::__list_imp<char *>::clear(v23);
  std::__list_imp<char *>::clear(v36);
  return std::__list_imp<char *>::clear(v38);
}

void sub_1B55AB4CC(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v1 + 8));
  std::__list_imp<char *>::clear((v3 - 120));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::SetArcs(uint64_t a1, int a2)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::SetArcs(*(a1 + 120), MutableState);
  v5 = *(MutableState + 56);
  v6 = *(MutableState + 64) - v5;
  if (v6)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
    v8 = *(a1 + 68);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = (v5 + 48);
    do
    {
      v11 = *v9;
      v9 += 14;
      v10 = v11;
      if (v11 >= v8)
      {
        v8 = v10 + 1;
        *(a1 + 68) = v10 + 1;
      }

      --v7;
    }

    while (v7);
  }

  result = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetExpandedState(a1, a2);
  *(MutableState + 80) |= 0xAu;
  return result;
}

void *fst::StringFactor<int,(fst::StringType)0>::Value@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + 8;
  v4 = *(a1 + 16);
  fst::StringWeight<int,(fst::StringType)0>::StringWeight(&v9, *a1);
  v8[0] = v8;
  v8[1] = v8;
  v8[2] = 0;
  v7 = 0;
  if (v4 != v3)
  {
    for (i = 0; ; i = v7)
    {
      if (i)
      {
        operator new();
      }

      v7 = *(v4 + 16);
      v4 = *(v4 + 8);
      if (v4 == v3)
      {
        break;
      }
    }
  }

  std::pair<fst::StringWeight<int,(fst::StringType)0>,fst::StringWeight<int,(fst::StringType)0>>::pair[abi:ne200100]<fst::StringWeight<int,(fst::StringType)0>&,fst::StringWeight<int,(fst::StringType)0>&,0>(a2, &v9, &v7);
  std::__list_imp<char *>::clear(v8);
  return std::__list_imp<char *>::clear(v10);
}

void sub_1B55AB6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__list_imp<char *>::clear(v6);
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<fst::StringWeight<int,(fst::StringType)0>,fst::StringWeight<int,(fst::StringType)0>>::pair[abi:ne200100]<fst::StringWeight<int,(fst::StringType)0>&,fst::StringWeight<int,(fst::StringType)0>&,0>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), (a2 + 2));
  *(a1 + 32) = *a3;
  std::list<int>::list((a1 + 40), (a3 + 2));
  return a1;
}

uint64_t std::pair<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::pair[abi:ne200100]<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>&,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>&,0>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), (a2 + 2));
  *(a1 + 32) = a2[8];
  *(a1 + 40) = *a3;
  std::list<int>::list((a1 + 48), (a3 + 2));
  *(a1 + 72) = a3[8];
  return a1;
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetArcs(a2);
  if (*(a1 + 104) == 1 && (*(a2 + 80) & 4) != 0)
  {
    v4 = *(a2 + 64) - *(a2 + 56) + *(a1 + 112);
    *(a1 + 112) = v4;
    if (v4 > *(a1 + 96))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 40);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 48);
}

void *fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D1E760;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

void sub_1B55ABB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v19 = *v17;
  if (*v17)
  {
    v15[30] = v19;
    operator delete(v19);
  }

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::~__hash_table(v16 + 24);
  __p = v16;
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__destroy_vector::operator()[abi:ne200100](&__p);
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

void sub_1B55ABD1C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::CopyStates(a1, a2);
    *(a1 + 56) = *(a1 + 40);
    *(a1 + 72) = *(a2 + 72);
    v4 = *(a2 + 76);
    *(a1 + 76) = v4;
    if (v4 == -1)
    {
      MutableState = 0;
    }

    else
    {
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 80) = MutableState;
  }

  return a1;
}

void fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::CopyStates(void *a1, uint64_t a2)
{
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Clear(a1);
  std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(a1 + 1, (*(a2 + 16) - *(a2 + 8)) >> 3);
  v4 = *(a2 + 8);
  if (*(a2 + 16) != v4)
  {
    v5 = 0;
    do
    {
      if (*(v4 + 8 * v5))
      {
        operator new();
      }

      v7 = a1[2];
      v6 = a1[3];
      if (v7 >= v6)
      {
        v9 = a1[1];
        v10 = (v7 - v9) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
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
          std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>((a1 + 1), v13);
        }

        v14 = (8 * v10);
        *v14 = 0;
        v8 = 8 * v10 + 8;
        v15 = a1[1];
        v16 = a1[2] - v15;
        v17 = v14 - v16;
        memcpy(v14 - v16, v15, v16);
        v18 = a1[1];
        a1[1] = v17;
        a1[2] = v8;
        a1[3] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7 = 0;
        v8 = (v7 + 1);
      }

      a1[2] = v8;
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < (*(a2 + 16) - v4) >> 3);
  }
}

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::CacheState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a1 + 56) = 0;
  *(a1 + 40) = v4;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> const*>,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> const*>>(a1 + 56, v5, v6, 0x6DB6DB6DB6DB6DB7 * ((v6 - v5) >> 3));
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> const*>,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B55AC068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> const*,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> const*,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      *v9 = *(a2 + v7);
      *(v9 + 8) = *(a2 + v7 + 8);
      std::list<int>::list((a4 + v7 + 16), a2 + v7 + 16);
      *(v9 + 40) = *(a2 + v7 + 40);
      *(v9 + 48) = *(a2 + v7 + 48);
      v7 += 56;
    }

    while (v8 + 56 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1B55AC118(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 40);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 7;
      v4 += 56;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::CacheStateIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 68))
  {
    return 0;
  }

  v5 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v3);
  if (v5 >= *(*(a1 + 16) + 68))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    fst::ArcIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 56);
    v8 = 0x6DB6DB6DB6DB6DB7 * ((*(v19 + 64) - v7) >> 3);
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 56 * v20 + 48);
      do
      {
        v14 = *v12;
        v12 += 14;
        v13 = v14;
        if (v11 <= v14)
        {
          v11 = v13 + 1;
          *(v9 + 68) = v13 + 1;
        }

        --v10;
      }

      while (v10);
      v20 = v8;
    }

    fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetExpandedState(v9, v6);
    v15 = *(a1 + 24);
    v16 = *(a1 + 16);
    v17 = *(v16 + 68);
    --*(v19 + 84);
    v4 = v15 >= v17;
    if (v15 < v17)
    {
      break;
    }

    v6 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v16);
  }

  while (v6 < *(*(a1 + 16) + 68));
  return v4;
}

uint64_t *fst::ArcIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>>::ArcIterator(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 84);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Expand(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::ArcMap<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a2 + 224))(a2);
  v6 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v6);
  (*(*a2 + 288))(a2, 0);
  v7 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  result = (*(*a1 + 24))(a1);
  if (result == -1)
  {
    if ((v7 & 4) != 0)
    {
      v18 = *(*a2 + 192);

      return v18(a2, 4, 4);
    }

    return result;
  }

  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v9 = fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a1) != -1;
    (*(*a2 + 248))(a2, v9);
  }

  LODWORD(v24) = 0;
  (*(*a1 + 128))(a1, &v22);
  while (!v22)
  {
    if (v24 >= v23)
    {
      goto LABEL_14;
    }

LABEL_9:
    (*(*a2 + 200))(a2);
    if (v22)
    {
      (*(*v22 + 32))(v22);
    }

    else
    {
      LODWORD(v24) = v24 + 1;
    }
  }

  if (!(*(*v22 + 16))(v22))
  {
    goto LABEL_9;
  }

  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

LABEL_14:
  v33 = 0;
  (*(*a1 + 128))(a1, &v31);
  LODWORD(v10) = -1;
  while (2)
  {
    if (!v31)
    {
      if (v33 >= v32)
      {
        goto LABEL_47;
      }

      goto LABEL_20;
    }

    if (!(*(*v31 + 16))(v31))
    {
      if (v31)
      {
        v11 = (*(*v31 + 24))(v31);
        goto LABEL_21;
      }

LABEL_20:
      v11 = v33;
LABEL_21:
      if (v11 == (*(*a1 + 24))(a1))
      {
        (*(*a2 + 176))(a2, v11);
      }

      v12 = (*(*a1 + 40))(a1, v11);
      (*(*a2 + 256))(a2, v11, v12);
      v26 = 0;
      (*(*a1 + 136))(a1, v11, &v22);
LABEL_24:
      if (v22)
      {
        if ((*(*v22 + 24))(v22))
        {
          if (v22)
          {
            (*(*v22 + 8))();
            goto LABEL_37;
          }

LABEL_35:
          if (v25)
          {
            --*v25;
          }

LABEL_37:
          (*(*a1 + 32))(&v19, a1, v11);
          v22 = 0;
          LODWORD(v23) = v19;
          std::list<int>::list(&v24, v20);
          v27 = v21;
          v28 = -1;
          v29 = fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::operator()(a3, &v22);
          v30 = v15;
          std::__list_imp<char *>::clear(&v24);
          std::__list_imp<char *>::clear(v20);
          if (v29)
          {
            if (v10 == -1)
            {
              v10 = (*(*a2 + 200))(a2);
              (*(*a2 + 184))(a2, v10, 0.0);
            }

            HIDWORD(v30) = v10;
            (*(*a2 + 208))(a2, v11, &v29);
            (*(*a2 + 184))(a2, v11, INFINITY);
          }

          else
          {
            (*(*a2 + 184))(a2, v11, *&v30);
          }

          if (v31)
          {
            (*(*v31 + 32))(v31);
          }

          else
          {
            ++v33;
          }

          continue;
        }

        if (v22)
        {
          v13 = (*(*v22 + 32))();
          goto LABEL_30;
        }
      }

      else if (v26 >= v24)
      {
        goto LABEL_35;
      }

      v13 = (v23 + 56 * v26);
LABEL_30:
      v29 = fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::operator()(a3, v13);
      v30 = v14;
      (*(*a2 + 208))(a2, v11, &v29);
      if (v22)
      {
        (*(*v22 + 40))(v22);
      }

      else
      {
        ++v26;
      }

      goto LABEL_24;
    }

    break;
  }

  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

LABEL_47:
  v16 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v17 = v7 & 0x2EBC21080007;
  if (*(a3 + 4))
  {
    v17 = v7 & 0x2EBC21080003 | 4;
  }

  return (*(*a2 + 192))(a2, v17 | v16, 0x3FFFFFFF0007);
}

void sub_1B55ACC94(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 16));
  std::__list_imp<char *>::clear((v1 + 8));
  v5 = *(v3 - 104);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Unwind_Resume(a1);
}

unint64_t fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::operator()(int *a1, unsigned int *a2)
{
  if (a2[12] != -1)
  {
    goto LABEL_18;
  }

  v4 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
  v5 = a2[2];
  v6 = v5 ? *(a2 + 4) + 1 : 0;
  v7 = *v4 ? *(v4 + 24) + 1 : 0;
  if (v6 != v7)
  {
    goto LABEL_18;
  }

  v8 = (a2 + 6);
  v9 = (v4 + 16);
  for (i = 1; ; i = 0)
  {
    v11 = *v8;
    v12 = *v9;
    if (i)
    {
      if (!v5)
      {
        break;
      }

      if (v5 != *v4)
      {
        goto LABEL_18;
      }
    }

    if (v11 == a2 + 4)
    {
      break;
    }

    if (*(v11 + 16) != *(v12 + 16))
    {
      goto LABEL_18;
    }

    v8 = (v11 + 8);
    v9 = (v12 + 8);
  }

  LODWORD(__p[0]) = a2[10];
  v29[0] = *(v4 + 32);
  if (*__p == v29[0])
  {
    v13 = 0;
    v14 = *a2;
  }

  else
  {
LABEL_18:
    v28 = -1;
    if (!fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>::Extract<(fst::GallicType)1>(a2 + 2, &v27, &v28) || (v14 = *a2, *a2 != a2[1]))
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v15 = fst::LogMessage::LogMessage(&v26, __p);
      v16 = fst::cerr(v15);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "FromGallicMapper: unrepresentable weight: ", 42);
      fst::CompositeWeightWriter::CompositeWeightWriter(v29, v17);
      if (*FLAGS_fst_weight_parentheses)
      {
        v30 = *FLAGS_fst_weight_parentheses;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v29, &v30, 1);
      }

      fst::CompositeWeightWriter::WriteElement<fst::StringWeight<int,(fst::StringType)1>>(v29, a2 + 2);
      fst::CompositeWeightWriter::WriteElement<fst::LogWeightTpl<float>>(v29, a2 + 10);
      if (*FLAGS_fst_weight_parentheses)
      {
        v30 = *(FLAGS_fst_weight_parentheses + 1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v29, &v30, 1);
      }

      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " for arc with ilabel = ", 23);
      v19 = MEMORY[0x1B8C84C00](v18, *a2);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", olabel = ", 11);
      v21 = MEMORY[0x1B8C84C00](v20, a2[1]);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", nextstate = ", 14);
      MEMORY[0x1B8C84C00](v22, a2[12]);
      fst::LogMessage::~LogMessage(&v26);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      *(a1 + 4) = 1;
      v14 = *a2;
    }

    if (!v14 && v28 && a2[12] == -1)
    {
      v14 = *a1;
    }

    v13 = v28 << 32;
  }

  return v13 | v14;
}

void sub_1B55AD008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D1E760;
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

void *fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::GallicToNewSymbolsMapper(void *a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 1) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 10) = 1065353216;
  *(a1 + 12) = 0;
  a1[7] = (*(*a2 + 120))(a2);
  a1[8] = 0;
  *(a1 + 72) = 0;
  (*(**a1 + 224))();
  *(a1 + 13) = (*(**a1 + 200))();
  (*(**a1 + 176))();
  (*(**a1 + 184))(*a1, *(a1 + 13), 0.0);
  v3 = a1[7];
  if (v3)
  {
    v4 = (*(*v3 + 48))(v3);
    v5 = v4;
    if (*(v4 + 23) >= 0)
    {
      v6 = *(v4 + 23);
    }

    else
    {
      v6 = *(v4 + 8);
    }

    v7 = v10;
    std::string::basic_string[abi:ne200100](v10, v6 + 12);
    if (v11 < 0)
    {
      v7 = v10[0];
    }

    if (v6)
    {
      if (v5[23] >= 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = *v5;
      }

      memmove(v7, v8, v6);
    }

    strcpy(v7 + v6, "_from_gallic");
    operator new();
  }

  (*(**a1 + 280))(*a1, 0);
  return a1;
}

void sub_1B55AD3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__hash_table<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,std::__unordered_map_hasher<fst::StringWeight<int,(fst::StringType)0>,std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::StringKey,std::equal_to<fst::StringWeight<int,(fst::StringType)0>>,true>,std::__unordered_map_equal<fst::StringWeight<int,(fst::StringType)0>,std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,std::equal_to<fst::StringWeight<int,(fst::StringType)0>>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::StringKey,true>,std::allocator<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>>>::~__hash_table(v20);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,std::__unordered_map_hasher<fst::StringWeight<int,(fst::StringType)0>,std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::StringKey,std::equal_to<fst::StringWeight<int,(fst::StringType)0>>,true>,std::__unordered_map_equal<fst::StringWeight<int,(fst::StringType)0>,std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,std::equal_to<fst::StringWeight<int,(fst::StringType)0>>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::StringKey,true>,std::allocator<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,std::__unordered_map_hasher<fst::StringWeight<int,(fst::StringType)0>,std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::StringKey,std::equal_to<fst::StringWeight<int,(fst::StringType)0>>,true>,std::__unordered_map_equal<fst::StringWeight<int,(fst::StringType)0>,std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,std::equal_to<fst::StringWeight<int,(fst::StringType)0>>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::StringKey,true>,std::allocator<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,std::__unordered_map_hasher<fst::StringWeight<int,(fst::StringType)0>,std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::StringKey,std::equal_to<fst::StringWeight<int,(fst::StringType)0>>,true>,std::__unordered_map_equal<fst::StringWeight<int,(fst::StringType)0>,std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,std::equal_to<fst::StringWeight<int,(fst::StringType)0>>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::StringKey,true>,std::allocator<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__list_imp<char *>::clear(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::operator()(uint64_t *a1, int *a2)
{
  v45[2] = *MEMORY[0x1E69E9840];
  if (a2[12] != -1)
  {
    v4 = *(a2 + 2);
LABEL_19:
    v42 = v4;
    std::list<int>::list(v43, (a2 + 4));
    v15 = 0;
    if (v42 == 0.0 || v44 == -1)
    {
LABEL_71:
      v14 = *a2;
      if (*a2 == a2[1])
      {
LABEL_78:
        std::__list_imp<char *>::clear(v43);
        v13 = v15 << 32;
        return v13 | v14;
      }

LABEL_72:
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      }

      v35 = fst::LogMessage::LogMessage(&v39, &__p);
      v36 = fst::cerr(v35);
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "GallicToNewSymbolMapper: unrepresentable weight: ", 49);
      MEMORY[0x1B8C84C00](v37, v15);
      fst::LogMessage::~LogMessage(&v39);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      *(a1 + 72) = 1;
      v14 = *a2;
      goto LABEL_78;
    }

    v16 = std::__hash_table<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,std::__unordered_map_hasher<fst::StringWeight<int,(fst::StringType)0>,std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::StringKey,std::equal_to<fst::StringWeight<int,(fst::StringType)0>>,true>,std::__unordered_map_equal<fst::StringWeight<int,(fst::StringType)0>,std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,std::equal_to<fst::StringWeight<int,(fst::StringType)0>>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::StringKey,true>,std::allocator<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>>>::find<fst::StringWeight<int,(fst::StringType)0>>(a1 + 1, &v42);
    if (v16)
    {
      v15 = *(v16 + 12);
      goto LABEL_70;
    }

    v15 = *(a1 + 12) + 1;
    *(a1 + 12) = v15;
    *&__p.__r_.__value_.__l.__data_ = v42;
    std::list<int>::list(&__p.__r_.__value_.__l.__size_, v43);
    v41 = v15;
    std::__hash_table<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,std::__unordered_map_hasher<fst::StringWeight<int,(fst::StringType)0>,std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::StringKey,std::equal_to<fst::StringWeight<int,(fst::StringType)0>>,true>,std::__unordered_map_equal<fst::StringWeight<int,(fst::StringType)0>,std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,std::equal_to<fst::StringWeight<int,(fst::StringType)0>>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::StringKey,true>,std::allocator<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>>>::__emplace_unique_key_args<fst::StringWeight<int,(fst::StringType)0>,std::pair<fst::StringWeight<int,(fst::StringType)0> const,int>>(a1 + 1, &__p);
    std::__list_imp<char *>::clear(&__p.__r_.__value_.__l.__size_);
    v17 = v43[1];
    memset(&__p, 0, sizeof(__p));
    if (v42 == 0.0)
    {
LABEL_66:
      v34 = a1[8];
      if (v34)
      {
        (*(*v34 + 24))(v34, &__p, v15);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_70:
      if (v15 > 0xFFFFFFFD)
      {
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    v18 = 0;
    v19 = *(a1 + 13);
    v20 = 1;
    while (1)
    {
      if (v18 >= v44 + 1)
      {
        goto LABEL_66;
      }

      v21 = v18 == v44 ? *(a1 + 13) : (*(**a1 + 200))();
      v22 = *a1;
      v23 = (v20 & 1) != 0 ? &v42 : (v17 + 16);
      v24 = *v23;
      v25 = v18 ? 0 : v15;
      LODWORD(v39.__r_.__value_.__l.__data_) = v25;
      *(v39.__r_.__value_.__r.__words + 4) = v24;
      HIDWORD(v39.__r_.__value_.__r.__words[1]) = v21;
      (*(*v22 + 208))(v22, v19, &v39);
      if (a1[8])
      {
        if (v18)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          std::string::basic_string[abi:ne200100](&v39, size + 1);
          if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = &v39;
          }

          else
          {
            v27 = v39.__r_.__value_.__r.__words[0];
          }

          if (size)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            memmove(v27, p_p, size);
          }

          *(&v27->__r_.__value_.__l.__data_ + size) = 95;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v39;
        }

        (*(*a1[7] + 88))(&v39);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &__p;
        }

        else
        {
          v29 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v30 = __p.__r_.__value_.__l.__size_;
        }

        v31 = std::string::insert(&v39, 0, v29, v30);
        v32 = v31->__r_.__value_.__r.__words[0];
        v45[0] = v31->__r_.__value_.__l.__size_;
        *(v45 + 7) = *(&v31->__r_.__value_.__r.__words[1] + 7);
        v33 = HIBYTE(v31->__r_.__value_.__r.__words[2]);
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p.__r_.__value_.__r.__words[0] = v32;
        __p.__r_.__value_.__l.__size_ = v45[0];
        *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v45 + 7);
        *(&__p.__r_.__value_.__s + 23) = v33;
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          break;
        }
      }

      if ((v20 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v20 = 0;
      ++v18;
      v19 = v21;
      if (v42 == 0.0)
      {
        goto LABEL_66;
      }
    }

    operator delete(v39.__r_.__value_.__l.__data_);
    if (v20)
    {
      goto LABEL_62;
    }

LABEL_61:
    v17 = *(v17 + 8);
    goto LABEL_62;
  }

  v5 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
  v4 = *(a2 + 2);
  if (v4 == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + 4) + 1;
  }

  if (*v5)
  {
    v7 = *(v5 + 24) + 1;
  }

  else
  {
    v7 = 0;
  }

  if (v6 != v7)
  {
    goto LABEL_19;
  }

  v8 = (a2 + 6);
  v9 = (v5 + 16);
  for (i = 1; ; i = 0)
  {
    v11 = *v8;
    v12 = *v9;
    if (i)
    {
      if (v4 == 0.0)
      {
        break;
      }

      if (LODWORD(v4) != *v5)
      {
        goto LABEL_19;
      }
    }

    if (v11 == a2 + 4)
    {
      break;
    }

    if (*(v11 + 16) != *(v12 + 16))
    {
      goto LABEL_19;
    }

    v8 = (v11 + 8);
    v9 = (v12 + 8);
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = a2[10];
  v42 = *(v5 + 32);
  if (*&__p.__r_.__value_.__l.__data_ != v42)
  {
    goto LABEL_19;
  }

  v13 = 0;
  v14 = *a2;
  return v13 | v14;
}

void sub_1B55AD9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__list_imp<char *>::clear(&a27);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,std::__unordered_map_hasher<fst::StringWeight<int,(fst::StringType)0>,std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::StringKey,std::equal_to<fst::StringWeight<int,(fst::StringType)0>>,true>,std::__unordered_map_equal<fst::StringWeight<int,(fst::StringType)0>,std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,std::equal_to<fst::StringWeight<int,(fst::StringType)0>>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::StringKey,true>,std::allocator<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>>>::find<fst::StringWeight<int,(fst::StringType)0>>(void *a1, int *a2)
{
  v2 = 0;
  v3 = *(a2 + 2);
  v4 = *a2;
  v5 = v3;
  if (*a2)
  {
    v6 = *a2;
    while (1)
    {
      v2 ^= v6;
      if (v5 == a2 + 2)
      {
        break;
      }

      v6 = *(v5 + 16) ^ (2 * v2);
      v5 = *(v5 + 8);
    }
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v2;
    if (v2 >= *&v7)
    {
      v9 = v2 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v2;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  result = *v10;
  if (*v10)
  {
    if (v4)
    {
      v12 = *(a2 + 3) + 1;
    }

    else
    {
      v12 = 0;
    }

    do
    {
      v13 = result[1];
      if (v13 == v2)
      {
        v14 = *(result + 4);
        if (v14)
        {
          v15 = result[5] + 1;
        }

        else
        {
          v15 = 0;
        }

        if (v15 == v12)
        {
          v16 = result + 4;
          v17 = 1;
          for (i = v3; ; i = *(i + 8))
          {
            v19 = *v16;
            if (v17)
            {
              if (!v14)
              {
                return result;
              }

              if (v14 != v4)
              {
                break;
              }
            }

            if (v19 == result + 3)
            {
              return result;
            }

            if (*(v19 + 16) != *(i + 16))
            {
              break;
            }

            v17 = 0;
            v16 = (v19 + 8);
          }
        }
      }

      else
      {
        if (v8.u32[0] > 1uLL)
        {
          if (v13 >= *&v7)
          {
            v13 %= *&v7;
          }
        }

        else
        {
          v13 &= *&v7 - 1;
        }

        if (v13 != v9)
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

uint64_t *std::__hash_table<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,std::__unordered_map_hasher<fst::StringWeight<int,(fst::StringType)0>,std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::StringKey,std::equal_to<fst::StringWeight<int,(fst::StringType)0>>,true>,std::__unordered_map_equal<fst::StringWeight<int,(fst::StringType)0>,std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,std::equal_to<fst::StringWeight<int,(fst::StringType)0>>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::StringKey,true>,std::allocator<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>>>::__emplace_unique_key_args<fst::StringWeight<int,(fst::StringType)0>,std::pair<fst::StringWeight<int,(fst::StringType)0> const,int>>(void *a1, int *a2)
{
  v2 = 0;
  v3 = *a2;
  v4 = *(a2 + 2);
  if (*a2)
  {
    v5 = *a2;
    while (1)
    {
      v2 ^= v5;
      if (v4 == a2 + 2)
      {
        break;
      }

      v5 = *(v4 + 16) ^ (2 * v2);
      v4 = *(v4 + 8);
    }
  }

  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_35;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v2;
    if (v2 >= *&v6)
    {
      v8 = v2 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v2;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_35:
    std::__hash_table<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,std::__unordered_map_hasher<fst::StringWeight<int,(fst::StringType)0>,std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::StringKey,std::equal_to<fst::StringWeight<int,(fst::StringType)0>>,true>,std::__unordered_map_equal<fst::StringWeight<int,(fst::StringType)0>,std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,std::equal_to<fst::StringWeight<int,(fst::StringType)0>>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::StringKey,true>,std::allocator<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>>>::__construct_node_hash<std::pair<fst::StringWeight<int,(fst::StringType)0> const,int>>();
  }

  if (v3)
  {
    v11 = *(a2 + 3) + 1;
  }

  else
  {
    v11 = 0;
  }

  while (1)
  {
    v12 = v10[1];
    if (v12 == v2)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
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

    if (v12 != v8)
    {
      goto LABEL_35;
    }

LABEL_34:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_35;
    }
  }

  v13 = *(v10 + 4);
  if (v13)
  {
    v14 = v10[5] + 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 != v11)
  {
    goto LABEL_34;
  }

  v15 = v10 + 4;
  v16 = 1;
  for (i = *(a2 + 2); ; i = *(i + 8))
  {
    v18 = *v15;
    if (v16)
    {
      if (!v13)
      {
        return v10;
      }

      if (v13 != v3)
      {
        goto LABEL_34;
      }
    }

    if (v18 == v10 + 3)
    {
      break;
    }

    if (*(v18 + 16) != *(i + 16))
    {
      goto LABEL_34;
    }

    v16 = 0;
    v15 = (v18 + 8);
  }

  return v10;
}

void sub_1B55ADEA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<fst::StringWeight<int,(fst::StringType)0>,int>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__list_imp<char *>::clear(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t fst::EncodeMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::~EncodeMapper(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 80) - 1;
  *(v2 + 80) = v3;
  if (!v3)
  {
    v4 = fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::~EncodeTable(v2);
    MEMORY[0x1B8C85350](v4, 0x10A0C40782F6942);
  }

  return a1;
}

void *fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::~EncodeTable(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        std::__list_imp<char *>::clear((v5 + 16));
        MEMORY[0x1B8C85350](v5, 0x1020C400F9B4526);
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[11];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[12];
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a1 + 4));
  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D1DE20;
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

uint64_t quasar::artifact::AppLmArtifactLifeCycleStage::AppLmArtifactLifeCycleStage(uint64_t a1, __int128 *a2, int a3, char a4, char a5, char a6, const void ***a7)
{
  *a1 = &unk_1F2D1E8D0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v13 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v13;
  }

  *(a1 + 32) = a3;
  *(a1 + 36) = a4;
  *(a1 + 37) = a5;
  *(a1 + 38) = a6;
  std::set<std::string>::set[abi:ne200100]((a1 + 40), a7);
  return a1;
}

void sub_1B55AE210(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::artifact::operator<<(void *a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v3 = a2 + 8;
  v4 = v5;
  v6 = *(v3 + 8);
  if (*(v3 + 23) >= 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v3 = v4;
    v7 = v6;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v7);
  return a1;
}

uint64_t quasar::artifact::AppLmArtifactLifeCycleStages::get(quasar::artifact::AppLmArtifactLifeCycleStages *this)
{
  {
    operator new();
  }

  return quasar::artifact::AppLmArtifactLifeCycleStages::get(void)::singleton;
}

void sub_1B55AE30C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x10B2C40F2137253);
  _Unwind_Resume(a1);
}

quasar::artifact::AppLmArtifactLifeCycleStages *quasar::artifact::AppLmArtifactLifeCycleStages::AppLmArtifactLifeCycleStages(quasar::artifact::AppLmArtifactLifeCycleStages *this)
{
  v24 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&__p, "UNKNOWN");
  *(&v10 + 1) = 0;
  v11 = 0;
  *&v10 = &v10 + 8;
  quasar::artifact::AppLmArtifactLifeCycleStage::AppLmArtifactLifeCycleStage(this, &__p, 0, 0, 0, 0, &v10);
  std::__tree<std::string>::destroy(&v10, *(&v10 + 1));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "INVALID");
  *(&v10 + 1) = 0;
  v11 = 0;
  *&v10 = &v10 + 8;
  quasar::artifact::AppLmArtifactLifeCycleStage::AppLmArtifactLifeCycleStage(this + 64, &__p, 1, 0, 0, 0, &v10);
  std::__tree<std::string>::destroy(&v10, *(&v10 + 1));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, "RAW_PHRASE_COUNTS");
  std::string::basic_string[abi:ne200100]<0>(&__p, "phrase-count");
  std::string::basic_string[abi:ne200100]<0>(&v13, "oov");
  std::string::basic_string[abi:ne200100]<0>(&v14.__r_.__value_.__s.__data_[16], "custom-prons");
  std::set<std::string>::set[abi:ne200100](&v8, &__p.__r_.__value_.__l.__data_, 3);
  quasar::artifact::AppLmArtifactLifeCycleStage::AppLmArtifactLifeCycleStage(this + 128, &v10, 1000, 1, 0, 1, &v8);
  std::__tree<std::string>::destroy(&v8, v9);
  for (i = 0; i != -9; i -= 3)
  {
    if (SHIBYTE(v16.__r_.__value_.__r.__words[i]) < 0)
    {
      operator delete(v14.__r_.__value_.__r.__words[i + 2]);
    }
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, "PROCESSED_PHRASE_COUNTS");
  std::string::basic_string[abi:ne200100]<0>(&__p, "phrase-count");
  std::string::basic_string[abi:ne200100]<0>(&v13, "oov");
  std::string::basic_string[abi:ne200100]<0>(&v14.__r_.__value_.__s.__data_[16], "custom-prons");
  std::set<std::string>::set[abi:ne200100](&v8, &__p.__r_.__value_.__l.__data_, 3);
  quasar::artifact::AppLmArtifactLifeCycleStage::AppLmArtifactLifeCycleStage(this + 192, &v10, 2000, 1, 1, 1, &v8);
  std::__tree<std::string>::destroy(&v8, v9);
  for (j = 0; j != -9; j -= 3)
  {
    if (SHIBYTE(v16.__r_.__value_.__r.__words[j]) < 0)
    {
      operator delete(v14.__r_.__value_.__r.__words[j + 2]);
    }
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, "PROCESSED_NGRAM_COUNTS");
  std::string::basic_string[abi:ne200100]<0>(&__p, "ngram-count");
  std::string::basic_string[abi:ne200100]<0>(&v13, "oov");
  std::string::basic_string[abi:ne200100]<0>(&v14.__r_.__value_.__s.__data_[16], "custom-prons");
  std::set<std::string>::set[abi:ne200100](&v8, &__p.__r_.__value_.__l.__data_, 3);
  quasar::artifact::AppLmArtifactLifeCycleStage::AppLmArtifactLifeCycleStage(this + 256, &v10, 3000, 1, 1, 1, &v8);
  std::__tree<std::string>::destroy(&v8, v9);
  for (k = 0; k != -9; k -= 3)
  {
    if (SHIBYTE(v16.__r_.__value_.__r.__words[k]) < 0)
    {
      operator delete(v14.__r_.__value_.__r.__words[k + 2]);
    }
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, "DECODING_READY");
  std::string::basic_string[abi:ne200100]<0>(&__p, "language-model-fst");
  std::string::basic_string[abi:ne200100]<0>(&v13, "language-model-arpa");
  std::string::basic_string[abi:ne200100]<0>(&v14.__r_.__value_.__s.__data_[16], "oov");
  std::string::basic_string[abi:ne200100]<0>(&v16.__r_.__value_.__s.__data_[8], "custom-prons");
  std::set<std::string>::set[abi:ne200100](&v8, &__p.__r_.__value_.__l.__data_, 4);
  quasar::artifact::AppLmArtifactLifeCycleStage::AppLmArtifactLifeCycleStage(this + 320, &v10, 4000, 1, 1, 0, &v8);
  std::__tree<std::string>::destroy(&v8, v9);
  for (m = 0; m != -12; m -= 3)
  {
    if (*(&v17 + m * 8 + 7) < 0)
    {
      operator delete(v16.__r_.__value_.__r.__words[m + 1]);
    }
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 1), *(this + 2));
  }

  else
  {
    __p = *(this + 8);
  }

  v13 = this;
  if (*(this + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(this + 9), *(this + 10));
  }

  else
  {
    v14 = *(this + 3);
  }

  v15 = this + 64;
  if (*(this + 159) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *(this + 17), *(this + 18));
  }

  else
  {
    v16 = *(this + 136);
  }

  v17 = this + 128;
  if (*(this + 223) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(this + 25), *(this + 26));
  }

  else
  {
    v18 = *(this + 200);
  }

  v19 = this + 192;
  if (*(this + 287) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *(this + 33), *(this + 34));
  }

  else
  {
    v20 = *(this + 11);
  }

  v21 = this + 256;
  if (*(this + 351) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *(this + 41), *(this + 42));
  }

  else
  {
    v22 = *(this + 328);
  }

  v23 = this + 320;
  std::map<std::string,quasar::artifact::AppLmArtifactLifeCycleStage const&>::map[abi:ne200100](this + 48, &__p.__r_.__value_.__l.__data_, 6);
  for (n = 0; n != -24; n -= 4)
  {
    if (SHIBYTE(v22.__r_.__value_.__r.__words[n + 2]) < 0)
    {
      operator delete(*(&v22.__r_.__value_.__l.__data_ + n * 8));
    }
  }

  return this;
}

void sub_1B55AE934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  quasar::artifact::AppLmArtifactLifeCycleStage::~AppLmArtifactLifeCycleStage(v30);
  quasar::artifact::AppLmArtifactLifeCycleStage::~AppLmArtifactLifeCycleStage(v29);
  quasar::artifact::AppLmArtifactLifeCycleStage::~AppLmArtifactLifeCycleStage(v28);
  quasar::artifact::AppLmArtifactLifeCycleStage::~AppLmArtifactLifeCycleStage(v27);
  quasar::artifact::AppLmArtifactLifeCycleStage::~AppLmArtifactLifeCycleStage(v26);
  quasar::artifact::AppLmArtifactLifeCycleStage::~AppLmArtifactLifeCycleStage(v25);
  _Unwind_Resume(a1);
}

void quasar::artifact::AppLmArtifactLifeCycleStage::~AppLmArtifactLifeCycleStage(quasar::artifact::AppLmArtifactLifeCycleStage *this)
{
  quasar::artifact::AppLmArtifactLifeCycleStage::~AppLmArtifactLifeCycleStage(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D1E8D0;
  std::__tree<std::string>::destroy(this + 40, *(this + 6));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *std::map<std::string,quasar::artifact::AppLmArtifactLifeCycleStage const&>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,quasar::artifact::AppLmArtifactLifeCycleStage const&>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::artifact::AppLmArtifactLifeCycleStage const&>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::artifact::AppLmArtifactLifeCycleStage const&>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,quasar::artifact::AppLmArtifactLifeCycleStage const&> const&>(a1, v4, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,quasar::artifact::AppLmArtifactLifeCycleStage const&>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::artifact::AppLmArtifactLifeCycleStage const&>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::artifact::AppLmArtifactLifeCycleStage const&>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,quasar::artifact::AppLmArtifactLifeCycleStage const&> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,quasar::artifact::AppLmArtifactLifeCycleStage const&>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::artifact::AppLmArtifactLifeCycleStage const&>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::artifact::AppLmArtifactLifeCycleStage const&>>>::__construct_node<std::pair<std::string const,quasar::artifact::AppLmArtifactLifeCycleStage const&> const&>();
  }

  return result;
}

void sub_1B55AEE98(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t quasar::OnlineSeevaStepBigLmDecoder::OnlineSeevaStepBigLmDecoder(uint64_t a1, __int128 *a2)
{
  v3 = quasar::OnlineSeevaStepDecoder::OnlineSeevaStepDecoder(a1, a2);
  *v3 = &unk_1F2D1E900;
  *(v3 + 1048) = &unk_1F2D122A8;
  *(v3 + 1056) = 0x203F000000;
  *(v3 + 1064) = 0x200000002;
  *(v3 + 1072) = 0;
  std::string::basic_string[abi:ne200100]<0>((v3 + 1080), "/cpu:0");
  *(a1 + 1120) = 0;
  *(a1 + 1104) = 0u;
  *(a1 + 1128) = 1;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = 0u;
  *(a1 + 1132) = 0;
  *(a1 + 1140) = 0u;
  *(a1 + 1153) = 0;
  *(a1 + 1192) = xmmword_1B5B09C40;
  *(a1 + 1208) = 200;
  *(a1 + 1212) = 0;
  *(a1 + 1220) = xmmword_1B5B09C50;
  *(a1 + 1236) = 2;
  *(a1 + 1240) = 1;
  *(a1 + 1048) = &unk_1F2D1E9D8;
  *(a1 + 1244) = xmmword_1B5B09C60;
  *(a1 + 1260) = 0x4100000041000000;
  *(a1 + 1268) = 0x1F4000000010;
  *(a1 + 1324) = 0;
  *(a1 + 1292) = 0u;
  *(a1 + 1308) = 0u;
  *(a1 + 1276) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1496) = 0u;
  *(a1 + 1512) = 0u;
  std::string::basic_string[abi:ne200100]<0>((a1 + 1528), "wordmap");
  *(a1 + 1568) = 0;
  *(a1 + 1552) = 0u;
  *(a1 + 1576) = 7;
  std::string::basic_string[abi:ne200100]<0>((a1 + 1584), "<unk>");
  *(a1 + 1656) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = a1 + 1656;
  *(a1 + 1672) = 0u;
  *(a1 + 1688) = 0u;
  *(a1 + 1704) = 0u;
  *(a1 + 1720) = 0u;
  *(a1 + 1736) = 0u;
  *(a1 + 1752) = 0u;
  *(a1 + 1768) = 0u;
  *(a1 + 1784) = 0u;
  *(a1 + 1800) = 0u;
  *(a1 + 1816) = 0u;
  *(a1 + 1832) = 0u;
  *(a1 + 1848) = 0u;
  *(a1 + 1864) = 0u;
  return a1;
}

void sub_1B55AF0A0(_Unwind_Exception *a1)
{
  if (*(v1 + 1575) < 0)
  {
    operator delete(*v5);
  }

  if (*(v1 + 1551) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 1527) < 0)
  {
    operator delete(*(v1 + 1504));
  }

  if (*(v1 + 1503) < 0)
  {
    operator delete(*(v1 + 1480));
  }

  if (*(v1 + 1479) < 0)
  {
    operator delete(*(v1 + 1456));
  }

  if (*(v1 + 1455) < 0)
  {
    operator delete(*(v1 + 1432));
  }

  if (*(v1 + 1431) < 0)
  {
    operator delete(*(v1 + 1408));
  }

  if (*(v1 + 1407) < 0)
  {
    operator delete(*(v1 + 1384));
  }

  if (*(v1 + 1383) < 0)
  {
    operator delete(*(v1 + 1360));
  }

  if (*(v1 + 1359) < 0)
  {
    operator delete(*v4);
  }

  v7 = *(v1 + 1304);
  if (v7)
  {
    *(v1 + 1312) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 1280);
  if (v8)
  {
    *(v1 + 1288) = v8;
    operator delete(v8);
  }

  kaldi::quasar::SeevaStepInferenceConfig::~SeevaStepInferenceConfig(v2);
  quasar::OnlineSeevaStepDecoder::~OnlineSeevaStepDecoder(v1);
  _Unwind_Resume(a1);
}

void quasar::OnlineSeevaStepBigLmDecoder::~OnlineSeevaStepBigLmDecoder(quasar::OnlineSeevaStepBigLmDecoder *this)
{
  *this = &unk_1F2D1E900;
  v2 = *(this + 234);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 232);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 230);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 228);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 226);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 224);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v15 = (this + 1760);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v15);
  v15 = (this + 1736);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v15);
  v8 = *(this + 216);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 212);
  if (v9)
  {
    *(this + 213) = v9;
    operator delete(v9);
  }

  v10 = *(this + 209);
  if (v10)
  {
    *(this + 210) = v10;
    operator delete(v10);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 1648, *(this + 207));
  v11 = *(this + 205);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 203);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*(this + 1607) < 0)
  {
    operator delete(*(this + 198));
  }

  if (*(this + 1575) < 0)
  {
    operator delete(*(this + 194));
  }

  if (*(this + 1551) < 0)
  {
    operator delete(*(this + 191));
  }

  if (*(this + 1527) < 0)
  {
    operator delete(*(this + 188));
  }

  if (*(this + 1503) < 0)
  {
    operator delete(*(this + 185));
  }

  if (*(this + 1479) < 0)
  {
    operator delete(*(this + 182));
  }

  if (*(this + 1455) < 0)
  {
    operator delete(*(this + 179));
  }

  if (*(this + 1431) < 0)
  {
    operator delete(*(this + 176));
  }

  if (*(this + 1407) < 0)
  {
    operator delete(*(this + 173));
  }

  if (*(this + 1383) < 0)
  {
    operator delete(*(this + 170));
  }

  if (*(this + 1359) < 0)
  {
    operator delete(*(this + 167));
  }

  v13 = *(this + 163);
  if (v13)
  {
    *(this + 164) = v13;
    operator delete(v13);
  }

  v14 = *(this + 160);
  if (v14)
  {
    *(this + 161) = v14;
    operator delete(v14);
  }

  *(this + 131) = &unk_1F2D122A8;
  if (*(this + 1191) < 0)
  {
    operator delete(*(this + 146));
  }

  if (*(this + 1159) < 0)
  {
    operator delete(*(this + 142));
  }

  if (*(this + 1127) < 0)
  {
    operator delete(*(this + 138));
  }

  if (*(this + 1103) < 0)
  {
    operator delete(*(this + 135));
  }

  quasar::OnlineSeevaStepDecoder::~OnlineSeevaStepDecoder(this);
}

{
  quasar::OnlineSeevaStepBigLmDecoder::~OnlineSeevaStepBigLmDecoder(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineSeevaStepBigLmDecoder::setLmeTags(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = v4 - *a2;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  if (v6 != a3[1] - *a3)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "number of start/end LME class tags doesn't match: ", 50);
    v31 = MEMORY[0x1B8C84C30](v30, v7);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " vs ", 4);
    MEMORY[0x1B8C84C30](v32, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    goto LABEL_42;
  }

  std::vector<int>::resize((a1 + 1280), 0xAAAAAAAAAAAAAAABLL * (v6 >> 3));
  std::vector<int>::resize((a1 + 1304), v7);
  v10 = 2 * *(a1 + 776);
  v33 = v7;
  if (v4 != v5)
  {
    v11 = 0;
    v12 = 0;
    if (v7 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v7;
    }

    v14 = -1;
    while (1)
    {
      WordId = kaldi::quasar::Vocab::GetWordId(*(a1 + 872), (*a2 + v11));
      if (WordId == *(a1 + 772))
      {
        break;
      }

      v16 = WordId;
      *(*(a1 + 1280) + 4 * v12) = WordId;
      v17 = kaldi::quasar::Vocab::GetWordId(*(a1 + 872), (*a3 + v11));
      if (v17 == *(a1 + 772))
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v34 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "cannot find ", 12);
        v27 = *a3 + v11;
        v28 = *(v27 + 23);
        if (v28 >= 0)
        {
          v25 = *a3 + v11;
        }

        else
        {
          v25 = *v27;
        }

        if (v28 >= 0)
        {
          v26 = *(v27 + 23);
        }

        else
        {
          v26 = *(v27 + 8);
        }

        goto LABEL_41;
      }

      if (v16 <= v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v16;
      }

      if (v16 >= v10)
      {
        v19 = v10;
      }

      else
      {
        v19 = v16;
      }

      *(*(a1 + 1304) + 4 * v12) = v17;
      if (v17 >= v19)
      {
        v10 = v19;
      }

      else
      {
        v10 = v17;
      }

      if (v17 <= v18)
      {
        v14 = v18;
      }

      else
      {
        v14 = v17;
      }

      ++v12;
      v11 += 24;
      if (v13 == v12)
      {
        goto LABEL_24;
      }
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "cannot find ", 12);
    v23 = *a2 + v11;
    v24 = *(v23 + 23);
    if (v24 >= 0)
    {
      v25 = *a2 + v11;
    }

    else
    {
      v25 = *v23;
    }

    if (v24 >= 0)
    {
      v26 = *(v23 + 23);
    }

    else
    {
      v26 = *(v23 + 8);
    }

LABEL_41:
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v25, v26);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v29, " in the vocab file");
LABEL_42:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v34);
  }

  v14 = -1;
LABEL_24:
  if (v14 - v10 + 1 == 2 * v33)
  {
    *(a1 + 1328) = v10;
    *(a1 + 1332) = v14;
  }

  else if (quasar::gLogLevel >= 4)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "there are ", 10);
    v21 = MEMORY[0x1B8C84C30](v20, v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " LME classes, their IDs are not contiguous", 42);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v34);
  }
}

void sub_1B55AF74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  _Unwind_Resume(a1);
}

void quasar::OnlineSeevaStepBigLmDecoder::registerParams(quasar::OnlineSeevaStepBigLmDecoder *this, const void **a2)
{
  kaldi::quasar::SeevaStepLmInferenceConfig::Register(this + 1048, a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "seeva-step");
  quasar::SystemConfig::enforceMinVersion(a2, 152, 0, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "encoder-model-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "seeva inference encoder graph file");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 456, v4, 1, 152, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "decoder-model-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "seeva inference decoder graph file");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 480, v4, 1, 152, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "num-encoder-states");
  std::string::basic_string[abi:ne200100]<0>(v4, "number of encoder states");
  quasar::SystemConfig::Register<int>(a2, __p, this + 780, v4, 1, 152, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "num-decoder-states");
  std::string::basic_string[abi:ne200100]<0>(v4, "number of decoder states");
  quasar::SystemConfig::Register<int>(a2, __p, this + 784, v4, 1, 152, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "align-state-list");
  std::string::basic_string[abi:ne200100]<0>(v4, "alignment state indices in the decoder states");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 840, v4, 1, 152, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "vocab-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "the vocab file for the model output token");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 504, v4, 1, 152, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "vocab-is-binary");
  std::string::basic_string[abi:ne200100]<0>(v4, "vocab file is binary");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 528, v4, 1, 152, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "model-format-version");
  std::string::basic_string[abi:ne200100]<0>(v4, "model format version");
  quasar::SystemConfig::Register<int>(a2, __p, this + 532, v4, 1, 152, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "transform-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "feature transform file");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 536, v4, 0, 152, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lme-start-tag-list");
  std::string::basic_string[abi:ne200100]<0>(v4, "a list of LME start tag");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 1336, v4, 0, 152, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lme-end-tag-list");
  std::string::basic_string[abi:ne200100]<0>(v4, "a list of LME end tag");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 1360, v4, 0, 152, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "speller-fst-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "the speller FST file");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 1384, v4, 1, 152, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_1B55B015C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void kaldi::quasar::SeevaStepLmInferenceConfig::Register(uint64_t a1, uint64_t a2)
{
  kaldi::quasar::SeevaStepInferenceConfig::Register(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "lme-score-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "scale the LME FST score when LME is active");
  (*(*a2 + 24))(a2, v6, a1 + 200, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "nonlme-score-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "scale the nonLME arc score when LME is active.");
  (*(*a2 + 24))(a2, v6, a1 + 204, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "lm-score-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "scale external LM score when available");
  (*(*a2 + 24))(a2, v6, a1 + 208, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "lm-miss-penalty");
  std::string::basic_string[abi:ne200100]<0>(__p, "penalty for missing LM arc");
  (*(*a2 + 24))(a2, v6, a1 + 212, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "lm-miss-final-penalty");
  std::string::basic_string[abi:ne200100]<0>(__p, "penalty for missing LM arc in final");
  (*(*a2 + 24))(a2, v6, a1 + 216, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "lm-beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "use this beam value for the external LM");
  (*(*a2 + 8))(a2, v6, a1 + 220, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "lme-beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "use this beam value for the LME arcs");
  (*(*a2 + 8))(a2, v6, a1 + 224, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "length-penalty-lm");
  std::string::basic_string[abi:ne200100]<0>(__p, "the length penalty value when using external LM");
  (*(*a2 + 24))(a2, v6, a1 + 228, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B55B0604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineSeevaStepBigLmDecoder::finishInit(quasar::OnlineSeevaStepBigLmDecoder *this)
{
  *(this + 568) = *(this + 66);
  *(this + 584) = *(this + 1072);
  std::string::operator=((this + 592), this + 45);
  std::string::operator=((this + 616), this + 46);
  *(this + 80) = *(this + 141);
  std::string::operator=(this + 27, (this + 1136));
  *(this + 672) = *(this + 1160);
  std::string::operator=((this + 680), (this + 1168));
  v2 = *(this + 1208);
  *(this + 44) = *(this + 1192);
  *(this + 45) = v2;
  *(this + 46) = *(this + 1224);
  *(this + 94) = *(this + 155);
  quasar::OnlineSeevaStepDecoder::finishInit(this);
}

void sub_1B55B1588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  JUMPOUT(0x1B55B15FCLL);
}

void sub_1B55B15F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26)
{
  a13 = &a20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  a13 = &a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  a13 = &a26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_1B55B260C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  quasar::RecogResult::~RecogResult(va);
  v13 = STACK[0x2E0];
  if (STACK[0x2E0])
  {
    STACK[0x2E8] = v13;
    operator delete(v13);
  }

  STACK[0x2E0] = &STACK[0x2F8];
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2E0]);
  STACK[0x2F8] = &STACK[0x320];
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2F8]);
  v14 = STACK[0x338];
  if (STACK[0x338])
  {
    STACK[0x340] = v14;
    operator delete(v14);
  }

  STACK[0x338] = &STACK[0x350];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x338]);
  v15 = STACK[0x368];
  if (STACK[0x368])
  {
    STACK[0x370] = v15;
    operator delete(v15);
  }

  kaldi::quasar::SeevaBeamSearchBase::DecodeOutputData::~DecodeOutputData(&STACK[0x380]);
  v16 = STACK[0x3E8];
  STACK[0x3E8] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  kaldi::quasar::SeevaBeamSearchBigLm::~SeevaBeamSearchBigLm(&STACK[0x420]);
  kaldi::Matrix<float>::~Matrix(v11 - 128);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::SeevaBeamSearchBigLm::SeevaBeamSearchBigLm(kaldi::quasar::SeevaBeamSearchBase *a1, const kaldi::quasar::SeevaStepInference *a2, const kaldi::quasar::SeevaStepInferenceConfig *a3, const kaldi::quasar::Vocab *a4, uint64_t a5, uint64_t a6)
{
  v8 = kaldi::quasar::SeevaBeamSearchBase::SeevaBeamSearchBase(a1, a2, a3, a4);
  *v8 = &unk_1F2D38ED0;
  *(v8 + 49) = a5;
  *(v8 + 50) = a6;
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SortedMatcher(v8 + 408, a6, 0, 1);
}

kaldi::quasar::SeevaBeamSearchBase *kaldi::quasar::SeevaBeamSearchBase::SeevaBeamSearchBase(kaldi::quasar::SeevaBeamSearchBase *this, const kaldi::quasar::SeevaStepInference *a2, const kaldi::quasar::SeevaStepInferenceConfig *a3, const kaldi::quasar::Vocab *a4)
{
  *this = &unk_1F2D0D250;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = a4;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 148) = 0u;
  *(this + 164) = 0u;
  *(this + 180) = 0u;
  *(this + 196) = 0u;
  *(this + 212) = 0u;
  *(this + 228) = 0u;
  *(this + 244) = 0u;
  *(this + 97) = 0;
  *(this + 52) = 0u;
  *(this + 260) = 0u;
  *(this + 276) = 0u;
  *(this + 292) = 0u;
  *(this + 308) = 0u;
  *(this + 324) = 0u;
  *(this + 340) = 0u;
  *(this + 356) = 0u;
  *(this + 372) = 0u;
  kaldi::quasar::Vocab::BosWord(a4, &__p);
  *(this + 8) = kaldi::quasar::Vocab::GetWordId(a4, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = *(this + 3);
  kaldi::quasar::Vocab::EosWord(v6, &__p);
  *(this + 9) = kaldi::quasar::Vocab::GetWordId(v6, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = *(this + 3);
  kaldi::quasar::Vocab::OOvWord(v7, &__p);
  *(this + 10) = kaldi::quasar::Vocab::GetWordId(v7, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(this + 11) = kaldi::quasar::Vocab::VocabSize(*(this + 3));
  *(this + 12) = *(*(this + 2) + 184) + 1;
  return this;
}

void sub_1B55B2B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::deque<kaldi::quasar::SeevaBeamSearchBase::RollbackStats>::~deque[abi:ne200100](v15 + 43);
  std::deque<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~deque[abi:ne200100](v15 + 37);
  std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~deque[abi:ne200100](v15 + 31);
  __p = v15 + 28;
  std::vector<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::deque<std::vector<int>>::~deque[abi:ne200100](v15 + 22);
  std::deque<std::vector<BOOL>>::~deque[abi:ne200100](v15 + 16);
  std::deque<std::vector<int>>::~deque[abi:ne200100](v15 + 10);
  v17 = v15[7];
  if (v17)
  {
    v15[8] = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::SeevaBeamSearchBase::~SeevaBeamSearchBase(kaldi::quasar::SeevaBeamSearchBase *this)
{
  *this = &unk_1F2D0D250;
  std::deque<kaldi::quasar::SeevaBeamSearchBase::RollbackStats>::~deque[abi:ne200100](this + 43);
  std::deque<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~deque[abi:ne200100](this + 37);
  std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~deque[abi:ne200100](this + 31);
  v3 = (this + 224);
  std::vector<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::deque<std::vector<int>>::~deque[abi:ne200100](this + 22);
  std::deque<std::vector<BOOL>>::~deque[abi:ne200100](this + 16);
  std::deque<std::vector<int>>::~deque[abi:ne200100](this + 10);
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }
}

uint64_t std::deque<kaldi::quasar::SeevaBeamSearchBase::RollbackStats>::~deque[abi:ne200100](void *a1)
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
    v6 = &v2[v5 >> 7];
    v7 = *v6;
    v8 = *v6 + 32 * (v5 & 0x7F);
    v9 = *(v2 + (((a1[5] + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v5) & 0x7F);
    if (v8 != v9)
    {
      do
      {
        v10 = *v8;
        if (*v8)
        {
          *(v8 + 8) = v10;
          operator delete(v10);
          v7 = *v6;
        }

        v8 += 32;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 64;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 128;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
}

uint64_t std::deque<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~deque[abi:ne200100](void *a1)
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
        v9 = *v7;
        *v7 = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        if (++v7 - *v6 == 4096)
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
      goto LABEL_18;
    }

    v12 = 512;
  }

  a1[4] = v12;
LABEL_18:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
}

void std::vector<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 24);
      if (v4)
      {
        *(v3 - 16) = v4;
        operator delete(v4);
      }

      v5 = *(v3 - 48);
      if (v5)
      {
        *(v3 - 40) = v5;
        operator delete(v5);
      }

      v6 = v3 - 72;
      v7 = *(v3 - 72);
      if (v7)
      {
        *(v3 - 64) = v7;
        operator delete(v7);
      }

      v3 -= 72;
    }

    while (v6 != v2);
  }

  a1[1] = v2;
}

uint64_t std::deque<std::vector<BOOL>>::~deque[abi:ne200100](void *a1)
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
    v6 = &v2[v5 / 0xAA];
    v7 = *v6;
    v8 = (*v6 + 24 * (v5 % 0xAA));
    v9 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
    if (v8 != v9)
    {
      do
      {
        if (*v8)
        {
          operator delete(*v8);
          v7 = *v6;
        }

        v8 += 3;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
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
    v12 = 85;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    v12 = 170;
  }

  a1[4] = v12;
LABEL_18:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
}

void std::vector<kaldi::quasar::SeevaBeamSearchBigLm::Cookiecrumb>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator<kaldi::quasar::SeevaBeamSearchBigLm::Cookiecrumb>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<kaldi::quasar::SeevaBeamSearchBigLm::Cookiecrumb>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
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

void kaldi::quasar::SeevaBeamSearchBigLm::~SeevaBeamSearchBigLm(kaldi::quasar::SeevaBeamSearchBigLm *this)
{
  *this = &unk_1F2D38ED0;
  v7 = (this + 680);
  std::vector<kaldi::quasar::SeevaBeamSearchBigLm::Cookiecrumb>::__destroy_vector::operator()[abi:ne200100](&v7);
  v2 = *(this + 82);
  if (v2)
  {
    *(this + 83) = v2;
    operator delete(v2);
  }

  v3 = *(this + 79);
  if (v3)
  {
    *(this + 80) = v3;
    operator delete(v3);
  }

  v4 = *(this + 75);
  if (v4)
  {
    *(this + 76) = v4;
    operator delete(v4);
  }

  v5 = *(this + 72);
  if (v5)
  {
    *(this + 73) = v5;
    operator delete(v5);
  }

  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~SortedMatcher(this + 51);
  *this = &unk_1F2D0D250;
  std::deque<kaldi::quasar::SeevaBeamSearchBase::RollbackStats>::~deque[abi:ne200100](this + 43);
  std::deque<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~deque[abi:ne200100](this + 37);
  std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~deque[abi:ne200100](this + 31);
  v7 = (this + 224);
  std::vector<kaldi::quasar::SeevaBeamSearchBase::Breadcrumb>::__destroy_vector::operator()[abi:ne200100](&v7);
  std::deque<std::vector<int>>::~deque[abi:ne200100](this + 22);
  std::deque<std::vector<BOOL>>::~deque[abi:ne200100](this + 16);
  std::deque<std::vector<int>>::~deque[abi:ne200100](this + 10);
  v6 = *(this + 7);
  if (v6)
  {
    *(this + 8) = v6;
    operator delete(v6);
  }
}

void *std::__shared_ptr_emplace<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::allocator<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D14B10;
  std::allocator<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::construct[abi:ne200100]<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::shared_ptr<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::allocator<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::construct[abi:ne200100]<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::shared_ptr<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a3[1];
  v14 = *a3;
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a4[1];
  v12 = *a4;
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __asm { FMOV            V0.2S, #1.0 }

  v11 = _D0;
  fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComposeDeterministicOnDemandFst(a2, &v14, &v12, &v11);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_1B55B34AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::allocator<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D14BC8;
  std::allocator<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::construct[abi:ne200100]<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::shared_ptr<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &>(&v4, a1 + 3, a2);
  return a1;
}

void std::allocator<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::construct[abi:ne200100]<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::shared_ptr<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &>(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a3[1];
  v4 = *a3;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CacheDeterministicOnDemandFst(a2, &v4, 0x20000uLL);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1B55B3604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::allocator<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D14BC8;
  std::allocator<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::construct[abi:ne200100]<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &>(&v4, a1 + 3, a2);
  return a1;
}

void std::allocator<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::construct[abi:ne200100]<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &>(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a3[1];
  v4 = *a3;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CacheDeterministicOnDemandFst(a2, &v4, 0x20000uLL);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1B55B3750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::Token>::__emplace_back_slow_path<std::string,int,int,int,float const&,BOOL>(uint64_t a1, uint64_t a2, int *a3, int *a4, int *a5, float *a6, std::string::value_type *a7)
{
  v7 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 5);
  v8 = v7 + 1;
  if ((v7 + 1) > 0x124924924924924)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5) > v8)
  {
    v8 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 5)) >= 0x92492492492492)
  {
    v11 = 0x124924924924924;
  }

  else
  {
    v11 = v8;
  }

  v21 = a1;
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(a1, v11);
  }

  v18 = 0;
  v19 = 224 * v7;
  std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string,int,int,int,float const&,BOOL>(a1, (224 * v7), a2, a3, a4, a5, a6, a7);
  v20 = (224 * v7 + 224);
  v12 = *(a1 + 8);
  v13 = 224 * v7 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<quasar::Token>::~__split_buffer(&v18);
  return v17;
}

void sub_1B55B38D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string,int,int,int,float const&,BOOL>(uint64_t a1, std::string *a2, uint64_t a3, int *a4, int *a5, int *a6, float *a7, std::string::value_type *a8)
{
  v21 = *a3;
  v22 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  v12 = *a7;
  v13 = *a8;
  std::string::basic_string[abi:ne200100]<0>(v19, "");
  std::string::basic_string[abi:ne200100]<0>(v17, "");
  memset(v16, 0, sizeof(v16));
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  quasar::Token::Token(a2, &v21, v9, v10, v11, v13, 0, v19, v12, v17, v16, 0, __p, 0, 0, 0);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v16;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }
}

void sub_1B55B3A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __p = &a21;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_1B55B3FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, char *a29, uint64_t a30, char a31, char *a32)
{
  std::__tree<std::string>::destroy(&a28, a29);
  std::__tree<std::string>::destroy(&a31, a32);
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(v33 - 128);
  v35 = *(v33 - 96);
  *(v33 - 96) = 0;
  if (v35)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](v33 - 96, v35);
  }

  std::unique_ptr<quasar::CustomPronData>::~unique_ptr[abi:ne200100](v32);
  _Unwind_Resume(a1);
}

void sub_1B55B4200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::AppLmData::Oov>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<quasar::AppLmData::Oov>::__emplace_back_slow_path<quasar::AppLmData::Oov>(a1, a2);
  }

  else
  {
    std::vector<quasar::AppLmData::Oov>::__construct_one_at_end[abi:ne200100]<quasar::AppLmData::Oov>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void boost::property_tree::xml_parser::read_xml_internal<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v33 = *MEMORY[0x1E69E9840];
  v7 = *v1;
  *(v1 + *(*v1 - 24) + 8) &= ~0x1000u;
  v8 = *(v1 + *(v7 - 24) + 40);
  v21 = 0;
  v22 = 0;
  __p = 0;
  std::vector<char>::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&__p, v8, 0);
  if (!*(v6 + *(*v6 - 24) + 32))
  {
    v9 = v21;
    if (v21 >= v22)
    {
      v11 = __p;
      v12 = (v21 - __p);
      v13 = v21 - __p + 1;
      if (v13 < 0)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v14 = v22 - __p;
      if (2 * (v22 - __p) > v13)
      {
        v13 = 2 * v14;
      }

      if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        operator new();
      }

      v16 = v21 - __p;
      *v12 = 0;
      v10 = v12 + 1;
      memcpy(0, v11, v16);
      __p = 0;
      v21 = v12 + 1;
      v22 = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v21 = 0;
      v10 = v9 + 1;
    }

    v21 = v10;
    v24 = 0;
    *v23 = 0u;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v32 = 0u;
    v28 = v31;
    v29 = v31;
    v30 = &v32;
    if ((v5 & 2) != 0)
    {
      if ((v5 & 4) != 0)
      {
        boost::property_tree::detail::rapidxml::xml_document<char>::parse<3072>(v23, __p);
      }

      else
      {
        boost::property_tree::detail::rapidxml::xml_document<char>::parse<0>(v23, __p);
      }
    }

    else if ((v5 & 4) != 0)
    {
      boost::property_tree::detail::rapidxml::xml_document<char>::parse<3136>(v23, __p);
    }

    else
    {
      boost::property_tree::detail::rapidxml::xml_document<char>::parse<64>(v23, __p);
    }

    v17 = 0uLL;
    v18 = 0;
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&v17, "read error");
  boost::property_tree::file_parser_error::file_parser_error(v23, &v17, v3, 0);
  v23[0] = &unk_1F2D1EB00;
  v19[0] = "/AppleInternal/Library/BuildRoots/4~B_v8ugAyYI0IKEYsMtCXGlJLPsrxIHMQK5jjw9Y/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/detail/xml_parser_read_rapidxml.hpp";
  v19[1] = "void boost::property_tree::xml_parser::read_xml_internal(std::basic_istream<typename Ptree::key_type::value_type> &, Ptree &, int, const std::string &) [Ptree = boost::property_tree::basic_ptree<std::string, std::string>]";
  v19[2] = 101;
  boost::throw_exception<boost::property_tree::xml_parser::xml_parser_error>(v23, v19);
}

void sub_1B55B45DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::runtime_error a26)
{
  boost::property_tree::file_parser_error::~file_parser_error(&a26);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_1B55B4604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16)
  {
    operator delete(a16);
  }

  JUMPOUT(0x1B55B47A8);
}

void sub_1B55B4614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const char *a16, const char *a17, uint64_t a18, unsigned __int8 *a19, unsigned __int8 *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  MEMORY[0x1B8C85350](v27, 0x1020C402FC1992ELL);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  boost::property_tree::detail::rapidxml::memory_pool<char>::clear((v28 + 96));
  if (a2 == 1)
  {
    v31 = __cxa_begin_catch(a1);
    v32 = a19;
    v33 = v31[2];
    if (a19 == v33)
    {
      v34 = 1;
    }

    else
    {
      v35 = 0;
      do
      {
        v36 = *v32++;
        if (v36 == 10)
        {
          ++v35;
        }
      }

      while (v32 != v33);
      v34 = v35 + 1;
    }

    v37 = (*(*v31 + 16))(v31);
    std::string::basic_string[abi:ne200100]<0>(&__p, v37);
    boost::property_tree::file_parser_error::file_parser_error(&a26, &__p, v26, v34);
    a26 = &unk_1F2D1EB00;
    a16 = "/AppleInternal/Library/BuildRoots/4~B_v8ugAyYI0IKEYsMtCXGlJLPsrxIHMQK5jjw9Y/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/detail/xml_parser_read_rapidxml.hpp";
    a17 = "void boost::property_tree::xml_parser::read_xml_internal(std::basic_istream<typename Ptree::key_type::value_type> &, Ptree &, int, const std::string &) [Ptree = boost::property_tree::basic_ptree<std::string, std::string>]";
    a18 = 138;
    boost::throw_exception<boost::property_tree::xml_parser::xml_parser_error>(&a26, &a16);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_1B55B4758(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::runtime_error a26)
{
  boost::property_tree::file_parser_error::~file_parser_error(&a26);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1B55B4788);
}

void sub_1B55B47A0(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1B55B47A8);
  }

  __clang_call_terminate(a1);
}

void boost::throw_exception<boost::property_tree::xml_parser::xml_parser_error>(uint64_t a1, uint64_t a2)
{
  exception = __cxa_allocate_exception(0x78uLL);
  boost::wrapexcept<boost::property_tree::xml_parser::xml_parser_error>::wrapexcept(exception, a1, a2);
}

uint64_t *boost::property_tree::detail::rapidxml::xml_document<char>::parse<3072>(uint64_t *result, unsigned __int8 *a2)
{
  v2 = result;
  v14 = a2;
  v4 = result + 6;
  for (i = result[6]; i; i = *(i + 88))
  {
    *(i + 32) = 0;
  }

  result[6] = 0;
  for (j = result[8]; j; j = *(j + 48))
  {
    *(j + 32) = 0;
  }

  result[8] = 0;
  if (*a2 == 239 && a2[1] == 187 && a2[2] == 191)
  {
    a2 += 3;
    v14 = a2;
  }

  while (1)
  {
    do
    {
      v6 = a2;
      v8 = *a2++;
      v7 = v8;
      if (v8 < 0)
      {
        v7 = 122;
      }
    }

    while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v7]);
    v14 = v6;
    v9 = *v6;
    if (v9 != 60)
    {
      break;
    }

    v14 = a2;
    result = boost::property_tree::detail::rapidxml::xml_document<char>::parse_node<3072>(v2, &v14);
    if (result)
    {
      v10 = *v4;
      if (*v4)
      {
        v10 = v2[7];
        v11 = (v10 + 88);
      }

      else
      {
        v11 = v4;
      }

      *v11 = result;
      v2[7] = result;
      result[4] = v2;
      result[10] = v10;
      result[11] = 0;
    }

    a2 = v14;
  }

  if (v9)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v13 = v14;
    *exception = &unk_1F2D1EB28;
    exception[1] = "expected <";
    exception[2] = v13;
  }

  return result;
}

uint64_t *boost::property_tree::detail::rapidxml::xml_document<char>::parse<0>(uint64_t *result, unsigned __int8 *a2)
{
  v2 = result;
  v14 = a2;
  v4 = result + 6;
  for (i = result[6]; i; i = *(i + 88))
  {
    *(i + 32) = 0;
  }

  result[6] = 0;
  for (j = result[8]; j; j = *(j + 48))
  {
    *(j + 32) = 0;
  }

  result[8] = 0;
  if (*a2 == 239 && a2[1] == 187 && a2[2] == 191)
  {
    a2 += 3;
    v14 = a2;
  }

  while (1)
  {
    do
    {
      v6 = a2;
      v8 = *a2++;
      v7 = v8;
      if (v8 < 0)
      {
        v7 = 122;
      }
    }

    while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v7]);
    v14 = v6;
    v9 = *v6;
    if (v9 != 60)
    {
      break;
    }

    v14 = a2;
    result = boost::property_tree::detail::rapidxml::xml_document<char>::parse_node<0>(v2, &v14);
    if (result)
    {
      v10 = *v4;
      if (*v4)
      {
        v10 = v2[7];
        v11 = (v10 + 88);
      }

      else
      {
        v11 = v4;
      }

      *v11 = result;
      v2[7] = result;
      result[4] = v2;
      result[10] = v10;
      result[11] = 0;
    }

    a2 = v14;
  }

  if (v9)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v13 = v14;
    *exception = &unk_1F2D1EB28;
    exception[1] = "expected <";
    exception[2] = v13;
  }

  return result;
}

uint64_t *boost::property_tree::detail::rapidxml::xml_document<char>::parse<3136>(uint64_t *result, unsigned __int8 *a2)
{
  v2 = result;
  v14 = a2;
  v4 = result + 6;
  for (i = result[6]; i; i = *(i + 88))
  {
    *(i + 32) = 0;
  }

  result[6] = 0;
  for (j = result[8]; j; j = *(j + 48))
  {
    *(j + 32) = 0;
  }

  result[8] = 0;
  if (*a2 == 239 && a2[1] == 187 && a2[2] == 191)
  {
    a2 += 3;
    v14 = a2;
  }

  while (1)
  {
    do
    {
      v6 = a2;
      v8 = *a2++;
      v7 = v8;
      if (v8 < 0)
      {
        v7 = 122;
      }
    }

    while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v7]);
    v14 = v6;
    v9 = *v6;
    if (v9 != 60)
    {
      break;
    }

    v14 = a2;
    result = boost::property_tree::detail::rapidxml::xml_document<char>::parse_node<3136>(v2, &v14);
    if (result)
    {
      v10 = *v4;
      if (*v4)
      {
        v10 = v2[7];
        v11 = (v10 + 88);
      }

      else
      {
        v11 = v4;
      }

      *v11 = result;
      v2[7] = result;
      result[4] = v2;
      result[10] = v10;
      result[11] = 0;
    }

    a2 = v14;
  }

  if (v9)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v13 = v14;
    *exception = &unk_1F2D1EB28;
    exception[1] = "expected <";
    exception[2] = v13;
  }

  return result;
}

uint64_t *boost::property_tree::detail::rapidxml::xml_document<char>::parse<64>(uint64_t *result, unsigned __int8 *a2)
{
  v2 = result;
  v14 = a2;
  v4 = result + 6;
  for (i = result[6]; i; i = *(i + 88))
  {
    *(i + 32) = 0;
  }

  result[6] = 0;
  for (j = result[8]; j; j = *(j + 48))
  {
    *(j + 32) = 0;
  }

  result[8] = 0;
  if (*a2 == 239 && a2[1] == 187 && a2[2] == 191)
  {
    a2 += 3;
    v14 = a2;
  }

  while (1)
  {
    do
    {
      v6 = a2;
      v8 = *a2++;
      v7 = v8;
      if (v8 < 0)
      {
        v7 = 122;
      }
    }

    while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v7]);
    v14 = v6;
    v9 = *v6;
    if (v9 != 60)
    {
      break;
    }

    v14 = a2;
    result = boost::property_tree::detail::rapidxml::xml_document<char>::parse_node<64>(v2, &v14);
    if (result)
    {
      v10 = *v4;
      if (*v4)
      {
        v10 = v2[7];
        v11 = (v10 + 88);
      }

      else
      {
        v11 = v4;
      }

      *v11 = result;
      v2[7] = result;
      result[4] = v2;
      result[10] = v10;
      result[11] = 0;
    }

    a2 = v14;
  }

  if (v9)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v13 = v14;
    *exception = &unk_1F2D1EB28;
    exception[1] = "expected <";
    exception[2] = v13;
  }

  return result;
}

void boost::property_tree::xml_parser::read_xml_node<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>,char>(uint64_t a1, std::string *a2, char a3)
{
  v5 = *(a1 + 40);
  if ((v5 - 2) < 2)
  {
    if (a3)
    {
      boost::property_tree::xml_parser::xmltext<std::string>();
      if (*(a1 + 8))
      {
        v12 = *(a1 + 8);
      }

      else
      {
        v12 = &boost::property_tree::detail::rapidxml::xml_base<char>::nullstr(void)::zero;
      }

      std::string::basic_string[abi:ne200100]<0>(&v15, v12);
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
      }

      else
      {
        v16 = v15;
      }

      operator new();
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = *(a1 + 8);
    }

    else
    {
      v7 = &boost::property_tree::detail::rapidxml::xml_base<char>::nullstr(void)::zero;
    }

    if (v6)
    {
      v8 = *(a1 + 24);
    }

    else
    {
      v8 = 0;
    }

    std::string::basic_string[abi:ne200100](__p, v7, v8);
    if ((v18 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v14 = v18;
    }

    else
    {
      v14 = __p[1];
    }

    std::string::append(a2, v13, v14);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (v5 == 4)
  {
    if ((a3 & 2) == 0)
    {
      boost::property_tree::xml_parser::xmlcomment<std::string>();
      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = *(a1 + 8);
      }

      else
      {
        v10 = &boost::property_tree::detail::rapidxml::xml_base<char>::nullstr(void)::zero;
      }

      if (v9)
      {
        v11 = *(a1 + 24);
      }

      else
      {
        v11 = 0;
      }

      std::string::basic_string[abi:ne200100](&v15, v10, v11);
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
      }

      else
      {
        v16 = v15;
      }

      operator new();
    }
  }

  else if (v5 == 1)
  {
    memset(&v16, 0, sizeof(v16));
    operator new();
  }
}

void sub_1B55B5420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::vector<char>::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(uint64_t a1, void *a2, void *a3)
{
  v20 = a3;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v6 = (*(*a2 + 72))(a2);
        v5 = v6 == -1;
        if (v6 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 1;
    }

    result = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v20);
    if (v5 == result)
    {
      break;
    }

    v8 = a2[3];
    if (v8 == a2[4])
    {
      v9 = (*(*a2 + 72))(a2);
    }

    else
    {
      v9 = *v8;
    }

    v11 = *(a1 + 8);
    v10 = *(a1 + 16);
    if (v11 >= v10)
    {
      v13 = *a1;
      v14 = &v11[-*a1];
      v15 = (v14 + 1);
      if ((v14 + 1) < 0)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v16 = v10 - v13;
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        operator new();
      }

      v18 = &v11[-*a1];
      *v14 = v9;
      v12 = v14 + 1;
      memcpy(0, v13, v18);
      *a1 = 0;
      *(a1 + 8) = v14 + 1;
      *(a1 + 16) = 0;
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 1;
    }

    *(a1 + 8) = v12;
    v19 = a2[3];
    if (v19 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v19 + 1;
    }
  }

  return result;
}

void sub_1B55B5804(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::wrapexcept<boost::property_tree::xml_parser::xml_parser_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 80) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 88));
  boost::property_tree::file_parser_error::~file_parser_error((a1 + 8));
  return a1;
}

uint64_t boost::wrapexcept<boost::property_tree::xml_parser::xml_parser_error>::wrapexcept(uint64_t a1, uint64_t a2, int8x16_t *a3)
{
  *a1 = &unk_1F2CFD548;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 8) = &unk_1F2CFFB78;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v6 = *(a2 + 16);
    *(a1 + 40) = *(a2 + 32);
    *(a1 + 24) = v6;
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v7 = *(a2 + 40);
    *(a1 + 64) = *(a2 + 56);
    *(a1 + 48) = v7;
  }

  v8 = *(a2 + 64);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *a1 = &unk_1F2D1EA88;
  *(a1 + 8) = &unk_1F2D1EAB8;
  *(a1 + 72) = v8;
  *(a1 + 80) = &unk_1F2D1EAE0;
  *(a1 + 112) = a3[1].i32[0];
  *(a1 + 96) = vextq_s8(*a3, *a3, 8uLL);
  return a1;
}

void sub_1B55B59C0(_Unwind_Exception *a1)
{
  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

boost::property_tree::xml_parser::xml_parser_error *boost::property_tree::xml_parser::xml_parser_error::xml_parser_error(boost::property_tree::xml_parser::xml_parser_error *this, const boost::property_tree::xml_parser::xml_parser_error *a2)
{
  v4 = std::runtime_error::runtime_error(this, a2);
  v4->__vftable = &unk_1F2CFFB78;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v4[1], *(a2 + 2), *(a2 + 3));
  }

  else
  {
    v5 = *(a2 + 1);
    v4[2].__vftable = *(a2 + 4);
    v4[1] = v5;
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 40);
    *(this + 7) = *(a2 + 7);
    *(this + 40) = v6;
  }

  *(this + 8) = *(a2 + 8);
  *this = &unk_1F2D1EB00;
  return this;
}

void sub_1B55B5AB4(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

void sub_1B55B5D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  std::runtime_error::~runtime_error(v12);
  MEMORY[0x1B8C85350](v10, v11);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::property_tree::xml_parser::xml_parser_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x78uLL);
  boost::wrapexcept<boost::property_tree::xml_parser::xml_parser_error>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::property_tree::xml_parser::xml_parser_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 80) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 88));
  boost::property_tree::file_parser_error::~file_parser_error((a1 + 8));

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<boost::property_tree::xml_parser::xml_parser_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 72) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 80));

  boost::property_tree::file_parser_error::~file_parser_error(a1);
}

{
  *(a1 + 72) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 80));
  boost::property_tree::file_parser_error::~file_parser_error(a1);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<boost::property_tree::xml_parser::xml_parser_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  boost::property_tree::file_parser_error::~file_parser_error(v1);
}

{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  boost::property_tree::file_parser_error::~file_parser_error(v1);

  JUMPOUT(0x1B8C85350);
}

void boost::property_tree::xml_parser::xml_parser_error::~xml_parser_error(std::runtime_error *this)
{
  boost::property_tree::file_parser_error::~file_parser_error(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t boost::wrapexcept<boost::property_tree::xml_parser::xml_parser_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFD548;
  boost::property_tree::xml_parser::xml_parser_error::xml_parser_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 88);
  *(a1 + 80) = &unk_1F2CFD578;
  *(a1 + 88) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v5;
  *a1 = &unk_1F2D1EA88;
  *(a1 + 8) = &unk_1F2D1EAB8;
  *(a1 + 80) = &unk_1F2D1EAE0;
  return a1;
}

void *boost::property_tree::detail::rapidxml::xml_document<char>::parse_node<3072>(uint64_t *a1, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3 != 33)
  {
    if (v3 == 63)
    {
      *a2 = v2 + 1;
      if ((v2[1] | 0x20) != 0x78 || (v2[2] | 0x20) != 0x6D || (v2[3] | 0x20) != 0x6C)
      {
        goto LABEL_22;
      }

      v4 = v2[4];
      if (v4 < 0)
      {
        LOBYTE(v4) = 122;
      }

      if (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v4])
      {
        *a2 = v2 + 5;
      }

      else
      {
LABEL_22:
      }

      return boost::property_tree::detail::rapidxml::xml_document<char>::parse_xml_declaration<3072>(a1, a2);
    }

    else
    {

      return boost::property_tree::detail::rapidxml::xml_document<char>::parse_element<3072>(a1, a2);
    }
  }

  v6 = v2[1];
  if (v6 != 91)
  {
    if (v6 != 68)
    {
      if (v6 == 45 && v2[2] == 45)
      {
        *a2 = v2 + 3;

        return boost::property_tree::detail::rapidxml::xml_document<char>::parse_comment<3072>(a1, a2);
      }

      goto LABEL_46;
    }

    if (v2[2] == 79 && v2[3] == 67 && v2[4] == 84 && v2[5] == 89 && v2[6] == 80 && v2[7] == 69)
    {
      v7 = v2[8];
      if (v7 < 0)
      {
        LOBYTE(v7) = 122;
      }

      if (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v7])
      {
        *a2 = v2 + 9;

        return boost::property_tree::detail::rapidxml::xml_document<char>::parse_doctype<3072>(a1, a2);
      }
    }

LABEL_46:
    v8 = v2 + 1;
    while (1)
    {
      *a2 = v8;
      v10 = *v8++;
      v9 = v10;
      if (v10 == 62)
      {
        break;
      }

      if (!v9)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        v13 = *a2;
        *exception = &unk_1F2D1EB28;
        exception[1] = "unexpected end of data";
        exception[2] = v13;
      }
    }

    *a2 = v8;
    return 0;
  }

  if (v2[2] != 67 || v2[3] != 68 || v2[4] != 65 || v2[5] != 84 || v2[6] != 65 || v2[7] != 91)
  {
    goto LABEL_46;
  }

  *a2 = v2 + 8;

  return boost::property_tree::detail::rapidxml::xml_document<char>::parse_cdata<3072>(a1, a2);
}

void *boost::property_tree::detail::rapidxml::xml_document<char>::parse_element<3072>(uint64_t *a1, unsigned __int8 **a2)
{
  aligned = boost::property_tree::detail::rapidxml::memory_pool<char>::allocate_aligned(a1 + 12, 0x60uLL);
  v5 = aligned;
  *(aligned + 32) = 0;
  *aligned = 0;
  *(aligned + 8) = 0;
  *(aligned + 40) = 1;
  *(aligned + 48) = 0;
  *(aligned + 64) = 0;
  v6 = *a2;
  v7 = -1;
  do
  {
    v8 = v6[v7 + 1];
    if (v8 < 0)
    {
      LOBYTE(v8) = 122;
    }

    ++v7;
  }

  while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_node_name[v8]);
  *a2 = &v6[v7];
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v18 = *a2;
    v19 = "expected element name";
    goto LABEL_21;
  }

  *aligned = v6;
  *(aligned + 16) = v7;
  v9 = (*a2 - 1);
  do
  {
    v11 = *++v9;
    v10 = v11;
    if (v11 < 0)
    {
      v10 = 122;
    }
  }

  while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v10]);
  *a2 = v9;
  boost::property_tree::detail::rapidxml::xml_document<char>::parse_node_attributes<3072>(a1, a2, aligned);
  v12 = *a2;
  v13 = **a2;
  if (v13 != 47)
  {
    if (v13 == 62)
    {
      *a2 = v12 + 1;
      boost::property_tree::detail::rapidxml::xml_document<char>::parse_node_contents<3072>(a1, a2, v5);
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  *a2 = v12 + 1;
  if (v12[1] != 62)
  {
LABEL_20:
    exception = __cxa_allocate_exception(0x18uLL);
    v18 = *a2;
    v19 = "expected >";
LABEL_21:
    *exception = &unk_1F2D1EB28;
    exception[1] = v19;
    exception[2] = v18;
  }

  *a2 = v12 + 2;
LABEL_15:
  v14 = *v5;
  if (*v5)
  {
    v15 = v5[2];
  }

  else
  {
    v15 = 0;
    v14 = &boost::property_tree::detail::rapidxml::xml_base<char>::nullstr(void)::zero;
  }

  v14[v15] = 0;
  return v5;
}

uint64_t boost::property_tree::detail::rapidxml::xml_document<char>::parse_xml_declaration<3072>(uint64_t a1, _BYTE **a2)
{
  for (i = *a2; *i++ != 63; *a2 = i)
  {
    if (!*(i - 1))
    {
      exception = __cxa_allocate_exception(0x18uLL);
      v6 = *a2;
      *exception = &unk_1F2D1EB28;
      exception[1] = "unexpected end of data";
      exception[2] = v6;
    }

LABEL_6:
    ;
  }

  if (*i != 62)
  {
    goto LABEL_6;
  }

  *a2 = i + 1;
  return 0;
}

uint64_t boost::property_tree::detail::rapidxml::xml_document<char>::parse_comment<3072>(uint64_t a1, _BYTE **a2)
{
  for (i = *a2; ; *a2 = i)
  {
    if (*i++ != 45)
    {
      if (!*(i - 1))
      {
        exception = __cxa_allocate_exception(0x18uLL);
        v6 = *a2;
        *exception = &unk_1F2D1EB28;
        exception[1] = "unexpected end of data";
        exception[2] = v6;
      }

      continue;
    }

    if (*i == 45 && i[1] == 62)
    {
      break;
    }
  }

  *a2 = i + 2;
  return 0;
}

uint64_t boost::property_tree::detail::rapidxml::xml_document<char>::parse_cdata<3072>(uint64_t a1, void *a2)
{
  v3 = *a2;
  for (i = (*a2 + 1); ; ++i)
  {
    if (*(i - 1) != 93)
    {
      if (!*(i - 1))
      {
        exception = __cxa_allocate_exception(0x18uLL);
        v8 = *a2;
        *exception = &unk_1F2D1EB28;
        exception[1] = "unexpected end of data";
        exception[2] = v8;
      }

      goto LABEL_7;
    }

    if (*i == 93 && i[1] == 62)
    {
      break;
    }

LABEL_7:
    *a2 = i;
  }

  result = boost::property_tree::detail::rapidxml::memory_pool<char>::allocate_aligned((a1 + 96), 0x60uLL);
  *(result + 32) = 0;
  *result = 0;
  *(result + 8) = 0;
  *(result + 40) = 3;
  *(result + 48) = 0;
  *(result + 64) = 0;
  v6 = *a2 - v3;
  *(result + 8) = v3;
  *(result + 24) = v6;
  **a2 = 0;
  *a2 += 3;
  return result;
}

uint64_t boost::property_tree::detail::rapidxml::xml_document<char>::parse_doctype<3072>(uint64_t a1, _BYTE **a2)
{
  for (i = *a2; ; *a2 = i)
  {
    while (1)
    {
      v4 = *i;
      if (v4 != 91)
      {
        break;
      }

      *a2 = ++i;
      v5 = 1;
      do
      {
        v6 = *i;
        if (v6 == 91)
        {
          ++v5;
        }

        else if (v6 == 93)
        {
          --v5;
        }

        else if (!*i)
        {
          goto LABEL_16;
        }

        *a2 = ++i;
      }

      while (v5 > 0);
    }

    if (v4 == 62)
    {
      break;
    }

    if (!*i)
    {
LABEL_16:
      exception = __cxa_allocate_exception(0x18uLL);
      v9 = *a2;
      *exception = &unk_1F2D1EB28;
      exception[1] = "unexpected end of data";
      exception[2] = v9;
    }

    ++i;
  }

  *a2 = i + 1;
  return 0;
}

uint64_t *boost::property_tree::detail::rapidxml::xml_document<char>::parse_node_attributes<3072>(uint64_t *result, unsigned __int8 **a2, uint64_t a3)
{
  v37 = result;
  v3 = *a2;
  v4 = **a2;
  if (v4 < 0)
  {
    LOBYTE(v4) = 122;
  }

  if (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_attribute_name[v4])
  {
    v5 = a3;
    v7 = (a3 + 64);
    v8 = &boost::property_tree::detail::rapidxml::xml_base<char>::nullstr(void)::zero;
    while (1)
    {
      *a2 = (v3 + 1);
      v9 = v3;
      do
      {
        v11 = *++v9;
        v10 = v11;
        if (v11 < 0)
        {
          v10 = 122;
        }
      }

      while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_attribute_name[v10]);
      *a2 = v9;
      aligned = boost::property_tree::detail::rapidxml::memory_pool<char>::allocate_aligned(v37 + 12, 0x38uLL);
      v13 = aligned;
      aligned[4] = 0;
      *aligned = 0;
      aligned[1] = 0;
      v14 = *a2 - v3;
      *aligned = v3;
      aligned[2] = v14;
      v15 = *v7;
      if (*v7)
      {
        v15 = *(v5 + 72);
        v16 = (v15 + 48);
      }

      else
      {
        v16 = v7;
      }

      *v16 = aligned;
      *(v5 + 72) = aligned;
      aligned[4] = v5;
      aligned[5] = v15;
      aligned[6] = 0;
      v17 = *a2;
      do
      {
        v19 = *v17++;
        v18 = v19;
        if (v19 < 0)
        {
          v18 = 122;
        }
      }

      while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v18]);
      *a2 = v17 - 1;
      if (*(v17 - 1) != 61)
      {
        break;
      }

      v20 = v7;
      *a2 = v17;
      v21 = *aligned;
      v22 = v8;
      if (!*aligned)
      {
        v21 = v8;
        v14 = 0;
      }

      v21[v14] = 0;
      v23 = *a2;
      v24 = *a2;
      do
      {
        v26 = *v24++;
        v25 = v26;
        if (v26 < 0)
        {
          v25 = 122;
        }

        ++v23;
      }

      while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v25]);
      *a2 = v24 - 1;
      v27 = *(v24 - 1);
      if (v27 != 34 && v27 != 39 || ((*a2 = v24, v27 != 39) ? (result = boost::property_tree::detail::rapidxml::xml_document<char>::skip_and_expand_character_refs<boost::property_tree::detail::rapidxml::xml_document<char>::attribute_value_pred<(char)34>,boost::property_tree::detail::rapidxml::xml_document<char>::attribute_value_pure_pred<(char)34>,1024>(a2)) : (result = boost::property_tree::detail::rapidxml::xml_document<char>::skip_and_expand_character_refs<boost::property_tree::detail::rapidxml::xml_document<char>::attribute_value_pred<(char)39>,boost::property_tree::detail::rapidxml::xml_document<char>::attribute_value_pure_pred<(char)39>,1024>(a2)), v28 = (result - v23), v13[1] = v24, v13[3] = result - v23, **a2 != v27))
      {
        exception = __cxa_allocate_exception(0x18uLL);
        v34 = *a2;
        v35 = "expected ' or ";
        goto LABEL_41;
      }

      ++*a2;
      v29 = v13[1];
      v8 = v22;
      if (!v29)
      {
        v29 = v22;
        v28 = 0;
      }

      v28[v29] = 0;
      v3 = (*a2 - 1);
      v7 = v20;
      v5 = a3;
      do
      {
        v31 = *++v3;
        v30 = v31;
        if (v31 < 0)
        {
          v30 = 122;
        }
      }

      while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v30]);
      *a2 = v3;
      v32 = *v3;
      if (v32 < 0)
      {
        LOBYTE(v32) = 122;
      }

      if (!boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_attribute_name[v32])
      {
        return result;
      }
    }

    exception = __cxa_allocate_exception(0x18uLL);
    v34 = *a2;
    v35 = "expected =";
LABEL_41:
    *exception = &unk_1F2D1EB28;
    exception[1] = v35;
    exception[2] = v34;
  }

  return result;
}

uint64_t boost::property_tree::detail::rapidxml::xml_document<char>::parse_node_contents<3072>(uint64_t a1, char **a2, void *a3)
{
  v6 = a3 + 6;
  do
  {
    v7 = *a2 - 1;
    do
    {
      v9 = *++v7;
      v8 = v9;
      if (v9 < 0)
      {
        v8 = 122;
      }
    }

    while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v8]);
    *a2 = v7;
    for (result = *v7; result != 60; result = boost::property_tree::detail::rapidxml::xml_document<char>::parse_and_append_data<3072>(a1, a3, a2))
    {
      if (!result)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        v21 = *a2;
        v22 = "unexpected end of data";
        goto LABEL_29;
      }
    }

    v11 = *a2;
    v12 = (*a2)[1];
    if (v12 == 47)
    {
      *a2 = v11 + 2;
      v13 = v11 + 1;
      do
      {
        v15 = *++v13;
        v14 = v15;
        if (v15 < 0)
        {
          v14 = 122;
        }
      }

      while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_node_name[v14]);
      *a2 = v13;
      do
      {
        v17 = *v13++;
        v16 = v17;
        if (v17 < 0)
        {
          v16 = 122;
        }
      }

      while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v16]);
      *a2 = v13 - 1;
      if (*(v13 - 1) != 62)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        v21 = *a2;
        v22 = "expected >";
LABEL_29:
        *exception = &unk_1F2D1EB28;
        exception[1] = v22;
        exception[2] = v21;
      }

      *a2 = v13;
    }

    else
    {
      ++*a2;
      result = boost::property_tree::detail::rapidxml::xml_document<char>::parse_node<3072>(a1, a2);
      if (result)
      {
        v18 = *v6;
        if (*v6)
        {
          v18 = a3[7];
          v19 = (v18 + 88);
        }

        else
        {
          v19 = v6;
        }

        *v19 = result;
        a3[7] = result;
        *(result + 32) = a3;
        *(result + 80) = v18;
        *(result + 88) = 0;
      }
    }
  }

  while (v12 != 47);
  return result;
}

uint64_t boost::property_tree::detail::rapidxml::memory_pool<char>::allocate_aligned(uint64_t *a1, unint64_t a2)
{
  v4 = a1[2];
  result = a1[1] + (-*(a1 + 8) & 7);
  if (result + a2 > v4)
  {
    if (a2 <= 0x10000)
    {
      v6 = 65558;
    }

    else
    {
      v6 = a2 + 22;
    }

    v7 = a1[8195];
    if (!v7)
    {
      operator new[]();
    }

    v8 = v7(v6);
    v9 = (v8 + (-v8 & 7));
    *v9 = *a1;
    *a1 = v8;
    a1[2] = v8 + v6;
    result = v9 + (-(v9 + 8) & 7) + 8;
  }

  a1[1] = result + a2;
  return result;
}

_BYTE *boost::property_tree::detail::rapidxml::xml_document<char>::skip_and_expand_character_refs<boost::property_tree::detail::rapidxml::xml_document<char>::attribute_value_pred<(char)39>,boost::property_tree::detail::rapidxml::xml_document<char>::attribute_value_pure_pred<(char)39>,1024>(void *a1)
{
  v2 = (*a1 - 1);
  do
  {
    v4 = *++v2;
    v3 = v4;
    if (v4 < 0)
    {
      v3 = 122;
    }
  }

  while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_attribute_data_1_pure[v3]);
  *a1 = v2;
  v19 = v2;
  while (1)
  {
    v5 = *v2;
    if (v5 != 38)
    {
      break;
    }

    v7 = v2[1];
    if (v7 <= 0x66)
    {
      if (v7 == 35)
      {
        v9 = v2 + 2;
        if (v2[2] == 120)
        {
          v10 = 0;
          do
          {
            v11 = v10;
            v12 = *++v9;
            v13 = boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_digits[v12];
            v10 = v13 + 16 * v10;
          }

          while (v13 != 255);
        }

        else
        {
          v14 = 0;
          v9 = v2 + 1;
          do
          {
            v11 = v14;
            v15 = *++v9;
            v16 = boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_digits[v15];
            v14 = v16 + 10 * v14;
          }

          while (v16 != 255);
        }

        boost::property_tree::detail::rapidxml::xml_document<char>::insert_coded_character<1024>(&v19, v11);
        if (*v9 != 59)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = &unk_1F2D1EB28;
          exception[1] = "expected ;";
          exception[2] = v9;
        }

        v2 = v9 + 1;
      }

      else
      {
        if (v7 != 97)
        {
          goto LABEL_9;
        }

        v8 = v2[2];
        if (v8 == 112)
        {
          if (v2[3] != 111 || v2[4] != 115 || v2[5] != 59)
          {
            goto LABEL_9;
          }

          *v19 = 39;
LABEL_45:
          ++v19;
          v2 += 6;
        }

        else
        {
          if (v8 != 109 || v2[3] != 112 || v2[4] != 59)
          {
            goto LABEL_9;
          }

          *v19++ = 38;
          v2 += 5;
        }
      }
    }

    else if (v7 == 103)
    {
      if (v2[2] != 116 || v2[3] != 59)
      {
        goto LABEL_9;
      }

      *v19 = 62;
LABEL_32:
      ++v19;
      v2 += 4;
    }

    else
    {
      if (v7 == 108)
      {
        if (v2[2] != 116 || v2[3] != 59)
        {
          goto LABEL_9;
        }

        *v19 = 60;
        goto LABEL_32;
      }

      if (v7 == 113 && v2[2] == 117 && v2[3] == 111 && v2[4] == 116 && v2[5] == 59)
      {
        *v19 = 34;
        goto LABEL_45;
      }

LABEL_9:
      ++v2;
      v6 = v19++;
      *v6 = v5;
    }
  }

  if (*v2 && v5 != 39)
  {
    goto LABEL_9;
  }

  *a1 = v2;
  return v19;
}

_BYTE *boost::property_tree::detail::rapidxml::xml_document<char>::skip_and_expand_character_refs<boost::property_tree::detail::rapidxml::xml_document<char>::attribute_value_pred<(char)34>,boost::property_tree::detail::rapidxml::xml_document<char>::attribute_value_pure_pred<(char)34>,1024>(void *a1)
{
  v2 = (*a1 - 1);
  do
  {
    v4 = *++v2;
    v3 = v4;
    if (v4 < 0)
    {
      v3 = 122;
    }
  }

  while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_attribute_data_2_pure[v3]);
  *a1 = v2;
  v19 = v2;
  while (1)
  {
    v5 = *v2;
    if (v5 != 38)
    {
      break;
    }

    v7 = v2[1];
    if (v7 <= 0x66)
    {
      if (v7 == 35)
      {
        v9 = v2 + 2;
        if (v2[2] == 120)
        {
          v10 = 0;
          do
          {
            v11 = v10;
            v12 = *++v9;
            v13 = boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_digits[v12];
            v10 = v13 + 16 * v10;
          }

          while (v13 != 255);
        }

        else
        {
          v14 = 0;
          v9 = v2 + 1;
          do
          {
            v11 = v14;
            v15 = *++v9;
            v16 = boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_digits[v15];
            v14 = v16 + 10 * v14;
          }

          while (v16 != 255);
        }

        boost::property_tree::detail::rapidxml::xml_document<char>::insert_coded_character<1024>(&v19, v11);
        if (*v9 != 59)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = &unk_1F2D1EB28;
          exception[1] = "expected ;";
          exception[2] = v9;
        }

        v2 = v9 + 1;
      }

      else
      {
        if (v7 != 97)
        {
          goto LABEL_9;
        }

        v8 = v2[2];
        if (v8 == 112)
        {
          if (v2[3] != 111 || v2[4] != 115 || v2[5] != 59)
          {
            goto LABEL_9;
          }

          *v19 = 39;
LABEL_45:
          ++v19;
          v2 += 6;
        }

        else
        {
          if (v8 != 109 || v2[3] != 112 || v2[4] != 59)
          {
            goto LABEL_9;
          }

          *v19++ = 38;
          v2 += 5;
        }
      }
    }

    else if (v7 == 103)
    {
      if (v2[2] != 116 || v2[3] != 59)
      {
        goto LABEL_9;
      }

      *v19 = 62;
LABEL_32:
      ++v19;
      v2 += 4;
    }

    else
    {
      if (v7 == 108)
      {
        if (v2[2] != 116 || v2[3] != 59)
        {
          goto LABEL_9;
        }

        *v19 = 60;
        goto LABEL_32;
      }

      if (v7 == 113 && v2[2] == 117 && v2[3] == 111 && v2[4] == 116 && v2[5] == 59)
      {
        *v19 = 34;
        goto LABEL_45;
      }

LABEL_9:
      ++v2;
      v6 = v19++;
      *v6 = v5;
    }
  }

  if (*v2 && v5 != 34)
  {
    goto LABEL_9;
  }

  *a1 = v2;
  return v19;
}

uint64_t *boost::property_tree::detail::rapidxml::xml_document<char>::insert_coded_character<1024>(uint64_t *result, unint64_t a2)
{
  if (a2 > 0x7F)
  {
    if (a2 > 0x7FF)
    {
      if (a2 >> 16)
      {
        if (a2 >> 16 > 0x10)
        {
          v3 = result;
          exception = __cxa_allocate_exception(0x18uLL);
          v5 = *v3;
          *exception = &unk_1F2D1EB28;
          exception[1] = "invalid numeric character entity";
          exception[2] = v5;
        }

        *(*result + 3) = a2 & 0x3F | 0x80;
        *(*result + 2) = (a2 >> 6) & 0x3F | 0x80;
        *(*result + 1) = (a2 >> 12) & 0x3F | 0x80;
        LODWORD(a2) = (a2 >> 18) | 0xFFFFFFF0;
        v2 = 4;
      }

      else
      {
        *(*result + 2) = a2 & 0x3F | 0x80;
        *(*result + 1) = (a2 >> 6) & 0x3F | 0x80;
        LODWORD(a2) = (a2 >> 12) | 0xFFFFFFE0;
        v2 = 3;
      }
    }

    else
    {
      *(*result + 1) = a2 & 0x3F | 0x80;
      LODWORD(a2) = (a2 >> 6) | 0xFFFFFFC0;
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  **result = a2;
  *result += v2;
  return result;
}

uint64_t boost::property_tree::detail::rapidxml::xml_document<char>::parse_and_append_data<3072>(uint64_t a1, void *a2, char **a3)
{
  v6 = *a3;
  v7 = boost::property_tree::detail::rapidxml::xml_document<char>::skip_and_expand_character_refs<boost::property_tree::detail::rapidxml::xml_document<char>::text_pred,boost::property_tree::detail::rapidxml::xml_document<char>::text_pure_with_ws_pred,3072>(a3);
  if (*(v7 - 1) == 32)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = v7;
  }

  aligned = boost::property_tree::detail::rapidxml::memory_pool<char>::allocate_aligned((a1 + 96), 0x60uLL);
  *(aligned + 40) = 2;
  *(aligned + 48) = 0;
  *(aligned + 64) = 0;
  *aligned = 0;
  *(aligned + 8) = v6;
  *(aligned + 24) = &v8[-v6];
  v10 = a2 + 6;
  v11 = a2[6];
  if (v11)
  {
    v11 = a2[7];
    v10 = (v11 + 88);
  }

  *v10 = aligned;
  a2[7] = aligned;
  *(aligned + 32) = a2;
  *(aligned + 80) = v11;
  *(aligned + 88) = 0;
  v12 = a2[1];
  if (!v12)
  {
    v12 = &boost::property_tree::detail::rapidxml::xml_base<char>::nullstr(void)::zero;
  }

  if (!*v12)
  {
    a2[1] = v6;
    a2[3] = &v8[-v6];
  }

  result = **a3;
  *v8 = 0;
  return result;
}

char *boost::property_tree::detail::rapidxml::xml_document<char>::skip_and_expand_character_refs<boost::property_tree::detail::rapidxml::xml_document<char>::text_pred,boost::property_tree::detail::rapidxml::xml_document<char>::text_pure_with_ws_pred,3072>(void *a1)
{
  v2 = (*a1 - 1);
  do
  {
    v4 = *++v2;
    v3 = v4;
    if (v4 < 0)
    {
      v3 = 122;
    }
  }

  while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_text_pure_with_ws[v3]);
  *a1 = v2;
  v24 = v2;
  while (1)
  {
    v5 = *v2;
    v6 = v5 >= 0 ? *v2 : 122;
    if (v5 != 38)
    {
      break;
    }

    v9 = v2[1];
    if (v9 <= 0x66)
    {
      if (v9 == 35)
      {
        v14 = v2 + 2;
        if (v2[2] == 120)
        {
          v15 = 0;
          do
          {
            v16 = v15;
            v17 = *++v14;
            v18 = boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_digits[v17];
            v15 = v18 + 16 * v15;
          }

          while (v18 != 255);
        }

        else
        {
          v19 = 0;
          v14 = v2 + 1;
          do
          {
            v16 = v19;
            v20 = *++v14;
            v21 = boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_digits[v20];
            v19 = v21 + 10 * v19;
          }

          while (v21 != 255);
        }

        boost::property_tree::detail::rapidxml::xml_document<char>::insert_coded_character<1024>(&v24, v16);
        if (*v14 != 59)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = &unk_1F2D1EB28;
          exception[1] = "expected ;";
          exception[2] = v14;
        }

        v2 = v14 + 1;
      }

      else if (v9 == 97)
      {
        v13 = v2[2];
        if (v13 == 112)
        {
          if (v2[3] != 111 || v2[4] != 115 || v2[5] != 59)
          {
            goto LABEL_12;
          }

          v10 = v24;
          v11 = 39;
          goto LABEL_54;
        }

        if (v13 != 109 || v2[3] != 112 || v2[4] != 59)
        {
          goto LABEL_12;
        }

        *v24++ = 38;
        v2 += 5;
      }

      else
      {
LABEL_12:
        if (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v6])
        {
          *v24++ = 32;
          do
          {
            v8 = *++v2;
            v7 = v8;
            if (v8 < 0)
            {
              v7 = 122;
            }
          }

          while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v7]);
        }

        else
        {
          ++v2;
          v12 = v24++;
          *v12 = v5;
        }
      }
    }

    else
    {
      if (v9 == 103)
      {
        if (v2[2] != 116 || v2[3] != 59)
        {
          goto LABEL_12;
        }

        *v24 = 62;
        goto LABEL_41;
      }

      if (v9 == 108)
      {
        if (v2[2] != 116 || v2[3] != 59)
        {
          goto LABEL_12;
        }

        *v24 = 60;
LABEL_41:
        ++v24;
        v2 += 4;
      }

      else
      {
        if (v9 != 113 || v2[2] != 117 || v2[3] != 111 || v2[4] != 116 || v2[5] != 59)
        {
          goto LABEL_12;
        }

        v10 = v24;
        v11 = 34;
LABEL_54:
        *v10 = v11;
        ++v24;
        v2 += 6;
      }
    }
  }

  if (*v2 && *v2 != 60)
  {
    goto LABEL_12;
  }

  *a1 = v2;
  return v24;
}

void boost::property_tree::detail::rapidxml::parse_error::~parse_error(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1B8C85350);
}

void *boost::property_tree::detail::rapidxml::xml_document<char>::parse_node<0>(uint64_t *a1, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3 != 33)
  {
    if (v3 == 63)
    {
      *a2 = v2 + 1;
      if ((v2[1] | 0x20) != 0x78 || (v2[2] | 0x20) != 0x6D || (v2[3] | 0x20) != 0x6C)
      {
        goto LABEL_22;
      }

      v4 = v2[4];
      if (v4 < 0)
      {
        LOBYTE(v4) = 122;
      }

      if (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v4])
      {
        *a2 = v2 + 5;
      }

      else
      {
LABEL_22:
      }

      return boost::property_tree::detail::rapidxml::xml_document<char>::parse_xml_declaration<3072>(a1, a2);
    }

    else
    {

      return boost::property_tree::detail::rapidxml::xml_document<char>::parse_element<0>(a1, a2);
    }
  }

  v6 = v2[1];
  if (v6 != 91)
  {
    if (v6 != 68)
    {
      if (v6 == 45 && v2[2] == 45)
      {
        *a2 = v2 + 3;

        return boost::property_tree::detail::rapidxml::xml_document<char>::parse_comment<3072>(a1, a2);
      }

      goto LABEL_46;
    }

    if (v2[2] == 79 && v2[3] == 67 && v2[4] == 84 && v2[5] == 89 && v2[6] == 80 && v2[7] == 69)
    {
      v7 = v2[8];
      if (v7 < 0)
      {
        LOBYTE(v7) = 122;
      }

      if (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v7])
      {
        *a2 = v2 + 9;

        return boost::property_tree::detail::rapidxml::xml_document<char>::parse_doctype<3072>(a1, a2);
      }
    }

LABEL_46:
    v8 = v2 + 1;
    while (1)
    {
      *a2 = v8;
      v10 = *v8++;
      v9 = v10;
      if (v10 == 62)
      {
        break;
      }

      if (!v9)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        v13 = *a2;
        *exception = &unk_1F2D1EB28;
        exception[1] = "unexpected end of data";
        exception[2] = v13;
      }
    }

    *a2 = v8;
    return 0;
  }

  if (v2[2] != 67 || v2[3] != 68 || v2[4] != 65 || v2[5] != 84 || v2[6] != 65 || v2[7] != 91)
  {
    goto LABEL_46;
  }

  *a2 = v2 + 8;

  return boost::property_tree::detail::rapidxml::xml_document<char>::parse_cdata<3072>(a1, a2);
}

void *boost::property_tree::detail::rapidxml::xml_document<char>::parse_element<0>(uint64_t *a1, unsigned __int8 **a2)
{
  aligned = boost::property_tree::detail::rapidxml::memory_pool<char>::allocate_aligned(a1 + 12, 0x60uLL);
  v5 = aligned;
  *(aligned + 32) = 0;
  *aligned = 0;
  *(aligned + 8) = 0;
  *(aligned + 40) = 1;
  *(aligned + 48) = 0;
  *(aligned + 64) = 0;
  v6 = *a2;
  v7 = -1;
  do
  {
    v8 = v6[v7 + 1];
    if (v8 < 0)
    {
      LOBYTE(v8) = 122;
    }

    ++v7;
  }

  while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_node_name[v8]);
  *a2 = &v6[v7];
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v18 = *a2;
    v19 = "expected element name";
    goto LABEL_21;
  }

  *aligned = v6;
  *(aligned + 16) = v7;
  v9 = (*a2 - 1);
  do
  {
    v11 = *++v9;
    v10 = v11;
    if (v11 < 0)
    {
      v10 = 122;
    }
  }

  while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v10]);
  *a2 = v9;
  boost::property_tree::detail::rapidxml::xml_document<char>::parse_node_attributes<3072>(a1, a2, aligned);
  v12 = *a2;
  v13 = **a2;
  if (v13 != 47)
  {
    if (v13 == 62)
    {
      *a2 = v12 + 1;
      boost::property_tree::detail::rapidxml::xml_document<char>::parse_node_contents<0>(a1, a2, v5);
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  *a2 = v12 + 1;
  if (v12[1] != 62)
  {
LABEL_20:
    exception = __cxa_allocate_exception(0x18uLL);
    v18 = *a2;
    v19 = "expected >";
LABEL_21:
    *exception = &unk_1F2D1EB28;
    exception[1] = v19;
    exception[2] = v18;
  }

  *a2 = v12 + 2;
LABEL_15:
  v14 = *v5;
  if (*v5)
  {
    v15 = v5[2];
  }

  else
  {
    v15 = 0;
    v14 = &boost::property_tree::detail::rapidxml::xml_base<char>::nullstr(void)::zero;
  }

  v14[v15] = 0;
  return v5;
}

uint64_t boost::property_tree::detail::rapidxml::xml_document<char>::parse_node_contents<0>(uint64_t a1, char **a2, void *a3)
{
  v6 = a3 + 6;
  do
  {
    v7 = *a2;
    for (result = **a2; result != 60; result = boost::property_tree::detail::rapidxml::xml_document<char>::parse_and_append_data<0>(a1, a3, a2, v7))
    {
      if (!result)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        v19 = *a2;
        v20 = "unexpected end of data";
        goto LABEL_25;
      }
    }

    v9 = *a2;
    v10 = (*a2)[1];
    if (v10 == 47)
    {
      *a2 = v9 + 2;
      v11 = v9 + 1;
      do
      {
        v13 = *++v11;
        v12 = v13;
        if (v13 < 0)
        {
          v12 = 122;
        }
      }

      while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_node_name[v12]);
      *a2 = v11;
      do
      {
        v15 = *v11++;
        v14 = v15;
        if (v15 < 0)
        {
          v14 = 122;
        }
      }

      while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v14]);
      *a2 = v11 - 1;
      if (*(v11 - 1) != 62)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        v19 = *a2;
        v20 = "expected >";
LABEL_25:
        *exception = &unk_1F2D1EB28;
        exception[1] = v20;
        exception[2] = v19;
      }

      *a2 = v11;
    }

    else
    {
      ++*a2;
      result = boost::property_tree::detail::rapidxml::xml_document<char>::parse_node<0>(a1, a2);
      if (result)
      {
        v16 = *v6;
        if (*v6)
        {
          v16 = a3[7];
          v17 = (v16 + 88);
        }

        else
        {
          v17 = v6;
        }

        *v17 = result;
        a3[7] = result;
        *(result + 32) = a3;
        *(result + 80) = v16;
        *(result + 88) = 0;
      }
    }
  }

  while (v10 != 47);
  return result;
}

uint64_t boost::property_tree::detail::rapidxml::xml_document<char>::parse_and_append_data<0>(uint64_t a1, void *a2, char **a3, char *a4)
{
  *a3 = a4;
  v8 = boost::property_tree::detail::rapidxml::xml_document<char>::skip_and_expand_character_refs<boost::property_tree::detail::rapidxml::xml_document<char>::text_pred,boost::property_tree::detail::rapidxml::xml_document<char>::text_pure_no_ws_pred,0>(a3);
  aligned = boost::property_tree::detail::rapidxml::memory_pool<char>::allocate_aligned((a1 + 96), 0x60uLL);
  *(aligned + 40) = 2;
  *(aligned + 48) = 0;
  *(aligned + 64) = 0;
  *aligned = 0;
  *(aligned + 8) = a4;
  *(aligned + 24) = v8 - a4;
  v10 = a2 + 6;
  v11 = a2[6];
  if (v11)
  {
    v11 = a2[7];
    v10 = (v11 + 88);
  }

  *v10 = aligned;
  a2[7] = aligned;
  *(aligned + 32) = a2;
  *(aligned + 80) = v11;
  *(aligned + 88) = 0;
  v12 = a2[1];
  if (!v12)
  {
    v12 = &boost::property_tree::detail::rapidxml::xml_base<char>::nullstr(void)::zero;
  }

  if (!*v12)
  {
    a2[1] = a4;
    a2[3] = v8 - a4;
  }

  result = **a3;
  *v8 = 0;
  return result;
}

_BYTE *boost::property_tree::detail::rapidxml::xml_document<char>::skip_and_expand_character_refs<boost::property_tree::detail::rapidxml::xml_document<char>::text_pred,boost::property_tree::detail::rapidxml::xml_document<char>::text_pure_no_ws_pred,0>(void *a1)
{
  v2 = (*a1 - 1);
  do
  {
    v4 = *++v2;
    v3 = v4;
    if (v4 < 0)
    {
      v3 = 122;
    }
  }

  while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_text_pure_no_ws[v3]);
  *a1 = v2;
  v19 = v2;
  while (1)
  {
    v5 = *v2;
    if (v5 != 38)
    {
      break;
    }

    v7 = v2[1];
    if (v7 <= 0x66)
    {
      if (v7 == 35)
      {
        v9 = v2 + 2;
        if (v2[2] == 120)
        {
          v10 = 0;
          do
          {
            v11 = v10;
            v12 = *++v9;
            v13 = boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_digits[v12];
            v10 = v13 + 16 * v10;
          }

          while (v13 != 255);
        }

        else
        {
          v14 = 0;
          v9 = v2 + 1;
          do
          {
            v11 = v14;
            v15 = *++v9;
            v16 = boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_digits[v15];
            v14 = v16 + 10 * v14;
          }

          while (v16 != 255);
        }

        boost::property_tree::detail::rapidxml::xml_document<char>::insert_coded_character<1024>(&v19, v11);
        if (*v9 != 59)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = &unk_1F2D1EB28;
          exception[1] = "expected ;";
          exception[2] = v9;
        }

        v2 = v9 + 1;
      }

      else
      {
        if (v7 != 97)
        {
          goto LABEL_9;
        }

        v8 = v2[2];
        if (v8 == 112)
        {
          if (v2[3] != 111 || v2[4] != 115 || v2[5] != 59)
          {
            goto LABEL_9;
          }

          *v19 = 39;
LABEL_45:
          ++v19;
          v2 += 6;
        }

        else
        {
          if (v8 != 109 || v2[3] != 112 || v2[4] != 59)
          {
            goto LABEL_9;
          }

          *v19++ = 38;
          v2 += 5;
        }
      }
    }

    else if (v7 == 103)
    {
      if (v2[2] != 116 || v2[3] != 59)
      {
        goto LABEL_9;
      }

      *v19 = 62;
LABEL_32:
      ++v19;
      v2 += 4;
    }

    else
    {
      if (v7 == 108)
      {
        if (v2[2] != 116 || v2[3] != 59)
        {
          goto LABEL_9;
        }

        *v19 = 60;
        goto LABEL_32;
      }

      if (v7 == 113 && v2[2] == 117 && v2[3] == 111 && v2[4] == 116 && v2[5] == 59)
      {
        *v19 = 34;
        goto LABEL_45;
      }

LABEL_9:
      ++v2;
      v6 = v19++;
      *v6 = v5;
    }
  }

  if (*v2 && v5 != 60)
  {
    goto LABEL_9;
  }

  *a1 = v2;
  return v19;
}

void *boost::property_tree::detail::rapidxml::xml_document<char>::parse_node<3136>(uint64_t *a1, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3 != 33)
  {
    if (v3 == 63)
    {
      *a2 = v2 + 1;
      if ((v2[1] | 0x20) != 0x78 || (v2[2] | 0x20) != 0x6D || (v2[3] | 0x20) != 0x6C)
      {
        goto LABEL_22;
      }

      v4 = v2[4];
      if (v4 < 0)
      {
        LOBYTE(v4) = 122;
      }

      if (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v4])
      {
        *a2 = v2 + 5;
      }

      else
      {
LABEL_22:
      }

      return boost::property_tree::detail::rapidxml::xml_document<char>::parse_xml_declaration<3072>(a1, a2);
    }

    else
    {

      return boost::property_tree::detail::rapidxml::xml_document<char>::parse_element<3136>(a1, a2);
    }
  }

  v6 = v2[1];
  if (v6 != 91)
  {
    if (v6 != 68)
    {
      if (v6 == 45 && v2[2] == 45)
      {
        *a2 = v2 + 3;

        return boost::property_tree::detail::rapidxml::xml_document<char>::parse_comment<3136>(a1, a2);
      }

      goto LABEL_46;
    }

    if (v2[2] == 79 && v2[3] == 67 && v2[4] == 84 && v2[5] == 89 && v2[6] == 80 && v2[7] == 69)
    {
      v7 = v2[8];
      if (v7 < 0)
      {
        LOBYTE(v7) = 122;
      }

      if (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v7])
      {
        *a2 = v2 + 9;

        return boost::property_tree::detail::rapidxml::xml_document<char>::parse_doctype<3072>(a1, a2);
      }
    }

LABEL_46:
    v8 = v2 + 1;
    while (1)
    {
      *a2 = v8;
      v10 = *v8++;
      v9 = v10;
      if (v10 == 62)
      {
        break;
      }

      if (!v9)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        v13 = *a2;
        *exception = &unk_1F2D1EB28;
        exception[1] = "unexpected end of data";
        exception[2] = v13;
      }
    }

    *a2 = v8;
    return 0;
  }

  if (v2[2] != 67 || v2[3] != 68 || v2[4] != 65 || v2[5] != 84 || v2[6] != 65 || v2[7] != 91)
  {
    goto LABEL_46;
  }

  *a2 = v2 + 8;

  return boost::property_tree::detail::rapidxml::xml_document<char>::parse_cdata<3072>(a1, a2);
}

void *boost::property_tree::detail::rapidxml::xml_document<char>::parse_element<3136>(uint64_t *a1, unsigned __int8 **a2)
{
  aligned = boost::property_tree::detail::rapidxml::memory_pool<char>::allocate_aligned(a1 + 12, 0x60uLL);
  v5 = aligned;
  *(aligned + 32) = 0;
  *aligned = 0;
  *(aligned + 8) = 0;
  *(aligned + 40) = 1;
  *(aligned + 48) = 0;
  *(aligned + 64) = 0;
  v6 = *a2;
  v7 = -1;
  do
  {
    v8 = v6[v7 + 1];
    if (v8 < 0)
    {
      LOBYTE(v8) = 122;
    }

    ++v7;
  }

  while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_node_name[v8]);
  *a2 = &v6[v7];
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v18 = *a2;
    v19 = "expected element name";
    goto LABEL_21;
  }

  *aligned = v6;
  *(aligned + 16) = v7;
  v9 = (*a2 - 1);
  do
  {
    v11 = *++v9;
    v10 = v11;
    if (v11 < 0)
    {
      v10 = 122;
    }
  }

  while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v10]);
  *a2 = v9;
  boost::property_tree::detail::rapidxml::xml_document<char>::parse_node_attributes<3072>(a1, a2, aligned);
  v12 = *a2;
  v13 = **a2;
  if (v13 != 47)
  {
    if (v13 == 62)
    {
      *a2 = v12 + 1;
      boost::property_tree::detail::rapidxml::xml_document<char>::parse_node_contents<3136>(a1, a2, v5);
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  *a2 = v12 + 1;
  if (v12[1] != 62)
  {
LABEL_20:
    exception = __cxa_allocate_exception(0x18uLL);
    v18 = *a2;
    v19 = "expected >";
LABEL_21:
    *exception = &unk_1F2D1EB28;
    exception[1] = v19;
    exception[2] = v18;
  }

  *a2 = v12 + 2;
LABEL_15:
  v14 = *v5;
  if (*v5)
  {
    v15 = v5[2];
  }

  else
  {
    v15 = 0;
    v14 = &boost::property_tree::detail::rapidxml::xml_base<char>::nullstr(void)::zero;
  }

  v14[v15] = 0;
  return v5;
}

uint64_t boost::property_tree::detail::rapidxml::xml_document<char>::parse_comment<3136>(uint64_t a1, void *a2)
{
  v3 = *a2;
  for (i = (*a2 + 1); ; ++i)
  {
    if (*(i - 1) != 45)
    {
      if (!*(i - 1))
      {
        exception = __cxa_allocate_exception(0x18uLL);
        v8 = *a2;
        *exception = &unk_1F2D1EB28;
        exception[1] = "unexpected end of data";
        exception[2] = v8;
      }

      goto LABEL_7;
    }

    if (*i == 45 && i[1] == 62)
    {
      break;
    }

LABEL_7:
    *a2 = i;
  }

  result = boost::property_tree::detail::rapidxml::memory_pool<char>::allocate_aligned((a1 + 96), 0x60uLL);
  *(result + 32) = 0;
  *result = 0;
  *(result + 8) = 0;
  *(result + 40) = 4;
  *(result + 48) = 0;
  *(result + 64) = 0;
  v6 = *a2 - v3;
  *(result + 8) = v3;
  *(result + 24) = v6;
  **a2 = 0;
  *a2 += 3;
  return result;
}

uint64_t boost::property_tree::detail::rapidxml::xml_document<char>::parse_node_contents<3136>(uint64_t a1, char **a2, void *a3)
{
  v6 = a3 + 6;
  do
  {
    v7 = *a2 - 1;
    do
    {
      v9 = *++v7;
      v8 = v9;
      if (v9 < 0)
      {
        v8 = 122;
      }
    }

    while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v8]);
    *a2 = v7;
    for (result = *v7; result != 60; result = boost::property_tree::detail::rapidxml::xml_document<char>::parse_and_append_data<3072>(a1, a3, a2))
    {
      if (!result)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        v21 = *a2;
        v22 = "unexpected end of data";
        goto LABEL_29;
      }
    }

    v11 = *a2;
    v12 = (*a2)[1];
    if (v12 == 47)
    {
      *a2 = v11 + 2;
      v13 = v11 + 1;
      do
      {
        v15 = *++v13;
        v14 = v15;
        if (v15 < 0)
        {
          v14 = 122;
        }
      }

      while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_node_name[v14]);
      *a2 = v13;
      do
      {
        v17 = *v13++;
        v16 = v17;
        if (v17 < 0)
        {
          v16 = 122;
        }
      }

      while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v16]);
      *a2 = v13 - 1;
      if (*(v13 - 1) != 62)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        v21 = *a2;
        v22 = "expected >";
LABEL_29:
        *exception = &unk_1F2D1EB28;
        exception[1] = v22;
        exception[2] = v21;
      }

      *a2 = v13;
    }

    else
    {
      ++*a2;
      result = boost::property_tree::detail::rapidxml::xml_document<char>::parse_node<3136>(a1, a2);
      if (result)
      {
        v18 = *v6;
        if (*v6)
        {
          v18 = a3[7];
          v19 = (v18 + 88);
        }

        else
        {
          v19 = v6;
        }

        *v19 = result;
        a3[7] = result;
        *(result + 32) = a3;
        *(result + 80) = v18;
        *(result + 88) = 0;
      }
    }
  }

  while (v12 != 47);
  return result;
}

void *boost::property_tree::detail::rapidxml::xml_document<char>::parse_node<64>(uint64_t *a1, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3 != 33)
  {
    if (v3 == 63)
    {
      *a2 = v2 + 1;
      if ((v2[1] | 0x20) != 0x78 || (v2[2] | 0x20) != 0x6D || (v2[3] | 0x20) != 0x6C)
      {
        goto LABEL_22;
      }

      v4 = v2[4];
      if (v4 < 0)
      {
        LOBYTE(v4) = 122;
      }

      if (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v4])
      {
        *a2 = v2 + 5;
      }

      else
      {
LABEL_22:
      }

      return boost::property_tree::detail::rapidxml::xml_document<char>::parse_xml_declaration<3072>(a1, a2);
    }

    else
    {

      return boost::property_tree::detail::rapidxml::xml_document<char>::parse_element<64>(a1, a2);
    }
  }

  v6 = v2[1];
  if (v6 != 91)
  {
    if (v6 != 68)
    {
      if (v6 == 45 && v2[2] == 45)
      {
        *a2 = v2 + 3;

        return boost::property_tree::detail::rapidxml::xml_document<char>::parse_comment<3136>(a1, a2);
      }

      goto LABEL_46;
    }

    if (v2[2] == 79 && v2[3] == 67 && v2[4] == 84 && v2[5] == 89 && v2[6] == 80 && v2[7] == 69)
    {
      v7 = v2[8];
      if (v7 < 0)
      {
        LOBYTE(v7) = 122;
      }

      if (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v7])
      {
        *a2 = v2 + 9;

        return boost::property_tree::detail::rapidxml::xml_document<char>::parse_doctype<3072>(a1, a2);
      }
    }

LABEL_46:
    v8 = v2 + 1;
    while (1)
    {
      *a2 = v8;
      v10 = *v8++;
      v9 = v10;
      if (v10 == 62)
      {
        break;
      }

      if (!v9)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        v13 = *a2;
        *exception = &unk_1F2D1EB28;
        exception[1] = "unexpected end of data";
        exception[2] = v13;
      }
    }

    *a2 = v8;
    return 0;
  }

  if (v2[2] != 67 || v2[3] != 68 || v2[4] != 65 || v2[5] != 84 || v2[6] != 65 || v2[7] != 91)
  {
    goto LABEL_46;
  }

  *a2 = v2 + 8;

  return boost::property_tree::detail::rapidxml::xml_document<char>::parse_cdata<3072>(a1, a2);
}

void *boost::property_tree::detail::rapidxml::xml_document<char>::parse_element<64>(uint64_t *a1, unsigned __int8 **a2)
{
  aligned = boost::property_tree::detail::rapidxml::memory_pool<char>::allocate_aligned(a1 + 12, 0x60uLL);
  v5 = aligned;
  *(aligned + 32) = 0;
  *aligned = 0;
  *(aligned + 8) = 0;
  *(aligned + 40) = 1;
  *(aligned + 48) = 0;
  *(aligned + 64) = 0;
  v6 = *a2;
  v7 = -1;
  do
  {
    v8 = v6[v7 + 1];
    if (v8 < 0)
    {
      LOBYTE(v8) = 122;
    }

    ++v7;
  }

  while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_node_name[v8]);
  *a2 = &v6[v7];
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v18 = *a2;
    v19 = "expected element name";
    goto LABEL_21;
  }

  *aligned = v6;
  *(aligned + 16) = v7;
  v9 = (*a2 - 1);
  do
  {
    v11 = *++v9;
    v10 = v11;
    if (v11 < 0)
    {
      v10 = 122;
    }
  }

  while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v10]);
  *a2 = v9;
  boost::property_tree::detail::rapidxml::xml_document<char>::parse_node_attributes<3072>(a1, a2, aligned);
  v12 = *a2;
  v13 = **a2;
  if (v13 != 47)
  {
    if (v13 == 62)
    {
      *a2 = v12 + 1;
      boost::property_tree::detail::rapidxml::xml_document<char>::parse_node_contents<64>(a1, a2, v5);
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  *a2 = v12 + 1;
  if (v12[1] != 62)
  {
LABEL_20:
    exception = __cxa_allocate_exception(0x18uLL);
    v18 = *a2;
    v19 = "expected >";
LABEL_21:
    *exception = &unk_1F2D1EB28;
    exception[1] = v19;
    exception[2] = v18;
  }

  *a2 = v12 + 2;
LABEL_15:
  v14 = *v5;
  if (*v5)
  {
    v15 = v5[2];
  }

  else
  {
    v15 = 0;
    v14 = &boost::property_tree::detail::rapidxml::xml_base<char>::nullstr(void)::zero;
  }

  v14[v15] = 0;
  return v5;
}

uint64_t boost::property_tree::detail::rapidxml::xml_document<char>::parse_node_contents<64>(uint64_t a1, char **a2, void *a3)
{
  v6 = a3 + 6;
  do
  {
    v7 = *a2;
    for (result = **a2; result != 60; result = boost::property_tree::detail::rapidxml::xml_document<char>::parse_and_append_data<0>(a1, a3, a2, v7))
    {
      if (!result)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        v19 = *a2;
        v20 = "unexpected end of data";
        goto LABEL_25;
      }
    }

    v9 = *a2;
    v10 = (*a2)[1];
    if (v10 == 47)
    {
      *a2 = v9 + 2;
      v11 = v9 + 1;
      do
      {
        v13 = *++v11;
        v12 = v13;
        if (v13 < 0)
        {
          v12 = 122;
        }
      }

      while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_node_name[v12]);
      *a2 = v11;
      do
      {
        v15 = *v11++;
        v14 = v15;
        if (v15 < 0)
        {
          v14 = 122;
        }
      }

      while (boost::property_tree::detail::rapidxml::internal::lookup_tables<0>::lookup_whitespace[v14]);
      *a2 = v11 - 1;
      if (*(v11 - 1) != 62)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        v19 = *a2;
        v20 = "expected >";
LABEL_25:
        *exception = &unk_1F2D1EB28;
        exception[1] = v20;
        exception[2] = v19;
      }

      *a2 = v11;
    }

    else
    {
      ++*a2;
      result = boost::property_tree::detail::rapidxml::xml_document<char>::parse_node<64>(a1, a2);
      if (result)
      {
        v16 = *v6;
        if (*v6)
        {
          v16 = a3[7];
          v17 = (v16 + 88);
        }

        else
        {
          v17 = v6;
        }

        *v17 = result;
        a3[7] = result;
        *(result + 32) = a3;
        *(result + 80) = v16;
        *(result + 88) = 0;
      }
    }
  }

  while (v10 != 47);
  return result;
}

std::string *boost::property_tree::xml_parser::xmlattr<std::string>()
{
  {
    boost::property_tree::detail::widen<std::string>("<xmlattr>", &boost::property_tree::xml_parser::xmlattr<std::string>(void)::s);
    __cxa_atexit(MEMORY[0x1E69E52C0], &boost::property_tree::xml_parser::xmlattr<std::string>(void)::s, &dword_1B501D000);
  }

  return &boost::property_tree::xml_parser::xmlattr<std::string>(void)::s;
}

std::string *boost::property_tree::xml_parser::xmltext<std::string>()
{
  {
    boost::property_tree::detail::widen<std::string>("<xmltext>", &boost::property_tree::xml_parser::xmltext<std::string>(void)::s);
    __cxa_atexit(MEMORY[0x1E69E52C0], &boost::property_tree::xml_parser::xmltext<std::string>(void)::s, &dword_1B501D000);
  }

  return &boost::property_tree::xml_parser::xmltext<std::string>(void)::s;
}

std::string *boost::property_tree::xml_parser::xmlcomment<std::string>()
{
  {
    boost::property_tree::detail::widen<std::string>("<xmlcomment>", &boost::property_tree::xml_parser::xmlcomment<std::string>(void)::s);
    __cxa_atexit(MEMORY[0x1E69E52C0], &boost::property_tree::xml_parser::xmlcomment<std::string>(void)::s, &dword_1B501D000);
  }

  return &boost::property_tree::xml_parser::xmlcomment<std::string>(void)::s;
}

void std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::pair[abi:ne200100]<char *,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>,0>(std::string *a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(a1, *a2);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    a1[1].__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&a1[1].__r_.__value_.__l.__data_ = v4;
  }

  operator new();
}

void sub_1B55B938C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void boost::property_tree::detail::widen<std::string>(std::string::value_type *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *a1;
  if (*a1)
  {
    v4 = (a1 + 1);
    do
    {
      std::string::push_back(a2, v3);
      v5 = *v4++;
      v3 = v5;
    }

    while (v5);
  }
}

void sub_1B55B9428(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *boost::property_tree::detail::rapidxml::memory_pool<char>::clear(void *a1)
{
  v3 = a1 + 3;
  result = *a1;
  if (result != v3)
  {
    do
    {
      v4 = *(result + (-result & 7));
      v5 = a1[8196];
      if (v5)
      {
        v5();
      }

      else
      {
        MEMORY[0x1B8C85310]();
      }

      *a1 = v4;
      result = v4;
    }

    while (v4 != v3);
  }

  *a1 = v3;
  a1[1] = v3 + (-v3 & 7);
  a1[2] = a1 + 8195;
  return result;
}

uint64_t std::vector<quasar::AppLmData::Oov>::__construct_one_at_end[abi:ne200100]<quasar::AppLmData::Oov>(uint64_t result, __int128 *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v2 + 24) = *(a2 + 3);
  v4 = a2 + 2;
  v5 = *(a2 + 4);
  *(v2 + 32) = v5;
  v6 = v2 + 32;
  v7 = *(a2 + 5);
  *(v2 + 40) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 3) = v4;
    *v4 = 0;
    *(a2 + 5) = 0;
  }

  else
  {
    *(v2 + 24) = v6;
  }

  *(v2 + 48) = *(a2 + 12);
  *(result + 8) = v2 + 56;
  return result;
}

uint64_t std::vector<quasar::AppLmData::Oov>::__emplace_back_slow_path<quasar::AppLmData::Oov>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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

  v22 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AppLmData::Oov>>(a1, v6);
  }

  v7 = 56 * v2;
  v19 = 0;
  v20 = v7;
  *(&v21 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v7 + 24) = *(a2 + 3);
  v9 = a2 + 2;
  v10 = *(a2 + 4);
  *(56 * v2 + 0x20) = v10;
  v11 = 56 * v2 + 32;
  v12 = *(a2 + 5);
  *(v7 + 40) = v12;
  if (v12)
  {
    *(v10 + 16) = v11;
    *(a2 + 3) = v9;
    *v9 = 0;
    *(a2 + 5) = 0;
  }

  else
  {
    *(56 * v2 + 0x18) = v11;
  }

  *(56 * v2 + 0x30) = *(a2 + 12);
  *&v21 = v7 + 56;
  v13 = a1[1];
  v14 = v7 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::AppLmData::Oov>,quasar::AppLmData::Oov*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<quasar::AppLmData::Oov>::~__split_buffer(&v19);
  return v18;
}

void sub_1B55B96D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::AppLmData::Oov>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void quasar::OnlineLASBeamSearchDecoder::OnlineLASBeamSearchDecoder(uint64_t a1, __int128 *a2)
{
  v3 = quasar::Decoder::Decoder(a1, a2);
  *v3 = &unk_1F2D1EB50;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0u;
  *(v3 + 504) = 0u;
  *(v3 + 520) = 0;
  *(v3 + 528) = 257;
  *(v3 + 532) = 0x8000001F4;
  *(v3 + 540) = 0;
  *(v3 + 548) = 32;
  std::string::basic_string[abi:ne200100]<0>((v3 + 552), "");
  *(a1 + 624) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 632) = 0u;
  operator new();
}

void sub_1B55B9824(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<kaldi::BeamSearchDecoder>::reset[abi:ne200100]((v2 + 640), 0);
  v7 = *(v2 + 632);
  *(v2 + 632) = 0;
  if (v7)
  {
    quasar::OnlineLASLmRescoringBeamSearchDecoder::OnlineLASLmRescoringBeamSearchDecoder(v7);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 599) < 0)
  {
    operator delete(*v5);
  }

  if (*(v2 + 575) < 0)
  {
    operator delete(*v3);
  }

  if (*(v2 + 527) < 0)
  {
    operator delete(*(v2 + 504));
  }

  if (*(v2 + 503) < 0)
  {
    operator delete(*(v2 + 480));
  }

  if (*(v2 + 479) < 0)
  {
    operator delete(*v4);
  }

  quasar::Decoder::~Decoder(v2);
  _Unwind_Resume(a1);
}

void quasar::OnlineLASBeamSearchDecoder::~OnlineLASBeamSearchDecoder(quasar::OnlineLASBeamSearchDecoder *this)
{
  *this = &unk_1F2D1EB50;
  v2 = *(this + 82);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<kaldi::BeamSearchDecoder>::reset[abi:ne200100](this + 80, 0);
  v3 = *(this + 79);
  *(this + 79) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = (this + 600);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 599) < 0)
  {
    operator delete(*(this + 72));
  }

  if (*(this + 575) < 0)
  {
    operator delete(*(this + 69));
  }

  if (*(this + 527) < 0)
  {
    operator delete(*(this + 63));
  }

  if (*(this + 503) < 0)
  {
    operator delete(*(this + 60));
  }

  if (*(this + 479) < 0)
  {
    operator delete(*(this + 57));
  }

  quasar::Decoder::~Decoder(this);
}

{
  quasar::OnlineLASBeamSearchDecoder::~OnlineLASBeamSearchDecoder(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineLASBeamSearchDecoder::registerParams(quasar::QsrTextSymbolTable **this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "online-las-beam-search");
  quasar::SystemConfig::enforceMinVersion(a2, 159, 0, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  kaldi::BeamSearchDecoderOptions::Register((this + 66), a2);
  quasar::QsrTextSymbolTable::Register(this[81], a2, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  std::string::basic_string[abi:ne200100]<0>(__p, "model-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "LAS model (TF/Espresso/CoreML graph)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 57), v4, 0, 159, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "encoder-model-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "LAS encoder split model (TF/Espresso/CoreML graph)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 60), v4, 0, 200, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "decoder-model-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "LAS decoder split model (TF/Espresso/CoreML graph)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 63), v4, 0, 200, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "batch-size");
  std::string::basic_string[abi:ne200100]<0>(v4, "batch size");
  quasar::SystemConfig::Register<int>(a2, __p, this + 548, v4, 0, 159, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "substring-delimiter");
  std::string::basic_string[abi:ne200100]<0>(v4, "Substring delimiter");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 69), v4, 0, 239, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "token-delimiter");
  std::string::basic_string[abi:ne200100]<0>(v4, "Token delimiter");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 72), v4, 0, 159, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "token-delimiters");
  std::string::basic_string[abi:ne200100]<0>(v4, "List of token delimiters");
  quasar::SystemConfig::Register<std::vector<std::string>>(a2, __p, (this + 75), v4, 0, 195, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "split-tokens-by-character");
  std::string::basic_string[abi:ne200100]<0>(v4, "split tokens by character");
  quasar::SystemConfig::Register<BOOL>(a2, __p, (this + 78), v4, 0, 195, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}