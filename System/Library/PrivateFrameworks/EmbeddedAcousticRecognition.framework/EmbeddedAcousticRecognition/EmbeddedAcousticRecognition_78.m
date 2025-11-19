void **kaldi::MatrixBase<float>::AddMatMat<short>(void **result, uint64_t a2, double a3, float a4, uint64_t a5, kaldi::quasar::Vocab *a6, int a7)
{
  v10 = result;
  if (a7 == 111)
  {
    v11 = kaldi::QuantizedMatrixBase<short>::NumCols(a6);
    v12 = kaldi::quasar::Vocab::VocabSize(a6);
    kaldi::QuantizedMatrix<short>::QuantizedMatrix(v13, v11, v12);
    kaldi::QuantizedMatrixBase<short>::CopyFromMat(v13, a6, 112);
    if (*(a2 + 12))
    {
      kaldi::QuantizedMatrixBase<short>::AddMatMat(v13, a2, v10, a4);
    }

    return kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(v13);
  }

  else if (*(a2 + 12))
  {

    return kaldi::QuantizedMatrixBase<short>::AddMatMat(a6, a2, result, a4);
  }

  return result;
}

int *kaldi::MatrixBase<float>::AddMatMat<signed char>(int *result, uint64_t a2, double a3, float a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == 111)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "Unimplemented");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  if (*(a2 + 12))
  {

    return kaldi::VectorwiseQuantizedMatrix<signed char>::AddMatMat(a6, a2, result, a4);
  }

  return result;
}

int *kaldi::MatrixBase<float>::AddMatMat<short>(int *result, uint64_t a2, double a3, float a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == 111)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "Unimplemented");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  if (*(a2 + 12))
  {

    return kaldi::VectorwiseQuantizedMatrix<short>::AddMatMat(a6, a2, result, a4);
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,false>(uint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = &a2[-v9] >> 3;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,0>(v9, v9 + 8, (a2 - 8));
      case 4uLL:
        result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,0>(v9, v9 + 8, v9 + 16);
        v25 = *(a2 - 2);
        v26 = *(v9 + 16);
        if (v25 >= v26)
        {
          if (v26 < v25)
          {
            return result;
          }

          v28 = *(a2 - 1);
          v27 = *(v9 + 20);
          if (v28 >= v27)
          {
            return result;
          }
        }

        else
        {
          v27 = *(v9 + 20);
          v28 = *(a2 - 1);
        }

        *(v9 + 16) = v25;
        *(a2 - 2) = v26;
        *(v9 + 20) = v28;
        *(a2 - 1) = v27;
        v29 = *(v9 + 16);
        v30 = *(v9 + 8);
        if (v29 >= v30)
        {
          if (v30 < v29)
          {
            return result;
          }

          v32 = *(v9 + 20);
          v31 = *(v9 + 12);
          if (v32 >= v31)
          {
            return result;
          }
        }

        else
        {
          v31 = *(v9 + 12);
          v32 = *(v9 + 20);
        }

        *(v9 + 8) = v29;
        *(v9 + 16) = v30;
        *(v9 + 12) = v32;
        *(v9 + 20) = v31;
        v33 = *v9;
        if (v29 >= *v9)
        {
          if (v33 < v29)
          {
            return result;
          }

          v34 = *(v9 + 4);
          if (v32 >= v34)
          {
            return result;
          }
        }

        else
        {
          v34 = *(v9 + 4);
        }

        *v9 = v29;
        *(v9 + 8) = v33;
        *(v9 + 4) = v32;
        *(v9 + 12) = v34;
        return result;
      case 5uLL:

        return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,0>(v9, v9 + 8, v9 + 16, v9 + 24, (a2 - 8));
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,std::pair<float,int> *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = (v9 + 8 * (v12 >> 1));
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,0>(v9 + 8 * (v12 >> 1), v9, (a2 - 8));
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,0>(v9, v9 + 8 * (v12 >> 1), (a2 - 8));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,0>(v9 + 8, (v14 - 2), (a2 - 16));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,0>(v9 + 16, v9 + 8 + 8 * v13, (a2 - 24));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,0>((v14 - 2), v14, v9 + 8 + 8 * v13);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      v16 = *(v9 + 4);
      *(v9 + 4) = v14[1];
      v14[1] = v16;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v17 = *(v9 - 8);
    if (v17 >= *v9 && (*v9 < v17 || *(v9 - 4) >= *(v9 + 4)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<float,int> *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_25;
    }

LABEL_20:
    v18 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<float,int> *,std::__less<void,void> &>(v9, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_23;
    }

    v20 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *>(v9, v18);
    v9 = v18 + 8;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *>(v18 + 8, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v18;
      if (v20)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v20)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,false>(v8, v18, a3, -v11, a5 & 1);
      v9 = v18 + 8;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_11;
  }

  v21 = *(a2 - 2);
  v22 = *v9;
  if (v21 < *v9)
  {
    v23 = *(v9 + 4);
    v24 = *(a2 - 1);
LABEL_30:
    *v9 = v21;
    *(a2 - 2) = v22;
    *(v9 + 4) = v24;
    *(a2 - 1) = v23;
    return result;
  }

  if (v22 >= v21)
  {
    v24 = *(a2 - 1);
    v23 = *(v9 + 4);
    if (v24 < v23)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 < *a1 || v4 >= v3 && *(a2 + 4) < *(a1 + 4))
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = *(a3 + 4);
LABEL_4:
      *a1 = v5;
      *a3 = v4;
      v7 = *(a1 + 4);
      *(a1 + 4) = v6;
      *(a3 + 4) = v7;
      return 1;
    }

    if (v3 >= v5)
    {
      v6 = *(a3 + 4);
      v16 = *(a2 + 4);
      if (v6 < v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *(a2 + 4);
    }

    *a1 = v3;
    *a2 = v4;
    v17 = *(a1 + 4);
    *(a1 + 4) = v16;
    *(a2 + 4) = v17;
    v18 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v18)
      {
        return 1;
      }

      v19 = *(a3 + 4);
      if (v19 >= v17)
      {
        return 1;
      }
    }

    else
    {
      v19 = *(a3 + 4);
    }

    *a2 = v18;
    *a3 = v4;
    *(a2 + 4) = v19;
    result = 1;
    *(a3 + 4) = v17;
    return result;
  }

  v9 = *a3;
  if (*a3 < v3)
  {
    v10 = *(a2 + 4);
    v11 = *(a3 + 4);
LABEL_10:
    *a2 = v9;
    *a3 = v3;
    *(a2 + 4) = v11;
    *(a3 + 4) = v10;
    v12 = *a2;
    v13 = *a1;
    if (*a2 < *a1)
    {
      v14 = *(a1 + 4);
      v15 = *(a2 + 4);
LABEL_12:
      *a1 = v12;
      *a2 = v13;
      *(a1 + 4) = v15;
      result = 1;
      *(a2 + 4) = v14;
      return result;
    }

    if (v13 >= v12)
    {
      v15 = *(a2 + 4);
      v14 = *(a1 + 4);
      if (v15 < v14)
      {
        goto LABEL_12;
      }
    }

    return 1;
  }

  if (v3 >= v9)
  {
    v11 = *(a3 + 4);
    v10 = *(a2 + 4);
    if (v11 < v10)
    {
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 4);
    v13 = *(a3 + 4);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 4);
    v14 = *(a4 + 4);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 4) = v14;
  *(a4 + 4) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 4);
    v17 = *(a2 + 4);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 4);
    v18 = *(a3 + 4);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 4) = v18;
  *(a3 + 4) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 4);
    v22 = *(a2 + 4);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 4) = v22;
    *(a2 + 4) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 4);
    v21 = *(a1 + 4);
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = *(a5 + 4);
    v25 = *(a4 + 4);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 4);
    v26 = *(a5 + 4);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 4) = v26;
  *(a5 + 4) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 4);
    v29 = *(a3 + 4);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 4);
    v30 = *(a4 + 4);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 4) = v30;
  *(a4 + 4) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 4);
    v33 = *(a2 + 4);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 4);
    v34 = *(a3 + 4);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 4) = v34;
  *(a3 + 4) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 4);
    v38 = *(a2 + 4);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 4) = v38;
    *(a2 + 4) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 4);
    v37 = *(a1 + 4);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *>(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result + 8;
  if (result + 8 == a2)
  {
    return result;
  }

  v3 = 0;
  v4 = result;
  do
  {
    v5 = v4;
    v4 = v2;
    v6 = *(v5 + 8);
    v7 = *v5;
    if (v6 >= *v5)
    {
      if (v7 < v6)
      {
        goto LABEL_19;
      }

      v8 = *(v5 + 12);
      v9 = *(v5 + 4);
      if (v8 >= v9)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = *(v5 + 12);
      v9 = *(v5 + 4);
    }

    *(v5 + 8) = v7;
    *(v4 + 4) = v9;
    v10 = result;
    if (v5 == result)
    {
      goto LABEL_18;
    }

    v11 = v3;
    while (1)
    {
      v12 = *(result + v11 - 8);
      if (v6 >= v12)
      {
        break;
      }

      v13 = *(result + v11 - 4);
LABEL_12:
      v5 -= 8;
      v14 = result + v11;
      *v14 = v12;
      *(v14 + 4) = v13;
      v11 -= 8;
      if (!v11)
      {
        v10 = result;
        goto LABEL_18;
      }
    }

    if (v12 >= v6)
    {
      v10 = result + v11;
      v13 = *(result + v11 - 4);
      if (v8 >= v13)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    v10 = v5;
LABEL_18:
    *v10 = v6;
    *(v10 + 4) = v8;
LABEL_19:
    v2 = v4 + 8;
    v3 += 8;
  }

  while (v4 + 8 != a2);
  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 8;
    if (result + 8 != a2)
    {
      for (i = result + 4; ; i += 8)
      {
        v4 = result;
        result = v2;
        v5 = *(v4 + 8);
        v6 = *v4;
        if (v5 < *v4)
        {
          break;
        }

        if (v6 >= v5)
        {
          v7 = *(v4 + 12);
          if (v7 < *(v4 + 4))
          {
            goto LABEL_6;
          }
        }

LABEL_14:
        v2 = result + 8;
        if (result + 8 == a2)
        {
          return result;
        }
      }

      v7 = *(v4 + 12);
LABEL_6:
      for (j = i; ; j -= 8)
      {
        *(j + 4) = v6;
        *(j + 8) = *j;
        v6 = *(j - 12);
        if (v5 >= v6 && (v6 < v5 || v7 >= *(j - 8)))
        {
          break;
        }
      }

      *(j - 4) = v5;
      *j = v7;
      goto LABEL_14;
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<float,int> *,std::__less<void,void> &>(unint64_t a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a2 - 8);
  if (*a1 < v4 || v4 >= v2 && v3 < *(a2 - 4))
  {
    i = a1;
    do
    {
      v6 = *(i + 8);
      i += 8;
      v7 = v6;
    }

    while (v2 >= v6 && (v7 < v2 || v3 >= *(i + 4)));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 8; v2 < v4 || v4 >= v2 && v3 < *(a2 + 4); a2 -= 8)
    {
      v8 = *(a2 - 8);
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
      v11 = *(i + 8);
      i += 8;
      v9 = v11;
      v12 = *(i - 4);
      *(i - 4) = *(a2 + 4);
      *(a2 + 4) = v12;
      while (v2 >= v9 && (v9 < v2 || v3 >= *(i + 4)))
      {
        v13 = *(i + 8);
        i += 8;
        v9 = v13;
      }

      do
      {
        do
        {
          v14 = *(a2 - 8);
          a2 -= 8;
          v10 = v14;
        }

        while (v2 < v14);
      }

      while (v10 >= v2 && v3 < *(a2 + 4));
    }

    while (i < a2);
  }

  if (i - 8 != a1)
  {
    *a1 = *(i - 8);
    *(a1 + 4) = *(i - 4);
  }

  *(i - 8) = v2;
  *(i - 4) = v3;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<float,int> *,std::__less<void,void> &>(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 4);
  while (1)
  {
    v5 = *(a1 + v2 + 8);
    if (v5 >= v3 && (v3 < v5 || *(a1 + v2 + 12) >= v4))
    {
      break;
    }

    v2 += 8;
  }

  v6 = a1 + v2 + 8;
  if (v2)
  {
    do
    {
      v7 = *(a2 - 8);
      a2 -= 8;
      v8 = v7;
    }

    while (v7 >= v3 && (v3 < v8 || *(a2 + 4) >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v9 = *(a2 - 8);
        a2 -= 8;
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

      while (*(a2 + 4) >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = a1 + v2 + 8;
  }

  else
  {
    v12 = *a2;
    v13 = a1 + v2 + 8;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = *(v13 + 4);
      *(v13 + 4) = *(v14 + 4);
      *(v14 + 4) = v15;
      do
      {
        do
        {
          v16 = *(v13 + 8);
          v13 += 8;
          v5 = v16;
        }

        while (v16 < v3);
      }

      while (v3 >= v5 && *(v13 + 4) < v4);
      do
      {
        v17 = *(v14 - 8);
        v14 -= 8;
        v12 = v17;
      }

      while (v17 >= v3 && (v3 < v12 || *(v14 + 4) >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 8 != a1)
  {
    *a1 = *(v13 - 8);
    *(a1 + 4) = *(v13 - 4);
  }

  *(v13 - 8) = v3;
  *(v13 - 4) = v4;
  return v13 - 8;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,0>(a1, a1 + 8, a2 - 8);
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,0>(a1, a1 + 8, a1 + 16);
        v23 = *(a2 - 8);
        v24 = *(a1 + 16);
        if (v23 >= v24)
        {
          if (v24 < v23)
          {
            return 1;
          }

          v26 = *(a2 - 4);
          v25 = *(a1 + 20);
          if (v26 >= v25)
          {
            return 1;
          }
        }

        else
        {
          v25 = *(a1 + 20);
          v26 = *(a2 - 4);
        }

        *(a1 + 16) = v23;
        *(a2 - 8) = v24;
        *(a1 + 20) = v26;
        *(a2 - 4) = v25;
        v27 = *(a1 + 16);
        v28 = *(a1 + 8);
        if (v27 >= v28)
        {
          if (v28 < v27)
          {
            return 1;
          }

          v30 = *(a1 + 20);
          v29 = *(a1 + 12);
          if (v30 >= v29)
          {
            return 1;
          }
        }

        else
        {
          v29 = *(a1 + 12);
          v30 = *(a1 + 20);
        }

        *(a1 + 8) = v27;
        *(a1 + 16) = v28;
        *(a1 + 12) = v30;
        *(a1 + 20) = v29;
        v31 = *a1;
        if (v27 >= *a1)
        {
          if (v31 < v27)
          {
            return 1;
          }

          v32 = *(a1 + 4);
          if (v30 >= v32)
          {
            return 1;
          }
        }

        else
        {
          v32 = *(a1 + 4);
        }

        *a1 = v27;
        *(a1 + 8) = v31;
        *(a1 + 4) = v30;
        result = 1;
        *(a1 + 12) = v32;
        return result;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,0>(a1, a1 + 8, a1 + 16, a1 + 24, a2 - 8);
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
      v5 = *(a2 - 8);
      v6 = *a1;
      if (v5 < *a1)
      {
        v7 = *(a1 + 4);
        v8 = *(a2 - 4);
LABEL_6:
        *a1 = v5;
        *(a2 - 8) = v6;
        *(a1 + 4) = v8;
        result = 1;
        *(a2 - 4) = v7;
        return result;
      }

      if (v6 >= v5)
      {
        v8 = *(a2 - 4);
        v7 = *(a1 + 4);
        if (v8 < v7)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

  v10 = a1 + 16;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,0>(a1, a1 + 8, a1 + 16);
  v11 = a1 + 24;
  if (a1 + 24 == a2)
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

      v16 = *(v11 + 4);
      v17 = *(v10 + 4);
      if (v16 >= v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(v11 + 4);
      v17 = *(v10 + 4);
    }

    *v11 = v15;
    *(v11 + 4) = v17;
    v18 = v12;
    while (1)
    {
      v19 = a1 + v18;
      v20 = *(a1 + v18 + 8);
      if (v14 >= v20)
      {
        break;
      }

      v21 = *(v19 + 12);
LABEL_21:
      *(v19 + 16) = v20;
      *(a1 + v18 + 20) = v21;
      v18 -= 8;
      if (v18 == -16)
      {
        v22 = a1;
        goto LABEL_27;
      }
    }

    if (v20 >= v14)
    {
      v21 = *(a1 + v18 + 12);
      if (v16 < v21)
      {
        goto LABEL_21;
      }
    }

    v22 = a1 + v18 + 16;
LABEL_27:
    *v22 = v14;
    *(v22 + 4) = v16;
    if (++v13 != 8)
    {
LABEL_28:
      v10 = v11;
      v12 += 8;
      v11 += 8;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 8 == a2;
  }
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *,std::pair<float,int> *>(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[8 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *>(a1, a4, v8, v11);
        v11 -= 8;
        --v10;
      }

      while (v10);
    }

    i = a2;
    if (a2 != a3)
    {
      for (i = a2; i != a3; i += 8)
      {
        v13 = *i;
        v14 = *a1;
        if (*i >= *a1)
        {
          if (v14 < v13)
          {
            continue;
          }

          v15 = *(i + 1);
          v16 = *(a1 + 1);
          if (v15 >= v16)
          {
            continue;
          }
        }

        else
        {
          v15 = *(i + 1);
          v16 = *(a1 + 1);
        }

        *i = v14;
        *a1 = v13;
        *(i + 1) = v16;
        *(a1 + 1) = v15;
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *>(a1, a4, v8, a1);
      }
    }

    if (v8 >= 2)
    {
      v17 = a2 - 8;
      do
      {
        v18 = *a1;
        v19 = *(a1 + 1);
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *>(a1, a4, v8);
        if (v17 == v20)
        {
          *v20 = v18;
          *(v20 + 1) = v19;
        }

        else
        {
          *v20 = *v17;
          *(v20 + 1) = *(v17 + 1);
          *v17 = v18;
          *(v17 + 1) = v19;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *>(a1, (v20 + 8), a4, (v20 + 8 - a1) >> 3);
        }

        v17 -= 8;
      }

      while (v8-- > 2);
    }

    return i;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = result + 8 * v7;
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 8);
        if (*v8 < v10 || v10 >= *v8 && *(v8 + 4) < *(v8 + 12))
        {
          v8 += 8;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v12 >= v11)
        {
          v14 = *(v8 + 4);
          v13 = *(a4 + 4);
          if (v14 < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = *(a4 + 4);
          v14 = *(v8 + 4);
        }

        *a4 = v11;
        *(a4 + 4) = v14;
        if (v5 >= v7)
        {
          while (1)
          {
            v16 = 2 * v7;
            v7 = (2 * v7) | 1;
            v15 = result + 8 * v7;
            v17 = v16 + 2;
            if (v17 < a3)
            {
              v18 = *(v15 + 8);
              if (*v15 < v18 || v18 >= *v15 && *(v15 + 4) < *(v15 + 12))
              {
                v15 += 8;
                v7 = v17;
              }
            }

            v19 = *v15;
            if (*v15 < v12)
            {
              break;
            }

            v20 = *(v15 + 4);
            if (v12 >= v19 && v20 < v13)
            {
              break;
            }

            *v8 = v19;
            *(v8 + 4) = v20;
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
        *(v15 + 4) = v13;
      }
    }
  }

  return result;
}

float std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    v5 = &a1[2 * v3];
    a1 = v5 + 2;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = *(v5 + 4);
      v9 = *(v5 + 2);
      if (v9 < v8 || v8 >= v9 && v5[3] < v5[5])
      {
        a1 = v5 + 4;
        v3 = v7;
      }
    }

    result = *a1;
    *v4 = *a1;
    v4[1] = a1[1];
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = result + 8 * (v4 >> 1);
    v7 = *v6;
    v8 = *(a2 - 8);
    if (*v6 >= v8)
    {
      if (v8 < v7)
      {
        return result;
      }

      v10 = *(v6 + 4);
      v9 = *(a2 - 4);
      if (v10 >= v9)
      {
        return result;
      }
    }

    else
    {
      v9 = *(a2 - 4);
      v10 = *(v6 + 4);
    }

    *(a2 - 8) = v7;
    *(a2 - 4) = v10;
    if (v4 >= 2)
    {
      while (1)
      {
        v12 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v11 = result + 8 * v5;
        v13 = *v11;
        if (*v11 >= v8)
        {
          if (v8 < v13)
          {
            break;
          }

          v14 = *(v11 + 4);
          if (v14 >= v9)
          {
            break;
          }
        }

        else
        {
          v14 = *(v11 + 4);
        }

        *v6 = v13;
        *(v6 + 4) = v14;
        v6 = result + 8 * v5;
        if (v12 <= 1)
        {
          goto LABEL_11;
        }
      }
    }

    v11 = v6;
LABEL_11:
    *v11 = v8;
    *(v11 + 4) = v9;
  }

  return result;
}

void *std::vector<std::pair<double,int>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::pair<double,int>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B55DB060(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<double,int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long long,unsigned int>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,false>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v9, v9 + 16, a2 - 16);
      case 4uLL:
        result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v9, v9 + 16, v9 + 32);
        v25 = *(a2 - 16);
        v26 = *(v9 + 32);
        if (v25 >= v26)
        {
          if (v26 < v25)
          {
            return result;
          }

          v28 = *(a2 - 8);
          v27 = *(v9 + 40);
          if (v28 >= v27)
          {
            return result;
          }
        }

        else
        {
          v27 = *(v9 + 40);
          v28 = *(a2 - 8);
        }

        *(v9 + 32) = v25;
        *(a2 - 16) = v26;
        *(v9 + 40) = v28;
        *(a2 - 8) = v27;
        v29 = *(v9 + 32);
        v30 = *(v9 + 16);
        if (v29 >= v30)
        {
          if (v30 < v29)
          {
            return result;
          }

          v32 = *(v9 + 40);
          v31 = *(v9 + 24);
          if (v32 >= v31)
          {
            return result;
          }
        }

        else
        {
          v31 = *(v9 + 24);
          v32 = *(v9 + 40);
        }

        *(v9 + 16) = v29;
        *(v9 + 32) = v30;
        *(v9 + 24) = v32;
        *(v9 + 40) = v31;
        v33 = *v9;
        if (v29 >= *v9)
        {
          if (v33 < v29)
          {
            return result;
          }

          v34 = *(v9 + 8);
          if (v32 >= v34)
          {
            return result;
          }
        }

        else
        {
          v34 = *(v9 + 8);
        }

        *v9 = v29;
        *(v9 + 16) = v33;
        *(v9 + 8) = v32;
        *(v9 + 24) = v34;
        return result;
      case 5uLL:

        return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v9, v9 + 16, v9 + 32, v9 + 48, a2 - 16);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,std::pair<double,int> *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v9 + 16 * (v12 >> 1), v9, a2 - 16);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v9, v9 + 16 * (v12 >> 1), a2 - 16);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v9 + 16, v14 - 16, a2 - 32);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v9 + 32, v9 + 16 + 16 * v13, a2 - 48);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v14 - 16, v14, v9 + 16 + 16 * v13);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      v16 = *(v9 + 8);
      *(v9 + 8) = *(v14 + 8);
      *(v14 + 8) = v16;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v17 = *(v9 - 16);
    if (v17 >= *v9 && (*v9 < v17 || *(v9 - 8) >= *(v9 + 8)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<double,int> *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_25;
    }

LABEL_20:
    v18 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<double,int> *,std::__less<void,void> &>(v9, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_23;
    }

    v20 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(v9, v18);
    v9 = v18 + 16;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(v18 + 16, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v18;
      if (v20)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v20)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,false>(v8, v18, a3, -v11, a5 & 1);
      v9 = v18 + 16;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_11;
  }

  v21 = *(a2 - 16);
  v22 = *v9;
  if (v21 < *v9)
  {
    v23 = *(v9 + 8);
    v24 = *(a2 - 8);
LABEL_30:
    *v9 = v21;
    *(a2 - 16) = v22;
    *(v9 + 8) = v24;
    *(a2 - 8) = v23;
    return result;
  }

  if (v22 >= v21)
  {
    v24 = *(a2 - 8);
    v23 = *(v9 + 8);
    if (v24 < v23)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 < *a1 || v4 >= v3 && *(a2 + 8) < *(a1 + 8))
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = *(a3 + 8);
LABEL_4:
      *a1 = v5;
      *a3 = v4;
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;
      *(a3 + 8) = v7;
      return 1;
    }

    if (v3 >= v5)
    {
      v6 = *(a3 + 8);
      v16 = *(a2 + 8);
      if (v6 < v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *(a2 + 8);
    }

    *a1 = v3;
    *a2 = v4;
    v17 = *(a1 + 8);
    *(a1 + 8) = v16;
    *(a2 + 8) = v17;
    v18 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v18)
      {
        return 1;
      }

      v19 = *(a3 + 8);
      if (v19 >= v17)
      {
        return 1;
      }
    }

    else
    {
      v19 = *(a3 + 8);
    }

    *a2 = v18;
    *a3 = v4;
    *(a2 + 8) = v19;
    result = 1;
    *(a3 + 8) = v17;
    return result;
  }

  v9 = *a3;
  if (*a3 < v3)
  {
    v10 = *(a2 + 8);
    v11 = *(a3 + 8);
LABEL_10:
    *a2 = v9;
    *a3 = v3;
    *(a2 + 8) = v11;
    *(a3 + 8) = v10;
    v12 = *a2;
    v13 = *a1;
    if (*a2 < *a1)
    {
      v14 = *(a1 + 8);
      v15 = *(a2 + 8);
LABEL_12:
      *a1 = v12;
      *a2 = v13;
      *(a1 + 8) = v15;
      result = 1;
      *(a2 + 8) = v14;
      return result;
    }

    if (v13 >= v12)
    {
      v15 = *(a2 + 8);
      v14 = *(a1 + 8);
      if (v15 < v14)
      {
        goto LABEL_12;
      }
    }

    return 1;
  }

  if (v3 >= v9)
  {
    v11 = *(a3 + 8);
    v10 = *(a2 + 8);
    if (v11 < v10)
    {
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 8);
    v13 = *(a3 + 8);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 8);
    v21 = *(a1 + 8);
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = *(a5 + 8);
    v25 = *(a4 + 8);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 8);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 8) = v26;
  *(a5 + 8) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 8);
    v29 = *(a3 + 8);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v33 = *(a2 + 8);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 8);
    v37 = *(a1 + 8);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result + 16;
  if (result + 16 == a2)
  {
    return result;
  }

  v3 = 0;
  v4 = result;
  do
  {
    v5 = v4;
    v4 = v2;
    v6 = *(v5 + 16);
    v7 = *v5;
    if (v6 >= *v5)
    {
      if (v7 < v6)
      {
        goto LABEL_19;
      }

      v8 = *(v5 + 24);
      v9 = *(v5 + 8);
      if (v8 >= v9)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = *(v5 + 24);
      v9 = *(v5 + 8);
    }

    *(v5 + 16) = v7;
    *(v4 + 8) = v9;
    v10 = result;
    if (v5 == result)
    {
      goto LABEL_18;
    }

    v11 = v3;
    while (1)
    {
      v12 = *(result + v11 - 16);
      if (v6 >= v12)
      {
        break;
      }

      v13 = *(result + v11 - 8);
LABEL_12:
      v5 -= 16;
      v14 = result + v11;
      *v14 = v12;
      *(v14 + 8) = v13;
      v11 -= 16;
      if (!v11)
      {
        v10 = result;
        goto LABEL_18;
      }
    }

    if (v12 >= v6)
    {
      v10 = result + v11;
      v13 = *(result + v11 - 8);
      if (v8 >= v13)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    v10 = v5;
LABEL_18:
    *v10 = v6;
    *(v10 + 8) = v8;
LABEL_19:
    v2 = v4 + 16;
    v3 += 16;
  }

  while (v4 + 16 != a2);
  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(uint64_t result, uint64_t a2)
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

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<double,int> *,std::__less<void,void> &>(unint64_t a1, unint64_t a2)
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

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<double,int> *,std::__less<void,void> &>(uint64_t a1, unint64_t a2)
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(a1, a1 + 16, a2 - 16);
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(a1, a1 + 16, a1 + 32);
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
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16);
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
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(a1, a1 + 16, a1 + 32);
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

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,std::pair<double,int> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(a1, a4, v8, v11);
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
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(a1, a4, v8, a1);
      }
    }

    if (v8 >= 2)
    {
      v17 = a2 - 16;
      do
      {
        v18 = *a1;
        v19 = *(a1 + 8);
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(a1, a4, v8);
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
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(a1, v20 + 16, a4, (v20 + 16 - a1) >> 4);
        }

        v17 -= 16;
      }

      while (v8-- > 2);
    }

    return i;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

            if (v12 >= v19)
            {
              v20 = *(v15 + 8);
              if (v20 < v13)
              {
                break;
              }
            }

            else
            {
              v20 = *(v15 + 8);
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

double std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

_DWORD *std::vector<float>::emplace_back<float const&>(const void **a1, _DWORD *a2)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
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
  return v6 - 1;
}

void *std::vector<double>::emplace_back<double const&>(const void **a1, void *a2)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
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
  return v6 - 1;
}

void *std::__function::__func<kaldi::MatrixBase<float>::AggByCol(int,std::function<float ()(float,float)>,BOOL)::{lambda(float,float)#1},std::allocator<kaldi::MatrixBase<float>::AggByCol(int,std::function<float ()(float,float)>,BOOL)::{lambda(float,float)#1}>,float ()(float,float)>::~__func(void *a1)
{
  *a1 = &unk_1F2D1F708;
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<kaldi::MatrixBase<float>::AggByCol(int,std::function<float ()(float,float)>,BOOL)::{lambda(float,float)#1},std::allocator<kaldi::MatrixBase<float>::AggByCol(int,std::function<float ()(float,float)>,BOOL)::{lambda(float,float)#1}>,float ()(float,float)>::~__func(void *a1)
{
  *a1 = &unk_1F2D1F708;
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1B8C85350);
}

void std::__function::__func<kaldi::MatrixBase<float>::AggByCol(int,std::function<float ()(float,float)>,BOOL)::{lambda(float,float)#1},std::allocator<kaldi::MatrixBase<float>::AggByCol(int,std::function<float ()(float,float)>,BOOL)::{lambda(float,float)#1}>,float ()(float,float)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<kaldi::MatrixBase<float>::AggByCol(int,std::function<float ()(float,float)>,BOOL)::{lambda(float,float)#1},std::allocator<kaldi::MatrixBase<float>::AggByCol(int,std::function<float ()(float,float)>,BOOL)::{lambda(float,float)#1}>,float ()(float,float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<float ()(float,float)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
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

  return result;
}

void sub_1B55DCA68(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

float std::__function::__func<kaldi::MatrixBase<float>::MaxByCol(int,BOOL)::{lambda(float,float)#1},std::allocator<kaldi::MatrixBase<float>::MaxByCol(int,BOOL)::{lambda(float,float)#1}>,float ()(float,float)>::operator()(uint64_t a1, float *a2, uint64_t a3)
{
  result = *a2;
  if (*a2 <= *a3)
  {
    return *a3;
  }

  return result;
}

uint64_t std::__function::__func<kaldi::MatrixBase<float>::MaxByCol(int,BOOL)::{lambda(float,float)#1},std::allocator<kaldi::MatrixBase<float>::MaxByCol(int,BOOL)::{lambda(float,float)#1}>,float ()(float,float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float std::__function::__func<kaldi::MatrixBase<float>::MinByCol(int,BOOL)::{lambda(float,float)#1},std::allocator<kaldi::MatrixBase<float>::MinByCol(int,BOOL)::{lambda(float,float)#1}>,float ()(float,float)>::operator()(uint64_t a1, float *a2, uint64_t a3)
{
  result = *a2;
  if (*a2 >= *a3)
  {
    return *a3;
  }

  return result;
}

uint64_t std::__function::__func<kaldi::MatrixBase<float>::MinByCol(int,BOOL)::{lambda(float,float)#1},std::allocator<kaldi::MatrixBase<float>::MinByCol(int,BOOL)::{lambda(float,float)#1}>,float ()(float,float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void quasar::SpeechRecognizer::SpeechRecognizer(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = quasar::SpeechRecognizerBase::SpeechRecognizerBase(a1);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = &unk_1F2D1F898;
  *(v8 + 3) = 0u;
  *(v8 + 5) = 0u;
  *(v8 + 7) = 0u;
  v8[9] = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(a1 + 96) = *(a2 + 2);
    *(a1 + 80) = v9;
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 104, *a5, a5[1], 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3));
  *(a1 + 136) = 850045863;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 1018212795;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  operator new();
}

void sub_1B55DCF7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 9);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v2 + 7);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  v6 = *(v2 + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  quasar::Bitmap::~Bitmap(v2);
  _Unwind_Resume(a1);
}

BOOL quasar::SpeechRecognizer::isRecogCancelled(quasar::SpeechRecognizer *this)
{
  std::mutex::lock((this + 136));
  v2 = *(this + 32) == 3;
  std::mutex::unlock((this + 136));
  return v2;
}

std::string *quasar::SpeechRecognizer::AddConfigOverride(uint64_t a1, const void **a2, const std::string *a3)
{
  if (*(a1 + 128))
  {
    v6 = quasar::gLogLevel < 4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    memset(v9, 0, sizeof(v9));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "AddConfigOverride() can only be called before init()", 52);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(v9);
  }

  *&v9[0] = a2;
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 368), a2);
  return std::string::operator=((v7 + 5), a3);
}

void quasar::SpeechRecognizer::init(quasar::SpeechRecognizer *this)
{
  quasar::SpeechRecognizerActiveConfiguration::all(v2);
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  quasar::SpeechRecognizer::init();
}

void sub_1B55DD314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char *a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  quasar::SpeechRecognizerActiveConfiguration::~SpeechRecognizerActiveConfiguration(&a18);
  _Unwind_Resume(a1);
}

double quasar::SpeakerCodeTrainingConfig::registerParams(quasar::SpeakerCodeTrainingConfig *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v7, "training-nnet-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Training neural network path");
  quasar::SystemConfig::Register<std::string>(a2, v7, this, __p, 1, 204, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "max-feature-cache-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "Max feature cache size for training");
  quasar::SystemConfig::Register<unsigned int>(a2, v7, this + 64, __p, 1, 204, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "learning-rate");
  std::string::basic_string[abi:ne200100]<0>(__p, "Learning rate of the training");
  quasar::SystemConfig::Register<float>(a2, v7, this + 52, __p, 1, 204, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "training-nnet-version");
  std::string::basic_string[abi:ne200100]<0>(__p, "Training neural network version");
  quasar::SystemConfig::Register<unsigned int>(a2, v7, this + 48, __p, 1, 204, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "generic-speaker-code");
  std::string::basic_string[abi:ne200100]<0>(__p, "Generic speaker code");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 24, __p, 1, 204, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "initialize-option");
  std::string::basic_string[abi:ne200100]<0>(__p, "Options to initialize training speaker code, 1 is generic speaker code, 2 is all-zeros");
  quasar::SystemConfig::Register<unsigned int>(a2, v7, this + 68, __p, 1, 204, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "recognition-interval");
  std::string::basic_string[abi:ne200100]<0>(__p, "The threshold to apply trained speaker code in recognition");
  quasar::SystemConfig::Register<unsigned int>(a2, v7, this + 72, __p, 1, 204, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "supported-tasks");
  std::string::basic_string[abi:ne200100]<0>(__p, "Supported tasks for training. Only the configured tasks will run training at the end of recognition");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 96, __p, 0, 216, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "update-interval");
  std::string::basic_string[abi:ne200100]<0>(__p, "The interval which will be used for updating the speaker code for training, default is 64");
  quasar::SystemConfig::Register<unsigned int>(a2, v7, this + 56, __p, 0, 204, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "batch-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "Training mini batch size, default is 1");
  quasar::SystemConfig::Register<unsigned int>(a2, v7, this + 60, __p, 0, 204, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "enable-continuous-training");
  std::string::basic_string[abi:ne200100]<0>(__p, "The flag to enable continuous training, default is false");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 80, __p, 0, 204, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "initial-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "Speaker code dimension. As speaker code is one-dimentional vector, it's also the number of rows");
  quasar::SystemConfig::Register<unsigned int>(a2, v7, this + 76, __p, 0, 204, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "confidence-threshold");
  std::string::basic_string[abi:ne200100]<0>(__p, "If average confidence of all tokens is below the threshold, the utterance will be dropped, default is 0");
  quasar::SystemConfig::Register<float>(a2, v7, this + 84, __p, 0, 204, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "silence-frame-ratio");
  std::string::basic_string[abi:ne200100]<0>(__p, "The ratio of silence frames, num(silence_frame) = min(ratio * num(valid_speech_frame), num(silence_frame)), default is 0");
  quasar::SystemConfig::Register<float>(a2, v7, this + 88, __p, 0, 204, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "update-inference");
  std::string::basic_string[abi:ne200100]<0>(__p, "If it is true, the inference speaker code used in recognition will be updated in training, otherwise inference speaker code is always the generic one, default is false");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 81, __p, 0, 204, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  *&result = 0x100000040;
  *(this + 7) = 0x100000040;
  return result;
}

void sub_1B55DD9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

uint64_t quasar::SpeechRecognizer::getActiveConfiguration(quasar::SpeechRecognizer *this)
{
  v1 = *(this + 8);
  if (!v1)
  {
    memset(v3, 0, sizeof(v3));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "getActiveConfiguration called before init.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v3);
  }

  return v1 + 24;
}

void quasar::SpeechRecognizer::setActiveConfiguration(quasar::SpeechRecognizer *this, const quasar::SpeechRecognizerActiveConfiguration *a2)
{
  if (*(this + 8))
  {
    std::mutex::lock((this + 136));
    if (*(this + 32) == 1)
    {
      std::mutex::unlock((this + 136));
      quasar::SpeechRecognizerModelLoader::setActiveConfiguration(*(this + 8), a2);
    }

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
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v4, "Cannot call setActiveConfiguration while recognition is running.", 64);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v4);
  }

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
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v4);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(&v4, "setActiveConfiguration called before init.");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v4);
}

void quasar::SpeechRecognizer::runAsync(uint64_t a1, uint64_t a2)
{
  v27 = quasar::Location::fromSharedFuture((*a2 + 16));
  v28 = v4;
  v5 = *(*a2 + 724);
  std::mutex::lock((a1 + 136));
  if (*(a1 + 128) != 1)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
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
    v10 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v10);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "SpeechRecognizer must be in initialized state before you call runAsync(). ", 74);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Hint: Make sure you call waitForAsyncRecogToFinish() before calling runAsync() again.", 85);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v10);
  }

  v6 = *a2;
  if (v5 <= 0)
  {
    if ((v6[36] & 1) == 0)
    {
      if (v6[37] == 1)
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
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
        v10 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Utterance concatenation should only be used with utterance detection or VAD gating", 82);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v10);
      }

LABEL_14:
      v8 = *(a1 + 576);
      *(a1 + 568) = 0;
      *(a1 + 576) = 0;
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      std::allocate_shared[abi:ne200100]<kaldi::Timer,std::allocator<kaldi::Timer>,BOOL,BOOL,0>();
    }

    if ((v6[48] & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v6[48] != 1)
  {
    goto LABEL_14;
  }

  if ((v6[37] & 1) == 0)
  {
    if (v6[624])
    {
      v7 = 0;
    }

    else
    {
      v7 = v6[625] ^ 1;
    }

    quasar::RunAsyncParams::setSkipEagerWrite(v6, v7 & 1);
  }

  goto LABEL_14;
}

void sub_1B55DE3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::locale a27)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a27);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  a27.__locale_ = &a20;
  std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&a27);
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  std::mutex::unlock((v27 + 136));
  _Unwind_Resume(a1);
}

void sub_1B55DE3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, void **a27)
{
  *(v28 - 96) = v27;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100]((v28 - 96));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  a27 = &a20;
  std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&a27);
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  JUMPOUT(0x1B55DE48CLL);
}

void sub_1B55DE454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a28)
  {
    JUMPOUT(0x1B55DE46CLL);
  }

  JUMPOUT(0x1B55DE470);
}

void quasar::SpeechRecognizer::dispatchRunSyncAndMarkEndOfRun(quasar::SpeechRecognizer **this, void *a2)
{
  v2 = *this;
  *this = 0;
  this[1] = 0;
  MEMORY[0x1B8C85350]();
  quasar::SpeechRecognizer::runSyncAndMarkEndOfRun(v2);
}

void sub_1B55DE500(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SpeechRecognizer::updateLmeProfile(quasar::SpeechRecognizer *this, int **a2)
{
  std::mutex::lock((this + 440));
  quasar::LmeDataStreams::getLmeStreams(a2, &v4);
  if ((this + 408) != &v4)
  {
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__assign_with_size[abi:ne200100]<std::shared_ptr<quasar::LmeContainer>*,std::shared_ptr<quasar::LmeContainer>*>(this + 51, v4, v5, (v5 - v4) >> 4);
  }

  v6 = &v4;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v6);
  *(this + 432) = 1;
  std::mutex::unlock((this + 440));
}

void sub_1B55DE5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::mutex::unlock((v12 + 440));
  _Unwind_Resume(a1);
}

void quasar::SpeechRecognizer::waitForAsyncRecogToFinish(quasar::SpeechRecognizer *this)
{
  v2 = (this + 136);
  v3 = 1;
  std::mutex::lock((this + 136));
  while ((*(this + 32) - 2) <= 2)
  {
    std::condition_variable_any::wait<std::unique_lock<std::mutex>>(this + 200, &v2);
  }

  if (v3 == 1)
  {
    std::mutex::unlock(v2);
  }
}

void sub_1B55DE63C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void std::condition_variable_any::wait<std::unique_lock<std::mutex>>(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6.__m_ = v5;
  v6.__owns_ = 1;
  std::mutex::lock(v5);
  std::unique_lock<std::mutex>::unlock[abi:ne200100](a2);
  std::condition_variable::wait(a1, &v6);
  std::unique_lock<std::mutex>::unlock[abi:ne200100](&v6);
  std::unique_lock<std::mutex>::lock[abi:ne200100](a2);
  if (v6.__owns_)
  {
    std::mutex::unlock(v6.__m_);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1B55DE704(_Unwind_Exception *a1)
{
  std::mutex::unlock(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void quasar::SpeechRecognizer::cancelAsyncRecognition(quasar::SpeechRecognizer *this)
{
  std::mutex::lock((this + 136));
  if (*(this + 32) >= 2u)
  {
    if (quasar::gLogLevel >= 4)
    {
      memset(v2, 0, sizeof(v2));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Cancelling recognition", 22);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v2);
    }

    (*(**(this + 33) + 32))(*(this + 33));
    *(this + 32) = 3;
    std::mutex::unlock((this + 136));
    (*(*this + 32))(this);
  }

  else
  {

    std::mutex::unlock((this + 136));
  }
}

void sub_1B55DE858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a9);
  std::mutex::unlock((v9 + 136));
  _Unwind_Resume(a1);
}

void quasar::SpeechRecognizer::markEndOfRunAsyncThread(quasar::SpeechRecognizer *this)
{
  std::mutex::lock((this + 136));
  if ((*(this + 32) - 2) >= 3)
  {
    memset(v5, 0, sizeof(v5));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "This function can only be called in Recognizing or Cancelling state", 67);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v5);
  }

  v2 = *(this + 36);
  *(this + 35) = 0;
  *(this + 36) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 34);
  *(this + 33) = 0;
  *(this + 34) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *(this + 32) = 1;
  v4 = *(this + 31);
  std::mutex::lock(v4);
  std::mutex::unlock(v4);
  std::condition_variable::notify_all((this + 200));

  std::mutex::unlock((this + 136));
}

void quasar::SpeechRecognizer::runSync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 288);
  *(a1 + 280) = v6;
  *(a1 + 288) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(a3 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  quasar::SpeechRecognizer::runSync(a1);
}

void sub_1B55DEDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarWarnMessage::~QuasarWarnMessage(va);
  _Unwind_Resume(a1);
}

void sub_1B55DEE00(uint64_t a1, std::__shared_weak_count *a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  quasar::RecogResult::~RecogResult(va);
  JUMPOUT(0x1B55DEE18);
}

void quasar::SpeechRecognizer::getRecogStats(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  std::atomic_load[abi:ne200100]<quasar::SpeechRequestResultData>((a1 + 552), &v9);
  quasar::SpeechRequestResultData::getAALogData(v9, a2, a3, a4, a5);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1B55DEE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::atomic_load[abi:ne200100]<quasar::SpeechRequestResultData>(void *a1@<X0>, void *a2@<X8>)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v5 = a1[1];
  *a2 = *a1;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::__sp_mut::unlock(sp_mut);
}

void quasar::SpeechRecognizer::requestEagerResult(quasar::SpeechRecognizer *this, int a2)
{
  std::mutex::lock((this + 136));
  if (*(this + 32) == 2)
  {
    isVadGatingEnabled = quasar::SpeechRequestData::isVadGatingEnabled(*(this + 35));
    v5 = *(this + 35);
    v6 = *(v5 + 24);
    if ((isVadGatingEnabled || v6[36] == 1) && (v6[37] & 1) == 0)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v7 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "Improper use of API: requestEagerResult does not work with Dictation use case", 77);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v7);
    }

    if ((v6[48] & 1) == 0 && quasar::gLogLevel >= 5)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v7 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "Eager disabled: not supported by model or client did not opt-in eager generation", 80);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v7);
      v5 = *(this + 35);
    }

    quasar::SpeechRequestData::addRequestEagerResultDurations(v5, a2);
  }

  std::mutex::unlock((this + 136));
}

void sub_1B55DF058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a9);
  std::mutex::unlock((v9 + 136));
  _Unwind_Resume(a1);
}

void quasar::SpeechRecognizer::getUttInfos(quasar::SpeechRecognizer *this@<X0>, void *a2@<X8>)
{
  std::atomic_load[abi:ne200100]<quasar::SpeechRequestResultData>(this + 69, &v3);
  quasar::SpeechRequestResultData::getUttInfos(v3, a2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1B55DF0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SpeechRecognizer::dumpResultLog(quasar::SpeechRecognizer *this, int a2)
{
  v47[0] = 0;
  v47[1] = 0;
  v46 = v47;
  std::string::basic_string[abi:ne200100]<0>(__p, "PM-input");
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v46, __p);
  if (SBYTE7(v26) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "PM-output");
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v46, __p);
  if (SBYTE7(v26) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "finalResultTokens");
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v46, __p);
  if (SBYTE7(v26) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "finalResultTokensV2");
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v46, __p);
  if (SBYTE7(v26) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "sessionId");
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v46, __p);
  if (SBYTE7(v26) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "userId");
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v46, __p);
  if (SBYTE7(v26) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "rescoringDeliberationResultOriginalTranscript");
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v46, __p);
  if (SBYTE7(v26) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "rescoringDeliberationResultModifiedTranscript");
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v46, __p);
  if (SBYTE7(v26) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(this + 69);
  std::string::basic_string[abi:ne200100]<0>(__p, "isFinal");
  std::to_string(&v42, a2);
  quasar::SpeechRequestResultData::addDump(v4, __p, &v42);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v26) < 0)
  {
    operator delete(__p[0]);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v42);
  quasar::SpeechRequestResultData::getDumpData(*(this + 69), __p);
  v5 = __p[0];
  for (i = __p[1]; v5 != i; v5 += 6)
  {
    if (quasar::gHideSensitiveData != 1 || v47 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v46, v5))
    {
      v13 = *(v5 + 23);
      if (v13 >= 0)
      {
        v14 = v5;
      }

      else
      {
        v14 = *v5;
      }

      if (v13 >= 0)
      {
        v15 = *(v5 + 23);
      }

      else
      {
        v15 = v5[1];
      }

      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, v14, v15);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "=", 1);
      v18 = *(v5 + 47);
      if (v18 >= 0)
      {
        v19 = (v5 + 3);
      }

      else
      {
        v19 = v5[3];
      }

      if (v18 >= 0)
      {
        v20 = *(v5 + 47);
      }

      else
      {
        v20 = v5[4];
      }

      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
    }

    else
    {
      v7 = *(v5 + 23);
      if (v7 >= 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = *v5;
      }

      if (v7 >= 0)
      {
        v9 = *(v5 + 23);
      }

      else
      {
        v9 = v5[1];
      }

      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, v8, v9);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "=", 1);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "xxx", 3);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ", 1);
  }

  v23[0] = __p;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v23);
  if (quasar::gLogLevel > 2)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::stringbuf::str();
    if ((v24 & 0x80u) == 0)
    {
      v21 = v23;
    }

    else
    {
      v21 = v23[0];
    }

    if ((v24 & 0x80u) == 0)
    {
      v22 = v24;
    }

    else
    {
      v22 = v23[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v21, v22);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    quasar::QuasarProdInfoMessage::~QuasarProdInfoMessage(__p);
  }

  v42.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54E8];
  *(v42.__r_.__value_.__r.__words + *(v42.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v42.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5548] + 16;
  if (v44 < 0)
  {
    operator delete(v43);
  }

  v42.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v42.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&v45);
  std::__tree<std::string>::destroy(&v46, v47[0]);
}

void sub_1B55DF5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  quasar::QuasarProdInfoMessage::~QuasarProdInfoMessage(&a16);
  std::ostringstream::~ostringstream(&a53);
  std::__tree<std::string>::destroy(v58 - 88, *(v58 - 80));
  _Unwind_Resume(a1);
}

uint64_t quasar::SpeechRecognizer::dumpModelVirtualMemoryInfo(quasar::SystemConfig **this)
{
  v1 = *quasar::SystemConfig::getModelLoaderPtr(this[6]);

  return quasar::ModelLoader::dumpInCoreStats(v1);
}

void quasar::SpeechRecognizer::createFeatChain(quasar::SpeechRequestData **a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v6 = *(a2 + 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);
  if (v7 == v8)
  {
    v10 = 0;
  }

  else
  {
    v9 = v7 + 16;
    do
    {
      v10 = (*(**(v9 - 16) + 56))(*(v9 - 16));
      if (v10)
      {
        break;
      }

      v11 = v9 == v8;
      v9 += 16;
    }

    while (!v11);
    v12 = *(a2 + 8);
    v7 = *(v12 + 80);
    v8 = *(v12 + 88);
  }

  if (v7 == v8)
  {
    v15 = 1;
  }

  else
  {
    v13 = v7 + 16;
    do
    {
      v14 = (*(**(v13 - 16) + 64))(*(v13 - 16));
      if (v14)
      {
        break;
      }

      v11 = v13 == v8;
      v13 += 16;
    }

    while (!v11);
    v15 = v14 ^ 1;
  }

  v97 = 0uLL;
  v98 = 0;
  v16 = *a1;
  v17 = *(*a1 + 3);
  v18 = *(v17 + 24);
  LOBYTE(v17) = *(v17 + 51);
  LODWORD(v84) = v18;
  v85 = 0;
  v86 = v17;
  v91 = 0;
  v92 = 0;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  memset(v90, 0, sizeof(v90));
  v93 = 0u;
  memset(v94, 0, sizeof(v94));
  memset(v95, 0, sizeof(v95));
  v96 = 1;
  Location = quasar::SpeechRequestData::getLocation(v16);
  if (*Location)
  {
    atomic_fetch_add_explicit((*Location + 8), 1uLL, memory_order_relaxed);
  }

  v85 = *Location;
  v21 = *(a2 + 128);
  v20 = *(a2 + 136);
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v22 = *(&v88 + 1);
  *&v88 = v21;
  *(&v88 + 1) = v20;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v91 = *(a2 + 192);
  v24 = *(a2 + 144);
  v23 = *(a2 + 152);
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = *(&v89 + 1);
  *&v89 = v24;
  *(&v89 + 1) = v23;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v26 = *(*a1 + 3);
  v28 = *(v26 + 320);
  v27 = *(v26 + 328);
  if (v27)
  {
    atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
  }

  v29 = *(&v87 + 1);
  *&v87 = v28;
  *(&v87 + 1) = v27;
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  LmeDataStreams = quasar::SpeechRequestData::getLmeDataStreams(*a1);
  if (v90 != LmeDataStreams)
  {
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__assign_with_size[abi:ne200100]<std::shared_ptr<quasar::LmeContainer>*,std::shared_ptr<quasar::LmeContainer>*>(v90, *LmeDataStreams, LmeDataStreams[1], (LmeDataStreams[1] - *LmeDataStreams) >> 4);
  }

  v31 = *(*a1 + 3);
  v32 = *(v31 + 704);
  v33 = *(v31 + 712);
  if (v33)
  {
    atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
  }

  v34 = *&v90[32];
  *&v90[24] = v32;
  *&v90[32] = v33;
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v35 = *(*a1 + 3);
  v92 = *(v35 + 720);
  v96 = v10 & (*(v35 + 53) ^ 1);
  v36 = *v35;
  v38 = *(v36 + 8);
  v37 = *(v36 + 16);
  if (v37)
  {
    atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
  }

  v39 = *(&v93 + 1);
  *&v93 = v38;
  *(&v93 + 1) = v37;
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  std::string::operator=(v94, (*(*a1 + 3) + 80));
  v40 = *(*a1 + 3);
  *&v94[24] = *(v40 + 724);
  std::string::operator=(v95, (v40 + 56));
  std::string::operator=(&v95[1], (*(*a1 + 3) + 736));
  v41 = *(a2 + 8);
  v42 = v41[5];
  if (v42 != v41[6])
  {
    v43 = 0;
    v44 = 0;
    while (1)
    {
      v45 = *v42;
      v46 = **v42;
      {
        v47 = v42[1];
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }

        if (quasar::gLogLevel >= 5)
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
          v67 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v67);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v67, "Skipping CacheInput since it's not required", 43);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(&v67);
        }
      }

      else
      {
        if (((*(v46 + 24))(v45) & 1) == 0)
        {
          if (quasar::gLogLevel < 2)
          {
            v56 = a3;
          }

          else
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
            v67 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v67);
            v56 = a3;
            v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v67, "PreflightCheck: FeatureExtractor check failed: ", 47);
            String = quasar::PTree::getString(*v42);
            v59 = *(String + 23);
            if (v59 >= 0)
            {
              v60 = String;
            }

            else
            {
              v60 = *String;
            }

            if (v59 >= 0)
            {
              v61 = *(String + 23);
            }

            else
            {
              v61 = *(String + 8);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, v60, v61);
            quasar::QuasarWarnMessage::~QuasarWarnMessage(&v67);
          }

          goto LABEL_90;
        }

        v48 = *v42;
        AudioBuffer = quasar::SpeechRequestData::getAudioBuffer(*a1);
        if (*AudioBuffer)
        {
          v50 = *AudioBuffer + 16;
        }

        else
        {
          v50 = 0;
        }

        v65 = v44;
        v66 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        quasar::FeatureExtractor::createOnlineFeInput(v48, v50, &v65);
        std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::push_back[abi:ne200100](&v97, &v67);
        if (*(&v67 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v67 + 1));
        }

        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        v44 = *(*(&v97 + 1) - 16);
        v51 = *(*(&v97 + 1) - 8);
        if (v51)
        {
          atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }

        v43 = v51;
        {
          if (v51)
          {
            p_shared_owners = &v51->__shared_owners_;
            atomic_fetch_add_explicit(p_shared_owners, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v43);
            atomic_fetch_add_explicit(p_shared_owners, 1uLL, memory_order_relaxed);
          }

          v53 = *(a2 + 56);
          *(a2 + 48) = v44;
          *(a2 + 56) = v43;
          if (v53)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v53);
          }
        }

        if ((*(**v42 + 16))())
        {
          std::allocate_shared[abi:ne200100]<kaldi::OnlineBufferingInput,std::allocator<kaldi::OnlineBufferingInput>,kaldi::OnlineFeatInputItf *,0>();
        }
      }

      v42 += 2;
      v41 = *(a2 + 8);
      if (v42 == v41[6])
      {
        goto LABEL_72;
      }
    }
  }

  v43 = 0;
LABEL_72:
  v54 = v41[10];
  v55 = v41[11];
  while (v54 != v55)
  {
    if ((*(**v54 + 48))())
    {
      std::allocate_shared[abi:ne200100]<quasar::OnlineCacheInputFe,std::allocator<quasar::OnlineCacheInputFe>,char const(&)[6],0>();
    }

    v54 += 16;
  }

  v63 = *(*(&v97 + 1) - 16);
  v62 = *(*(&v97 + 1) - 8);
  if (v62)
  {
    atomic_fetch_add_explicit((v62 + 8), 1uLL, memory_order_relaxed);
  }

  v64 = *(a2 + 72);
  *(a2 + 64) = v63;
  *(a2 + 72) = v62;
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  *a3 = v97;
  *(a3 + 2) = v98;
  v56 = &v97;
LABEL_90:
  *v56 = 0;
  *(v56 + 1) = 0;
  *(v56 + 2) = 0;
  quasar::FeatureExtractorArgs::~FeatureExtractorArgs(&v84);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  *&v67 = &v97;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v67);
}

void sub_1B55DFF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  quasar::FeatureExtractorArgs::~FeatureExtractorArgs(&a19);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  quasar::FeatureExtractorArgs::~FeatureExtractorArgs(&a54);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  a19 = (v55 - 128);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void quasar::SpeechRecognizer::runSync(uint64_t a1)
{
  v1 = **(*(a1 + 280) + 24);
  (*(*v1 + 16))(v1);
  operator new();
}

void sub_1B55E1670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t *a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (STACK[0x430])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  a17 = &STACK[0x438];
  std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&a17);
  quasar::SpeechRecognizer::RecogData::~RecogData(&STACK[0x450]);
  _Unwind_Resume(a1);
}

void sub_1B55E1688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, std::__shared_weak_count *a58, char a59)
{
  if (a58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a58);
  }

  quasar::RecogResult::~RecogResult(&a59);
  JUMPOUT(0x1B55E17E8);
}

void sub_1B55E16C8()
{
  if (v0)
  {
    JUMPOUT(0x1B55E17E4);
  }

  JUMPOUT(0x1B55E17E8);
}

void sub_1B55E16E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a67 < 0)
  {
    operator delete(a62);
  }

  JUMPOUT(0x1B55E180CLL);
}

void sub_1B55E1714()
{
  v1 = *(v0 - 120);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1B55E180CLL);
}

void sub_1B55E1750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (STACK[0x430])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x430]);
  }

  a17 = &STACK[0x438];
  std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&a17);
  quasar::SpeechRecognizer::RecogData::~RecogData(&STACK[0x450]);
  _Unwind_Resume(a1);
}

void sub_1B55E178C()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x1B55E17C8);
}

void sub_1B55E17B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::ostringstream::~ostringstream(va);
  JUMPOUT(0x1B55E17C8);
}

void sub_1B55E17C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55)
{
  if (__p)
  {
    a55 = __p;
    operator delete(__p);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (STACK[0x430])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x430]);
  }

  a17 = &STACK[0x438];
  std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&a17);
  quasar::SpeechRecognizer::RecogData::~RecogData(&STACK[0x450]);
  _Unwind_Resume(a1);
}

void std::atomic_store[abi:ne200100]<quasar::SpeechRequestResultData>(uint64_t *a1, uint64_t *a2)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v5 = *a1;
  *a1 = *a2;
  *a2 = v5;
  v6 = a1[1];
  a1[1] = a2[1];
  a2[1] = v6;

  std::__sp_mut::unlock(sp_mut);
}

void sub_1B55E1A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v28 = *(v26 + 8);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SpeechRecognizer::updateFinalRecogStats(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  quasar::SpeechRequestData::getRecogRequestTimer(*(a1 + 280), &v46);
  v7 = kaldi::Timer::ElapsedCPU(v46, v6);
  v8 = *(a1 + 552);
  *&v8->__m_.__sig = *&v8->__m_.__sig + (v7 - *(a1 + 352)) * 1000.0;
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    v8 = *(a1 + 552);
  }

  std::string::basic_string[abi:ne200100]<0>(&v46, "RecogCpuTimeMs");
  quasar::SpeechRequestResultData::addAA(v8, &v46, *(a1 + 552), 1);
  if (v48 < 0)
  {
    operator delete(v46);
  }

  quasar::SpeechRequestData::getRecogRequestTimer(*(a1 + 280), &v46);
  v9 = v46;
  v11 = kaldi::Timer::GetSeconds(0x10, v10) - *(v9 + 2) - *(a1 + 360);
  v12 = *(a1 + 552);
  *(v12 + 8) = *(v12 + 8) + v11 * 1000.0;
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    v12 = *(a1 + 552);
  }

  std::string::basic_string[abi:ne200100]<0>(&v46, "RecogThreadCpuTimeMs");
  quasar::SpeechRequestResultData::addAA(v12, &v46, (*(a1 + 552) + 8), 1);
  if (v48 < 0)
  {
    operator delete(v46);
  }

  v13 = *a2;
  v14 = *(*a2 + 472);
  if (v14 > 0.0)
  {
    Seconds = *(v13 + 480);
    if (Seconds < 0.0)
    {
      quasar::SpeechRequestData::getRecogRequestTimer(*(a1 + 280), &v46);
      Seconds = kaldi::Timer::GetSeconds(5, v16);
      v17 = *a2;
      *(*a2 + 480) = Seconds;
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        v17 = *a2;
        Seconds = *(*a2 + 480);
      }

      v14 = *(v17 + 472);
    }

    v18 = *(a1 + 552);
    *(v18 + 120) = (*(v18 + 120) + (Seconds - v14) * 1000.0);
    std::string::basic_string[abi:ne200100]<0>(&v46, "EosToPreItnMs");
    *&v44 = *(*(a1 + 552) + 120);
    quasar::SpeechRequestResultData::addAA(v18, &v46, &v44, 1);
    if (v48 < 0)
    {
      operator delete(v46);
    }

    v13 = *a2;
  }

  if ((*(v13 + 1071) & 0x8000000000000000) != 0)
  {
    if (!*(v13 + 1056))
    {
      return;
    }
  }

  else if (!*(v13 + 1071))
  {
    return;
  }

  v19 = *(a3 + 80);
  if (v19)
  {
    v20 = (*(**(v19 + 16) + 24))(*(v19 + 16));
    v21 = *(*(a1 + 280) + 12);
    v22 = *(*a2 + 592);
    v23 = *(a1 + 552);
    std::string::basic_string[abi:ne200100]<0>(&v46, "lm_interp_weights");
    if (*(v13 + 1071) >= 0)
    {
      v24 = *(v13 + 1071);
    }

    else
    {
      v24 = *(v13 + 1056);
    }

    v25 = &v41;
    std::string::basic_string[abi:ne200100](&v41, v24 + 1);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = v41.__r_.__value_.__r.__words[0];
    }

    if (v24)
    {
      if (*(v13 + 1071) >= 0)
      {
        v26 = (v13 + 1048);
      }

      else
      {
        v26 = *(v13 + 1048);
      }

      memmove(v25, v26, v24);
    }

    *(&v25->__r_.__value_.__l.__data_ + v24) = 58;
    std::to_string(&v40, v21);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v40;
    }

    else
    {
      v27 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v40.__r_.__value_.__l.__size_;
    }

    v29 = std::string::append(&v41, v27, size);
    v30 = *&v29->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v31 = std::string::append(&v42, ":");
    v32 = *&v31->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v39, v21 + v22 * v20);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v39;
    }

    else
    {
      v33 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v34 = v39.__r_.__value_.__l.__size_;
    }

    v35 = std::string::append(&v43, v33, v34);
    v36 = *&v35->__r_.__value_.__l.__data_;
    v45 = v35->__r_.__value_.__r.__words[2];
    v44 = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, ";");
    quasar::SpeechRequestResultData::appendAA(v23, &v46, &v44, __p);
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (v48 < 0)
    {
      operator delete(v46);
    }
  }
}

void sub_1B55E1F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  v47 = *(v45 - 96);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SpeechRecognizer::updateFrameDataAtUtteranceEnd(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  kaldi::OnlineFeatureMatrix::ResetAedFeat(*(a3 + 80), *(*a2 + 592));
  kaldi::OnlineFeatureMatrix::ResetFusionFeat(*(a3 + 80), *(*a2 + 592));
  v5 = *a2;
  *(a3 + 188) += *(*a2 + 592);
  *(a3 + 205) = *(v5 + 598);
  *(a3 + 196) = *(v5 + 596);
}

uint64_t quasar::SpeechRecognizer::writeFinalResults(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v8 = (*(**(*(a4 + 80) + 16) + 24))(*(*(a4 + 80) + 16));
  v9 = *(a1 + 280);
  v10 = *(v9 + 12);
  v11 = *(*a3 + 592);
  v12 = (*a3 + 596);
  if (!*(*(v9 + 24) + 36))
  {
    v12 = (v4 + 204);
  }

  *v4 = *v12;
  v264 = 0.0;
  v265[0] = 0.0;
  AudioBuffer = quasar::SpeechRequestData::getAudioBuffer(v9);
  quasar::RecogAudioBuffer::stats(*AudioBuffer, v265, &v264);
  v14 = *(*(v4 + 80) + 160);
  v15 = v264;
  v16 = *(a1 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "audioReadTime");
  std::to_string(&v225, v264);
  quasar::SpeechRequestResultData::addDump(v16, &__p, &v225);
  if (SBYTE7(v226) < 0)
  {
    operator delete(v225);
  }

  v17 = v14 - v15;
  if (SBYTE7(v245) < 0)
  {
    operator delete(__p);
  }

  v18 = *(a1 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "featureComputeTime");
  std::to_string(&v225, v17);
  quasar::SpeechRequestResultData::addDump(v18, &__p, &v225);
  if (SBYTE7(v226) < 0)
  {
    operator delete(v225);
  }

  if (SBYTE7(v245) < 0)
  {
    operator delete(__p);
  }

  if (*(*(*(a1 + 280) + 24) + 35) == 1)
  {
    v19 = *(a1 + 552);
    std::string::basic_string[abi:ne200100]<0>(&__p, "whisperScore");
    std::to_string(&v225, *(*a3 + 528));
    quasar::SpeechRequestResultData::addDump(v19, &__p, &v225);
    if (SBYTE7(v226) < 0)
    {
      operator delete(v225);
    }

    if (SBYTE7(v245) < 0)
    {
      operator delete(__p);
    }

    v20 = *(a1 + 552);
    std::string::basic_string[abi:ne200100]<0>(&__p, "whisperDetected");
    std::to_string(&v225, *(*a3 + 532));
    quasar::SpeechRequestResultData::addDump(v20, &__p, &v225);
    if (SBYTE7(v226) < 0)
    {
      operator delete(v225);
    }

    if (SBYTE7(v245) < 0)
    {
      operator delete(__p);
    }
  }

  v21 = v11 * v8;
  v22 = *(a1 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "utteranceLength");
  std::to_string(&v225, v21 / 1000.0);
  quasar::SpeechRequestResultData::addDump(v22, &__p, &v225);
  if (SBYTE7(v226) < 0)
  {
    operator delete(v225);
  }

  if (SBYTE7(v245) < 0)
  {
    operator delete(__p);
  }

  v23 = *(a1 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "audioEndTime");
  std::to_string(&v225, v265[0]);
  quasar::SpeechRequestResultData::addDump(v23, &__p, &v225);
  if (SBYTE7(v226) < 0)
  {
    operator delete(v225);
  }

  if (SBYTE7(v245) < 0)
  {
    operator delete(__p);
  }

  v24 = *(a1 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "utteranceEndTime");
  std::to_string(&v225, (v21 + v10) / 1000.0);
  quasar::SpeechRequestResultData::addDump(v24, &__p, &v225);
  if (SBYTE7(v226) < 0)
  {
    operator delete(v225);
  }

  if (SBYTE7(v245) < 0)
  {
    operator delete(__p);
  }

  v25 = *(a1 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "timeElapsedSinceRunAsyncCall");
  v26 = *(*(a1 + 280) + 200);
  Seconds = kaldi::Timer::GetSeconds(5, v27);
  std::to_string(&v225, Seconds - *v26);
  quasar::SpeechRequestResultData::addDump(v25, &__p, &v225);
  if (SBYTE7(v226) < 0)
  {
    operator delete(v225);
  }

  if (SBYTE7(v245) < 0)
  {
    operator delete(__p);
  }

  v30 = *(*(a1 + 280) + 200);
  v31 = kaldi::Timer::GetSeconds(5, v29) - *v30 - *(a1 + 344);
  v32 = *(a1 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "timeElapsedSinceRunSyncCall");
  std::to_string(&v225, v31);
  quasar::SpeechRequestResultData::addDump(v32, &__p, &v225);
  if (SBYTE7(v226) < 0)
  {
    operator delete(v225);
  }

  if (SBYTE7(v245) < 0)
  {
    operator delete(__p);
  }

  v33 = *(a1 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "EagerUsed");
  LOBYTE(v34) = *(*(*(a1 + 280) + 24) + 48);
  *&v225 = v34;
  quasar::SpeechRequestResultData::addAA(v33, &__p, &v225, 0);
  if (SBYTE7(v245) < 0)
  {
    operator delete(__p);
  }

  v35 = *(a1 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "recognizer-components");
  quasar::SpeechRequestResultData::addAA(v35, &__p, (*(v4 + 8) + 104));
  if (SBYTE7(v245) < 0)
  {
    operator delete(__p);
  }

  v36 = *(a1 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "DidConfNetCombination");
  LOBYTE(v37) = *(*a3 + 533);
  quasar::SpeechRequestResultData::addDumpAA(v36, &__p, 0, v37);
  if (SBYTE7(v245) < 0)
  {
    operator delete(__p);
  }

  v38 = *(a1 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "ConfNetWaitTimeMs");
  quasar::SpeechRequestResultData::addDumpAA(v38, &__p, 0, *(*a3 + 536));
  if (SBYTE7(v245) < 0)
  {
    operator delete(__p);
  }

  v39 = *(a1 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "ConfNetworkCombinedNbestSourceID");
  quasar::SpeechRequestResultData::addDumpAA(v39, &__p, 0, *(*a3 + 544));
  if (SBYTE7(v245) < 0)
  {
    operator delete(__p);
  }

  v40 = *(a1 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "ConfNetworkCombinerStartTimeMs");
  quasar::SpeechRequestResultData::addDumpAA(v40, &__p, 0, *(*a3 + 552));
  if (SBYTE7(v245) < 0)
  {
    operator delete(__p);
  }

  v41 = *(a1 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "LastWordClipped");
  LOBYTE(v42) = *(*a3 + 160);
  quasar::SpeechRequestResultData::addDumpAA(v41, &__p, 1, v42);
  if (SBYTE7(v245) < 0)
  {
    operator delete(__p);
  }

  v43 = *(a1 + 552);
  std::string::basic_string[abi:ne200100]<0>(&__p, "WordAligned");
  LOBYTE(v44) = *(*a3 + 161);
  quasar::SpeechRequestResultData::addDumpAA(v43, &__p, 1, v44);
  if (SBYTE7(v245) < 0)
  {
    operator delete(__p);
  }

  if (*(a1 + 624))
  {
    v45 = *(a1 + 552);
    std::string::basic_string[abi:ne200100]<0>(&__p, "ANEUsed");
    v46 = atomic_load((*(a1 + 624) + 8));
    std::to_string(&v225, v46 & 1);
    quasar::SpeechRequestResultData::addAA(v45, &__p, &v225);
    if (SBYTE7(v226) < 0)
    {
      operator delete(v225);
    }

    if (SBYTE7(v245) < 0)
    {
      operator delete(__p);
    }
  }

  memset(&v263, 0, sizeof(v263));
  if (*(*a3 + 560))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    quasar::PTree::writeJson();
  }

  v47 = *(v4 + 232);
  if (!v47)
  {
    goto LABEL_74;
  }

  {
    goto LABEL_70;
  }

  v48 = *(v4 + 240);
  if (!v48)
  {
    if (*(*a3 + 168))
    {
LABEL_70:
      {
        v50 = *(v4 + 240);
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        }

        quasar::Decoder::calculateNBest(a2, a3, *(*(a1 + 280) + 16));
      }

      goto LABEL_74;
    }

LABEL_238:
    if (quasar::gLogLevel >= 4)
    {
      v259 = 0u;
      v260 = 0u;
      v257 = 0u;
      v258 = 0u;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v251 = 0u;
      v252 = 0u;
      v249 = 0u;
      v250 = 0u;
      v247 = 0u;
      v248 = 0u;
      v245 = 0u;
      v246 = 0u;
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Write results got a NULL lattice", 32);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
    }

    if (*(*(a1 + 280) + 4))
    {
      v177 = *(a1 + 552);
      std::string::basic_string[abi:ne200100]<0>(&__p, "uttDetectAbort");
      std::string::basic_string[abi:ne200100]<0>(&v225, "NullLattice");
      quasar::SpeechRequestResultData::addDump(v177, &__p, &v225);
      if (SBYTE7(v226) < 0)
      {
        operator delete(v225);
      }

      if (SBYTE7(v245) < 0)
      {
        operator delete(__p);
      }
    }

    v178 = a3[1];
    v262[0] = *a3;
    v262[1] = v178;
    if (v178)
    {
      atomic_fetch_add_explicit(&v178->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    quasar::SpeechRecognizer::updateFinalRecogStats(a1, v262, v4);
    if (v178)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v178);
    }

    v179 = a3[1];
    v261[0] = *a3;
    v261[1] = v179;
    if (v179)
    {
      atomic_fetch_add_explicit(&v179->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    quasar::SpeechRecognizer::writeToOfflineRecogResultStream(a1, v261);
    if (v179)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v179);
    }

    quasar::RecogResult::RecogResult(&__p);
    v180 = *(a1 + 280);
    v182 = *(v180 + 24);
    v181 = *(v180 + 32);
    v242 = v182;
    v243 = v181;
    if (v181)
    {
      atomic_fetch_add_explicit(&v181->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v183 = quasar::RecogResult::setParams(&__p, &v242);
    WordClipped = quasar::RecogResult::setLastWordClipped(v183, *(*a3 + 160));
    v185 = quasar::RecogResult::setLmeStatus(WordClipped, (*a3 + 600));
    v186 = quasar::RecogResult::setJsonInfo(v185, &v263);
    v187 = quasar::RecogResult::setWhisperScore(v186, *(*a3 + 528));
    v188 = quasar::RecogResult::setWhisperDetected(v187, *(*a3 + 532));
    started = quasar::RecogResult::setUtteranceStartMillis(v188, v10);
    v190 = quasar::RecogResult::setUtteranceDurationMillis(started, v21);
    quasar::RecogResult::setIsFinal(v190, *v4);
    if (v243)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v243);
    }

    (*(**(*a3 + 576) + 40))(*(*a3 + 576), &__p, 0);
    if (*(*(*(a1 + 280) + 24) + 52) == 1)
    {
      if (quasar::gLogLevel >= 4)
      {
        v240 = 0u;
        v241 = 0u;
        v238 = 0u;
        v239 = 0u;
        v236 = 0u;
        v237 = 0u;
        v234 = 0u;
        v235 = 0u;
        v232 = 0u;
        v233 = 0u;
        v230 = 0u;
        v231 = 0u;
        v228 = 0u;
        v229 = 0u;
        v226 = 0u;
        v227 = 0u;
        v225 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v225);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v225, "Recognition is going to fail because of NULL lattice. Padding labels to align with features", 91);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v225);
      }

      v225 = 0uLL;
      *&v226 = 0;
      quasar::SpeechRecognizer::concatenateLabels(a1, v4, &v225, *(*a3 + 592));
    }

    goto LABEL_261;
  }

  atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
  v49 = *(*a3 + 168);
  std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  if (!v49)
  {
    goto LABEL_238;
  }

  v47 = *(v4 + 232);
  if (v47)
  {
    goto LABEL_70;
  }

LABEL_74:
  v51 = *a3;
  if (*(*(*(a1 + 280) + 24) + 52) == 1)
  {
    quasar::SpeechRecognizer::concatenateLabels(a1, v4, (v51 + 1000), *(v51 + 592));
    v51 = *a3;
  }

  v52 = *(v51 + 368);
  if (v52 && (v53 = *(v4 + 112)) != 0 && (frame_duration_ms = kaldi::SnrTracker::get_frame_duration_ms(*(v4 + 112)), Snr = quasar::SpeechRecognizer::getSnr(v52, v53, v10 / frame_duration_ms), Snr != -1000.0))
  {
    v56 = *(a1 + 552);
  }

  else
  {
    v56 = *(a1 + 552);
    Snr = *(v56 + 24);
  }

  v224 = Snr;
  std::string::basic_string[abi:ne200100]<0>(&__p, "SNR");
  quasar::SpeechRequestResultData::addAA(v56, &__p, &v224, 1);
  v202 = v10;
  if (SBYTE7(v245) < 0)
  {
    operator delete(__p);
  }

  *(*(a1 + 552) + 24) = v224;
  v57 = *(*a3 + 368);
  if (v57 && *(*(*a3 + 368) + 8) != *v57)
  {
    v58 = *(v4 + 232);
    {
      v60 = v59;
      v61 = *(v4 + 240);
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!*(*(a1 + 280) + 4))
      {
        quasar::getTopChoice(*(*a3 + 368), 1, &__p);
        quasar::getTokensEndTime(*(*a3 + 368), &v225);
        LODWORD(v218.__r_.__value_.__l.__data_) = 0;
        LODWORD(v210.__r_.__value_.__l.__data_) = 0;
        quasar::ResultStreamStabilizer::getPartialResultsInfo(v60, 1, &v223);
        quasar::Decoder::calculateStabilityMetrics(&v223, &__p, &v225, &v218, &v210);
        v62 = *(a1 + 552);
        std::string::basic_string[abi:ne200100]<0>(&v222, "PartialResultsAvgLagMs");
        *&v219.__r_.__value_.__l.__data_ = *&v210.__r_.__value_.__l.__data_;
        quasar::SpeechRequestResultData::addAA(v62, &v222.__r_.__value_.__l.__data_, &v219, 0);
        if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v222.__r_.__value_.__l.__data_);
        }

        v63 = *(a1 + 552);
        *(v63 + 88) = *&v210.__r_.__value_.__l.__data_;
        std::string::basic_string[abi:ne200100]<0>(&v222, "PartialResultsToggleCount");
        *&v219.__r_.__value_.__l.__data_ = SLODWORD(v218.__r_.__value_.__l.__data_);
        quasar::SpeechRequestResultData::addAA(v63, &v222.__r_.__value_.__l.__data_, &v219, 0);
        v64 = a2;
        if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v222.__r_.__value_.__l.__data_);
        }

        *(*(a1 + 552) + 96) = v218.__r_.__value_.__l.__data_;
        LODWORD(v218.__r_.__value_.__l.__data_) = 0;
        LODWORD(v210.__r_.__value_.__l.__data_) = 0;
        size = v223.__r_.__value_.__l.__size_;
        v65 = v223.__r_.__value_.__r.__words[0];
        while (size != v65)
        {
          v67 = *(size - 9);
          size -= 4;
          if (v67 < 0)
          {
            operator delete(*size);
          }
        }

        v223.__r_.__value_.__l.__size_ = v65;
        quasar::ResultStreamStabilizer::getPartialResultsInfo(v60, 0, &v222);
        std::vector<std::pair<std::string,float>>::__vdeallocate(&v223);
        v223 = v222;
        memset(&v222, 0, sizeof(v222));
        v219.__r_.__value_.__r.__words[0] = &v222;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v219);
        quasar::Decoder::calculateStabilityMetrics(&v223, &__p, &v225, &v218, &v210);
        a2 = v64;
        v197 = *(a1 + 552);
        std::string::basic_string[abi:ne200100]<0>(&v222, "FasterPartialResultsAvgLagMs");
        *&v219.__r_.__value_.__l.__data_ = *&v210.__r_.__value_.__l.__data_;
        quasar::SpeechRequestResultData::addAA(v197, &v222.__r_.__value_.__l.__data_, &v219, 0);
        if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v222.__r_.__value_.__l.__data_);
        }

        v198 = *(a1 + 552);
        *(v198 + 104) = *&v210.__r_.__value_.__l.__data_;
        std::string::basic_string[abi:ne200100]<0>(&v222, "FasterPartialResultsToggleCount");
        *&v219.__r_.__value_.__l.__data_ = SLODWORD(v218.__r_.__value_.__l.__data_);
        quasar::SpeechRequestResultData::addAA(v198, &v222.__r_.__value_.__l.__data_, &v219, 0);
        if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v222.__r_.__value_.__l.__data_);
        }

        *(*(a1 + 552) + 112) = v218.__r_.__value_.__l.__data_;
        v222.__r_.__value_.__r.__words[0] = &v223;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v222);
        if (SBYTE7(v226) < 0)
        {
          operator delete(v225);
        }

        if (SBYTE7(v245) < 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      v61 = 0;
    }

    if (quasar::gLogLevel >= 4)
    {
      v259 = 0u;
      v260 = 0u;
      v257 = 0u;
      v258 = 0u;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v251 = 0u;
      v252 = 0u;
      v249 = 0u;
      v250 = 0u;
      v247 = 0u;
      v248 = 0u;
      v245 = 0u;
      v246 = 0u;
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Shortest path cost: ", 20);
      MEMORY[0x1B8C84BE0](v68, *(*a3 + 464));
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
    }

    if (v61)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v61);
    }
  }

  v69 = *a3;
  if (*(*a3 + 368))
  {
    v70 = a3[1];
    v221[0] = *a3;
    v221[1] = v70;
    if (v70)
    {
      atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    quasar::SpeechRecognizer::updateFinalRecogStats(a1, v221, v4);
    if (v70)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v70);
    }

    v71 = a3[1];
    v220[0] = *a3;
    v220[1] = v71;
    if (v71)
    {
      atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    quasar::SpeechRecognizer::writeToOfflineRecogResultStream(a1, v220);
    v201 = v21;
    if (v71)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v71);
    }

    v72 = *(*a3 + 600);
    if (*(*a3 + 608) == v72)
    {
      v95 = 0.0;
      v96 = 0.0;
      v94 = 0.0;
      v93 = 0.0;
    }

    else
    {
      v199 = a2;
      v200 = v4;
      v73 = a1;
      v74 = 0;
      v75 = 0;
      v203 = 0;
      v76 = 0;
      v77 = 0;
      v78 = a3;
      do
      {
        v79 = (v72 + v74);
        v80 = v79[2];
        v81 = v80 - 1;
        if (*v79 != 1 || v81 > 1)
        {
          if (*v79 == 0 && v81 < 2)
          {
            v77 = v80 == 2;
          }

          v76 |= *v79 == 0 && v81 < 2;
        }

        else
        {
          LOBYTE(v203) = 1;
          BYTE4(v203) = v80 == 2;
        }

        v83 = v79[1];
        v84 = *(v73 + 552);
        std::to_string(&v225, v75);
        v85 = std::string::insert(&v225, 0, "lmeStatus");
        v86 = *&v85->__r_.__value_.__l.__data_;
        *&v245 = *(&v85->__r_.__value_.__l + 2);
        __p = v86;
        v85->__r_.__value_.__l.__size_ = 0;
        v85->__r_.__value_.__r.__words[2] = 0;
        v85->__r_.__value_.__r.__words[0] = 0;
        quasar::lmeDataStatusString(v83, &v219);
        v87 = std::string::append(&v219, "-");
        v88 = *&v87->__r_.__value_.__l.__data_;
        v222.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
        *&v222.__r_.__value_.__l.__data_ = v88;
        v87->__r_.__value_.__l.__size_ = 0;
        v87->__r_.__value_.__r.__words[2] = 0;
        v87->__r_.__value_.__r.__words[0] = 0;
        quasar::lmeUsageStatusString(v80, &v218);
        if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v89 = &v218;
        }

        else
        {
          v89 = v218.__r_.__value_.__r.__words[0];
        }

        if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v90 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v90 = v218.__r_.__value_.__l.__size_;
        }

        v91 = std::string::append(&v222, v89, v90);
        v92 = *&v91->__r_.__value_.__l.__data_;
        v223.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v223.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        quasar::SpeechRequestResultData::addDump(v84, &__p, &v223);
        a3 = v78;
        if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v223.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v218.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v222.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v219.__r_.__value_.__l.__data_);
        }

        if (SBYTE7(v245) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v226) < 0)
        {
          operator delete(v225);
        }

        ++v75;
        v72 = *(*v78 + 600);
        v74 += 40;
      }

      while (0xCCCCCCCCCCCCCCCDLL * ((*(*v78 + 608) - v72) >> 3) > v75);
      v93 = (v203 & 1);
      v94 = (v76 & 1);
      v95 = (BYTE4(v203) & 1);
      v96 = v77;
      a1 = v73;
      a2 = v199;
      v4 = v200;
    }

    v114 = *(a1 + 552);
    std::string::basic_string[abi:ne200100]<0>(&__p, "jitLmeUsed");
    *&v225 = v93;
    quasar::SpeechRequestResultData::addAA(v114, &__p, &v225, 1);
    if (SBYTE7(v245) < 0)
    {
      operator delete(__p);
    }

    v115 = *(a1 + 552);
    std::string::basic_string[abi:ne200100]<0>(&__p, "aotLmeUsed");
    *&v225 = v94;
    quasar::SpeechRequestResultData::addAA(v115, &__p, &v225, 1);
    if (SBYTE7(v245) < 0)
    {
      operator delete(__p);
    }

    v116 = *(a1 + 552);
    std::string::basic_string[abi:ne200100]<0>(&__p, "jitLmeRecognized");
    *&v225 = v95;
    quasar::SpeechRequestResultData::addAA(v116, &__p, &v225, 1);
    if (SBYTE7(v245) < 0)
    {
      operator delete(__p);
    }

    v117 = *(a1 + 552);
    std::string::basic_string[abi:ne200100]<0>(&__p, "aotLmeRecognized");
    *&v225 = v96;
    quasar::SpeechRequestResultData::addAA(v117, &__p, &v225, 1);
    if (SBYTE7(v245) < 0)
    {
      operator delete(__p);
    }

    quasar::extendEndTime(*(*a3 + 368), v201);
    std::string::basic_string[abi:ne200100]<0>(&v223, "");
    v118 = *(*a3 + 368);
    v119 = *v118;
    if (*v118 != *(v118 + 8))
    {
      *&v246 = 0;
      __p = 0u;
      v245 = 0u;
      std::string::basic_string[abi:ne200100]<0>(&__p + 8, "▁");
      LOBYTE(v246) = 0;
      quasar::formatResultTokens(v119, &__p);
      if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v223.__r_.__value_.__l.__data_);
      }

      *&v223.__r_.__value_.__l.__data_ = v225;
      v223.__r_.__value_.__r.__words[2] = v226;
      BYTE7(v226) = 0;
      LOBYTE(v225) = 0;
      if (SHIBYTE(v245) < 0)
      {
        operator delete(*(&__p + 1));
      }
    }

    v120 = *(a1 + 552);
    std::string::basic_string[abi:ne200100]<0>(&__p, "finalResultTokens");
    std::operator+<char>();
    v121 = std::string::append(&v222, "");
    v122 = *&v121->__r_.__value_.__l.__data_;
    *&v226 = *(&v121->__r_.__value_.__l + 2);
    v225 = v122;
    v121->__r_.__value_.__l.__size_ = 0;
    v121->__r_.__value_.__r.__words[2] = 0;
    v121->__r_.__value_.__r.__words[0] = 0;
    quasar::SpeechRequestResultData::addDump(v120, &__p, &v225);
    if (SBYTE7(v226) < 0)
    {
      operator delete(v225);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v245) < 0)
    {
      operator delete(__p);
    }

    quasar::RecogResult::RecogResult(&__p);
    v123 = *(*(a1 + 48) + 1560);
    v125 = *(v123 + 24);
    v124 = *(v123 + 32);
    if (v124 == v125 || (v126 = **(*a3 + 368), *(*(*a3 + 368) + 8) == v126) || *(**(*a3 + 368) + 8) == *v126)
    {
      v127 = 0;
    }

    else
    {
      while (1)
      {
        LODWORD(v219.__r_.__value_.__l.__data_) = -1;
        if (quasar::isTokenSpanPrefixOf(**(*a3 + 368), v125, 1, &v219))
        {
          break;
        }

        v125 += 3;
        if (v125 == v124)
        {
          v127 = 3;
          goto LABEL_193;
        }
      }

      if (SLODWORD(v219.__r_.__value_.__l.__data_) >= 1)
      {
        v127 = 1;
      }

      else
      {
        v127 = 2;
      }

      if (quasar::gLogLevel > 4)
      {
        v240 = 0u;
        v241 = 0u;
        v238 = 0u;
        v239 = 0u;
        v236 = 0u;
        v237 = 0u;
        v234 = 0u;
        v235 = 0u;
        v232 = 0u;
        v233 = 0u;
        v230 = 0u;
        v231 = 0u;
        v228 = 0u;
        v229 = 0u;
        v226 = 0u;
        v227 = 0u;
        v225 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v225);
        v192 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v225, "Matched trigger phrase: ", 24);
        quasar::tokens2Str(v125, &v222);
        if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v193 = &v222;
        }

        else
        {
          v193 = v222.__r_.__value_.__r.__words[0];
        }

        if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v194 = HIBYTE(v222.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v194 = v222.__r_.__value_.__l.__size_;
        }

        v195 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v192, v193, v194);
        v196 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v195, ", with index: ", 14);
        MEMORY[0x1B8C84C00](v196, LODWORD(v219.__r_.__value_.__l.__data_));
        if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v222.__r_.__value_.__l.__data_);
        }

        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v225);
      }
    }

LABEL_193:
    v128 = *(a1 + 520);
    v129 = *(*(a1 + 280) + 24);
    v130 = *a3;
    v131 = *(*a3 + 376);
    v216 = *(*a3 + 368);
    v217 = v131;
    if (v131)
    {
      atomic_fetch_add_explicit(&v131->__shared_owners_, 1uLL, memory_order_relaxed);
      v130 = *a3;
    }

    v132 = v130[52];
    v214 = v130[51];
    v215 = v132;
    if (v132)
    {
      atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
      v130 = *a3;
    }

    quasar::MuxHelper::finalizeResult(v128, (v129 + 344), &v216, &v214, v130 + 48);
    if (v215)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v215);
    }

    if (v217)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v217);
    }

    if (*(*a3 + 1104) == 1)
    {
      v133 = *(a1 + 288);
      v213[0] = *(a1 + 280);
      v213[1] = v133;
      if (v133)
      {
        atomic_fetch_add_explicit(v133 + 1, 1uLL, memory_order_relaxed);
      }

      quasar::SpeechRecognizer::splitComposedLmeTokens(a2, a3, v213);
      if (v133)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v133);
      }
    }

    v134 = *(a1 + 280);
    v136 = *(v134 + 24);
    v135 = *(v134 + 32);
    v211 = v136;
    v212 = v135;
    if (v135)
    {
      atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v137 = quasar::RecogResult::setParams(&__p, &v211);
    v138 = quasar::Token::resetSpacing(*(*a3 + 368));
    v139 = quasar::RecogResult::setResultChoices(v137, v138);
    v140 = quasar::RecogResult::setResultMuxIds(v139, *a3 + 384);
    v141 = quasar::RecogResult::setResultCosts(v140, *(*a3 + 408));
    v142 = quasar::RecogResult::setLmeStatus(v141, (*a3 + 600));
    v143 = quasar::RecogResult::setLastWordClipped(v142, *(*a3 + 160));
    v144 = quasar::RecogResult::setItnOverrides(v143, (*a3 + 672));
    v145 = quasar::RecogResult::setAudioAnalytics(v144, (*a3 + 712));
    v146 = quasar::RecogResult::setJsonInfo(v145, &v263);
    v147 = quasar::RecogResult::setWhisperScore(v146, *(*a3 + 528));
    v148 = quasar::RecogResult::setWhisperDetected(v147, *(*a3 + 532));
    v149 = quasar::RecogResult::setUtteranceStartMillis(v148, v202);
    v150 = quasar::RecogResult::setUtteranceDurationMillis(v149, v201);
    IsFinal = quasar::RecogResult::setIsFinal(v150, *v4);
    v152 = quasar::RecogResult::setSNR(IsFinal, v224);
    v153 = quasar::RecogResult::setFingerprintDetected(v152, *(*a3 + 696));
    v154 = quasar::RecogResult::setWatermarkDetected(v153, *(*a3 + 700));
    v155 = quasar::RecogResult::setWatermarkPeakAvg(v154, *(*a3 + 704));
    v156 = quasar::RecogResult::setLatnnMitigatorResult(v155, *a3 + 888);
    v157 = quasar::RecogResult::setSecondaryLatnnMitigatorResult(v156, *a3 + 944);
    v158 = quasar::RecogResult::setVoiceTriggerPayloadResult(v157, v127);
    v159 = quasar::RecogResult::setLeftContextForItn(v158, (a2 + 752));
    v160 = quasar::RecogResult::setRightContextForItn(v159, (a2 + 776));
    UtteranceAfterResume = quasar::RecogResult::setFirstUtteranceAfterResume(v160, *(a2 + 800));
    v162 = quasar::RecogResult::setEosLikelihood(UtteranceAfterResume, *(*a3 + 1096));
    v163 = quasar::RecogResult::setFormattingInfo(v162, *a3 + 1152);
    quasar::RecogResult::setNumTokensExcludingTriggerPhrase(v163, *(*a3 + 1108));
    if (v212)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v212);
    }

    if (*(*(a1 + 280) + 216) == 1 && (*(a2 + 836) & 1) == 0)
    {
      quasar::DecoderChainOutput::getWordHypLattice(*a3, a2, &v225);
      quasar::RecogResult::setWordHypLattice(&__p, &v225);
      if (*(&v225 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v225 + 1));
      }
    }

    v164 = *a3;
    v165 = *(*a3 + 424);
    if (v165)
    {
      v166 = quasar::Token::resetSpacing(v165);
      quasar::RecogResult::setResultChoicesV2(&__p, v166);
      v164 = *a3;
      if (**(*a3 + 424) != *(*(*a3 + 424) + 8))
      {
        v167 = *(a1 + 552);
        std::string::basic_string[abi:ne200100]<0>(&v222, "finalResultTokensV2");
        v168 = **(*a3 + 424);
        *&v227 = 0;
        v225 = 0u;
        v226 = 0u;
        std::string::basic_string[abi:ne200100]<0>(&v225 + 8, "▁");
        LOBYTE(v227) = 0;
        quasar::formatResultTokens(v168, &v225);
        v169 = std::string::insert(&v210, 0, "");
        v170 = *&v169->__r_.__value_.__l.__data_;
        v218.__r_.__value_.__r.__words[2] = v169->__r_.__value_.__r.__words[2];
        *&v218.__r_.__value_.__l.__data_ = v170;
        v169->__r_.__value_.__l.__size_ = 0;
        v169->__r_.__value_.__r.__words[2] = 0;
        v169->__r_.__value_.__r.__words[0] = 0;
        v171 = std::string::append(&v218, "");
        v172 = *&v171->__r_.__value_.__l.__data_;
        v219.__r_.__value_.__r.__words[2] = v171->__r_.__value_.__r.__words[2];
        *&v219.__r_.__value_.__l.__data_ = v172;
        v171->__r_.__value_.__l.__size_ = 0;
        v171->__r_.__value_.__r.__words[2] = 0;
        v171->__r_.__value_.__r.__words[0] = 0;
        quasar::SpeechRequestResultData::addDump(v167, &v222.__r_.__value_.__l.__data_, &v219);
        if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v219.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v218.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v210.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v226) < 0)
        {
          operator delete(*(&v225 + 1));
        }

        if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v222.__r_.__value_.__l.__data_);
        }

        v164 = *a3;
      }
    }

    v173 = (*(**(v164 + 576) + 40))(*(v164 + 576), &__p, 1);
    quasar::DecoderChainOutput::updatePersistentData(*a3, v173);
    quasar::RecogResult::~RecogResult(&__p);
    if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v223.__r_.__value_.__l.__data_);
    }

    goto LABEL_237;
  }

  v97 = *(v4 + 232);
  {
    v174 = a3[1];
    v205[0] = v69;
    v205[1] = v174;
    if (v174)
    {
      atomic_fetch_add_explicit(&v174->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    quasar::SpeechRecognizer::writeToOfflineRecogResultStream(a1, v205);
    if (v174)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v174);
    }

    v175 = a3[1];
    v204[0] = *a3;
    v204[1] = v175;
    if (v175)
    {
      atomic_fetch_add_explicit(&v175->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    quasar::SpeechRecognizer::updateFinalRecogStats(a1, v204, v4);
    if (v175)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v175);
    }

LABEL_237:
    v176 = 1;
    goto LABEL_262;
  }

  v98 = *(v4 + 240);
  if (v98)
  {
    atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v98);
  }

  if (quasar::gLogLevel >= 4)
  {
    v259 = 0u;
    v260 = 0u;
    v257 = 0u;
    v258 = 0u;
    v255 = 0u;
    v256 = 0u;
    v253 = 0u;
    v254 = 0u;
    v251 = 0u;
    v252 = 0u;
    v249 = 0u;
    v250 = 0u;
    v247 = 0u;
    v248 = 0u;
    v245 = 0u;
    v246 = 0u;
    __p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Lattice was not NULL, but failed to generate any choices", 56);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
  }

  if (*(*(a1 + 280) + 4))
  {
    v99 = *(a1 + 552);
    std::string::basic_string[abi:ne200100]<0>(&__p, "uttDetectAbort");
    std::string::basic_string[abi:ne200100]<0>(&v225, "NoChoices");
    quasar::SpeechRequestResultData::addDump(v99, &__p, &v225);
    if (SBYTE7(v226) < 0)
    {
      operator delete(v225);
    }

    if (SBYTE7(v245) < 0)
    {
      operator delete(__p);
    }
  }

  v100 = a3[1];
  v209[0] = *a3;
  v209[1] = v100;
  if (v100)
  {
    atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::SpeechRecognizer::writeToOfflineRecogResultStream(a1, v209);
  if (v100)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v100);
  }

  v101 = a3[1];
  v208[0] = *a3;
  v208[1] = v101;
  if (v101)
  {
    atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::SpeechRecognizer::updateFinalRecogStats(a1, v208, v4);
  if (v101)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v101);
  }

  quasar::RecogResult::RecogResult(&__p);
  v102 = *(a1 + 280);
  v104 = *(v102 + 24);
  v103 = *(v102 + 32);
  v206 = v104;
  v207 = v103;
  if (v103)
  {
    atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v105 = quasar::RecogResult::setParams(&__p, &v206);
  v106 = quasar::RecogResult::setLastWordClipped(v105, *(*a3 + 160));
  v107 = quasar::RecogResult::setLmeStatus(v106, (*a3 + 600));
  v108 = quasar::RecogResult::setJsonInfo(v107, &v263);
  v109 = quasar::RecogResult::setWhisperScore(v108, *(*a3 + 528));
  v110 = quasar::RecogResult::setWhisperDetected(v109, *(*a3 + 532));
  v111 = quasar::RecogResult::setUtteranceStartMillis(v110, v202);
  v112 = quasar::RecogResult::setUtteranceDurationMillis(v111, v21);
  v113 = quasar::RecogResult::setIsFinal(v112, *v4);
  quasar::RecogResult::setSNR(v113, v224);
  if (v207)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v207);
  }

  (*(**(*a3 + 576) + 40))(*(*a3 + 576), &__p, 0);
LABEL_261:
  quasar::RecogResult::~RecogResult(&__p);
  v176 = 0;
LABEL_262:
  if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v263.__r_.__value_.__l.__data_);
  }

  return v176;
}

void sub_1B55E3D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a58);
  quasar::RecogResult::~RecogResult(&STACK[0x290]);
  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (*(v58 - 153) < 0)
  {
    operator delete(*(v58 - 176));
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::SpeechRecognizer::getTraining@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 504);
  if (v2)
  {
    v4 = *(v2 + 120);
    v3 = *(v2 + 128);
    *a2 = v4;
    a2[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return this;
}

void quasar::SpeechRecognizer::writeTrainingData(quasar::SpeechRecognizer *this, const quasar::SpeechRecognizer::RecogData *a2)
{
  v2 = *(this + 63);
  if (!v2)
  {
    goto LABEL_14;
  }

  v6 = *(v2 + 120);
  v5 = *(v2 + 128);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      goto LABEL_14;
    }

    v7 = *(*(*(this + 35) + 24) + 52);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    if ((v7 & 1) == 0)
    {
LABEL_14:
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
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "Training is not enabled, skip training", 38);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v47);
      }

      return;
    }
  }

  else if (!v6 || (*(*(*(this + 35) + 24) + 52) & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = this + 280;
  if (!**(*(this + 35) + 24))
  {
    if (quasar::gLogLevel < 4)
    {
      return;
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "Result stream does not exist, skip training.", 44);
LABEL_19:
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v47);
    return;
  }

  v9 = *(a2 + 27);
  if (!v9 || (AverageConfidence = quasar::DecoderChainPersistentData::getAverageConfidence(v9), *&AverageConfidence < *(*(this + 63) + 84)))
  {
    if (quasar::gLogLevel < 4)
    {
      return;
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "Average confidence: ", 20);
    quasar::DecoderChainPersistentData::getAverageConfidence(*(a2 + 27));
    v11 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " is below threshold: ", 21);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", skip training", 15);
    goto LABEL_19;
  }

  v13 = *(a2 + 16);
  if (v13 && v13[5] && *(a2 + 20) != *(a2 + 21))
  {
    v14 = **(a2 + 18);
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    if (quasar::gLogLevel >= 4)
    {
      v62 = 0uLL;
      v63 = 0uLL;
      v60 = 0uLL;
      v61 = 0uLL;
      v58 = 0uLL;
      v59 = 0uLL;
      v56 = 0uLL;
      v57 = 0uLL;
      v54 = 0uLL;
      v55 = 0uLL;
      v52 = 0uLL;
      v53 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      v48 = 0uLL;
      v49 = 0uLL;
      v47 = 0uLL;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "Populating training data, original feature size: ", 49);
      v16 = MEMORY[0x1B8C84C30](v15, *(*(a2 + 16) + 40));
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", alignment size: ", 18);
      MEMORY[0x1B8C84C30](v17, (*(a2 + 21) - *(a2 + 20)) >> 3);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v47);
      v13 = *(a2 + 16);
    }

    if (v13[5])
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = (v14 + 1);
      while (1)
      {
        v42 = v18;
        if (!v22)
        {
          goto LABEL_43;
        }

        v23 = 0;
        v24 = *(v13[1] + 8 * (v13[4] / 0x55uLL)) + 48 * (v13[4] % 0x55uLL);
        while (1)
        {
          v25 = *(a2 + 20);
          if (v19 + v23 >= ((*(a2 + 21) - v25) >> 3))
          {
            break;
          }

          v26 = *(v25 + v18);
          if (v23)
          {
            v27 = *(v25 + 8 * v19);
            if (v26 == -1 || v26 == v27)
            {
              goto LABEL_39;
            }

LABEL_38:
            kaldi::CuMatrix<float>::CuMatrix(v43, 1, 1, 0, 0, 0);
            *v43[1].i32[0] = v26;
            v29 = *(*(a2 + 20) + v18 + 4);
            kaldi::CuMatrix<float>::CuMatrix(&v47, v24, 111);
            kaldi::CuMatrix<float>::CuMatrix(&v50, v43, 111);
            LOBYTE(v53) = v29;
            std::deque<quasar::SpeakerCodeTraining::AlignedData>::push_back(&v44, &v47);
            v21 += v29;
            v20 += v29 ^ 1;
            kaldi::CuMatrix<float>::~CuMatrix(&v50);
            kaldi::CuMatrix<float>::~CuMatrix(&v47);
            kaldi::CuMatrix<float>::~CuMatrix(v43);
            goto LABEL_39;
          }

          if (v26 != -1)
          {
            goto LABEL_38;
          }

LABEL_39:
          ++v23;
          v18 += 8;
          if (v22 == v23)
          {
            goto LABEL_43;
          }
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
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "Reaches the end of labels", 25);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(&v47);
        }

LABEL_43:
        std::deque<kaldi::CuMatrix<float>>::pop_front(*(a2 + 16));
        v19 += v22;
        v13 = *(a2 + 16);
        v18 = v42 + 8 * v22;
        if (!v13[5])
        {
          v30 = v20;
          v8 = this + 280;
          goto LABEL_48;
        }
      }
    }

    v21 = 0;
    v30 = 0.0;
LABEL_48:
    v31 = *(*(this + 63) + 88) * v30;
    if (v21 >= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = v21;
    }

    if (v45 == *(&v44 + 1))
    {
      v33 = 0;
      v37 = 0;
      v38 = ((*(&v46 + 1) + v46) * 0xA41A41A41A41A41BLL) >> 64;
      v36 = (*(&v44 + 1) + 8 * ((v38 + ((*(&v46 + 1) + v46 - v38) >> 1)) >> 5));
    }

    else
    {
      v33 = (*(*(&v44 + 1) + 8 * (v46 / 0x27)) + 104 * (v46 % 0x27));
      v34 = ((*(&v46 + 1) + v46) * 0xA41A41A41A41A41BLL) >> 64;
      v35 = (v34 + ((*(&v46 + 1) + v46 - v34) >> 1)) >> 5;
      v36 = (*(&v44 + 1) + 8 * v35);
      v37 = (*v36 + 104 * (*(&v46 + 1) + v46 - 39 * v35));
    }

    kaldi::Shuffle<std::__deque_iterator<quasar::SpeakerCodeTraining::AlignedData,quasar::SpeakerCodeTraining::AlignedData*,quasar::SpeakerCodeTraining::AlignedData&,quasar::SpeakerCodeTraining::AlignedData**,long,39l>>((*(&v44 + 1) + 8 * (v46 / 0x27)), v33, v36, v37, 4);
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
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
      v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "Training data is populated and shuffled, aligned data size: ", 60);
      v40 = MEMORY[0x1B8C84C30](v39, *(&v46 + 1));
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ", silence frame count: ", 23);
      MEMORY[0x1B8C84C20](v41, v32);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v47);
    }

    if (*(&v46 + 1))
    {
      (*(***(*v8 + 24) + 128))(**(*v8 + 24), &v44, v32);
    }

    std::deque<quasar::SpeakerCodeTraining::AlignedData>::~deque[abi:ne200100](&v44);
  }

  else if (quasar::gLogLevel >= 2)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "Feature buffer is null or reversed pdf is empty, skip training.", 63);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(&v47);
  }
}

void sub_1B55E4880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::deque<quasar::SpeakerCodeTraining::AlignedData>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::SpeechRecognizer::createDecoder(uint64_t a1@<X2>, void *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v11, ".");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = std::string::append(&v12, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  quasar::Decoder::createDecoder(&v13, a2);
}

void sub_1B55E4A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SpeechRecognizer::createDecodable(uint64_t a1@<X2>, void *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v11, ".");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = std::string::append(&v12, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  quasar::Decodable::createDecodable(&v13, a2);
}

void sub_1B55E4B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::SpeechRecognizer::isVadGatingSupported(uint64_t a1, int a2, const void **a3, std::string *a4, uint64_t a5, uint64_t a6, std::string *a7, std::string *a8, std::string *a9)
{
  v14 = a1;
  v39[0] = 0;
  v39[1] = 0;
  v38 = v39;
  if (a2)
  {
    LODWORD(v36) = a2;
    std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v38, &v36);
  }

  else
  {
    v15 = *(a1 + 48);
    if (&v38 != (v15 + 184))
    {
      std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(&v38, *(v15 + 184), (v15 + 192));
    }
  }

  v16 = v38;
  if (v38 != v39)
  {
    v17 = a9;
    v32 = a7;
    v33 = a8;
    v30 = a5;
    v31 = a6;
    v29 = a4;
    do
    {
      quasar::SpeechRecognizerModelLoader::lookupRecognizers(*(v14 + 64), *(v16 + 7), a3, a4, a5, a6, a7, a8, &v36, v17);
      v18 = v36;
      for (i = v37; v18 != i; v14 = v19)
      {
        v19 = v14;
        v21 = *(*v18 + 40);
        v20 = *(*v18 + 48);
        while (1)
        {
          if (v21 == v20)
          {
            v40 = &v36;
            std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&v40);
            v27 = 0;
            goto LABEL_26;
          }

          v22 = *v21;
          if (*v21)
          {
            {
              break;
            }
          }

          v21 += 16;
        }

        v23 = *(v21 + 8);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        v18 += 24;
      }

      v40 = &v36;
      std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&v40);
      v24 = v16[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v16[2];
          v26 = *v25 == v16;
          v16 = v25;
        }

        while (!v26);
      }

      v16 = v25;
      a4 = v29;
      v26 = v25 == v39;
      a7 = v32;
      a8 = v33;
      a5 = v30;
      a6 = v31;
      v17 = a9;
    }

    while (!v26);
  }

  v27 = 1;
LABEL_26:
  std::__tree<int>::destroy(&v38, v39[0]);
  return v27;
}

uint64_t std::deque<quasar::SpeakerCodeTraining::AlignedData>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 39 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<quasar::SpeakerCodeTraining::AlignedData>::__add_back_capacity(a1);
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
    v8 = *(v4 + 8 * (v7 / 0x27)) + 104 * (v7 % 0x27);
  }

  kaldi::CuMatrix<float>::CuMatrix(v8, a2, 111);
  result = kaldi::CuMatrix<float>::CuMatrix(v8 + 48, a2 + 48, 111);
  *(v8 + 96) = *(a2 + 96);
  ++a1[5];
  return result;
}

void kaldi::Shuffle<std::__deque_iterator<quasar::SpeakerCodeTraining::AlignedData,quasar::SpeakerCodeTraining::AlignedData*,quasar::SpeakerCodeTraining::AlignedData&,quasar::SpeakerCodeTraining::AlignedData**,long,39l>>(char *a1, int32x2_t *a2, char *a3, int32x2_t *a4, int a5)
{
  if (a4 != a2)
  {
    v7 = 39 * ((a3 - a1) >> 3) - 991146299 * ((a4 - *a3) >> 3) + 991146299 * ((a2 - *a1) >> 3);
    v8 = (v7 - 1);
    if (v8 >= 1)
    {
      kaldi::UniformRandomNumber::UniformRandomNumber(v12, 2147483646, 1uLL, 1000);
      if (a5 < 0)
      {
        a5 = time(0);
      }

      kaldi::UniformRandomNumber::SetRandomSeeds(v12, a5);
      do
      {
        v10 = kaldi::UniformRandomNumber::Rand(v12, 0);
        v13 = a1;
        v14 = a2;
        std::__deque_iterator<quasar::SpeakerCodeTraining::AlignedData,quasar::SpeakerCodeTraining::AlignedData*,quasar::SpeakerCodeTraining::AlignedData&,quasar::SpeakerCodeTraining::AlignedData**,long,39l>::operator+=[abi:ne200100](&v13, v8);
        v11 = v14;
        v13 = a1;
        v14 = a2;
        std::__deque_iterator<quasar::SpeakerCodeTraining::AlignedData,quasar::SpeakerCodeTraining::AlignedData*,quasar::SpeakerCodeTraining::AlignedData&,quasar::SpeakerCodeTraining::AlignedData**,long,39l>::operator+=[abi:ne200100](&v13, v10 % v7);
        std::swap[abi:ne200100]<quasar::SpeakerCodeTraining::AlignedData>(v11, v14);
        --v8;
        --v7;
      }

      while (v7 > 1);
      kaldi::UniformRandomNumber::~UniformRandomNumber(v12);
    }
  }
}

void quasar::SpeechRecognizer::concatenateLabels(uint64_t a1, void *a2, uint64_t **a3, uint64_t a4)
{
  if (*(*(*(a1 + 280) + 24) + 52))
  {
    v7 = a2[20];
    v6 = a2[21];
    v8 = (a2 + 20);
    if ((*(*(a1 + 504) + 64) + *(*(a1 + 504) + 64) * **(v8 - 2)) > (&v6[-v7] >> 3))
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
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v31);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "Recognition is not final, concatenating alignments, feature buffer size: ", 73);
        v12 = MEMORY[0x1B8C84C30](v11, *(a2[16] + 40));
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", label buffer size: ", 21);
        v14 = MEMORY[0x1B8C84C30](v13, (a2[21] - a2[20]) >> 3);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", pdfs size: ", 13);
        v16 = MEMORY[0x1B8C84C30](v15, a3[1] - *a3);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", num frames: ", 14);
        MEMORY[0x1B8C84C10](v17, a4);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v31);
        v6 = a2[21];
      }

      std::vector<std::pair<int,BOOL>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<int,BOOL> const*>,std::__wrap_iter<std::pair<int,BOOL> const*>>(v8, v6, *a3, a3[1], a3[1] - *a3);
      v18 = a4;
      if (a4 != a3[1] - *a3)
      {
        v19 = 0;
        v20 = a2[21];
        do
        {
          v21 = a2[22];
          if (v20 >= v21)
          {
            v22 = *v8;
            v23 = v20 - *v8;
            v24 = v23 >> 3;
            v25 = (v23 >> 3) + 1;
            if (v25 >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v26 = v21 - v22;
            if (v26 >> 2 > v25)
            {
              v25 = v26 >> 2;
            }

            if (v26 >= 0x7FFFFFFFFFFFFFF8)
            {
              v27 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v27 = v25;
            }

            if (v27)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,BOOL>>>(v8, v27);
            }

            v28 = 8 * v24;
            *v28 = -1;
            *(v28 + 4) = 0;
            v20 = 8 * v24 + 8;
            memcpy(0, v22, v23);
            v29 = a2[20];
            a2[20] = 0;
            a2[21] = v20;
            a2[22] = 0;
            if (v29)
            {
              operator delete(v29);
            }
          }

          else
          {
            *v20 = -1;
            *(v20 + 4) = 0;
            v20 += 8;
          }

          a2[21] = v20;
          ++v19;
        }

        while (v18 - (a3[1] - *a3) > v19);
      }

      if (quasar::gLogLevel > 3)
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v31);
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "Label concatenation is completed, label buffer size: ", 53);
        MEMORY[0x1B8C84C30](v30, (a2[21] - a2[20]) >> 3);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v31);
      }
    }
  }

  else if (quasar::gLogLevel >= 5)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "Training is not enabled, not concatenating labels.", 50);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v31);
  }
}

void quasar::SpeechRecognizer::splitComposedLmeTokens(uint64_t a1, uint64_t a2, quasar::SpeechRequestData **a3)
{
  v163[0] = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v5 = *(*a3 + 3);
  if (*(v5 + 103) < 0)
  {
    std::string::__init_copy_ctor_external(&v135, *(v5 + 80), *(v5 + 88));
    v4 = *a3;
  }

  else
  {
    v135 = *(v5 + 80);
  }

  LmeDataStreams = quasar::SpeechRequestData::getLmeDataStreams(v4);
  v132 = 0;
  v133 = 0;
  v134 = 0;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::LmeContainer>*,std::shared_ptr<quasar::LmeContainer>*>(&v132, *LmeDataStreams, LmeDataStreams[1], (LmeDataStreams[1] - *LmeDataStreams) >> 4);
  v8 = *(*a2 + 368);
  v10 = *v8;
  v9 = v8[1];
  if (*v8 != v9)
  {
    v107 = v8[1];
    do
    {
      v12 = *v10;
      v11 = *(v10 + 8);
      if (*v10 != v11)
      {
        v13 = 0;
        do
        {
          v13 |= quasar::SpeechRecognizer::splitComposedLmeTokens(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData>,int)::$_0::operator()(v12);
          v12 = (v12 + 224);
        }

        while (v12 != v11);
        if (v13)
        {
          v129 = 0;
          v130 = 0;
          v131 = 0;
          v14 = *v10;
          v15 = *(v10 + 8);
          v16 = v10;
          v108 = v15;
          if (*v10 != v15)
          {
            do
            {
              quasar::Token::Token(&v116, v14);
              if (!quasar::SpeechRecognizer::splitComposedLmeTokens(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData>,int)::$_0::operator()(&v116))
              {
                goto LABEL_20;
              }

              size = HIBYTE(v120.__r_.__value_.__r.__words[2]);
              if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = v120.__r_.__value_.__l.__size_;
              }

              if (!size)
              {
LABEL_20:
                std::vector<quasar::Token>::push_back[abi:ne200100](&v129, &v116);
                goto LABEL_186;
              }

              v18 = HIDWORD(v118);
              v19 = v117;
              std::string::basic_string[abi:ne200100]<0>(&v161, " ");
              quasar::splitAndTrimNoEmpty(&v120, &v161, &__str);
              v20 = *&__str.__r_.__value_.__l.__data_;
              v160.__r_.__value_.__r.__words[0] = &__str;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v160);
              if (SHIBYTE(v161.__end_cap_.__value_) < 0)
              {
                operator delete(v161.__begin_);
              }

              memset(&v161, 0, sizeof(v161));
              v109 = v14;
              if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
              {
                if (v135.__r_.__value_.__l.__size_ != 17)
                {
                  goto LABEL_31;
                }

                v22 = v135.__r_.__value_.__r.__words[0];
              }

              else
              {
                if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) != 17)
                {
                  goto LABEL_31;
                }

                v22 = &v135;
              }

              v23 = v22->__r_.__value_.__r.__words[0];
              v24 = v22->__r_.__value_.__l.__size_;
              v25 = v22->__r_.__value_.__s.__data_[16];
              if (v23 != 0x724F686372616553 || v24 != 0x6E6967617373654DLL || v25 != 103)
              {
LABEL_31:
                std::string::basic_string[abi:ne200100]<0>(&v160, "~w00");
                quasar::splitAndTrimNoEmpty(&v116, &v160, &__str);
                std::vector<std::string>::__vdeallocate(&v161);
                v161 = __str;
                memset(&__str, 0, sizeof(__str));
                p_str = &__str;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_str);
                if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v160.__r_.__value_.__l.__data_);
                }

                begin = v161.__begin_;
                end = v161.__end_;
                while (begin != end)
                {
                  memset(&__str, 0, sizeof(__str));
                  v31 = quasar::QsrText::SingletonInstance(v28);
                  quasar::QsrText::decodeQsrText(v31, begin, &__str);
                  v28 = std::string::operator=(begin, &__str);
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  ++begin;
                }

                goto LABEL_42;
              }

              memset(&__str, 0, sizeof(__str));
              v32 = quasar::QsrText::SingletonInstance(v21);
              quasar::QsrText::decodeQsrText(v32, &v116, &__str);
              std::string::basic_string[abi:ne200100]<0>(&p_str, " ");
              quasar::splitAndTrimNoEmpty(&__str, &p_str, &v160);
              std::vector<std::string>::__vdeallocate(&v161);
              v161 = v160;
              memset(&v160, 0, sizeof(v160));
              v154 = &v160;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v154);
              if (SHIBYTE(v159) < 0)
              {
                operator delete(p_str);
              }

              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

LABEL_42:
              v111 = 10 * ((v18 - v19) / (0xAAAAAAAAAAAAAAABLL * ((*(&v20 + 1) - v20) >> 3)) / 0xA);
              memset(&v160, 0, sizeof(v160));
              p_str = 0;
              v158 = 0;
              v159 = 0;
              v33 = 0xAAAAAAAAAAAAAAABLL * ((v161.__end_ - v161.__begin_) >> 3);
              v10 = v16;
              while (1)
              {
                LODWORD(v33) = v33 - 1;
                if ((v33 & 0x80000000) != 0)
                {
                  break;
                }

                v34 = v33 & 0x7FFFFFFF;
                v35 = &v161.__begin_[v33 & 0x7FFFFFFF];
                v36 = SHIBYTE(v35->__r_.__value_.__r.__words[2]);
                if ((v36 & 0x8000000000000000) != 0)
                {
                  v37 = v35->__r_.__value_.__r.__words[0];
                  v38 = v35->__r_.__value_.__l.__size_;
                  if (!v38)
                  {
                    goto LABEL_91;
                  }
                }

                else
                {
                  v37 = &v161.__begin_[v33 & 0x7FFFFFFF];
                  v38 = SHIBYTE(v35->__r_.__value_.__r.__words[2]);
                  if (!*(&v35->__r_.__value_.__s + 23))
                  {
                    goto LABEL_91;
                  }
                }

                v39 = v37 + v38;
                v40 = v37;
                v41 = v39;
                do
                {
                  v42 = v40;
                  v43 = v40;
                  while (1)
                  {
                    v44 = *v43++;
                    if (v44 == 92)
                    {
                      break;
                    }

                    v42 = v43;
                    if (v43 == v39)
                    {
                      v42 = v41;
                      goto LABEL_54;
                    }
                  }

                  v40 = (v42 + 1);
                  v41 = v42;
                }

                while (v43 != v39);
LABEL_54:
                if (v42 != v39 && v42 - v37 != -1)
                {
                  if ((v36 & 0x80000000) != 0)
                  {
                    v45 = v35->__r_.__value_.__r.__words[0];
                    v36 = v35->__r_.__value_.__l.__size_;
                  }

                  else
                  {
                    v45 = &v161.__begin_[v33 & 0x7FFFFFFF];
                  }

                  v46 = v45 + v36;
                  if (v36)
                  {
                    v47 = v45;
                    v48 = (v45 + v36);
                    do
                    {
                      v49 = v47;
                      v50 = v47;
                      while (1)
                      {
                        v51 = *v50++;
                        if (v51 == 92)
                        {
                          break;
                        }

                        v49 = v50;
                        if (v50 == v46)
                        {
                          v49 = v48;
                          goto LABEL_68;
                        }
                      }

                      v47 = (&v49->__r_.__value_.__l.__data_ + 1);
                      v48 = v49;
                    }

                    while (v50 != v46);
                  }

                  else
                  {
                    v49 = v45;
                  }

LABEL_68:
                  v52 = v49 - v45;
                  if (v49 == v46)
                  {
                    v53 = -1;
                  }

                  else
                  {
                    v53 = v52;
                  }

                  std::string::basic_string(&__str, v35, v53, 0xFFFFFFFFFFFFFFFFLL, &v154);
                  if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v160.__r_.__value_.__l.__data_);
                  }

                  v160 = __str;
                  v54 = &v161.__begin_[v34];
                  v55 = SHIBYTE(v54->__r_.__value_.__r.__words[2]);
                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    v56 = v54->__r_.__value_.__r.__words[0];
                    v55 = v54->__r_.__value_.__l.__size_;
                  }

                  else
                  {
                    v56 = &v161.__begin_[v34];
                  }

                  v57 = v56 + v55;
                  if (v55)
                  {
                    v58 = v56;
                    v59 = (v56 + v55);
                    do
                    {
                      v60 = v58;
                      v61 = v58;
                      while (1)
                      {
                        v62 = *v61++;
                        if (v62 == 92)
                        {
                          break;
                        }

                        v60 = v61;
                        if (v61 == v57)
                        {
                          v60 = v59;
                          goto LABEL_85;
                        }
                      }

                      v58 = (&v60->__r_.__value_.__l.__data_ + 1);
                      v59 = v60;
                    }

                    while (v61 != v57);
                  }

                  else
                  {
                    v60 = v56;
                  }

LABEL_85:
                  v63 = v60 - v56;
                  if (v60 == v57)
                  {
                    v64 = -1;
                  }

                  else
                  {
                    v64 = v63;
                  }

                  std::string::basic_string(&__str, v54, 0, v64, &v154);
                  v65 = &v161.__begin_[v34];
                  if (SHIBYTE(v65->__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v65->__r_.__value_.__l.__data_);
                  }

                  v66 = *&__str.__r_.__value_.__l.__data_;
                  v65->__r_.__value_.__r.__words[2] = __str.__r_.__value_.__r.__words[2];
                  *&v65->__r_.__value_.__l.__data_ = v66;
                }

LABEL_91:
                std::vector<std::string>::push_back[abi:ne200100](&p_str, &v160);
              }

              v67 = (v158 - 3);
              if (p_str != v158 && v67 > p_str)
              {
                p_data = &p_str[1].__r_.__value_.__l.__data_;
                do
                {
                  v70 = *(p_data - 1);
                  v71 = *(p_data - 3);
                  v72 = *(v67 + 16);
                  *(p_data - 3) = *v67;
                  *(p_data - 1) = v72;
                  *v67 = v71;
                  *(v67 + 16) = v70;
                  v67 -= 24;
                  v73 = p_data >= v67;
                  p_data += 3;
                }

                while (!v73);
              }

              v155 = 0;
              v154 = 0;
              v156 = 0;
              if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v162, v120.__r_.__value_.__l.__data_, v120.__r_.__value_.__l.__size_);
              }

              else
              {
                v162 = v120;
              }

              memset(&__str, 0, sizeof(__str));
              std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__str, &v162, v163, 1uLL);
              std::vector<std::vector<std::string>>::push_back[abi:ne200100](&v154, &__str);
              v152[0] = &__str;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v152);
              if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v162.__r_.__value_.__l.__data_);
              }

              v74 = v161.__begin_;
              if (v161.__end_ != v161.__begin_)
              {
                v75 = 0;
                while (1)
                {
                  memset(&v162, 0, sizeof(v162));
                  v76 = v132;
                  v114 = v133;
                  v112 = v75;
                  if (v132 == v133)
                  {
                    v96 = 0;
                    v95 = 0;
                  }

                  else
                  {
                    v77 = &v74[v75];
                    v113 = v77;
                    do
                    {
                      v78 = **v76;
                      quasar::LmeDataFactoryBase::PronSet::PronSet(v152);
                      if (SHIBYTE(v77->__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v151, v77->__r_.__value_.__l.__data_, v77->__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v79 = *&v77->__r_.__value_.__l.__data_;
                        v151.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
                        *&v151.__r_.__value_.__l.__data_ = v79;
                      }

                      std::string::basic_string[abi:ne200100]<0>(__p, "");
                      quasar::LmeDataFactoryBase::Word::Word(&__str, &v151, __p, 0);
                      if (v150 < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v151.__r_.__value_.__l.__data_);
                      }

                      quasar::LmeData::lookupWordPronCache(v78, &__str, 1, v152);
                      quasar::LmeDataFactoryBase::PronSet::toPronChoices(v152, 0, &v147);
                      v80 = v147;
                      v81 = v148;
                      while (v80 != v81)
                      {
                        if (v80[1].__r_.__value_.__s.__data_[7] < 0)
                        {
                          std::string::__init_copy_ctor_external(&v146, v80->__r_.__value_.__l.__size_, v80->__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v82 = *&v80->__r_.__value_.__r.__words[1];
                          v146.__r_.__value_.__r.__words[2] = v80[1].__r_.__value_.__r.__words[0];
                          *&v146.__r_.__value_.__l.__data_ = v82;
                        }

                        std::string::basic_string[abi:ne200100]<0>(&v145, ".");
                        std::string::basic_string[abi:ne200100]<0>(v143, " ");
                        quasar::replaceAll(&v146, &v145, v143);
                        if (v144 < 0)
                        {
                          operator delete(v143[0]);
                        }

                        if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v145.__r_.__value_.__l.__data_);
                        }

                        v83 = v154;
                        v84 = v155;
                        while (v83 != v84)
                        {
                          if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v85 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
                          }

                          else
                          {
                            v85 = v146.__r_.__value_.__l.__size_;
                          }

                          std::string::basic_string(&v145, (v83[1] - 24), 0, v85, v143);
                          if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v86 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
                          }

                          else
                          {
                            v86 = v146.__r_.__value_.__l.__size_;
                          }

                          v87 = HIBYTE(v145.__r_.__value_.__r.__words[2]);
                          v88 = SHIBYTE(v145.__r_.__value_.__r.__words[2]);
                          if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                          {
                            v87 = v145.__r_.__value_.__l.__size_;
                          }

                          if (v86 != v87)
                          {
                            v91 = 0;
                            if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                            {
                              goto LABEL_145;
                            }

LABEL_144:
                            operator delete(v145.__r_.__value_.__l.__data_);
                            goto LABEL_145;
                          }

                          if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v89 = &v146;
                          }

                          else
                          {
                            v89 = v146.__r_.__value_.__r.__words[0];
                          }

                          if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v90 = &v145;
                          }

                          else
                          {
                            v90 = v145.__r_.__value_.__r.__words[0];
                          }

                          v91 = memcmp(v89, v90, v86) == 0;
                          if (v88 < 0)
                          {
                            goto LABEL_144;
                          }

LABEL_145:
                          if (v91)
                          {
                            std::vector<std::vector<std::string>>::push_back[abi:ne200100](&v162, v83);
                            if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v92 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
                            }

                            else
                            {
                              v92 = v146.__r_.__value_.__l.__size_;
                            }

                            std::string::basic_string(&v145, (v83[1] - 24), v92, 0xFFFFFFFFFFFFFFFFLL, v143);
                            std::string::operator=((*(v162.__r_.__value_.__l.__size_ - 16) - 24), &v146);
                            quasar::trim(&v145);
                            v93 = HIBYTE(v145.__r_.__value_.__r.__words[2]);
                            v94 = HIBYTE(v145.__r_.__value_.__r.__words[2]);
                            if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                            {
                              v93 = v145.__r_.__value_.__l.__size_;
                            }

                            if (v93)
                            {
                              std::vector<std::string>::push_back[abi:ne200100](v162.__r_.__value_.__l.__size_ - 24, &v145);
                              v94 = HIBYTE(v145.__r_.__value_.__r.__words[2]);
                            }

                            if (v94 < 0)
                            {
                              operator delete(v145.__r_.__value_.__l.__data_);
                            }
                          }

                          v83 += 3;
                        }

                        if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v146.__r_.__value_.__l.__data_);
                        }

                        v80 = (v80 + 40);
                        v10 = v16;
                      }

                      v146.__r_.__value_.__r.__words[0] = &v147;
                      std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v146);
                      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v142[0].__r_.__value_.__l.__size_, v142[0].__r_.__value_.__r.__words[2]);
                      if (v141 < 0)
                      {
                        operator delete(v137);
                      }

                      v77 = v113;
                      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__str.__r_.__value_.__l.__data_);
                      }

                      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v152, v152[1]);
                      v76 += 2;
                    }

                    while (v76 != v114);
                    v96 = v162.__r_.__value_.__l.__size_;
                    v95 = v162.__r_.__value_.__r.__words[0];
                  }

                  std::vector<std::vector<std::string>>::__assign_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(&v154, v95, v96, 0xAAAAAAAAAAAAAAABLL * (v96 - v95));
                  __str.__r_.__value_.__r.__words[0] = &v162;
                  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&__str);
                  v75 = v112 + 1;
                  v74 = v161.__begin_;
                  v97 = v161.__end_ - v161.__begin_;
                  if (0xAAAAAAAAAAAAAAABLL * ((v161.__end_ - v161.__begin_) >> 3) == v112 + 1)
                  {
                    goto LABEL_169;
                  }
                }
              }

              v97 = 0;
LABEL_169:
              if (v155 == v154 || v154->__r_.__value_.__l.__size_ - v154->__r_.__value_.__r.__words[0] != v97)
              {
                std::vector<quasar::Token>::push_back[abi:ne200100](&v129, &v116);
              }

              else
              {
                v115 = v117;
                memset(&v162, 0, sizeof(v162));
                std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v162, v154->__r_.__value_.__r.__words[0], v154->__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v154->__r_.__value_.__l.__size_ - v154->__r_.__value_.__r.__words[0]) >> 3));
                v98 = v161.__begin_;
                if (v161.__end_ != v161.__begin_)
                {
                  v99 = v162.__r_.__value_.__r.__words[0];
                  std::string::basic_string[abi:ne200100]<0>(v152, " ");
                  quasar::splitAndTrimNoEmpty(v99, v152, &__str);
                  v100 = *&__str.__r_.__value_.__l.__data_;
                  v147 = &__str;
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v147);
                  if (v153 < 0)
                  {
                    operator delete(v152[0]);
                  }

                  v101 = quasar::Token::Token(&__str, &v116);
                  v102 = quasar::QsrText::SingletonInstance(v101);
                  quasar::QsrText::encodeTokenQsrText(v102, v98, &__str);
                  v103 = SHIBYTE(p_str->__r_.__value_.__r.__words[2]);
                  if (v103 >= 0)
                  {
                    v104 = p_str;
                  }

                  else
                  {
                    v104 = p_str->__r_.__value_.__r.__words[0];
                  }

                  if (v103 >= 0)
                  {
                    v105 = HIBYTE(p_str->__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v105 = p_str->__r_.__value_.__l.__size_;
                  }

                  std::string::append(&__str, v104, v105);
                  HIDWORD(v137) = v115;
                  v138 = v115 + -1431655765 * ((*(&v100 + 1) - v100) >> 3) * v111;
                  v139 = v138;
                  std::string::operator=(v142, v99);
                  v140 = 1;
                  quasar::PhonesetMapping::getIpaPhoneSequence(a1 + 608, v142);
                }

                v106 = v130;
                *(v130 - 24) = v118;
                *(v106 - 180) = v119;
                __str.__r_.__value_.__r.__words[0] = &v162;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
                v10 = v16;
              }

              __str.__r_.__value_.__r.__words[0] = &v154;
              std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&__str);
              __str.__r_.__value_.__r.__words[0] = &p_str;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
              v15 = v108;
              v14 = v109;
              if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v160.__r_.__value_.__l.__data_);
              }

              __str.__r_.__value_.__r.__words[0] = &v161;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
LABEL_186:
              if (v128 < 0)
              {
                operator delete(v127);
              }

              if (v126 < 0)
              {
                operator delete(v125);
              }

              __str.__r_.__value_.__r.__words[0] = &v124;
              std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__str);
              if (v123 < 0)
              {
                operator delete(v122);
              }

              __str.__r_.__value_.__r.__words[0] = &v121;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
              if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v120.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v116.__r_.__value_.__l.__data_);
              }

              v14 = (v14 + 224);
            }

            while (v14 != v15);
          }

          if (v10 != &v129)
          {
            std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v10, v129, v130, 0x6DB6DB6DB6DB6DB7 * ((v130 - v129) >> 5));
          }

          __str.__r_.__value_.__r.__words[0] = &v129;
          std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__str);
          v9 = v107;
        }
      }

      v10 += 24;
    }

    while (v10 != v9);
  }

  __str.__r_.__value_.__r.__words[0] = &v132;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&__str);
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }
}

void sub_1B55E6180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, void *__p, uint64_t a63)
{
  if (*(v67 - 225) < 0)
  {
    operator delete(*(v67 - 248));
  }

  if (a67 < 0)
  {
    operator delete(__p);
  }

  __p = (v67 - 192);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  quasar::Token::~Token(&a21);
  a21 = &a49;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a21);
  a21 = &a52;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a21);
  if (a60 < 0)
  {
    operator delete(a55);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::SpeechRecognizer::splitComposedLmeTokens(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData>,int)::$_0::operator()(std::string *a1)
{
  if (std::string::find[abi:ne200100](a1, "\\contact-", 0) == -1 || std::string::find[abi:ne200100](a1, "~w00", 0) == -1 && std::string::find[abi:ne200100](a1, "_", 0) == -1)
  {
    return 0;
  }

  std::string::basic_string(&v4, a1);
  v2 = quasar::Decoder::isLikelyWithPhoeticName(&v4) ^ 1;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_1B55E64D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SpeechRecognizer::writeToOfflineRecogResultStream(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 280);
  if (*(v2 + 216) == 1)
  {
    v4 = **(v2 + 24);
    if (v4)
    {
    }

    v5 = a2[1];
    v6 = *a2;
    v7 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v4 + 144))(v4, &v6);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_1B55E65BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

double quasar::SpeechRecognizer::getSnr(uint64_t a1, std::mutex *a2, int a3)
{
  v3 = *a1;
  result = -1000.0;
  if (*a1 == *(a1 + 8) || *v3 == v3[1])
  {
    return result;
  }

  v17 = 0;
  quasar::Align::MakeMonotonic(v3, &v17 + 1, &v17);
  v8 = *v3;
  v7 = v3[1];
  if (*v3 == v7)
  {
    goto LABEL_21;
  }

  v9 = 1;
  do
  {
    if (v9)
    {
      kaldi::SnrTracker::label_noise_or_speech_ms(a2, 0, *(v8 + 7), a3, 1);
    }

    v10 = *(v8 + 23);
    if (v10 < 0)
    {
      if (*(v8 + 1) != 3)
      {
LABEL_18:
        v15 = 0;
        goto LABEL_19;
      }

      v11 = *v8;
    }

    else
    {
      v11 = v8;
      if (v10 != 3)
      {
        goto LABEL_18;
      }
    }

    v12 = *v11;
    v13 = *(v11 + 2);
    v15 = v12 == 16188 && v13 == 62;
LABEL_19:
    kaldi::SnrTracker::label_noise_or_speech_ms(a2, *(v8 + 7), *(v8 + 9), a3, v15);
    kaldi::SnrTracker::label_noise_or_speech_ms(a2, *(v8 + 9), *(v8 + 8), a3, 1);
    v9 = 0;
    v8 += 112;
  }

  while (v8 != v7);
  v8 = *v3;
  v7 = v3[1];
LABEL_21:
  if (v7 == v8)
  {
    v16 = -1;
  }

  else
  {
    v16 = *(v7 - 48);
  }

  return kaldi::SnrTracker::get_snr(a2, a3, v16);
}

uint64_t quasar::SpeechRecognizer::writeRecordedStateAccesses(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  v3 = *(v2 + 328);
  v4 = (v2 + 336);
  if (v3 != (v2 + 336))
  {
    do
    {
      v6 = v3[7];
      v7 = v3[8];
      while (v6 != v7)
      {
        v8 = *v6;
        v6 += 2;
        result = (*(*v8 + 40))(v8, a2);
      }

      v9 = v3[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  return result;
}

void quasar::SpeechRecognizer::pauseRecognition(quasar::SpeechRecognizer *this)
{
  std::mutex::lock((this + 136));
  if (*(this + 32) == 2)
  {
    if (quasar::SpeechRequestData::isVadGatingEnabled(*(this + 35)))
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
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
      v10 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Pause: unsupported when VAD gating is enabled.", 46);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v10);
    }

    v2 = *(*(this + 35) + 24);
    if (*(v2 + 36) == 1 && *(v2 + 37) != 1)
    {
      if (quasar::gLogLevel >= 4)
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
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
        v10 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Pause: pausing the recognizer.", 30);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v10);
      }

      quasar::MultiChainMultiAudioBuffer::startCountingAudioDuration(*(this + 33));
      v5 = *(this + 72);
      if (v5)
      {
        v6 = std::__shared_weak_count::lock(v5);
        if (v6)
        {
          v7 = v6;
          v8 = *(this + 71);
          if (v8)
          {
            (*(*v8 + 120))(v8);
            v9 = **(*(this + 35) + 24);
            (*(*v9 + 88))(v9);
            *(this + 32) = 4;
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }
    }

    else if (quasar::gLogLevel >= 4)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
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
      v10 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Pause: utterance detection is disabled or utterance concatenation is enabled, do nothing.. ", 91);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v10);
    }
  }

  else if (quasar::gLogLevel >= 5)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
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
    v10 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v10);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Pause called but recognizer in state:", 37);
    v4 = MEMORY[0x1B8C84C00](v3, *(this + 32));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", do nothing..", 14);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v10);
  }

  std::mutex::unlock((this + 136));
}

void quasar::SpeechRecognizer::resumeRecognition(uint64_t a1, uint64_t *a2, uint64_t *a3, std::string **a4, char a5)
{
  std::mutex::lock((a1 + 136));
  if (*(a1 + 128) == 4)
  {
    if (quasar::SpeechRequestData::isVadGatingEnabled(*(a1 + 280)))
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v42);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "Resume: unsupported when VAD gating is enabled.", 47);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v42);
    }

    v10 = *(*(a1 + 280) + 24);
    if (*(v10 + 36) == 1 && *(v10 + 37) != 1)
    {
      if (quasar::gLogLevel >= 4)
      {
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "Resume: resuming the recognizer.", 32);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v42);
      }

      v11 = quasar::MultiChainMultiAudioBuffer::stopCountingAudioDuration(*(a1 + 264));
      v12 = *(a1 + 592);
      v13 = *(a1 + 600);
      if (v12 >= v13)
      {
        v15 = *(a1 + 584);
        v16 = v12 - v15;
        v17 = (v12 - v15) >> 2;
        v18 = v17 + 1;
        if ((v17 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v19 = v13 - v15;
        if (v19 >> 1 > v18)
        {
          v18 = v19 >> 1;
        }

        v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
        v21 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v20)
        {
          v21 = v18;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1 + 584, v21);
        }

        v22 = (v12 - v15) >> 2;
        v23 = (4 * v17);
        v24 = (4 * v17 - 4 * v22);
        *v23 = v11;
        v14 = v23 + 1;
        memcpy(v24, v15, v16);
        v25 = *(a1 + 584);
        *(a1 + 584) = v24;
        *(a1 + 592) = v14;
        *(a1 + 600) = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v12 = v11;
        v14 = v12 + 1;
      }

      *(a1 + 592) = v14;
      if ((a5 & 1) == 0)
      {
        quasar::MultiChainMultiAudioBuffer::emptyAudioBuffer(*(a1 + 264));
      }

      v26 = *(*(a1 + 280) + 24);
      v42 = 0uLL;
      *&v43 = 0;
      quasar::RunAsyncParams::setLeftContext(v26, &v42);
      v39 = &v42;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v39);
      v27 = *(*(a1 + 280) + 24);
      v42 = 0uLL;
      *&v43 = 0;
      quasar::RunAsyncParams::setLeftContextForItn(v27, &v42);
      v39 = &v42;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v39);
      v28 = *a3;
      v29 = a3[1];
      if (v29 != *a3)
      {
        v30 = (v29 - *a3) >> 3;
        v42 = 0uLL;
        *&v43 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v42, v28, v29, 0xAAAAAAAAAAAAAAABLL * v30);
        if (0xAAAAAAAAAAAAAAABLL * ((*(&v42 + 1) - v42) >> 3) >= 5)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v39, *(&v42 + 1) - 96, *(&v42 + 1), 4uLL);
          std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v42, v39, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3));
          v59 = &v39;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v59);
        }

        quasar::RunAsyncParams::setLeftContextForItn(*(*(a1 + 280) + 24), &v42);
        v39 = &v42;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v39);
      }

      v31 = *a2;
      v32 = a2[1];
      if (v32 != *a2)
      {
        v33 = (v32 - *a2) >> 3;
        v42 = 0uLL;
        *&v43 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v42, v31, v32, 0xAAAAAAAAAAAAAAABLL * v33);
        if (0xAAAAAAAAAAAAAAABLL * ((*(&v42 + 1) - v42) >> 3) >= 5)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v39, *(&v42 + 1) - 96, *(&v42 + 1), 4uLL);
          std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v42, v39, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3));
          v59 = &v39;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v59);
        }

        quasar::RunAsyncParams::setLeftContext(*(*(a1 + 280) + 24), &v42);
        v39 = &v42;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v39);
      }

      quasar::RunAsyncParams::setRightContextForItn(*(*(a1 + 280) + 24), a4);
      v34 = **(*(a1 + 280) + 24);
      (*(*v34 + 96))(v34);
      *(a1 + 128) = 2;
      v35 = *(a1 + 576);
      if (v35)
      {
        v36 = std::__shared_weak_count::lock(v35);
        if (v36)
        {
          v37 = v36;
          v38 = *(a1 + 568);
          if (v38)
          {
            (*(*v38 + 128))(v38);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }
      }
    }

    else if (quasar::gLogLevel >= 4)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v42);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "Resume: utterance detection is disabled or utterance concatenation is enabled, do nothing.. ", 92);
LABEL_9:
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v42);
    }
  }

  else if (quasar::gLogLevel >= 4)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v42);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "Resume: The recognizer was not paused, so nothing to resume, ignoring the call.", 79);
    goto LABEL_9;
  }

  std::mutex::unlock((a1 + 136));
}

void sub_1B55E708C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  std::mutex::unlock((v5 + 136));
  _Unwind_Resume(a1);
}

uint64_t quasar::SpeechRecognizer::getPauseDurations@<X0>(quasar::SpeechRecognizer *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a2, *(this + 73), *(this + 74), (*(this + 74) - *(this + 73)) >> 2);
}

uint64_t quasar::SpeechRecognizer::initializeBaseSymbolTable(uint64_t this)
{
  if ((*(this + 616) & 1) == 0)
  {
    *(this + 616) = 1;
    v1 = *(this + 48);
    std::string::basic_string[abi:ne200100]<0>(__p, "lme-create");
    quasar::SystemConfig::getPtreeOptional(v1, __p);
  }

  return this;
}

void sub_1B55E73C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&__p);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(a1);
}

void quasar::SpeechRecognizer::findWord(quasar::SpeechRecognizer *this@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if ((*(this + 616) & 1) == 0)
  {
    quasar::SpeechRecognizer::initializeBaseSymbolTable(this);
  }

  v6 = *(this + 76);
  if (v6 && quasar::QsrTextSymbolTable::Find(v6, a2) == -1)
  {

    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }

  else if (*(a2 + 23) < 0)
  {
    v7 = *a2;
    v8 = *(a2 + 8);

    std::string::__init_copy_ctor_external(a3, v7, v8);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }
}

void std::__shared_ptr_emplace<std::mutex>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D1F940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::condition_variable_any::~condition_variable_any(std::condition_variable_any *this)
{
  cntrl = this->__mut_.__cntrl_;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  std::condition_variable::~condition_variable(&this->__cv_);
}

std::string *std::__shared_ptr_emplace<quasar::SpeakerCodeTraining>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::string &,unsigned int &,float &,unsigned int &,unsigned int &,unsigned int &,BOOL &,BOOL &,unsigned int &,unsigned int &,std::string &,std::allocator<quasar::SpeakerCodeTraining>,0>(std::string *a1, __int128 *a2, __int128 *a3, int *a4, float *a5, unsigned int *a6, unsigned int *a7, int *a8, std::string::value_type *a9, char *a10, int *a11, int *a12, __int128 *a13)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F2D1F9E8;
  quasar::SpeakerCodeTraining::SpeakerCodeTraining(a1 + 1, a2, a3, *a4, *a6, *a7, *a8, *a9, *a5, *a10, *a11, *a12, a13);
  return a1;
}

void std::__shared_ptr_emplace<quasar::SpeakerCodeTraining>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D1F9E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void quasar::SpeakerCodeTraining::~SpeakerCodeTraining(quasar::SpeakerCodeTraining *this)
{
  std::mutex::~mutex((this + 216));
  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  v2 = *(this + 23);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 19);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 15);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

quasar::SpeechRecognizerActiveConfiguration *quasar::SpeechRecognizerActiveConfiguration::SpeechRecognizerActiveConfiguration(quasar::SpeechRecognizerActiveConfiguration *this, const quasar::SpeechRecognizerActiveConfiguration *a2)
{
  v4 = std::__optional_copy_base<std::set<unsigned int>,false>::__optional_copy_base[abi:ne200100](this, a2);
  std::__optional_copy_base<std::set<std::string>,false>::__optional_copy_base[abi:ne200100](v4 + 32, a2 + 32);
  std::__optional_copy_base<std::set<std::string>,false>::__optional_copy_base[abi:ne200100](this + 64, a2 + 64);
  std::__optional_copy_base<std::set<BOOL>,false>::__optional_copy_base[abi:ne200100](this + 96, a2 + 96);
  std::__optional_copy_base<std::set<BOOL>,false>::__optional_copy_base[abi:ne200100](this + 128, a2 + 128);
  std::__optional_copy_base<std::set<std::string>,false>::__optional_copy_base[abi:ne200100](this + 160, a2 + 160);
  std::__optional_copy_base<std::set<std::string>,false>::__optional_copy_base[abi:ne200100](this + 192, a2 + 192);
  std::__optional_copy_base<std::set<std::string>,false>::__optional_copy_base[abi:ne200100](this + 224, a2 + 224);
  return this;
}

void sub_1B55E792C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 216) == 1)
  {
    std::__tree<std::string>::destroy(v1 + 192, *(v1 + 200));
  }

  if (*(v1 + 184) == 1)
  {
    std::__tree<std::string>::destroy(v1 + 160, *(v1 + 168));
  }

  if (*(v1 + 152) == 1)
  {
    std::__tree<int>::destroy(v1 + 128, *(v1 + 136));
  }

  if (*(v1 + 120) == 1)
  {
    std::__tree<int>::destroy(v1 + 96, *(v1 + 104));
  }

  if (*(v1 + 88) == 1)
  {
    std::__tree<std::string>::destroy(v1 + 64, *(v1 + 72));
  }

  if (*(v1 + 56) == 1)
  {
    std::__tree<std::string>::destroy(v1 + 32, *(v1 + 40));
  }

  if (*(v1 + 24) == 1)
  {
    std::__tree<int>::destroy(v1, *(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_copy_base<std::set<unsigned int>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    std::set<unsigned int>::set[abi:ne200100](a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1B55E7A58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__tree<int>::destroy(v1, *(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void *std::set<unsigned int>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *std::__tree<unsigned int>::__find_equal<unsigned int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<unsigned int>::__find_equal<unsigned int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
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
    if (*(v10 + 7) < *a5)
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
          v18 = *(v16 + 28);
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

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
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

uint64_t std::__optional_copy_base<std::set<std::string>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    std::set<std::string>::set[abi:ne200100](a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1B55E7DE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__tree<std::string>::destroy(v1, *(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_copy_base<std::set<BOOL>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    std::set<BOOL>::set[abi:ne200100](a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1B55E7E50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__tree<int>::destroy(v1, *(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void *std::set<BOOL>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<BOOL>::insert[abi:ne200100]<std::__tree_const_iterator<BOOL,std::__tree_node<BOOL,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<BOOL>::insert[abi:ne200100]<std::__tree_const_iterator<BOOL,std::__tree_node<BOOL,void *> *,long>>(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<BOOL>::__emplace_hint_unique_key_args<BOOL,BOOL const&>(v5, v5 + 1, v4 + 25);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<BOOL>::__emplace_hint_unique_key_args<BOOL,BOOL const&>(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *std::__tree<BOOL>::__find_equal<BOOL>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<BOOL>::__find_equal<BOOL>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 25), v6 < v7))
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
    if (*(v10 + 25) < v15)
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
          v18 = *(v16 + 25);
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

  if (a4 != v5 && v6 >= *(a4 + 25))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 25);
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

void std::__shared_ptr_emplace<quasar::RecogAudioBuffer>::__shared_ptr_emplace[abi:ne200100]<unsigned int &,int &,int &,BOOL &,std::string &,std::shared_ptr<kaldi::Timer> &,int &,BOOL &,unsigned int const&,std::allocator<quasar::RecogAudioBuffer>,0>(void *a1, int *a2, int *a3, int *a4, char *a5, int a6, void *a7, int *a8, char *a9, int *a10)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFF8E0;
  std::allocator<quasar::RecogAudioBuffer>::construct[abi:ne200100]<quasar::RecogAudioBuffer,unsigned int &,int &,int &,BOOL &,std::string &,std::shared_ptr<kaldi::Timer> &,int &,BOOL &,unsigned int const&>(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void std::allocator<quasar::RecogAudioBuffer>::construct[abi:ne200100]<quasar::RecogAudioBuffer,unsigned int &,int &,int &,BOOL &,std::string &,std::shared_ptr<kaldi::Timer> &,int &,BOOL &,unsigned int const&>(uint64_t a1, uint64_t a2, int *a3, int *a4, int *a5, char *a6, int a7, void *a8, int *a9, char *a10, int *a11)
{
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v15 = *a6;
  v16 = a8[1];
  v17[0] = *a8;
  v17[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  quasar::RecogAudioBuffer::RecogAudioBuffer(a2, v12, v13, v14, v15, a7, v17, *a9, *a10, *a11);
}

void sub_1B55E8374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SpeechRecognizer::RecogData::RecogData(quasar::SpeechRecognizer::RecogData *this)
{
  *this = 0;
  *(this + 24) = 0u;
  *(this + 50) = 0;
  *(this + 8) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 181) = 0u;
  *(this + 102) = 1;
  *(this + 26) = 0;
  operator new();
}

void sub_1B55E8440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = v3;
  MEMORY[0x1B8C85350](v4, 0x1000C40F7F8B94BLL);
  v6 = v2[20];
  if (v6)
  {
    v2[21] = v6;
    operator delete(v6);
  }

  v7 = v2[19];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = v2[17];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = v2[15];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = v2[13];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = v2[11];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = v2[9];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = v2[7];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](va);
  v14 = v2[2];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(a1);
}

void sub_1B55E8554(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x1B8C85350](v1, 0x1000C40F7F8B94BLL);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<quasar::DecoderChainPersistentData *,std::shared_ptr<quasar::DecoderChainPersistentData>::__shared_ptr_default_delete<quasar::DecoderChainPersistentData,quasar::DecoderChainPersistentData>,std::allocator<quasar::DecoderChainPersistentData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::DecoderChainPersistentData *,std::shared_ptr<quasar::DecoderChainPersistentData>::__shared_ptr_default_delete<quasar::DecoderChainPersistentData,quasar::DecoderChainPersistentData>,std::allocator<quasar::DecoderChainPersistentData>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::DecoderChainPersistentData *,std::shared_ptr<quasar::DecoderChainPersistentData>::__shared_ptr_default_delete<quasar::DecoderChainPersistentData,quasar::DecoderChainPersistentData>,std::allocator<quasar::DecoderChainPersistentData>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void quasar::SpeechRecognizer::RecogData::~RecogData(quasar::SpeechRecognizer::RecogData *this)
{
  v2 = *(this + 30);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 28);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 19);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 17);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 15);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 13);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 11);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 9);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 7);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v13 = (this + 24);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v13);
  v12 = *(this + 2);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

unint64_t std::string::find[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  v8 = v6 - a3;
  if (v6 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = (v5 + v6);
    if (v8 >= v7)
    {
      v13 = (v5 + a3);
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_8;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_8:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return &v11[-v5];
    }
  }

  return a3;
}

void std::vector<std::vector<std::string>>::__assign_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(uint64_t a1, std::string **a2, std::string **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::vector<std::string>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::string>>,std::vector<std::string>*,std::vector<std::string>*,std::vector<std::string>*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}