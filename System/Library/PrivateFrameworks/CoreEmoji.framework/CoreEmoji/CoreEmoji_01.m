unsigned int *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = (result + 1);
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = (a2 + 1);
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = (a3 + 1);
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = (a2 + 1);
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = (result + 1);
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

unsigned int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v6 = v5[2];
        v7 = *v5;
        if (v6 < *v5 || v7 >= v6 && v5[3] < v5[1])
        {
          v9 = v5[2];
          v8 = v5[3];
          v10 = v5[1];
          v5[2] = v7;
          v4[1] = v10;
          v11 = result;
          if (v5 != result)
          {
            v12 = v3;
            do
            {
              v13 = *(result + v12 - 8);
              if (v13 <= v9)
              {
                if (v13 < v9)
                {
                  v11 = v5;
                  goto LABEL_17;
                }

                v11 = (result + v12);
                v14 = *(result + v12 - 4);
                if (v14 <= v8)
                {
                  goto LABEL_17;
                }
              }

              else
              {
                v14 = *(result + v12 - 4);
              }

              v5 -= 2;
              v15 = (result + v12);
              *v15 = v13;
              v15[1] = v14;
              v12 -= 8;
            }

            while (v12);
            v11 = result;
          }

LABEL_17:
          *v11 = v9;
          v11[1] = v8;
        }

        v2 = v4 + 2;
        v3 += 8;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

unsigned int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 1;
      do
      {
        v4 = result;
        result = v2;
        v5 = v4[2];
        v6 = *v4;
        if (v5 < *v4 || v6 >= v5 && v4[3] < v4[1])
        {
          v7 = *result;
          v8 = result[1];
          for (i = v3; ; i -= 2)
          {
            v10 = *i;
            i[1] = v6;
            i[2] = v10;
            v6 = *(i - 3);
            if (v6 <= v7 && (v6 < v7 || *(i - 2) <= v8))
            {
              break;
            }
          }

          *(i - 1) = v7;
          *i = v8;
        }

        v2 = result + 2;
        v3 += 2;
      }

      while (result + 2 != a2);
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned int> *,std::__less<void,void> &>(unsigned int *a1, unsigned int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 - 2);
  if (v4 > *a1 || v4 >= v3 && *(a2 - 1) > v2)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 <= v3 && (v6 < v3 || i[1] <= v2));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v4 > v3 || v4 >= v3 && a2[1] > v2; a2 -= 2)
    {
      v8 = *(a2 - 2);
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
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v12 <= v3 && (v9 < v3 || i[1] <= v2));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
          v14 = v13 >= v3;
        }

        while (v13 > v3);
      }

      while (v14 && a2[1] > v2);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v3;
  *(i - 1) = v2;
  return i;
}

unsigned int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned int> *,std::__less<void,void> &>(unsigned int *a1, unsigned int *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v5 > v3 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 4)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v7 > v3 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v9 > v3)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          v5 = v16;
          v17 = v16 > v3;
        }

        while (v16 < v3);
      }

      while (!v17 && v13[1] < v4);
      do
      {
        v18 = *(v14 - 2);
        v14 -= 2;
        v12 = v18;
      }

      while (v18 >= v3 && (v12 > v3 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(unsigned int *a1, unsigned int *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_20;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v10;
      v11 = a1[6];
      v12 = a1[4];
      if (v11 >= v12)
      {
        if (v12 < v11)
        {
          return 1;
        }

        v14 = a1[7];
        v13 = a1[5];
        if (v14 >= v13)
        {
          return 1;
        }
      }

      else
      {
        v13 = a1[5];
        v14 = a1[7];
      }

      a1[4] = v11;
      a1[5] = v14;
      a1[6] = v12;
      a1[7] = v13;
      v15 = a1[2];
      if (v11 >= v15)
      {
        if (v15 < v11)
        {
          return 1;
        }

        v16 = a1[3];
        if (v14 >= v16)
        {
          return 1;
        }
      }

      else
      {
        v16 = a1[3];
      }

      a1[2] = v11;
      a1[3] = v14;
      a1[4] = v15;
      a1[5] = v16;
      v17 = *a1;
      if (v11 >= *a1)
      {
        if (v17 < v11)
        {
          return 1;
        }

        v18 = a1[1];
        if (v14 >= v18)
        {
          return 1;
        }
      }

      else
      {
        v18 = a1[1];
      }

      *a1 = v11;
      a1[1] = v14;
      result = 1;
      a1[2] = v17;
      a1[3] = v18;
      return result;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
      {
        return 1;
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= *a1 && (v33 < v32 || a1[3] >= a1[1]))
      {
        return 1;
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_19:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v38 = a1[3];
    }

    v40 = a1[1];
    a1[3] = v40;
    *a1 = v20;
    a1[1] = v38;
    a1[2] = v21;
    v41 = *(a2 - 2);
    if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
    {
      return 1;
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
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
    if (v5 < *a1 || v6 >= v5 && *(a2 - 1) < a1[1])
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < *a1 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (*v25 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = (a1 + 1);
LABEL_64:
      v37 = (a1 + 5);
      goto LABEL_65;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = a1[3];
    }

    v43 = a1[1];
    a1[3] = v43;
    v29 = (a1 + 3);
    *a1 = v26;
    a1[1] = v39;
    a1[2] = v27;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_66;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_64;
  }

  v34 = *v25;
  if (*v25 < v26)
  {
    v35 = a1[3];
    v36 = a1[5];
LABEL_33:
    a1[3] = v36;
    v37 = (a1 + 3);
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_66;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = (a1 + 1);
LABEL_65:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_66;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_33;
    }
  }

LABEL_66:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v25;
    if (*v45 >= *v25 && (v48 < *v45 || v45[1] >= v25[1]))
    {
      goto LABEL_81;
    }

    v49 = *v45;
    v50 = v45[1];
    *v45 = v48;
    v45[1] = v25[1];
    v51 = v46;
    while (1)
    {
      v52 = a1 + v51;
      v53 = *(a1 + v51 + 8);
      if (v53 <= v49)
      {
        break;
      }

      v54 = *(v52 + 3);
LABEL_74:
      *(v52 + 4) = v53;
      *(a1 + v51 + 20) = v54;
      v51 -= 8;
      if (v51 == -16)
      {
        v55 = a1;
        goto LABEL_80;
      }
    }

    if (v53 >= v49)
    {
      v54 = *(a1 + v51 + 12);
      if (v54 > v50)
      {
        goto LABEL_74;
      }
    }

    v55 = (a1 + v51 + 16);
LABEL_80:
    *v55 = v49;
    v55[1] = v50;
    if (++v47 != 8)
    {
LABEL_81:
      v25 = v45;
      v46 += 8;
      v45 += 2;
      if (v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 2 == a2;
  }
}

unsigned int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,std::pair<unsigned int,unsigned int> *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*v12 < *a1 || v14 >= v13 && v12[1] < a1[1])
        {
          *v12 = v14;
          *a1 = v13;
          v15 = v12[1];
          v12[1] = a1[1];
          a1[1] = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 2;
      do
      {
        v18 = *a1;
        v17 = a1[1];
        v19 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(a1, a4, v8);
        if (v16 == v19)
        {
          *v19 = v18;
          v19[1] = v17;
        }

        else
        {
          *v19 = *v16;
          v19[1] = v16[1];
          *v16 = v18;
          v16[1] = v17;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(a1, (v19 + 2), a4, ((v19 + 2) - a1) >> 3);
        }

        v16 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
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
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      if (*v8 >= *a4 && (*a4 < v11 || v8[1] >= a4[1]))
      {
        v12 = *a4;
        v13 = a4[1];
        *a4 = v11;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v15 = 2 * v7;
            v7 = (2 * v7) | 1;
            v14 = (result + 8 * v7);
            v16 = v15 + 2;
            if (v16 < a3)
            {
              v17 = v14[2];
              if (*v14 < v17 || v17 >= *v14 && v14[1] < v14[3])
              {
                v14 += 2;
                v7 = v16;
              }
            }

            v18 = *v14;
            if (*v14 < v12 || v18 <= v12 && v14[1] < v13)
            {
              break;
            }

            *v8 = v18;
            v8[1] = v14[1];
            v8 = v14;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v14 = v8;
LABEL_13:
        *v14 = v12;
        v14[1] = v13;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[2 * v3];
    result = v5 + 2;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[4];
      v9 = v5[2];
      if (v9 < v8 || v8 >= v9 && v5[3] < v5[5])
      {
        result = v5 + 4;
        v3 = v7;
      }
    }

    *v4 = *result;
    v4[1] = result[1];
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 8);
    if (*v6 < v8 || v8 >= v7 && v6[1] < *(a2 - 4))
    {
      v9 = *(a2 - 8);
      v10 = *(a2 - 4);
      *(a2 - 8) = v7;
      *(a2 - 4) = v6[1];
      if (v4 >= 2)
      {
        while (1)
        {
          v12 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v11 = (result + 8 * v5);
          v13 = *v11;
          if (*v11 >= v9)
          {
            if (v13 > v9)
            {
              break;
            }

            v14 = v11[1];
            if (v14 >= v10)
            {
              break;
            }
          }

          else
          {
            v14 = v11[1];
          }

          *v6 = v13;
          v6[1] = v14;
          v6 = (result + 8 * v5);
          if (v12 <= 1)
          {
            goto LABEL_10;
          }
        }
      }

      v11 = v6;
LABEL_10:
      *v11 = v9;
      v11[1] = v10;
    }
  }

  return result;
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
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Entry>::realloc(uint64_t *a1, uint64_t a2)
{
  result = operator new[](16 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = (a1[1] + 8);
    v7 = result + 8;
    do
    {
      *(v7 - 1) = *(v6 - 1);
      v8 = *v6;
      v6 += 2;
      *v7 = v8;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1D38A8C00);
  }

  return result;
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::build_current_trie<internal::marisa::grimoire::trie::ReverseKey>(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 24);
  v9 = *(a2 + 8);
  if (v8)
  {
    v10 = 0;
    v11 = vdupq_n_s64(v8 - 1);
    v12 = xmmword_1D2B276C0;
    v13 = xmmword_1D2B276B0;
    v14 = (v9 + 64);
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v11, v13));
      if (vuzp1_s16(v16, *v11.i8).u8[0])
      {
        *(v14 - 12) = v10;
      }

      if (vuzp1_s16(v16, *&v11).i8[2])
      {
        *(v14 - 6) = v10 + 1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
      {
        *v14 = v10 + 2;
        v14[6] = v10 + 3;
      }

      v10 += 4;
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 24;
    }

    while (((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
  }

  v17 = internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::ReverseKey *>(v9, v9 + 24 * v8, 0);
  v18 = 256;
  if (a5 != 1)
  {
    v18 = 1;
  }

  do
  {
    v19 = v18;
    v18 *= 2;
  }

  while (v19 < v17 / *(a4 + 8));
  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Cache>::resize(a1 + 126, v19);
  a1[132] = v19 - 1;
  internal::marisa::grimoire::vector::BitVector::push_back(a1, 1);
  internal::marisa::grimoire::vector::BitVector::push_back(a1, 0);
  LOBYTE(v71[0]) = 0;
  internal::marisa::grimoire::vector::Vector<unsigned char>::push_back(a1 + 78, v71);
  internal::marisa::grimoire::vector::BitVector::push_back(a1 + 52, 0);
  memset(v71, 0, 41);
  v70 = 0u;
  memset(v69, 0, sizeof(v69));
  v67 = 0u;
  memset(v68, 0, 25);
  v65.n128_u64[0] = *(a2 + 24) << 32;
  v65.n128_u32[2] = 0;
  std::deque<internal::marisa::grimoire::trie::Range>::push_back(v69, &v65);
  v20 = *(&v70 + 1);
  if (*(&v70 + 1))
  {
    v62 = a4;
    do
    {
      v21 = a1[58];
      v22 = (*(*(&v69[0] + 1) + 8 * (v70 / 0x155)) + 12 * (v70 % 0x155));
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      *&v70 = v70 + 1;
      *(&v70 + 1) = v20 - 1;
      if (v70 >= 0x2AA)
      {
        operator delete(**(&v69[0] + 1));
        *(&v69[0] + 1) += 8;
        *&v70 = v70 - 341;
      }

      v64 = v21;
      v26 = v21 - v20;
      if (v23 < v24)
      {
        while (1)
        {
          v27 = *(a2 + 8) + 24 * v23;
          if (*(v27 + 8) != v25)
          {
            break;
          }

          *(v27 + 12) = v26;
          v23 = (v23 + 1);
          if (v24 == v23)
          {
            goto LABEL_51;
          }
        }
      }

      if (v23 != v24)
      {
        v28 = v67;
        v67 = 0u;
        memset(v68, 0, 25);
        if (v28)
        {
          MEMORY[0x1D38A8C00](v28, 0x1000C8077774924);
        }

        v29 = *(a2 + 8);
        v30 = *(v29 + 24 * v23 + 12);
        v31 = v23 + 1;
        if (v23 + 1 < v24)
        {
          v63 = v20;
          v32 = v30;
          v33 = 24 * v23;
          v34 = (v23 << 32) + 0x100000000;
          do
          {
            if (*(*(v29 + v33) - v25 - 1) != *(*(v29 + v33 + 24) - v25 - 1))
            {
              *&v35 = v32;
              v65.n128_u64[0] = v34 + v23;
              v65.n128_u64[1] = v25 | (v35 << 32);
              internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::WeightedRange>::push_back(&v67, &v65);
              v29 = *(a2 + 8);
              v32 = 0.0;
              LODWORD(v23) = v31;
            }

            v32 = v32 + *(v29 + v33 + 36);
            ++v31;
            v33 += 24;
            v34 += 0x100000000;
          }

          while (v24 != v31);
          v30 = v32;
          a4 = v62;
          v20 = v63;
        }

        v65.n128_u32[0] = v23;
        v65.n128_u32[1] = v24;
        v65.n128_u64[1] = v25 | (LODWORD(v30) << 32);
        v36 = internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::WeightedRange>::push_back(&v67, &v65);
        if (*(a4 + 16) == 0x20000)
        {
          std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,internal::marisa::grimoire::trie::WeightedRange *,std::greater<internal::marisa::grimoire::trie::WeightedRange>>(*(&v67 + 1), (*(&v67 + 1) + 16 * v68[1]), &v65, v36);
        }

        v37 = v68[1];
        if (v64 == v20)
        {
          a1[133] = v68[1];
        }

        if (v37)
        {
          v38 = 0;
          do
          {
            v39 = (*(&v67 + 1) + 16 * v38);
            v40 = *(v39 + 2);
            v41 = *(a2 + 8);
            v42 = *(v41 + 24 * *v39 + 8);
            v43 = v40 + 1;
            if (v40 + 1 >= v42)
            {
              v44 = *(v39 + 2);
              LODWORD(v42) = v40 + 1;
            }

            else
            {
              v44 = v42 - 1;
              v45 = (v41 + 24 * *v39);
              v46 = *(v39 + 2);
              do
              {
                v47 = v46;
                v46 = v43;
                v48 = v45;
                v49 = *v39;
                while (++v49 < *(v39 + 1))
                {
                  v50 = *v48;
                  v51 = v48[3];
                  v48 += 3;
                  if (*(v50 + ~v47 - 1) != *(v51 + ~v47 - 1))
                  {
                    v44 = v47;
                    LODWORD(v42) = v43;
                    goto LABEL_45;
                  }
                }

                ++v43;
              }

              while (v46 + 1 != v42);
            }

LABEL_45:
            v52 = a1[81];
            v53 = v39[3];
            v54 = a1[127] + 12 * (a1[132] & v52);
            if (*(v54 + 8) < v53)
            {
              *v54 = v26;
              *(v54 + 4) = v52;
              *(v54 + 8) = v53;
              v40 = *(v39 + 2);
            }

            if (v44 == v40)
            {
              v65.n128_u8[0] = *(~v44 + *(*(a2 + 8) + 24 * *v39));
              internal::marisa::grimoire::vector::Vector<unsigned char>::push_back(a1 + 78, &v65);
              internal::marisa::grimoire::vector::BitVector::push_back(a1 + 52, 0);
            }

            else
            {
              v65.n128_u8[0] = 0;
              internal::marisa::grimoire::vector::Vector<unsigned char>::push_back(a1 + 78, &v65);
              internal::marisa::grimoire::vector::BitVector::push_back(a1 + 52, 1);
              v65 = 0uLL;
              v66 = 0;
              v55 = *(v39 + 2);
              v65.n128_u64[0] = *(*(a2 + 8) + 24 * *v39) - v55;
              v65.n128_u64[1] = (v42 - v55);
              v65.n128_f32[3] = v39[3];
              internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Key>::push_back(v71, &v65);
            }

            *(v39 + 2) = v42;
            std::deque<internal::marisa::grimoire::trie::Range>::push_back(v69, v39);
            internal::marisa::grimoire::vector::BitVector::push_back(a1, 1);
            ++v38;
          }

          while (v38 < v68[1]);
        }
      }

LABEL_51:
      internal::marisa::grimoire::vector::BitVector::push_back(a1, 0);
      v20 = *(&v70 + 1);
    }

    while (*(&v70 + 1));
  }

  internal::marisa::grimoire::vector::BitVector::push_back(a1, 0);
  internal::marisa::grimoire::vector::BitVector::build(a1, a5 == 1, 1);
  internal::marisa::grimoire::vector::Vector<unsigned char>::shrink(a1 + 624);
  internal::marisa::grimoire::trie::LoudsTrie::build_terminals<internal::marisa::grimoire::trie::ReverseKey>(a1, a2, a3);
  v56 = *a2;
  *a2 = v71[0];
  v71[0] = v56;
  v57 = *(a2 + 16);
  *(a2 + 16) = *&v71[1];
  *&v71[1] = v57;
  v58 = *(a2 + 24);
  *(a2 + 24) = *(&v71[1] + 8);
  *(&v71[1] + 8) = v58;
  LOBYTE(v57) = *(a2 + 40);
  *(a2 + 40) = BYTE8(v71[2]);
  BYTE8(v71[2]) = v57;
  if (v67)
  {
    MEMORY[0x1D38A8C00](v67, 0x1000C8077774924);
  }

  std::deque<internal::marisa::grimoire::trie::Range>::~deque[abi:ne200100](v69);
  result = *&v71[0];
  if (*&v71[0])
  {
    return MEMORY[0x1D38A8C00](*&v71[0], 0x1000C8077774924);
  }

  return result;
}

void sub_1D2B0E598(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a11)
  {
    MEMORY[0x1D38A8C00](a11, 0x1000C8077774924);
  }

  std::deque<internal::marisa::grimoire::trie::Range>::~deque[abi:ne200100](va);
  v19 = *(v16 - 144);
  if (v19)
  {
    MEMORY[0x1D38A8C00](v19, 0x1000C8077774924);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
    exception[2] = 0x8000001D3;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:467: MARISA_MEMORY_ERROR: std::bad_alloc";
  }

  _Unwind_Resume(a1);
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::build_terminals<internal::marisa::grimoire::trie::ReverseKey>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  memset(v13, 0, 41);
  internal::marisa::grimoire::vector::Vector<unsigned int>::resize(v13, *(a2 + 24));
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(&v13[0] + 1);
    v7 = (*(a2 + 16) + 16);
    do
    {
      *(v6 + 4 * *v7) = *(v7 - 1);
      v7 += 6;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = *(&v13[0] + 1);
  }

  v8 = *a3;
  v9 = *&v13[1];
  *a3 = *&v13[0];
  *(a3 + 1) = v6;
  v13[0] = v8;
  v10 = *(a3 + 2);
  *(a3 + 2) = v9;
  *&v13[1] = v10;
  v11 = *(a3 + 24);
  *(a3 + 24) = *(&v13[1] + 8);
  *(&v13[1] + 8) = v11;
  LOBYTE(v10) = *(a3 + 40);
  *(a3 + 40) = BYTE8(v13[2]);
  result = v8;
  BYTE8(v13[2]) = v10;
  if (v8)
  {
    return MEMORY[0x1D38A8C00](v8, 0x1000C8077774924);
  }

  return result;
}

void sub_1D2B0E770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1D38A8C00](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::ReverseKey *>(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = a2 - a1;
  if ((a2 - a1) < 241)
  {
    v7 = 0;
    goto LABEL_64;
  }

  v7 = 0;
  v8 = a1;
  v9 = a1;
  do
  {
    v10 = internal::marisa::grimoire::algorithm::details::median<internal::marisa::grimoire::trie::ReverseKey>(v9, v9 + 24 * (v6 / 0x30uLL), v4 - 24, a3);
    v11 = v10;
    v12 = v9;
    v5 = v4;
    v13 = v9;
    v14 = v4;
    while (v12 < v5)
    {
      v15 = *(v12 + 8);
      v16 = a3 >= v15 ? -1 : *(*v12 - a3 - 1);
      if (v16 > v10)
      {
        break;
      }

      if (v16 == v10)
      {
        v17 = *v12;
        *v12 = *v13;
        *(v12 + 8) = *(v13 + 8);
        v18 = *(v12 + 12);
        *(v12 + 12) = *(v13 + 12);
        *(v12 + 16) = *(v13 + 16);
        *v13 = v17;
        *(v13 + 8) = v15;
        *(v13 + 12) = v18;
        v13 += 24;
      }

LABEL_11:
      v12 += 24;
    }

    if (v12 < v5)
    {
      v19 = v5 - 24;
      do
      {
        v5 = v19;
        v20 = *(v19 + 8);
        if (a3 >= v20)
        {
          v21 = -1;
        }

        else
        {
          v21 = *(*v5 - a3 - 1);
        }

        if (v21 < v10)
        {
          break;
        }

        if (v21 == v10)
        {
          v22 = *(v14 - 24);
          v14 -= 24;
          v23 = *v5;
          *v5 = v22;
          *(v5 + 8) = *(v14 + 8);
          v24 = *(v5 + 12);
          *(v5 + 12) = *(v14 + 12);
          *(v5 + 16) = *(v14 + 16);
          *v14 = v23;
          *(v14 + 8) = v20;
          *(v14 + 12) = v24;
        }

        v19 = v5 - 24;
      }

      while (v12 < v5);
    }

    if (v12 < v5)
    {
      v25 = *v12;
      v26 = *(v12 + 16);
      *v12 = *v5;
      v27 = *(v12 + 8);
      *(v12 + 8) = *(v5 + 8);
      *(v12 + 12) = *(v5 + 12);
      *(v12 + 16) = *(v5 + 16);
      *v5 = v25;
      *(v5 + 8) = v27;
      *(v5 + 16) = v26;
      goto LABEL_11;
    }

    if (v13 > v9)
    {
      v28 = 0;
      do
      {
        v29 = v13 + v28;
        v30 = v12 + v28;
        v31 = *(v13 + v28 - 24);
        v32 = *(v13 + v28 - 8);
        *(v29 - 24) = *(v12 + v28 - 24);
        v33 = *(v13 + v28 - 16);
        *(v29 - 16) = *(v12 + v28 - 16);
        *(v29 - 12) = *(v12 + v28 - 12);
        *(v29 - 8) = *(v12 + v28 - 8);
        *(v30 - 24) = v31;
        *(v30 - 16) = v33;
        *(v30 - 8) = v32;
        v28 -= 24;
      }

      while (v13 + v28 > v9);
      v12 += v28;
    }

    while (v14 < v4)
    {
      v34 = *v14;
      v35 = *(v14 + 16);
      *v14 = *v5;
      v36 = *(v14 + 8);
      *(v14 + 8) = *(v5 + 8);
      *(v14 + 12) = *(v5 + 12);
      *(v14 + 16) = *(v5 + 16);
      *v5 = v34;
      *(v5 + 8) = v36;
      *(v5 + 16) = v35;
      v14 += 24;
      v5 += 24;
    }

    v37 = v12 - v8;
    v38 = v5 - v12;
    if (v37 <= (v5 - v12))
    {
      v39 = v4 - v5;
      if ((v4 - v5) <= v38)
      {
        if (v37 == 24)
        {
          ++v7;
        }

        else if (v37 >= 25)
        {
          v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::ReverseKey *>(v9, v12, a3);
        }

        if (v39 == 24)
        {
          ++v7;
        }

        else if (v39 >= 25)
        {
          v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::ReverseKey *>(v5, v4, a3);
        }

        if (v38 == 24)
        {
          ++v7;
        }

        else if (v38 >= 25)
        {
          if (v11 == -1)
          {
            ++v7;
            v4 = v5;
            goto LABEL_60;
          }

          ++a3;
        }

        v4 = v5;
        v5 = v12;
        goto LABEL_60;
      }
    }

    if (v38 == 24)
    {
      goto LABEL_32;
    }

    if (v38 >= 25)
    {
      if (v10 == -1)
      {
LABEL_32:
        ++v7;
      }

      else
      {
        v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::ReverseKey *>(v12, v5, a3 + 1);
      }
    }

    v40 = v4 - v5;
    if (v37 >= (v4 - v5))
    {
      if (v40 == 24)
      {
        ++v7;
      }

      else if (v40 >= 25)
      {
        v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::ReverseKey *>(v5, v4, a3);
      }

      v4 = v12;
      v5 = v9;
    }

    else if (v37 == 24)
    {
      ++v7;
    }

    else if (v37 >= 25)
    {
      v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::ReverseKey *>(v9, v12, a3);
    }

LABEL_60:
    v6 = v4 - v5;
    v8 = v5;
    v9 = v5;
  }

  while ((v4 - v5) > 240);
LABEL_64:
  if (v6 >= 25)
  {
    v7 += internal::marisa::grimoire::algorithm::details::insertion_sort<internal::marisa::grimoire::trie::ReverseKey *>(v5, v4, a3);
  }

  return v7;
}

uint64_t internal::marisa::grimoire::algorithm::details::median<internal::marisa::grimoire::trie::ReverseKey>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 8) <= a4)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(~a4 + *a1);
  }

  if (*(a2 + 8) <= a4)
  {
    v5 = -1;
  }

  else
  {
    v5 = *(~a4 + *a2);
  }

  if (*(a3 + 8) <= a4)
  {
    v6 = -1;
  }

  else
  {
    v6 = *(~a4 + *a3);
  }

  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v4 >= v5)
  {
    v4 = v5;
  }

  if (v4 <= v6)
  {
    v4 = v6;
  }

  if (v7 >= v6)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t internal::marisa::grimoire::algorithm::details::insertion_sort<internal::marisa::grimoire::trie::ReverseKey *>(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a1 + 24;
  if (a1 + 24 >= a2)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v3;
    if (v3 <= a1)
    {
      v15 = 0;
    }

    else
    {
      while (1)
      {
        v9 = v8 - 24;
        v10 = internal::marisa::grimoire::algorithm::details::compare<internal::marisa::grimoire::trie::ReverseKey>(v8 - 24, v8, a3);
        if (v10 < 1)
        {
          break;
        }

        v11 = *(v8 - 24);
        v12 = *(v8 - 8);
        *(v8 - 24) = *v8;
        v13 = *(v8 + 8);
        *(v8 - 8) = *(v8 + 16);
        *v8 = v11;
        v14 = *(v8 - 16);
        *(v8 - 16) = v13;
        *(v8 + 8) = v14;
        *(v8 + 16) = v12;
        v8 -= 24;
        if (v9 <= a1)
        {
          v10 = 1;
          break;
        }
      }

      v15 = v10 != 0;
    }

    v7 += v15;
    v3 += 24;
  }

  while (v3 < a2);
  return v7;
}

uint64_t internal::marisa::grimoire::algorithm::details::compare<internal::marisa::grimoire::trie::ReverseKey>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = v3 - a3;
  if (v3 <= a3)
  {
LABEL_6:
    if (v3 < v4)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v3 == v4)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v6 = v4 - a3;
    v7 = (*a2 + ~a3);
    v8 = (*a1 + ~a3);
    while (v6)
    {
      v9 = *v8;
      v10 = *v7;
      result = (v9 - v10);
      if (v9 != v10)
      {
        return result;
      }

      --v6;
      --v7;
      --v8;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }
}

char *internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Cache>::realloc(uint64_t *a1, uint64_t a2)
{
  result = operator new[](12 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = (a1[1] + 8);
    v7 = result + 8;
    do
    {
      *(v7 - 1) = *(v6 - 1);
      v8 = *v6;
      v6 += 3;
      *v7 = v8;
      v7 += 3;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1D38A8C00);
  }

  return result;
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned char>::write_(uint64_t a1, internal::marisa::grimoire::io::Writer *this)
{
  __buf = *(a1 + 24);
  internal::marisa::grimoire::io::Writer::write_data(this, &__buf, 8uLL);
  internal::marisa::grimoire::io::Writer::write<unsigned char>(this, *(a1 + 16), *(a1 + 24));
  return internal::marisa::grimoire::io::Writer::seek(this, -*(a1 + 24) & 7);
}

uint64_t internal::marisa::grimoire::io::Writer::write<unsigned char>(uint64_t a1, char *a2, size_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x200000021;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:33: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
  }

  return internal::marisa::grimoire::io::Writer::write_data(a1, a2, a3);
}

uint64_t internal::marisa::grimoire::trie::Tail::build(__int128 *a1, uint64_t a2, __int128 *a3, int a4)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc";
    exception[2] = 0x200000011;
    v17 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc:17: MARISA_NULL_ERROR: offsets == NULL";
    goto LABEL_28;
  }

  if (a4 == 0x2000)
  {
    goto LABEL_15;
  }

  if (a4 != 4096)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc";
    exception[2] = 0x500000028;
    v17 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc:40: MARISA_CODE_ERROR: undefined tail mode";
LABEL_28:
    exception[3] = v17;
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = 0;
    a4 = 4096;
    while (1)
    {
      v7 = *(a2 + 8) + 16 * v6;
      v8 = *(v7 + 8);
      if (v8)
      {
        break;
      }

LABEL_11:
      if (++v6 == v5)
      {
        goto LABEL_15;
      }
    }

    v9 = *v7;
    v10 = -v8;
    while (*(v9 + 1 + v10))
    {
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_11;
      }
    }

    a4 = 0x2000;
  }

  else
  {
    a4 = 4096;
  }

LABEL_15:
  memset(v18, 0, 41);
  memset(v19, 0, 41);
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v19[3] = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  internal::marisa::grimoire::trie::Tail::build_(v18, a2, a3, a4);
  v12 = *a1;
  *a1 = v18[0];
  v18[0] = v12;
  v13 = *(a1 + 2);
  *(a1 + 2) = *&v18[1];
  *&v18[1] = v13;
  v14 = *(a1 + 24);
  *(a1 + 24) = *(&v18[1] + 8);
  *(&v18[1] + 8) = v14;
  LOBYTE(v13) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v18[2]);
  BYTE8(v18[2]) = v13;
  internal::marisa::grimoire::vector::BitVector::swap((a1 + 3), v19);
  if (v24)
  {
    MEMORY[0x1D38A8C00](v24, 0x1000C8077774924);
  }

  if (v22)
  {
    MEMORY[0x1D38A8C00](v22, 0x1000C8077774924);
  }

  if (v20)
  {
    MEMORY[0x1D38A8C00](v20, 0x1000C8077774924);
  }

  if (*&v19[0])
  {
    MEMORY[0x1D38A8C00](*&v19[0], 0x1000C8077774924);
  }

  result = *&v18[0];
  if (*&v18[0])
  {
    return MEMORY[0x1D38A8C00](*&v18[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t internal::marisa::grimoire::trie::Tail::build_(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  v8 = *(a2 + 24);
  v9 = *(a2 + 8);
  if (v8)
  {
    v10 = 0;
    v11 = vdupq_n_s64(v8 - 1);
    v12 = xmmword_1D2B276C0;
    v13 = xmmword_1D2B276B0;
    v14 = (v9 + 44);
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v11, v13));
      if (vuzp1_s16(v16, *v11.i8).u8[0])
      {
        *(v14 - 8) = v10;
      }

      if (vuzp1_s16(v16, *&v11).i8[2])
      {
        *(v14 - 4) = v10 + 1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
      {
        *v14 = v10 + 2;
        v14[4] = v10 + 3;
      }

      v10 += 4;
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 16;
    }

    while (((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
  }

  internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Entry *>(v9, v9 + 16 * v8, 0);
  memset(v37, 0, 41);
  v17 = *(a2 + 24);
  LODWORD(v36[0]) = 0;
  internal::marisa::grimoire::vector::Vector<unsigned int>::resize(v37, v17, v36);
  v36[0] = 0;
  v36[1] = 0;
  v18 = *(a2 + 24);
  if (v18)
  {
    v19 = v36;
    do
    {
      --v18;
      v20 = *(a2 + 8) + 16 * v18;
      v21 = *(v20 + 8);
      if (!v21)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_1F4E071E8;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc";
        exception[2] = 0x4000000ACLL;
        exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc:172: MARISA_RANGE_ERROR: current.length() == 0";
      }

      v22 = 0;
      v23 = 0;
      v24 = *(v19 + 2);
      while (v24 != v23)
      {
        if (*(*v19 + v22) != *(*v20 + v22))
        {
          goto LABEL_19;
        }

        ++v23;
        --v22;
        if (v21 == v23)
        {
          goto LABEL_20;
        }
      }

      v23 = *(v19 + 2);
LABEL_19:
      if (v23 != v21)
      {
        v25 = *(&v37[0] + 1);
        goto LABEL_23;
      }

LABEL_20:
      v25 = *(&v37[0] + 1);
      if (v24)
      {
        *(*(&v37[0] + 1) + 4 * *(v20 + 12)) = v24 - v21 + *(*(&v37[0] + 1) + 4 * *(v19 + 3));
        goto LABEL_35;
      }

LABEL_23:
      *(v25 + 4 * *(v20 + 12)) = *(a1 + 24);
      v26 = *(v20 + 8);
      if (v26)
      {
        for (i = 0; i < v26; ++i)
        {
          v35 = *(*v20 - v26 + i + 1);
          internal::marisa::grimoire::vector::Vector<unsigned char>::push_back(a1, &v35);
          v26 = *(v20 + 8);
        }

        if (a4 != 4096)
        {
          if (v26 >= 2)
          {
            v28 = 1;
            do
            {
              internal::marisa::grimoire::vector::BitVector::push_back((a1 + 48), 0);
              ++v28;
            }

            while (v28 < *(v20 + 8));
          }

LABEL_33:
          internal::marisa::grimoire::vector::BitVector::push_back((a1 + 48), 1);
          goto LABEL_34;
        }
      }

      else if (a4 != 4096)
      {
        goto LABEL_33;
      }

      v35 = 0;
      internal::marisa::grimoire::vector::Vector<unsigned char>::push_back(a1, &v35);
LABEL_34:
      if (*(a1 + 28))
      {
        v34 = __cxa_allocate_exception(0x20uLL);
        *v34 = &unk_1F4E071E8;
        v34[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc";
        v34[2] = 0x7000000C2;
        v34[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc:194: MARISA_SIZE_ERROR: buf_.size() > MARISA_UINT32_MAX";
      }

LABEL_35:
      v19 = v20;
    }

    while (v18);
  }

  internal::marisa::grimoire::vector::Vector<unsigned char>::shrink(a1);
  v29 = *a3;
  *a3 = v37[0];
  v37[0] = v29;
  v30 = *(a3 + 2);
  *(a3 + 2) = *&v37[1];
  *&v37[1] = v30;
  v31 = *(a3 + 24);
  *(a3 + 24) = *(&v37[1] + 8);
  *(&v37[1] + 8) = v31;
  LOBYTE(v30) = *(a3 + 40);
  *(a3 + 40) = BYTE8(v37[2]);
  result = v29;
  BYTE8(v37[2]) = v30;
  if (v29)
  {
    return MEMORY[0x1D38A8C00](v29, 0x1000C8077774924);
  }

  return result;
}

void sub_1D2B0F4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x1D38A8C00](a13, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::trie::Tail::write(internal::marisa::grimoire::trie::Tail *this, internal::marisa::grimoire::io::Writer *a2)
{
  internal::marisa::grimoire::vector::Vector<unsigned char>::write_(this, a2);

  return internal::marisa::grimoire::vector::BitVector::write_((this + 48), a2);
}

void internal::marisa::grimoire::trie::Tail::restore(void *a1, std::string *this, unint64_t a3)
{
  v3 = a3;
  if (a1[12])
  {
    do
    {
      std::string::push_back(this, *(a1[2] + v3));
      v6 = *(a1[8] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3;
      ++v3;
    }

    while ((v6 & 1) == 0);
  }

  else
  {
    v7 = a1[2];
    v8 = *(v7 + a3);
    if (v8)
    {
      v9 = (a3 + v7 + 1);
      do
      {
        std::string::push_back(this, v8);
        v10 = *v9++;
        v8 = v10;
      }

      while (v10);
    }
  }
}

uint64_t internal::marisa::grimoire::trie::Tail::match(void *a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t a5)
{
  v5 = a1[2];
  if (a1[12])
  {
    v6 = *a4;
    do
    {
      if (*(v5 + a5) != *(a2 + v6))
      {
        break;
      }

      *a4 = ++v6;
      if ((*(a1[8] + ((a5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a5))
      {
        return 1;
      }

      ++a5;
    }

    while (v6 < a3);
  }

  else
  {
    v7 = (v5 + a5);
    v8 = *a4;
    v11 = *v7;
    v9 = v7 + 1;
    v10 = v11;
    while (v10 == *(a2 + v8))
    {
      *a4 = ++v8;
      v10 = *v9;
      if (!*v9)
      {
        return 1;
      }

      ++v9;
      if (v8 >= a3)
      {
        return 0;
      }
    }
  }

  return 0;
}

BOOL internal::marisa::grimoire::trie::Tail::prefix_match(void *a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t a5, std::string *this)
{
  v7 = a5;
  if (a1[12])
  {
    v12 = *a4;
    while (1)
    {
      v13 = *(a1[2] + v7);
      v14 = *(a2 + v12);
      v15 = v13 == v14;
      if (v13 != v14)
      {
        break;
      }

      std::string::push_back(this, v13);
      v12 = *a4 + 1;
      *a4 = v12;
      if ((*(a1[8] + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7))
      {
        break;
      }

      ++v7;
      if (v12 >= a3)
      {
        do
        {
          std::string::push_back(this, *(a1[2] + v7));
          v16 = *(a1[8] + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7;
          ++v7;
        }

        while ((v16 & 1) == 0);
        return 1;
      }
    }
  }

  else
  {
    v17 = a1[2];
    v18 = *a4;
    v19 = v17 + a5 - *a4;
    v20 = *(v17 + a5);
    v21 = *a4;
    while (1)
    {
      v22 = *(a2 + v21);
      v15 = v20 == v22;
      if (v20 != v22)
      {
        break;
      }

      std::string::push_back(this, v20);
      v23 = *a4;
      v21 = *a4 + 1;
      *a4 = v21;
      v20 = *(v19 + v21);
      if (!v20)
      {
        break;
      }

      if (v21 >= a3)
      {
        v24 = (v7 - v18 + v17 + v23 + 2);
        do
        {
          std::string::push_back(this, v20);
          v25 = *v24++;
          v20 = v25;
        }

        while (v25);
        return 1;
      }
    }
  }

  return v15;
}

uint64_t *internal::marisa::grimoire::vector::Vector<unsigned int>::resize(uint64_t *result, unint64_t a2, int *a3)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (v6 < a2)
  {
    v7 = 2 * v6;
    if (v6 >> 61)
    {
      v7 = 0x3FFFFFFFFFFFFFFFLL;
    }

    if (v6 > a2 >> 1)
    {
      a2 = v7;
    }

    result = internal::marisa::grimoire::vector::Vector<unsigned int>::realloc(result, a2);
  }

  v8 = v5[3];
  v9 = v4 - v8;
  if (v4 > v8)
  {
    v10 = 0;
    v11 = *a3;
    v12 = vdupq_n_s64(v9 - 1);
    v13 = (v5[1] + 4 * v8 + 8);
    do
    {
      v14 = vdupq_n_s64(v10);
      v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1D2B276B0)));
      if (vuzp1_s16(v15, *v12.i8).u8[0])
      {
        *(v13 - 2) = v11;
      }

      if (vuzp1_s16(v15, *&v12).i8[2])
      {
        *(v13 - 1) = v11;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1D2B276C0)))).i32[1])
      {
        *v13 = v11;
        v13[1] = v11;
      }

      v10 += 4;
      v13 += 4;
    }

    while (((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
  }

  v5[3] = v4;
  return result;
}

uint64_t internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Entry *>(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = (a2 - a1) >> 4;
  if (v6 < 11)
  {
    v53 = 0;
    goto LABEL_77;
  }

  v53 = 0;
  v7 = a1;
  v8 = a1;
  do
  {
    v9 = internal::marisa::grimoire::algorithm::details::median<internal::marisa::grimoire::trie::Entry>(v8, v8 + 16 * (v6 >> 1), v4 - 16, a3);
    v10 = v9;
    v11 = v8;
    v5 = v4;
    v12 = v8;
    v13 = v4;
    while (v11 < v5)
    {
      v14 = *(v11 + 8);
      v15 = a3 >= v14 ? -1 : *(*v11 - a3);
      if (v15 > v9)
      {
        break;
      }

      if (v15 == v9)
      {
        v16 = *v11;
        v17 = *(v11 + 12);
        *v11 = *v12;
        *(v11 + 8) = *(v12 + 8);
        *v12 = v16;
        *(v12 + 8) = v14;
        *(v12 + 12) = v17;
        v12 += 16;
      }

LABEL_11:
      v11 += 16;
    }

    if (v11 < v5)
    {
      v18 = v5 - 16;
      do
      {
        v5 = v18;
        v19 = *(v18 + 8);
        if (a3 >= v19)
        {
          v20 = -1;
        }

        else
        {
          v20 = *(*v5 - a3);
        }

        if (v20 < v9)
        {
          break;
        }

        if (v20 == v9)
        {
          v21 = *(v13 - 16);
          v13 -= 16;
          v22 = *v5;
          v23 = *(v5 + 12);
          *v5 = v21;
          *(v5 + 8) = *(v13 + 8);
          *v13 = v22;
          *(v13 + 8) = v19;
          *(v13 + 12) = v23;
        }

        v18 = v5 - 16;
      }

      while (v11 < v5);
    }

    if (v11 < v5)
    {
      v24 = *v11;
      *v11 = *v5;
      v25 = *(v5 + 8);
      *v5 = v24;
      v26 = *(v11 + 8);
      *(v11 + 8) = v25;
      *(v5 + 8) = v26;
      goto LABEL_11;
    }

    while (v12 > v8)
    {
      v28 = *(v12 - 16);
      v12 -= 16;
      v27 = v28;
      v29 = *(v11 - 16);
      v11 -= 16;
      *v12 = v29;
      v30 = *(v11 + 8);
      *v11 = v27;
      v31 = *(v12 + 8);
      *(v12 + 8) = v30;
      *(v11 + 8) = v31;
    }

    while (v13 < v4)
    {
      v32 = *v13;
      *v13 = *v5;
      v33 = *(v5 + 8);
      *v5 = v32;
      v34 = *(v13 + 8);
      *(v13 + 8) = v33;
      *(v5 + 8) = v34;
      v13 += 16;
      v5 += 16;
    }

    v35 = v11 - v7;
    v36 = (v11 - v7) >> 4;
    v37 = v5 - v11;
    v38 = (v5 - v11) >> 4;
    if (v36 <= v38)
    {
      v39 = (v4 - v5) >> 4;
      if (v39 <= v38)
      {
        if (v35 == 16)
        {
          v42 = v53 + 1;
        }

        else
        {
          if (v36 < 2)
          {
LABEL_52:
            if (v4 - v5 == 16)
            {
              v44 = v53 + 1;
            }

            else
            {
              v44 = v53;
              if (v39 >= 2)
              {
                v45 = v4;
                v46 = v38;
                v47 = internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Entry *>(v5, v45, a3);
                v38 = v46;
                v44 = v47 + v53;
              }
            }

            if (v37 == 16)
            {
              v53 = v44 + 1;
              v4 = v5;
              v5 = v11;
            }

            else
            {
              if (v10 == -1)
              {
                v48 = v44 + 1;
              }

              else
              {
                v48 = v44;
              }

              if (v10 == -1)
              {
                v49 = a3;
              }

              else
              {
                v49 = a3 + 1;
              }

              if (v10 == -1)
              {
                v50 = v5;
              }

              else
              {
                v50 = v11;
              }

              if (v38 >= 2)
              {
                v44 = v48;
              }

              v53 = v44;
              if (v38 >= 2)
              {
                a3 = v49;
              }

              v4 = v5;
              if (v38 >= 2)
              {
                v5 = v50;
              }

              else
              {
                v5 = v11;
              }
            }

            goto LABEL_74;
          }

          v43 = internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Entry *>(v8, v11, a3);
          v39 = (v4 - v5) >> 4;
          v38 = (v5 - v11) >> 4;
          v42 = v43 + v53;
        }

        v53 = v42;
        goto LABEL_52;
      }
    }

    if (v37 == 16)
    {
      v40 = v53;
      goto LABEL_32;
    }

    v40 = v53;
    if (v38 >= 2)
    {
      if (v9 == -1)
      {
LABEL_32:
        ++v40;
      }

      else
      {
        v40 = internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Entry *>(v11, v5, a3 + 1) + v53;
      }
    }

    v41 = v4 - v5;
    if (v36 >= (v4 - v5) >> 4)
    {
      if (v41 == 16)
      {
        ++v40;
      }

      else if (v41 >> 4 >= 2)
      {
        v40 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Entry *>(v5, v4, a3);
      }

      v53 = v40;
      v4 = v11;
      v5 = v8;
    }

    else
    {
      if (v35 == 16)
      {
        ++v40;
      }

      else if (v36 >= 2)
      {
        v40 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Entry *>(v8, v11, a3);
      }

      v53 = v40;
    }

LABEL_74:
    v6 = (v4 - v5) >> 4;
    v7 = v5;
    v8 = v5;
  }

  while (v6 > 10);
LABEL_77:
  if (v6 < 2)
  {
    return v53;
  }

  else
  {
    return internal::marisa::grimoire::algorithm::details::insertion_sort<internal::marisa::grimoire::trie::Entry *>(v5, v4, a3) + v53;
  }
}

uint64_t internal::marisa::grimoire::algorithm::details::median<internal::marisa::grimoire::trie::Entry>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 8) <= a4)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(*a1 - a4);
  }

  if (*(a2 + 8) <= a4)
  {
    v5 = -1;
  }

  else
  {
    v5 = *(*a2 - a4);
  }

  if (*(a3 + 8) <= a4)
  {
    v6 = -1;
  }

  else
  {
    v6 = *(*a3 - a4);
  }

  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v4 >= v5)
  {
    v4 = v5;
  }

  if (v4 <= v6)
  {
    v4 = v6;
  }

  if (v7 >= v6)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t internal::marisa::grimoire::algorithm::details::insertion_sort<internal::marisa::grimoire::trie::Entry *>(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = (a1 + 16);
  if (a1 + 16 >= a2)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v3;
    if (v3 <= a1)
    {
      v14 = 0;
    }

    else
    {
      while (1)
      {
        v9 = v8 - 2;
        v10 = internal::marisa::grimoire::algorithm::details::compare<internal::marisa::grimoire::trie::Entry>((v8 - 2), v8, a3);
        if (v10 < 1)
        {
          break;
        }

        v11 = *(v8 - 2);
        *(v8 - 2) = *v8;
        v12 = v8[1];
        *v8 = v11;
        v13 = *(v8 - 1);
        *(v8 - 1) = v12;
        v8[1] = v13;
        v8 -= 2;
        if (v9 <= a1)
        {
          v10 = 1;
          break;
        }
      }

      v14 = v10 != 0;
    }

    v7 += v14;
    v3 += 2;
  }

  while (v3 < a2);
  return v7;
}

uint64_t internal::marisa::grimoire::algorithm::details::compare<internal::marisa::grimoire::trie::Entry>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = v3 - a3;
  if (v3 <= a3)
  {
LABEL_6:
    if (v3 < v4)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v3 == v4)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v6 = v4 - a3;
    v7 = (*a2 - a3);
    v8 = (*a1 - a3);
    while (v6)
    {
      v9 = *v8;
      v10 = *v7;
      result = (v9 - v10);
      if (v9 != v10)
      {
        return result;
      }

      --v6;
      --v7;
      --v8;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }
}

uint64_t internal::marisa::grimoire::vector::BitVector::rank1(internal::marisa::grimoire::vector::BitVector *this, unint64_t a2)
{
  v2 = (*(this + 10) + 12 * (a2 >> 9));
  v3 = *v2;
  v4 = (a2 >> 6) & 7;
  if (v4 > 3)
  {
    if (((a2 >> 6) & 7) > 5)
    {
      if (v4 == 6)
      {
        v5 = (v2[2] >> 9) & 0x1FF;
      }

      else
      {
        v5 = (v2[2] >> 18) & 0x1FF;
      }

      goto LABEL_16;
    }

    if (v4 != 4)
    {
      v5 = v2[2] & 0x1FF;
      goto LABEL_16;
    }

    v3 += v2[1] >> 23;
  }

  else if (((a2 >> 6) & 7) > 1)
  {
    if (v4 == 2)
    {
      v6 = v2[1] >> 7;
    }

    else
    {
      v6 = v2[1] >> 15;
    }

    v3 += v6;
  }

  else if (v4)
  {
    v5 = v2[1] & 0x7F;
LABEL_16:
    v3 += v5;
  }

  v7 = *(*(this + 2) + 8 * (a2 >> 6)) & ~(-1 << a2);
  v8 = (((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) & 0x3333333333333333);
  return v3 + ((0x101010101010101 * (((v8 >> 4) & 0x707070707070707) + (v8 & 0x707070707070707))) >> 56);
}

unint64_t internal::marisa::grimoire::vector::BitVector::select0(internal::marisa::grimoire::vector::BitVector *this, unint64_t a2)
{
  v2 = (*(this + 16) + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = *(this + 10);
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3;
    v8 = v3-- << 9;
    v9 = (v7 + 12);
    do
    {
      v10 = *v9;
      v9 += 3;
      ++v3;
      v8 += 512;
    }

    while (v8 - v10 <= a2);
  }

  else
  {
    do
    {
      if (((v4 + v3) >> 1 << 9) - *(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v11 = (v5 + 12 * v3);
  v12 = v11[1];
  v13 = (a2 - (v3 << 9) + *v11);
  v14 = 8 * v3;
  if (v13 >= 256 - (v12 >> 23))
  {
    v16 = v11[2];
    v17 = (v16 >> 9) & 0x1FF;
    if (v13 >= 384 - v17)
    {
      v19 = (v16 >> 18) & 0x1FF;
      if (v13 >= 448 - v19)
      {
        v14 |= 7uLL;
        v13 = (v13 + v19 - 448);
      }

      else
      {
        v14 |= 6uLL;
        v13 = (v13 + v17 - 384);
      }
    }

    else if (v13 >= 320 - (v16 & 0x1FF))
    {
      v14 |= 5uLL;
      v13 = (v13 + (v16 & 0x1FF) - 320);
    }

    else
    {
      v14 |= 4uLL;
      v13 = (v13 + (v12 >> 23) - 256);
    }
  }

  else if (v13 >= 128 - (v12 >> 7))
  {
    v18 = (v12 >> 15);
    if (v13 >= 192 - v18)
    {
      v14 |= 3uLL;
      v13 = (v13 + v18 - 192);
    }

    else
    {
      v14 |= 2uLL;
      v13 = (v13 + (v12 >> 7) - 128);
    }
  }

  else
  {
    v15 = v12 & 0x7F;
    if (v13 >= 64 - v15)
    {
      v14 |= 1uLL;
      v13 = (v13 + v15 - 64);
    }
  }
}

unint64_t internal::marisa::grimoire::vector::anonymous namespace::select_bit(internal::marisa::grimoire::vector::_anonymous_namespace_ *this, uint64_t a2, unint64_t a3)
{
  v3 = (((a3 - ((a3 >> 1) & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((a3 - ((a3 >> 1) & 0x5555555555555555)) & 0x3333333333333333);
  v4 = (v3 + (v3 >> 4)) & 0xF0F0F0F0F0F0F0FLL;
  v5 = __clz(__rbit64(((((0x101010101010101 * v4) | 0x8080808080808080) - 0x101010101010101 * this - 0x101010101010101) >> 7) & 0x101010101010101));
}

unint64_t internal::marisa::grimoire::vector::BitVector::select1(internal::marisa::grimoire::vector::BitVector *this, unint64_t a2)
{
  v2 = (*(this + 22) + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = *(this + 10);
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3--;
    v8 = (v7 + 12);
    do
    {
      v9 = *v8;
      v8 += 3;
      ++v3;
    }

    while (v9 <= a2);
  }

  else
  {
    do
    {
      if (*(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v10 = (v5 + 12 * v3);
  v11 = v10[1];
  v12 = a2 - *v10;
  v13 = 8 * v3;
  if (v12 >= v11 >> 23)
  {
    v23 = v11 >> 23;
    v24 = v10[2];
    v25 = (v24 >> 9) & 0x1FF;
    v26 = (v24 >> 18) & 0x1FF;
    v27 = v13 | 7;
    v28 = v12 >= v26;
    if (v12 < v26)
    {
      v29 = (v12 - v25);
    }

    else
    {
      v29 = (v12 - v26);
    }

    if (!v28)
    {
      v27 = v13 | 6;
    }

    v30 = v24 & 0x1FF;
    v31 = v13 | 5;
    v32 = v13 | 4;
    v33 = (v12 - v23);
    if (v12 < v30)
    {
      v34 = v32;
    }

    else
    {
      v33 = (v12 - v30);
      v34 = v31;
    }

    if (v12 < v25)
    {
      v21 = v33;
    }

    else
    {
      v21 = v29;
    }

    if (v12 < v25)
    {
      v22 = v34;
    }

    else
    {
      v22 = v27;
    }
  }

  else
  {
    v14 = v11 >> 7;
    v15 = (v11 >> 15);
    v16 = (v12 - (v11 >> 7));
    if (v12 < v15)
    {
      v17 = v13 | 2;
    }

    else
    {
      v16 = (v12 - v15);
      v17 = v13 | 3;
    }

    v18 = v11 & 0x7F;
    v19 = v13 | 1;
    v28 = v12 >= v18;
    v20 = (v12 - v18);
    if (!v28)
    {
      v20 = v12;
      v19 = v13;
    }

    if (v12 < v14)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    if (v12 < v14)
    {
      v22 = v19;
    }

    else
    {
      v22 = v17;
    }
  }
}

void internal::marisa::grimoire::vector::BitVector::build_index(internal::marisa::grimoire::vector::BitVector *this, const internal::marisa::grimoire::vector::BitVector *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = *(a2 + 6);
  v9 = v8 >> 9;
  if ((v8 & 0x1FF) != 0)
  {
    ++v9;
  }

  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::resize(this + 8, v9 + 1);
  v10 = *(v6 + 3);
  if (!v10)
  {
    LODWORD(v13) = 0;
    if ((v8 & 0x1FF) == 0)
    {
      goto LABEL_55;
    }

LABEL_35:
    v35 = (v8 - 1) >> 9;
    v36 = ((v8 - 1) >> 6) & 7;
    if (v36 > 3)
    {
      if ((((v8 - 1) >> 6) & 7) > 5)
      {
        if (v36 == 7)
        {
          goto LABEL_55;
        }

        v37 = *(this + 9);
        v43 = (v37 + 12 * v35);
        v44 = v43[2];
        v39 = v13 - *v43;
        goto LABEL_54;
      }

      if (v36 != 4)
      {
        v37 = *(this + 9);
        v47 = (v37 + 12 * v35);
        v48 = v47[2];
        v39 = v13 - *v47;
LABEL_53:
        v44 = v48 & 0xFFFC01FF | ((v39 & 0x1FF) << 9);
        *(v37 + 12 * v35 + 8) = v44;
LABEL_54:
        *(v37 + 12 * v35 + 8) = v44 & 0xF803FFFF | ((v39 & 0x1FF) << 18);
        goto LABEL_55;
      }

      v37 = *(this + 9);
      v39 = v13 - *(v37 + 12 * v35);
LABEL_52:
      v50 = v37 + 12 * v35;
      v48 = *(v50 + 8) & 0xFFFFFE00 | v39 & 0x1FF;
      *(v50 + 8) = v48;
      goto LABEL_53;
    }

    if ((((v8 - 1) >> 6) & 7) > 1)
    {
      if (v36 != 2)
      {
        v37 = *(this + 9);
        v49 = (v37 + 12 * v35);
        v46 = v49[1];
        v39 = v13 - *v49;
        goto LABEL_51;
      }

      v37 = *(this + 9);
      v41 = (v37 + 12 * v35);
      v42 = v41[1];
      v39 = v13 - *v41;
    }

    else
    {
      if (v36)
      {
        v37 = *(this + 9);
        v45 = (v37 + 12 * v35);
        v40 = v45[1];
        v39 = v13 - *v45;
      }

      else
      {
        v37 = *(this + 9);
        v38 = (v37 + 12 * v35);
        v39 = v13 - *v38;
        v40 = v38[1] & 0xFFFFFF80 | v39 & 0x7F;
        v38[1] = v40;
      }

      v42 = v40 & 0xFFFF807F | (v39 << 7);
      *(v37 + 12 * v35 + 4) = v42;
    }

    v46 = v42 & 0xFF807FFF | (v39 << 15);
    *(v37 + 12 * v35 + 4) = v46;
LABEL_51:
    *(v37 + 12 * v35 + 4) = v46 & 0x7FFFFF | (v39 << 23);
    goto LABEL_52;
  }

  v51 = v8 & 0x1FF;
  v52 = v8;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v55 = *(v6 + 3);
  do
  {
    v15 = v14 & 7;
    v16 = (*(this + 9) + 12 * (v11 >> 9));
    if (v15 <= 3)
    {
      if ((v14 & 7u) > 1uLL)
      {
        if (v15 == 2)
        {
          v19 = (v13 - *v16);
          v18 = v16[1] & 0xFFFF807F | ((v13 - *v16) << 7);
        }

        else
        {
          v21 = (v13 - *v16);
          v18 = v16[1] & 0xFF807FFF | ((v13 - *v16) << 15);
        }
      }

      else
      {
        if ((v14 & 7) == 0)
        {
          *v16 = v13;
          goto LABEL_22;
        }

        v18 = v16[1] & 0xFFFFFF80 | (v13 - *v16) & 0x7F;
      }

      goto LABEL_19;
    }

    if ((v14 & 7u) > 5uLL)
    {
      if (v15 == 6)
      {
        v20 = v16[2] & 0xFFFC01FF | (((v13 - *v16) & 0x1FF) << 9);
      }

      else
      {
        v20 = v16[2] & 0xF803FFFF | (((v13 - *v16) & 0x1FF) << 18);
      }
    }

    else
    {
      if (v15 == 4)
      {
        v17 = (v13 - *v16);
        v18 = v16[1] & 0x7FFFFF | ((v13 - *v16) << 23);
LABEL_19:
        v16[1] = v18;
        goto LABEL_22;
      }

      v20 = v16[2] & 0xFFFFFE00 | (v13 - *v16) & 0x1FF;
    }

    v16[2] = v20;
LABEL_22:
    v22 = *(*(v6 + 2) + 8 * v14);
    v23 = (((((v22 >> 1) & 0x5555555555555555) + (v22 & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((((v22 >> 1) & 0x5555555555555555) + (v22 & 0x5555555555555555)) & 0x3333333333333333);
    v24 = (0x101010101010101 * (((v23 >> 4) & 0x707070707070707) + (v23 & 0x707070707070707))) >> 56;
    if (a3)
    {
      v25 = v6;
      v26 = a3;
      v27 = a4;
      v28 = 64;
      if (v8 < 0x40)
      {
        v28 = v8;
      }

      v29 = v28 - v24;
      v30 = (-v12 & 0x1FFLL);
      if (v28 - v24 > v30)
      {
        v53 = v12;
        v54 = v13;
        internal::marisa::grimoire::vector::Vector<unsigned int>::push_back(this + 14, &v56);
        v12 = v53;
        v13 = v54;
        v10 = v55;
      }

      v12 += v29;
      a4 = v27;
      a3 = v26;
      v6 = v25;
    }

    if (a4)
    {
      v31 = (-v13 & 0x1FFLL);
      if (v24 > v31)
      {
        v32 = v22;
        v33 = v13;
        v34 = v12;
        internal::marisa::grimoire::vector::Vector<unsigned int>::push_back(this + 20, &v56);
        v12 = v34;
        v10 = v55;
        v13 = v33;
      }
    }

    v13 += v24;
    ++v14;
    v11 += 64;
    v8 -= 64;
  }

  while (v10 != v14);
  v8 = v52;
  if (v51)
  {
    goto LABEL_35;
  }

LABEL_55:
  *(this + 6) = v8;
  *(this + 7) = *(v6 + 7);
  *(*(this + 9) + 12 * *(this + 11) - 12) = v13;
  if (a3)
  {
    v56 = v8;
    internal::marisa::grimoire::vector::Vector<unsigned int>::push_back(this + 14, &v56);
    internal::marisa::grimoire::vector::Vector<unsigned int>::shrink(this + 28);
  }

  if (a4)
  {
    v56 = v8;
    internal::marisa::grimoire::vector::Vector<unsigned int>::push_back(this + 20, &v56);
    internal::marisa::grimoire::vector::Vector<unsigned int>::shrink(this + 40);
  }
}

uint64_t *internal::marisa::grimoire::vector::Vector<unsigned int>::push_back(uint64_t *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[3];
  v5 = result[4];
  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
    v7 = 2 * v5;
    if (v5 >> 61)
    {
      v7 = 0x3FFFFFFFFFFFFFFFLL;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    result = internal::marisa::grimoire::vector::Vector<unsigned int>::realloc(result, v8);
    v4 = v3[3];
    v6 = v4 + 1;
  }

  *(v3[1] + 4 * v4) = *a2;
  v3[3] = v6;
  return result;
}

_DWORD *internal::marisa::grimoire::vector::Vector<unsigned int>::shrink(_DWORD *result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x100000072;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:114: MARISA_STATE_ERROR: fixed_";
  }

  v2 = *(result + 3);
  if (v2 != *(result + 4))
  {

    return internal::marisa::grimoire::vector::Vector<unsigned int>::realloc(result, v2);
  }

  return result;
}

void nlp::CFScopedPtr<__CFBundle *>::reset(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

CEM::LocalizedStringTable *CEM::LocalizedStringTable::LocalizedStringTable(CEM::LocalizedStringTable *this, CFTypeRef cf, const __CFLocale *a3)
{
  *this = CFRetain(cf);
  v5 = CFRetain(a3);
  *(this + 1) = v5;
  FrameworkBundle = CEM::createFrameworkBundle(v5);
  *(this + 2) = FrameworkBundle;
  *(this + 3) = CEM::copyPreferredLocaleIdentifierFromFrameworkBundleWithLocale(FrameworkBundle, *(this + 1), v7);
  *(this + 4) = 0;
  *(this + 5) = 850045863;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  return this;
}

void sub_1D2B10964(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<__CFBundle *>::reset(v1 + 2);
  nlp::CFScopedPtr<__CFLocale const*>::reset(v2, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v1, 0);
  _Unwind_Resume(a1);
}

CFStringRef CEM::LocalizedStringTable::copyValueForKey(CEM::LocalizedStringTable *this, const __CFString *a2)
{
  IsChinese = CEM::deviceIsChinese(this);
  v5 = MEMORY[0x1E695E480];
  if (IsChinese)
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
    CFStringAppend(MutableCopy, @"@CH-SKU");
    if (MutableCopy)
    {
      LocalizedDataView = CEM::LocalizedStringTable::_getLocalizedDataView(this);
      if (CFDictionaryContainsKey(LocalizedDataView, MutableCopy))
      {
        a2 = MutableCopy;
      }
    }
  }

  else
  {
    MutableCopy = 0;
  }

  v8 = CEM::LocalizedStringTable::_getLocalizedDataView(this);
  Value = CFDictionaryGetValue(v8, a2);
  if (Value)
  {
    Copy = CFStringCreateCopy(*v5, Value);
    if (!MutableCopy)
    {
      return Copy;
    }

    goto LABEL_11;
  }

  Copy = 0;
  if (MutableCopy)
  {
LABEL_11:
    CFRelease(MutableCopy);
  }

  return Copy;
}

void sub_1D2B10A74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t CEM::LocalizedStringTable::_getLocalizedDataView(CEM::LocalizedStringTable *this)
{
  std::mutex::lock((this + 40));
  v2 = *(this + 4);
  if (!v2)
  {
    v3 = *this;
    v4 = *(this + 2);
    v5 = *(this + 3);
    v6 = CFBundleCopyLocalizedStringTableForLocalization();
    nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 4, v6);
    v2 = *(this + 4);
  }

  std::mutex::unlock((this + 40));
  return v2;
}

CFStringRef CEM::LocalizedStringTable::copyValueForEmoji(CEM::LocalizedStringTable *this, const __CFString **a2)
{
  v4 = CEM::LocalizedStringTable::copyValueForKey(this, a2[1]);
  if (!v4)
  {
    CEM::EmojiToken::createBaseTokenCopy(&v6, a2);
    if (v6)
    {
      v4 = CEM::LocalizedStringTable::copyValueForKey(this, *(v6 + 8));
    }

    else
    {
      v4 = 0;
    }

    std::unique_ptr<CEM::EmojiToken>::~unique_ptr[abi:ne200100](&v6);
  }

  return v4;
}

void sub_1D2B10B84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<CEM::EmojiToken>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<CEM::EmojiToken>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    nlp::CFScopedPtr<__CFString const*>::reset((v2 + 8), 0);
    MEMORY[0x1D38A8C30](v2, 0x1060C40E225781FLL);
  }

  return a1;
}

void nlp::CFScopedPtr<__CFURL const*>::reset(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

uint64_t CEM::initNSBundle(CEM *this)
{
  if (CEM::FoundationLibrary(void)::token != -1)
  {
    dispatch_once(&CEM::FoundationLibrary(void)::token, &__block_literal_global_8);
  }

  if (CEM::initNSBundle(void)::token != -1)
  {
    dispatch_once(&CEM::initNSBundle(void)::token, &__block_literal_global);
  }

  return CEM::classNSBundle;
}

Class ___ZN3CEML12initNSBundleEv_block_invoke()
{
  result = objc_getClass("NSBundle");
  CEM::classNSBundle = result;
  if (result)
  {
    CEM::getNSBundleClass = CEM::NSBundleFunction;
  }

  else
  {
    v1 = abort_report_np();
    return CEM::NSBundleFunction(v1);
  }

  return result;
}

void *___ZN3CEML17FoundationLibraryEv_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Foundation.framework/Foundation", 2);
  CEM::FoundationLibrary(void)::frameworkLibrary = result;
  if (!result)
  {
    dlerror();
    v1 = abort_report_np();
    return CEM::initNSString(v1);
  }

  return result;
}

uint64_t CEM::initNSString(CEM *this)
{
  if (CEM::FoundationLibrary(void)::token != -1)
  {
    dispatch_once(&CEM::FoundationLibrary(void)::token, &__block_literal_global_8);
  }

  if (CEM::initNSString(void)::token != -1)
  {
    dispatch_once(&CEM::initNSString(void)::token, &__block_literal_global_15);
  }

  return CEM::classNSString;
}

Class ___ZN3CEML12initNSStringEv_block_invoke()
{
  result = objc_getClass("NSString");
  CEM::classNSString = result;
  if (result)
  {
    CEM::getNSStringClass = CEM::NSStringFunction;
  }

  else
  {
    v1 = abort_report_np();
    return CEM::NSStringFunction(v1);
  }

  return result;
}

uint64_t *std::unique_ptr<CEM::EmojiToken>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    nlp::CFScopedPtr<__CFString const*>::reset((v2 + 8), 0);

    JUMPOUT(0x1D38A8C30);
  }

  return result;
}

CFStringRef CEM::VoiceoverStrings::createDescription(CEM::LocalizedStringTable **a1, CFStringRef theString, int a3, int a4)
{
  if (!theString || !*a1)
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  CFStringTransform(MutableCopy, 0, @"Any-SoftbankSMS", 0);
  if (CFStringCompare(theString, MutableCopy, 0))
  {
    VoiceoverSearchKeyForEmoji = createVoiceoverSearchKeyForEmoji(MutableCopy, 0, a3, a4);
    v10 = CEM::LocalizedStringTable::copyValueForKey(*a1, VoiceoverSearchKeyForEmoji);
    if (v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    VoiceoverSearchKeyForEmoji = 0;
  }

  v11 = createVoiceoverSearchKeyForEmoji(theString, 0, a3, a4);
  if (VoiceoverSearchKeyForEmoji)
  {
    CFRelease(VoiceoverSearchKeyForEmoji);
  }

  v10 = CEM::LocalizedStringTable::copyValueForKey(*a1, v11);
  if (v10)
  {
    VoiceoverSearchKeyForEmoji = v11;
LABEL_12:
    if (!VoiceoverSearchKeyForEmoji)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  VoiceoverSearchKeyForEmoji = createVoiceoverSearchKeyForEmoji(theString, 1, a3, a4);
  if (v11)
  {
    CFRelease(v11);
  }

  v10 = CEM::LocalizedStringTable::copyValueForKey(*a1, VoiceoverSearchKeyForEmoji);
  if (!VoiceoverSearchKeyForEmoji)
  {
    goto LABEL_14;
  }

LABEL_13:
  CFRelease(VoiceoverSearchKeyForEmoji);
LABEL_14:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v10;
}

void sub_1D2B1101C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va1, 0);
  nlp::CFScopedPtr<__CFString *>::reset(va2);
  _Unwind_Resume(a1);
}

__CFString *createVoiceoverSearchKeyForEmoji(const __CFString *a1, int a2, int a3, int a4)
{
  v37 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"UnicodeHex.");
  theString = a1;
  v32 = 0;
  v33 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v30 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v34 = 0;
  v35 = 0;
  v31 = CStringPtr;
  if (Length >= 1)
  {
    for (i = 0; i != Length; ++i)
    {
      v12 = v33;
      if (v33 <= i)
      {
        v14 = 0;
      }

      else
      {
        if (v30)
        {
          v13 = &v30[v32 + i];
          goto LABEL_8;
        }

        if (!v31)
        {
          v19 = v34;
          if (v35 <= i || v34 > i)
          {
            v21 = i - 4;
            if (i < 4)
            {
              v21 = 0;
            }

            if (v21 + 64 < v33)
            {
              v12 = v21 + 64;
            }

            v34 = v21;
            v35 = v12;
            v38.length = v12 - v21;
            v38.location = v32 + v21;
            CFStringGetCharacters(theString, v38, buffer);
            v19 = v34;
          }

          v13 = &buffer[i - v19];
LABEL_8:
          v14 = *v13;
          if (v14 == 8205)
          {
            v15 = a2;
          }

          else
          {
            v15 = 1;
          }

          if (i == Length - 1 && v14 == 65039 || v15 == 0)
          {
            continue;
          }

          goto LABEL_21;
        }

        v14 = v31[v32 + i];
      }

LABEL_21:
      snprintf(__str, 0x10uLL, "%x", v14);
      v18 = CFStringCreateWithCString(0, __str, 0x8000100u);
      CFStringAppend(Mutable, v18);
      CFRelease(v18);
    }
  }

  if (a3 || a4)
  {
    v22 = @".diverse";
    if (a4)
    {
      v23 = a3 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v22 = @".diverse_hair";
    }

    if (a3)
    {
      v24 = v22;
    }

    else
    {
      v24 = @".hair";
    }

    CFStringAppend(Mutable, v24);
    if (a4 == 4)
    {
      CFStringAppend(Mutable, @"@bald");
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void nlp::CFScopedPtr<__CFString *>::reset(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

void std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 32;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t CEM::AdaptationDatabase::executeStatement(CEM::AdaptationDatabase *this, CEM::Statement *a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v5[0] = &unk_1F4E06B88;
  v5[1] = this;
  v5[3] = v5;
  CEM::AdaptationDatabase::executeStatement(a2, a3, v5);
  result = std::__function::__value_func<void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D2B113F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, char a10)
{
  std::__function::__value_func<void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::~__value_func[abi:ne200100](&a10);
  std::vector<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 24;
        std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::destroy(*(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void CEM::Statement::~Statement(void **this)
{
  v2 = this + 7;
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

void std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,0>(uint64_t a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_1F4E07200[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEjdNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIhNSC_IhEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSJ_1EJS8_jdSE_SH_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEjdNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIhNSC_IhEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSJ_1EJS8_jdSE_SH_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void CEM::AdaptationDatabase::executeStatement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 32));
  v26 = a1;
  v5 = *(a1 + 24);
  if (v5)
  {
    *(a2 + 96) = v5;
    CEM::Statement::prepare(a2);
    while (*(a2 + 80))
    {
      v6 = *(a2 + 56);
      if (*(a2 + 64) == v6)
      {
        goto LABEL_41;
      }

      v7 = 0;
      v8 = 0;
      while (1)
      {
        LODWORD(v28) = 1;
        *buf = a2;
        *&buf[8] = &v28;
        *&buf[16] = v8;
        v9 = *(v6 + v7 + 24);
        if (v9 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        *&__dst = buf;
        (off_1F4E07910[v9])(&__dst);
        if (v28)
        {
          break;
        }

        ++v8;
        v6 = *(a2 + 56);
        v7 += 32;
        if (v8 >= (*(a2 + 64) - v6) >> 5)
        {
          goto LABEL_41;
        }
      }

      if (cem_logging_get_adaptation_log_onceToken != -1)
      {
        dispatch_once(&cem_logging_get_adaptation_log_onceToken, &__block_literal_global_4);
      }

      v10 = cem_logging_get_adaptation_log_log;
      if (os_log_type_enabled(cem_logging_get_adaptation_log_log, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a2 + 55);
        v12 = *(a2 + 32);
        v13 = sqlite3_errmsg(*(a2 + 96));
        *buf = 67109634;
        v14 = a2 + 32;
        if (v11 < 0)
        {
          v14 = v12;
        }

        *&buf[4] = v8;
        *&buf[8] = 2082;
        *&buf[10] = v14;
        *&buf[18] = 2082;
        *&buf[20] = v13;
        _os_log_error_impl(&dword_1D2AFC000, v10, OS_LOG_TYPE_ERROR, "Could not bind argument (%d) for query '%{public}s'. Error: '%{public}s'", buf, 0x1Cu);
      }

LABEL_41:
      while (1)
      {
        v23 = sqlite3_step(*(a2 + 80));
        *(a2 + 104) = v23;
        if (v23 != 100)
        {
          break;
        }

        v29[0] = 0;
        v29[1] = 0;
        v28 = v29;
        if (sqlite3_column_count(*(a2 + 80)))
        {
          v15 = sqlite3_column_name(*(a2 + 80), 0);
          strlen(v15);
          v16 = sqlite3_column_type(*(a2 + 80), 0);
          if (v16 > 2)
          {
            switch(v16)
            {
              case 5:
                *&buf[24] = 0;
                break;
              case 4:
                v21 = sqlite3_column_bytes(*(a2 + 80), 0);
                sqlite3_column_blob(*(a2 + 80), 0);
                if (v21)
                {
                  if ((v21 & 0x80000000) == 0)
                  {
                    operator new();
                  }

                  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
                }

                memset(buf, 0, 24);
                v20 = 4;
LABEL_37:
                *&buf[24] = v20;
                break;
              case 3:
                v17 = sqlite3_column_text(*(a2 + 80), 0);
                v18 = strlen(v17);
                if (v18 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v19 = v18;
                if (v18 >= 0x17)
                {
                  operator new();
                }

                HIBYTE(v31) = v18;
                if (v18)
                {
                  memmove(&__dst, v17, v18);
                }

                *(&__dst + v19) = 0;
                *buf = __dst;
                *&buf[16] = v31;
                v20 = 3;
                goto LABEL_37;
              default:
LABEL_48:
                __assert_rtn("getValueForColumnAtIndex", "Statement.cpp", 94, "false && SQLITE column type currently not supported.");
            }

            operator new();
          }

          if (v16 == 1)
          {
            *buf = sqlite3_column_int(*(a2 + 80), 0);
            v20 = 1;
            goto LABEL_37;
          }

          if (v16 == 2)
          {
            *buf = sqlite3_column_double(*(a2 + 80), 0);
            v20 = 2;
            goto LABEL_37;
          }

          goto LABEL_48;
        }

        v22 = *(a3 + 24);
        if (!v22)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v22 + 48))(v22, &v28);
        std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::destroy(v29[0]);
      }

      *(a2 + 104) = sqlite3_finalize(*(a2 + 80));
      CEM::Statement::prepare(a2);
    }
  }

  else
  {
    if (cem_logging_get_adaptation_log_onceToken != -1)
    {
      dispatch_once(&cem_logging_get_adaptation_log_onceToken, &__block_literal_global_4);
    }

    v24 = cem_logging_get_adaptation_log_log;
    if (os_log_type_enabled(cem_logging_get_adaptation_log_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1D2AFC000, v24, OS_LOG_TYPE_DEBUG, "Database connection uninitialized; not executing SQL statement.", buf, 2u);
    }
  }

  std::mutex::unlock((v26 + 32));
  v25 = *MEMORY[0x1E69E9840];
}

uint64_t std::__function::__value_func<void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t **std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::__insert_node_at(uint64_t **result, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v4 = **result;
  if (v4)
  {
    *result = v4;
    a4 = *a3;
  }

  v5 = result[1];
  *(a4 + 24) = a4 == v5;
  if (a4 != v5)
  {
    do
    {
      v6 = a4[2];
      if (v6[3])
      {
        break;
      }

      v7 = v6[2];
      v8 = *v7;
      if (*v7 == v6)
      {
        v12 = v7[1];
        if (!v12 || (v13 = *(v12 + 24), v11 = (v12 + 24), v13 == 1))
        {
          if (*v6 == a4)
          {
            v15 = a4[2];
          }

          else
          {
            v15 = v6[1];
            v16 = *v15;
            v6[1] = *v15;
            v17 = v6;
            if (v16)
            {
              v16[2] = v6;
              v7 = v6[2];
              v17 = *v7;
            }

            v15[2] = v7;
            v7[v17 != v6] = v15;
            *v15 = v6;
            v6[2] = v15;
            v7 = v15[2];
            v8 = *v7;
          }

          *(v15 + 24) = 1;
          *(v7 + 24) = 0;
          v22 = *(v8 + 8);
          *v7 = v22;
          if (v22)
          {
            *(v22 + 16) = v7;
          }

          v23 = v7[2];
          *(v8 + 16) = v23;
          v23[*v23 != v7] = v8;
          *(v8 + 8) = v7;
          v7[2] = v8;
          break;
        }
      }

      else
      {
        if (!v8 || (v10 = *(v8 + 24), v9 = (v8 + 24), v10 == 1))
        {
          v14 = *v6;
          if (*v6 == a4)
          {
            v18 = v14[1];
            *v6 = v18;
            if (v18)
            {
              *(v18 + 16) = v6;
              v7 = v6[2];
            }

            v14[2] = v7;
            v7[*v7 != v6] = v14;
            v14[1] = v6;
            v6[2] = v14;
            v7 = v14[2];
          }

          else
          {
            v14 = a4[2];
          }

          *(v14 + 24) = 1;
          *(v7 + 24) = 0;
          v19 = v7[1];
          v20 = *v19;
          v7[1] = *v19;
          if (v20)
          {
            *(v20 + 16) = v7;
          }

          v21 = v7[2];
          v19[2] = v21;
          v21[*v21 != v7] = v19;
          *v19 = v7;
          v7[2] = v19;
          break;
        }

        v11 = v9;
      }

      *(v6 + 24) = 1;
      a4 = v7;
      *(v7 + 24) = v7 == v5;
      *v11 = 1;
    }

    while (v7 != v5);
  }

  result[2] = (result[2] + 1);
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> &&>(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

uint64_t std::__function::__func<CEM::AdaptationDatabase::executeStatement(CEM::Statement &)::$_0,std::allocator<CEM::AdaptationDatabase::executeStatement(CEM::Statement &)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN3CEM18AdaptationDatabase16executeStatementERNS_9StatementEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((a2 & a1) < 0 != __OFSUB__(a1, a2))
  {
    return strcmp((a1 & 0x7FFFFFFFFFFFFFFFLL), (a2 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__func<CEM::AdaptationDatabase::executeStatement(CEM::Statement &)::$_0,std::allocator<CEM::AdaptationDatabase::executeStatement(CEM::Statement &)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v4 = v2[1];
  v3 = v2[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *v2) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *v2) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v26 = *(a1 + 8);
    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v23 = 0;
    v24 = 24 * v7;
    std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::map[abi:ne200100]((24 * v7), a2);
    v25 = 24 * v7 + 24;
    v12 = *v2;
    v11 = v2[1];
    v13 = 24 * v7 + *v2 - v11;
    if (*v2 != v11)
    {
      v14 = 0;
      do
      {
        v15 = (v13 + v14);
        *v15 = *(v12 + v14);
        v16 = (v12 + v14 + 8);
        v17 = *v16;
        *(v13 + v14 + 8) = *v16;
        v18 = v13 + v14 + 8;
        v19 = *(v12 + v14 + 16);
        v15[2] = v19;
        if (v19)
        {
          *(v17 + 16) = v18;
          *(v12 + v14) = v16;
          *v16 = 0;
          *(v12 + v14 + 16) = 0;
        }

        else
        {
          *v15 = v18;
        }

        v14 += 24;
      }

      while (v12 + v14 != v11);
      do
      {
        std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::destroy(*(v12 + 8));
        v12 += 24;
      }

      while (v12 != v11);
    }

    v20 = *v2;
    *v2 = v13;
    v21 = v2[2];
    v22 = v25;
    v24 = v20;
    *&v25 = v20;
    *(v2 + 1) = v22;
    *(&v25 + 1) = v21;
    v23 = v20;
    result = std::__split_buffer<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::~__split_buffer(&v23);
    v6 = v22;
  }

  else
  {
    result = std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::map[abi:ne200100](v2[1], a2);
    v6 = v4 + 24;
    v2[1] = v4 + 24;
  }

  v2[1] = v6;
  return result;
}

void sub_1D2B122B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::map[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v6 = a1[1];
      v7 = v3;
      if (*a1 != v3)
      {
        v8 = a1[1];
        v9 = v3;
        if (v6)
        {
          do
          {
            v7 = v8;
            v8 = v8[1];
          }

          while (v8);
        }

        else
        {
          do
          {
            v7 = v9[2];
            v10 = *v7 == v9;
            v9 = v7;
          }

          while (v10);
        }

        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, v5 + 4) & 0x80) == 0)
        {
          for (; v6; v6 = v6[1])
          {
            while (1)
            {
              v11 = v6;
              if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, v6 + 4) & 0x80) == 0)
              {
                break;
              }

              v6 = *v6;
              if (!*v11)
              {
                goto LABEL_17;
              }
            }

            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 4, v5 + 4) & 0x80) == 0)
            {
              goto LABEL_18;
            }
          }

LABEL_17:
          operator new();
        }
      }

      if (!v6 || !v7[1])
      {
        goto LABEL_17;
      }

LABEL_18:
      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v10 = *v13 == v5;
          v5 = v13;
        }

        while (!v10);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }

  return a1;
}

void sub_1D2B124B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::destroy(*(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4 != -1)
  {
    v6 = a1;
    (off_1F4E07228[v4])(&v6, a2);
    *(a1 + 24) = v4;
  }

  return a1;
}

void **_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEjdNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIhNSC_IhEEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISI_LNS0_6_TraitE1EEEEEvRSJ_OT_EUlSS_E_JRKNS0_6__baseILSM_1EJS8_jdSE_SH_EEEEEEDcSR_DpT0_(void **result, void *a2)
{
  v2 = *result;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v3 = a2[1];
  if (v3 != *a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](v2, v3 - *a2);
  }

  return result;
}

void sub_1D2B12634(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEjdNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIhNSC_IhEEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISI_LNS0_6_TraitE1EEEEEvRSJ_OT_EUlSS_E_JRKNS0_6__baseILSM_1EJS8_jdSE_SH_EEEEEEDcSR_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEjdNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIhNSC_IhEEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISI_LNS0_6_TraitE1EEEEEvRSJ_OT_EUlSS_E_JRKNS0_6__baseILSM_1EJS8_jdSE_SH_EEEEEEDcSR_DpT0_(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

uint64_t std::__function::__func<CEM::AdaptationDatabase::executeStatement(CEM::Statement &)::$_0,std::allocator<CEM::AdaptationDatabase::executeStatement(CEM::Statement &)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F4E06B88;
  a2[1] = v2;
  return result;
}

void ___ZL26sharedMonochromeSymbolDataPK10__CFString_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFLocale *a5)
{
  v5 = CEM::copyResourceURLFromFrameworkBundle(@"monochrome_symbol", @"dat", 0, 0, a5);
  v7 = CEM::copyResourceURLFromFrameworkBundle(@"monochrome_symbolmeta", @"dat", 0, 0, v6);
  if (v5)
  {
    operator new();
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_1D2B12858(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  v11 = v9;
  MEMORY[0x1D38A8C30](v11, 0x1070C408606C210);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      a9 = 0;
      _os_log_error_impl(&dword_1D2AFC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed to load emoji data", &a9, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1D2B12830);
  }

  _Unwind_Resume(a1);
}

void CEMEmojiLocaleDataEnumerateSearchResultsInStringWithBlock(uint64_t a1, const __CFString *a2, CFRange a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if (a1)
  {
    v6 = *(a1 + 24);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __CEMEmojiLocaleDataEnumerateSearchResultsInStringWithBlock_block_invoke;
    v7[3] = &unk_1E8404918;
    v7[4] = a6;
    v7[5] = a1;
    CEM::EmojiLocaleData::enumerateSearchResultsInStringWithBlock(v6, a2, a3, a5, 0, v7);
  }
}

void __CEMEmojiLocaleDataEnumerateSearchResultsInStringWithBlock_block_invoke(uint64_t a1, uint64_t **a2)
{
  Wrappers = CEM::EmojiToken::createWrappers(a2, *(a1 + 40));
  if (Wrappers)
  {
    (*(*(a1 + 32) + 16))();
    CFRelease(Wrappers);
  }
}

void sub_1D2B129E8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void CEMEmojiLocaleDataEnumerateSearchResultsIncludingSubstringsInStringWithBlock(uint64_t a1, const __CFString *a2, CFRange a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if (a1)
  {
    v6 = *(a1 + 24);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __CEMEmojiLocaleDataEnumerateSearchResultsIncludingSubstringsInStringWithBlock_block_invoke;
    v7[3] = &unk_1E8404940;
    v7[4] = a6;
    v7[5] = a1;
    CEM::EmojiLocaleData::enumerateSearchResultsInStringWithBlock(v6, a2, a3, a5, 1, v7);
  }
}

void __CEMEmojiLocaleDataEnumerateSearchResultsIncludingSubstringsInStringWithBlock_block_invoke(uint64_t a1, uint64_t **a2)
{
  Wrappers = CEM::EmojiToken::createWrappers(a2, *(a1 + 40));
  if (Wrappers)
  {
    (*(*(a1 + 32) + 16))();
    CFRelease(Wrappers);
  }
}

void sub_1D2B12B10(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

__CFArray *CEMEmojiLocaleDataCreateEmojiTokensForString(__CFArray *a1, const __CFString *a2, const __CFString *a3, uint64_t a4, unsigned int a5, int a6)
{
  Wrappers = a1;
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v11 = MEMORY[0x1D38A8770](*(*(a1 + 3) + 32));
    if (v11)
    {
      v12 = !CFStringHasPrefix(v11, @"en") || a2 == 0;
      if (!v12 && a5 == 1)
      {
        if (CFStringCompare(a2, @"smile", 1uLL) == kCFCompareEqualTo)
        {
          v27 = xmmword_1E8404960;
          v28 = @"😀";
          *&v23 = 0;
          v22 = 0uLL;
          std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>();
        }

        if (CFStringCompare(a2, @"smiley", 1uLL) == kCFCompareEqualTo)
        {
          v22 = xmmword_1E8404978;
          v23 = *&off_1E8404988;
          v28 = 0;
          v27 = 0uLL;
          std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>();
        }

        if (CFStringCompare(a2, @"happy", 1uLL) == kCFCompareEqualTo)
        {
          v24 = xmmword_1E84049B8;
          v25 = *off_1E84049C8;
          v26 = @"🙃";
          v22 = xmmword_1E8404998;
          v23 = *&off_1E84049A8;
          v28 = 0;
          v27 = 0uLL;
          std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>();
        }
      }
    }

    v14 = *(Wrappers + 3);
    v28 = 0;
    v27 = 0uLL;
    v15 = *v14;
    if (*v14 && (*(v15 + 120) & 2) != 0)
    {
      v16 = v14;
    }

    else if (a5 > 6 || (v16 = v14, ((1 << a5) & 0x72) == 0))
    {
      v16 = (v14 + 8);
      v15 = *(v14 + 8);
    }

    CEM::EmojiLocaleData::exactMatchEmojiTokensForSingleWord(&v22, v14, a2, a3, a5, v15, a6);
    std::vector<std::shared_ptr<CEM::EmojiToken>>::__vdeallocate(&v27);
    v20 = v22;
    v27 = v22;
    v28 = v23;
    *&v23 = 0;
    v21 = &v22;
    v22 = 0uLL;
    std::vector<std::shared_ptr<CEM::EmojiToken>>::__destroy_vector::operator()[abi:ne200100](&v21);
    if (vmovn_s64(vceqq_s64(vdupq_laneq_s64(v20, 1), v20)).u8[0])
    {
      MutableCopy = CFStringCreateMutableCopy(0, 0, a2);
      CFStringLowercase(MutableCopy, *(v14 + 32));
      CEM::EmojiLocaleData::exactMatchEmojiTokensForSingleWord(&v22, v14, MutableCopy, a3, a5, *v16, a6);
      std::vector<std::shared_ptr<CEM::EmojiToken>>::__vdeallocate(&v27);
      v27 = v22;
      v28 = v23;
      *&v23 = 0;
      v21 = &v22;
      v22 = 0uLL;
      std::vector<std::shared_ptr<CEM::EmojiToken>>::__destroy_vector::operator()[abi:ne200100](&v21);
      CFRelease(MutableCopy);
    }

    Wrappers = CEM::EmojiToken::createWrappers(&v27, Wrappers);
    *&v22 = &v27;
    std::vector<std::shared_ptr<CEM::EmojiToken>>::__destroy_vector::operator()[abi:ne200100](&v22);
  }

  v18 = *MEMORY[0x1E69E9840];
  return Wrappers;
}

void sub_1D2B12E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  v15 = *(v13 - 96);
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D2B12F28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *createCEMEmojiTokensCFArray(const __CFString ***a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], a1[1] - *a1, MEMORY[0x1E695E9C0]);
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v5 = CEMEmojiTokenCreateWithString(*v3, 0);
    if (v5)
    {
      v6 = v5;
      CFArrayAppendValue(Mutable, v5);
      CFRelease(v6);
    }

    ++v3;
  }

  return Mutable;
}

void std::vector<std::shared_ptr<CEM::EmojiToken>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<CEM::EmojiToken>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<CEM::EmojiToken>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__shared_ptr_emplace<CEM::EmojiToken>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4E069F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D38A8C30);
}

uint64_t CEMEmojiLocaleDataGetLocaleIdentifier(uint64_t result)
{
  if (result)
  {
    v1 = *(*(result + 24) + 32);
    JUMPOUT(0x1D38A8770);
  }

  return result;
}

__CFArray *CEMEmojiLocaleDataCopyCommonEmojiTokens(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  memset(v3, 0, sizeof(v3));
  Wrappers = CEM::EmojiToken::createWrappers(v3, a1);
  v4 = v3;
  std::vector<std::shared_ptr<CEM::EmojiToken>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return Wrappers;
}

void sub_1D2B13158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::shared_ptr<CEM::EmojiToken>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t CEMEmojiLocaleDataGetMecabraFlags(uint64_t a1, unsigned int a2, CFStringRef theString)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  v4 = *(a1 + 24);
  v5 = *v4;
  if (!*v4 || (v6 = *(v5 + 120), (v6 & 2) == 0))
  {
    if (a2 <= 6 && ((1 << a2) & 0x72) != 0)
    {
      if (!v5)
      {
        return 0;
      }
    }

    else
    {
      v5 = v4[1];
      if (!v5)
      {
        return 0;
      }
    }

    v6 = *(v5 + 120);
  }

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  CEM::getUTF8StringFromCFString(&v17, theString);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = v17;
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "’");
  std::string::basic_string[abi:ne200100]<0>(__p, "'");
  CEM::replace(&v16, &v15, v13, __p);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  v17 = v16;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if ((*(v5 + 120) & 2) != 0)
  {
    std::string::push_back(&v17, v3);
  }

  LODWORD(v16.__r_.__value_.__l.__data_) = 0;
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v17;
  }

  else
  {
    v9 = v17.__r_.__value_.__r.__words[0];
  }

  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  if (trie::MarisaTrie<unsigned int,char>::lookup(v5 + 16, v9, size, &v16))
  {
    v7 = LODWORD(v16.__r_.__value_.__l.__data_) >> 22;
  }

  else
  {
    v7 = 0;
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_1D2B13308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 25) < 0)
  {
    operator delete(*(v26 - 48));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CEMEmojiLocaleDataEnableAdaptation(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *(result + 24);
    if (!a2)
    {
      v3 = 1;
      goto LABEL_7;
    }

    if (*(v2 + 136) || (result = CEM::AdaptationController::initialize((v2 + 136)), result))
    {
      v3 = 2;
LABEL_7:
      *(v2 + 136) = v3;
    }
  }

  return result;
}

uint64_t CEMEmojiLocaleDataRecordEmojiEngagement(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_20;
  }

  v4 = *(a1 + 24);
  CEM::getUTF8StringFromCFString(v18, a2);
  v5 = v19;
  v6 = v18[0];
  v7 = v18[1];
  CEM::getUTF8StringFromCFString(&__p, a3);
  if ((v5 & 0x80u) == 0)
  {
    v8 = v18;
  }

  else
  {
    v8 = v6;
  }

  if ((v5 & 0x80u) == 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (*(v4 + 136) == 2)
  {
    v10 = *(v4 + 192);
    std::mutex::lock((v10 + 64));
    if (*(*(v10 + 128) + 24))
    {
      __src = v8;
      {
      }

      {
      }

      if ((*(v10 + 167) & 0x8000000000000000) != 0)
      {
        v14 = *(v10 + 144);
        v13 = *(v10 + 152);
      }

      if (v9 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v9 < 0x17)
        {
          HIBYTE(v21) = v9;
          if (v9)
          {
            memmove(&__dst, __src, v9);
          }

          *(&__dst + v9) = 0;
          v25 = __dst;
          v26 = v21;
          v27 = 3;
          v23 = 0;
          v24 = 0;
          *buf = 0;
          std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*>(buf, &v25, v28, 1uLL);
        }

        operator new();
      }

      std::string::__throw_length_error[abi:ne200100]();
    }

    std::mutex::unlock((v10 + 64));
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_18;
    }
  }

  else if ((v17 & 0x80) == 0)
  {
    goto LABEL_18;
  }

  operator delete(__p);
LABEL_18:
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

LABEL_20:
  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1D2B13F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::mutex::unlock(v34 + 1);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void CEMEmojiLocaleDataResetAdaptationDatabase(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    v2 = (v1 + 136);
    if (*(v1 + 136) || CEM::AdaptationController::initialize(v2))
    {
      v3 = *(v1 + 192);
      if (*(*(v3 + 128) + 24))
      {
        v4 = *(v3 + 167);
        if (v4 < 0)
        {
          v5 = *(v3 + 144);
          v4 = *(v3 + 152);
        }

        else
        {
          v5 = v3 + 144;
        }

        memset(v6, 0, sizeof(v6));
        v8 = v6;
        std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v8);
        CEM::AdaptationDatabase::executeStatement(v6, *(v3 + 128), v7);
        v8 = v6;
        std::vector<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::__destroy_vector::operator()[abi:ne200100](&v8);
        CEM::Statement::~Statement(v7);
      }

      cedar::da<unsigned int,-1,-2,true,1,0ul>::clear(v1 + 208, 1);
      if (!*(v1 + 136))
      {
        *v2 = 1;
      }
    }
  }
}

void sub_1D2B1416C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  CEM::Statement::~Statement(va);
  _Unwind_Resume(a1);
}

BOOL CEMEMFSearchEngineIsLocaleSupported(CEM *a1, const __CFLocale *a2)
{
  buf[3] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    NormalizedLocale = CEM::createNormalizedLocale(a1, a2);
    buf[0] = NormalizedLocale;
    SearchEngineBundleForLocale = CEM::SearchEngineResources::createSearchEngineBundleForLocale(NormalizedLocale, v4);
    v7 = SearchEngineBundleForLocale;
    if (SearchEngineBundleForLocale)
    {
      CFRelease(SearchEngineBundleForLocale);
    }

    if (NormalizedLocale)
    {
      CFRelease(NormalizedLocale);
    }

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = CEM::createNormalizedLocale(a1, v6);
      Value = CFLocaleGetValue(v9, *MEMORY[0x1E695E6F0]);
      v11 = CFLocaleGetValue(v9, *MEMORY[0x1E695E6D0]);
      if (CFStringCompare(Value, @"en", 0) || v11 && CFStringCompare(v11, @"US", 0))
      {
        v13 = @"LocaleData";
        v14 = v9;
      }

      else
      {
        v14 = 0;
        v13 = @"LocaleData-en";
      }

      v15 = CEM::copyResourceURLFromFrameworkBundle(v13, @"dat", 0, v14, v12);
      v8 = v15 != 0;
      if (v15)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          LODWORD(buf[0]) = 138412290;
          *(buf + 4) = MEMORY[0x1D38A8770](v9);
          _os_log_impl(&dword_1D2AFC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Legacy search is supported by locale '%@'", buf, 0xCu);
        }

        CFRelease(v15);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1D2B14350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  nlp::CFScopedPtr<__CFURL const*>::reset(&a9);
  nlp::CFScopedPtr<__CFLocale const*>::reset(&a10, 0);
  _Unwind_Resume(a1);
}

CFBundleRef CEMEMFSearchEngineCreateBundleForLocaleIdentifier(CFLocaleIdentifier localeIdentifier)
{
  v1 = CFLocaleCreate(*MEMORY[0x1E695E480], localeIdentifier);
  if (!v1)
  {
    return 0;
  }

  v3 = v1;
  SearchEngineBundleForLocale = CEM::SearchEngineResources::createSearchEngineBundleForLocale(v1, v2);
  CFRelease(v3);
  return SearchEngineBundleForLocale;
}

void sub_1D2B14410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFLocale const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t CEMEmojiTokenCreateWithLongCharacter(unsigned int a1, uint64_t a2)
{
  if (sharedEmojiData(void)::onceToken != -1)
  {
    dispatch_once(&sharedEmojiData(void)::onceToken, &__block_literal_global_59);
  }

  v4 = sharedEmojiData(void)::data;
  if (a2)
  {
    v5 = MEMORY[0x1D38A8770](*(*(a2 + 24) + 32));
  }

  else
  {
    v5 = 0;
  }

  v6 = sharedMonochromeSymbolData(v5);
  if (!v4)
  {
    return 0;
  }

  v7 = v6;
  CEM::EmojiData::advance(v4, *(v4 + 32), 0x100000000, a1);
  v9 = v8 & 0x100000000;
  v10 = v8;
  if ((BYTE4(v8) & (v8 != 0)) == 0 && v7)
  {
    CEM::EmojiData::advance(v7, *(v7 + 32), 0x100000000, a1);
    v9 = v8 & 0x100000000;
    v10 = v8;
  }

  if (!v10 || v9 == 0)
  {
    return 0;
  }

  return CEMEmojiTokenCreateWithIndex(v8, a2);
}

uint64_t CEMEmojiTokenGetString(uint64_t result)
{
  if (result)
  {
    return *(*(result + 24) + 8);
  }

  return result;
}

uint64_t CEMEmojiTokenSupportsSkinToneVariants(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    v2 = *(v1 + 40);
    v3 = *(v1 + 22);
    v4 = *(v2 + 44);
    if (v3 > v4 && *(v2 + 42) >= (v3 - v4))
    {
      return (*(**(v2 + 16) + 16 * (~v4 + v3) + 10) >> 6) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CEMEmojiTokenCreateSkinToneVariant(uint64_t a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = *(a1 + 24);
    v4 = *(v3 + 40);
    v5 = *(v3 + 22);
    v6 = *(v4 + 44);
    if (v5 > v6 && *(v4 + 42) >= (v5 - v6) && (*(**(v4 + 16) + 16 * (~v6 + v5) + 10) & 0x40) != 0)
    {
      v10 = CEM::EmojiData::advance(v4, *(v4 + 32), 0x100000000, *(v3 + 8));
      if (a2 == 1)
      {
        v11 = 127995;
      }

      else
      {
        v11 = a2 + 127993;
      }

      if (a2)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      CEM::EmojiData::advance(*(v3 + 40), v10, v9, v12);
      operator new();
    }

    return 0;
  }

  return v2;
}

void sub_1D2B146C8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1D2B145F8);
}

void std::shared_ptr<CEM::EmojiToken>::shared_ptr[abi:ne200100]<CEM::EmojiToken,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1D2B14794(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<CEM::EmojiToken>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<CEM::EmojiToken *,std::shared_ptr<CEM::EmojiToken>::__shared_ptr_default_delete<CEM::EmojiToken,CEM::EmojiToken>,std::allocator<CEM::EmojiToken>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001D2B29F63))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<CEM::EmojiToken *,std::shared_ptr<CEM::EmojiToken>::__shared_ptr_default_delete<CEM::EmojiToken,CEM::EmojiToken>,std::allocator<CEM::EmojiToken>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    nlp::CFScopedPtr<__CFString const*>::reset((v1 + 8), 0);

    JUMPOUT(0x1D38A8C30);
  }

  return result;
}

void std::__shared_ptr_pointer<CEM::EmojiToken *,std::shared_ptr<CEM::EmojiToken>::__shared_ptr_default_delete<CEM::EmojiToken,CEM::EmojiToken>,std::allocator<CEM::EmojiToken>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D38A8C30);
}

uint64_t CEMEmojiTokenGetSkinTone(uint64_t result)
{
  if (result)
  {
    return *(*(result + 24) + 16);
  }

  return result;
}

uint64_t CEMEmojiTokenGetHairStyle(uint64_t result)
{
  if (result)
  {
    return *(*(result + 24) + 20);
  }

  return result;
}

uint64_t CEMEmojiTokenGetGender(uint64_t result)
{
  if (result)
  {
    return CEM::EmojiToken::gender(*(result + 24));
  }

  return result;
}

uint64_t CEMEmojiTokenCreateHairStyleVariant(uint64_t a1, unsigned int a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = *(a1 + 24);
    v4 = *(v3 + 40);
    v5 = *(v3 + 22);
    v6 = *(v4 + 44);
    if (v5 > v6 && *(v4 + 42) >= (v5 - v6) && (*(**(v4 + 16) + 16 * (~v6 + v5) + 10) & 0x100) != 0)
    {
      v9 = CEM::EmojiData::advance(v4, *(v4 + 32), 0x100000000, *(v3 + 8));
      v10 = *(v3 + 40);
      v13 = CEM::EmojiData::advance(v10, v9, v11, 0x200Du);
      if (a2 > 4)
      {
        v14 = 0;
      }

      else
      {
        v14 = dword_1D2B29FF8[a2];
      }

      CEM::EmojiData::advance(v10, v13, v12, v14);
      operator new();
    }

    return 0;
  }

  return v2;
}

void sub_1D2B14A0C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1D2B14920);
}

uint64_t CEMEmojiTokenSupportsHairStyleVariants(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    v2 = *(v1 + 40);
    v3 = *(v1 + 22);
    v4 = *(v2 + 44);
    if (v3 > v4 && *(v2 + 42) >= (v3 - v4))
    {
      return HIBYTE(*(**(v2 + 16) + 16 * (~v4 + v3) + 10)) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CEMEmojiTokenGetPresentationStyle(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    v2 = *(v1 + 40);
    v3 = *(v1 + 22);
    v4 = *(v2 + 44);
    if (v3 <= v4 || *(v2 + 42) < (v3 - v4))
    {
      return 0;
    }

    v5 = *(**(v2 + 16) + 16 * (~v4 + v3) + 10);
    result = (v5 & 0x20) != 0 ? 1 : 2;
    if ((v5 & 0x30) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CEMEmojiTokenCreateCopyRemovingModifiers(uint64_t a1)
{
  if (a1)
  {
    CopyRemovingModifiers = CEM::EmojiToken::createCopyRemovingModifiers(*(a1 + 24));
    std::shared_ptr<CEM::EmojiToken>::shared_ptr[abi:ne200100]<CEM::EmojiToken,0>(&v3, CopyRemovingModifiers);
  }

  return 0;
}

void sub_1D2B14B80(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1D2B14B6CLL);
}

BOOL CEMEmojiTokensAreEquivalent(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v3 = 0;
  }

  if (a2 && v3 && (v4 = *(a2 + 24)) != 0)
  {
    if (a3)
    {
      v5 = CEM::EmojiToken::baseIndex(v3);
      return v5 == CEM::EmojiToken::baseIndex(v4);
    }

    else
    {
      return v3[11] == v4[11];
    }
  }

  else
  {
    return (a1 | a2) == 0;
  }
}

__CFArray *CEMEmojiTokenCopyRelatedEmoji(__CFArray *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 3);
    v3 = *v2;
    if (*v2)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v4 = *(v3 + 24);
      if (v4)
      {
        v5 = v2[1];
        Value = CFDictionaryGetValue(v4, v5);
        if (Value)
        {
          for (i = 0; i < CFArrayGetCount(Value); ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
            if (CFStringCompare(ValueAtIndex, v5, 0))
            {
              operator new();
            }
          }
        }
      }

      sortEmojiTokens(&v10, *(v3 + 808));
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }

    v1 = CEM::EmojiToken::createWrappers(&v10, *(v1 + 5));
    v13 = &v10;
    std::vector<std::shared_ptr<CEM::EmojiToken>>::__destroy_vector::operator()[abi:ne200100](&v13);
  }

  return v1;
}

void sub_1D2B14E70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<std::shared_ptr<CEM::EmojiToken>>::__destroy_vector::operator()[abi:ne200100](&a13);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1D2B14E44);
}

uint64_t CEMEmojiTokenIsCommon(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    v2 = *(v1 + 40);
    v3 = *(v1 + 22);
    v4 = *(v2 + 44);
    if (v3 > v4 && *(v2 + 42) >= (v3 - v4))
    {
      return (*(**(v2 + 16) + 16 * (~v4 + v3) + 10) >> 7) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CEMEmojiTokenCopyName(uint64_t result)
{
  if (result)
  {
    CEM::EmojiToken::copyNameWithCount(*(result + 24));
  }

  return result;
}

uint64_t CEMEmojiTokenCopyNameWithCount(uint64_t result)
{
  if (result)
  {
    CEM::EmojiToken::copyNameWithCount(*(result + 24));
  }

  return result;
}

uint64_t CEMEmojiTokenGetIndex(uint64_t result)
{
  if (result)
  {
    return *(*(result + 24) + 22);
  }

  return result;
}

uint64_t CEMEmojiTokenGetLocaleData(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t CEMEmojiTokenIsSupportedForLocaleAndSearchMode(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && a2)
  {
    return CEM::EmojiLocaleData::emojiIndexIsSupported(*(a2 + 24), a3, *(*(a1 + 24) + 22));
  }

  else
  {
    return 0;
  }
}

BOOL CEMEmojiTokenIsPerson(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  CopyRemovingModifiers = CEM::EmojiToken::createCopyRemovingModifiers(*(a1 + 24));
  memset(v15, 0, sizeof(v15));
  v1 = v15;
  v2 = _convertUTF16StringToUTF32CharBuffer(v15, 32, *(CopyRemovingModifiers + 8));
  v3 = v15 + v2;
  if (v2)
  {
    v1 = v15;
    while (1)
    {
      v4 = *v1;
      if (*v1 <= 128103)
      {
        if (v4 == 9792 || v4 == 9794)
        {
          break;
        }
      }

      else if (v4 - 128104 < 2 || v4 == 129489)
      {
        break;
      }

      v7 = &kCEMPeopleAtomicCodepoints;
      v8 = 59;
      do
      {
        v9 = v8 >> 1;
        v10 = &v7[4 * (v8 >> 1)];
        v12 = *v10;
        v11 = (v10 + 1);
        v8 += ~(v8 >> 1);
        if (v12 < v4)
        {
          v7 = v11;
        }

        else
        {
          v8 = v9;
        }
      }

      while (v8);
      if (v7 != &unk_1D2B29EB4 && *v7 <= v4)
      {
        break;
      }

      if (++v1 == v3)
      {
        v1 = v3;
        break;
      }
    }
  }

  v13 = v1 != v3;
  std::unique_ptr<CEM::EmojiToken>::~unique_ptr[abi:ne200100](&CopyRemovingModifiers);
  return v13;
}

CFStringRef CEMEmojiTokenCopyGenmojiDescription(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 40))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  if (a2 == 2)
  {
    data = v3[3].data;
    if (!data)
    {
      operator new();
    }

    goto LABEL_14;
  }

  if (a2 == 1)
  {
    data = v3[3].info;
    if (!data)
    {
      operator new();
    }

    goto LABEL_14;
  }

  if (a2)
  {
    return 0;
  }

  data = v3[3].isa;
  if (!data)
  {
    operator new();
  }

LABEL_14:

  return CEM::LocalizedStringTable::copyValueForEmoji(data, v2);
}

uint64_t CEMLongCharacterIsEmoji(unsigned int a1)
{
  if (sharedEmojiData(void)::onceToken != -1)
  {
    dispatch_once(&sharedEmojiData(void)::onceToken, &__block_literal_global_59);
  }

  result = sharedEmojiData(void)::data;
  if (sharedEmojiData(void)::data)
  {
    CEM::EmojiData::advance(sharedEmojiData(void)::data, *(sharedEmojiData(void)::data + 32), 0x100000000, a1);
    return v4 & (v3 != 0);
  }

  return result;
}

uint64_t __CEMStringContainsEmoji_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a5 = 1;
  return result;
}

unsigned __int16 *CEMCopyEmojiTokens(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sharedEmojiData(void)::onceToken != -1)
  {
    dispatch_once(&sharedEmojiData(void)::onceToken, &__block_literal_global_59);
  }

  v4 = sharedEmojiData(void)::data;
  if (sharedEmojiData(void)::data)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (v4[21])
    {
      v6 = 1;
      do
      {
        if (CEM::EmojiData::isValidIndex(v4, v6))
        {
          String = CEM::EmojiData::createString(v4, (v4[22] + v6));
          if (String)
          {
            CFArrayAppendValue(Mutable, String);
            CFRelease(String);
          }
        }

        ++v6;
      }

      while (v4[21] >= v6);
    }

    if (Mutable)
    {
      v4 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      for (i = 0; i < CFArrayGetCount(Mutable); ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
        if (CFStringCompare(ValueAtIndex, @"🇹🇼", 0) || CEM::shouldShowTaiwanFlagEmoji(0))
        {
          v10 = CEMEmojiTokenCreateWithString(ValueAtIndex, a3);
          CFArrayAppendValue(v4, v10);
          CFRelease(v10);
        }
      }

      CFRelease(Mutable);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t CEMGetSharedEmojiCharacterSet()
{
  if (CEMGetSharedEmojiCharacterSet::onceToken != -1)
  {
    dispatch_once(&CEMGetSharedEmojiCharacterSet::onceToken, &__block_literal_global_46);
  }

  return CEMGetSharedEmojiCharacterSet::characterSet;
}

__n128 __Block_byref_object_copy__90(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__91(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void *CEM::ResourceCreationException::ResourceCreationException(void *a1, __int128 *a2)
{
  *a1 = &unk_1F4E07020;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void CEM::ResourceCreationException::~ResourceCreationException(std::exception *this)
{
  this->__vftable = &unk_1F4E07020;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  CEM::ResourceCreationException::~ResourceCreationException(this);

  JUMPOUT(0x1D38A8C30);
}

uint64_t CEM::ResourceCreationException::what(CEM::ResourceCreationException *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

__n128 __Block_byref_object_copy__94(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__95(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__shared_ptr_pointer<CEM::ReadOnlyFile<unsigned char> *,std::shared_ptr<CEM::ReadOnlyFile<unsigned char>>::__shared_ptr_default_delete<CEM::ReadOnlyFile<unsigned char>,CEM::ReadOnlyFile<unsigned char>>,std::allocator<CEM::ReadOnlyFile<unsigned char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001D2B281C3))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<CEM::ReadOnlyFile<unsigned char> *,std::shared_ptr<CEM::ReadOnlyFile<unsigned char>>::__shared_ptr_default_delete<CEM::ReadOnlyFile<unsigned char>,CEM::ReadOnlyFile<unsigned char>>,std::allocator<CEM::ReadOnlyFile<unsigned char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D38A8C30);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

void *CEM::ReadOnlyFileCreationException::ReadOnlyFileCreationException(void *a1, int a2)
{
  v3 = off_1E8404B08[a2 - 1];
  std::operator+<char>();
  CEM::ResourceCreationException::ResourceCreationException(a1, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  *a1 = &unk_1F4E06FF8;
  return a1;
}

void sub_1D2B158B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CEM::ReadOnlyFileCreationException::~ReadOnlyFileCreationException(std::exception *this)
{
  CEM::ResourceCreationException::~ResourceCreationException(this);

  JUMPOUT(0x1D38A8C30);
}

const __CFString *CEMCreateStringByStrippingEmojiCharacters(const __CFString *a1)
{
  v1 = a1;
  Length = CFStringGetLength(a1);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3002000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v3 = *MEMORY[0x1E695E480];
  cf = CFStringCreateMutable(*MEMORY[0x1E695E480], Length);
  CEMEnumerateEmojiTokensInStringWithBlock(v1, 0, Length);
  v4.location = v14[3];
  if (Length > v4.location)
  {
    v4.length = Length - v4.location;
    v5 = CFStringCreateWithSubstring(v3, v1, v4);
    CFStringAppend(v8[5], v5);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (v18[3])
  {
    v1 = v8[5];
    v8[5] = 0;
  }

  else
  {
    CFRetain(v1);
  }

  _Block_object_dispose(&v7, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v1;
}

void sub_1D2B15ACC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Block_object_dispose(va1, 8);
  nlp::CFScopedPtr<__CFString *>::reset((v2 + 40));
  _Block_object_dispose(va2, 8);
  _Block_object_dispose((v3 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void __CEMCreateStringByStrippingEmojiCharacters_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v8.location = *(*(*(a1 + 40) + 8) + 24);
  v8.length = a3 - v8.location;
  v7 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], *(a1 + 56), v8);
  CFStringAppend(*(*(*(a1 + 48) + 8) + 40), v7);
  *(*(*(a1 + 40) + 8) + 24) = a3 + a4;
  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_1D2B15BE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

const __CFString *CEMCreateStringByTranslatingEmojiCharactersToNameInString(const __CFString *a1, int a2, CFTypeRef cf)
{
  v3 = a1;
  if (a1)
  {
    v13 = 0;
    nlp::CFScopedPtr<__EmojiLocaleDataWrapper const*>::acquire(&v13, cf);
    v4 = v13;
    if (!v13)
    {
      v4 = CEMCreateEmojiLocaleData(@"en_US");
      v13 = v4;
    }

    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v3);
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2000000000;
    v8[3] = 0;
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2000000000;
    v7[3] = 0;
    Length = CFStringGetLength(v3);
    CEMEnumerateEmojiTokensInStringWithLocaleAndBlock(v3, 0, Length, v4);
    v3 = v10[3];
    _Block_object_dispose(v7, 8);
    _Block_object_dispose(v8, 8);
    _Block_object_dispose(&v9, 8);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return v3;
}

void __CEMCreateStringByTranslatingEmojiCharactersToNameInString_block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a1 + 64);
    CEM::EmojiToken::copyNameWithCount(*(a2 + 24));
  }

  if (cem_logging_get_default_log_onceToken != -1)
  {
    dispatch_once(&cem_logging_get_default_log_onceToken, &__block_literal_global_309);
  }

  v5 = cem_logging_get_default_log_log;
  if (os_log_type_enabled(cem_logging_get_default_log_log, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = MEMORY[0x1D38A8770](*(*(v8 + 24) + 32));
    }

    else
    {
      v9 = 0;
    }

    *buf = 138543874;
    v11 = a2;
    v12 = 2048;
    v13 = v7;
    v14 = 2114;
    v15 = v9;
    _os_log_debug_impl(&dword_1D2AFC000, v5, OS_LOG_TYPE_DEBUG, "Could not load name for emoji '%{public}@' for name type '%lu' for locale identifier '%{public}@'", buf, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1D2B15F8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__54(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__55(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

__n128 __Block_byref_object_copy__43(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__44(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__shared_ptr_pointer<CEM::ReadOnlyFile<char> *,std::shared_ptr<CEM::ReadOnlyFile<char>>::__shared_ptr_default_delete<CEM::ReadOnlyFile<char>,CEM::ReadOnlyFile<char>>,std::allocator<CEM::ReadOnlyFile<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001D2B2891FLL))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<CEM::ReadOnlyFile<char> *,std::shared_ptr<CEM::ReadOnlyFile<char>>::__shared_ptr_default_delete<CEM::ReadOnlyFile<char>,CEM::ReadOnlyFile<char>>,std::allocator<CEM::ReadOnlyFile<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D38A8C30);
}

uint64_t trie::MarisaTrie<unsigned int,char>::enumerateChildren(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v8[0] = &unk_1F4E07710;
    v8[1] = a3;
    v8[3] = v8;
    internal::marisa::Trie::enumerate_children(a1 + 2, a2, v8);
    result = std::__function::__value_func<void ()(char,internal::marisa::Cursor const&,BOOL &)>::~__value_func[abi:ne200100](v8);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D2B16150(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(char,internal::marisa::Cursor const&,BOOL &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(char,internal::marisa::Cursor const&,BOOL &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<trie::MarisaTrie<unsigned int,char>::enumerateChildren(internal::marisa::Cursor const&,std::function<void ()(char,internal::marisa::Cursor const&,BOOL &)> const&)::{lambda(char,internal::marisa::Cursor const&,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned int,char>::enumerateChildren(internal::marisa::Cursor const&,std::function<void ()(char,internal::marisa::Cursor const&,BOOL &)> const&)::{lambda(char,internal::marisa::Cursor const&,BOOL &)#1}>,void ()(char,internal::marisa::Cursor const&,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4trie10MarisaTrieIjcE17enumerateChildrenERKN8internal6marisa6CursorERKNSt3__18functionIFvcS6_RbEEEEUlcS6_S9_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<trie::MarisaTrie<unsigned int,char>::enumerateChildren(internal::marisa::Cursor const&,std::function<void ()(char,internal::marisa::Cursor const&,BOOL &)> const&)::{lambda(char,internal::marisa::Cursor const&,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned int,char>::enumerateChildren(internal::marisa::Cursor const&,std::function<void ()(char,internal::marisa::Cursor const&,BOOL &)> const&)::{lambda(char,internal::marisa::Cursor const&,BOOL &)#1}>,void ()(char,internal::marisa::Cursor const&,BOOL &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F4E07710;
  a2[1] = v2;
  return result;
}

uint64_t trie::MarisaTrie<unsigned int,char>::enumerateEntries(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[4] = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v10[0] = &unk_1F4E07690;
    v10[1] = a1;
    v10[2] = a3;
    v10[3] = v10;
    internal::marisa::Trie::enumerate_entries(a1 + 2, a2, v10, a4);
    result = std::__function::__value_func<void ()(unsigned long,std::string_view,BOOL &)>::~__value_func[abi:ne200100](v10);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D2B163A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned long,std::string_view,BOOL &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned long,std::string_view,BOOL &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<trie::MarisaTrie<unsigned int,char>::enumerateEntries(internal::marisa::Cursor const&,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned int,char>::enumerateEntries(internal::marisa::Cursor const&,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1}>,void ()(unsigned long,std::string_view,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4trie10MarisaTrieIjcE16enumerateEntriesERKN8internal6marisa6CursorERKNSt3__18functionIFvjNS7_17basic_string_viewIcNS7_11char_traitsIcEEEERbEEEiEUlmSC_SD_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<trie::MarisaTrie<unsigned int,char>::enumerateEntries(internal::marisa::Cursor const&,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned int,char>::enumerateEntries(internal::marisa::Cursor const&,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1}>,void ()(unsigned long,std::string_view,BOOL &)>::operator()(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  CustomPayload = trie::MarisaTrie<unsigned int,char>::getCustomPayload(*(a1 + 8), *a2);
  v9 = *(*(a1 + 16) + 24);

  return std::function<void ()(unsigned int,std::string_view,BOOL &)>::operator()(v9, CustomPayload, v6, v7, a4);
}

unint64_t trie::MarisaTrie<unsigned int,char>::getCustomPayload(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (v2 <= a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::out_of_range::out_of_range[abi:ne200100](exception, "Marisa Payload");
      __cxa_throw(exception, off_1E84048A8, MEMORY[0x1E69E5280]);
    }

    return *(*(a1 + 24) + 4 * a2);
  }

  return a2;
}

uint64_t std::function<void ()(unsigned int,std::string_view,BOOL &)>::operator()(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a3;
  v7[1] = a4;
  v6 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v6, v7, a5);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

__n128 std::__function::__func<trie::MarisaTrie<unsigned int,char>::enumerateEntries(internal::marisa::Cursor const&,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned int,char>::enumerateEntries(internal::marisa::Cursor const&,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1}>,void ()(unsigned long,std::string_view,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F4E07690;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t trie::MarisaTrie<unsigned int,char>::getPayload(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  if (!(*(*a1 + 112))(a1))
  {
    return 0;
  }

  v8 = 0;
  payload = internal::marisa::Trie::get_payload(a1 + 2, a2, &v8);
  if (payload)
  {
    *a3 = trie::MarisaTrie<unsigned int,char>::getCustomPayload(a1, v8);
  }

  return payload;
}

double trie::MarisaTrie<unsigned int,char>::root@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t trie::MarisaTrie<unsigned int,char>::enumerateCompletions(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F4E07610;
  v7[1] = a1;
  v7[2] = a4;
  v7[3] = v7;
  internal::marisa::Trie::predictive_search((a1 + 16), a2, a3, v7, a5);
  result = std::__function::__value_func<void ()(unsigned long,std::string_view,BOOL &)>::~__value_func[abi:ne200100](v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D2B167F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned long,std::string_view,BOOL &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<trie::MarisaTrie<unsigned int,char>::enumerateCompletions(std::string_view,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned int,char>::enumerateCompletions(std::string_view,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1}>,void ()(unsigned long,std::string_view,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4trie10MarisaTrieIjcE20enumerateCompletionsENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEERKNS2_8functionIFvjS6_RbEEEiEUlmS6_S8_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<trie::MarisaTrie<unsigned int,char>::enumerateCompletions(std::string_view,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned int,char>::enumerateCompletions(std::string_view,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1}>,void ()(unsigned long,std::string_view,BOOL &)>::operator()(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  CustomPayload = trie::MarisaTrie<unsigned int,char>::getCustomPayload(*(a1 + 8), *a2);
  v9 = *(*(a1 + 16) + 24);

  return std::function<void ()(unsigned int,std::string_view,BOOL &)>::operator()(v9, CustomPayload, v6, v7, a4);
}

__n128 std::__function::__func<trie::MarisaTrie<unsigned int,char>::enumerateCompletions(std::string_view,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned int,char>::enumerateCompletions(std::string_view,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1}>,void ()(unsigned long,std::string_view,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F4E07610;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t trie::MarisaTrie<unsigned int,char>::enumeratePrefixStrings(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F4E07580;
  v6[1] = a1;
  v6[2] = a4;
  v6[3] = v6;
  internal::marisa::Trie::common_prefix_search((a1 + 16), a2, a3, v6);
  result = std::__function::__value_func<void ()(unsigned long,std::string_view,BOOL &)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D2B169E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned long,std::string_view,BOOL &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<trie::MarisaTrie<unsigned int,char>::enumeratePrefixStrings(std::string_view,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&)::{lambda(unsigned long,std::string_view,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned int,char>::enumeratePrefixStrings(std::string_view,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&)::{lambda(unsigned long,std::string_view,BOOL &)#1}>,void ()(unsigned long,std::string_view,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4trie10MarisaTrieIjcE22enumeratePrefixStringsENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEERKNS2_8functionIFvjS6_RbEEEEUlmS6_S8_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<trie::MarisaTrie<unsigned int,char>::enumeratePrefixStrings(std::string_view,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&)::{lambda(unsigned long,std::string_view,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned int,char>::enumeratePrefixStrings(std::string_view,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&)::{lambda(unsigned long,std::string_view,BOOL &)#1}>,void ()(unsigned long,std::string_view,BOOL &)>::operator()(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  CustomPayload = trie::MarisaTrie<unsigned int,char>::getCustomPayload(*(a1 + 8), *a2);
  v9 = *(*(a1 + 16) + 24);

  return std::function<void ()(unsigned int,std::string_view,BOOL &)>::operator()(v9, CustomPayload, v6, v7, a4);
}

__n128 std::__function::__func<trie::MarisaTrie<unsigned int,char>::enumeratePrefixStrings(std::string_view,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&)::{lambda(unsigned long,std::string_view,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned int,char>::enumeratePrefixStrings(std::string_view,std::function<void ()(unsigned int,std::string_view,BOOL &)> const&)::{lambda(unsigned long,std::string_view,BOOL &)#1}>,void ()(unsigned long,std::string_view,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F4E07580;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t trie::MarisaTrie<unsigned int,char>::lookup(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4)
{
  v8 = 0;
  v6 = internal::marisa::Trie::lookup((a1 + 16), a2, a3, &v8);
  if (v6)
  {
    *a4 = trie::MarisaTrie<unsigned int,char>::getCustomPayload(a1, v8);
  }

  return v6;
}

uint64_t trie::MarisaTrie<unsigned int,char>::build(uint64_t a1, uint64_t **a2, int **a3)
{
  __p = 0;
  v29 = 0;
  v30 = 0;
  v5 = *a2;
  v6 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * (v6 - v5) != a3[1] - *a3)
  {
    __assert_rtn("build", "MarisaTrie.h", 61, "keys.size() == values.size()");
  }

  v9 = trie::MarisaTrie<unsigned int,char>::buildFromKeys(a1, v5, v6, &__p);
  if (v9)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = (v12 - v11) >> 2;
    if (v10 <= v13)
    {
      if (v10 >= v13)
      {
LABEL_16:
        v19 = a2[1] - *a2;
        if (v19)
        {
          v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 3);
          v21 = *a3;
          v22 = __p;
          if (v20 <= 1)
          {
            v20 = 1;
          }

          do
          {
            v24 = *v21++;
            v23 = v24;
            v25 = *v22++;
            *(v11 + 4 * v25) = v23;
            --v20;
          }

          while (v20);
        }

        v26 = (*(a1 + 48) - v11) >> 2;
        *(a1 + 24) = v11;
        *(a1 + 32) = v26;
        goto LABEL_21;
      }

      v18 = v11 - 0x5555555555555554 * (a2[1] - *a2);
    }

    else
    {
      v14 = v10 - v13;
      v15 = *(a1 + 56);
      if (v14 > (v15 - v12) >> 2)
      {
        if (!(v10 >> 62))
        {
          v16 = v15 - v11;
          if (v16 >> 1 > v10)
          {
            v10 = v16 >> 1;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v17 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v10;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(v17);
        }

        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      bzero(*(a1 + 48), 4 * v14);
      v18 = v12 + 4 * v14;
    }

    *(a1 + 48) = v18;
    goto LABEL_16;
  }

LABEL_21:
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_1D2B16DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t trie::MarisaTrie<unsigned int,char>::buildFromKeys(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  if (a2 != a3)
  {
    if ((*(a2 + 23) & 0x8000000000000000) != 0)
    {
      v5 = *a2;
      v4 = a2[1];
    }

    operator new();
  }

  internal::marisa::Trie::build((a1 + 16), &__p, a4, *(a1 + 8));
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return 1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t trie::MarisaTrie<unsigned int,char>::serialize@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  internal::marisa::Trie::write((a1 + 16), &v18);
  if ((v25 & 0x10) != 0)
  {
    v5 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v5 = v21;
    }

    locale = v20[4].__locale_;
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v4 = 0;
      HIBYTE(v16) = 0;
      goto LABEL_14;
    }

    locale = v20[1].__locale_;
    v5 = v20[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v16) = v5 - locale;
  if (v4)
  {
    memmove(&__dst, locale, v4);
  }

LABEL_14:
  *(&__dst + v4) = 0;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = SHIBYTE(v16);
    if (v16 >= 0)
    {
      v9 = HIBYTE(v16);
    }

    else
    {
      v9 = *(&__dst + 1);
    }

    *__s = v9;
    v10 = *(a1 + 24);
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    a2->__r_.__value_.__r.__words[0] = 0;
    std::string::append(a2, __s, 4uLL);
    if (v8 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    std::string::append(a2, p_dst, v9);
    std::string::append(a2, v10, 4 * v7);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = __dst;
    a2->__r_.__value_.__r.__words[2] = v16;
  }

  v17[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v18 = v12;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1D38A8BC0](&v26);
}

void sub_1D2B172B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10);
  MEMORY[0x1D38A8BC0](va);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  *(a1 + 128) = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x1E69E5560] + 64;
  *(a1 + 16) = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  *(a1 + 8) = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, (a1 + 24));
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  *(a1 + 16) = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  *(a1 + 128) = v2;
  v13 = MEMORY[0x1E69E5538] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v13;
  MEMORY[0x1D38A8B90](a1 + 32);
  *(a1 + 88) = 0;
  v14 = a1 + 88;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 24;
  *(a1 + 112) = a1 + 88;
  *(a1 + 40) = a1 + 88;
  *(a1 + 48) = a1 + 88;
  *(a1 + 56) = a1 + 88;
  std::string::resize((a1 + 88), 0x16uLL, 0);
  v15 = *(a1 + 111);
  if (v15 < 0)
  {
    v15 = *(a1 + 96);
  }

  *(a1 + 64) = v14;
  *(a1 + 72) = v14;
  *(a1 + 80) = v14 + v15;
  return a1;
}

void sub_1D2B17610(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v1 + 24) = v3;
  std::locale::~locale((v1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1D38A8BC0](v2);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t trie::Trie<unsigned int,char,internal::marisa::Cursor>::enumerateCompletions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F4E07500;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3, v6);
  result = std::__function::__value_func<void ()(unsigned int,std::string_view,BOOL &)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D2B1784C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned int,std::string_view,BOOL &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,std::string_view,BOOL &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<trie::Trie<unsigned int,char,internal::marisa::Cursor>::enumerateCompletions(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&,int)::{lambda(unsigned int,std::string_view,BOOL &)#1},std::allocator<trie::Trie<unsigned int,char,internal::marisa::Cursor>::enumerateCompletions(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&,int)::{lambda(unsigned int,std::string_view,BOOL &)#1}>,void ()(unsigned int,std::string_view,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4trie4TrieIjcN8internal6marisa6CursorEE20enumerateCompletionsEPKcmRKNSt3__18functionIFvxNS7_17basic_string_viewIcNS7_11char_traitsIcEEEERbEEEiEUljSC_SD_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<void ()(long long,std::string_view,BOOL &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a3;
  v7[1] = a4;
  v6 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v6, v7, a5);
}

uint64_t std::__function::__func<trie::Trie<unsigned int,char,internal::marisa::Cursor>::enumerateCompletions(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&,int)::{lambda(unsigned int,std::string_view,BOOL &)#1},std::allocator<trie::Trie<unsigned int,char,internal::marisa::Cursor>::enumerateCompletions(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&,int)::{lambda(unsigned int,std::string_view,BOOL &)#1}>,void ()(unsigned int,std::string_view,BOOL &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F4E07500;
  a2[1] = v2;
  return result;
}

uint64_t trie::Trie<unsigned int,char,internal::marisa::Cursor>::enumeratePrefixStrings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F4E07480;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3, v6);
  result = std::__function::__value_func<void ()(unsigned int,std::string_view,BOOL &)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D2B17AE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned int,std::string_view,BOOL &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<trie::Trie<unsigned int,char,internal::marisa::Cursor>::enumeratePrefixStrings(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&)::{lambda(unsigned int,std::string_view,BOOL &)#1},std::allocator<trie::Trie<unsigned int,char,internal::marisa::Cursor>::enumeratePrefixStrings(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&)::{lambda(unsigned int,std::string_view,BOOL &)#1}>,void ()(unsigned int,std::string_view,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4trie4TrieIjcN8internal6marisa6CursorEE22enumeratePrefixStringsEPKcmRKNSt3__18functionIFvxNS7_17basic_string_viewIcNS7_11char_traitsIcEEEERbEEEEUljSC_SD_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<trie::Trie<unsigned int,char,internal::marisa::Cursor>::enumeratePrefixStrings(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&)::{lambda(unsigned int,std::string_view,BOOL &)#1},std::allocator<trie::Trie<unsigned int,char,internal::marisa::Cursor>::enumeratePrefixStrings(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&)::{lambda(unsigned int,std::string_view,BOOL &)#1}>,void ()(unsigned int,std::string_view,BOOL &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F4E07480;
  a2[1] = v2;
  return result;
}

uint64_t trie::Trie<unsigned int,char,internal::marisa::Cursor>::lookup(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3, &v6);
  *a4 = v6;
  return result;
}

uint64_t trie::Trie<unsigned int,char,internal::marisa::Cursor>::build(uint64_t *a1, uint64_t a2, void **a3, size_t *a4, _DWORD *a5)
{
  v5 = a5;
  v28 = 0;
  v29 = 0;
  value = 0;
  v27 = 0;
  if (a2)
  {
    v8 = a2;
    v9 = a5;
    do
    {
      v10 = *a3;
      v12 = *a4++;
      v11 = v12;
      v13 = v29;
      if (v29 >= value)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3) + 1;
        if (v15 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((value - v28) >> 3) > v15)
        {
          v15 = 0x5555555555555556 * ((value - v28) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((value - v28) >> 3) >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v15;
        }

        v31.__end_cap_.__value_ = &v28;
        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v16);
        }

        v31.__first_ = 0;
        v31.__begin_ = (8 * ((v29 - v28) >> 3));
        v31.__end_ = v31.__begin_;
        v31.__end_cap_.__value_ = 0;
        std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,char const*,unsigned long,void,0>(v31.__begin_, v10, v11);
        v14 = v31.__end_ + 1;
        v17 = (v31.__begin_ - (v29 - v28));
        memcpy(v17, v28, v29 - v28);
        v18 = v28;
        v19 = value;
        v28 = v17;
        v29 = v14;
        value = v31.__end_cap_.__value_;
        v31.__first_ = v18;
        v31.__end_ = v18;
        v31.__end_cap_.__value_ = v19;
        v31.__begin_ = v18;
        std::__split_buffer<std::string>::~__split_buffer(&v31);
      }

      else
      {
        std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,char const*,unsigned long,void,0>(v29, *a3, v11);
        v14 = v13 + 1;
      }

      v29 = v14;
      if (v5)
      {
        if (((v27 >> 2) + 1) >> 62)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        if (v27 >> 2 != -1)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>((v27 >> 2) + 1);
        }

        v20 = (4 * (v27 >> 2));
        *v20 = *v9;
        memcpy(0, 0, v27);
        v5 = a5;
        v27 = (v20 + 1);
      }

      v9 += 2;
      ++a3;
      --v8;
    }

    while (v8);
  }

  v21 = *a1;
  if (v5)
  {
    v22 = (*(v21 + 64))();
  }

  else
  {
    v22 = (*(v21 + 56))();
  }

  v23 = v22;
  v31.__first_ = &v28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
  return v23;
}

void sub_1D2B17F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, std::__split_buffer<std::string> *a10, uint64_t a11, void *__pa, void *a13, uint64_t a14, char a15)
{
  if (__pa)
  {
    a13 = __pa;
    operator delete(__pa);
  }

  __pa = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__pa);
  _Unwind_Resume(a1);
}

_BYTE *std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,char const*,unsigned long,void,0>(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    __dst = memmove(__dst, __src, __len);
  }

  v4[__len] = 0;
  return __dst;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void trie::MarisaTrie<unsigned int,char>::~MarisaTrie(void *a1)
{
  trie::MarisaTrie<unsigned int,char>::~MarisaTrie(a1);

  JUMPOUT(0x1D38A8C30);
}

void CEM::EmojiSearchTrie::payloadToIndexes(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *a1;
  v5 = (*a1 + 2 * (a2 & 0x3FFFFF));
  if (a1[15])
  {
    v7 = a1[1];
    v17 = (v4 + 2 * v7);
    if (v5 == v17)
    {
      return;
    }

    v6 = (*a1 + 2 * (a2 & 0x3FFFFF));
    while (*v6)
    {
      if (++v6 == v17)
      {
        v6 = (v4 + 2 * v7);
        break;
      }
    }
  }

  else
  {
    v6 = (v5 + ((a2 >> 21) & 0x7FE));
    v7 = a1[1];
  }

  if (v4 + 2 * v7 >= v6 && v5 != v6)
  {
    v8 = *(a3 + 8);
    do
    {
      v9 = *(a3 + 16);
      if (v8 >= v9)
      {
        v10 = *a3;
        v11 = v8 - *a3;
        v12 = v11 >> 1;
        if (v11 >> 1 <= -2)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v13 = v9 - v10;
        if (v13 <= v12 + 1)
        {
          v14 = v12 + 1;
        }

        else
        {
          v14 = v13;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(v15);
        }

        *(2 * v12) = *v5;
        v8 = (2 * v12 + 2);
        memcpy(0, v10, v11);
        v16 = *a3;
        *a3 = 0;
        *(a3 + 8) = v8;
        *(a3 + 16) = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v8++ = *v5;
      }

      *(a3 + 8) = v8;
      ++v5;
    }

    while (v5 != v6);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 CEM::replace(uint64_t a1, std::string *this, uint64_t a3, uint64_t a4)
{
  for (i = 0; ; i += v23)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v10 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
    }

    else
    {
      v10 = this;
    }

    v11 = *(a3 + 23);
    v12 = v11 >= 0 ? a3 : *a3;
    v13 = v11 >= 0 ? *(a3 + 23) : *(a3 + 8);
    v14 = size - i;
    if (size < i)
    {
      break;
    }

    if (v13)
    {
      if (v14 >= v13)
      {
        v15 = v10 + size;
        v16 = v10 + i;
        v17 = *v12;
        while (v14 - v13 != -1)
        {
          v18 = memchr(v16, v17, v14 - v13 + 1);
          if (!v18)
          {
            break;
          }

          v19 = v18;
          if (!memcmp(v18, v12, v13))
          {
            if (v19 == v15)
            {
              goto LABEL_32;
            }

            i = v19 - v10;
            goto LABEL_22;
          }

          v16 = v19 + 1;
          v14 = v15 - (v19 + 1);
          if (v14 < v13)
          {
            goto LABEL_32;
          }
        }
      }

      break;
    }

LABEL_22:
    if (i == -1)
    {
      break;
    }

    v20 = *(a4 + 23);
    if (v20 >= 0)
    {
      v21 = a4;
    }

    else
    {
      v21 = *a4;
    }

    if (v20 >= 0)
    {
      v22 = *(a4 + 23);
    }

    else
    {
      v22 = *(a4 + 8);
    }

    std::string::replace(this, i, v13, v21, v22);
    v23 = *(a4 + 23);
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(a4 + 8);
    }
  }

LABEL_32:
  result = *&this->__r_.__value_.__l.__data_;
  *a1 = *&this->__r_.__value_.__l.__data_;
  *(a1 + 16) = *(&this->__r_.__value_.__l + 2);
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  return result;
}

uint64_t CEM::EmojiSearchTrie::getPayload(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  v11 = a3;
  if ((*(a1 + 120) & 2) != 0)
  {
    internal::marisa::Trie::advance((a1 + 32), &v11, 1uLL, a2, v9);
    Payload = trie::MarisaTrie<unsigned int,char>::getPayload((a1 + 16), v9, a4);
    if (v10 < 0)
    {
      operator delete(v9[1]);
    }

    return Payload;
  }

  else
  {
    v6 = (a1 + 16);

    return trie::MarisaTrie<unsigned int,char>::getPayload(v6, a2, a4);
  }
}

void sub_1D2B18524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<CEM::EmojiSearchTrie::findEmojiForSingleWord(__CFString const*,__CFString const*,CEMEmojiSearchType,unsigned char)::$_0,std::allocator<CEM::EmojiSearchTrie::findEmojiForSingleWord(__CFString const*,__CFString const*,CEMEmojiSearchType,unsigned char)::$_0>,void ()(unsigned int,std::string_view,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK3CEM15EmojiSearchTrie22findEmojiForSingleWordEPK10__CFStringS3_18CEMEmojiSearchTypehE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<CEM::EmojiSearchTrie::findEmojiForSingleWord(__CFString const*,__CFString const*,CEMEmojiSearchType,unsigned char)::$_0,std::allocator<CEM::EmojiSearchTrie::findEmojiForSingleWord(__CFString const*,__CFString const*,CEMEmojiSearchType,unsigned char)::$_0>,void ()(unsigned int,std::string_view,BOOL &)>::operator()(uint64_t a1, unsigned int *a2, void *a3)
{
  v3 = *a2;
  if ((*(*(a1 + 8) + 120) & 2) == 0 || (v4 = a3[1]) != 0 && **(a1 + 16) == *(*a3 + v4 - 1))
  {
    CEM::EmojiSearchTrie::payloadToIndexes(*(a1 + 8), v3, *(a1 + 24));
  }
}

__n128 std::__function::__func<CEM::EmojiSearchTrie::findEmojiForSingleWord(__CFString const*,__CFString const*,CEMEmojiSearchType,unsigned char)::$_0,std::allocator<CEM::EmojiSearchTrie::findEmojiForSingleWord(__CFString const*,__CFString const*,CEMEmojiSearchType,unsigned char)::$_0>,void ()(unsigned int,std::string_view,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F4E07328;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__throw_out_of_range[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, "basic_string");
  __cxa_throw(exception, off_1E84048A8, MEMORY[0x1E69E5280]);
}

CEM::AdaptationDatabaseController *std::unique_ptr<CEM::AdaptationDatabaseController>::reset[abi:ne200100](CEM::AdaptationDatabaseController **a1, CEM::AdaptationDatabaseController *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CEM::AdaptationDatabaseController::~AdaptationDatabaseController(result);

    JUMPOUT(0x1D38A8C30);
  }

  return result;
}

void CEM::AdaptationDatabaseController::~AdaptationDatabaseController(CEM::AdaptationDatabaseController *this)
{
  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  v2 = *(this + 17);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::mutex::~mutex(this + 1);

  std::mutex::~mutex(this);
}

BOOL trie::CedarMinimalPrefixTrie<unsigned int,char>::addEntry(uint64_t a1, unsigned __int8 *a2, unint64_t a3, _DWORD *a4)
{
  if (a3)
  {
    v56 = 0;
    if (!*(a1 + 40) || !*(a1 + 48))
    {
      cedar::da<unsigned int,-1,-2,true,1,0ul>::restore(a1 + 8);
    }

    v8 = **(a1 + 16);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = 0;
      v10 = a2;
      while (-a3 != v9)
      {
        v11 = cedar::da<unsigned int,-1,-2,true,1,0ul>::_follow<cedar::da<unsigned int,-1,-2,true,1,0ul>::empty_callback>(a1 + 8, &v56, v10);
        v12 = v11;
        v56 = v11;
        v8 = *(*(a1 + 16) + 8 * v11);
        --v9;
        ++v10;
        if (v8 < 0)
        {
          v13 = -v9;
          goto LABEL_11;
        }
      }

      v62 = 0;
      v19 = a1 + 8;
      v20 = &v62;
      goto LABEL_34;
    }

    v12 = 0;
    v13 = 0;
LABEL_11:
    v14 = -v8;
    if (v14 >= 4)
    {
      v15 = (*(a1 + 24) + v14);
      v16 = &v15[-v13];
      v17 = v13;
      if (v13 < a3)
      {
        v17 = v13;
        while (1)
        {
          v18 = *v15++;
          if (a2[v17] != v18)
          {
            break;
          }

          if (a3 == ++v17)
          {
            goto LABEL_19;
          }
        }
      }

      if (v17 == a3)
      {
LABEL_19:
        v21 = &v16[a3];
        v17 = a3;
        if (!v16[a3])
        {
          goto LABEL_51;
        }
      }

      v55 = a4;
      if (HIDWORD(v12))
      {
        v56 = v12;
        v22 = *(*(a1 + 16) + 8 * v12);
        v23 = -v22;
        if (v14 > -v22)
        {
          do
          {
            v61 = *(*(a1 + 24) + v23);
            v56 = cedar::da<unsigned int,-1,-2,true,1,0ul>::_follow<cedar::da<unsigned int,-1,-2,true,1,0ul>::empty_callback>(a1 + 8, &v56, &v61);
            ++v23;
          }

          while (v14 != v23);
        }
      }

      v24 = v17 - v13;
      if (v17 > v13)
      {
        v25 = &a2[v13];
        v26 = v24;
        do
        {
          v27 = *v25++;
          v60 = v27;
          v56 = cedar::da<unsigned int,-1,-2,true,1,0ul>::_follow<cedar::da<unsigned int,-1,-2,true,1,0ul>::empty_callback>(a1 + 8, &v56, &v60);
          --v26;
        }

        while (v26);
      }

      v28 = &v16[v17];
      if (v16[v17])
      {
        v59 = v16[v17];
        *(*(a1 + 16) + 8 * cedar::da<unsigned int,-1,-2,true,1,0ul>::_follow<cedar::da<unsigned int,-1,-2,true,1,0ul>::empty_callback>(a1 + 8, &v56, &v59)) = v8 + ~v24;
        v24 -= 4;
      }

      v29 = __CFADD__(v24, v14);
      v30 = v24 + v14;
      a4 = v55;
      if (!v29)
      {
        do
        {
          v31 = *(a1 + 80);
          v32 = *(a1 + 32);
          v33 = *v32 + 1;
          *v32 = v33;
          if (v31 == v33)
          {
            v34 = 2 * *(a1 + 80);
            *(a1 + 80) = v34;
            cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<int>((a1 + 32), v34, **(a1 + 32));
          }

          *(*(a1 + 32) + 4 * **(a1 + 32)) = v14;
          v14 += 5;
        }

        while (v14 <= v30);
      }

      if (v17 == a3)
      {
        v58 = 0;
        v19 = a1 + 8;
        v20 = &v58;
LABEL_34:
        v35 = (*(a1 + 16) + 8 * cedar::da<unsigned int,-1,-2,true,1,0ul>::_follow<cedar::da<unsigned int,-1,-2,true,1,0ul>::empty_callback>(v19, &v56, v20));
LABEL_52:
        *v35 = *a4;
        return a3 != 0;
      }

      if (!*v28)
      {
        v58 = 0;
        v36 = cedar::da<unsigned int,-1,-2,true,1,0ul>::_follow<cedar::da<unsigned int,-1,-2,true,1,0ul>::empty_callback>(a1 + 8, &v56, &v58);
        *(*(a1 + 16) + 8 * v36) += *(v28 + 1);
      }

      v57 = a2[v17];
      v12 = cedar::da<unsigned int,-1,-2,true,1,0ul>::_follow<cedar::da<unsigned int,-1,-2,true,1,0ul>::empty_callback>(a1 + 8, &v56, &v57);
      v13 = v17 + 1;
    }

    v37 = a3 - v13;
    if (a3 == v13)
    {
      v38 = *(a1 + 32);
      v39 = *v38;
      if (v39)
      {
        v40 = v38[v39];
        *(*(a1 + 24) + v40) = 0;
        *(*(a1 + 16) + 8 * v12) = -v40;
        --**(a1 + 32);
        v41 = *(a1 + 24) + v40;
        *(v41 + 1) = 0;
        v35 = (v41 + 1);
        goto LABEL_52;
      }
    }

    v42 = v37 + 5;
    v44 = (a1 + 24);
    v43 = *(a1 + 24);
    v45 = *(a1 + 76);
    v46 = *v43;
    if (v45 < *v43 + v37 + 5)
    {
      if (v45 <= v42)
      {
        v47 = v37 + 5;
      }

      else
      {
        v47 = *(a1 + 76);
      }

      *(a1 + 76) = v47 + v45;
      cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<char>((a1 + 24), v47 + v45, *v43);
      v46 = **(a1 + 24);
    }

    *(*(a1 + 16) + 8 * v12) = -v46;
    v48 = *(a1 + 24);
    v49 = *v48;
    v50 = v48 + v49;
    v51 = v48 + v49 - v13;
    if (a3 > v13)
    {
      v52 = &a2[v13];
      do
      {
        v53 = *v52++;
        *v50++ = v53;
        --v37;
      }

      while (v37);
      v48 = *v44;
      LODWORD(v49) = **v44;
    }

    *v48 = v49 + v42;
    v21 = &v51[a3];
LABEL_51:
    v35 = v21 + 1;
    goto LABEL_52;
  }

  return a3 != 0;
}

void cedar::da<unsigned int,-1,-2,true,1,0ul>::restore(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = (a1 + 40);
  if (!v3)
  {
    cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::block>(v2, *(a1 + 64) >> 8, 0);
    *(a1 + 56) = 0;
    *(a1 + 52) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 64) >= 1)
    {
      v4 = 0;
      v5 = 0;
      v6 = *(a1 + 40);
      v7 = 256;
      while (1)
      {
        v8 = (v6 + 20 * v4);
        *(v8 + 4) = 0;
        if (v5 >= (v4 << 8) + 256)
        {
          break;
        }

        v9 = 0;
        v10 = v5;
        v11 = (*(a1 + 8) + 8 * v5 + 4);
        do
        {
          v12 = *v11;
          v11 += 2;
          if (v12 < 0)
          {
            v15 = v9++ == 0;
            *(v8 + 4) = v9;
            if (v15)
            {
              v8[4] = v5;
              v9 = 1;
            }
          }

          ++v10;
          LODWORD(v5) = v5 + 1;
        }

        while (v7 != v10);
        if (v9)
        {
          v13 = (a1 + 56);
        }

        else
        {
          v13 = (a1 + 48);
        }

        if (v9 == 1)
        {
          v13 = (a1 + 52);
        }

        v14 = *v13;
        if (*v13)
        {
          v15 = 1;
        }

        else
        {
          v15 = v9 == 0;
        }

        if (v15)
        {
          v5 = v10;
LABEL_23:
          v16 = (v6 + 20 * v14);
          v17 = *v16;
          *v8 = *v16;
          v8[1] = *v13;
          v18 = (v6 + 20 * v17 + 4);
          v10 = v5;
          v8 = v16;
          goto LABEL_24;
        }

        v18 = v8 + 1;
LABEL_24:
        *v18 = v4;
        *v8 = v4;
        *v13 = v4++;
        v7 += 256;
        v5 = v10;
        if (v10 >= *(a1 + 64))
        {
          goto LABEL_25;
        }
      }

      v14 = *(a1 + 48);
      v13 = (a1 + 48);
      goto LABEL_23;
    }
  }

LABEL_25:
  v19 = (a1 + 32);
  v20 = *(a1 + 64);
  if (!*(a1 + 32))
  {
    cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::ninfo>((a1 + 32), v20, 0);
    v20 = *(a1 + 64);
    if (v20 >= 1)
    {
      for (i = 0; i < v20; ++i)
      {
        v22 = *(a1 + 8);
        v23 = *(v22 + 8 * i + 4);
        if ((v23 & 0x80000000) == 0)
        {
          v24 = *(v22 + 8 * v23);
          v25 = (v24 ^ i);
          if (v24 != i)
          {
            v26 = *v19;
            v27 = *v19 + 2 * v23;
            v30 = *(v27 + 1);
            v29 = (v27 + 1);
            v28 = v30;
            if (v23)
            {
              v31 = v28 == 0;
            }

            else
            {
              v31 = 0;
            }

            if (!v31 || (v28 = 0, *(v22 + 8 * v24 + 4) == v23))
            {
              if (v28 < v25)
              {
                do
                {
                  v32 = v24 ^ v28;
                  v28 = *(v26 + 2 * (v24 ^ v28));
                  if (*(v26 + 2 * v32))
                  {
                    v33 = v28 >= v25;
                  }

                  else
                  {
                    v33 = 1;
                  }
                }

                while (!v33);
                v29 = (v26 + 2 * v32);
              }
            }

            *(v26 + 2 * ((v24 ^ i) ^ v24)) = v28;
            *v29 = v25;
            v20 = *(a1 + 64);
          }
        }
      }
    }
  }

  *(a1 + 60) = v20;
  *(a1 + 68) = **(a1 + 16);
  *(a1 + 72) = 1;
}

uint64_t cedar::da<unsigned int,-1,-2,true,1,0ul>::_follow<cedar::da<unsigned int,-1,-2,true,1,0ul>::empty_callback>(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v92 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = *(v6 + 8 * *a2);
  v9 = *a3;
  if (v8 < 0 || (v10 = v8 ^ v9, v11 = *(v6 + 8 * v10 + 4), (v11 & 0x80000000) != 0))
  {
    result = cedar::da<unsigned int,-1,-2,true,1,0ul>::_pop_enode(a1, *(v6 + 8 * *a2), *a3, v7);
    v22 = *a3;
    v23 = *(a1 + 32);
    v24 = v23 + 2 * *a2;
    v27 = *(v24 + 1);
    v26 = (v24 + 1);
    v25 = v27;
    if ((v8 & 0x80000000) == 0 && v25 < v22)
    {
      do
      {
        v28 = result ^ v25 ^ v22;
        v25 = *(v23 + 2 * v28);
        if (*(v23 + 2 * v28))
        {
          v29 = v25 >= v22;
        }

        else
        {
          v29 = 1;
        }
      }

      while (!v29);
      v26 = (v23 + 2 * v28);
    }

    *(v23 + 2 * result) = v25;
    *v26 = v22;
  }

  else
  {
    result = v8 ^ v9;
    if (v11 != v7)
    {
      v13 = *(v6 + 8 * v11);
      v14 = *(a1 + 32);
      v15 = *(v14 + 2 * v7 + 1);
      LOBYTE(v16) = v15;
      LOBYTE(v17) = *(v14 + 2 * v11 + 1);
      while (1)
      {
        v18 = 2 * (v13 ^ v17);
        v17 = *(v14 + v18);
        if (!*(v14 + v18))
        {
          break;
        }

        v16 = *(v14 + 2 * (v8 ^ v16));
        if (!v16)
        {
          v19 = a1;
          v20 = *(v6 + 8 * *a2);
          v21 = v9;
          goto LABEL_18;
        }
      }

      v19 = a1;
      v20 = *(v6 + 8 * v11);
      v15 = *(v14 + 2 * v11 + 1);
      v21 = -1;
LABEL_18:
      v30 = cedar::da<unsigned int,-1,-2,true,1,0ul>::_set_child(v19, v91, v20, v15, v21);
      v31 = v30;
      if (v91 == v30)
      {
        place = cedar::da<unsigned int,-1,-2,true,1,0ul>::_find_place(a1);
      }

      else
      {
        v32 = *(a1 + 56);
        if (v32)
        {
          v33 = *(*(a1 + 40) + 20 * v32);
          v34 = (v30 - v91 + 1);
          v35 = a1 + 80;
          v88 = v33;
          do
          {
            v36 = *(a1 + 40);
            v37 = v36 + 20 * v32;
            v38 = *(v37 + 8);
            if (v38 >= v34 && v34 < *(v37 + 10))
            {
              v39 = *(a1 + 8);
              place = *(v37 + 16);
              do
              {
                v41 = v91;
                while (1)
                {
                  v42 = *++v41;
                  if ((*(v39 + 8 * (place ^ v91[0] ^ v42) + 4) & 0x80000000) == 0)
                  {
                    break;
                  }

                  if (v41 == v31)
                  {
                    *(v37 + 16) = place;
                    goto LABEL_37;
                  }
                }

                v43 = *(v39 + 8 * place + 4);
                place = -v43;
              }

              while (*(v37 + 16) + v43);
            }

            *(v37 + 10) = v34;
            if (v34 < *(v35 + 2 * v38))
            {
              *(v35 + 2 * v38) = v34;
            }

            v44 = *(v37 + 4);
            v45 = *(v37 + 12);
            *(v37 + 12) = v45 + 1;
            if (!v45)
            {
              cedar::da<unsigned int,-1,-2,true,1,0ul>::_transfer_block(v36, v32, (a1 + 56), (a1 + 52));
              v35 = a1 + 80;
              v33 = v88;
            }

            v46 = v32 == v33;
            v32 = v44;
          }

          while (!v46);
        }

        place = cedar::da<unsigned int,-1,-2,true,1,0ul>::_add_block(a1) << 8;
LABEL_37:
        v10 = v8 ^ v9;
      }

      v47 = place ^ v91[0];
      if (v17)
      {
        v48 = v8;
      }

      else
      {
        v48 = v13;
      }

      v90 = v48;
      if (v17)
      {
        v49 = *a2;
      }

      else
      {
        v49 = v11;
      }

      if (v17 && v91[0] == v9)
      {
        *(*(a1 + 32) + 2 * *a2 + 1) = v9;
      }

      *(*(a1 + 8) + 8 * v49) = v47;
      v50 = a2;
      if (v91 <= v31)
      {
        if (v9)
        {
          v51 = -1;
        }

        else
        {
          v51 = 0;
        }

        v85 = v51;
        v86 = v48 >> 8;
        v52 = v91;
        v84 = 2 * v10;
        v89 = v49;
        while (1)
        {
          v53 = cedar::da<unsigned int,-1,-2,true,1,0ul>::_pop_enode(a1, v47, *v52, v49);
          if (v52 == v31)
          {
            v54 = 0;
          }

          else
          {
            v54 = v52[1];
          }

          v55 = v90 ^ *v52;
          *(*(a1 + 32) + 2 * v53) = v54;
          if (v17 && v55 == v10)
          {
            goto LABEL_89;
          }

          v56 = v47;
          v57 = v10;
          v58 = *(a1 + 8);
          v59 = (v58 + 8 * v53);
          v60 = v55;
          v61 = (v58 + 8 * v55);
          v62 = *v61;
          *v59 = *v61;
          if (v62 >= 1 && *v52)
          {
            v63 = *(a1 + 32);
            v64 = *(v63 + 2 * v55 + 1);
            *(v63 + 2 * v53 + 1) = v64;
            v65 = *(a1 + 8);
            v66 = *v59;
            do
            {
              *(v65 + 8 * (v66 ^ v64) + 4) = v53;
              v66 = *v59;
              v64 = *(v63 + 2 * (*v59 ^ v64));
            }

            while (v64);
          }

          v67 = *v50;
          if (!v17 && v55 == v67)
          {
            *v50 = v53;
            v67 = v53;
          }

          v68 = v17 == 0;
          if (v55 != v57)
          {
            v68 = 0;
          }

          if (!v68)
          {
            break;
          }

          v69 = *(a1 + 32);
          v70 = v69 + 2 * v67;
          v73 = *(v70 + 1);
          v72 = (v70 + 1);
          LOBYTE(v71) = v73;
          if (v73 < v9)
          {
            do
            {
              v74 = v8 ^ v71;
              v71 = *(v69 + 2 * v74);
              if (*(v69 + 2 * v74))
              {
                v75 = v71 >= v9;
              }

              else
              {
                v75 = 1;
              }
            }

            while (!v75);
            v72 = (v69 + 2 * v74);
          }

          *(v69 + v84) = v71;
          *v72 = v9;
          *(*(a1 + 32) + 2 * v60 + 1) = 0;
          *v61 = v85;
          v61[1] = *v50;
LABEL_88:
          v10 = v57;
          v47 = v56;
          v49 = v89;
LABEL_89:
          if (++v52 > v31)
          {
            goto LABEL_90;
          }
        }

        v76 = *(a1 + 40) + 20 * v86;
        v77 = *(v76 + 8);
        *(v76 + 8) = v77 + 1;
        if (!v77)
        {
          *(v76 + 16) = v55;
          *(*(a1 + 8) + 8 * v55) = -v55 | (-v55 << 32);
          if (v90 >= 0x100)
          {
            cedar::da<unsigned int,-1,-2,true,1,0ul>::_transfer_block(*(a1 + 40), v86, (a1 + 48), (a1 + 52));
          }

          goto LABEL_85;
        }

        v78 = *(v76 + 16);
        v79 = *(a1 + 8);
        v80 = *(v79 + 8 * v78 + 4);
        *(v79 + 8 * v55) = -v78 | (v80 << 32);
        v81 = -v55;
        *(*(a1 + 8) + 8 * -v80) = v81;
        *(*(a1 + 8) + 8 * v78 + 4) = v81;
        if (*(v76 + 8) == 2)
        {
          if (v90 < 0x100)
          {
            goto LABEL_84;
          }
        }

        else if (v90 < 0x100 || *(v76 + 12) != 1)
        {
          goto LABEL_84;
        }

        cedar::da<unsigned int,-1,-2,true,1,0ul>::_transfer_block(*(a1 + 40), v86, (a1 + 52), (a1 + 56));
LABEL_84:
        *(v76 + 12) = 0;
LABEL_85:
        v82 = *(a1 + 80 + 2 * *(v76 + 8));
        if (*(v76 + 10) < v82)
        {
          *(v76 + 10) = v82;
        }

        *(*(a1 + 32) + 2 * v60) = 0;
        v50 = a2;
        goto LABEL_88;
      }

LABEL_90:
      if (v17)
      {
        result = v47 ^ v9;
      }

      else
      {
        result = v10;
      }
    }
  }

  v83 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cedar::da<unsigned int,-1,-2,true,1,0ul>::_pop_enode(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if ((a2 & 0x80000000) != 0)
  {
    place = cedar::da<unsigned int,-1,-2,true,1,0ul>::_find_place(a1);
  }

  else
  {
    place = a3 ^ a2;
  }

  v9 = *(a1 + 8);
  v10 = (v9 + 8 * place);
  v11 = *(a1 + 40);
  v12 = v11 + 20 * (place >> 8);
  v13 = *(v12 + 8) - 1;
  *(v12 + 8) = v13;
  if (!v13)
  {
    if (place < 0x100)
    {
      goto LABEL_14;
    }

    v17 = 48;
    v18 = 52;
    goto LABEL_13;
  }

  v15 = *v10;
  v14 = v10[1];
  *(v9 + 8 * -v15 + 4) = v14;
  v16 = -v14;
  *(v9 + 8 * v16) = v15;
  if (place == *(v12 + 16))
  {
    *(v12 + 16) = v16;
  }

  if (place >= 0x100 && *(v12 + 8) == 1 && *(v12 + 12) != 1)
  {
    v11 = *(a1 + 40);
    v17 = 52;
    v18 = 56;
LABEL_13:
    cedar::da<unsigned int,-1,-2,true,1,0ul>::_transfer_block(v11, place >> 8, (a1 + v18), (a1 + v17));
  }

LABEL_14:
  if (a3)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  *v10 = v19;
  v10[1] = a4;
  if ((a2 & 0x80000000) != 0)
  {
    *(*(a1 + 8) + 8 * a4) = place ^ a3;
  }

  return place;
}

_BYTE *cedar::da<unsigned int,-1,-2,true,1,0ul>::_set_child(uint64_t a1, _BYTE *a2, int a3, unsigned int a4, unsigned int a5)
{
  if (a4)
  {
    --a2;
  }

  else
  {
    *a2 = 0;
    v5 = *(a1 + 32);
    v6 = 2 * a3;
    a4 = *(v5 + v6);
    if (!*(v5 + v6))
    {
      goto LABEL_11;
    }
  }

  if (a4 >= a5)
  {
LABEL_11:
    if (a5 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  do
  {
    *++a2 = a4;
    v7 = *(a1 + 32);
    v8 = 2 * (a4 ^ a3);
    a4 = *(v7 + v8);
    if (*(v7 + v8))
    {
      v9 = a4 >= a5;
    }

    else
    {
      v9 = 1;
    }
  }

  while (!v9);
LABEL_12:
  *++a2 = a5;
LABEL_13:
  if (a4)
  {
    do
    {
      *++a2 = a4;
      v10 = *(a1 + 32);
      v11 = 2 * (a4 ^ a3);
      a4 = *(v10 + v11);
    }

    while (*(v10 + v11));
  }

  return a2;
}

uint64_t cedar::da<unsigned int,-1,-2,true,1,0ul>::_find_place(uint64_t a1)
{
  v1 = *(a1 + 52);
  if (v1)
  {
    return *(*(a1 + 40) + 20 * v1 + 16);
  }

  v1 = *(a1 + 56);
  if (v1)
  {
    return *(*(a1 + 40) + 20 * v1 + 16);
  }

  else
  {
    return cedar::da<unsigned int,-1,-2,true,1,0ul>::_add_block(a1) << 8;
  }
}

uint64_t cedar::da<unsigned int,-1,-2,true,1,0ul>::_transfer_block(uint64_t result, int a2, _DWORD *a3, int *a4)
{
  v4 = result + 20 * a2;
  v7 = *(v4 + 4);
  v5 = (v4 + 4);
  v6 = v7;
  if (v7 == a2)
  {
    v6 = 0;
  }

  else
  {
    v8 = *(result + 20 * a2);
    *(result + 20 * v8 + 4) = v6;
    *(result + 20 * v6) = v8;
    if (*a3 != a2)
    {
      goto LABEL_5;
    }
  }

  *a3 = v6;
LABEL_5:
  if (*a4)
  {
    v9 = (result + 20 * a2);
  }

  else
  {
    v9 = (result + 20 * a2);
    if (*(v9 + 4))
    {
      v12 = v9 + 1;
      goto LABEL_10;
    }
  }

  v10 = (result + 20 * *a4);
  v11 = *v10;
  *v9 = *v10;
  *v5 = *a4;
  v12 = (result + 20 * v11 + 4);
  v9 = v10;
LABEL_10:
  *v12 = a2;
  *v9 = a2;
  *a4 = a2;
  return result;
}

uint64_t cedar::da<unsigned int,-1,-2,true,1,0ul>::_add_block(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 == *(a1 + 60))
  {
    *(a1 + 60) = 2 * v2;
    cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::node>((a1 + 8), 2 * v2, 2 * v2);
    cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::ninfo>((a1 + 32), *(a1 + 60), *(a1 + 64));
    cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::block>((a1 + 40), *(a1 + 60) >> 8, *(a1 + 64) >> 8);
    v2 = *(a1 + 64);
  }

  *(*(a1 + 40) + 20 * (v2 >> 8) + 16) = v2;
  *(*(a1 + 8) + 8 * v2) = (-255 - v2) | (~v2 << 32);
  v3 = *(a1 + 64);
  v4 = v3 + 1;
  v5 = 0xFFFFFFFE00000000 - (v3 << 32);
  v6 = -v3;
  do
  {
    *(*(a1 + 8) + 8 * v4) = v5 + v6;
    v7 = *(a1 + 64);
    v8 = v4++ - 1;
    v5 -= 0x100000000;
    --v6;
  }

  while (v8 < v7 + 253);
  *(*(a1 + 8) + 8 * v7 + 2040) = (-254 - v7) | (-v7 << 32);
  v9 = *(a1 + 64) >> 8;
  v10 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = (v11 + 20 * v9);
  if (v10)
  {
    v13 = (v11 + 20 * v10);
    v14 = *v13;
    *v12 = *v13;
    v12[1] = *(a1 + 56);
    v15 = (v11 + 20 * v14 + 4);
    v12 = v13;
  }

  else
  {
    v15 = v12 + 1;
  }

  *v15 = v9;
  *v12 = v9;
  *(a1 + 56) = v9;
  v16 = *(a1 + 64) + 256;
  *(a1 + 64) = v16;
  return ((v16 >> 8) - 1);
}

uint64_t trie::CedarMinimalPrefixTrie<unsigned int,char>::enumerateChildren(void *a1, uint64_t *a2, uint64_t a3)
{
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v7 = a1[5];
    if (!v7)
    {
      __assert_rtn("enumerateChildren", "cedarpp.h", 261, "_ninfo");
    }

    v8 = *a2;
    v9 = HIDWORD(*a2);
    if (v9)
    {
      v10 = -v9;
      if ((v10 & 0x80000000) != 0)
      {
LABEL_5:
        v11 = *(a1[3] + -v10);
        if (v11)
        {
          return std::function<void ()(char,trie::CedarTrieCursor const&,BOOL &)>::operator()(*(a3 + 24), v11);
        }

        return result;
      }
    }

    else
    {
      v10 = *(a1[2] + 8 * v8);
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_5;
      }
    }

    v12 = v10;
    if (v8 && ((v13 = (a1[2] + 8 * v10), *v13 < 1) || v13[1] != v8))
    {
      v14 = (v7 + 2 * v8 + 1);
    }

    else
    {
      v14 = (v7 + 2 * v12);
    }

    v15 = *v14;
    if (v15)
    {
      do
      {
        v16 = v15 ^ v12;
        result = std::function<void ()(char,trie::CedarTrieCursor const&,BOOL &)>::operator()(*(a3 + 24), v15);
        LOBYTE(v15) = *(a1[5] + 2 * v16);
      }

      while (v15);
    }
  }

  return result;
}

uint64_t std::function<void ()(char,trie::CedarTrieCursor const&,BOOL &)>::operator()(uint64_t a1, char a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void trie::CedarMinimalPrefixTrie<unsigned int,char>::enumerateEntries(void *a1, unint64_t *a2, uint64_t a3, unsigned int a4)
{
  if ((*(*a1 + 112))(a1))
  {
    memset(&__p, 0, sizeof(__p));
    v34 = 0;
    v32 = 0;
    v8 = *a2;
    v35 = *a2;
    v9 = cedar::da<unsigned int,-1,-2,true,1,0ul>::begin(a1 + 1, &v35, &v34);
    if (v9 != -2)
    {
      v10 = a4;
      v31 = a3;
      v30 = a4;
      while (1)
      {
        v12 = v34;
        v11 = v35;
        v13 = HIDWORD(v35);
        if ((a4 & 0x80000000) != 0 || v34 <= v10)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          if (size < v34)
          {
            std::string::resize(&__p, v34, 0);
            v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          if (v15 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          p_p->__r_.__value_.__s.__data_[v12] = 0;
          v17 = v11;
          v18 = v12;
          if (v13)
          {
            v17 = v11;
            v29 = a4;
            v19 = a1[3];
            v20 = strlen((v19 - *(a1[2] + 8 * v11)));
            if (v20 >= v12)
            {
              v21 = v12;
            }

            else
            {
              v21 = v20;
            }

            if (v12 >= v20)
            {
              v18 = v12 - v20;
            }

            else
            {
              v18 = 0;
            }

            v22 = v19 - v21;
            a4 = v29;
            memcpy(p_p + v18, (v22 + (v11 >> 32)), v21);
          }

          for (; v18; --v18)
          {
            v23 = a1[2];
            v24 = *(v23 + 8 * v17 + 4);
            *(&p_p[-1].__r_.__value_.__r.__words[2] + v18 + 7) = *(v23 + 8 * v24) ^ v17;
            v17 = v24;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &__p;
          }

          else
          {
            v25 = __p.__r_.__value_.__r.__words[0];
          }

          std::function<void ()(unsigned int,std::string_view,BOOL &)>::operator()(*(v31 + 24), v9, v25, v12, &v32);
          v10 = v30;
        }

        if (v13)
        {
          if (!HIDWORD(v8))
          {
            v11 = v11;
            v26 = a1[2];
            v12 -= *(v26 + 8 * v11) + v13;
            break;
          }

          goto LABEL_3;
        }

        v26 = a1[2];
        v27 = *(v26 + 8 * v11);
        v28 = *(a1[5] + 2 * v27);
        if (!*(a1[5] + 2 * v27))
        {
          break;
        }

LABEL_38:
        v35 = v27 ^ v28;
        v34 = v12 + 1;
        v9 = cedar::da<unsigned int,-1,-2,true,1,0ul>::begin(a1 + 1, &v35, &v34);
        if (v9 == -2)
        {
          goto LABEL_3;
        }
      }

      while (v11 != v8)
      {
        v28 = *(a1[5] + 2 * v11);
        v11 = *(v26 + 8 * v11 + 4);
        --v12;
        if (v28)
        {
          v27 = *(v26 + 8 * v11);
          goto LABEL_38;
        }
      }
    }

LABEL_3:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1D2B19B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cedar::da<unsigned int,-1,-2,true,1,0ul>::begin(void *a1, unint64_t *a2, void *a3)
{
  v3 = a1[4];
  if (!v3)
  {
    __assert_rtn("begin", "cedarpp.h", 690, "_ninfo");
  }

  v7 = *a2;
  v8 = HIDWORD(*a2);
  if (v8)
  {
    v9 = -v8;
    if (-v8 < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = *(a1[1] + 8 * v7);
    if (v9 < 0)
    {
      goto LABEL_16;
    }
  }

  v10 = *(v3 + 2 * v7 + 1);
  if (v7)
  {
    if (!*(v3 + 2 * v7 + 1))
    {
      v11 = a1[1];
LABEL_14:
      v13 = (v11 + 8 * (v9 ^ v10));
      return *v13;
    }

    goto LABEL_10;
  }

  v10 = *(v3 + 2 * (v9 ^ v10));
  if (v10)
  {
LABEL_10:
    v11 = a1[1];
    do
    {
      v12 = v9 ^ v10;
      *a2 = v12;
      v9 = *(v11 + 8 * v12);
      v10 = *(v3 + 2 * v12 + 1);
      ++*a3;
    }

    while (v10 && (v9 & 0x80000000) == 0);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    LODWORD(v7) = *a2;
LABEL_16:
    v14 = -v9;
    v15 = strlen((a1[2] + v14));
    *a2 = v7 | ((v15 - v9) << 32);
    *a3 += v15;
    v13 = (a1[2] + v14 + v15 + 1);
    return *v13;
  }

  return 4294967294;
}

uint64_t trie::CedarMinimalPrefixTrie<unsigned int,char>::getPayload(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v7 = *a2;
    v9 = 0;
    v10 = v7;
    v8 = cedar::da<unsigned int,-1,-2,true,1,0ul>::_find(a1 + 8, "", &v10, &v9, 0);
    *a3 = v8;
    return v8 != -1;
  }

  return result;
}

uint64_t cedar::da<unsigned int,-1,-2,true,1,0ul>::_find(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t a5)
{
  v5 = *a3;
  v6 = HIDWORD(*a3);
  if (!v6)
  {
    v7 = *(a1 + 8);
    v8 = *(v7 + 8 * v5);
    if ((v8 & 0x80000000) == 0)
    {
      while (1)
      {
        v9 = *a4;
        if (*a4 == a5)
        {
          break;
        }

        v10 = v8 ^ *(a2 + v9);
        if (*(v7 + 8 * v10 + 4) != v5)
        {
          return 4294967294;
        }

        *a4 = v9 + 1;
        *a3 = v10;
        v8 = *(v7 + 8 * v10);
        LODWORD(v5) = v10;
        if ((v8 & 0x80000000) != 0)
        {
          goto LABEL_6;
        }
      }

      v19 = (v7 + 8 * v8);
      if (v19[1] == v5)
      {
        return *v19;
      }

      return 0xFFFFFFFFLL;
    }

LABEL_6:
    v6 = -v8;
  }

  v11 = *a4;
  v12 = *(a1 + 16) + v6;
  if (*a4 >= a5)
  {
    v16 = *a4;
  }

  else
  {
    v13 = (*(a1 + 16) + v6);
    v14 = *a4;
    while (1)
    {
      v15 = *v13++;
      if (*(a2 + v14) != v15)
      {
        break;
      }

      *a4 = ++v14;
      if (a5 == v14)
      {
        v14 = a5;
        break;
      }
    }

    if (v14 == v11)
    {
      v16 = v11;
    }

    else
    {
      *(a3 + 1) = v6 - v11 + v14;
      v16 = *a4;
    }

    if (v16 < a5)
    {
      return 4294967294;
    }
  }

  v18 = v12 - v11;
  if (*(v18 + v16))
  {
    return 0xFFFFFFFFLL;
  }

  v19 = (v18 + a5 + 1);
  return *v19;
}