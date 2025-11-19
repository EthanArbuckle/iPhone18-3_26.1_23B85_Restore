__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_i32[1];
  v7 = a3->n128_i32[1];
  if (v6 >= a1->n128_u32[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[1] < a1->n128_u32[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_u32[1] < a2->n128_u32[1])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u32[1] < a3->n128_u32[1])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_u32[1] < a2->n128_u32[1])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[1] < a1->n128_u32[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (a5->n128_u32[1] < a4->n128_u32[1])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (a4->n128_u32[1] < a3->n128_u32[1])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (a3->n128_u32[1] < a2->n128_u32[1])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u32[1] < a1->n128_u32[1])
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

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(uint64_t result, _DWORD *a2)
{
  if (result != a2)
  {
    v2 = (result + 16);
    if ((result + 16) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[5];
        if (v6 < v4[1])
        {
          v7 = *v5;
          v8 = *(v4 + 3);
          v9 = v3;
          while (1)
          {
            *(result + v9 + 16) = *(result + v9);
            if (!v9)
            {
              break;
            }

            v10 = *(result + v9 - 12);
            v9 -= 16;
            if (v6 >= v10)
            {
              v11 = result + v9 + 16;
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v7;
          *(v11 + 4) = v6;
          *(v11 + 8) = v8;
        }

        v2 = v5 + 4;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 4 != a2);
    }
  }

  return result;
}

_DWORD *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = result[5];
      if (v4 < result[1])
      {
        v5 = *v3;
        v6 = *(result + 3);
        v7 = v3;
        do
        {
          *v7 = *(v7 - 1);
          v8 = *(v7 - 7);
          v7 -= 4;
        }

        while (v4 < v8);
        *v7 = v5;
        v7[1] = v4;
        *(v7 + 1) = v6;
      }

      v2 = v3 + 4;
      result = v3;
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> *,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &>(int *a1, _OWORD *a2)
{
  v2 = a1[1];
  if (v2 >= *(a2 - 3))
  {
    v6 = (a1 + 4);
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = *(v6 + 4);
      v6 += 16;
    }

    while (v2 >= v7);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = (v3 + 4);
      v5 = v3[5];
      v3 += 4;
    }

    while (v2 >= v5);
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 1;
      v9 = *(a2-- - 3);
    }

    while (v2 < v9);
  }

  v10 = *a1;
  v11 = *(a1 + 1);
  while (v4 < v8)
  {
    v15 = *v4;
    *v4 = *v8;
    *v8 = v15;
    do
    {
      v12 = *(v4 + 20);
      v4 += 16;
    }

    while (v2 >= v12);
    do
    {
      v13 = *(v8-- - 3);
    }

    while (v2 < v13);
  }

  if ((v4 - 16) != a1)
  {
    *a1 = *(v4 - 16);
  }

  *(v4 - 16) = v10;
  *(v4 - 12) = v2;
  *(v4 - 8) = v11;
  return v4;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> *,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &>(int *a1, _OWORD *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  do
  {
    v6 = a1[v2 + 5];
    v2 += 4;
  }

  while (v6 < v4);
  v7 = &a1[v2];
  if (v2 == 4)
  {
    while (v7 < a2)
    {
      v8 = a2 - 1;
      v10 = *(a2-- - 3);
      if (v10 < v4)
      {
        goto LABEL_9;
      }
    }

    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 1;
      v9 = *(a2-- - 3);
    }

    while (v9 >= v4);
  }

LABEL_9:
  v11 = v7;
  if (v7 < v8)
  {
    v12 = v8;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      do
      {
        v14 = *(v11 + 20);
        v11 += 16;
      }

      while (v14 < v4);
      do
      {
        v15 = *(v12-- - 3);
      }

      while (v15 >= v4);
    }

    while (v11 < v12);
  }

  if ((v11 - 16) != a1)
  {
    *a1 = *(v11 - 16);
  }

  *(v11 - 16) = v3;
  *(v11 - 12) = v4;
  *(v11 - 8) = v5;
  return v11 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = a2 - 1;
      v6 = a1[1].n128_i32[1];
      v7 = a2[-1].n128_i32[1];
      if (v6 < a1->n128_u32[1])
      {
        if (v7 >= v6)
        {
          v23 = *a1;
          *a1 = a1[1];
          a1[1] = v23;
          if (a2[-1].n128_u32[1] >= a1[1].n128_u32[1])
          {
            return 1;
          }

          v8 = a1[1];
          a1[1] = *v5;
        }

        else
        {
          v8 = *a1;
          *a1 = *v5;
        }

        *v5 = v8;
        return 1;
      }

      if (v7 >= v6)
      {
        return 1;
      }

      v18 = a1[1];
      a1[1] = *v5;
      *v5 = v18;
LABEL_50:
      if (a1[1].n128_u32[1] < a1->n128_u32[1])
      {
        v37 = *a1;
        *a1 = a1[1];
        a1[1] = v37;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v14 = a1[1].n128_i32[1];
    v15 = a1->n128_i32[1];
    v16 = a1[2].n128_i32[1];
    if (v14 >= v15)
    {
      if (v16 < v14)
      {
        v21 = a1[1];
        a1[1] = a1[2];
        a1[2] = v21;
        if (a1[1].n128_u32[1] < v15)
        {
          v22 = *a1;
          *a1 = a1[1];
          a1[1] = v22;
        }
      }

      goto LABEL_47;
    }

    if (v16 >= v14)
    {
      v34 = *a1;
      *a1 = a1[1];
      a1[1] = v34;
      if (v16 >= a1[1].n128_u32[1])
      {
        goto LABEL_47;
      }

      v17 = a1[1];
      a1[1] = a1[2];
    }

    else
    {
      v17 = *a1;
      *a1 = a1[2];
    }

    a1[2] = v17;
LABEL_47:
    if (a2[-1].n128_u32[1] >= a1[2].n128_u32[1])
    {
      return 1;
    }

    v35 = a1[2];
    a1[2] = a2[-1];
    a2[-1] = v35;
    if (a1[2].n128_u32[1] >= a1[1].n128_u32[1])
    {
      return 1;
    }

    v36 = a1[1];
    a1[1] = a1[2];
    a1[2] = v36;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (a2[-1].n128_u32[1] < a1->n128_u32[1])
    {
      v4 = *a1;
      *a1 = a2[-1];
      a2[-1] = v4;
    }

    return 1;
  }

LABEL_13:
  v9 = a1 + 2;
  v10 = a1[1].n128_i32[1];
  v11 = a1->n128_i32[1];
  v12 = a1[2].n128_i32[1];
  if (v10 >= v11)
  {
    if (v12 < v10)
    {
      v19 = a1[1];
      a1[1] = *v9;
      *v9 = v19;
      if (a1[1].n128_u32[1] < v11)
      {
        v20 = *a1;
        *a1 = a1[1];
        a1[1] = v20;
      }
    }
  }

  else
  {
    if (v12 >= v10)
    {
      v24 = *a1;
      *a1 = a1[1];
      a1[1] = v24;
      if (v12 >= a1[1].n128_u32[1])
      {
        goto LABEL_33;
      }

      v13 = a1[1];
      a1[1] = *v9;
    }

    else
    {
      v13 = *a1;
      *a1 = *v9;
    }

    *v9 = v13;
  }

LABEL_33:
  v25 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    v28 = v25->n128_i32[1];
    if (v28 < v9->n128_u32[1])
    {
      v29 = v25->n128_u32[0];
      v30 = v25->n128_u64[1];
      v31 = v26;
      while (1)
      {
        *(a1 + v31 + 48) = *(a1 + v31 + 32);
        if (v31 == -32)
        {
          break;
        }

        v32 = *(&a1[1].n128_i32[1] + v31);
        v31 -= 16;
        if (v28 >= v32)
        {
          v33 = &a1[3] + v31;
          goto LABEL_41;
        }
      }

      v33 = a1;
LABEL_41:
      *v33 = v29;
      *(v33 + 4) = v28;
      *(v33 + 8) = v30;
      if (++v27 == 8)
      {
        return &v25[1] == a2;
      }
    }

    v9 = v25;
    v26 += 16;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(a1, a4, v8, v11);
        v11 -= 4;
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
        if (v12[1] < a1[1])
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(a1, a4, v8, a1);
        }

        v12 += 4;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v24 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[4 * v14];
          v17 = v16 + 4;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v19 = v16[5];
            v20 = v16[9];
            v21 = v16 + 8;
            if (v19 >= v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v21;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 4;
        if (v17 == v6)
        {
          *v17 = v24;
        }

        else
        {
          *v17 = *v6;
          *v6 = v24;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(a1, (v17 + 4), a4, ((v17 + 4) - a1) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[1];
        v11 = v8[5];
        v8 += 4 * (v10 < v11);
        if (v10 < v11)
        {
          v7 = v9;
        }
      }

      v12 = a4[1];
      if (v8[1] >= v12)
      {
        v13 = *a4;
        v14 = *(a4 + 1);
        do
        {
          v15 = a4;
          a4 = v8;
          *v15 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = (result + 16 * v16);
          v17 = 2 * v7 + 2;
          if (v17 < a3)
          {
            v18 = v8[1];
            v19 = v8[5];
            v8 += 4 * (v18 < v19);
            if (v18 < v19)
            {
              v16 = v17;
            }
          }

          v7 = v16;
        }

        while (v8[1] >= v12);
        *a4 = v13;
        a4[1] = v12;
        *(a4 + 1) = v14;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = result + 16 * (v4 >> 1);
    v7 = *(a2 - 12);
    if (*(v6 + 4) < v7)
    {
      v10 = *(a2 - 16);
      v8 = a2 - 16;
      v9 = v10;
      v11 = *(v8 + 8);
      do
      {
        v12 = v8;
        v8 = v6;
        *v12 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = result + 16 * v5;
      }

      while (*(v6 + 4) < v7);
      *v8 = v9;
      *(v8 + 4) = v7;
      *(v8 + 8) = v11;
    }
  }

  return result;
}

void *fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~TableMatcher(void *a1)
{
  *a1 = &unk_1F2D0DD88;
  v2 = a1[1];
  v3 = v2[2] - 1;
  v2[2] = v3;
  if (!v3)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~TableMatcher(void *a1)
{
  *a1 = &unk_1F2D0DD88;
  v1 = a1[1];
  v2 = v1[2] - 1;
  v1[2] = v2;
  if (!v2)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

void fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TableMatcherImpl(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  *a1 = &unk_1F2D0DE20;
  *(a1 + 8) = 1;
  *(a1 + 12) = a3;
  v8 = (*(*a2 + 88))(a2, 0);
  *(a1 + 64) = 0;
  *(a1 + 16) = v8;
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (a3)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 32) = v9;
  *(a1 + 36) = v10;
  *(a1 + 40) = 0xFFFFFFFF00000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = *a4;
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SortedMatcher(a1 + 96, a2, a3, 1);
}

void sub_1B535CD18(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~TableMatcherImpl(void *a1)
{
  fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~TableMatcherImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~TableMatcherImpl(void *a1)
{
  *a1 = &unk_1F2D0DE20;
  v3 = a1[8];
  v2 = a1[9];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        v6 = v5 == 24;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        v7 = *v5;
        if (*v5)
        {
          *(v5 + 8) = v7;
          operator delete(v7);
        }

        MEMORY[0x1B8C85350](v5, 0x10C402FEFCB83);
        v3 = a1[8];
        v2 = a1[9];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v8 = a1[6];
  if (v8)
  {
    if (*v8)
    {
      (*(**v8 + 8))(*v8);
    }

    else
    {
      v9 = v8[3];
      if (v9)
      {
        --*v9;
      }
    }

    MEMORY[0x1B8C85350](v8, 0x1070C401ACC3EEFLL);
  }

  v10 = a1[2];
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~SortedMatcher(a1 + 12);
  v11 = a1[8];
  if (v11)
  {
    a1[9] = v11;
    operator delete(v11);
  }

  return a1;
}

void *fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    else
    {
      v5 = v4[3];
      if (v5)
      {
        --*v5;
      }
    }

    MEMORY[0x1B8C85350](v4, 0x1070C401ACC3EEFLL);
    *(a1 + 48) = 0;
  }

  if (*(a1 + 12) == 3)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v6 = fst::LogMessage::LogMessage(&v23, &__p);
    v7 = fst::cerr(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "TableMatcher: bad match type", 28);
    fst::LogMessage::~LogMessage(&v23);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  v8 = *(a1 + 64);
  *(a1 + 56) = a2;
  if (a2 >= ((*(a1 + 72) - v8) >> 3))
  {
    __p = 0;
    std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize((a1 + 64), a2 + 1, &__p);
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 8 * a2);
  if (v9)
  {
    if (v9 != 24)
    {
      goto LABEL_14;
    }

    return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetState(a1 + 96, a2);
  }

  v10 = (*(**(a1 + 16) + 40))(*(a1 + 16), a2);
  v11 = v10;
  if (!v10 || *(a1 + 92) > v10)
  {
    *(v8 + 8 * a2) = 24;
    return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetState(a1 + 96, a2);
  }

  v13 = *(a1 + 16);
  v22 = 0;
  (*(*v13 + 136))(v13, a2, &__p);
  if (__p)
  {
    (*(*__p + 80))();
    v14 = v11 - 1;
    if (__p)
    {
      (*(*__p + 64))(__p, v14);
      goto LABEL_24;
    }
  }

  else
  {
    v14 = v11 - 1;
  }

  v22 = v14;
LABEL_24:
  if (*(a1 + 12) == 1)
  {
    if (__p)
    {
      v15 = (*(*__p + 32))();
    }

    else
    {
      v15 = v19 + 16 * v22;
    }

    v16 = (v15 + 4);
  }

  else if (__p)
  {
    v16 = (*(*__p + 32))();
  }

  else
  {
    v16 = (v19 + 16 * v22);
  }

  v17 = *(a1 + 88) * (*v16 + 1);
  if (v17 <= v11)
  {
    operator new();
  }

  *(v8 + 8 * a2) = 24;
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetState(a1 + 96, a2);
  result = __p;
  if (__p)
  {
    result = (*(*__p + 8))(__p);
  }

  else if (v21)
  {
    --*v21;
  }

  if (v17 <= v11)
  {
LABEL_14:
    operator new();
  }

  return result;
}

void sub_1B535D480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, _DWORD *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    (*(*__p + 8))(__p);
  }

  else if (a15)
  {
    --*a15;
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(uint64_t a1, int a2)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    result = a2 == 0;
    *(a1 + 24) = result;
    if (a2 == -1)
    {
      v6 = 0;
    }

    else
    {
      v6 = a2;
    }

    *(a1 + 28) = v6;
    v8 = *(*(a1 + 64) + 8 * *(a1 + 56));
    v7 = *v8;
    if (v6 < ((v8[1] - *v8) >> 2))
    {
      v9 = *(v7 + 4 * v6);
      if (v9 != -1)
      {
        if (*v4)
        {
          (*(**v4 + 64))(*v4);
        }

        else
        {
          v4[4] = v9;
        }

        return 1;
      }
    }
  }

  else
  {
    v10 = a1 + 96;

    return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Find(v10, a2);
  }

  return result;
}

BOOL fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    if (*(a1 + 24))
    {
      return 0;
    }

    if (*v2)
    {
      if ((*(**v2 + 24))(*v2))
      {
        return 1;
      }
    }

    else if (v2[4] >= v2[2])
    {
      return 1;
    }

    v5 = *(a1 + 48);
    v6 = *v5;
    if (*(a1 + 12) == 1)
    {
      if (v6)
      {
        v7 = (*(*v6 + 32))(v6);
      }

      else
      {
        v7 = v5[1] + 16 * v5[4];
      }

      v8 = (v7 + 4);
    }

    else if (v6)
    {
      v8 = (*(*v6 + 32))(v6);
    }

    else
    {
      v8 = (v5[1] + 16 * v5[4]);
    }

    return *v8 != *(a1 + 28);
  }

  else
  {
    v4 = a1 + 96;

    return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(v4);
  }
}

uint64_t fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Value(a1 + 96);
  }

  if (*(a1 + 24) == 1)
  {
    return a1 + 32;
  }

  if (*v1)
  {
    return (*(**v1 + 32))();
  }

  return v1[1] + 16 * v1[4];
}

uint64_t fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Next(uint64_t result)
{
  v1 = *(result + 48);
  if (!v1)
  {
    return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Next(result + 96);
  }

  if (*(result + 24) == 1)
  {
    *(result + 24) = 0;
  }

  else
  {
    result = *v1;
    if (*v1)
    {
      return (*(*result + 40))();
    }

    else
    {
      ++v1[4];
    }
  }

  return result;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D0DEB8;
  v8 = *(a4 + 40);
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(*v9.n128_u64[0] + 32))(v9.n128_u64[0], v9);
  *(a1 + 168) = (*(**(a1 + 152) + 32))(*(a1 + 152));
  v10 = *(a4 + 48);
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(**(a1 + 144) + 40))(*(a1 + 144), v11);
  v14 = (*(**(a1 + 152) + 40))(*(a1 + 152), v12);
  *(a1 + 8) = *(a1 + 8) & 0xFFFFC0000000FFFFLL | fst::ComposeProperties(v13, v14) & 0x3FFFFFFF0004;
  return a1;
}

void sub_1B535DAC4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(**(a1 + 144) + 40))(*(a1 + 144), 0) & 4) != 0 || ((*(**(a1 + 152) + 40))(*(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v9 = *(v4 + 8);
  fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(v7, v5, v6, &v9);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
  {
    return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, a1[21], v6, a1[20], v5, a1[19], 1);
  }

  else
  {
    return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, a2, a1[20], v5, a1[21], v6, a1[18], 0);
  }
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(**(a1 + 144) + 24))(*(a1 + 144), 0) == a3 && (*(**(a1 + 152) + 24))(*(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    result = (*(*a1[21] + 24))(a1[21]);
    if (result != -1)
    {
      v4 = __PAIR64__(result, v3);
      v5 = 0;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(a1[22], &v4, 1);
    }
  }

  return result;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal(uint64_t a1, int a2)
{
  v3 = (*(*(a1 + 176) + 80) + 12 * a2);
  v4 = *v3;
  v7 = (*(**(a1 + 144) + 96))(*(a1 + 144), v4);
  if (v7 != INFINITY)
  {
    v5 = v3[1];
    v7 = (*(**(*(a1 + 152) + 8) + 32))(*(*(a1 + 152) + 8), v5);
    if (v7 != INFINITY)
    {
      v6 = *(a1 + 136);
      LOBYTE(v7) = *(v3 + 8);
      fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(v6, v4, v5, &v7);
    }
  }
}

uint64_t fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    operator new();
  }

  *a1 = a4;
  if (!a5)
  {
    operator new();
  }

  *(a1 + 8) = a5;
  *(a1 + 16) = (*(*a4 + 32))(a4);
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D0DEB8;
  v2 = a1[17];
  if (v2)
  {
    v3 = fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>::~SequenceComposeFilter(v2);
    MEMORY[0x1B8C85350](v3, 0x1060C40AD892F49);
  }

  v4 = a1[22];
  if (v4)
  {
    v5 = *(v4 + 80);
    if (v5)
    {
      *(v4 + 88) = v5;
      operator delete(v5);
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4 + 24);
    MEMORY[0x1B8C85350](v4, 0x10E0C406D28CB5CLL);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void sub_1B535E390(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 184);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return 0;
  }

  v7 = (*(**(a1 + 144) + 104))(*(a1 + 144));
  v8 = (*(**(*(a1 + 152) + 8) + 40))(*(*(a1 + 152) + 8), a3);
  if (v7 == -1 && v8 == -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v15, __p);
    v12 = fst::cerr(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: both sides can't require match", 42);
    fst::LogMessage::~LogMessage(&v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
    return 1;
  }

  if (v7 == -1)
  {
    return 0;
  }

  return v8 == -1 || v7 <= v8;
}

void sub_1B535E538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetState(a7, a4);
  LODWORD(v19) = a8 - 1;
  *(&v19 + 4) = (a8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, a7, &v19, a8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = (v16[1] + 16 * v18);
      goto LABEL_8;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v16[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, a7, v14, a8);
    if (v16[0])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B535E748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(*(a7 + 8), a4);
  LODWORD(v19) = a8 - 1;
  *(&v19 + 4) = (a8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, a2, a7, &v19, a8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = (v16[1] + 16 * v18);
      goto LABEL_8;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v16[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, a2, a7, v14, a8);
    if (v16[0])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B535E944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, int a2, uint64_t a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Find(a3, *(a4 + v10));
  if (result)
  {
    result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(a3);
    if ((result & 1) == 0)
    {
      do
      {
        v12 = *fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Value(a3);
        v24 = *a4;
        v25 = v12;
        if (a5)
        {
          v13 = *(a1 + 136);
          if (DWORD1(v24) != -1)
          {
            if (v25 == -1)
            {
              v17 = v13[32];
              if (v17)
              {
                v18 = -1;
              }

              else
              {
                v18 = 0;
              }

              v23 = v18;
              if (v17)
              {
                goto LABEL_35;
              }
            }

            else
            {
              if (DWORD1(v24))
              {
                v14 = 0;
              }

              else
              {
                v14 = -1;
              }

              v23 = v14;
              if (!DWORD1(v24))
              {
                goto LABEL_35;
              }
            }

LABEL_28:
            v19 = &v24;
            v20 = &v25;
LABEL_34:
            fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v19, v20, &v23);
            goto LABEL_35;
          }

          if ((v13[33] & 1) == 0)
          {
            v23 = v13[34] ^ 1;
            goto LABEL_28;
          }
        }

        else
        {
          v15 = *(a1 + 136);
          if (DWORD1(v25) != -1)
          {
            if (v24 == -1)
            {
              v21 = v15[32];
              if (v21)
              {
                v22 = -1;
              }

              else
              {
                v22 = 0;
              }

              v23 = v22;
              if (v21)
              {
                goto LABEL_35;
              }
            }

            else
            {
              if (DWORD1(v25))
              {
                v16 = 0;
              }

              else
              {
                v16 = -1;
              }

              v23 = v16;
              if (!DWORD1(v25))
              {
                goto LABEL_35;
              }
            }

LABEL_33:
            v19 = &v25;
            v20 = &v24;
            goto LABEL_34;
          }

          if ((v15[33] & 1) == 0)
          {
            v23 = v15[34] ^ 1;
            goto LABEL_33;
          }
        }

LABEL_35:
        fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Next(a3);
        result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(a3);
      }

      while (!result);
    }
  }

  return result;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(uint64_t a1, int a2, uint64_t a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(*(a3 + 8), *(a4 + v10));
  if (result)
  {
    result = fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Done(*(a3 + 8));
    if ((result & 1) == 0)
    {
      do
      {
        v12 = *fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(*(a3 + 8));
        v24 = *a4;
        v25 = v12;
        if (a5)
        {
          v13 = *(a1 + 136);
          if (DWORD1(v24) != -1)
          {
            if (v25 == -1)
            {
              v17 = v13[32];
              if (v17)
              {
                v18 = -1;
              }

              else
              {
                v18 = 0;
              }

              v23 = v18;
              if (v17)
              {
                goto LABEL_35;
              }
            }

            else
            {
              if (DWORD1(v24))
              {
                v14 = 0;
              }

              else
              {
                v14 = -1;
              }

              v23 = v14;
              if (!DWORD1(v24))
              {
                goto LABEL_35;
              }
            }

LABEL_28:
            v19 = &v24;
            v20 = &v25;
LABEL_34:
            fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v19, v20, &v23);
            goto LABEL_35;
          }

          if ((v13[33] & 1) == 0)
          {
            v23 = v13[34] ^ 1;
            goto LABEL_28;
          }
        }

        else
        {
          v15 = *(a1 + 136);
          if (DWORD1(v25) != -1)
          {
            if (v24 == -1)
            {
              v21 = v15[32];
              if (v21)
              {
                v22 = -1;
              }

              else
              {
                v22 = 0;
              }

              v23 = v22;
              if (v21)
              {
                goto LABEL_35;
              }
            }

            else
            {
              if (DWORD1(v25))
              {
                v16 = 0;
              }

              else
              {
                v16 = -1;
              }

              v23 = v16;
              if (!DWORD1(v25))
              {
                goto LABEL_35;
              }
            }

LABEL_33:
            v19 = &v25;
            v20 = &v24;
            goto LABEL_34;
          }

          if ((v15[33] & 1) == 0)
          {
            v23 = v15[34] ^ 1;
            goto LABEL_33;
          }
        }

LABEL_35:
        fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Next(*(a3 + 8));
        result = fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Done(*(a3 + 8));
      }

      while (!result);
    }
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D0DF30;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  *(a1 + 32) = (*(**(a3 + 144) + 16))(*(a3 + 144), 0);
  *(a1 + 40) = (*(**(a3 + 152) + 16))(*(a3 + 152), 0);
  *(a1 + 48) = 0;
  *(a1 + 52) = xmmword_1B5AE3080;
  *(a1 + 84) = 0;
  if (a4 == 1)
  {
    *(a1 + 52) = 0xFFFFFFFF00000000;
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
{
  result = (*(**(a1 + 32) + 24))(*(a1 + 32));
  if (result != 3)
  {
    result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) != 4 || (result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2), result != 4))
      {
        if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) == 4 && (*(**(a1 + 40) + 24))(*(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) != *(a1 + 28) || (result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2), result != 4))
        {
          if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2);
          if (result != *(a1 + 28))
          {
            return 3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 80) + 12 * a2);
    v4 = v3[1];
    fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(*(*(result + 32) + 8), *v3);
    result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetState(*(v2 + 40), v4);
    *(v2 + 64) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(uint64_t a1, int a2)
{
  *(a1 + 48) = a2 == 0;
  if (*(a1 + 28))
  {
    if (a2)
    {
      return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, a2, *(a1 + 40), *(a1 + 32));
    }
  }

  else if (a2)
  {
    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, *(a1 + 32), *(a1 + 40));
  }

  return 1;
}

BOOL fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Done(*(*(a1 + 32) + 8)))
  {
    return 0;
  }

  v2 = *(a1 + 40);

  return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(v2);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 68;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  else if (*(result + 28))
  {
    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(result, *(result + 40), *(result + 32));
  }

  else
  {
    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(result, *(result + 32), *(result + 40));
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D0DF30;
  v2 = a1[4];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D0DF30;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = (*(**(a2 + 32) + 16))(*(a2 + 32), a3);
  *(a1 + 40) = (*(**(a2 + 40) + 16))(*(a2 + 40), a3);
  *(a1 + 48) = 0;
  *(a1 + 52) = xmmword_1B5AE3080;
  *(a1 + 84) = *(a2 + 84);
  if (a3)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v6 = fst::LogMessage::LogMessage(&v11, __p);
    v7 = fst::cerr(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ComposeFstMatcher: safe copy not supported", 42);
    fst::LogMessage::~LogMessage(&v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 84) = 1;
  }

  if (*(a1 + 28) == 1)
  {
    *(a1 + 52) = vrev64_s32(*(a1 + 52));
  }

  return a1;
}

void sub_1B535F3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(*(a3 + 8), a2);
  if (result)
  {
    v8 = *(a1 + 28) == 0;
    v9 = fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(*(a3 + 8));
    fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Find(a4, *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Find(a3, a2);
  if (result)
  {
    v8 = *(a1 + 28) == 0;
    v9 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Value(a3);
    fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(*(a4 + 8), *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (!fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Done(*(a2 + 8)) || !fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(a3))
  {
    if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(a3))
    {
      fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Next(*(a2 + 8));
      while (!fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Done(*(a2 + 8)))
      {
        v6 = *(a1 + 28) == 0;
        v7 = fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(*(a2 + 8));
        if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Find(a3, *(v7 + 4 * v6)))
        {
          break;
        }

        fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Next(*(a2 + 8));
      }
    }

    while (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(a3))
    {
      v8 = fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(*(a2 + 8));
      v9 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Value(a3);
      fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Next(a3);
      v10 = *(a1 + 28);
      v11 = v10 == 0;
      if (v10)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      v13 = *v12;
      v14 = v12[1];
      if (v11)
      {
        v15 = v9;
      }

      else
      {
        v15 = v8;
      }

      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, *(a1 + 24), v13, v14, *v15, v15[1]))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(a2) || !fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Done(*(a3 + 8)))
  {
    if (fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Done(*(a3 + 8)))
    {
      fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Next(a2);
      while (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(a2))
      {
        v6 = *(a1 + 28) == 0;
        v7 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Value(a2);
        if (fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(*(a3 + 8), *(v7 + 4 * v6)))
        {
          break;
        }

        fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Next(a2);
      }
    }

    while (!fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Done(*(a3 + 8)))
    {
      v8 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Value(a2);
      v9 = fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(*(a3 + 8));
      fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Next(*(a3 + 8));
      v10 = *(a1 + 28);
      v11 = v10 == 0;
      if (v10)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      v13 = *v12;
      v14 = v12[1];
      if (v11)
      {
        v15 = v9;
      }

      else
      {
        v15 = v8;
      }

      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, *(a1 + 24), v13, v14, *v15, v15[1]))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D0DFC8;
  v8 = *(a4 + 40);
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(*v9.n128_u64[0] + 32))(v9.n128_u64[0], v9);
  *(a1 + 168) = (*(**(a1 + 152) + 32))(*(a1 + 152));
  v10 = *(a4 + 48);
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(**(a1 + 144) + 40))(*(a1 + 144), v11);
  v14 = (*(**(a1 + 152) + 40))(*(a1 + 152), v12);
  *(a1 + 8) = *(a1 + 8) & 0xFFFFC0000000FFFFLL | fst::ComposeProperties(v13, v14) & 0x3FFFFFFF0004;
  return a1;
}

void sub_1B535FA0C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(**(a1 + 144) + 40))(*(a1 + 144), 0) & 4) != 0 || ((*(**(a1 + 152) + 40))(*(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v9 = *(v4 + 8);
  fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(v7, v5, v6, &v9);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
  {
    return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, a2, a1[21], v6, a1[20], v5, a1[19], 1);
  }

  else
  {
    return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, a1[20], v5, a1[21], v6, a1[18], 0);
  }
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(**(a1 + 144) + 24))(*(a1 + 144), 0) == a3 && (*(**(a1 + 152) + 24))(*(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    result = (*(*a1[21] + 24))(a1[21]);
    if (result != -1)
    {
      v4 = __PAIR64__(result, v3);
      v5 = 0;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(a1[22], &v4, 1);
    }
  }

  return result;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal(uint64_t a1, int a2)
{
  v3 = (*(*(a1 + 176) + 80) + 12 * a2);
  v4 = *v3;
  v7 = (*(**(*(a1 + 144) + 8) + 32))(*(*(a1 + 144) + 8), v4);
  if (v7 != INFINITY)
  {
    v5 = v3[1];
    v7 = (*(**(a1 + 152) + 96))(*(a1 + 152), v5);
    if (v7 != INFINITY)
    {
      v6 = *(a1 + 136);
      LOBYTE(v7) = *(v3 + 8);
      fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(v6, v4, v5, &v7);
    }
  }
}

uint64_t fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::SequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    operator new();
  }

  *a1 = a4;
  if (!a5)
  {
    operator new();
  }

  *(a1 + 8) = a5;
  *(a1 + 16) = (*(*a4 + 32))(a4);
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D0DFC8;
  v2 = a1[17];
  if (v2)
  {
    v3 = fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>::~SequenceComposeFilter(v2);
    MEMORY[0x1B8C85350](v3, 0x1060C40AD892F49);
  }

  v4 = a1[22];
  if (v4)
  {
    v5 = *(v4 + 80);
    if (v5)
    {
      *(v4 + 88) = v5;
      operator delete(v5);
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4 + 24);
    MEMORY[0x1B8C85350](v4, 0x10E0C406D28CB5CLL);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void sub_1B53602D8(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 184);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return 0;
  }

  v7 = (*(**(*(a1 + 144) + 8) + 40))(*(*(a1 + 144) + 8));
  v8 = (*(**(a1 + 152) + 104))(*(a1 + 152), a3);
  if (v7 == -1 && v8 == -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v15, __p);
    v12 = fst::cerr(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: both sides can't require match", 42);
    fst::LogMessage::~LogMessage(&v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
    return 1;
  }

  if (v7 == -1)
  {
    return 0;
  }

  return v8 == -1 || v7 <= v8;
}

void sub_1B5360480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(*(a7 + 8), a4);
  LODWORD(v19) = a8 - 1;
  *(&v19 + 4) = (a8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, a2, a7, &v19, a8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = (v16[1] + 16 * v18);
      goto LABEL_8;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v16[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, a2, a7, v14, a8);
    if (v16[0])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B5360690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetState(a7, a4);
  LODWORD(v19) = a8 - 1;
  *(&v19 + 4) = (a8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, a7, &v19, a8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = (v16[1] + 16 * v18);
      goto LABEL_8;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v16[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, a7, v14, a8);
    if (v16[0])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B536088C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D0E040;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  *(a1 + 32) = (*(**(a3 + 144) + 16))(*(a3 + 144), 0);
  *(a1 + 40) = (*(**(a3 + 152) + 16))(*(a3 + 152), 0);
  *(a1 + 48) = 0;
  *(a1 + 52) = xmmword_1B5AE3080;
  *(a1 + 84) = 0;
  if (a4 == 1)
  {
    *(a1 + 52) = 0xFFFFFFFF00000000;
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
{
  result = (*(**(a1 + 32) + 24))(*(a1 + 32));
  if (result != 3)
  {
    result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) != 4 || (result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2), result != 4))
      {
        if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) == 4 && (*(**(a1 + 40) + 24))(*(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) != *(a1 + 28) || (result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2), result != 4))
        {
          if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2);
          if (result != *(a1 + 28))
          {
            return 3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t *result, int a2)
{
  if (*(result + 6) != a2)
  {
    v2 = result;
    *(result + 6) = a2;
    v3 = (*(*(result[2] + 176) + 80) + 12 * a2);
    v4 = v3[1];
    fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetState(result[4], *v3);
    result = fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(*(v2[5] + 8), v4);
    *(v2 + 16) = *(v2 + 6);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(uint64_t a1, int a2)
{
  *(a1 + 48) = a2 == 0;
  if (*(a1 + 28))
  {
    if (a2)
    {
      return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, *(a1 + 40), *(a1 + 32));
    }
  }

  else if (a2)
  {
    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, a2, *(a1 + 32), *(a1 + 40));
  }

  return 1;
}

BOOL fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(*(a1 + 32)))
  {
    return 0;
  }

  v2 = *(*(a1 + 40) + 8);

  return fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Done(v2);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 68;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  else if (*(result + 28))
  {
    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(result, *(result + 40), *(result + 32));
  }

  else
  {
    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(result, *(result + 32), *(result + 40));
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D0E040;
  v2 = a1[4];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D0E040;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = (*(**(a2 + 32) + 16))(*(a2 + 32), a3);
  *(a1 + 40) = (*(**(a2 + 40) + 16))(*(a2 + 40), a3);
  *(a1 + 48) = 0;
  *(a1 + 52) = xmmword_1B5AE3080;
  *(a1 + 84) = *(a2 + 84);
  if (a3)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v6 = fst::LogMessage::LogMessage(&v11, __p);
    v7 = fst::cerr(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ComposeFstMatcher: safe copy not supported", 42);
    fst::LogMessage::~LogMessage(&v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 84) = 1;
  }

  if (*(a1 + 28) == 1)
  {
    *(a1 + 52) = vrev64_s32(*(a1 + 52));
  }

  return a1;
}

void sub_1B5361038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::Map<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::RemoveSomeInputSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>(uint64_t a1, uint64_t a2)
{
  kaldi::ConstIntegerSet<int>::ConstIntegerSet(v3, a2);
  fst::ArcMap<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::RemoveSomeInputSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>(a1, v3);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v4)
  {
    operator delete(v4);
  }
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::RemoveSomeInputSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 280))(a1, 0);
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v6 = 0;
      do
      {
        (*(*a1 + 296))(a1, v6, &v14);
        while (!(*(*v14 + 24))(v14))
        {
          v7 = (*(*v14 + 32))(v14);
          v8 = *v7;
          v9 = v7[1];
          v10 = kaldi::ConstIntegerSet<int>::count(a2, *v7);
          v11 = v8;
          if (v10)
          {
            v11 = 0;
          }

          v13[0] = v11 | v8 & 0xFFFFFFFF00000000;
          v13[1] = v9;
          (*(*v14 + 88))(v14, v13);
          (*(*v14 + 40))(v14);
        }

        if (v14)
        {
          (*(*v14 + 8))();
        }

        v12 = (*(*a1 + 32))(a1, v6);
        kaldi::ConstIntegerSet<int>::count(a2, 0);
        (*(*a1 + 184))(a1, v6, v12);
        v6 = (v6 + 1);
      }

      while (v6 < (*(*a1 + 160))(a1));
    }

    return (*(*a1 + 192))(a1, v5 & 0xFFFFFFFFCD70FFFFLL, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_1B5361404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::FstLmHandle::FstLmHandle(uint64_t a1, uint64_t a2, int a3, float a4, float a5)
{
  *(a1 + 664) = 0;
  *(a1 + 668) = a4;
  *(a1 + 672) = a5;
  *a1 = &unk_1F2D0E0E0;
  *(a1 + 656) = &unk_1F2D0E118;
  quasar::ModelLoader::ModelLoader((a1 + 8));
  *(a1 + 632) = 0u;
  *(a1 + 648) = a3;
  quasar::ModelLoader::readFstNetwork(a1 + 8, a2, &v11);
  v8 = v11;
  v11 = 0uLL;
  v9 = *(a1 + 640);
  *(a1 + 632) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    if (*(&v11 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
    }
  }

  return a1;
}

void sub_1B5361514(_Unwind_Exception *a1)
{
  v3 = *(v1 + 640);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  quasar::ModelLoader::~ModelLoader((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t quasar::FstLmHandle::FstLmHandle(uint64_t a1, uint64_t *a2, void *a3, int a4)
{
  v7 = *a2;
  *a1 = *a2;
  *(a1 + *(v7 - 24)) = a2[1];
  quasar::ModelLoader::ModelLoader((a1 + 8));
  v8 = a3[1];
  *(a1 + 632) = *a3;
  *(a1 + 640) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 648) = a4;
  return a1;
}

uint64_t quasar::FstLmHandle::FstLmHandle(uint64_t a1, void *a2, int a3, float a4, float a5)
{
  *(a1 + 664) = 0;
  *(a1 + 668) = a4;
  *(a1 + 672) = a5;
  *a1 = &unk_1F2D0E0E0;
  *(a1 + 656) = &unk_1F2D0E118;
  quasar::ModelLoader::ModelLoader((a1 + 8));
  v8 = a2[1];
  *(a1 + 632) = *a2;
  *(a1 + 640) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 648) = a3;
  return a1;
}

uint64_t quasar::FstLmHandle::FstLmHandle(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  *a1 = *a2;
  *(a1 + *(v5 - 24)) = a2[1];
  quasar::ModelLoader::ModelLoader((a1 + 8));
  v6 = *a3;
  *(a1 + 632) = *(*a3 + 632);
  v7 = *(v6 + 640);
  *(a1 + 640) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = *a3;
  }

  *(a1 + 648) = *(v6 + 648);
  return a1;
}

void quasar::FstLmHandle::AddTo(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, int a5, uint64_t a6, int a7, uint64_t a8)
{
  v8 = *(a1 + 632);
  v9 = *(a1 + 640);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v8;
    v12 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = *(a1 + 632);
    v12 = 0;
  }

  v10 = a4;
  v13 = -1;
  kaldi::quasar::DeterministicOnDemandFstCreator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::AddBackoffFst(a2, &v10, a3, a5, a6, a7, 0x20000, a8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1B536182C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::FstLmHandle::GetSize(quasar::FstLmHandle *this)
{
  v2 = *(this + 79);
  if (!v2)
  {
    return 0;
  }

  v11 = 0;
  (*(*v2 + 128))(v2, &v9);
  v3 = 0;
  for (i = 0; ; ++i)
  {
    if (!v9)
    {
      if (v11 >= v10)
      {
        return i;
      }

      v5 = *(this + 79);
      goto LABEL_9;
    }

    if ((*(*v9 + 16))(v9))
    {
      break;
    }

    v5 = *(this + 79);
    if (v9)
    {
      v6 = (*(*v9 + 24))();
      goto LABEL_10;
    }

LABEL_9:
    v6 = v11;
LABEL_10:
    v7 = (*(*v5 + 40))(v5, v6);
    if (v9)
    {
      (*(*v9 + 32))(v9);
    }

    else
    {
      ++v11;
    }

    v3 += v7;
  }

  if (v9)
  {
    (*(*v9 + 8))();
  }

  return i;
}

void sub_1B5361A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    quasar::FstLmHandle::GetSize();
  }

  _Unwind_Resume(exception_object);
}

void quasar::GeoMemories::recallLastRegionId(quasar::GeoMemories *this@<X0>, const quasar::GeoMemoriesConfig *a2@<X1>, std::string *a3@<X8>)
{
  if (*a2 == 1)
  {
    if (*(this + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *this, *(this + 1));
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *this;
      a3->__r_.__value_.__r.__words[2] = *(this + 2);
    }
  }

  else
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
  }
}

uint64_t Base64decode(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = 0;
  v3 = 3;
  do
  {
    v4 = pr2six[a2[v2]];
    ++v3;
    ++v2;
  }

  while (v4 < 0x40);
  if (v2 < 6)
  {
    v6 = v3 - 4;
  }

  else
  {
    do
    {
      *a1 = (pr2six[a2[1]] >> 4) | (4 * pr2six[*a2]);
      a1[1] = (pr2six[a2[2]] >> 2) | (16 * pr2six[a2[1]]);
      v5 = a1 + 3;
      a1[2] = pr2six[a2[3]] | (pr2six[a2[2]] << 6);
      a2 += 4;
      v3 -= 4;
      a1 += 3;
    }

    while (v3 > 8);
    v6 = v3 - 4;
    a1 = v5;
  }

  if (v6 >= 2)
  {
    *a1 = (pr2six[a2[1]] >> 4) | (4 * pr2six[*a2]);
    if (v6 == 2)
    {
      ++a1;
    }

    else
    {
      a1[1] = (pr2six[a2[2]] >> 2) | (16 * pr2six[a2[1]]);
      if (v6 == 4)
      {
        a1[2] = pr2six[a2[3]] | (pr2six[a2[2]] << 6);
        a1 += 3;
      }

      else
      {
        a1 += 2;
      }
    }
  }

  v7 = v2 + 2;
  v8 = v2 + 5;
  if (v7 >= 0)
  {
    v8 = v7;
  }

  *a1 = 0;
  return 3 * (v8 >> 2) - (-v6 & 3u);
}

uint64_t Base64encode(_BYTE *a1, uint64_t a2, int a3)
{
  if (a3 < 3)
  {
    LODWORD(v3) = 0;
    v5 = a1;
  }

  else
  {
    v3 = 0;
    v4 = (a2 + 2);
    v5 = a1;
    do
    {
      *v5 = basis_64[*(v4 - 2) >> 2];
      v5[1] = basis_64[(*(v4 - 1) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*(v4 - 2) & 3))];
      v5[2] = basis_64[(*v4 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (*(v4 - 1) & 0xF))];
      v6 = *v4;
      v4 += 3;
      v5[3] = basis_64[v6 & 0x3F];
      v5 += 4;
      v3 += 3;
    }

    while (v3 < (a3 - 2));
  }

  if (v3 < a3)
  {
    v7 = (a2 + v3);
    *v5 = basis_64[*v7 >> 2];
    if (v3 == a3 - 1)
    {
      v5[1] = basis_64[16 * (*v7 & 3)];
      v8 = 61;
    }

    else
    {
      v5[1] = basis_64[(16 * (*v7 & 3u)) | (v7[1] >> 4)];
      v8 = basis_64[4 * (v7[1] & 0xF)];
    }

    v5[2] = v8;
    v5[3] = 61;
    v5 += 4;
  }

  *v5 = 0;
  return (v5 - a1 + 1);
}

BOOL kaldi::WordHypLattice::Node::IsSucceededBy(kaldi::WordHypLattice::Node *this, kaldi::WordHypLattice::Node *const *a2)
{
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  v2 = this + 64;
  v3 = *(this + 9);
  if (v3 == this + 64)
  {
    goto LABEL_25;
  }

  do
  {
    v5 = *(v3 + 2);
    if (*(*(v5 + 8) + 132) <= *(*a2 + 33))
    {
      std::deque<kaldi::WordHypLattice::Node *>::push_back(v22, (v5 + 8));
      v5 = *(v3 + 2);
    }

    std::__tree<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>::__emplace_unique_key_args<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node * const&>(&v20, (v5 + 8));
    v3 = *(v3 + 1);
  }

  while (v3 != v2);
  v6 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
LABEL_25:
    v9 = 0;
  }

  else
  {
    do
    {
      v7 = v23;
      v8 = *(*(*(&v22[0] + 1) + ((v23 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v23 & 0x1FF));
      v9 = v8 == *a2;
      if (v8 == *a2)
      {
        break;
      }

      *&v23 = v23 + 1;
      *(&v23 + 1) = v6 - 1;
      if ((v7 + 1) >= 0x400)
      {
        operator delete(**(&v22[0] + 1));
        *(&v22[0] + 1) += 8;
        *&v23 = v23 - 512;
      }

      v10 = v8 + 8;
      for (i = v8[9]; i != v10; i = i[1])
      {
        v12 = i[2];
        v13 = *(v12 + 8);
        v14 = v21[0];
        if (!v21[0])
        {
          goto LABEL_19;
        }

        v15 = v21;
        do
        {
          v16 = v14[4];
          v17 = v16 >= v13;
          v18 = v16 < v13;
          if (v17)
          {
            v15 = v14;
          }

          v14 = v14[v18];
        }

        while (v14);
        if (v15 == v21 || v13 < v15[4])
        {
LABEL_19:
          if (*(v13 + 132) <= *(*a2 + 33))
          {
            std::deque<kaldi::WordHypLattice::Node *>::push_back(v22, (v12 + 8));
            v12 = i[2];
          }

          std::__tree<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>::__emplace_unique_key_args<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node * const&>(&v20, (v12 + 8));
        }
      }

      v6 = *(&v23 + 1);
    }

    while (*(&v23 + 1));
  }

  std::__tree<int>::destroy(&v20, v21[0]);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](v22);
  return v9;
}

void sub_1B5361EC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  std::__tree<int>::destroy(va, v5);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t *kaldi::operator<<(uint64_t *a1, uint64_t a2)
{
  v35[0] = 0;
  v35[1] = 0;
  v34 = v35;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (v4 != v3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v36.__locale_ = (v3 + v6);
      std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(&v34, (v3 + v6))[5] = v7++;
      v3 = *(a2 + 16);
      v4 = *(a2 + 24);
      v6 += 8;
    }

    while (v7 < (v4 - v3) >> 3);
  }

  if (v4 != v3)
  {
    v8 = 0;
    v9 = a1 + 3;
    v10 = a1 + 1;
    do
    {
      v11 = *(v3 + 8 * v8);
      v12 = v11 + 64;
      v13 = *(v11 + 72);
      if (v13 != v11 + 64)
      {
        do
        {
          v14 = *a1;
          *(v10 + *(*a1 - 24)) = *(v10 + *(*a1 - 24)) & 0xFFFFFF4F | 0x20;
          *(v9 + *(v14 - 24)) = 5;
          v15 = MEMORY[0x1B8C84C30](a1, v8);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " ", 1);
          v16 = *a1;
          *(v10 + *(*a1 - 24)) = *(v10 + *(*a1 - 24)) & 0xFFFFFF4F | 0x20;
          *(v9 + *(v16 - 24)) = 5;
          v36.__locale_ = (*(v13 + 16) + 8);
          v17 = std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(&v34, v36.__locale_);
          v18 = MEMORY[0x1B8C84C30](a1, v17[5]);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " ", 1);
          v19 = *(v13 + 16);
          v20 = v19 + 264;
          v21 = *(v19 + 287);
          v23 = *(v19 + 264);
          v22 = *(v19 + 272);
          if ((v21 & 0x80u) == 0)
          {
            v24 = v20;
          }

          else
          {
            v24 = v23;
          }

          if ((v21 & 0x80u) == 0)
          {
            v25 = v21;
          }

          else
          {
            v25 = v22;
          }

          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v24, v25);
          v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "(", 1);
          v28 = MEMORY[0x1B8C84C60](v27, *(*(v13 + 16) + 256));
          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ")", 1);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " ", 1);
          v30 = *a1;
          *(v10 + *(*a1 - 24)) = *(v10 + *(*a1 - 24)) & 0xFFFFFF4F | 0x20;
          *(v9 + *(v30 - 24)) = 4;
          std::ostream::operator<<();
          std::ios_base::getloc((a1 + *(*a1 - 24)));
          v31 = std::locale::use_facet(&v36, MEMORY[0x1E69E5318]);
          (v31->__vftable[2].~facet_0)(v31, 10);
          std::locale::~locale(&v36);
          std::ostream::put();
          std::ostream::flush();
          v13 = *(v13 + 8);
        }

        while (v13 != v12);
        v3 = *(a2 + 16);
        v4 = *(a2 + 24);
      }

      ++v8;
    }

    while (v8 < (v4 - v3) >> 3);
  }

  std::__tree<int>::destroy(&v34, v35[0]);
  return a1;
}

uint64_t kaldi::JoinVectorToString<int>(uint64_t *a1, const char *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    do
    {
      MEMORY[0x1B8C84C00](&v11, *(v4 + 4 * v5++));
      v4 = *a1;
      v6 = a1[1] - *a1;
      if (v5 < v6 >> 2)
      {
        v7 = strlen(a2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, a2, v7);
        v4 = *a1;
        v6 = a1[1] - *a1;
      }
    }

    while (v5 < v6 >> 2);
  }

  std::stringbuf::str();
  v10[0] = *MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v11 = v8;
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v15);
}

void sub_1B5362460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void kaldi::WordHypLattice::Arc::SetPhones(uint64_t a1, int **a2, kaldi::TransitionModel *this)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = v3 == *a2;
  v6 = v3 - *a2;
  *(a1 + 72) = v6;
  *(a1 + 560) = v6;
  if (!v5)
  {
    do
    {
      v9 = *v4;
      if (kaldi::TransitionModel::IsFinal(this, *v4))
      {
        v10 = kaldi::TransitionModel::TransitionIdToPhone(this, v9);
        std::vector<int>::push_back[abi:ne200100]((a1 + 104), &v10);
      }

      ++v4;
    }

    while (v4 != v3);
  }
}

uint64_t kaldi::WordHypLattice::Node::setTimestamps(uint64_t this)
{
  v1 = *(this + 16);
  if (v1)
  {
    v2 = *(this + 8);
    v3 = 0.0;
    if (v2 != this)
    {
      v4 = 1;
      do
      {
        v5 = *(*(v2 + 16) + 248);
        if (v4)
        {
          *(this + 132) = v5;
        }

        else
        {
          if (v5 < *(this + 132))
          {
            *(this + 132) = v5;
          }

          if (v5 <= *(this + 136))
          {
            goto LABEL_10;
          }
        }

        *(this + 136) = v5;
LABEL_10:
        v4 = 0;
        v3 = v3 + v5;
        v2 = *(v2 + 8);
      }

      while (v2 != this);
    }

    v6 = v3 / v1;
  }

  else
  {
    *(this + 132) = 0;
    *(this + 136) = 0;
    v6 = 0.0;
  }

  *(this + 140) = v6;
  return this;
}

uint64_t kaldi::WordHypLattice::Node::FindBestPathArc(kaldi::WordHypLattice::Node *this, int a2, int a3)
{
  v3 = this + 64;
  v4 = *(this + 9);
  if (v4 == this + 64)
  {
    result = 0;
    v9 = 0;
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    result = 0;
    do
    {
      v7 = *(v4 + 2);
      v8 = *(v7 + 49);
      if (*(v7 + 49))
      {
        result = *(v4 + 2);
      }

      v5 += v8 & a2;
      if (v8 == 1 && (a2 & 1) == 0)
      {
        break;
      }

      v4 = *(v4 + 1);
    }

    while (v4 != v3);
    v9 = v5 > 1;
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "No outgoing best-path arc found");
    goto LABEL_16;
  }

LABEL_12:
  if ((a2 & v9) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "More than one outgoing best-path arc found");
LABEL_16:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  return result;
}

void kaldi::WordHypLattice::~WordHypLattice(kaldi::WordHypLattice *this)
{
  v2 = *(this + 5);
  for (i = *(this + 6); v2 != i; ++v2)
  {
    if (*v2)
    {
      kaldi::WordHypLattice::Arc::~Arc(*v2);
      MEMORY[0x1B8C85350]();
    }
  }

  v4 = *(this + 2);
  for (j = *(this + 3); v4 != j; ++v4)
  {
    v6 = *v4;
    if (*v4)
    {
      kaldi::CuVector<float>::~CuVector(v6 + 19);
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((v6 + 11));
      std::__list_imp<char *>::clear(v6 + 8);
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((v6 + 3));
      std::__list_imp<char *>::clear(v6);
      MEMORY[0x1B8C85350](v6, 0x10A0C4094E47B5DLL);
    }
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  v7 = *(this + 5);
  if (v7)
  {
    *(this + 6) = v7;
    operator delete(v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    *(this + 3) = v8;
    operator delete(v8);
  }
}

uint64_t kaldi::WordHypLattice::StringToCriteria(uint64_t *a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v1 = *(a1 + 23);
    if (v1 != 4)
    {
      if (v1 != 12)
      {
        if (v1 != 13)
        {
          goto LABEL_30;
        }

        goto LABEL_15;
      }

      if (*a1 != 0x666E6F436E61654DLL || *(a1 + 2) != 1752457552)
      {
LABEL_30:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "StringToCriteria unexpected string");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
      }

      return 1;
    }

    if (*a1 != 1701736270)
    {
      goto LABEL_30;
    }

    return 0;
  }

  if (a1[1] == 4 && **a1 == 1701736270)
  {
    return 0;
  }

  if (a1[1] == 12 && **a1 == 0x666E6F436E61654DLL && *(*a1 + 8) == 1752457552)
  {
    return 1;
  }

  if (a1[1] != 13)
  {
    goto LABEL_30;
  }

  a1 = *a1;
LABEL_15:
  if (*a1 != 0x736F436C61746F54 || *(a1 + 5) != 0x6874615074736F43)
  {
    goto LABEL_30;
  }

  return 2;
}

_BYTE *kaldi::WordHypLattice::CriteriaToString@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 >= 3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "CriteriaToString unexpected string");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  v2 = off_1E7C1AAC0[a1];

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void kaldi::WordHypLattice::getWordHypLattice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[29] = *MEMORY[0x1E69E9840];
  kaldi::TopSortCompactLatticeIfNeeded(a3);
  v4 = (*(*a3 + 160))(a3);
  if (v4)
  {
    v5 = v4;
    std::vector<kaldi::WordHypLattice::Node *>::vector[abi:ne200100](v6, v4);
    if (v5 >= 1)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1B5363314(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B536334CLL);
}

void sub_1B5363344(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void *kaldi::InsertionOrderedSet<kaldi::WordHypLattice::Arc *>::insert(uint64_t a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>>>::find<kaldi::LatticeFasterOnlineDecoder::Token *>((a1 + 24), a2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void kaldi::WordHypLattice::RecomputeTopSortedNodes(kaldi::WordHypLattice *this)
{
  v1 = this + 16;
  v3 = this + 40;
  v2 = *(this + 5);
  *(this + 3) = *(this + 2);
  *(this + 6) = v2;
  *this = 1;
  if (*(this + 1))
  {
    v21[0] = 0;
    v21[1] = 0;
    v20 = v21;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    std::deque<kaldi::WordHypLattice::Node *>::push_back(v18, this + 1);
    for (i = *(&v19 + 1); *(&v19 + 1); i = *(&v19 + 1))
    {
      v17 = *(*(*(&v18[0] + 1) + ((v19 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v19 & 0x1FF));
      *&v19 = v19 + 1;
      *(&v19 + 1) = i - 1;
      if (v19 >= 0x400)
      {
        operator delete(**(&v18[0] + 1));
        *(&v18[0] + 1) += 8;
        *&v19 = v19 - 512;
      }

      std::vector<TVertex *>::push_back[abi:ne200100](v1, &v17);
      v5 = v17 + 64;
      for (j = *(v17 + 72); j != v5; j = *(j + 8))
      {
        std::vector<TVertex *>::push_back[abi:ne200100](v3, (j + 16));
        v7 = *(j + 16);
        v8 = *(v7 + 8);
        v9 = v21[0];
        if (!v21[0])
        {
          goto LABEL_15;
        }

        v10 = v21;
        do
        {
          v11 = v9[4];
          v12 = v11 >= v8;
          v13 = v11 < v8;
          if (v12)
          {
            v10 = v9;
          }

          v9 = v9[v13];
        }

        while (v9);
        if (v10 == v21 || v8 < v10[4])
        {
LABEL_15:
          v14 = *(v8 + 16);
          v22 = v7 + 8;
          *(std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,int>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,int>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,int>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(&v20, (v7 + 8)) + 10) = v14;
          v7 = *(j + 16);
        }

        v22 = v7 + 8;
        v15 = std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,int>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,int>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,int>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(&v20, (v7 + 8));
        v16 = *(v15 + 10) - 1;
        *(v15 + 10) = v16;
        if (!v16)
        {
          std::deque<kaldi::WordHypLattice::Node *>::push_back(v18, (*(j + 16) + 8));
        }
      }
    }

    std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](v18);
    std::__tree<int>::destroy(&v20, v21[0]);
  }
}

void sub_1B53635D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19)
{
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](&a11);
  std::__tree<int>::destroy(&a18, a19);
  _Unwind_Resume(a1);
}

void kaldi::WordHypLattice::RecomputeArcPosteriors(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + 1;
  if (a1[1])
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 != v7)
    {
      v66[0] = 0;
      v66[1] = 0;
      v64[1] = 0;
      v65 = v66;
      v63 = v64;
      v64[0] = 0;
      do
      {
        std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,double>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,double>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,double>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::Node *&,double const&>(&v65, v6);
        std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,double>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,double>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,double>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::Node *&,double const&>(&v63, v6++);
      }

      while (v6 != v7);
      v62[0] = v4;
      std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(&v65, v4)[5] = 0;
      v11 = a1[2];
      v12 = a1[3];
      if (v11 != v12)
      {
        do
        {
          v13 = *v11 + 64;
          for (i = *(*v11 + 72); i != v13; i = *(i + 8))
          {
            v15 = *(a2 + 24);
            if (!v15)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            v16 = (*(*v15 + 48))(v15, *(i + 16));
            v62[0] = v11;
            v17 = *(std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(&v65, v11) + 5);
            v62[0] = (*(i + 16) + 8);
            v18 = std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(&v65, v62[0]);
            v19 = v18[5];
            v20 = v19 - (v17 - v16);
            v21 = v17 - v16 - v19;
            v22 = v19 < v17 - v16;
            if (v19 >= v17 - v16)
            {
              v23 = v18[5];
            }

            else
            {
              v23 = v17 - v16;
            }

            if (v22)
            {
              v24 = v20;
            }

            else
            {
              v24 = v21;
            }

            if (v24 >= -36.0436534)
            {
              v25 = exp(v24);
              v23 = v23 + log1p(v25);
            }

            v62[0] = (*(i + 16) + 8);
            *(std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(&v65, v62[0]) + 5) = v23;
          }

          ++v11;
        }

        while (v11 != v12);
        v12 = a1[3];
      }

      v62[0] = v12 - 1;
      v26 = std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(&v65, v12 - 1);
      v62[0] = (a1[3] - 8);
      std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(&v63, v62[0])[5] = 0;
      v27 = a1[2];
      v28 = a1[3];
      while (v28 != v27)
      {
        v30 = *--v28;
        v29 = v30;
        v31 = *(v30 + 8);
        if (v31 != v30)
        {
          do
          {
            v32 = *(a2 + 24);
            if (!v32)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            v33 = (*(*v32 + 48))(v32, *(v31 + 16));
            v62[0] = v28;
            v34 = *(std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(&v63, v28) + 5);
            v62[0] = *(v31 + 16);
            v35 = std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(&v63, v62[0]);
            v36 = v34 - v33;
            v37 = v35[5];
            if (v37 >= v36)
            {
              v38 = v35[5];
            }

            else
            {
              v38 = v36;
            }

            if (v37 >= v36)
            {
              v39 = v36 - v37;
            }

            else
            {
              v39 = v37 - v36;
            }

            if (v39 >= -36.0436534)
            {
              v40 = exp(v39);
              v38 = v38 + log1p(v40);
            }

            v62[0] = *(v31 + 16);
            *(std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(&v63, v62[0]) + 5) = v38;
            v62[0] = *(v31 + 16);
            v41 = std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(&v65, v62[0]);
            v42 = *(a3 + 24);
            if (!v42)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            v43 = v41[5];
            v44 = v26[5];
            *(*(*v42 + 48))(v42, *(v31 + 16)) = v36 + v43 - v44;
            v31 = *(v31 + 8);
          }

          while (v31 != v29);
          v27 = a1[2];
        }
      }

      v62[0] = v27;
      v45 = std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(&v63, v27);
      v46 = v26[5];
      v47 = v46;
      v48 = v45[5];
      if (v47 != v48 && (COERCE_INT(fabs(v47 - v48)) > 2139095039 || vabds_f32(v47, v48) > ((fabsf(v47) + fabsf(v48)) * 0.00000001)) && kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
        v49 = *(a4 + 23);
        if (v49 >= 0)
        {
          v50 = a4;
        }

        else
        {
          v50 = *a4;
        }

        if (v49 >= 0)
        {
          v51 = *(a4 + 23);
        }

        else
        {
          v51 = *(a4 + 8);
        }

        v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, v50, v51);
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " Total forward probability over lattice = ", 42);
        v54 = MEMORY[0x1B8C84BE0](v53, v26[5]);
        v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, ", while total backward probability = ", 37);
        MEMORY[0x1B8C84BE0](v55, v45[5]);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v62);
        v46 = v26[5];
      }

      if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
        v56 = *(a4 + 23);
        if (v56 >= 0)
        {
          v57 = a4;
        }

        else
        {
          v57 = *a4;
        }

        if (v56 >= 0)
        {
          v58 = *(a4 + 23);
        }

        else
        {
          v58 = *(a4 + 8);
        }

        v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, v57, v58);
        v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, " Non-finite total probability in lattice (", 42);
        v61 = MEMORY[0x1B8C84BE0](v60, v26[5]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "). Numeric problems with model?", 31);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v62);
      }

      std::__tree<int>::destroy(&v63, v64[0]);
      std::__tree<int>::destroy(&v65, v66[0]);
    }
  }
}

void sub_1B5363B68(uint64_t a1, ...)
{
  va_start(va, a1);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  JUMPOUT(0x1B5363BA8);
}

void sub_1B5363BA4(_Unwind_Exception *a1)
{
  std::__tree<int>::destroy(v1 - 168, *(v1 - 160));
  std::__tree<int>::destroy(v1 - 144, *(v1 - 136));
  _Unwind_Resume(a1);
}

void kaldi::WordHypLattice::RecomputeNodeGraphLogProbs(kaldi::WordHypLattice *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v3 = *(this + 2);
    v4 = *(this + 3);
    if (v3 != v4)
    {
      v5 = *(this + 2);
      do
      {
        v6 = *v5++;
        *(v6 + 144) = 0xFFF0000000000000;
      }

      while (v5 != v4);
      *(v1 + 144) = 0;
      do
      {
        v7 = *v3;
        v8 = *v3 + 64;
        for (i = *(*v3 + 72); i != v8; i = *(i + 8))
        {
          v10 = *(i + 16);
          v11 = *(v10 + 8);
          v12 = *(v11 + 144);
          v13 = *(v7 + 144) - *(v10 + 40);
          if (v12 >= v13)
          {
            v14 = *(v11 + 144);
          }

          else
          {
            v14 = *(v7 + 144) - *(v10 + 40);
          }

          if (v12 >= v13)
          {
            v15 = v13 - v12;
          }

          else
          {
            v15 = v12 - v13;
          }

          if (v15 >= -36.0436534)
          {
            v16 = exp(v15);
            v14 = v14 + log1p(v16);
          }

          *(v11 + 144) = v14;
        }

        ++v3;
      }

      while (v3 != v4);
      v17 = *(this + 5);
      v18 = *(this + 6);
      while (v17 != v18)
      {
        v19 = *v17++;
        v19[30] = *(*v19 + 144);
      }
    }
  }
}

void kaldi::WordHypLattice::RecomputeBestPath(kaldi::WordHypLattice *this)
{
  v1 = (this + 8);
  if (*(this + 1))
  {
    v3 = *(this + 2);
    v4 = *(this + 3);
    if (v3 != v4)
    {
      v24[0] = 0;
      v24[1] = 0;
      v23 = v24;
      do
      {
        v5 = std::map<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken,std::less<kaldi::WordHypLattice::Node *>,std::allocator<std::pair<kaldi::WordHypLattice::Node * const,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>>>::operator[](&v23, v3);
        *v5 = 0x7FF0000000000000;
        v5[1] = 0;
        ++v3;
      }

      while (v3 != v4);
      *std::map<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken,std::less<kaldi::WordHypLattice::Node *>,std::allocator<std::pair<kaldi::WordHypLattice::Node * const,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>>>::operator[](&v23, v1) = 0;
      v6 = *(this + 2);
      v7 = *(this + 3);
      while (v6 != v7)
      {
        v8 = *v6 + 64;
        for (i = *(*v6 + 72); i != v8; i = *(i + 8))
        {
          v10 = *std::map<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken,std::less<kaldi::WordHypLattice::Node *>,std::allocator<std::pair<kaldi::WordHypLattice::Node * const,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>>>::operator[](&v23, v6);
          v11 = *(i + 16);
          v12 = *(v11 + 24);
          v13 = *(v11 + 40);
          v22[0] = *(v11 + 8);
          v14 = v10 + v12 + v13;
          if (v14 < *std::map<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken,std::less<kaldi::WordHypLattice::Node *>,std::allocator<std::pair<kaldi::WordHypLattice::Node * const,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>>>::operator[](&v23, v22))
          {
            *std::map<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken,std::less<kaldi::WordHypLattice::Node *>,std::allocator<std::pair<kaldi::WordHypLattice::Node * const,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>>>::operator[](&v23, v22) = v14;
            v15 = *(i + 16);
            std::map<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken,std::less<kaldi::WordHypLattice::Node *>,std::allocator<std::pair<kaldi::WordHypLattice::Node * const,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>>>::operator[](&v23, v22)[1] = v15;
          }
        }

        ++v6;
      }

      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "best cost = ", 12);
        v17 = std::map<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken,std::less<kaldi::WordHypLattice::Node *>,std::allocator<std::pair<kaldi::WordHypLattice::Node * const,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>>>::operator[](&v23, (*(this + 3) - 8));
        MEMORY[0x1B8C84BE0](v16, *v17);
        kaldi::KaldiLogMessage::~KaldiLogMessage(v22);
      }

      v18 = *(this + 5);
      v19 = *(this + 6);
      while (v18 != v19)
      {
        v20 = *v18++;
        *(v20 + 49) = 0;
      }

      v22[0] = *(*(this + 3) - 8);
      if (v22[0].__locale_ != *(this + 1))
      {
        do
        {
          v21 = std::map<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken,std::less<kaldi::WordHypLattice::Node *>,std::allocator<std::pair<kaldi::WordHypLattice::Node * const,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>>>::operator[](&v23, v22)[1];
          *(v21 + 49) = 1;
          v22[0] = *v21;
        }

        while (v22[0].__locale_ != *v1);
      }

      std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>>>::destroy(v24[0]);
    }
  }
}

uint64_t kaldi::WordHypLattice::InitNodeAndArcTimestamps(uint64_t this)
{
  v1 = *(this + 16);
  v2 = *(this + 24);
  while (v1 != v2)
  {
    this = kaldi::WordHypLattice::Node::setTimestamps(*v1);
    v3 = *v1 + 64;
    v4 = *(*v1 + 72);
    if (v4 != v3)
    {
      v5 = *(*v1 + 140);
      do
      {
        *(*(v4 + 16) + 248) = *(*(v4 + 16) + 52) + v5;
        v4 = *(v4 + 8);
      }

      while (v4 != v3);
    }

    ++v1;
  }

  return this;
}

uint64_t kaldi::WordHypLattice::ReassignNodeIds(uint64_t this)
{
  v1 = *(this + 16);
  v2 = *(this + 24);
  v3 = v2 - v1;
  if (v2 != v1)
  {
    v4 = 0;
    v5 = v3 >> 3;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    do
    {
      *(*(v1 + 8 * v4) + 184) = v4;
      ++v4;
    }

    while (v5 != v4);
  }

  return this;
}

uint64_t kaldi::WordHypLattice::ReassignArcIds(uint64_t this)
{
  v1 = *(this + 40);
  v2 = *(this + 48);
  v3 = v2 - v1;
  if (v2 != v1)
  {
    v4 = 0;
    v5 = v3 >> 3;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    do
    {
      *(*(v1 + 8 * v4) + 456) = v4;
      ++v4;
    }

    while (v5 != v4);
  }

  return this;
}

void kaldi::WordHypLattice::RetrieveConfidenceByTokens(kaldi::WordHypLattice *this@<X0>, void *a2@<X8>)
{
  if (*(this + 1) && (*this & 1) != 0)
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
    v3 = *(this + 5);
    for (i = *(this + 6); v3 != i; v3 += 8)
    {
      std::optional<std::string>::value_or[abi:ne200100]<std::string&>(*v3 + 464, *v3 + 264, &__p);
      p_p = &__p;
      v5 = std::__tree<std::__value_type<std::string,std::vector<kaldi::TimestampsAndConfidence>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<kaldi::TimestampsAndConfidence>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<kaldi::TimestampsAndConfidence>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &__p.__r_.__value_.__l.__data_);
      v6 = v5;
      v7 = *(*v3 + 52);
      v8 = *(*v3 + 248) - v7;
      v9 = *(*v3 + 32);
      v10 = v5[8];
      v11 = v5[9];
      if (v10 >= v11)
      {
        v13 = v5[7];
        v14 = v10 - v13;
        v15 = (v10 - v13) >> 4;
        v16 = v15 + 1;
        if ((v15 + 1) >> 60)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v17 = v11 - v13;
        if (v17 >> 3 > v16)
        {
          v16 = v17 >> 3;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>((v5 + 7), v16);
        }

        v18 = 16 * v15;
        *v18 = v8;
        *(v18 + 4) = v7;
        *(v18 + 8) = v9;
        v12 = 16 * v15 + 16;
        memcpy(0, v13, v14);
        v19 = v6[7];
        v6[7] = 0;
        v6[8] = v12;
        v6[9] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v10 = v8;
        *(v10 + 4) = v7;
        v12 = v10 + 16;
        *(v10 + 8) = v9;
      }

      v6[8] = v12;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
  }
}

void sub_1B536419C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::destroy(v15, *(v15 + 8));
  _Unwind_Resume(a1);
}

void *std::map<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken,std::less<kaldi::WordHypLattice::Node *>,std::allocator<std::pair<kaldi::WordHypLattice::Node * const,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>>>::operator[](uint64_t a1, unint64_t *a2)
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
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

kaldi::WordHypLattice::Node *kaldi::WordHypLattice::GetBestPath(void *a1, uint64_t a2, void ***a3)
{
  *(a2 + 8) = *a2;
  std::vector<std::string>::clear[abi:ne200100](a3);
  result = a1[1];
  if (result)
  {
    v7 = a1[3];
    if (a1[2] != v7)
    {
      while (result != *(v7 - 8))
      {
        BestPathArc = kaldi::WordHypLattice::Node::FindBestPathArc(result, 1, 1);
        if (!BestPathArc)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
          std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "arc != nullptr");
          goto LABEL_14;
        }

        v9 = BestPathArc;
        std::vector<int>::push_back[abi:ne200100](a2, (BestPathArc + 456));
        std::vector<std::string>::push_back[abi:ne200100](a3, (v9 + 264));
        result = *(v9 + 8);
        v7 = a1[3];
      }

      v10 = a1[5];
      v11 = a1[6];
      if (v10 == v11)
      {
        v12 = 0;
      }

      else
      {
        LODWORD(v12) = 0;
        do
        {
          v13 = *v10++;
          v12 = v12 + *(v13 + 49);
        }

        while (v10 != v11);
      }

      if (v12 != (*(a2 + 8) - *a2) >> 2)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Num arcs in best path =", 23);
        v15 = MEMORY[0x1B8C84C30](v14, (*(a2 + 8) - *a2) >> 2);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " but num arcs marked =", 22);
        MEMORY[0x1B8C84C00](v16, v12);
LABEL_14:
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
      }
    }
  }

  return result;
}

void kaldi::WordHypLattice::GetBestMeanConfPath(void *a1, const void **a2, unint64_t *a3, _DWORD *a4)
{
  v4 = a1 + 1;
  if (a1[1] && a1[2] != a1[3] && a1[5] != a1[6])
  {
    v80[0] = 0;
    v80[1] = 0;
    v79 = v80;
    v9 = std::map<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>::operator[](&v79, v4);
    v70 = v4;
    v71 = a4;
    v72 = a2;
    v73 = a3;
    LODWORD(v78[0].__locale_) = 0;
    *std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>::operator[](v9, v78) = 0;
    v10 = a1[2];
    v11 = a1[3];
    v74 = a1;
    v75 = v11;
    while (v10 != v11)
    {
      v12 = *(*v10 + 72);
      v76 = *v10 + 64;
      if (v12 != v76)
      {
        while (1)
        {
          v13 = v10;
          v14 = std::map<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>::operator[](&v79, v10);
          v16 = (v14 + 1);
          v15 = *v14;
          if (*v14 != v14 + 1)
          {
            break;
          }

LABEL_37:
          v12 = *(v12 + 8);
          v10 = v13;
          if (v12 == v76)
          {
            goto LABEL_38;
          }
        }

        while (2)
        {
          v17 = v15[5];
          v18 = *(v12 + 16);
          v19 = *(v18 + 32);
          v78[0] = *(v18 + 8);
          v20 = *(v15 + 8);
          v21 = std::map<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>::operator[](&v79, v78);
          v22 = v20 + 1;
          v25 = v21[1];
          v23 = v21 + 1;
          v24 = v25;
          if (!v25)
          {
            goto LABEL_15;
          }

          v26 = v23;
          do
          {
            if (*(v24 + 32) > v20)
            {
              v26 = v24;
            }

            v24 = *(v24 + 8 * (*(v24 + 32) <= v20));
          }

          while (v24);
          if (v26 == v23 || v22 < *(v26 + 8))
          {
LABEL_15:
            v26 = v23;
          }

          v27 = v17 + v19;
          if (v26 == std::map<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>::operator[](&v79, v78) + 1)
          {
            v29 = *(v12 + 16);
            v30 = std::map<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>::operator[](&v79, v78)[1];
            if (!v30)
            {
LABEL_29:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v26 = v30;
                v31 = *(v30 + 32);
                if (v22 >= v31)
                {
                  break;
                }

                v30 = *v26;
                if (!*v26)
                {
                  goto LABEL_29;
                }
              }

              if (v31 > v20)
              {
                break;
              }

              v30 = v26[1];
              if (!v30)
              {
                goto LABEL_29;
              }
            }
          }

          else
          {
            v28 = *(v26 + 5);
            if (v27 > v28)
            {
              v29 = *(v12 + 16);
              break;
            }

            if (v27 != v28 || (v29 = *(v12 + 16), (*(v29 + 49) & 1) == 0))
            {
LABEL_31:
              v32 = *(v15 + 1);
              if (v32)
              {
                do
                {
                  v33 = v32;
                  v32 = *v32;
                }

                while (v32);
              }

              else
              {
                do
                {
                  v33 = *(v15 + 2);
                  v34 = *v33 == v15;
                  v15 = v33;
                }

                while (!v34);
              }

              v15 = v33;
              if (v33 == v16)
              {
                goto LABEL_37;
              }

              continue;
            }
          }

          break;
        }

        *(v26 + 5) = v27;
        v26[6] = v29;
        goto LABEL_31;
      }

LABEL_38:
      ++v10;
      v11 = v75;
    }

    v35 = v74[5];
    v36 = v74[6];
    while (v35 != v36)
    {
      v37 = *v35++;
      *(v37 + 48) = 0;
    }

    v38 = std::map<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>::operator[](&v79, (v74[3] - 8));
    v40 = v38 + 1;
    v39 = *v38;
    if (*v38 == v38 + 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = 0;
      v42 = kaldi::g_kaldi_verbose_level;
      v43 = -INFINITY;
      do
      {
        v44 = *(v39 + 8);
        v45 = *(v39 + 5) / v44;
        if (v42 >= 1)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(v78, 1);
          v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "path len=", 9);
          v47 = MEMORY[0x1B8C84C00](v46, *(v39 + 8));
          v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " mean conf=", 11);
          MEMORY[0x1B8C84BE0](v48, v45);
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(v78);
          v42 = kaldi::g_kaldi_verbose_level;
          v44 = *(v39 + 8);
        }

        if (v45 > v43)
        {
          v43 = v45;
          v41 = v44;
        }

        v49 = v39[1];
        if (v49)
        {
          do
          {
            v50 = v49;
            v49 = *v49;
          }

          while (v49);
        }

        else
        {
          do
          {
            v50 = v39[2];
            v34 = *v50 == v39;
            v39 = v50;
          }

          while (!v34);
        }

        v39 = v50;
      }

      while (v50 != v40);
    }

    *v71 = 0;
    v78[0] = *(v74[3] - 8);
    if (v78[0].__locale_ != v74[1])
    {
      do
      {
        v51 = std::map<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>::operator[](&v79, v78);
        v77 = v41;
        v52 = std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>::operator[](v51, &v77);
        v53 = v52[1];
        *(v53 + 48) = 1;
        std::vector<int>::push_back[abi:ne200100](v72, (v53 + 456));
        std::vector<std::string>::push_back[abi:ne200100](v73, (v52[1] + 264));
        v54 = v52[1];
        if (*(v54 + 460) == 1)
        {
          ++*v71;
        }

        v78[0] = *v54;
        --v41;
      }

      while (v78[0].__locale_ != *v70);
    }

    v55 = *v72;
    v56 = v72[1];
    v57 = v56 - 4;
    if (*v72 != v56 && v57 > v55)
    {
      v59 = v55 + 4;
      do
      {
        v60 = *(v59 - 1);
        *(v59 - 1) = *v57;
        *v57 = v60;
        v57 -= 4;
        v61 = v59 >= v57;
        v59 += 4;
      }

      while (!v61);
    }

    v62 = *v73;
    v63 = v73[1];
    v64 = v63 - 24;
    if (*v73 != v63 && v64 > v62)
    {
      v66 = v62 + 24;
      do
      {
        v67 = *(v66 - 8);
        v68 = *(v66 - 24);
        v69 = *(v64 + 16);
        *(v66 - 24) = *v64;
        *(v66 - 8) = v69;
        *v64 = v68;
        *(v64 + 16) = v67;
        v64 -= 24;
        v61 = v66 >= v64;
        v66 += 24;
      }

      while (!v61);
    }

    std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>>>::destroy(v80[0]);
  }
}

void *std::map<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>::operator[](uint64_t a1, unint64_t *a2)
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
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>::operator[](uint64_t a1, int *a2)
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
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t kaldi::WordHypLattice::GetNBestPath(void *a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  v22[4] = *MEMORY[0x1E69E9840];
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "GetNBestPath: criteria ", 23);
    kaldi::WordHypLattice::CriteriaToString(a4, __p);
    if ((v19 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v9 = v19;
    }

    else
    {
      v9 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    kaldi::KaldiLogMessage::~KaldiLogMessage(v20);
  }

  if (a4 == 2)
  {
    v21[0] = &unk_1F2D0E508;
    v21[3] = v21;
    kaldi::WordHypLattice::GetNbestPath(a1);
    return std::__function::__value_func<double ()(kaldi::WordHypLattice::Arc const&)>::~__value_func[abi:ne200100](v21);
  }

  else
  {
    if (a4 != 1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, "GetNBestPath unexpected criteria");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
    }

    v10 = a1[5];
    v11 = a1[6];
    while (v10 != v11)
    {
      v12 = *v10++;
      *(v12 + 48) = 0;
    }

    v22[0] = &unk_1F2D0E488;
    v22[3] = v22;
    kaldi::WordHypLattice::GetNbestPath(a1);
    result = std::__function::__value_func<double ()(kaldi::WordHypLattice::Arc const&)>::~__value_func[abi:ne200100](v22);
    v14 = *a2;
    if (*a2 != a2[1])
    {
      v15 = *v14;
      for (i = v14[1]; v15 != i; *(v17 + 48) = 1)
      {
        v17 = *v15++;
      }
    }
  }

  return result;
}

void sub_1B5364D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::WordHypLattice::GetNbestPath(void *result)
{
  if (result[1] && result[2] != result[3] && result[5] != result[6])
  {
    operator new();
  }

  return result;
}

void sub_1B5365590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  __p = (v35 - 128);
  std::vector<std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>>>>::destroy(a35);
  std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>>>>::destroy(*(v35 - 168));
  *(v35 - 128) = v35 - 152;
  std::vector<std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken>>::__destroy_vector::operator()[abi:ne200100]((v35 - 128));
  _Unwind_Resume(a1);
}

const void **std::vector<std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *result;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v15[4] = v2;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken>>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy(v10 - v11, *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken>>::~__split_buffer(v15);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v2[1] = v5;
  return result;
}

uint64_t kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap::push(uint64_t a1, __int128 *a2, int a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = (v6 - *a1) >> 4;
  if (v7 >= a3)
  {
    v8 = *v5;
    v9 = **v5;
    v10 = **a2;
    if (v9 >= v10 && (v9 != v10 || *(*(*a2 + 8) + 49) != 1))
    {
      return 0;
    }

    if (v7 >= 2)
    {
      v11 = 0;
      v12 = v5[1];
      v13 = *a1;
      *v5 = 0;
      v5[1] = 0;
      do
      {
        v14 = &v13[2 * v11 + 2];
        v15 = 2 * v11;
        v11 = (2 * v11) | 1;
        v16 = v15 + 2;
        if (v16 < v7 && **v14 > **(v14 + 16))
        {
          v14 += 16;
          v11 = v16;
        }

        v17 = *v14;
        *v14 = 0;
        *(v14 + 8) = 0;
        v18 = v13[1];
        *v13 = v17;
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        v13 = v14;
      }

      while (v11 <= ((v7 - 2) >> 1));
      if (v14 == v6 - 2)
      {
        v23 = *(v14 + 8);
        *v14 = v8;
        *(v14 + 8) = v12;
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }
      }

      else
      {
        v19 = *(v6 - 1);
        *(v6 - 2) = 0;
        *(v6 - 1) = 0;
        v20 = *(v14 + 8);
        *v14 = v19;
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        v21 = *(v6 - 1);
        *(v6 - 2) = v8;
        *(v6 - 1) = v12;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenGreater &,std::__wrap_iter<std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken> *>>(v5, v14 + 16, (v14 + 16 - v5) >> 4);
      }
    }

    v24 = *(a1 + 8);
    v25 = *(v24 - 8);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    v6 = (v24 - 16);
    *(a1 + 8) = v24 - 16;
  }

  v26 = *(a1 + 16);
  if (v6 >= v26)
  {
    v29 = (v6 - *a1) >> 4;
    if ((v29 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v30 = v26 - *a1;
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

    v39[4] = a1;
    if (v32)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken>>>(v32);
    }

    v33 = 16 * v29;
    v34 = *a2;
    *(16 * v29) = *a2;
    if (*(&v34 + 1))
    {
      atomic_fetch_add_explicit((*(&v34 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v28 = v33 + 16;
    v35 = *(a1 + 8) - *a1;
    v36 = v33 - v35;
    memcpy((v33 - v35), *a1, v35);
    v37 = *a1;
    *a1 = v36;
    *(a1 + 8) = v28;
    v38 = *(a1 + 16);
    *(a1 + 16) = 0;
    v39[2] = v37;
    v39[3] = v38;
    v39[0] = v37;
    v39[1] = v37;
    std::__split_buffer<std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken>>::~__split_buffer(v39);
  }

  else
  {
    v27 = *(a2 + 1);
    *v6 = *a2;
    v6[1] = v27;
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = (v6 + 2);
  }

  *(a1 + 8) = v28;
  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenGreater &,std::__wrap_iter<std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken> *>>(*a1, v28, (v28 - *a1) >> 4);
  return 1;
}

void kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap::get_sorted(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = a1[1];
  v3 = (v2 - *a1);
  if (v2 != *a1)
  {
    if (!((v3 >> 4) >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken>>>(v3 >> 4);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v4 = 126 - 2 * __clz(v3 >> 4);
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenGreater &,std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken> *,false>(0, v3, v5, 1);
}

uint64_t *std::map<int,std::vector<std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken>>>::operator[](uint64_t a1, int *a2)
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
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::vector<std::vector<kaldi::WordHypLattice::Arc *>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<kaldi::WordHypLattice::Arc *>>::__emplace_back_slow_path<std::vector<kaldi::WordHypLattice::Arc *> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<kaldi::WordHypLattice::Arc *>>::__construct_one_at_end[abi:ne200100]<std::vector<kaldi::WordHypLattice::Arc *> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t kaldi::WordHypLattice::RecomputeNodeTimestamps(uint64_t this)
{
  v1 = *(this + 16);
  v2 = *(this + 24);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = kaldi::WordHypLattice::Node::setTimestamps(v3);
  }

  return this;
}

void kaldi::WordHypLattice::GetTimeSortedNodes(kaldi::WordHypLattice *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<kaldi::WordHypLattice::Node *>::__init_with_size[abi:ne200100]<kaldi::WordHypLattice::Node **,kaldi::WordHypLattice::Node **>(a2, *(this + 2), *(this + 3), (*(this + 3) - *(this + 2)) >> 3);
  v3 = *a2;
  v4 = a2[1];
  v5 = &v4[-*a2];
  v6 = v5 >> 3;
  if (v5 >> 3 < 129)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = v5 >> 3;
    while (1)
    {
      v9 = operator new(8 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(v3, v4, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_1B5365D80(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::WordHypLattice::MergeNodes(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = result;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v7 = *a3;
      v8 = *v4;
      v9 = *(*v4 + 8);
      if (v9 != *v4)
      {
        do
        {
          result = kaldi::InsertionOrderedSet<kaldi::WordHypLattice::Arc *>::insert(v7, v9 + 2);
          v9 = v9[1];
        }

        while (v9 != v8);
        v7 = *a3;
        v8 = *v4;
      }

      v10 = v8[9];
      if (v10 != v8 + 8)
      {
        do
        {
          result = kaldi::InsertionOrderedSet<kaldi::WordHypLattice::Arc *>::insert(v7 + 64, v10 + 2);
          v10 = v10[1];
        }

        while (v10 != v8 + 8);
        v8 = *v4;
      }

      v11 = v8[1];
      if (v11 != v8)
      {
        v12 = *a3;
        do
        {
          *(v11[2] + 8) = v12;
          v11 = v11[1];
        }

        while (v11 != v8);
        v8 = *v4;
      }

      v13 = v8[9];
      if (v13 == v8 + 8)
      {
        goto LABEL_16;
      }

      v14 = *a3;
      do
      {
        **(v13 + 16) = v14;
        v13 = *(v13 + 8);
      }

      while (v13 != v8 + 8);
      v8 = *v4;
      if (*v4)
      {
LABEL_16:
        kaldi::CuVector<float>::~CuVector(v8 + 19);
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((v8 + 11));
        std::__list_imp<char *>::clear(v8 + 8);
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((v8 + 3));
        std::__list_imp<char *>::clear(v8);
        result = MEMORY[0x1B8C85350](v8, 0x10A0C4094E47B5DLL);
      }

      v4 += 8;
    }

    while (v4 != v5);
  }

  *v3 = 0;
  return result;
}

void kaldi::WordHypLattice::DeleteArc(kaldi::WordHypLattice *this, kaldi::WordHypLattice::Arc **a2)
{
  kaldi::InsertionOrderedSet<kaldi::WordHypLattice::Arc *>::erase(**a2 + 64, *a2);
  kaldi::InsertionOrderedSet<kaldi::WordHypLattice::Arc *>::erase(*(*a2 + 1), *a2);
  v4 = *a2;
  if (*(**a2 + 80) && *(*(v4 + 8) + 16))
  {
    *this = 0;
LABEL_7:
    kaldi::WordHypLattice::Arc::~Arc(v4);
    MEMORY[0x1B8C85350]();
    return;
  }

  std::vector<kaldi::WordHypLattice::Node *>::vector[abi:ne200100](__p, 1uLL);
  kaldi::WordHypLattice::MergeNodes(this, __p, *a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v4 = *a2;
  *this = 0;
  if (v4)
  {
    goto LABEL_7;
  }
}

void sub_1B5365FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *kaldi::InsertionOrderedSet<kaldi::WordHypLattice::Arc *>::erase(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  result = std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>>>::find<kaldi::LatticeFasterOnlineDecoder::Token *>((a1 + 24), &v8);
  if (result)
  {
    v4 = result;
    v5 = result[3];
    v7 = *v5;
    v6 = v5[1];
    *(v7 + 8) = v6;
    *v6 = v7;
    --*(a1 + 16);
    operator delete(v5);
    return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase((a1 + 24), v4);
  }

  return result;
}

kaldi::WordHypLattice *kaldi::WordHypLattice::WordHypLattice(kaldi::WordHypLattice *this, const kaldi::WordHypLattice *a2)
{
  *this = 1;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v4 = *(a2 + 4);
    *(this + 10) = *(a2 + 10);
    *(this + 4) = v4;
  }

  if (*(a2 + 1))
  {
    kaldi::WordHypLattice::doUnion(this, a2);
    kaldi::WordHypLattice::RecomputeTopSortedNodes(this);
    kaldi::WordHypLattice::InitNodeAndArcTimestamps(this);
    v5 = *(this + 2);
    v6 = *(this + 3);
    v7 = v6 - v5;
    if (v6 != v5)
    {
      v8 = 0;
      v9 = v7 >> 3;
      if (v9 <= 1)
      {
        v9 = 1;
      }

      do
      {
        *(*(v5 + 8 * v8) + 184) = v8;
        ++v8;
      }

      while (v9 != v8);
    }

    v10 = *(this + 5);
    v11 = *(this + 6);
    v12 = v11 - v10;
    if (v11 != v10)
    {
      v13 = 0;
      v14 = v12 >> 3;
      if (v14 <= 1)
      {
        v14 = 1;
      }

      do
      {
        *(*(v10 + 8 * v13) + 456) = v13;
        ++v13;
      }

      while (v14 != v13);
    }
  }

  return this;
}

void sub_1B5366148(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  if (v3)
  {
    v1[6] = v3;
    operator delete(v3);
  }

  v4 = v1[2];
  if (v4)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::WordHypLattice::doUnion(kaldi::WordHypLattice *this, const kaldi::WordHypLattice *a2)
{
  if (*(a2 + 1))
  {
    if (!*(this + 1))
    {
      operator new();
    }

    if (*(a2 + 3) - *(a2 + 2) != 8)
    {
      if (*(this + 3) - *(this + 2) == 8)
      {
        operator new();
      }

      v19[0] = 0;
      v19[1] = 0;
      v18 = v19;
      v4 = *(this + 1);
      v20 = (a2 + 8);
      std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::Node *>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::Node *>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::Node *>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(&v18, a2 + 1)[5] = v4;
      v5 = *(this + 3);
      if (*(this + 2) == v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = *(v5 - 8);
      }

      v7 = *(a2 + 3);
      if (*(a2 + 2) == v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v7 - 8);
      }

      v17 = v8;
      v20 = &v17;
      std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::Node *>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::Node *>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::Node *>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(&v18, &v17)[5] = v6;
      v9 = *(a2 + 2);
      for (i = *(a2 + 3); v9 != i; ++v9)
      {
        v10 = v19[0];
        if (!v19[0])
        {
          goto LABEL_22;
        }

        v11 = *v9;
        v12 = v19;
        do
        {
          v13 = v10[4];
          v14 = v13 >= v11;
          v15 = v13 < v11;
          if (v14)
          {
            v12 = v10;
          }

          v10 = v10[v15];
        }

        while (v10);
        if (v12 == v19 || v11 < v12[4])
        {
LABEL_22:
          operator new();
        }

        if (*(v11 + 72) != v11 + 64)
        {
          operator new();
        }
      }

      *this = 0;
      std::__tree<int>::destroy(&v18, v19[0]);
    }
  }
}

void kaldi::WordHypLattice::Arc::~Arc(void **this)
{
  if (*(this + 552) == 1 && *(this + 551) < 0)
  {
    operator delete(this[66]);
  }

  if (*(this + 520) == 1 && *(this + 519) < 0)
  {
    operator delete(this[62]);
  }

  if (*(this + 488) == 1 && *(this + 487) < 0)
  {
    operator delete(this[58]);
  }

  kaldi::CuVector<float>::~CuVector(this + 53);
  kaldi::CuVector<float>::~CuVector(this + 49);
  kaldi::CuVector<float>::~CuVector(this + 45);
  kaldi::CuVector<float>::~CuVector(this + 41);
  kaldi::CuVector<float>::~CuVector(this + 37);
  if (*(this + 287) < 0)
  {
    operator delete(this[33]);
  }

  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

  v4 = this + 21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = this[18];
  if (v2)
  {
    this[19] = v2;
    operator delete(v2);
  }

  v3 = this[13];
  if (v3)
  {
    this[14] = v3;
    operator delete(v3);
  }

  v4 = this + 10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
}

kaldi::WordHypLattice::Arc *kaldi::WordHypLattice::Arc::Arc(kaldi::WordHypLattice::Arc *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 1) = vdupq_n_s64(0x7FF8000000000000uLL);
  *(this + 2) = xmmword_1B5AEED50;
  *(this + 24) = 0;
  *(this + 13) = 2143289344;
  *(this + 56) = xmmword_1B5AEED60;
  *(this + 18) = 2143289344;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  *(this + 17) = 0x3FF0000000000000;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 30) = 0x7FF8000000000000;
  *(this + 31) = vneg_f32(0x3F0000003FLL);
  *(this + 32) = -1;
  std::string::basic_string[abi:ne200100]<0>(this + 264, "");
  *(this + 72) = -1;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 37) = &unk_1F2D3AC18;
  *(this + 38) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 41) = &unk_1F2D3AC18;
  *(this + 42) = 0;
  *(this + 47) = 0;
  *(this + 48) = 0;
  *(this + 45) = &unk_1F2D3AC18;
  *(this + 46) = 0;
  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 49) = &unk_1F2D3AC18;
  *(this + 50) = 0;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 53) = &unk_1F2D3AC18;
  *(this + 54) = 0;
  *(this + 57) = -1;
  *(this + 464) = 0;
  *(this + 488) = 0;
  *(this + 496) = 0;
  *(this + 520) = 0;
  *(this + 528) = 0;
  *(this + 552) = 0;
  *(this + 140) = 0;
  return this;
}

void sub_1B53669D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 239) < 0)
  {
    operator delete(*(v2 + 216));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 152) = v5;
    operator delete(v5);
  }

  v6 = *(v2 + 104);
  if (v6)
  {
    *(v2 + 112) = v6;
    operator delete(v6);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenGreater &,std::__wrap_iter<std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = v3 >> 1;
    v6 = (a1 + 16 * (v3 >> 1));
    v7 = (a2 - 16);
    v8 = *(a2 - 16);
    if (**v6 > *v8)
    {
      v9 = *(a2 - 8);
      *v7 = 0;
      *(a2 - 8) = 0;
      v10 = *v6;
      do
      {
        v11 = v6;
        v12 = v6[1];
        *v11 = 0;
        v11[1] = 0;
        v13 = v7[1];
        *v7 = v10;
        v7[1] = v12;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (a1 + 16 * v5);
        v10 = *v6;
        v7 = v11;
      }

      while (**v6 > *v8);
      v14 = v11[1];
      *v11 = v8;
      v11[1] = v9;
      if (v14)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }
  }
}

uint64_t std::__split_buffer<std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenGreater &,std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken> *,false>(double **a1, char *a2, uint64_t a3, char a4)
{
LABEL_1:
  v213 = a2 - 8;
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = &a2[-v8] >> 4;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v132 = a1[2];
          v133 = *v132;
          v134 = *a1;
          v135 = **a1;
          v136 = *(a2 - 2);
          v137 = *v136;
          if (*v132 <= v135)
          {
            if (v137 <= v133)
            {
              return;
            }

            a1[2] = v136;
            *(a2 - 2) = v132;
            v197 = a1[3];
            v213 = (a1 + 3);
            a1[3] = *(a2 - 1);
            *(a2 - 1) = v197;
            v198 = a1[2];
            v199 = *a1;
            if (*v198 <= **a1)
            {
              return;
            }

            *a1 = v198;
            a1[2] = v199;
            v138 = (a1 + 1);
          }

          else
          {
            if (v137 <= v133)
            {
              v138 = (a1 + 3);
              v209 = a1[3];
              v210 = a1[1];
              *a1 = v132;
              a1[1] = v209;
              a1[2] = v134;
              a1[3] = v210;
              v211 = *(a2 - 2);
              if (*v211 <= v135)
              {
                return;
              }

              a1[2] = v211;
            }

            else
            {
              v138 = (a1 + 1);
              *a1 = v136;
            }

            *(a2 - 2) = v134;
          }

          v212 = *v138;
          *v138 = *v213;
          *v213 = v212;
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenGreater &,std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken> *,0>(a1, (a1 + 2), (a1 + 4), a2 - 2);
          return;
        case 5:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenGreater &,std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken> *,0>(a1, (a1 + 2), (a1 + 4), a1 + 6);
          v117 = *(a2 - 2);
          v118 = a1[6];
          if (*v117 > *v118)
          {
            a1[6] = v117;
            *(a2 - 2) = v118;
            v119 = a1[7];
            a1[7] = *(a2 - 1);
            *(a2 - 1) = v119;
            v120 = a1[6];
            v121 = *v120;
            v122 = a1[4];
            if (*v120 > *v122)
            {
              v123 = a1[5];
              v124 = a1[7];
              a1[4] = v120;
              a1[5] = v124;
              a1[6] = v122;
              a1[7] = v123;
              v125 = a1[2];
              if (v121 > *v125)
              {
                v126 = a1[3];
                a1[2] = v120;
                a1[3] = v124;
                a1[4] = v125;
                a1[5] = v126;
                v127 = *a1;
                if (v121 > **a1)
                {
                  v128 = a1[1];
                  *a1 = v120;
                  a1[1] = v124;
                  a1[2] = v127;
                  a1[3] = v128;
                }
              }
            }
          }

          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v129 = *(a2 - 2);
        v130 = *a1;
        if (*v129 > **a1)
        {
          *a1 = v129;
          *(a2 - 2) = v130;
          v131 = a1[1];
          a1[1] = *(a2 - 1);
          *(a2 - 1) = v131;
        }

        return;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return;
      }

      v154 = v10 >> 1;
      v155 = v10 >> 1;
      do
      {
        v156 = v155;
        if (v154 >= v155)
        {
          v157 = (2 * v155) | 1;
          v158 = &a1[2 * v157];
          if (2 * v156 + 2 < v9 && **v158 > *v158[2])
          {
            v158 += 2;
            v157 = 2 * v156 + 2;
          }

          v159 = &a1[2 * v156];
          v160 = *v159;
          if (**v158 <= **v159)
          {
            v161 = v159[1];
            *v159 = 0;
            v159[1] = 0;
            v162 = *v158;
            do
            {
              v163 = v158;
              v164 = v158[1];
              *v163 = 0;
              v163[1] = 0;
              v165 = v159[1];
              *v159 = v162;
              v159[1] = v164;
              if (v165)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v165);
              }

              if (v154 < v157)
              {
                break;
              }

              v166 = 2 * v157;
              v157 = (2 * v157) | 1;
              v158 = &a1[2 * v157];
              v167 = v166 + 2;
              if (v167 < v9 && **v158 > *v158[2])
              {
                v158 += 2;
                v157 = v167;
              }

              v162 = *v158;
              v159 = v163;
            }

            while (**v158 <= *v160);
            v168 = v163[1];
            *v163 = v160;
            v163[1] = v161;
            if (v168)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v168);
            }
          }
        }

        v155 = v156 - 1;
      }

      while (v156);
      while (2)
      {
        v169 = 0;
        v170 = a2;
        v172 = *a1;
        v171 = a1[1];
        *a1 = 0;
        a1[1] = 0;
        v173 = a1;
        do
        {
          v174 = &v173[2 * v169];
          v175 = v174 + 2;
          v176 = 2 * v169;
          v169 = (2 * v169) | 1;
          v177 = v176 + 2;
          if (v177 < v9)
          {
            v179 = v174[4];
            v178 = v174 + 4;
            if (**(v178 - 2) > *v179)
            {
              v175 = v178;
              v169 = v177;
            }
          }

          v180 = *v175;
          *v175 = 0;
          v175[1] = 0;
          v181 = v173[1];
          *v173 = v180;
          if (v181)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v181);
          }

          v173 = v175;
        }

        while (v169 <= ((v9 - 2) >> 1));
        a2 -= 16;
        if (v175 == (v170 - 16))
        {
          v196 = v175[1];
          *v175 = v172;
          v175[1] = v171;
          if (!v196)
          {
            goto LABEL_191;
          }
        }

        else
        {
          v182 = *(v170 - 1);
          *a2 = 0;
          *(v170 - 1) = 0;
          v183 = v175[1];
          *v175 = v182;
          if (v183)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v183);
          }

          v184 = *(v170 - 1);
          *(v170 - 2) = v172;
          *(v170 - 1) = v171;
          if (v184)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v184);
          }

          v185 = ((v175 + 2) - a1) >> 4;
          v186 = v185 < 2;
          v187 = v185 - 2;
          if (v186)
          {
            goto LABEL_191;
          }

          v188 = v187 >> 1;
          v189 = &a1[2 * (v187 >> 1)];
          v190 = *v175;
          if (**v189 <= **v175)
          {
            goto LABEL_191;
          }

          v191 = v175[1];
          *v175 = 0;
          v175[1] = 0;
          v192 = *v189;
          do
          {
            v193 = v189;
            v194 = v189[1];
            *v193 = 0;
            v193[1] = 0;
            v195 = v175[1];
            *v175 = v192;
            v175[1] = v194;
            if (v195)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v195);
            }

            if (!v188)
            {
              break;
            }

            v188 = (v188 - 1) >> 1;
            v189 = &a1[2 * v188];
            v192 = *v189;
            v175 = v193;
          }

          while (**v189 > *v190);
          v196 = v193[1];
          *v193 = v190;
          v193[1] = v191;
          if (!v196)
          {
LABEL_191:
            v186 = v9-- <= 2;
            if (v186)
            {
              return;
            }

            continue;
          }
        }

        break;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v196);
      goto LABEL_191;
    }

    v11 = &a1[2 * (v9 >> 1)];
    v12 = v11;
    v13 = *(a2 - 2);
    v14 = *v13;
    if (v9 >= 0x81)
    {
      v15 = *v11;
      v16 = **v11;
      v17 = *a1;
      v18 = **a1;
      if (v16 <= v18)
      {
        if (v14 > v16)
        {
          *v11 = v13;
          *(a2 - 2) = v15;
          v25 = (v11 + 1);
          v26 = v11[1];
          v11[1] = *(a2 - 1);
          *(a2 - 1) = v26;
          v27 = *a1;
          if (**v11 > **a1)
          {
            *a1 = *v11;
            v19 = (a1 + 1);
            *v11 = v27;
            goto LABEL_27;
          }
        }
      }

      else
      {
        if (v14 > v16)
        {
          v19 = (a1 + 1);
          *a1 = v13;
          goto LABEL_26;
        }

        v19 = (v11 + 1);
        v31 = v11[1];
        v32 = a1[1];
        *a1 = v15;
        a1[1] = v31;
        *v11 = v17;
        v11[1] = v32;
        v33 = *(a2 - 2);
        if (*v33 > v18)
        {
          *v11 = v33;
LABEL_26:
          *(a2 - 2) = v17;
          v25 = a2 - 8;
LABEL_27:
          v34 = *v19;
          *v19 = *v25;
          *v25 = v34;
        }
      }

      v35 = v11 - 2;
      v36 = *(v11 - 2);
      v37 = *v36;
      v38 = a1[2];
      v39 = *v38;
      v40 = *(a2 - 4);
      v41 = *v40;
      if (*v36 <= *v38)
      {
        if (v41 > v37)
        {
          *v35 = v40;
          *(a2 - 4) = v36;
          v43 = (v11 - 1);
          v44 = *(v11 - 1);
          *(v11 - 1) = *(a2 - 3);
          *(a2 - 3) = v44;
          v45 = a1[2];
          if (**v35 > *v45)
          {
            a1[2] = *v35;
            *v35 = v45;
            v42 = a1 + 3;
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (v41 > v37)
        {
          v42 = a1 + 3;
          a1[2] = v40;
          goto LABEL_39;
        }

        v42 = v11 - 1;
        v49 = *(v11 - 1);
        v50 = a1[3];
        a1[2] = v36;
        a1[3] = v49;
        *v35 = v38;
        *(v11 - 1) = v50;
        v51 = *(a2 - 4);
        if (*v51 > v39)
        {
          *v35 = v51;
LABEL_39:
          *(a2 - 4) = v38;
          v43 = a2 - 24;
LABEL_40:
          v52 = *v42;
          *v42 = *v43;
          *v43 = v52;
        }
      }

      v55 = v11[2];
      v53 = v11 + 2;
      v54 = v55;
      v56 = *v55;
      v57 = a1[4];
      v58 = *v57;
      v59 = *(a2 - 6);
      v60 = *v59;
      if (*v55 <= *v57)
      {
        if (v60 > v56)
        {
          *v53 = v59;
          *(a2 - 6) = v54;
          v63 = (v53 + 1);
          v62 = v53[1];
          v53[1] = *(a2 - 5);
          *(a2 - 5) = v62;
          v54 = *v53;
          v64 = a1[4];
          if (**v53 > *v64)
          {
            a1[4] = v54;
            *v53 = v64;
            v61 = (a1 + 5);
            goto LABEL_50;
          }
        }
      }

      else
      {
        if (v60 > v56)
        {
          v61 = (a1 + 5);
          a1[4] = v59;
          goto LABEL_49;
        }

        v61 = (v53 + 1);
        v65 = v53[1];
        v66 = a1[5];
        a1[4] = v54;
        a1[5] = v65;
        *v53 = v57;
        v53[1] = v66;
        v67 = *(a2 - 6);
        if (*v67 <= v58)
        {
          v54 = v57;
        }

        else
        {
          *v53 = v67;
LABEL_49:
          *(a2 - 6) = v57;
          v63 = a2 - 40;
LABEL_50:
          v68 = *v61;
          *v61 = *v63;
          *v63 = v68;
          v54 = *v53;
        }
      }

      v69 = *v12;
      v70 = **v12;
      v71 = *v35;
      v72 = **v35;
      v73 = *v54;
      if (v70 <= v72)
      {
        if (v73 > v70)
        {
          v76 = (v12 + 1);
          v77 = v12[1];
          *v12 = v54;
          v12[1] = v53[1];
          *v53 = v69;
          v53[1] = v77;
          if (v73 > v72)
          {
            *v35 = v54;
            v74 = (v35 + 1);
            *v12 = v71;
            goto LABEL_60;
          }

          v69 = v54;
        }
      }

      else
      {
        if (v73 > v70)
        {
          *v35 = v54;
          v74 = (v35 + 1);
          *v53 = v71;
          v75 = (v53 + 1);
          goto LABEL_59;
        }

        v78 = v12[1];
        *v12 = v71;
        v79 = v35[1];
        *v35 = v69;
        v35[1] = v78;
        v12[1] = v79;
        if (v73 <= v72)
        {
          v69 = v71;
        }

        else
        {
          *v12 = v54;
          *v53 = v71;
          v75 = (v53 + 1);
          v74 = (v12 + 1);
LABEL_59:
          v76 = v75;
LABEL_60:
          v80 = *v74;
          *v74 = *v76;
          *v76 = v80;
          v69 = *v12;
        }
      }

      v81 = *a1;
      *a1 = v69;
      v24 = (a1 + 1);
      *v12 = v81;
      v30 = (v12 + 1);
      goto LABEL_62;
    }

    v20 = *a1;
    v21 = **a1;
    v22 = *v11;
    v23 = **v11;
    if (v21 <= v23)
    {
      if (v14 <= v21)
      {
        goto LABEL_63;
      }

      *a1 = v13;
      *(a2 - 2) = v20;
      v28 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v28;
      v29 = *v12;
      if (**a1 <= **v12)
      {
        goto LABEL_63;
      }

      *v12 = *a1;
      *a1 = v29;
      v24 = (v12 + 1);
      v30 = (a1 + 1);
    }

    else
    {
      if (v14 <= v21)
      {
        v24 = (a1 + 1);
        v46 = a1[1];
        v47 = v12[1];
        *v12 = v20;
        v12[1] = v46;
        *a1 = v22;
        a1[1] = v47;
        v48 = *(a2 - 2);
        if (*v48 <= v23)
        {
          goto LABEL_63;
        }

        *a1 = v48;
      }

      else
      {
        v24 = (v11 + 1);
        *v12 = v13;
      }

      *(a2 - 2) = v22;
      v30 = a2 - 8;
    }

LABEL_62:
    v82 = *v24;
    *v24 = *v30;
    *v30 = v82;
LABEL_63:
    --a3;
    v83 = *a1;
    if ((a4 & 1) != 0 || **(a1 - 2) > *v83)
    {
      v84 = 0;
      v85 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v86 = *v83;
      do
      {
        v87 = a1[v84 + 2];
        v84 += 2;
      }

      while (*v87 > v86);
      v88 = &a1[v84];
      v89 = a2;
      if (v84 == 2)
      {
        v89 = a2;
        do
        {
          if (v88 >= v89)
          {
            break;
          }

          v91 = *(v89 - 2);
          v89 -= 16;
        }

        while (*v91 <= v86);
      }

      else
      {
        do
        {
          v90 = *(v89 - 2);
          v89 -= 16;
        }

        while (*v90 <= v86);
      }

      if (v88 >= v89)
      {
        v8 = &a1[v84];
      }

      else
      {
        v92 = *v89;
        v8 = &a1[v84];
        v93 = v89;
        do
        {
          *v8 = v92;
          *v93 = v87;
          v94 = *(v8 + 8);
          *(v8 + 8) = v93[1];
          v93[1] = v94;
          do
          {
            v95 = *(v8 + 16);
            v8 += 16;
            v87 = v95;
          }

          while (*v95 > v86);
          do
          {
            v96 = *(v93 - 2);
            v93 -= 2;
            v92 = v96;
          }

          while (*v96 <= v86);
        }

        while (v8 < v93);
      }

      v97 = (v8 - 16);
      if ((v8 - 16) != a1)
      {
        v98 = *v97;
        *v97 = 0;
        *(v8 - 8) = 0;
        v99 = a1[1];
        *a1 = v98;
        if (v99)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v99);
        }
      }

      v100 = *(v8 - 8);
      *(v8 - 16) = v83;
      *(v8 - 8) = v85;
      if (v100)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v100);
      }

      if (v88 < v89)
      {
        goto LABEL_89;
      }

      v101 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenGreater &,std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken> *>(a1, (v8 - 16));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenGreater &,std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken> *>(v8, a2))
      {
        a2 = (v8 - 16);
        if (v101)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v101)
      {
LABEL_89:
        std::__introsort<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenGreater &,std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken> *,false>(a1, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v102 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v103 = *v83;
      if (*v83 <= **(a2 - 2))
      {
        v105 = (a1 + 2);
        do
        {
          v8 = v105;
          if (v105 >= a2)
          {
            break;
          }

          v105 += 2;
        }

        while (v103 <= **v8);
      }

      else
      {
        v8 = a1;
        do
        {
          v104 = *(v8 + 16);
          v8 += 16;
        }

        while (v103 <= *v104);
      }

      v106 = a2;
      if (v8 < a2)
      {
        v106 = a2;
        do
        {
          v107 = *(v106 - 2);
          v106 -= 2;
        }

        while (v103 > *v107);
      }

      if (v8 < v106)
      {
        v108 = *v8;
        v109 = *v106;
        do
        {
          *v8 = v109;
          *v106 = v108;
          v110 = *(v8 + 8);
          *(v8 + 8) = v106[1];
          v106[1] = v110;
          do
          {
            v111 = *(v8 + 16);
            v8 += 16;
            v108 = v111;
          }

          while (v103 <= *v111);
          do
          {
            v112 = *(v106 - 2);
            v106 -= 2;
            v109 = v112;
          }

          while (v103 > *v112);
        }

        while (v8 < v106);
      }

      v113 = (v8 - 16);
      if ((v8 - 16) != a1)
      {
        v114 = *v113;
        *v113 = 0;
        *(v8 - 8) = 0;
        v115 = a1[1];
        *a1 = v114;
        if (v115)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v115);
        }
      }

      a4 = 0;
      v116 = *(v8 - 8);
      *(v8 - 16) = v83;
      *(v8 - 8) = v102;
      if (v116)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v116);
        a4 = 0;
      }
    }
  }

  v139 = (a1 + 2);
  v141 = a1 == a2 || v139 == a2;
  if (a4)
  {
    if (!v141)
    {
      v142 = 0;
      v143 = a1;
      do
      {
        v144 = v143;
        v143 = v139;
        v145 = v144[2];
        v146 = *v144;
        if (*v145 > **v144)
        {
          v147 = v144[3];
          v148 = v142;
          *v143 = 0;
          v143[1] = 0;
          while (1)
          {
            v149 = (a1 + v148);
            v150 = *(a1 + v148 + 8);
            *v149 = 0;
            v149[1] = 0;
            v151 = *(a1 + v148 + 24);
            v149[2] = v146;
            v149[3] = v150;
            if (v151)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v151);
            }

            if (!v148)
            {
              break;
            }

            v146 = *(a1 + v148 - 16);
            v148 -= 16;
            if (*v145 <= *v146)
            {
              v152 = (a1 + v148 + 16);
              goto LABEL_146;
            }
          }

          v152 = a1;
LABEL_146:
          v153 = v152[1];
          *v152 = v145;
          v152[1] = v147;
          if (v153)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v153);
          }
        }

        v139 = (v143 + 2);
        v142 += 16;
      }

      while (v143 + 2 != a2);
    }
  }

  else if (!v141)
  {
    v200 = (a1 + 3);
    do
    {
      v201 = a1;
      a1 = v139;
      v202 = v201[2];
      v203 = *v201;
      if (*v202 > **v201)
      {
        v204 = v201[3];
        v205 = v200;
        *a1 = 0;
        a1[1] = 0;
        do
        {
          v206 = *(v205 - 2);
          *(v205 - 3) = 0;
          *(v205 - 2) = 0;
          v207 = *v205;
          *(v205 - 1) = v203;
          *v205 = v206;
          if (v207)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v207);
          }

          v203 = *(v205 - 5);
          v205 -= 2;
        }

        while (*v202 > *v203);
        v208 = *v205;
        *(v205 - 1) = v202;
        *v205 = v204;
        if (v208)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v208);
        }
      }

      v139 = (a1 + 2);
      v200 += 2;
    }

    while (a1 + 2 != a2);
  }
}

double **std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenGreater &,std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken> *,0>(double **result, uint64_t a2, uint64_t a3, double **a4)
{
  v4 = *a2;
  v5 = **a2;
  v6 = *result;
  v7 = *a3;
  v8 = **a3;
  if (v5 <= **result)
  {
    if (v8 > v5)
    {
      *a2 = v7;
      *a3 = v4;
      v11 = (a2 + 8);
      v10 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v10;
      v12 = *result;
      if (**a2 > **result)
      {
        *result = *a2;
        v9 = (result + 1);
        *a2 = v12;
LABEL_10:
        v14 = *v9;
        *v9 = *v11;
        *v11 = v14;
      }
    }
  }

  else
  {
    if (v8 > v5)
    {
      v9 = (result + 1);
      *result = v7;
LABEL_9:
      *a3 = v6;
      v11 = (a3 + 8);
      goto LABEL_10;
    }

    *result = v4;
    *a2 = v6;
    v9 = (a2 + 8);
    v13 = result[1];
    result[1] = *(a2 + 8);
    *(a2 + 8) = v13;
    v6 = *a2;
    if (**a3 > **a2)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v15 = *a3;
  if (**a4 > **a3)
  {
    *a3 = *a4;
    *a4 = v15;
    v16 = *(a3 + 8);
    *(a3 + 8) = a4[1];
    a4[1] = v16;
    v17 = *a2;
    if (**a3 > **a2)
    {
      *a2 = *a3;
      *a3 = v17;
      v18 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v18;
      v19 = *result;
      if (**a2 > **result)
      {
        *result = *a2;
        *a2 = v19;
        v20 = result[1];
        result[1] = *(a2 + 8);
        *(a2 + 8) = v20;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenGreater &,std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken> *>(double **a1, char *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v20 = a1[2];
      v21 = *v20;
      v22 = *a1;
      v23 = **a1;
      v24 = *(a2 - 2);
      v25 = *v24;
      if (*v20 <= v23)
      {
        if (v25 <= v21)
        {
          return 1;
        }

        a1[2] = v24;
        *(a2 - 2) = v20;
        v36 = (a1 + 3);
        v35 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v35;
        v37 = a1[2];
        v38 = *a1;
        if (*v37 <= **a1)
        {
          return 1;
        }

        *a1 = v37;
        a1[2] = v38;
        v26 = (a1 + 1);
      }

      else
      {
        if (v25 <= v21)
        {
          v26 = (a1 + 3);
          v42 = a1[3];
          v43 = a1[1];
          *a1 = v20;
          a1[1] = v42;
          a1[2] = v22;
          a1[3] = v43;
          v44 = *(a2 - 2);
          if (*v44 <= v23)
          {
            return 1;
          }

          a1[2] = v44;
        }

        else
        {
          v26 = (a1 + 1);
          *a1 = v24;
        }

        *(a2 - 2) = v22;
        v36 = a2 - 8;
      }

      v45 = *v26;
      *v26 = *v36;
      *v36 = v45;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenGreater &,std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken> *,0>(a1, (a1 + 2), (a1 + 4), a1 + 6);
        v8 = *(a2 - 2);
        v9 = a1[6];
        if (*v8 > *v9)
        {
          a1[6] = v8;
          *(a2 - 2) = v9;
          v10 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v10;
          v11 = a1[6];
          v12 = *v11;
          v13 = a1[4];
          if (*v11 > *v13)
          {
            v14 = a1[5];
            v15 = a1[7];
            a1[4] = v11;
            a1[5] = v15;
            a1[6] = v13;
            a1[7] = v14;
            v16 = a1[2];
            if (v12 > *v16)
            {
              v17 = a1[3];
              a1[2] = v11;
              a1[3] = v15;
              a1[4] = v16;
              a1[5] = v17;
              v18 = *a1;
              if (v12 > **a1)
              {
                v19 = a1[1];
                *a1 = v11;
                a1[1] = v15;
                a1[2] = v18;
                a1[3] = v19;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenGreater &,std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken> *,0>(a1, (a1 + 2), (a1 + 4), a2 - 2);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (*v5 > **a1)
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v27 = a1 + 4;
  v28 = a1[4];
  v29 = a1[2];
  v30 = *v29;
  v31 = *a1;
  v32 = **a1;
  v33 = *v28;
  if (*v29 > v32)
  {
    if (v33 <= v30)
    {
      v34 = (a1 + 3);
      v46 = a1[3];
      v47 = a1[1];
      *a1 = v29;
      a1[1] = v46;
      a1[2] = v31;
      a1[3] = v47;
      if (v33 <= v32)
      {
        goto LABEL_35;
      }

      a1[2] = v28;
    }

    else
    {
      v34 = (a1 + 1);
      *a1 = v28;
    }

    a1[4] = v31;
    v40 = (a1 + 5);
    goto LABEL_34;
  }

  if (v33 > v30)
  {
    v40 = (a1 + 3);
    v39 = a1[3];
    v41 = a1[5];
    a1[2] = v28;
    a1[3] = v41;
    a1[4] = v29;
    a1[5] = v39;
    if (v33 > v32)
    {
      *a1 = v28;
      a1[2] = v31;
      v34 = (a1 + 1);
LABEL_34:
      v48 = *v34;
      *v34 = *v40;
      *v40 = v48;
    }
  }

LABEL_35:
  v49 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = *v49;
    v53 = *v27;
    if (**v49 > *v53)
    {
      v54 = v49[1];
      v55 = v50;
      *v49 = 0;
      v49[1] = 0;
      while (1)
      {
        v56 = (a1 + v55);
        v57 = *(a1 + v55 + 40);
        v56[4] = 0;
        v56[5] = 0;
        v58 = *(a1 + v55 + 56);
        v56[6] = v53;
        v56[7] = v57;
        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v58);
        }

        if (v55 == -32)
        {
          break;
        }

        v53 = *(a1 + v55 + 16);
        v55 -= 16;
        if (*v52 <= *v53)
        {
          v59 = (a1 + v55 + 48);
          goto LABEL_45;
        }
      }

      v59 = a1;
LABEL_45:
      v60 = v59[1];
      *v59 = v52;
      v59[1] = v54;
      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v60);
      }

      if (++v51 == 8)
      {
        return v49 + 2 == a2;
      }
    }

    v27 = v49;
    v50 += 16;
    v49 += 2;
    if (v49 == a2)
    {
      return 1;
    }
  }
}

kaldi::WordHypLattice::Node *kaldi::WordHypLattice::Node::Node(kaldi::WordHypLattice::Node *this, const kaldi::WordHypLattice::Node *a2)
{
  v4 = std::list<kaldi::WordHypLattice::Arc *>::list(this, a2);
  std::unordered_map<kaldi::WordHypLattice::Arc *,std::__list_iterator<kaldi::WordHypLattice::Arc *,void *>>::unordered_map((v4 + 3), a2 + 24);
  std::list<kaldi::WordHypLattice::Arc *>::list(this + 8, a2 + 64);
  std::unordered_map<kaldi::WordHypLattice::Arc *,std::__list_iterator<kaldi::WordHypLattice::Arc *,void *>>::unordered_map(this + 88, a2 + 88);
  v5 = *(a2 + 8);
  *(this + 18) = *(a2 + 18);
  *(this + 8) = v5;
  kaldi::CuVector<float>::CuVector(this + 19, a2 + 152);
  *(this + 23) = *(a2 + 23);
  return this;
}

void sub_1B5367E8C(_Unwind_Exception *a1)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((v1 + 11));
  std::__list_imp<char *>::clear(v1 + 8);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((v1 + 3));
  std::__list_imp<char *>::clear(v1);
  _Unwind_Resume(a1);
}

void *std::list<kaldi::WordHypLattice::Arc *>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

uint64_t std::unordered_map<kaldi::WordHypLattice::Arc *,std::__list_iterator<kaldi::WordHypLattice::Arc *,void *>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<kaldi::WordHypLattice::Arc *,std::__list_iterator<kaldi::WordHypLattice::Arc *,void *>>,std::__unordered_map_hasher<kaldi::WordHypLattice::Arc *,std::__hash_value_type<kaldi::WordHypLattice::Arc *,std::__list_iterator<kaldi::WordHypLattice::Arc *,void *>>,std::hash<kaldi::WordHypLattice::Arc *>,std::equal_to<kaldi::WordHypLattice::Arc *>,true>,std::__unordered_map_equal<kaldi::WordHypLattice::Arc *,std::__hash_value_type<kaldi::WordHypLattice::Arc *,std::__list_iterator<kaldi::WordHypLattice::Arc *,void *>>,std::equal_to<kaldi::WordHypLattice::Arc *>,std::hash<kaldi::WordHypLattice::Arc *>,true>,std::allocator<std::__hash_value_type<kaldi::WordHypLattice::Arc *,std::__list_iterator<kaldi::WordHypLattice::Arc *,void *>>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Arc *,std::pair<kaldi::WordHypLattice::Arc * const,std::__list_iterator<kaldi::WordHypLattice::Arc *,void *>> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<kaldi::WordHypLattice::Arc *,std::__list_iterator<kaldi::WordHypLattice::Arc *,void *>>,std::__unordered_map_hasher<kaldi::WordHypLattice::Arc *,std::__hash_value_type<kaldi::WordHypLattice::Arc *,std::__list_iterator<kaldi::WordHypLattice::Arc *,void *>>,std::hash<kaldi::WordHypLattice::Arc *>,std::equal_to<kaldi::WordHypLattice::Arc *>,true>,std::__unordered_map_equal<kaldi::WordHypLattice::Arc *,std::__hash_value_type<kaldi::WordHypLattice::Arc *,std::__list_iterator<kaldi::WordHypLattice::Arc *,void *>>,std::equal_to<kaldi::WordHypLattice::Arc *>,std::hash<kaldi::WordHypLattice::Arc *>,true>,std::allocator<std::__hash_value_type<kaldi::WordHypLattice::Arc *,std::__list_iterator<kaldi::WordHypLattice::Arc *,void *>>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Arc *,std::pair<kaldi::WordHypLattice::Arc * const,std::__list_iterator<kaldi::WordHypLattice::Arc *,void *>> const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

kaldi::WordHypLattice::Arc *kaldi::WordHypLattice::Arc::Arc(kaldi::WordHypLattice::Arc *this, const kaldi::WordHypLattice::Arc *a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  *(this + 60) = *(a2 + 60);
  *(this + 2) = v5;
  *(this + 3) = v6;
  *(this + 1) = v4;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 80, *(a2 + 10), *(a2 + 11), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 11) - *(a2 + 10)) >> 3));
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 104, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 2);
  v7 = *(a2 + 8);
  *(this + 18) = 0;
  *(this + 8) = v7;
  *(this + 19) = 0;
  *(this + 20) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 144, *(a2 + 18), *(a2 + 19), (*(a2 + 19) - *(a2 + 18)) >> 2);
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 168, *(a2 + 21), *(a2 + 22), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 22) - *(a2 + 21)) >> 3));
  v8 = *(a2 + 12);
  *(this + 26) = *(a2 + 26);
  *(this + 12) = v8;
  if (*(a2 + 239) < 0)
  {
    std::string::__init_copy_ctor_external(this + 9, *(a2 + 27), *(a2 + 28));
  }

  else
  {
    v9 = *(a2 + 216);
    *(this + 29) = *(a2 + 29);
    *(this + 216) = v9;
  }

  v10 = *(a2 + 15);
  *(this + 32) = *(a2 + 32);
  *(this + 15) = v10;
  if (*(a2 + 287) < 0)
  {
    std::string::__init_copy_ctor_external(this + 11, *(a2 + 33), *(a2 + 34));
  }

  else
  {
    v11 = *(a2 + 264);
    *(this + 35) = *(a2 + 35);
    *(this + 264) = v11;
  }

  *(this + 72) = *(a2 + 72);
  kaldi::CuVector<float>::CuVector(this + 37, a2 + 296);
  kaldi::CuVector<float>::CuVector(this + 41, a2 + 328);
  kaldi::CuVector<float>::CuVector(this + 45, a2 + 360);
  kaldi::CuVector<float>::CuVector(this + 49, a2 + 392);
  kaldi::CuVector<float>::CuVector(this + 53, a2 + 424);
  *(this + 57) = *(a2 + 57);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 464), a2 + 29);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 496), a2 + 31);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 22, a2 + 33);
  *(this + 140) = *(a2 + 140);
  return this;
}

void sub_1B536844C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 239) < 0)
  {
    operator delete(*(v2 + 216));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 152) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v2 + 112) = v7;
    operator delete(v7);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::deque<kaldi::WordHypLattice::Node *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<kaldi::WordHypLattice::Node *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<kaldi::WordHypLattice::Node *>::__add_back_capacity(void *a1)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **&>(a1, &v10);
}

void sub_1B5368780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,unsigned long>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

void *std::vector<kaldi::WordHypLattice::Node *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B53688F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<kaldi::WordHypLattice::Arc *,std::__list_iterator<kaldi::WordHypLattice::Arc *,void *>>,std::__unordered_map_hasher<kaldi::WordHypLattice::Arc *,std::__hash_value_type<kaldi::WordHypLattice::Arc *,std::__list_iterator<kaldi::WordHypLattice::Arc *,void *>>,std::hash<kaldi::WordHypLattice::Arc *>,std::equal_to<kaldi::WordHypLattice::Arc *>,true>,std::__unordered_map_equal<kaldi::WordHypLattice::Arc *,std::__hash_value_type<kaldi::WordHypLattice::Arc *,std::__list_iterator<kaldi::WordHypLattice::Arc *,void *>>,std::equal_to<kaldi::WordHypLattice::Arc *>,std::hash<kaldi::WordHypLattice::Arc *>,true>,std::allocator<std::__hash_value_type<kaldi::WordHypLattice::Arc *,std::__list_iterator<kaldi::WordHypLattice::Arc *,void *>>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Arc *,kaldi::WordHypLattice::Arc * const&,std::__list_iterator<kaldi::WordHypLattice::Arc *,void *>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::__function::__func<kaldi::WordHypLattice::getWordHypLattice(kaldi::TransitionModel const&,kaldi::LatticeScoreCache *,fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> &,int,std::vector<kaldi::WordHypLattice::InputArcDetail> const*)::$_0,std::allocator<kaldi::WordHypLattice::getWordHypLattice(kaldi::TransitionModel const&,kaldi::LatticeScoreCache *,fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> &,int,std::vector<kaldi::WordHypLattice::InputArcDetail> const*)::$_0>,double ()(kaldi::WordHypLattice::Arc const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<double ()(kaldi::WordHypLattice::Arc const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<kaldi::WordHypLattice::getWordHypLattice(kaldi::TransitionModel const&,kaldi::LatticeScoreCache *,fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> &,int,std::vector<kaldi::WordHypLattice::InputArcDetail> const*)::$_1,std::allocator<kaldi::WordHypLattice::getWordHypLattice(kaldi::TransitionModel const&,kaldi::LatticeScoreCache *,fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> &,int,std::vector<kaldi::WordHypLattice::InputArcDetail> const*)::$_1>,double & ()(kaldi::WordHypLattice::Arc &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<double & ()(kaldi::WordHypLattice::Arc &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<kaldi::WordHypLattice::getWordHypLattice(kaldi::TransitionModel const&,kaldi::LatticeScoreCache *,fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> &,int,std::vector<kaldi::WordHypLattice::InputArcDetail> const*)::$_2,std::allocator<kaldi::WordHypLattice::getWordHypLattice(kaldi::TransitionModel const&,kaldi::LatticeScoreCache *,fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> &,int,std::vector<kaldi::WordHypLattice::InputArcDetail> const*)::$_2>,double ()(kaldi::WordHypLattice::Arc const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<kaldi::WordHypLattice::getWordHypLattice(kaldi::TransitionModel const&,kaldi::LatticeScoreCache *,fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> &,int,std::vector<kaldi::WordHypLattice::InputArcDetail> const*)::$_3,std::allocator<kaldi::WordHypLattice::getWordHypLattice(kaldi::TransitionModel const&,kaldi::LatticeScoreCache *,fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> &,int,std::vector<kaldi::WordHypLattice::InputArcDetail> const*)::$_3>,double & ()(kaldi::WordHypLattice::Arc &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<kaldi::WordHypLattice::getWordHypLattice(kaldi::TransitionModel const&,kaldi::LatticeScoreCache *,fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> &,int,std::vector<kaldi::WordHypLattice::InputArcDetail> const*)::$_4,std::allocator<kaldi::WordHypLattice::getWordHypLattice(kaldi::TransitionModel const&,kaldi::LatticeScoreCache *,fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> &,int,std::vector<kaldi::WordHypLattice::InputArcDetail> const*)::$_4>,double ()(kaldi::WordHypLattice::Arc const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<kaldi::WordHypLattice::getWordHypLattice(kaldi::TransitionModel const&,kaldi::LatticeScoreCache *,fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> &,int,std::vector<kaldi::WordHypLattice::InputArcDetail> const*)::$_5,std::allocator<kaldi::WordHypLattice::getWordHypLattice(kaldi::TransitionModel const&,kaldi::LatticeScoreCache *,fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> &,int,std::vector<kaldi::WordHypLattice::InputArcDetail> const*)::$_5>,double & ()(kaldi::WordHypLattice::Arc &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,int>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,int>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,int>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

void *std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,double>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,double>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,double>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::Node *&,double const&>(uint64_t a1, unint64_t *a2)
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

void std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>>>::destroy(*a1);
    std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>>>::destroy(*a1);
    std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetBestMeanConfPath(std::vector<int> &,std::vector<std::string> &,int &)::BackTraceToken>>>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::RecomputeBestPath(void)::BackTraceToken>>>::destroy(a1[6]);

    operator delete(a1);
  }
}

uint64_t std::__function::__func<kaldi::WordHypLattice::GetNBestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,kaldi::WordHypLattice::Criteria)::$_0,std::allocator<kaldi::WordHypLattice::GetNBestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,kaldi::WordHypLattice::Criteria)::$_0>,double ()(kaldi::WordHypLattice::Arc const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<kaldi::WordHypLattice::GetNBestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,kaldi::WordHypLattice::Criteria)::$_1,std::allocator<kaldi::WordHypLattice::GetNBestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,kaldi::WordHypLattice::Criteria)::$_1>,double ()(kaldi::WordHypLattice::Arc const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>>>>::destroy(*a1);
    std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,std::map<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap,std::less<int>,std::allocator<std::pair<int const,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>,std::__map_value_compare<int,std::__value_type<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>,std::less<int>,true>,std::allocator<std::__value_type<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>::destroy(a1[6]);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>,std::__map_value_compare<int,std::__value_type<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>,std::less<int>,true>,std::allocator<std::__value_type<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>,std::__map_value_compare<int,std::__value_type<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>,std::less<int>,true>,std::allocator<std::__value_type<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>::destroy(*a1);
    std::__tree<std::__value_type<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>,std::__map_value_compare<int,std::__value_type<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>,std::less<int>,true>,std::allocator<std::__value_type<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>>>::destroy(*(a1 + 1));
    v2 = (a1 + 40);
    std::vector<std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken>>::__destroy_vector::operator()[abi:ne200100](&v2);

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken,std::allocator<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0E588;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken,std::allocator<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::TokenMinHeap>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v4 = v2 + 5;
      std::vector<std::shared_ptr<kaldi::WordHypLattice::GetNbestPath(std::vector<std::vector<kaldi::WordHypLattice::Arc *>> &,int,std::function<double ()(kaldi::WordHypLattice::Arc const&)>,BOOL)::BackTraceToken>>::__destroy_vector::operator()[abi:ne200100](&v4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::vector<std::vector<kaldi::WordHypLattice::Arc *>>::__construct_one_at_end[abi:ne200100]<std::vector<kaldi::WordHypLattice::Arc *> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<kaldi::WordHypLattice::Arc *>::__init_with_size[abi:ne200100]<kaldi::WordHypLattice::Arc **,kaldi::WordHypLattice::Arc **>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<kaldi::WordHypLattice::Arc *>>::__emplace_back_slow_path<std::vector<kaldi::WordHypLattice::Arc *> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<kaldi::WordHypLattice::Arc *>::__init_with_size[abi:ne200100]<kaldi::WordHypLattice::Arc **,kaldi::WordHypLattice::Arc **>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
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
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B53698D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::WordHypLattice::Arc *>::__init_with_size[abi:ne200100]<kaldi::WordHypLattice::Arc **,kaldi::WordHypLattice::Arc **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5369948(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<kaldi::WordHypLattice::Node *>::__init_with_size[abi:ne200100]<kaldi::WordHypLattice::Node **,kaldi::WordHypLattice::Node **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53699C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::__stable_sort<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(char *result, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *result;
      if (*(v7 + 132) < *(*result + 132))
      {
        *result = v7;
        *(a2 - 1) = v8;
      }
    }

    else if (a3 > 128)
    {
      v19 = a4;
      v20 = a3 >> 1;
      v21 = &result[8 * (a3 >> 1)];
      v22 = a3 >> 1;
      if (a3 <= a5)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(result, v21, v22, a4);
        v23 = (v19 + 8 * v20);
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v23);
        v24 = v19 + 8 * a3;
        v25 = v23;
        while (v25 != v24)
        {
          v26 = *v25;
          v27 = *(*v25 + 132);
          v28 = *(*v19 + 132);
          if (v27 >= v28)
          {
            v26 = *v19;
          }

          v19 += 8 * (v27 >= v28);
          v25 += v27 < v28;
          *v6 = v26;
          v6 += 8;
          if (v19 == v23)
          {
            while (v25 != v24)
            {
              v30 = *v25++;
              *v6 = v30;
              v6 += 8;
            }

            return result;
          }
        }

        while (v19 != v23)
        {
          v29 = *v19;
          v19 += 8;
          *v6 = v29;
          v6 += 8;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(result, v21, v22, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v19, a5);

        return std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(v6, &v6[8 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v19, a5);
      }
    }

    else if (result != a2)
    {
      v10 = result + 8;
      if (result + 8 != a2)
      {
        v11 = 0;
        v12 = result;
        do
        {
          v13 = *v12;
          v12 = v10;
          v14 = *v10;
          v15 = *(v14 + 132);
          if (v15 < *(v13 + 132))
          {
            v16 = v11;
            while (1)
            {
              *&result[v16 + 8] = v13;
              if (!v16)
              {
                break;
              }

              v13 = *&result[v16 - 8];
              v16 -= 8;
              if (v15 >= *(v13 + 132))
              {
                v17 = &result[v16 + 8];
                goto LABEL_16;
              }
            }

            v17 = result;
LABEL_16:
            *v17 = v14;
          }

          v10 = v12 + 8;
          v11 += 8;
        }

        while (v12 + 8 != a2);
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(uint64_t result, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
LABEL_8:
      *v4 = *v6;
      return result;
    }

    if (a3 == 2)
    {
      v8 = *(a2 - 8);
      v9 = *(v8 + 132);
      v10 = *(*result + 132);
      if (v9 >= v10)
      {
        v8 = *result;
      }

      *a4 = v8;
      v4 = a4 + 1;
      if (v9 >= v10)
      {
        v6 = a2 - 8;
      }

      goto LABEL_8;
    }

    if (a3 > 8)
    {
      v20 = result + 8 * (a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(result, v20, a3 >> 1, a4, a3 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(v6 + 8 * (a3 >> 1), a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
      v21 = v6 + 8 * (a3 >> 1);
      while (v21 != a2)
      {
        v22 = *v21;
        v23 = *(*v21 + 132);
        v24 = *(*v6 + 132);
        if (v23 >= v24)
        {
          v22 = *v6;
        }

        v21 += 8 * (v23 < v24);
        v6 += 8 * (v23 >= v24);
        *v4++ = v22;
        if (v6 == v20)
        {
          while (v21 != a2)
          {
            v26 = *v21;
            v21 += 8;
            *v4++ = v26;
          }

          return result;
        }
      }

      while (v6 != v20)
      {
        v25 = *v6;
        v6 += 8;
        *v4++ = v25;
      }
    }

    else if (result != a2)
    {
      v11 = result + 8;
      *a4 = *result;
      if (result + 8 != a2)
      {
        v12 = 0;
        v13 = a4;
        v14 = a4;
        do
        {
          v16 = *v14++;
          v15 = v16;
          if (*(*v11 + 132) >= *(v16 + 132))
          {
            *v14 = *v11;
          }

          else
          {
            v13[1] = v15;
            v17 = a4;
            if (v13 != a4)
            {
              v18 = v12;
              while (1)
              {
                v17 = (a4 + v18);
                v19 = *(a4 + v18 - 8);
                if (*(*v11 + 132) >= *(v19 + 132))
                {
                  break;
                }

                *v17 = v19;
                v18 -= 8;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }

            *v17 = *v11;
          }

          v11 += 8;
          v12 += 8;
          v13 = v14;
        }

        while (v11 != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v9 = a5;
    v11 = result;
    while (v9 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v12 = 0;
      v13 = -a4;
      while (1)
      {
        v14 = *&v11[v12];
        if (*(*a2 + 132) < *(v14 + 132))
        {
          break;
        }

        v12 += 8;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v16 = -v13;
      v53 = a3;
      __src = a6;
      v52 = a7;
      if (-v13 >= v9)
      {
        if (v13 == -1)
        {
          *&v11[v12] = *a2;
          *a2 = v14;
          return result;
        }

        v25 = v16 / 2;
        v26 = &v11[8 * (v16 / 2)];
        v18 = a2;
        if (a2 != a3)
        {
          v27 = (a3 - a2) >> 3;
          v18 = a2;
          do
          {
            v28 = v27 >> 1;
            v29 = &v18[8 * (v27 >> 1)];
            v31 = *v29;
            v30 = v29 + 8;
            v27 += ~(v27 >> 1);
            if (*(v31 + 132) < *(*&v26[v12] + 132))
            {
              v18 = v30;
            }

            else
            {
              v27 = v28;
            }
          }

          while (v27);
        }

        v17 = (v18 - a2) >> 3;
        v19 = &v26[v12];
      }

      else
      {
        v17 = v9 / 2;
        v18 = &a2[8 * (v9 / 2)];
        v19 = a2;
        if (a2 - v11 != v12)
        {
          v20 = (a2 - v11 - v12) >> 3;
          v19 = &v11[v12];
          do
          {
            v21 = v20 >> 1;
            v22 = &v19[8 * (v20 >> 1)];
            v24 = *v22;
            v23 = v22 + 8;
            v20 += ~(v20 >> 1);
            if (*(*v18 + 132) < *(v24 + 132))
            {
              v20 = v21;
            }

            else
            {
              v19 = v23;
            }
          }

          while (v20);
        }

        v25 = (v19 - v11 - v12) >> 3;
      }

      a4 = -(v25 + v13);
      v32 = v9 - v17;
      v33 = v25;
      v34 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::WordHypLattice::Node **>,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(v19, a2, v18);
      v35 = v33;
      v36 = v34;
      if (v35 + v17 >= v9 - (v35 + v17) - v13)
      {
        v39 = v35;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(v34, v18, v53, a4, v32, __src, v52);
        v18 = v19;
        a7 = v52;
        v32 = v17;
        a6 = __src;
        a4 = v39;
        a3 = v36;
        v11 += v12;
      }

      else
      {
        v37 = v19;
        v38 = v17;
        a6 = __src;
        a7 = v52;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(&v11[v12], v37, v34, v35, v38, __src, v52);
        v11 = v36;
        a3 = v53;
      }

      v9 = v32;
      a2 = v18;
      if (!v32)
      {
        return result;
      }
    }

    if (a4 <= v9)
    {
      if (a2 != v11)
      {
        v43 = -a6;
        v44 = a6;
        v45 = v11;
        do
        {
          v46 = *v45;
          v45 += 8;
          *v44++ = v46;
          v43 -= 8;
        }

        while (v45 != a2);
        while (a2 != a3)
        {
          v47 = *a2;
          v48 = *(*a2 + 132);
          v49 = *(*a6 + 132);
          if (v48 >= v49)
          {
            v47 = *a6;
          }

          a2 += 8 * (v48 < v49);
          a6 += 8 * (v48 >= v49);
          *v11 = v47;
          v11 += 8;
          if (v44 == a6)
          {
            return result;
          }
        }

        return memmove(v11, a6, -(a6 + v43));
      }
    }

    else if (a2 != a3)
    {
      v40 = 0;
      do
      {
        *(a6 + v40) = *&a2[v40];
        v40 += 8;
      }

      while (&a2[v40] != a3);
      v41 = (a6 + v40);
      while (a2 != v11)
      {
        v42 = *(v41 - 1);
        if (*(v42 + 132) >= *(*(a2 - 1) + 132))
        {
          v41 -= 8;
        }

        else
        {
          v42 = *(a2 - 1);
          a2 -= 8;
        }

        *(a3 - 1) = v42;
        a3 -= 8;
        if (v41 == a6)
        {
          return result;
        }
      }

      if (v41 != a6)
      {
        v50 = -8;
        do
        {
          v51 = *(v41 - 1);
          v41 -= 8;
          *&a3[v50] = v51;
          v50 -= 8;
        }

        while (v41 != a6);
      }
    }
  }

  return result;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::WordHypLattice::Node **>,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v7 = *__src;
      memmove(__src, __src + 8, v6);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 8 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 8;
      v9 = a3 - 8 - __src;
      if (a3 - 8 != __src)
      {
        memmove(__src + 8, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(__src, a2, a3);
    }
  }

  return v4;
}

char *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 3;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 3)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 8;
      v6 = a2 + 8;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 8;
        v8 = v6 == a3;
        v6 += 8;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 3;
    v10 = (a2 - a1) >> 3;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[8 * v10];
    do
    {
      v14 = *(v12 - 1);
      v12 -= 8;
      v13 = v14;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        *v16 = *v15;
        v18 = &v15[8 * v3];
        v19 = __OFSUB__(v3, (a3 - v15) >> 3);
        v21 = v3 - ((a3 - v15) >> 3);
        v20 = (v21 < 0) ^ v19;
        v15 = &a1[8 * v21];
        if (v20)
        {
          v15 = v18;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *v17 = v13;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

void sub_1B536A398(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::Node *>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::Node *>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::Node *>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

void TTokenizerParamManager::TTokenizerParamManager(TTokenizerParamManager *this, TLocaleInfo *a2)
{
  TParamManager::TParamManager(this, 0, a2);
  *v3 = &unk_1F2D0E5D8;
  v4 = (v3 + 17);
  TBoolParam::TBoolParam((v3 + 17), "S", "I", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 384, "P", "I", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 632, "T", "T", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 880, "A", "I", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 1128, "M", "I", 0, 1, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 1376, "T", "I", 0, 1, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 1624, "T", "A", 0, 1, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 1872, "S", "I", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 2120, "M", "I", 0, 1, "1", "1");
  TStringParam::TStringParam(this + 2368, "C", "A", 0, "'", "1", &dword_1B5AF0374);
  TStringParam::TStringParam(this + 3744, "C", "A", 0, &dword_1B5AF0374, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 5120, "D", "I", 0, 1, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 5368, "D", "I", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 5616, "D", "I", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 5864, "D", "I", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 6112, "D", "I", 0, 0, "9", &dword_1B5AF0374);
  TStringParam::TStringParam(this + 6360, "D", "B", 0, &dword_1B5AF0374, "1", "1");
  TBoolParam::TBoolParam(this + 7736, "C", "R", 0, 0, "9", &dword_1B5AF0374);
  TStringParam::TStringParam(this + 7984, "C", "S", 256, &dword_1B5AF0374, "9", &dword_1B5AF0374);
  TStringParam::TStringParam(this + 9360, "C", "W", 0, "x", "1", "1");
  TStringParam::TStringParam(this + 10736, "V", "T", 0, &dword_1B5AF0374, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 12112, "U", "I", 0, 1, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 12360, "R", "I", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 12608, "C", "N", 0, 1, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 12856, "C", "T", 0, 0, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 13104, "D", "I", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 13352, "H", "S", 0, 0, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 13600), "N", "I", 0, 0, 1000, 30, "9", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 13952), "M", "I", 0, 0, 1000, 5, "9", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 14304), "N", "W", 0, 0, 4, 0, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 14656), "P", "T", 0, 0, 300, 0, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 15008, "P", "I", 0, 0, "9", "1");
  TBoolParam::TBoolParam(this + 15256, "A", "I", 0, 1, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 15504, "M", "I", 0, 1, "1", "1");
  TIntParam::TIntParam((this + 15752), "P", "T", 0, -1, 100, 10, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 16104), "C", "P", 0, 1, 256, 4, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 16456), "A", "P", 0, 1, 256, 4, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 16808), "P", "S", 0, -1, 100, 20, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 17160), "P", "S", 0, -1, 100, 30, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 17512), "P", "S", 0, -1, 100, 40, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 17864, "O", "O", 0, 0, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 18112), "P", "S", 0, -1, 100, -1, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 18464), "P", "S", 0, -1, 100, 50, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 18816), "P", "S", 0, -1, 100, 60, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 19168, "U", "I", 0, 1, "1", "1");
  TBoolParam::TBoolParam(this + 19416, "U", "I", 0, 1, "1", "1");
  TBoolParam::TBoolParam(this + 19664, "U", "I", 0, 1, "1", "1");
  TBoolParam::TBoolParam(this + 19912, "U", "I", 0, 1, "1", "1");
  TBoolParam::TBoolParam(this + 20160, "U", "I", 0, 0, "1", "1");
  TBoolParam::TBoolParam(this + 20408, "U", "I", 0, 1, "1", "1");
  TBoolParam::TBoolParam(this + 20656, "L", "I", 0, 0, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 20904, "L", "I", 0, 0, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 21152), "M", "M", 0, 1, 100, 10, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 21504, "L", "L", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 21752, "L", "L", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 22000, "D", "D", 32, 1, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 22248, "D", "D", 288, 1, "1", &dword_1B5AF0374);
  TStringParam::TStringParam(this + 22496, "D", "D", 32, &dword_1B5AF0374, "9", &dword_1B5AF0374);
  TStringParam::TStringParam(this + 23872, "D", "D", 288, &dword_1B5AF0374, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 25248), "D", "D", 32, -1, 10, 5, "9", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 25600), "D", "D", 288, -1, 10, 5, "1", &dword_1B5AF0374);
  TStringParam::TStringParam(this + 25952, "D");
  TStringParam::TStringParam(this + 27328, "D");
  TFloatParam::TFloatParam(this + 28704, "D", "D", 32, "9", &dword_1B5AF0374, 0.0);
  TFloatParam::TFloatParam(this + 29240, "D", "D", 288, "1", &dword_1B5AF0374, 0.0);
  TParamManager::add(this, v4);
  TParamManager::add(this, (this + 384));
  TParamManager::add(this, (this + 632));
  TParamManager::add(this, (this + 880));
  TParamManager::add(this, (this + 1128));
  TParamManager::add(this, (this + 1376));
  TParamManager::add(this, (this + 1624));
  TParamManager::add(this, (this + 1872));
  TParamManager::add(this, (this + 2120));
  TParamManager::add(this, (this + 2368));
  TParamManager::add(this, (this + 3744));
  TParamManager::add(this, (this + 5120));
  TParamManager::add(this, (this + 5368));
  TParamManager::add(this, (this + 5616));
  TParamManager::add(this, (this + 5864));
  TParamManager::add(this, (this + 6112));
  TParamManager::add(this, (this + 6360));
  TParamManager::add(this, (this + 7736));
  TParamManager::add(this, (this + 7984));
  TParamManager::add(this, (this + 9360));
  TParamManager::add(this, (this + 10736));
  TParamManager::add(this, (this + 12112));
  TParamManager::add(this, (this + 12360));
  TParamManager::add(this, (this + 12608));
  TParamManager::add(this, (this + 12856));
  TParamManager::add(this, (this + 13104));
  TParamManager::add(this, (this + 13352));
  TParamManager::add(this, (this + 13600));
  TParamManager::add(this, (this + 13952));
  TParamManager::add(this, (this + 14304));
  TParamManager::add(this, (this + 14656));
  TParamManager::add(this, (this + 15008));
  TParamManager::add(this, (this + 15256));
  TParamManager::add(this, (this + 15504));
  TParamManager::add(this, (this + 15752));
  TParamManager::add(this, (this + 16104));
  TParamManager::add(this, (this + 16456));
  TParamManager::add(this, (this + 16808));
  TParamManager::add(this, (this + 17160));
  TParamManager::add(this, (this + 17512));
  TParamManager::add(this, (this + 17864));
  TParamManager::add(this, (this + 18112));
  TParamManager::add(this, (this + 18464));
  TParamManager::add(this, (this + 18816));
  TParamManager::add(this, (this + 19168));
  TParamManager::add(this, (this + 19416));
  TParamManager::add(this, (this + 19664));
  TParamManager::add(this, (this + 19912));
  TParamManager::add(this, (this + 20160));
  TParamManager::add(this, (this + 20408));
  TParamManager::add(this, (this + 20656));
  TParamManager::add(this, (this + 20904));
  TParamManager::add(this, (this + 21152));
  TParamManager::add(this, (this + 21504));
  TParamManager::add(this, (this + 21752));
  TParamManager::add(this, (this + 22000));
  TParamManager::add(this, (this + 22248));
  TParamManager::add(this, (this + 22496));
  TParamManager::add(this, (this + 23872));
  TParamManager::add(this, (this + 25248));
  TParamManager::add(this, (this + 25600));
  MEMORY[0x1B8C84940](this + 25992, "D");
  MEMORY[0x1B8C84940](this + 26016, "9");
  MEMORY[0x1B8C84940](this + 26040, &dword_1B5AF0374);
  *(this + 3258) |= 0x20uLL;
  std::vector<std::wstring>::vector[abi:ne200100](v11, 4uLL);
  std::vector<std::wstring>::vector[abi:ne200100](v10, 4uLL);
  v5 = 0;
  v6 = "a";
  do
  {
    MEMORY[0x1B8C84940](&v11[0][v5], v6);
    v6 += wcslen(v6) + 1;
    ++v5;
  }

  while (v5 != 4);
  TStringParam::setAllowables(this + 25952, v11, 0, 0);
  TStringParam::setOriginal(this + 3244, 0, &dword_1B5AF0374);
  TParamManager::add(this, (this + 25952));
  v12 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  v10[0] = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  MEMORY[0x1B8C84940](this + 27368, "D");
  MEMORY[0x1B8C84940](this + 27392, "1");
  MEMORY[0x1B8C84940](this + 27416, &dword_1B5AF0374);
  *(this + 3430) |= 0x120uLL;
  std::vector<std::wstring>::vector[abi:ne200100](v11, 4uLL);
  std::vector<std::wstring>::vector[abi:ne200100](v10, 4uLL);
  v7 = 0;
  v8 = "a";
  do
  {
    MEMORY[0x1B8C84940](&v11[0][v7], v8);
    v8 += wcslen(v8) + 1;
    ++v7;
  }

  while (v7 != 4);
  TStringParam::setAllowables(this + 27328, v11, 0, 0);
  TStringParam::setOriginal(this + 3416, 0, &dword_1B5AF0374);
  TParamManager::add(this, (this + 27328));
  v12 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  v10[0] = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  TParamManager::add(this, (this + 28704));
  TParamManager::add(this, (this + 29240));
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *(this + 1862) = v9;
  *(this + 1861) = v9;
}

void sub_1B536B7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  TParam::~TParam((v13 + v19));
  TParam::~TParam((v13 + v18));
  TStringParam::~TStringParam((v13 + v17));
  TStringParam::~TStringParam((v13 + v16));
  TParam::~TParam((v13 + v15));
  TParam::~TParam((v13 + v20));
  TStringParam::~TStringParam(v13 + 2984);
  TStringParam::~TStringParam(v13 + 2812);
  TBoolParam::~TBoolParam(v13 + 2781);
  TBoolParam::~TBoolParam(v13 + 2750);
  TBoolParam::~TBoolParam(v13 + 2719);
  TBoolParam::~TBoolParam(v13 + 2688);
  TParam::~TParam(v13 + 2644);
  TBoolParam::~TBoolParam(v13 + 2613);
  TBoolParam::~TBoolParam(v13 + 2582);
  TBoolParam::~TBoolParam(v13 + 2551);
  TBoolParam::~TBoolParam(v13 + 2520);
  TBoolParam::~TBoolParam(v13 + 2489);
  TBoolParam::~TBoolParam(v13 + 2458);
  TBoolParam::~TBoolParam(v13 + 2427);
  TBoolParam::~TBoolParam(v13 + 2396);
  TParam::~TParam(v13 + 2352);
  TParam::~TParam(v13 + 2308);
  TParam::~TParam(v13 + 2264);
  TBoolParam::~TBoolParam(v13 + 2233);
  TParam::~TParam(v13 + 2189);
  TParam::~TParam(v13 + 2145);
  TParam::~TParam(v13 + 2101);
  TParam::~TParam(v13 + 2057);
  TParam::~TParam(v13 + 2013);
  TParam::~TParam(v13 + 1969);
  TBoolParam::~TBoolParam(v13 + 1938);
  TBoolParam::~TBoolParam(v13 + 1907);
  TBoolParam::~TBoolParam(v13 + 1876);
  TParam::~TParam(v13 + 1832);
  TParam::~TParam(v13 + 1788);
  TParam::~TParam(v13 + 1744);
  TParam::~TParam(v13 + 1700);
  TBoolParam::~TBoolParam(v13 + 1669);
  TBoolParam::~TBoolParam(v13 + 1638);
  TBoolParam::~TBoolParam(v13 + 1607);
  TBoolParam::~TBoolParam(v13 + 1576);
  TBoolParam::~TBoolParam(v13 + 1545);
  TBoolParam::~TBoolParam(v13 + 1514);
  TStringParam::~TStringParam(v13 + 1342);
  TStringParam::~TStringParam(v13 + 1170);
  TStringParam::~TStringParam(v13 + 998);
  TBoolParam::~TBoolParam(v13 + 967);
  TStringParam::~TStringParam(v13 + 795);
  TBoolParam::~TBoolParam(v13 + 764);
  TBoolParam::~TBoolParam(v13 + 733);
  TBoolParam::~TBoolParam(v13 + 702);
  TBoolParam::~TBoolParam(v13 + 671);
  TBoolParam::~TBoolParam(v13 + 640);
  TStringParam::~TStringParam(v13 + 468);
  TStringParam::~TStringParam(v13 + 296);
  TBoolParam::~TBoolParam(v13 + 265);
  TBoolParam::~TBoolParam(v13 + 234);
  TBoolParam::~TBoolParam(v13 + 203);
  TBoolParam::~TBoolParam(v13 + 172);
  TBoolParam::~TBoolParam(v13 + 141);
  TBoolParam::~TBoolParam(v13 + 110);
  TBoolParam::~TBoolParam(v13 + 79);
  TBoolParam::~TBoolParam(v13 + 48);
  TBoolParam::~TBoolParam(v14);
  TParamManager::~TParamManager(v13);
  _Unwind_Resume(a1);
}

void TParamManager::TParamManager(TParamManager *this, char a2, const TLocaleInfo *a3)
{
  *(this + 2) = 0;
  *this = &unk_1F2D39C58;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 5) = this + 48;
  *(this + 8) = 0;
  *(this + 7) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 11) = this + 96;
  *(this + 13) = 0;
  *(this + 15) = a3;
  *(this + 8) = a2;
  TParamManager::newConfig(this, "H", 0xFFFFFFFFFFFFFFFFLL);
  TParamManager::newConfig(this, "R", 0);
  *(this + 16) = -1;
}

void sub_1B536BDA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v8 = v5;
  std::__tree<std::string>::destroy(v4, *v7);
  std::vector<std::pair<unsigned long,std::wstring>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<int>::destroy(v3, *v6);
  v10 = *v8;
  if (*v8)
  {
    *(v2 + 24) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void TStringParam::~TStringParam(void **this)
{
  *this = &unk_1F2D0E620;
  v3 = this + 169;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 166;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 163;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = 144;
  do
  {
    if (SHIBYTE(this[v2 + 18]) < 0)
    {
      operator delete(this[v2 + 16]);
    }

    v2 -= 3;
  }

  while (v2 * 8);
  TParam::~TParam(this);
}

{
  *this = &unk_1F2D0E620;
  v3 = this + 169;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 166;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 163;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = 144;
  do
  {
    if (SHIBYTE(this[v2 + 18]) < 0)
    {
      operator delete(this[v2 + 16]);
    }

    v2 -= 3;
  }

  while (v2 * 8);
  TParam::~TParam(this);
  MEMORY[0x1B8C85350]();
}

void TBoolParam::~TBoolParam(void **this)
{
  v2 = 0;
  *this = &unk_1F2D39CC8;
  do
  {
    if (SHIBYTE(this[v2 + 30]) < 0)
    {
      operator delete(this[v2 + 28]);
    }

    v2 -= 3;
  }

  while (v2 != -6);

  TParam::~TParam(this);
}

{
  v2 = 0;
  *this = &unk_1F2D39CC8;
  do
  {
    if (SHIBYTE(this[v2 + 30]) < 0)
    {
      operator delete(this[v2 + 28]);
    }

    v2 -= 3;
  }

  while (v2 != -6);

  TParam::~TParam(this);
}

void TTokenizerParamManager::notifyChange(TTokenizerParamManager *this, const TParam *a2)
{
  v2 = (this + 3744);
  if ((this + 3744) == a2)
  {
    v3 = TStringParam::get((this + 3744));
    if (wcslen(v3))
    {
      v4 = TStringParam::get(v2);
      loggableUnicode(v4, __p);
      if (v7 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      tknPrintf("Warning: CharacterMapping contains an odd number of characters: <%s>\n", v5);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_1B536BF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *TTokenizerParamManager::upgradeParam(void *this, const TParam *a2)
{
  v2 = this;
  v3 = (this + 2396);
  if (this + 2396 == a2)
  {
    ActiveConfigHandle = TParam::getActiveConfigHandle((this + 2396));
    ValidConfig = TParam::getValidConfig(v3, ActiveConfigHandle);
    v6 = 2101;
    if (*(v2 + ValidConfig + 19320) != 1)
    {
      goto LABEL_23;
    }

    v7 = v2[16];
    v2[2115] &= ~(1 << (v7 + 33));
LABEL_20:

    return TParam::notifyChange(&v2[v6], v7);
  }

  if (this + 2427 == a2)
  {
    v8 = TParam::getActiveConfigHandle((this + 2427));
    v6 = 2145;
    if (*(v2 + TParam::getValidConfig((v2 + 2427), v8) + 19568) != 1)
    {
      goto LABEL_23;
    }

    v7 = v2[16];
    v2[2159] &= ~(1 << (v7 + 33));
    goto LABEL_20;
  }

  if (this + 2458 == a2)
  {
    v9 = TParam::getActiveConfigHandle((this + 2458));
    v6 = 2189;
    if (*(v2 + TParam::getValidConfig((v2 + 2458), v9) + 19816) != 1)
    {
      goto LABEL_23;
    }

    v7 = v2[16];
    v2[2203] &= ~(1 << (v7 + 33));
    goto LABEL_20;
  }

  if (this + 2520 != a2)
  {
    if (this + 2551 != a2)
    {
      if (this + 2489 != a2)
      {
        return this;
      }

      v16 = TParam::getActiveConfigHandle((this + 2489));
      v6 = 2352;
      if (*(v2 + TParam::getValidConfig((v2 + 2489), v16) + 20064) == 1)
      {
        v7 = v2[16];
        v2[2366] &= ~(1 << (v7 + 33));
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    v15 = TParam::getActiveConfigHandle((this + 2551));
    v6 = 2308;
    if (*(v2 + TParam::getValidConfig((v2 + 2551), v15) + 20560) == 1)
    {
      v7 = v2[16];
      v2[2322] &= ~(1 << (v7 + 33));
      goto LABEL_20;
    }

LABEL_23:
    v12 = TParam::getActiveConfigHandle(&v2[v6]);
    goto LABEL_24;
  }

  v10 = TParam::getActiveConfigHandle((this + 2520));
  v11 = *(v2 + TParam::getValidConfig((v2 + 2520), v10) + 20312);
  v6 = 2264;
  v12 = TParam::getActiveConfigHandle((v2 + 2264));
  if (v11 != 1)
  {
LABEL_24:
    v13 = &v2[v6];
    v14 = -1;
    goto LABEL_25;
  }

  v13 = (v2 + 2264);
  v14 = 45;
LABEL_25:

  return TIntParam::set(v13, v12, v14);
}

uint64_t TTokenizerParamManager::initializeParamConfigs(TTokenizerParamManager *this)
{
  Config = TParamManager::getConfig(this, "A");
  *(this + 3723) = Config;
  if (Config == -1)
  {
    *(this + 3723) = TParamManager::newConfig(this, "A", 1);
  }

  v3 = TParamManager::getConfig(this, "B");
  *(this + 3724) = v3;
  if (v3 == -1)
  {
    v4 = TParamManager::newConfig(this, "B", 1);
    *(this + 3724) = v4;
    *(this + v4 + 18016) = 1;
    *(this + 2247) |= 1 << (v4 + 9);
    TParam::notifyChange(this + 17864, v4);
  }

  v5 = TParamManager::getConfig(this, "A");
  *(this + 3725) = v5;
  if (v5 == -1)
  {
    v6 = TParamManager::newConfig(this, "A", 1);
    *(this + 3725) = v6;
    TIntParam::setOriginal((this + 14304), v6, 0);
    TIntParam::setOriginal((this + 17512), *(this + 3725), -1);
    TIntParam::setOriginal((this + 18112), *(this + 3725), -1);
    TIntParam::setOriginal((this + 18464), *(this + 3725), -1);
    TIntParam::setOriginal((this + 18816), *(this + 3725), -1);
  }

  result = TParamManager::getConfig(this, "F");
  *(this + 3722) = result;
  if (result == -1)
  {
    v8 = TParamManager::newConfig(this, "F", *(this + 3723));
    *(this + 3722) = v8;
    *(this + v8 + 784) = 1;
    *(this + 93) |= 1 << (v8 + 9);

    return TParam::notifyChange(this + 632, v8);
  }

  return result;
}