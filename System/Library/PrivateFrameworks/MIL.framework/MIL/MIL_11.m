uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(float **a1, float **a2, float **a3, float **a4, float **a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(a1, a2, a3, a4);
  v11 = *a4;
  v12 = a4[1];
  if (*a4 != v12)
  {
    v13 = 0;
    v14 = *a5;
    while (1)
    {
      v15 = &v14[v13];
      if (&v14[v13] == a5[1])
      {
        break;
      }

      v16 = v11[v13];
      if (*v15 < v16)
      {
        break;
      }

      ++v13;
      if (v16 < *v15 || &v11[v13] == v12)
      {
        return result;
      }
    }

    *a4 = v14;
    *a5 = v11;
    v18 = a4[1];
    a4[1] = a5[1];
    a5[1] = v18;
    v19 = a4[2];
    a4[2] = a5[2];
    a5[2] = v19;
    v20 = *a3;
    v21 = a3[1];
    if (*a3 != v21)
    {
      v22 = 0;
      v23 = *a4;
      while (1)
      {
        v24 = &v23[v22];
        if (&v23[v22] == a4[1])
        {
          break;
        }

        v25 = v20[v22];
        if (*v24 < v25)
        {
          break;
        }

        ++v22;
        if (v25 < *v24 || &v20[v22] == v21)
        {
          return result;
        }
      }

      *a3 = v23;
      *a4 = v20;
      v27 = a3[1];
      a3[1] = a4[1];
      a4[1] = v27;
      v28 = a3[2];
      a3[2] = a4[2];
      a4[2] = v28;
      v29 = *a2;
      v30 = a2[1];
      if (*a2 != v30)
      {
        v31 = 0;
        v32 = *a3;
        while (1)
        {
          v33 = &v32[v31];
          if (&v32[v31] == a3[1])
          {
            break;
          }

          v34 = v29[v31];
          if (*v33 < v34)
          {
            break;
          }

          ++v31;
          if (v34 < *v33 || &v29[v31] == v30)
          {
            return result;
          }
        }

        *a2 = v32;
        *a3 = v29;
        v36 = a2[1];
        a2[1] = a3[1];
        a3[1] = v36;
        v37 = a2[2];
        a2[2] = a3[2];
        a3[2] = v37;
        v38 = *a1;
        v39 = *(a1 + 8);
        if (*a1 != v39)
        {
          v40 = 0;
          v41 = *a2;
          while (1)
          {
            v42 = &v41[v40];
            if (&v41[v40] == a2[1])
            {
              break;
            }

            v43 = v38[v40];
            if (*v42 < v43)
            {
              break;
            }

            ++v40;
            if (v43 < *v42 || &v38[v40] == v39)
            {
              return result;
            }
          }

          *a1 = v41;
          *a2 = v38;
          v45 = *(a1 + 8);
          *(a1 + 8) = a2[1];
          a2[1] = v45;
          v46 = *(a1 + 16);
          *(a1 + 16) = a2[2];
          a2[2] = v46;
        }
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(std::vector<unsigned int> *__c, std::vector<unsigned int> *a2)
{
  if (__c != a2)
  {
    v4 = __c + 1;
    if (&__c[1] != a2)
    {
      v5 = __c;
      do
      {
        v6 = v5;
        v5 = v4;
        v7 = v6->n128_u64[1];
        if (v6->n128_u64[0] != v7)
        {
          v8 = v6[1].n128_u64[1];
          v9 = v6[2].n128_u64[0];
          v10 = v6->n128_u64[0] + 4;
          v11 = v8;
          while (v11 != v9)
          {
            v12 = *v11;
            v13 = *(v10 - 4);
            if (*v11 < v13)
            {
              break;
            }

            ++v11;
            v14 = v13 < v12 || v10 == v7;
            v10 += 4;
            if (v14)
            {
              goto LABEL_32;
            }
          }

          v15 = v6[2].n128_u64[1];
          v5->__begin_ = 0;
          v5->__end_ = 0;
          v5->__end_cap_.__value_ = 0;
          std::vector<float>::__move_assign(v5, v6);
          v16 = __c;
          if (v6 != __c)
          {
            v17 = v6;
            while (1)
            {
              v19 = v17[-2].n128_u64[1];
              v18 = v17[-1].n128_u64[0];
              v17 = (v17 - 24);
              if (v19 == v18)
              {
                break;
              }

              v20 = v19 + 4;
              v21 = v8;
              while (v21 != v9)
              {
                v22 = *v21;
                v23 = *(v20 - 4);
                if (*v21 < v23)
                {
                  break;
                }

                ++v21;
                v24 = v23 < v22 || v20 == v18;
                v20 += 4;
                if (v24)
                {
                  goto LABEL_28;
                }
              }

              std::vector<float>::__move_assign(v6, v17);
              v6 = v17;
              if (v17 == __c)
              {
                v16 = __c;
                goto LABEL_29;
              }
            }

LABEL_28:
            v16 = v6;
          }

LABEL_29:
          begin = v16->__begin_;
          if (v16->__begin_)
          {
            v16->__end_ = begin;
            operator delete(begin);
          }

          v16->__begin_ = v8;
          v16->__end_ = v9;
          v16->__end_cap_.__value_ = v15;
        }

LABEL_32:
        v4 = v5 + 1;
      }

      while (&v5[1] != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(std::vector<unsigned int> *__c, std::vector<unsigned int> *a2)
{
  if (__c != a2)
  {
    v3 = __c;
LABEL_3:
    while (&v3[1] != a2)
    {
      v4 = v3++;
      v5 = v4->n128_u64[1];
      if (v4->n128_u64[0] != v5)
      {
        v6 = v4[1].n128_u64[1];
        v7 = v4[2].n128_u64[0];
        v8 = v4->n128_u64[0] + 4;
        v9 = v6;
        while (v9 != v7)
        {
          v10 = *v9;
          v11 = *(v8 - 4);
          if (*v9 < v11)
          {
            break;
          }

          ++v9;
          v12 = v11 < v10 || v8 == v5;
          v8 += 4;
          if (v12)
          {
            goto LABEL_3;
          }
        }

        v13 = v4[2].n128_u64[1];
        v3->__begin_ = 0;
        v3->__end_ = 0;
        v3->__end_cap_.__value_ = 0;
        v14 = v3;
        while (1)
        {
          std::vector<float>::__move_assign(v14, v4);
          v16 = v4[-2].n128_u64[1];
          v15 = v4[-1].n128_u64[0];
          if (v16 == v15)
          {
            break;
          }

          v14 = v4;
          v4 = (v4 - 24);
          v17 = v16 + 4;
          v18 = v6;
          while (v18 != v7)
          {
            v19 = *v18;
            v20 = *(v17 - 4);
            if (*v18 < v20)
            {
              break;
            }

            ++v18;
            v21 = v20 < v19 || v17 == v15;
            v17 += 4;
            if (v21)
            {
              v4 = v14;
              goto LABEL_25;
            }
          }
        }

LABEL_25:
        v22 = v4->n128_u64[0];
        if (v4->n128_u64[0])
        {
          v4->n128_u64[1] = v22;
          operator delete(v22);
        }

        v4->n128_u64[0] = v6;
        v4->n128_u64[1] = v7;
        v4[1].n128_u64[0] = v13;
      }
    }
  }
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<float> *,std::__less<void,void> &>(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v5 = *(a2 - 3);
  v4 = *(a2 - 2);
  v6 = v2;
  v52 = v2;
  if (v5 == v4)
  {
LABEL_10:
    v12 = (a1 + 24);
    if (a1 + 24 < a2)
    {
      v13 = a1;
      while (1)
      {
        v15 = v13[3];
        v14 = v13[4];
        v13 = v12;
        if (v15 != v14)
        {
          break;
        }

LABEL_21:
        v12 += 3;
        if (v13 + 3 >= a2)
        {
          goto LABEL_34;
        }
      }

      v16 = v15 + 4;
      v17 = v6;
      while (v17 != *(&v2 + 1))
      {
        v18 = *v17;
        v19 = *(v16 - 4);
        if (*v17 < v19)
        {
          break;
        }

        ++v17;
        v20 = v19 < v18 || v16 == v14;
        v16 += 4;
        if (v20)
        {
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    v7 = v5 + 4;
    v8 = v2;
    while (v8 != *(&v2 + 1))
    {
      v9 = *v8;
      v10 = *(v7 - 4);
      if (*v8 < v10)
      {
        break;
      }

      ++v8;
      v11 = v10 < v9 || v7 == v4;
      v7 += 4;
      if (v11)
      {
        goto LABEL_10;
      }
    }

    v12 = a1;
    do
    {
LABEL_24:
      v22 = v12[3];
      v21 = v12[4];
      v12 += 3;
    }

    while (v22 == v21);
    v23 = v22 + 4;
    v24 = v6;
    while (v24 != *(&v2 + 1))
    {
      v25 = *v24;
      v26 = *(v23 - 4);
      if (*v24 < v26)
      {
        break;
      }

      ++v24;
      v27 = v26 < v25 || v23 == v21;
      v23 += 4;
      if (v27)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_34:
  if (v12 < a2)
  {
    a2 -= 3;
    while (v5 != v4)
    {
      v28 = v5 + 4;
      v29 = v6;
      while (v29 != *(&v2 + 1))
      {
        v30 = *v29;
        v31 = *(v28 - 4);
        if (*v29 < v31)
        {
          break;
        }

        ++v29;
        v32 = v31 < v30 || v28 == v4;
        v28 += 4;
        if (v32)
        {
          goto LABEL_47;
        }
      }

      v5 = *(a2 - 3);
      v4 = *(a2 - 2);
      a2 -= 3;
    }
  }

LABEL_47:
  if (v12 < a2)
  {
    v33 = *v12;
    v34 = *a2;
    do
    {
      *v12 = v34;
      *a2 = v33;
      v35 = v12[1];
      v12[1] = a2[1];
      a2[1] = v35;
      v36 = v12[2];
      v12[2] = a2[2];
      a2[2] = v36;
      do
      {
LABEL_50:
        v33 = v12[3];
        v37 = v12[4];
        v12 += 3;
      }

      while (v33 == v37);
      v38 = v33 + 4;
      v39 = v6;
      while (v39 != *(&v2 + 1))
      {
        v40 = *v39;
        v41 = *(v38 - 4);
        if (*v39 < v41)
        {
          break;
        }

        ++v39;
        v42 = v41 < v40 || v38 == v37;
        v38 += 4;
        if (v42)
        {
          goto LABEL_50;
        }
      }

      while (1)
      {
        v34 = *(a2 - 3);
        v48 = *(a2 - 2);
        a2 -= 3;
        if (v34 == v48)
        {
          break;
        }

        v43 = v34 + 4;
        v44 = v6;
        while (v44 != *(&v2 + 1))
        {
          v45 = *v44;
          v46 = *(v43 - 4);
          if (*v44 < v46)
          {
            break;
          }

          ++v44;
          v47 = v46 < v45 || v43 == v48;
          v43 += 4;
          if (v47)
          {
            goto LABEL_70;
          }
        }
      }

LABEL_70:
      ;
    }

    while (v12 < a2);
  }

  v49 = (v12 - 3);
  if (v12 - 3 != a1)
  {
    std::vector<float>::__move_assign(a1, (v12 - 3));
  }

  v50 = *v49;
  if (*v49)
  {
    *(v12 - 2) = v50;
    operator delete(v50);
  }

  *(v12 - 3) = v52;
  *(v12 - 1) = v3;
  return v12;
}

float **std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<float> *,std::__less<void,void> &>(uint64_t a1, float **a2)
{
  v2 = a2;
  v3 = *a1;
  v4 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v5 = v3;
  v49 = v3;
  v6 = (a1 + 24);
  v7 = *(a1 + 24);
  if (v3 != *(&v3 + 1))
  {
    v8 = *(a1 + 32);
    v9 = a1;
LABEL_3:
    v10 = v6;
    v11 = v5 + 4;
    do
    {
      if (v7 == v8 || (v12 = *v7, v13 = *(v11 - 4), *v7 < v13))
      {
        v7 = v10[3];
        v8 = v10[4];
        v6 = v10 + 3;
        v9 = v10;
        goto LABEL_3;
      }

      ++v7;
      v14 = v13 < v12 || v11 == *(&v3 + 1);
      v11 += 4;
    }

    while (!v14);
    if (v9 != a1)
    {
      do
      {
LABEL_14:
        v16 = *(v2 - 3);
        v2 -= 3;
        v15 = v16;
      }

      while (v5 == *(&v3 + 1));
      v17 = v5 + 4;
      while (v15 != v2[1])
      {
        v18 = *v15;
        v19 = *(v17 - 4);
        if (*v15 < v19)
        {
          break;
        }

        ++v15;
        v20 = v19 < v18 || v17 == *(&v3 + 1);
        v17 += 4;
        if (v20)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_37;
    }

    v6 = v10;
  }

  if (v6 < a2)
  {
    while (1)
    {
      v22 = *(v2 - 3);
      v2 -= 3;
      v21 = v22;
      if (v5 != *(&v3 + 1))
      {
        break;
      }

LABEL_35:
      if (v6 >= v2)
      {
        goto LABEL_36;
      }
    }

    v23 = v5 + 4;
    while (v21 != v2[1])
    {
      v24 = *v21;
      v25 = *(v23 - 4);
      if (*v21 < v25)
      {
        break;
      }

      ++v21;
      v26 = v25 < v24 || v23 == *(&v3 + 1);
      v23 += 4;
      if (v26)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_36:
  v10 = v6;
LABEL_37:
  v27 = v10;
  if (v10 < v2)
  {
    v28 = *v10;
    v29 = *v2;
    v27 = v10;
    v30 = v2;
    do
    {
      *v27 = v29;
      *v30 = v28;
      v31 = v27[1];
      v27[1] = v30[1];
      v30[1] = v31;
      v32 = v27[2];
      v27[2] = v30[2];
      v30[2] = v32;
      v33 = v27[3];
      v27 += 3;
      v28 = v33;
      if (v5 != *(&v3 + 1))
      {
        while (1)
        {
          v34 = v5 + 4;
          v35 = v28;
          while (v35 != v27[1])
          {
            v36 = *v35;
            v37 = *(v34 - 4);
            if (*v35 < v37)
            {
              break;
            }

            ++v35;
            v38 = v37 < v36 || v34 == *(&v3 + 1);
            v34 += 4;
            if (v38)
            {
              goto LABEL_50;
            }
          }

          v39 = v27[3];
          v27 += 3;
          v28 = v39;
        }
      }

      do
      {
LABEL_50:
        v40 = *(v30 - 3);
        v30 -= 3;
        v29 = v40;
      }

      while (v5 == *(&v3 + 1));
      v41 = v5 + 4;
      v42 = v29;
      while (v42 != v30[1])
      {
        v43 = *v42;
        v44 = *(v41 - 4);
        if (*v42 < v44)
        {
          break;
        }

        ++v42;
        v45 = v44 < v43 || v41 == *(&v3 + 1);
        v41 += 4;
        if (v45)
        {
          goto LABEL_50;
        }
      }
    }

    while (v27 < v30);
  }

  v46 = (v27 - 3);
  if (v27 - 3 != a1)
  {
    std::vector<float>::__move_assign(a1, (v27 - 3));
  }

  v47 = *v46;
  if (*v46)
  {
    *(v27 - 2) = v47;
    operator delete(v47);
  }

  *(v27 - 3) = v49;
  *(v27 - 1) = v4;
  return v27 - 3;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(float **a1, float **a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *a1;
        v6 = a1[1];
        if (*a1 != v6)
        {
          v7 = 0;
          v8 = *(a2 - 3);
          result = 1;
          while (1)
          {
            v10 = &v8[v7];
            if (&v8[v7] == *(a2 - 2))
            {
              break;
            }

            v11 = v5[v7];
            if (*v10 < v11)
            {
              break;
            }

            ++v7;
            if (v11 < *v10 || &v5[v7] == v6)
            {
              return result;
            }
          }

          *a1 = v8;
          *(a2 - 3) = v5;
          v34 = a1[1];
          a1[1] = *(a2 - 2);
          *(a2 - 2) = v34;
          v35 = a1[2];
          a1[2] = *(a2 - 1);
          *(a2 - 1) = v35;
        }

        return 1;
      }

      goto LABEL_19;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(a1, a1 + 3, a2 - 3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
      return 1;
  }

LABEL_19:
  v13 = (a1 + 6);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(a1, a1 + 3, a1 + 6);
  v14 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v15 = 0;
  while (1)
  {
    v16 = v13->n128_u64[1];
    if (v13->n128_u64[0] != v16)
    {
      v17 = *v14;
      v18 = v14[1];
      v19 = v13->n128_u64[0] + 4;
      v20 = *v14;
      while (v20 != v18)
      {
        v21 = *v20;
        v22 = *(v19 - 4);
        if (*v20 < v22)
        {
          break;
        }

        ++v20;
        v23 = v22 < v21 || v19 == v16;
        v19 += 4;
        if (v23)
        {
          goto LABEL_47;
        }
      }

      v24 = v14[2];
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      std::vector<float>::__move_assign(v14, v13);
      v25 = v13;
      while (1)
      {
        v27 = v25[-2].n128_u64[1];
        v26 = v25[-1].n128_u64[0];
        v25 = (v25 - 24);
        if (v27 == v26)
        {
          break;
        }

        v28 = v27 + 4;
        v29 = v17;
        while (v29 != v18)
        {
          v30 = *v29;
          v31 = *(v28 - 4);
          if (*v29 < v31)
          {
            break;
          }

          ++v29;
          v32 = v31 < v30 || v28 == v26;
          v28 += 4;
          if (v32)
          {
            goto LABEL_44;
          }
        }

        std::vector<float>::__move_assign(v13, v25);
        v13 = v25;
        if (v25 == a1)
        {
          v13 = a1;
          break;
        }
      }

LABEL_44:
      v33 = v13->n128_u64[0];
      if (v13->n128_u64[0])
      {
        v13->n128_u64[1] = v33;
        operator delete(v33);
      }

      v13->n128_u64[0] = v17;
      v13->n128_u64[1] = v18;
      v13[1].n128_u64[0] = v24;
      if (++v15 == 8)
      {
        return v14 + 3 == a2;
      }
    }

LABEL_47:
    v13 = v14;
    v14 += 3;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

unsigned int **std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,std::vector<float> *>(std::vector<unsigned int> *a1, std::vector<unsigned int> *a2, unsigned int **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(a1, a4, v9, v12--);
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
        begin = a1->__begin_;
        end = a1->__end_;
        if (a1->__begin_ != end)
        {
          v16 = 0;
          v17 = *v13;
          while (1)
          {
            v18 = &v17[v16];
            if (&v17[v16] == v13[1])
            {
              break;
            }

            v19 = *&begin[v16];
            if (*v18 < v19)
            {
              break;
            }

            ++v16;
            if (v19 < *v18 || &begin[v16] == end)
            {
              goto LABEL_18;
            }
          }

          *v13 = begin;
          a1->__begin_ = v17;
          v21 = v13[1];
          v13[1] = a1->__end_;
          a1->__end_ = v21;
          v22 = v13[2];
          v13[2] = a1->__end_cap_.__value_;
          a1->__end_cap_.__value_ = v22;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(a1, a4, v9, a1);
        }

LABEL_18:
        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v23 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::vector<float> *>(a1, v6, a4, v23);
        v6 -= 24;
      }

      while (v23-- > 2);
    }

    return v13;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(uint64_t a1, int a2, uint64_t a3, std::vector<unsigned int> *this)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v6 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((this - a1) >> 3)))
    {
      v8 = (0x5555555555555556 * ((this - a1) >> 3)) | 1;
      v9 = (a1 + 24 * v8);
      if (0x5555555555555556 * ((this - a1) >> 3) + 2 < a3)
      {
        v10 = v9[1].n128_u64[1];
        v11 = v9[2].n128_u64[0];
        if (v10 != v11)
        {
          v12 = v9->n128_u64[0];
          v13 = v10 + 4;
          while (v12 != v9->n128_u64[1])
          {
            v14 = *v12;
            v15 = *(v13 - 4);
            if (*v12 < v15)
            {
              break;
            }

            ++v12;
            v16 = v15 < v14 || v13 == v11;
            v13 += 4;
            if (v16)
            {
              goto LABEL_15;
            }
          }

          v9 = (v9 + 24);
          v8 = 0x5555555555555556 * ((this - a1) >> 3) + 2;
        }
      }

LABEL_15:
      begin = this->__begin_;
      end = this->__end_;
      if (this->__begin_ == end)
      {
LABEL_24:
        value = this->__end_cap_.__value_;
        this->__begin_ = 0;
        this->__end_ = 0;
        this->__end_cap_.__value_ = 0;
        std::vector<float>::__move_assign(this, v9);
        if (v6 >= v8)
        {
          while (1)
          {
            v27 = 2 * v8;
            v8 = (2 * v8) | 1;
            v25 = (a1 + 24 * v8);
            v28 = v27 + 2;
            if (v28 < a3)
            {
              v29 = v25[1].n128_u64[1];
              v30 = v25[2].n128_u64[0];
              if (v29 != v30)
              {
                v31 = v25->n128_u64[0];
                v32 = v29 + 4;
                while (v31 != v25->n128_u64[1])
                {
                  v33 = *v31;
                  v34 = *(v32 - 4);
                  if (*v31 < v34)
                  {
                    break;
                  }

                  ++v31;
                  v35 = v34 < v33 || v32 == v30;
                  v32 += 4;
                  if (v35)
                  {
                    goto LABEL_42;
                  }
                }

                v25 = (v25 + 24);
                v8 = v28;
              }
            }

LABEL_42:
            if (begin != end)
            {
              break;
            }

LABEL_51:
            std::vector<float>::__move_assign(v9, v25);
            v9 = v25;
            if (v6 < v8)
            {
              goto LABEL_26;
            }
          }

          v36 = v25->n128_u64[0];
          v37 = begin + 1;
          while (v36 != v25->n128_u64[1])
          {
            v38 = *v36;
            v39 = *(v37 - 1);
            if (*v36 < v39)
            {
              break;
            }

            ++v36;
            if (v39 < v38 || v37++ == end)
            {
              goto LABEL_51;
            }
          }
        }

        v25 = v9;
LABEL_26:
        v26 = v25->n128_u64[0];
        if (v25->n128_u64[0])
        {
          v25->n128_u64[1] = v26;
          operator delete(v26);
        }

        v25->n128_u64[0] = begin;
        v25->n128_u64[1] = end;
        v25[1].n128_u64[0] = value;
      }

      else
      {
        v19 = v9->n128_u64[0];
        v20 = begin + 1;
        while (v19 != v9->n128_u64[1])
        {
          v21 = *v19;
          v22 = *(v20 - 1);
          if (*v19 < v22)
          {
            break;
          }

          ++v19;
          if (v22 < v21 || v20++ == end)
          {
            goto LABEL_24;
          }
        }
      }
    }
  }
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::vector<float> *>(std::vector<unsigned int> *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    begin = a1->__begin_;
    end = a1->__end_;
    value = a1->__end_cap_.__value_;
    a1->__end_ = 0;
    a1->__end_cap_.__value_ = 0;
    a1->__begin_ = 0;
    v10 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(a1, a3, a4);
    v11 = v10;
    v12 = (a2 - 24);
    if (v10 == (a2 - 24))
    {
      v15 = v10->__begin_;
      if (v11->__begin_)
      {
        v11->__end_ = v15;
        operator delete(v15);
        v11->__begin_ = 0;
        v11->__end_ = 0;
        v11->__end_cap_.__value_ = 0;
      }

      v11->__begin_ = begin;
      v11->__end_ = end;
      v11->__end_cap_.__value_ = value;
    }

    else
    {
      std::vector<float>::__move_assign(v10, (a2 - 24));
      v13 = &v11[1];
      v14 = *v12;
      if (*v12)
      {
        *(a2 - 16) = v14;
        operator delete(v14);
        *v12 = 0;
        *(a2 - 16) = 0;
        *(a2 - 8) = 0;
      }

      *(a2 - 24) = begin;
      *(a2 - 16) = end;
      *(a2 - 8) = value;

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(a1, v13, a3, 0xAAAAAAAAAAAAAAABLL * ((v13 - a1) >> 3));
    }
  }
}

void sub_218051BD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

std::vector<unsigned int> *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(std::vector<unsigned int> *this, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = this;
    v8 = &this[v5];
    this = v8 + 1;
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v10 < a3)
    {
      begin = v8[2].__begin_;
      end = v8[2].__end_;
      v11 = v8 + 2;
      if (begin != end)
      {
        v14 = v11[-1].__begin_;
        v15 = begin + 1;
        while (v14 != v11[-1].__end_)
        {
          v16 = *v14;
          v17 = *(v15 - 1);
          if (*v14 < v17)
          {
            break;
          }

          ++v14;
          if (v17 < v16 || v15++ == end)
          {
            goto LABEL_14;
          }
        }

        this = v11;
        v5 = v10;
      }
    }

LABEL_14:
    std::vector<float>::__move_assign(v7, this);
  }

  while (v5 <= v6);
  return this;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = *(a2 - 24);
    v8 = *(a2 - 16);
    v6 = (a2 - 24);
    if (v7 != v8)
    {
      v9 = v4 >> 1;
      v10 = a1 + 24 * (v4 >> 1);
      v11 = *v10;
      v12 = v7 + 4;
      while (v11 != *(v10 + 8))
      {
        v13 = *v11;
        v14 = *(v12 - 4);
        if (*v11 < v14)
        {
          break;
        }

        ++v11;
        v15 = v14 < v13 || v12 == v8;
        v12 += 4;
        if (v15)
        {
          return;
        }
      }

      v16 = *(a2 - 8);
      *v6 = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      std::vector<float>::__move_assign(v6, (a1 + 24 * (v4 >> 1)));
      if (v4 >= 2)
      {
        do
        {
          v17 = v10;
          v18 = v9 - 1;
          v9 = (v9 - 1) >> 1;
          v10 = a1 + 24 * v9;
          v19 = *v10;
          v20 = v7 + 4;
          while (v19 != *(v10 + 8))
          {
            v21 = *v19;
            v22 = *(v20 - 4);
            if (*v19 < v22)
            {
              break;
            }

            ++v19;
            v23 = v22 < v21 || v20 == v8;
            v20 += 4;
            if (v23)
            {
              v10 = v17;
              goto LABEL_23;
            }
          }

          std::vector<float>::__move_assign(v17, (a1 + 24 * v9));
        }

        while (v18 > 1);
      }

LABEL_23:
      v24 = *v10;
      if (*v10)
      {
        *(v10 + 8) = v24;
        operator delete(v24);
      }

      *v10 = v7;
      *(v10 + 8) = v8;
      *(v10 + 16) = v16;
    }
  }
}

void *std::vector<std::vector<std::vector<float>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<std::vector<float>>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<std::vector<float>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
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
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v14);
  return v8;
}

void sub_218052120(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<std::vector<float>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<unsigned long long>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

float **std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::vector<float> const*>,std::vector<float>,std::__identity,std::__less<void,void>>(float **result, void *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = a2[1];
    do
    {
      v4 = a3 >> 1;
      if (*a2 != v3)
      {
        v5 = &result[3 * v4];
        v6 = *v5;
        v7 = *a2 + 4;
        while (v6 != v5[1])
        {
          v8 = *v6;
          v9 = *(v7 - 4);
          if (*v6 < v9)
          {
            break;
          }

          ++v6;
          v10 = v9 < v8 || v7 == v3;
          v7 += 4;
          if (v10)
          {
            goto LABEL_14;
          }
        }

        result = v5 + 3;
        v4 = a3 + ~v4;
      }

LABEL_14:
      a3 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2180522DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_218052360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_218052494(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void sub_218052798(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<MIL::ValueInference::Tensor<unsigned char>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::ValueInference::Tensor<unsigned char>>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_21805285C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<MIL::ValueInference::Tensor<unsigned char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<MIL::ValueInference::Tensor<unsigned char>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<MIL::ValueInference::Tensor<unsigned char>>::__emplace_back_slow_path<MIL::ValueInference::Tensor<unsigned char>>(a1, a2);
  }

  else
  {
    std::vector<MIL::ValueInference::Tensor<unsigned char>>::__construct_one_at_end[abi:ne200100]<MIL::ValueInference::Tensor<unsigned char>>(a1, a2);
    result = v3 + 64;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<MIL::ValueInference::Tensor<float>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<MIL::ValueInference::Tensor<float>>::__emplace_back_slow_path<MIL::ValueInference::Tensor<float>>(a1, a2);
  }

  else
  {
    std::vector<MIL::ValueInference::Tensor<float>>::__construct_one_at_end[abi:ne200100]<MIL::ValueInference::Tensor<float>>(a1, a2);
    result = v3 + 64;
  }

  *(a1 + 8) = result;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::ValueInference::Tensor<unsigned char>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MIL::ValueInference::Tensor<unsigned char>>,MIL::ValueInference::Tensor<unsigned char>*>(uint64_t a1, void (***a2)(void), void (***a3)(void), void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4;
    v7 = a2;
    do
    {
      *a4 = &unk_2829E5F20;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 0;
      *(a4 + 1) = *(v7 + 1);
      a4[3] = v7[3];
      v7[1] = 0;
      v7[2] = 0;
      v7[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      a4[6] = 0;
      *(a4 + 2) = *(v7 + 2);
      v8 = v7[7];
      a4[6] = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      a4[7] = v8;
      v7 += 8;
      a4 += 8;
      v6 += 8;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v9 = a2;
      v10 = a2;
      do
      {
        v11 = *v10;
        v10 += 8;
        (*v11)(v5);
        v9 += 8;
        v5 = v10;
      }

      while (v10 != a3);
    }
  }
}

uint64_t std::__split_buffer<MIL::ValueInference::Tensor<unsigned char>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 64);
    *(a1 + 16) = i - 64;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::vector<MIL::ValueInference::Tensor<unsigned char>>::__construct_one_at_end[abi:ne200100]<MIL::ValueInference::Tensor<unsigned char>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *v2 = &unk_2829E5F20;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  *(v2 + 1) = *(a2 + 8);
  v2[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = 0;
  result = *(a2 + 32);
  *(v2 + 2) = result;
  v4 = *(a2 + 56);
  v2[6] = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v2[7] = v4;
  *(a1 + 8) = v2 + 8;
  return result;
}

uint64_t std::vector<MIL::ValueInference::Tensor<unsigned char>>::__emplace_back_slow_path<MIL::ValueInference::Tensor<unsigned char>>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::ValueInference::Tensor<unsigned char>>>(a1, v7);
  }

  v8 = (v2 << 6);
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *v8 = &unk_2829E5F20;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0;
  *(v8 + 1) = *(a2 + 8);
  v8[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v8[4] = 0;
  v8[5] = 0;
  v8[6] = 0;
  *(v8 + 2) = *(a2 + 32);
  v9 = *(a2 + 56);
  v8[6] = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v8[7] = v9;
  *&v18 = (v2 << 6) + 64;
  v10 = *(a1 + 8);
  v11 = ((v2 << 6) + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MIL::ValueInference::Tensor<unsigned char>>,MIL::ValueInference::Tensor<unsigned char>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<MIL::ValueInference::Tensor<unsigned char>>::~__split_buffer(&v16);
  return v15;
}

void sub_218052C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<MIL::ValueInference::Tensor<unsigned char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::vector<MIL::ValueInference::Tensor<float>>::__construct_one_at_end[abi:ne200100]<MIL::ValueInference::Tensor<float>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *v2 = &unk_2829E5E60;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  *(v2 + 1) = *(a2 + 8);
  v2[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = 0;
  result = *(a2 + 32);
  *(v2 + 2) = result;
  v4 = *(a2 + 56);
  v2[6] = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v2[7] = v4;
  *(a1 + 8) = v2 + 8;
  return result;
}

uint64_t std::vector<MIL::ValueInference::Tensor<float>>::__emplace_back_slow_path<MIL::ValueInference::Tensor<float>>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::ValueInference::Tensor<float>>>(a1, v7);
  }

  v8 = (v2 << 6);
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *v8 = &unk_2829E5E60;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0;
  *(v8 + 1) = *(a2 + 8);
  v8[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v8[4] = 0;
  v8[5] = 0;
  v8[6] = 0;
  *(v8 + 2) = *(a2 + 32);
  v9 = *(a2 + 56);
  v8[6] = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v8[7] = v9;
  *&v18 = (v2 << 6) + 64;
  v10 = *(a1 + 8);
  v11 = ((v2 << 6) + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MIL::ValueInference::Tensor<float>>,MIL::ValueInference::Tensor<float>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<MIL::ValueInference::Tensor<float>>::~__split_buffer(&v16);
  return v15;
}

void sub_218052E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<MIL::ValueInference::Tensor<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::ValueInference::Tensor<float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MIL::ValueInference::Tensor<float>>,MIL::ValueInference::Tensor<float>*>(uint64_t a1, void (***a2)(void), void (***a3)(void), void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4;
    v7 = a2;
    do
    {
      *a4 = &unk_2829E5E60;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 0;
      *(a4 + 1) = *(v7 + 1);
      a4[3] = v7[3];
      v7[1] = 0;
      v7[2] = 0;
      v7[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      a4[6] = 0;
      *(a4 + 2) = *(v7 + 2);
      v8 = v7[7];
      a4[6] = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      a4[7] = v8;
      v7 += 8;
      a4 += 8;
      v6 += 8;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v9 = a2;
      v10 = a2;
      do
      {
        v11 = *v10;
        v10 += 8;
        (*v11)(v5);
        v9 += 8;
        v5 = v10;
      }

      while (v10 != a3);
    }
  }
}

uint64_t std::__split_buffer<MIL::ValueInference::Tensor<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 64);
    *(a1 + 16) = i - 64;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<MIL::ValueInference::Tensor<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 64;
      v7 = v4 - 64;
      v8 = v4 - 64;
      do
      {
        v9 = *v8;
        v8 -= 64;
        (*v9)(v7);
        v6 -= 64;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<MIL::ValueInference::Tensor<unsigned char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 64;
      v7 = v4 - 64;
      v8 = v4 - 64;
      do
      {
        v9 = *v8;
        v8 -= 64;
        (*v9)(v7);
        v6 -= 64;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__func<float (*)(float,float),std::allocator<float (*)(float,float)>,float ()(float,float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829E6000;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<float (*)(float,float),std::allocator<float (*)(float,float)>,float ()(float,float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_218053328(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<float (*)(float),std::allocator<float (*)(float)>,float ()(float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829E60B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<float (*)(float),std::allocator<float (*)(float)>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_218053514(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(void *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<unsigned long long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
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
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t std::__function::__func<MIL::Passes::SparsifyWithThreshold(MIL::MILContext &,std::shared_ptr<MIL::IRValue const>,float)::$_0,std::allocator<MIL::Passes::SparsifyWithThreshold(MIL::MILContext &,std::shared_ptr<MIL::IRValue const>,float)::$_0>,float ()(float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829E6150;
  a2[1] = v2;
  return result;
}

float std::__function::__func<MIL::Passes::SparsifyWithThreshold(MIL::MILContext &,std::shared_ptr<MIL::IRValue const>,float)::$_0,std::allocator<MIL::Passes::SparsifyWithThreshold(MIL::MILContext &,std::shared_ptr<MIL::IRValue const>,float)::$_0>,float ()(float)>::operator()(uint64_t a1, float *a2)
{
  result = *a2;
  if (fabsf(*a2) <= **(a1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t std::__function::__func<MIL::Passes::SparsifyWithThreshold(MIL::MILContext &,std::shared_ptr<MIL::IRValue const>,float)::$_0,std::allocator<MIL::Passes::SparsifyWithThreshold(MIL::MILContext &,std::shared_ptr<MIL::IRValue const>,float)::$_0>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::less<float> &,std::__wrap_iter<float *>>(float *a1, float *a2, float *a3, float a4)
{
  while (a3 != a2)
  {
    v4 = a3 - a1;
    if (v4 < 2)
    {
      break;
    }

    if (v4 == 3)
    {
      v37 = a1[1];
      v38 = *(a3 - 1);
      if (v37 < v38)
      {
        v39 = *(a1 + 1);
      }

      else
      {
        v39 = *(a3 - 1);
      }

      if (v37 < v38)
      {
        v37 = *(a3 - 1);
      }

      *(a3 - 1) = v37;
      *(a1 + 1) = v39;
      v40 = *(a3 - 1);
      if (v40 < *a1)
      {
        v41 = *(a3 - 1);
      }

      else
      {
        v41 = *a1;
      }

      if (v40 < *a1)
      {
        v40 = *a1;
      }

      *(a3 - 1) = v40;
      v42 = a1[1];
      if (v41 < v42)
      {
        v41 = a1[1];
      }

      else
      {
        *a1 = v42;
      }

      a1[1] = v41;
      return;
    }

    if (v4 == 2)
    {
      v43 = *(a3 - 1);
      v44 = *a1;
      if (v43 < *a1)
      {
        *a1 = v43;
        *(a3 - 1) = v44;
      }

      return;
    }

    if (v4 <= 7)
    {
      std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::less<float> &,std::__wrap_iter<float *>>(a1, a3, a4);
      return;
    }

    v5 = &a1[(a3 - a1) >> 3];
    v6 = a3 - 1;
    v7 = *(a3 - 1);
    v8 = *v5;
    if (*v5 < v7)
    {
      v9 = *v5;
    }

    else
    {
      v9 = *(a3 - 1);
    }

    if (*v5 < v7)
    {
      v10 = *(a3 - 1);
    }

    else
    {
      v10 = *v5;
    }

    *v6 = v10;
    *v5 = v9;
    v11 = *v6;
    v12 = *a1;
    if (*v6 < *a1)
    {
      v13 = *v6;
    }

    else
    {
      v13 = *a1;
    }

    if (*v6 < *a1)
    {
      v14 = *a1;
    }

    else
    {
      v14 = *v6;
    }

    *v6 = v14;
    v15 = *v5;
    v16 = *v5;
    if (v13 >= *v5)
    {
      *a1 = v15;
      v16 = v13;
    }

    v17 = v11 >= v12;
    if (v13 >= v15)
    {
      v17 = 1;
    }

    *v5 = v16;
    if (v8 >= v7)
    {
      v17 = 1;
    }

    a4 = *a1;
    if (*a1 >= v16)
    {
      v18 = a3 - 1;
      while (--v18 != a1)
      {
        if (*v18 < v16)
        {
          *a1 = *v18;
          *v18 = a4;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_33;
        }
      }

      v28 = a1 + 1;
      if (a4 >= *v6)
      {
        while (v28 != v6)
        {
          v29 = *v28;
          if (a4 < *v28)
          {
            *v28++ = *v6;
            *v6 = v29;
            goto LABEL_65;
          }

          ++v28;
        }

        return;
      }

LABEL_65:
      if (v28 == v6)
      {
        return;
      }

      while (1)
      {
        v32 = *a1;
        do
        {
          v33 = *v28++;
          a4 = v33;
        }

        while (v32 >= v33);
        v34 = v28 - 1;
        do
        {
          v35 = *--v6;
          v36 = v35;
        }

        while (v32 < v35);
        if (v34 >= v6)
        {
          break;
        }

        *v34 = v36;
        *v6 = a4;
      }

      a1 = v28 - 1;
      if (v34 > a2)
      {
        return;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = a1 + 1;
      if (a1 + 1 >= v18)
      {
        v23 = a1 + 1;
      }

      else
      {
        v20 = a1 + 1;
        while (1)
        {
          v21 = *v5;
          do
          {
            v22 = *v20++;
            a4 = v22;
          }

          while (v22 < v21);
          v23 = v20 - 1;
          do
          {
            v24 = *--v18;
            v25 = v24;
          }

          while (v24 >= v21);
          if (v23 >= v18)
          {
            break;
          }

          *v23 = v25;
          *v18 = a4;
          ++v17;
          if (v23 == v5)
          {
            v5 = v18;
          }
        }
      }

      if (v23 != v5)
      {
        a4 = *v5;
        v26 = *v23;
        if (*v5 < *v23)
        {
          *v23 = a4;
          *v5 = v26;
          ++v17;
        }
      }

      if (v23 == a2)
      {
        return;
      }

      if (!v17)
      {
        if (v23 <= a2)
        {
          v30 = v23 + 1;
          while (v30 != a3)
          {
            v31 = *(v30 - 1);
            a4 = *v30++;
            if (a4 < v31)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v23)
          {
            v27 = *(v19 - 1);
            a4 = *v19++;
            if (a4 < v27)
            {
              goto LABEL_49;
            }
          }
        }

        return;
      }

LABEL_49:
      if (v23 <= a2)
      {
        a1 = v23 + 1;
      }

      else
      {
        a3 = v23;
      }
    }
  }
}

float std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::less<float> &,std::__wrap_iter<float *>>(float *a1, float *a2, float result)
{
  while (a1 != a2 - 1)
  {
    v3 = a1++;
    if (v3 != a2 && a1 != a2)
    {
      result = *v3;
      v4 = a1;
      v5 = v3;
      v6 = a1;
      do
      {
        v7 = *v6++;
        v8 = v7;
        if (v7 < result)
        {
          result = v8;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v3)
      {
        result = *v3;
        *v3 = *v5;
        *v5 = result;
      }
    }
  }

  return result;
}

void *std::set<float>::set[abi:ne200100]<float const*>(void *a1, float *a2, float *a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<float>::__emplace_hint_unique_key_args<float,float const&>(a1, v4, v6++);
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t std::__tree<float>::__emplace_hint_unique_key_args<float,float const&>(void *a1, float *a2, float *a3)
{
  v3 = *std::__tree<float>::__find_equal<float>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

float *std::__tree<float>::__find_equal<float>(void *a1, float *a2, float **a3, float *a4, float *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[7], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 2;
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
        v10 = *(v13 + 2);
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[7] < *a5)
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
          v18 = v16[7];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v16;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v16 + 2;
        v16 = *(v16 + 1);
      }

      while (v16);
      goto LABEL_43;
    }

LABEL_42:
    v17 = (a1 + 1);
LABEL_43:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    v12 = *(a2 + 1);
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
      a4 = *(v19 + 2);
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[7])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v20;
          v21 = v20[7];
          if (v6 >= v21)
          {
            break;
          }

          v20 = *v20;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v21 >= v6)
        {
          break;
        }

        v5 = v20 + 2;
        v20 = *(v20 + 1);
      }

      while (v20);
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 2;
  }

  return a4;
}

void std::__tree<float>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<float>::destroy(a1, *a2);
    std::__tree<float>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

float *std::__hash_table<std::__hash_value_type<float,unsigned char>,std::__unordered_map_hasher<float,std::__hash_value_type<float,unsigned char>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,unsigned char>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,unsigned char>>>::__emplace_unique_key_args<float,std::piecewise_construct_t const&,std::tuple<float const&>,std::tuple<>>(void *a1, float *a2)
{
  if (*a2 == 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *a2;
  }

  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_21;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v2;
    if (v2 >= *&v3)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = v2 & (*&v3 + 0xFFFFFFFFLL);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v8 = *(v7 + 1);
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
      goto LABEL_21;
    }

LABEL_20:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  if (v7[4] != *a2)
  {
    goto LABEL_20;
  }

  return v7;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned char>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::vector<unsigned char>>::__construct_one_at_end[abi:ne200100]<std::vector<unsigned char> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v3, *a2, a2[1], a2[1] - *a2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<unsigned char>>::__emplace_back_slow_path<std::vector<unsigned char> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned char>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(24 * v2, *a2, a2[1], a2[1] - *a2);
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
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v14);
  return v8;
}

void sub_2180541C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void MIL::Passes::AddOperationIdAttributes(MIL::Passes *this, MIL::Transform::ProgramTransformer *a2)
{
  MIL::Transform::ProgramTransformer::GetProgramBuilder(this, &v26);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v2 = *(MIL::Builder::ProgramBuilder::GetFunctions(v26) + 16);
  if (v2)
  {
    v3 = v24;
    do
    {
      if (v3 >= v25)
      {
        v3 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v23, v2 + 1);
      }

      else
      {
        if (*(v2 + 39) < 0)
        {
          std::string::__init_copy_ctor_external(v3, *(v2 + 2), *(v2 + 3));
        }

        else
        {
          v4 = v2[1];
          v3->__r_.__value_.__r.__words[2] = *(v2 + 4);
          *&v3->__r_.__value_.__l.__data_ = v4;
        }

        ++v3;
      }

      v24 = v3;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v3 = v24;
  }

  v5 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v3 - v23) >> 3));
  if (v3 == v23)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v23, &v3->__r_.__value_.__l.__data_, &v21, v6, 1);
  p_data = &v23->__r_.__value_.__l.__data_;
  v8 = v24;
  if (v23 != v24)
  {
    do
    {
      MIL::Builder::ProgramBuilder::GetFunction(v26, p_data, &v21);
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v9 = *(MIL::Builder::FunctionBuilder::GetSpecializations(v21) + 16);
      for (i = v19; v9; v9 = *v9)
      {
        if (i >= v20)
        {
          i = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v18, v9 + 1);
        }

        else
        {
          if (*(v9 + 39) < 0)
          {
            std::string::__init_copy_ctor_external(i, *(v9 + 2), *(v9 + 3));
          }

          else
          {
            v11 = v9[1];
            i->__r_.__value_.__r.__words[2] = *(v9 + 4);
            *&i->__r_.__value_.__l.__data_ = v11;
          }

          ++i;
        }

        v19 = i;
      }

      v12 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((i - v18) >> 3));
      if (i == v18)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v18, &i->__r_.__value_.__l.__data_, &v16, v13, 1);
      v14 = &v18->__r_.__value_.__l.__data_;
      if (v18 != v19)
      {
        MIL::Builder::FunctionBuilder::GetContext(v21, &v17);
        v15 = v17;
        MIL::Builder::FunctionBuilder::GetBlock(v21, v14, &v16);
      }

      v17 = &v18;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      p_data += 3;
    }

    while (p_data != v8);
  }

  v18 = &v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }
}

void sub_21805444C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  a13 = &a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

void sub_2180547C4(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a8 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a9, MEMORY[0x277D82828]);
      MEMORY[0x21CEAFDA0](va);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      __p = (v25 - 112);
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void MIL::Passes::TypeInferenceResult::~TypeInferenceResult(void **this)
{
  MIL::MILResult::~MILResult(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::Passes::TypeInferenceResult::TypeInferenceResult(MIL::Passes::TypeInferenceResult *this)
{
  result = MIL::MILResult::MILResult(this);
  *result = &unk_2829E61D0;
  *(result + 48) = 2;
  return result;
}

{
  result = MIL::MILResult::MILResult(this);
  *result = &unk_2829E61D0;
  *(result + 48) = 2;
  return result;
}

uint64_t MIL::Passes::TypeInferenceResult::TypeInferenceResult(uint64_t a1, __int128 *a2, int a3, uint64_t a4)
{
  v9 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *__p = *a4;
  v8 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  MIL::MILResult::MILResult(a1, &v9, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(&v9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
  }

  *a1 = &unk_2829E61D0;
  *(a1 + 48) = a3;
  return a1;
}

void sub_218054A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Passes::PropagateValueTypes(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v34 = 0;
  if (*(a5 + 48) == 2)
  {
    MIL::MILResult::~MILResult(a5);
    v11 = (a3 + 16);
    v12 = v34;
    v13 = v11;
    while (1)
    {
      v13 = *v13;
      if (!v13)
      {
        break;
      }

      if (!MIL::Builder::FunctionBuilder::TryGetInput(v12, (v13 + 2)))
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "No input named ", 15);
        v15 = *(v13 + 39);
        if (v15 >= 0)
        {
          v16 = (v13 + 2);
        }

        else
        {
          v16 = v13[2];
        }

        if (v15 >= 0)
        {
          v17 = *(v13 + 39);
        }

        else
        {
          v17 = v13[3];
        }

        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " in function ", 13);
        v20 = *(a2 + 23);
        if (v20 >= 0)
        {
          v21 = a2;
        }

        else
        {
          v21 = *a2;
        }

        if (v20 >= 0)
        {
          v22 = *(a2 + 23);
        }

        else
        {
          v22 = *(a2 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
        LocationPtr = MIL::Builder::FunctionBuilder::GetLocationPtr(v12);
        v24 = LocationPtr[1];
        *&v27 = *LocationPtr;
        *(&v27 + 1) = v24;
        if (v24)
        {
          atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
        }

        std::stringbuf::str();
        MIL::Passes::TypeInferenceResult::TypeInferenceResult(a5, &v27, 3, &__p);
        if (v26 < 0)
        {
          operator delete(__p);
        }

        if (*(&v27 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v27 + 1));
        }

        *&v28 = *MEMORY[0x277D82828];
        *(&v28 + *(v28 - 24)) = *(MEMORY[0x277D82828] + 24);
        *(&v28 + 1) = MEMORY[0x277D82878] + 16;
        if (v32 < 0)
        {
          operator delete(v31);
        }

        *(&v28 + 1) = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v29);
        std::ostream::~ostream();
        MEMORY[0x21CEAFDA0](&v33);
        return;
      }
    }

    v28 = 0u;
    v29 = 0u;
    v30 = 1065353216;
    if (*v11)
    {
      MIL::IRTypedArgument::Make(*(*v11 + 40), v10);
    }

    if (*(a5 + 48) == 2)
    {
      MIL::MILResult::~MILResult(a5);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v28);
  }
}

void sub_218054DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  std::ostringstream::~ostringstream(&a18);
  _Unwind_Resume(a1);
}

void anonymous namespace::GetFuncBuilder(uint64_t a1@<X0>, uint64_t a2@<X1>, MIL::Builder::FunctionBuilder **a3@<X2>, uint64_t a4@<X8>)
{
  MIL::Transform::ProgramTransformer::GetProgramBuilder(a1, &v37);
  Functions = MIL::Builder::ProgramBuilder::GetFunctions(v37);
  v8 = std::unordered_map<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>::unordered_map(v36, Functions);
  if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v8, a2))
  {
    MIL::Builder::ProgramBuilder::GetFunction(v37, a2, &v31);
    v9 = v31;
    v10 = v32;
    *a3 = v31;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      v9 = *a3;
    }

    if (*(MIL::Builder::FunctionBuilder::GetSpecializations(v9) + 24) == 1)
    {
      LocationPtr = MIL::Builder::ProgramBuilder::GetLocationPtr(v37);
      v12 = LocationPtr[1];
      *&v24 = *LocationPtr;
      *(&v24 + 1) = v12;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Success");
      MIL::Passes::TypeInferenceResult::TypeInferenceResult(a4, &v24, 2, __p);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      v13 = *(&v24 + 1);
      if (!*(&v24 + 1))
      {
        goto LABEL_32;
      }

LABEL_31:
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      goto LABEL_32;
    }

    v20 = MIL::Builder::FunctionBuilder::GetLocationPtr(*a3);
    v21 = v20[1];
    *&v27 = *v20;
    *(&v27 + 1) = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v25, "Only support exactly 1 IRFunction specialization");
    MIL::Passes::TypeInferenceResult::TypeInferenceResult(a4, &v27, 4, v25);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    v13 = *(&v27 + 1);
    if (*(&v27 + 1))
    {
      goto LABEL_31;
    }
  }

  else
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v31);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "No function named ", 18);
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
    v18 = MIL::Builder::ProgramBuilder::GetLocationPtr(v37);
    v19 = v18[1];
    *&v30 = *v18;
    *(&v30 + 1) = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    std::stringbuf::str();
    MIL::Passes::TypeInferenceResult::TypeInferenceResult(a4, &v30, 3, &v28);
    if (v29 < 0)
    {
      operator delete(v28);
    }

    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
    }

    v31 = *MEMORY[0x277D82828];
    *(&v31 + *(v31 - 3)) = *(MEMORY[0x277D82828] + 24);
    v32 = MEMORY[0x277D82878] + 16;
    if (v34 < 0)
    {
      operator delete(v33[7].__locale_);
    }

    v32 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v33);
    std::ostream::~ostream();
    MEMORY[0x21CEAFDA0](&v35);
  }

LABEL_32:
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v36);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }
}

void sub_218055110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v34 - 88);
  v36 = *(v34 - 40);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(a1);
}

void *std::shared_ptr<MIL::IRTypedArgument>::operator=[abi:ne200100]<MIL::IRTypedArgument,std::default_delete<MIL::IRTypedArgument>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::IRTypedArgument>::shared_ptr[abi:ne200100]<MIL::IRTypedArgument,std::default_delete<MIL::IRTypedArgument>,0>(&v6, a2);
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

void anonymous namespace::InferValueTypesFromFunction(MIL::Builder::FunctionBuilder *this@<X1>, uint64_t a2@<X0>, void *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = MIL::Builder::FunctionBuilder::SelectedSpecialization(this);
  MIL::Builder::FunctionBuilder::GetBlock(this, v10, &v11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_2180552A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ModifyFunctionWithTypes(MIL::Builder::FunctionBuilder *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MIL::Builder::FunctionBuilder::SelectedSpecialization(a1);
  MIL::Builder::FunctionBuilder::GetBlock(a1, v6, &v19);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (*(a3 + 48) == 2)
  {
    MIL::MILResult::~MILResult(a3);
    MIL::Builder::FunctionBuilder::GetInputs(a1, &v19);
    for (i = v21; i; i = *i)
    {
      Name = MIL::Builder::Variable::GetName(i[2]);
      if (*(Name + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, *Name, *(Name + 1));
      }

      else
      {
        v9 = *Name;
        v18.__r_.__value_.__r.__words[2] = *(Name + 2);
        *&v18.__r_.__value_.__l.__data_ = v9;
      }

      if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &v18.__r_.__value_.__l.__data_))
      {
        MIL::Builder::FunctionBuilder::RemoveInput(a1, &v18.__r_.__value_.__l.__data_);
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
        }

        else
        {
          v17 = v18;
        }

        v10 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &v18.__r_.__value_.__l.__data_);
        if (!v10)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        ValueType = MIL::IRTypedArgument::GetValueType(v10[5]);
        MIL::Builder::FunctionBuilder::AddInput(a1, &v17, ValueType);
        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }
    }

    std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&v19);
    LocationPtr = MIL::Builder::FunctionBuilder::GetLocationPtr(a1);
    v13 = LocationPtr[1];
    *&v16 = *LocationPtr;
    *(&v16 + 1) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Success");
    MIL::Passes::TypeInferenceResult::TypeInferenceResult(a3, &v16, 2, __p);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }
  }
}

void sub_21805548C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Passes::PropagateInputTensorShapes(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v114 = 0;
  if (*(a5 + 48) == 2)
  {
    MIL::MILResult::~MILResult(a5);
    memset(v112, 0, sizeof(v112));
    v113 = 1065353216;
    v10 = *(a3 + 16);
    if (v10)
    {
      while (1)
      {
        Input = MIL::Builder::FunctionBuilder::TryGetInput(v114, (v10 + 2));
        if (!Input)
        {
          break;
        }

        Type = MIL::Builder::Variable::TryGetType(Input);
        v14 = Type;
        if (!Type)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v106);
          v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, "PropagateInputTensorShapes cannot detect the type of ", 53);
          v58 = *(v10 + 39);
          if (v58 >= 0)
          {
            v59 = (v10 + 2);
          }

          else
          {
            v59 = v10[2];
          }

          if (v58 >= 0)
          {
            v60 = *(v10 + 39);
          }

          else
          {
            v60 = v10[3];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, v59, v60);
          LocationPtr = MIL::Builder::FunctionBuilder::GetLocationPtr(v114);
          v62 = LocationPtr[1];
          *&v102 = *LocationPtr;
          *(&v102 + 1) = v62;
          if (v62)
          {
            atomic_fetch_add_explicit((v62 + 8), 1uLL, memory_order_relaxed);
          }

          std::stringbuf::str();
          MIL::Passes::TypeInferenceResult::TypeInferenceResult(a5, &v102, 3, &v100);
          if (v101 < 0)
          {
            operator delete(v100);
          }

          v56 = *(&v102 + 1);
          if (!*(&v102 + 1))
          {
            goto LABEL_51;
          }

LABEL_50:
          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
          goto LABEL_51;
        }

        if (MIL::IsTensor(Type, v13))
        {
          v15 = MIL::IRValueType::AsTensorType(v14);
          (*(*v15 + 88))(v15);
          __p = 0;
          v86 = 0;
          v87 = 0;
          std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, v10[5], v10[6], v10[6] - v10[5]);
          v16 = (*(*v15 + 80))(v15);
          std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(&v106, v16);
          MIL::Builder::FunctionBuilder::GetContext(v114, &v91);
          MIL::IRTensorValueType::MakeWithShape();
        }

        if (!MIL::IRValueType::TryCastAsStateType(v14))
        {
          if (MIL::IsTensorBuffer(v14, v17))
          {
            MIL::Builder::FunctionBuilder::GetContext(v114, &v93);
            memset(v92, 0, sizeof(v92));
            std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v92, v10[5], v10[6], v10[6] - v10[5]);
          }

          if (MIL::IsPixelBuffer(v14, v25))
          {
            v33 = MIL::IRValueType::AsMemoryLayoutType(v14);
            v34 = MIL::IRMemoryLayoutValueType::AsPixelBufferType(v33);
            MIL::IRPixelBufferValueType::GetPixelFormatType(v34);
            __p = 0;
            v86 = 0;
            v87 = 0;
            std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, v10[5], v10[6], v10[6] - v10[5]);
            BytesPerRow = MIL::IRPixelBufferValueType::TryGetBytesPerRow(v34);
            Attributes = MIL::IRPixelBufferValueType::GetAttributes(v34);
            std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(&v106, Attributes);
            if (BytesPerRow)
            {
              v37 = MIL::IRPixelBufferValueType::GetBytesPerRow(v34);
              memset(&v91, 0, sizeof(v91));
              std::vector<MIL::IRProperty const*>::__init_with_size[abi:ne200100]<MIL::IRProperty const**,MIL::IRProperty const**>(&v91, *v37, v37[1], (v37[1] - *v37) >> 3);
              MIL::Builder::FunctionBuilder::GetContext(v114, &v99);
              MIL::IRPixelBufferValueType::MakeWithShape();
            }

            MIL::Builder::FunctionBuilder::GetContext(v114, &v91);
            MIL::IRPixelBufferValueType::MakeWithShape();
          }

          std::ostringstream::basic_ostringstream[abi:ne200100](&v106);
          v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, "PropagateInputTensorShapes: Unsupported input type for: ", 56);
          v77 = *(v10 + 39);
          if (v77 >= 0)
          {
            v78 = (v10 + 2);
          }

          else
          {
            v78 = v10[2];
          }

          if (v77 >= 0)
          {
            v79 = *(v10 + 39);
          }

          else
          {
            v79 = v10[3];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, v78, v79);
          v80 = MIL::Builder::FunctionBuilder::GetLocationPtr(v114);
          v81 = v80[1];
          *&v90 = *v80;
          *(&v90 + 1) = v81;
          if (v81)
          {
            atomic_fetch_add_explicit((v81 + 8), 1uLL, memory_order_relaxed);
          }

          std::stringbuf::str();
          MIL::Passes::TypeInferenceResult::TypeInferenceResult(a5, &v90, 3, &v88);
          if (v89 < 0)
          {
            operator delete(v88);
          }

          v75 = *(&v90 + 1);
          if (!*(&v90 + 1))
          {
            goto LABEL_97;
          }

LABEL_96:
          std::__shared_weak_count::__release_shared[abi:ne200100](v75);
LABEL_97:
          std::ostringstream::~ostringstream(&v106);
          goto LABEL_54;
        }

        v18 = MIL::IRValueType::AsStateType(v14);
        WrappedType = MIL::IRStateValueType::GetWrappedType(v18);
        if ((*(*WrappedType + 24))(WrappedType))
        {
          v20 = MIL::IRValueType::AsStateType(v14);
          v21 = MIL::IRStateValueType::GetWrappedType(v20);
          v22 = MIL::IRValueType::AsTensorType(v21);
          (*(*v22 + 88))(v22);
          __p = 0;
          v86 = 0;
          v87 = 0;
          std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, v10[5], v10[6], v10[6] - v10[5]);
          v23 = (*(*v22 + 80))(v22);
          std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(&v106, v23);
          v24 = v114;
          MIL::Builder::FunctionBuilder::GetContext(v114, &v91);
          MIL::Builder::FunctionBuilder::GetContext(v24, &v99);
          MIL::IRTensorValueType::MakeWithShape();
        }

        v26 = MIL::IRValueType::AsStateType(v14);
        v27 = MIL::IRStateValueType::GetWrappedType(v26);
        if (!MIL::IRValueType::TryCastAsMemoryLayoutType(v27))
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v106);
          v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, "PropagateInputTensorShapes: State input ", 40);
          v69 = *(v10 + 39);
          if (v69 >= 0)
          {
            v70 = (v10 + 2);
          }

          else
          {
            v70 = v10[2];
          }

          if (v69 >= 0)
          {
            v71 = *(v10 + 39);
          }

          else
          {
            v71 = v10[3];
          }

          v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v70, v71);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, " wraps an invalid type.", 23);
          v73 = MIL::Builder::FunctionBuilder::GetLocationPtr(v114);
          v74 = v73[1];
          *&v96 = *v73;
          *(&v96 + 1) = v74;
          if (v74)
          {
            atomic_fetch_add_explicit((v74 + 8), 1uLL, memory_order_relaxed);
          }

          std::stringbuf::str();
          MIL::Passes::TypeInferenceResult::TypeInferenceResult(a5, &v96, 3, &v94);
          if (v95 < 0)
          {
            operator delete(v94);
          }

          v75 = *(&v96 + 1);
          if (*(&v96 + 1))
          {
            goto LABEL_96;
          }

          goto LABEL_97;
        }

        v28 = MIL::IRValueType::AsStateType(v14);
        v29 = MIL::IRStateValueType::GetWrappedType(v28);
        v30 = MIL::IRValueType::AsMemoryLayoutType(v29);
        if (MIL::IRMemoryLayoutValueType::TryAsTensorBufferType(v30))
        {
          v31 = MIL::IRValueType::AsStateType(v14);
          v32 = MIL::IRStateValueType::GetWrappedType(v31);
          MIL::Builder::FunctionBuilder::GetContext(v114, &v98);
          memset(v97, 0, sizeof(v97));
          std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v97, v10[5], v10[6], v10[6] - v10[5]);
        }

        v10 = *v10;
        if (!v10)
        {
          goto LABEL_21;
        }
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](&v106);
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, "No input named ", 15);
      v46 = *(v10 + 39);
      if (v46 >= 0)
      {
        v47 = (v10 + 2);
      }

      else
      {
        v47 = v10[2];
      }

      if (v46 >= 0)
      {
        v48 = *(v10 + 39);
      }

      else
      {
        v48 = v10[3];
      }

      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v47, v48);
      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " in function ", 13);
      v51 = *(a2 + 23);
      if (v51 >= 0)
      {
        v52 = a2;
      }

      else
      {
        v52 = *a2;
      }

      if (v51 >= 0)
      {
        v53 = *(a2 + 23);
      }

      else
      {
        v53 = *(a2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v52, v53);
      v54 = MIL::Builder::FunctionBuilder::GetLocationPtr(v114);
      v55 = v54[1];
      *&v105 = *v54;
      *(&v105 + 1) = v55;
      if (v55)
      {
        atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
      }

      std::stringbuf::str();
      MIL::Passes::TypeInferenceResult::TypeInferenceResult(a5, &v105, 3, &v103);
      if (v104 < 0)
      {
        operator delete(v103);
      }

      v56 = *(&v105 + 1);
      if (*(&v105 + 1))
      {
        goto LABEL_50;
      }

LABEL_51:
      v106 = *MEMORY[0x277D82828];
      *(&v106 + *(v106 - 3)) = *(MEMORY[0x277D82828] + 24);
      v107 = MEMORY[0x277D82878] + 16;
      if (v110 < 0)
      {
        operator delete(v109);
      }

      v107 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v108);
      std::ostream::~ostream();
      MEMORY[0x21CEAFDA0](v111);
    }

    else
    {
LABEL_21:
      v38 = v114;
      MIL::Builder::FunctionBuilder::GetInputs(v114, &__p);
      v39 = v87;
      if (v87)
      {
        while (1)
        {
          v40 = v39[2];
          Name = MIL::Builder::Variable::GetName(v40);
          if (*(Name + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v91, *Name, *(Name + 1));
          }

          else
          {
            v42 = *Name;
            v91.__r_.__value_.__r.__words[2] = *(Name + 2);
            *&v91.__r_.__value_.__l.__data_ = v42;
          }

          if (!std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v112, &v91.__r_.__value_.__l.__data_))
          {
            break;
          }

          if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v91.__r_.__value_.__l.__data_);
          }

          v39 = *v39;
          if (!v39)
          {
            goto LABEL_31;
          }
        }

        v43 = MIL::Builder::Variable::TryGetType(v40);
        if (v43)
        {
          MIL::IRTypedArgument::Make(v43, v44);
        }

        std::ostringstream::basic_ostringstream[abi:ne200100](&v106);
        v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, "PropagateInputTensorShapes cannot detect the type of ", 53);
        if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = &v91;
        }

        else
        {
          v64 = v91.__r_.__value_.__r.__words[0];
        }

        if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v91.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v91.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, v64, size);
        v66 = MIL::Builder::FunctionBuilder::GetLocationPtr(v38);
        v67 = v66[1];
        *&v84 = *v66;
        *(&v84 + 1) = v67;
        if (v67)
        {
          atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
        }

        std::stringbuf::str();
        MIL::Passes::TypeInferenceResult::TypeInferenceResult(a5, &v84, 3, &v82);
        if (v83 < 0)
        {
          operator delete(v82);
        }

        if (*(&v84 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v84 + 1));
        }

        v106 = *MEMORY[0x277D82828];
        *(&v106 + *(v106 - 3)) = *(MEMORY[0x277D82828] + 24);
        v107 = MEMORY[0x277D82878] + 16;
        if (v110 < 0)
        {
          operator delete(v109);
        }

        v107 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v108);
        std::ostream::~ostream();
        MEMORY[0x21CEAFDA0](v111);
        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&__p);
      }

      else
      {
LABEL_31:
        std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&__p);
        if (*(a5 + 48) == 2)
        {
          MIL::MILResult::~MILResult(a5);
        }
      }
    }

LABEL_54:
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v112);
  }
}

void sub_218056290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  std::ostringstream::~ostringstream(&a59);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v59 - 160);
  _Unwind_Resume(a1);
}

void anonymous namespace::GetTensorBufferArgumentHelper(uint64_t a1, MIL::IRValueType *a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v10, 0, sizeof(v10));
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v10, *a3, a3[1], (a3[1] - *a3) >> 3);
  v5 = MIL::IRValueType::AsMemoryLayoutType(a2);
  v6 = MIL::IRMemoryLayoutValueType::AsTensorBufferType(v5);
  MIL::IRTensorBufferValueType::GetDataType(v6);
  InterleaveFactors = MIL::IRTensorBufferValueType::GetInterleaveFactors(v6);
  memset(v13, 0, sizeof(v13));
  std::vector<MIL::IRProperty const*>::__init_with_size[abi:ne200100]<MIL::IRProperty const**,MIL::IRProperty const**>(v13, *InterleaveFactors, InterleaveFactors[1], (InterleaveFactors[1] - *InterleaveFactors) >> 3);
  Attributes = MIL::IRTensorBufferValueType::GetAttributes(v6);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v12, Attributes);
  memset(__p, 0, sizeof(__p));
  if (MIL::IRTensorBufferValueType::TryGetStrides(v6))
  {
    Strides = MIL::IRTensorBufferValueType::GetStrides(v6);
    if (__p != Strides)
    {
      std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(__p, *Strides, Strides[1], (Strides[1] - *Strides) >> 3);
    }

    MIL::IRTensorBufferValueType::MakeWithShape();
  }

  MIL::IRTensorBufferValueType::TryGetRowAlignmentInBytes(v6);
  MIL::IRTensorBufferValueType::MakeWithShapeAndRowAlignment();
}

void sub_2180567FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::Builder::FunctionBuilder>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::Builder::FunctionBuilder>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::FunctionBuilder>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<MIL::Builder::FunctionBuilder>> const&>();
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

void sub_218056B48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::InferValueTypesFromBlock@<X0>(MIL::Builder::BlockBuilder *this@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  memset(v353, 0, sizeof(v353));
  v354 = 1065353216;
  memset(v351, 0, sizeof(v351));
  v352 = 1065353216;
  MIL::Builder::BlockBuilder::GetOperations(this, &v349);
  v8 = v349;
  v312 = v350;
  if (v349 == v350)
  {
LABEL_584:
    ValueType = &v349;
    std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&ValueType);
    LocationPtr = MIL::Builder::BlockBuilder::GetLocationPtr(this);
    v305 = LocationPtr[1];
    *&v320 = *LocationPtr;
    *(&v320 + 1) = v305;
    if (v305)
    {
      atomic_fetch_add_explicit((v305 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v318, "Success");
    MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v320, 2, v318);
    if (v319 < 0)
    {
      operator delete(v318[0]);
    }

    if (*(&v320 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v320 + 1));
    }

    goto LABEL_590;
  }

  v310 = *(MEMORY[0x277D82828] + 24);
  v311 = *MEMORY[0x277D82828];
  while (2)
  {
    v315 = v8;
    v9 = *v8;
    v10 = *(v8 + 8);
    v347 = v9;
    v348 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Operator = MIL::Builder::OperationBuilder::GetOperator(v9);
    if ((*(*Operator + 104))(Operator))
    {
      v12 = 3;
      goto LABEL_529;
    }

    v13 = MIL::Builder::OperationBuilder::GetOperator(v347);
    v14 = (*(*v13 + 16))(v13);
    if (*(v14 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v343, *v14, *(v14 + 8));
    }

    else
    {
      v15 = *v14;
      v343.__r_.__value_.__r.__words[2] = *(v14 + 16);
      *&v343.__r_.__value_.__l.__data_ = v15;
    }

    if (SHIBYTE(v343.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v343.__r_.__value_.__l.__data_);
    }

    v17 = v346;
    if (v346 < 0)
    {
      if (v345 == 14)
      {
        v18 = v344;
        goto LABEL_17;
      }
    }

    else if (v346 == 14)
    {
      v18 = &v344;
LABEL_17:
      v19 = *v18;
      v20 = *(v18 + 6);
      v21 = v19 == 0x6172745F766E6F63 && v20 == 0x65736F70736E6172;
      if (v21)
      {
        MIL::Builder::OperationBuilder::GetParameterNames(v347, &ValueType);
        std::string::basic_string[abi:ne200100]<0>(&__src, "output_shape");
        v63 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(&ValueType, &__src);
        if (SBYTE7(v366) < 0)
        {
          operator delete(__src);
        }

        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&ValueType);
        if (v63)
        {
          v64 = MIL::Builder::OperationBuilder::GetLocationPtr(v347);
          v65 = v64[1];
          *&v342 = *v64;
          *(&v342 + 1) = v65;
          if (v65)
          {
            atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v340, "Could not infer a new output shape for conv_transpose when output_shape is given as an input. If you would like the op output shape to change according to the new input, try removing output_shape with caution.");
          MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v342, 3, v340);
          if (v341 < 0)
          {
            operator delete(v340[0]);
          }

          if (*(&v342 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v342 + 1));
          }

          v12 = 1;
          goto LABEL_527;
        }
      }
    }

    v309 = v17;
    v337 = 0u;
    v338 = 0u;
    v339 = 1065353216;
    v313 = v347;
    Parameters = MIL::BuilderPrivate::OperationBuilderPrivate::GetParameters(v347, v16);
    v24 = Parameters + 1;
    v23 = *Parameters;
    if (*Parameters == Parameters + 1)
    {
LABEL_90:
      v60 = MIL::Builder::OperationBuilder::GetLocationPtr(v313);
      v61 = v60[1];
      *&__src = *v60;
      *(&__src + 1) = v61;
      if (v61)
      {
        atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&ValueType, "Success");
      MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &__src, 2, &ValueType);
      if (SHIBYTE(v383.__locale_) < 0)
      {
        operator delete(ValueType);
      }

      if (*(&__src + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&__src + 1));
      }
    }

    else
    {
      while (1)
      {
        __src = 0uLL;
        *&v366 = 0;
        if (*(v23 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v364, v23[4], v23[5]);
        }

        else
        {
          v364 = *(v23 + 4);
        }

        v26 = v23[7];
        v25 = v23[8];
        while (v26 != v25)
        {
          v28 = *v26;
          v27 = *(v26 + 8);
          if (v27)
          {
            atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((*(*v28 + 24))(v28))
          {
            (*(*v28 + 48))(v361, v28);
            MIL::IRTypedArgument::Make();
          }

          Name = MIL::IRArgument::GetName(v28);
          Variable = MIL::Builder::BlockBuilder::TryGetVariable(this, Name);
          v31 = Variable;
          if (!Variable)
          {
            goto LABEL_600;
          }

          MIL::Builder::Variable::TryGetValueSharedPtr(Variable, &ValueType);
          v32 = ValueType;
          if (v382)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v382);
          }

          if (v32)
          {
            MIL::Builder::Variable::TryGetValueSharedPtr(v31, v356);
            MIL::IRTypedArgument::Make();
          }

          Type = MIL::Builder::Variable::TryGetType(v31);
          if (!Type)
          {
LABEL_600:
            Input = MIL::Builder::FunctionBuilder::TryGetInput(a3, Name);
            if (!Input || (Type = MIL::Builder::Variable::TryGetType(Input)) == 0)
            {
              std::ostringstream::basic_ostringstream[abi:ne200100](&ValueType);
              v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&ValueType, "Could not deduce type of arg: ", 30);
              v54 = *(Name + 23);
              if (v54 >= 0)
              {
                v55 = Name;
              }

              else
              {
                v55 = *Name;
              }

              if (v54 >= 0)
              {
                v56 = *(Name + 23);
              }

              else
              {
                v56 = *(Name + 8);
              }

              v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v55, v56);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, ".", 1);
              v58 = MIL::Builder::OperationBuilder::GetLocationPtr(v313);
              v59 = v58[1];
              *&v335 = *v58;
              *(&v335 + 1) = v59;
              if (v59)
              {
                atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
              }

              std::stringbuf::str();
              MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v335, 3, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (*(&v335 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v335 + 1));
              }

              ValueType = v311;
              *(&ValueType + *(v311 - 3)) = v310;
              v382 = (MEMORY[0x277D82878] + 16);
              if (v387 < 0)
              {
                operator delete(v386);
              }

              v382 = (MEMORY[0x277D82868] + 16);
              std::locale::~locale(&v383);
              std::ostream::~ostream();
              MEMORY[0x21CEAFDA0](v388);
              if (v27)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v27);
              }

              v50 = 0;
              goto LABEL_63;
            }
          }

          if (!std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a4, Name))
          {
            MIL::IRTypedArgument::Make(Type, v35);
          }

          v36 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a4, Name);
          if (!v36)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v37 = *(&__src + 1);
          if (*(&__src + 1) >= v366)
          {
            v40 = (*(&__src + 1) - __src) >> 4;
            v41 = v40 + 1;
            if ((v40 + 1) >> 60)
            {
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v42 = v366 - __src;
            if ((v366 - __src) >> 3 > v41)
            {
              v41 = v42 >> 3;
            }

            if (v42 >= 0x7FFFFFFFFFFFFFF0)
            {
              v43 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v43 = v41;
            }

            p_src = &__src;
            if (v43)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(&__src, v43);
            }

            v44 = 16 * v40;
            v45 = *(v36 + 5);
            *(16 * v40) = v45;
            if (*(&v45 + 1))
            {
              atomic_fetch_add_explicit((*(&v45 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            v39 = v44 + 16;
            v46 = (v44 - (*(&__src + 1) - __src));
            memcpy(v46, __src, *(&__src + 1) - __src);
            v47 = __src;
            v48 = v366;
            *&__src = v46;
            *(&__src + 1) = v39;
            *&v366 = 0;
            v383.__locale_ = v47;
            v384 = v48;
            v382 = v47;
            ValueType = v47;
            std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(&ValueType);
          }

          else
          {
            **(&__src + 1) = v36[5];
            v38 = v36[6];
            *(v37 + 8) = v38;
            if (v38)
            {
              atomic_fetch_add_explicit(v38 + 1, 1uLL, memory_order_relaxed);
            }

            v39 = v37 + 16;
          }

          *(&__src + 1) = v39;
          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }

          v26 += 16;
        }

        ValueType = &v364;
        v49 = (std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v337, &v364.__r_.__value_.__l.__data_) + 5);
        if (v49 != &__src)
        {
          std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__assign_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(v49, __src, *(&__src + 1), (*(&__src + 1) - __src) >> 4);
        }

        v50 = 1;
LABEL_63:
        if (SHIBYTE(v364.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v364.__r_.__value_.__l.__data_);
        }

        ValueType = &__src;
        std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&ValueType);
        if (!v50)
        {
          break;
        }

        v51 = v23[1];
        if (v51)
        {
          do
          {
            v52 = v51;
            v51 = *v51;
          }

          while (v51);
        }

        else
        {
          do
          {
            v52 = v23[2];
            v21 = *v52 == v23;
            v23 = v52;
          }

          while (!v21);
        }

        v23 = v52;
        if (v52 == v24)
        {
          goto LABEL_90;
        }
      }
    }

    if (*(a6 + 48) != 2)
    {
      v12 = 1;
      goto LABEL_526;
    }

    MIL::MILResult::~MILResult(a6);
    v335 = 0uLL;
    v336 = 0;
    if ((v309 & 0x80) != 0)
    {
      if (v345 != 10)
      {
        goto LABEL_117;
      }

      v62 = v344;
    }

    else
    {
      if (v309 != 10)
      {
        goto LABEL_117;
      }

      v62 = &v344;
    }

    v66 = *v62;
    v67 = v62[4];
    if (v66 != 0x6F6C5F656C696877 || v67 != 28783)
    {
LABEL_117:
      v69 = a6;
      goto LABEL_118;
    }

    v77 = v347;
    __src = 0uLL;
    *&v366 = 0;
    memset(&v364, 0, sizeof(v364));
    std::string::basic_string[abi:ne200100]<0>(&ValueType, "loop_vars");
    NumArguments = MIL::Builder::OperationBuilder::GetNumArguments(v77, &ValueType);
    v79 = NumArguments;
    if (SHIBYTE(v383.__locale_) < 0)
    {
      operator delete(ValueType);
      if (!v79)
      {
LABEL_166:
        v89 = MIL::Builder::OperationBuilder::GetLocationPtr(v77);
        v90 = v89[1];
        __p.__r_.__value_.__r.__words[0] = *v89;
        __p.__r_.__value_.__l.__size_ = v90;
        if (v90)
        {
          atomic_fetch_add_explicit((v90 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&ValueType, "Success");
        MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &__p, 2, &ValueType);
        goto LABEL_190;
      }
    }

    else if (!NumArguments)
    {
      goto LABEL_166;
    }

    v85 = 0;
    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(&ValueType, "loop_vars");
      ArgumentForParameter = MIL::Builder::OperationBuilder::GetArgumentForParameter(v77, &ValueType, v85);
      if (SHIBYTE(v383.__locale_) < 0)
      {
        operator delete(ValueType);
      }

      v87 = MIL::Builder::Variable::TryGetName(ArgumentForParameter);
      if (!v87 || !std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, v87))
      {
        break;
      }

      v88 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, v87);
      if (!v88)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      ValueType = MIL::IRTypedArgument::TryGetValueType(v88[5]);
      if (!ValueType)
      {
        break;
      }

      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__src, &ValueType);
LABEL_165:
      if (v79 == ++v85)
      {
        goto LABEL_166;
      }
    }

    v361[0] = MIL::Builder::Variable::TryGetType(ArgumentForParameter);
    if (v361[0])
    {
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__src, v361);
      goto LABEL_165;
    }

    v96 = MIL::Builder::OperationBuilder::GetLocationPtr(v77);
    v97 = v96[1];
    __p.__r_.__value_.__r.__words[0] = *v96;
    __p.__r_.__value_.__l.__size_ = v97;
    if (v97)
    {
      atomic_fetch_add_explicit((v97 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&ValueType, "Could not get the type for a while_loop var");
    MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &__p, 5, &ValueType);
LABEL_190:
    if (SHIBYTE(v383.__locale_) < 0)
    {
      operator delete(ValueType);
    }

    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }

    if (*(a6 + 48) == 2)
    {
      MIL::MILResult::~MILResult(a6);
      if (*(a6 + 48) == 2)
      {
        MIL::MILResult::~MILResult(a6);
        v99 = *(&__src + 1);
        v100 = __src;
        v101 = (*(&__src + 1) - __src) >> 3;
        v102 = v364.__r_.__value_.__r.__words[0];
        v382 = 0;
        ValueType = 0;
        v383.__locale_ = 0;
        std::vector<std::string const*>::reserve(&ValueType, v101);
        if (v99 == v100)
        {
LABEL_421:
          std::vector<std::vector<MIL::IRValueType const*>>::__assign_with_size[abi:ne200100]<std::vector<MIL::IRValueType const*>*,std::vector<MIL::IRValueType const*>*>(&v335, v364.__r_.__value_.__l.__data_, v364.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v364.__r_.__value_.__l.__size_ - v364.__r_.__value_.__r.__words[0]) >> 3));
LABEL_422:
          v243 = MIL::Builder::OperationBuilder::GetLocationPtr(v77);
          v244 = *(v243 + 8);
          v361[0] = *v243;
          v361[1] = v244;
          if (v244)
          {
            atomic_fetch_add_explicit(v244 + 1, 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, "Success");
          MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, v361, 2, &__p);
LABEL_440:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v361[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v361[1]);
          }
        }

        else
        {
          v103 = 0;
          v104 = 0;
          if (v101 <= 1)
          {
            v105 = 1;
          }

          else
          {
            v105 = v101;
          }

          do
          {
            v106 = *(__src + 8 * v103);
            MIL::Builder::FunctionBuilder::GetContext(a3, &__p);
            v108 = *(v102 + 24);
            if (v103 >= (*(v102 + 32) - v108) >> 3)
            {
              std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
            }

            StrongestCompatibleType = MIL::GetStrongestCompatibleType(__p.__r_.__value_.__l.__data_, v106, *(v108 + 8 * v103), v107);
            if (__p.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
            }

            v356[0] = StrongestCompatibleType;
            if (!StrongestCompatibleType)
            {
              v248 = MIL::Builder::OperationBuilder::GetLocationPtr(v77);
              v249 = *(v248 + 8);
              v361[0] = *v248;
              v361[1] = v249;
              if (v249)
              {
                atomic_fetch_add_explicit(v249 + 1, 1uLL, memory_order_relaxed);
              }

              std::string::basic_string[abi:ne200100]<0>(&__p, "Could not reconcile loop_var types & body block output types");
              MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, v361, 5, &__p);
              goto LABEL_440;
            }

            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&ValueType, v356);
            v104 |= StrongestCompatibleType != v106;
            ++v103;
          }

          while (v105 != v103);
          if ((v104 & 1) == 0)
          {
            goto LABEL_421;
          }

          memset(&__p, 0, sizeof(__p));
          if (*(a6 + 48) == 2)
          {
            MIL::MILResult::~MILResult(a6);
            if (v102 != __p.__r_.__value_.__r.__words[0])
            {
              std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>((v102 + 24), *(__p.__r_.__value_.__r.__words[0] + 24), *(__p.__r_.__value_.__r.__words[0] + 32), (*(__p.__r_.__value_.__r.__words[0] + 32) - *(__p.__r_.__value_.__r.__words[0] + 24)) >> 3);
            }

            v111 = 0;
            while (1)
            {
              if (v111 >= (v382 - ValueType) >> 3 || (v112 = *(v102 + 24), v111 >= (*(v102 + 32) - v112) >> 3))
              {
                std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
              }

              if ((MIL::IsEqualOrStrongerType(*(ValueType + v111), *(v112 + 8 * v111), v110) & 1) == 0)
              {
                break;
              }

              if (v105 == ++v111)
              {
                std::vector<std::vector<MIL::IRValueType const*>>::__assign_with_size[abi:ne200100]<std::vector<MIL::IRValueType const*>*,std::vector<MIL::IRValueType const*>*>(&v335, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3));
                v361[0] = &__p;
                std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](v361);
                goto LABEL_422;
              }
            }

            v284 = MIL::Builder::OperationBuilder::GetLocationPtr(v77);
            v285 = *(v284 + 8);
            v356[0] = *v284;
            v356[1] = v285;
            if (v285)
            {
              atomic_fetch_add_explicit(v285 + 1, 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v361, "Unable to find compatible nested block input types for while_loop");
            MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, v356, 5, v361);
            if (v362 < 0)
            {
              operator delete(v361[0]);
            }

            if (v356[1])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v356[1]);
            }
          }

          p_p = &__p;
          std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&p_p);
        }

        if (ValueType)
        {
          v382 = ValueType;
          operator delete(ValueType);
        }
      }
    }

    ValueType = &v364;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&ValueType);
    if (__src)
    {
      *(&__src + 1) = __src;
      operator delete(__src);
    }

    v69 = a6;
LABEL_118:
    if (*(v69 + 48) != 2)
    {
      v12 = 1;
      goto LABEL_525;
    }

    MIL::MILResult::~MILResult(v69);
    v314 = MIL::Builder::OperationBuilder::GetOperator(v347);
    MIL::Builder::OperationBuilder::GetOutputs(v347, &p_p);
    if (!(*(*v314 + 128))(v314))
    {
      __src = 0u;
      v366 = 0u;
      v367 = 1065353216;
      v74 = v347;
      v75 = (*(*v314 + 16))(v314);
      if (*(v75 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v364, *v75, *(v75 + 8));
      }

      else
      {
        v76 = *v75;
        v364.__r_.__value_.__r.__words[2] = *(v75 + 16);
        *&v364.__r_.__value_.__l.__data_ = v76;
      }

      if (SHIBYTE(v383.__locale_) < 0)
      {
        v81 = v382 != 5 || *ValueType != 1885431923 || *(ValueType + 4) != 101;
        operator delete(ValueType);
      }

      else
      {
        v81 = SHIBYTE(v383.__locale_) != 5 || ValueType != 1885431923 || BYTE4(ValueType) != 101;
      }

      if (SHIBYTE(v364.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v364.__r_.__value_.__l.__data_);
        if (v81)
        {
LABEL_219:
          v113 = MIL::Builder::OperationBuilder::GetLocationPtr(v74);
          v114 = v113[1];
          __p.__r_.__value_.__r.__words[0] = *v113;
          __p.__r_.__value_.__l.__size_ = v114;
          if (v114)
          {
            atomic_fetch_add_explicit((v114 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(&ValueType, "Success");
          MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &__p, 2, &ValueType);
          if (SHIBYTE(v383.__locale_) < 0)
          {
            operator delete(ValueType);
          }

          if (__p.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
          }

LABEL_275:
          v141 = 0;
LABEL_276:
          if (*(a6 + 48) != 2)
          {
            goto LABEL_285;
          }

          MIL::MILResult::~MILResult(a6);
          if (v141)
          {
            if (v335 == *(&v335 + 1))
            {
              MIL::Builder::FunctionBuilder::GetContext(a3, &__p);
              v245 = MIL::Builder::OperationBuilder::GetLocationPtr(v347);
              v246 = v245[1];
              v328 = *v245;
              v329 = v246;
              if (v246)
              {
                atomic_fetch_add_explicit(&v246->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              MIL::Builder::OperationBuilder::GetAttributes(v347);
              v382 = 0;
              ValueType = 0;
              v383.__locale_ = 0;
              (*(*v314 + 208))(&v364);
              v361[0] = &ValueType;
              std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](v361);
              if (v329)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v329);
              }

              if (__p.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
              }

              if ((v334 - p_p) >> 3 == (v364.__r_.__value_.__l.__size_ - v364.__r_.__value_.__r.__words[0]) >> 4)
              {
                if (v334 != p_p)
                {
                  v247 = *v364.__r_.__value_.__l.__data_;
                  v324 = v247;
                  if (*(&v247 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v247 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  MIL::IRTypedArgument::Make();
                }

                v12 = 3;
              }

              else
              {
                std::ostringstream::basic_ostringstream[abi:ne200100](&ValueType);
                v252 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&ValueType, "Invalid number of outputs values inferred from: ", 48);
                v253 = (*(*v314 + 16))(v314);
                v254 = *(v253 + 23);
                if (v254 >= 0)
                {
                  v255 = v253;
                }

                else
                {
                  v255 = *v253;
                }

                if (v254 >= 0)
                {
                  v256 = *(v253 + 23);
                }

                else
                {
                  v256 = *(v253 + 8);
                }

                v257 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v252, v255, v256);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v257, ".", 1);
                v258 = MIL::Builder::OperationBuilder::GetLocationPtr(v347);
                v259 = v258[1];
                *&v327 = *v258;
                *(&v327 + 1) = v259;
                if (v259)
                {
                  atomic_fetch_add_explicit((v259 + 8), 1uLL, memory_order_relaxed);
                }

                std::stringbuf::str();
                MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v327, 3, &v325);
                if (v326 < 0)
                {
                  operator delete(v325);
                }

                if (*(&v327 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*(&v327 + 1));
                }

                ValueType = v311;
                *(&ValueType + *(v311 - 3)) = v310;
                v382 = (MEMORY[0x277D82878] + 16);
                if (v387 < 0)
                {
                  operator delete(v386);
                }

                v382 = (MEMORY[0x277D82868] + 16);
                std::locale::~locale(&v383);
                std::ostream::~ostream();
                MEMORY[0x21CEAFDA0](v388);
                v12 = 1;
              }

              ValueType = &v364;
              std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&ValueType);
              goto LABEL_286;
            }

            v144 = MIL::Builder::OperationBuilder::GetLocationPtr(v347);
            v145 = v144[1];
            *&v332 = *v144;
            *(&v332 + 1) = v145;
            if (v145)
            {
              atomic_fetch_add_explicit((v145 + 8), 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v330, "Found nested blocks on shape op");
            MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v332, 3, v330);
            if (v331 < 0)
            {
              operator delete(v330[0]);
            }

            if (*(&v332 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v332 + 1));
            }

LABEL_285:
            v12 = 1;
LABEL_286:
            std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&__src);
            goto LABEL_523;
          }

          MIL::Builder::FunctionBuilder::GetContext(a3, &ValueType);
          v146 = MIL::Builder::OperationBuilder::GetLocationPtr(v347);
          v147 = v146[1];
          v322[2] = *v146;
          v323 = v147;
          if (v147)
          {
            atomic_fetch_add_explicit(&v147->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          MIL::Builder::OperationBuilder::GetAttributes(v347);
          (*(*v314 + 192))(v361);
          if (v323)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v323);
          }

          if (v382)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v382);
          }

          v148 = v347;
          v149 = v348;
          if (v348)
          {
            atomic_fetch_add_explicit(&v348->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          MIL::Builder::OperationBuilder::GetOutputs(v148, &v389);
          v150 = v389;
          v151 = v390;
          if (v390 - v389 != v361[1] - v361[0])
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&ValueType);
            v179 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&ValueType, "Invalid number of outputs types inferred from: ", 47);
            v180 = MIL::Builder::OperationBuilder::GetOperator(v148);
            v181 = (*(*v180 + 16))(v180);
            v182 = *(v181 + 23);
            if (v182 >= 0)
            {
              v183 = v181;
            }

            else
            {
              v183 = *v181;
            }

            if (v182 >= 0)
            {
              v184 = *(v181 + 23);
            }

            else
            {
              v184 = *(v181 + 8);
            }

            v185 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v179, v183, v184);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v185, ".", 1);
            v186 = MIL::Builder::OperationBuilder::GetLocationPtr(v148);
            v187 = v186[1];
            *&v380 = *v186;
            *(&v380 + 1) = v187;
            if (v187)
            {
              atomic_fetch_add_explicit((v187 + 8), 1uLL, memory_order_relaxed);
            }

            std::stringbuf::str();
            MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v380, 3, &v378);
            if (v379 < 0)
            {
              operator delete(v378);
            }

            if (*(&v380 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v380 + 1));
            }

            ValueType = v311;
            *(&ValueType + *(v311 - 3)) = v310;
            v382 = (MEMORY[0x277D82878] + 16);
            if (v387 < 0)
            {
              operator delete(v386);
            }

            v382 = (MEMORY[0x277D82868] + 16);
            std::locale::~locale(&v383);
            std::ostream::~ostream();
            MEMORY[0x21CEAFDA0](v388);
LABEL_351:
            if (v389)
            {
              v390 = v389;
              operator delete(v389);
            }

            if (v149)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v149);
            }

            if (*(a6 + 48) == 2)
            {
              MIL::MILResult::~MILResult(a6);
              if (v334 != p_p)
              {
                OutputType = MIL::Builder::OperationBuilder::GetOutputType(v347, 0);
                v189 = *v361[0];
                MIL::Builder::Variable::GetName(*p_p);
                if (MIL::IsTensor(OutputType, v190) && MIL::IsTensor(v189, v191))
                {
                  v192 = MIL::IRValueType::AsTensorType(OutputType);
                  v193 = MIL::IRValueType::AsTensorType(v189);
                  (*(*v193 + 88))(v193);
                  v194 = (*(*v193 + 96))(v193);
                  memset(&v364, 0, sizeof(v364));
                  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v364, *v194, v194[1], (v194[1] - *v194) >> 3);
                  v195 = (*(*v192 + 80))(v192);
                  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(&ValueType, v195);
                  MIL::Builder::FunctionBuilder::GetContext(a3, &v389);
                  MIL::IRTensorValueType::MakeWithShape();
                }

                if (MIL::IsTensorBuffer(OutputType, v191) && MIL::IsTensorBuffer(v189, v196))
                {
                  v197 = MIL::IRValueType::AsMemoryLayoutType(v189);
                  v198 = MIL::IRMemoryLayoutValueType::AsTensorBufferType(v197);
                  Shape = MIL::IRTensorBufferValueType::GetShape(v198);
                  v382 = 0;
                  ValueType = 0;
                  v383.__locale_ = 0;
                  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&ValueType, *Shape, Shape[1], (Shape[1] - *Shape) >> 3);
                  MIL::Builder::FunctionBuilder::GetContext(a3, v322);
                  memset(v321, 0, sizeof(v321));
                  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v321, ValueType, v382, (v382 - ValueType) >> 3);
                }

                if (MIL::IsPixelBuffer(OutputType, v196) && MIL::IsPixelBuffer(v189, v200))
                {
                  v201 = MIL::IRValueType::AsMemoryLayoutType(OutputType);
                  v202 = MIL::IRMemoryLayoutValueType::AsPixelBufferType(v201);
                  MIL::IRPixelBufferValueType::GetPixelFormatType(v202);
                  v203 = MIL::IRValueType::AsMemoryLayoutType(v189);
                  v204 = MIL::IRMemoryLayoutValueType::AsPixelBufferType(v203);
                  v205 = MIL::IRPixelBufferValueType::GetShape(v204);
                  memset(&v364, 0, sizeof(v364));
                  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v364, *v205, v205[1], (v205[1] - *v205) >> 3);
                  BytesPerRow = MIL::IRPixelBufferValueType::TryGetBytesPerRow(v202);
                  Attributes = MIL::IRPixelBufferValueType::GetAttributes(v202);
                  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(&ValueType, Attributes);
                  if (BytesPerRow)
                  {
                    v208 = MIL::IRPixelBufferValueType::GetBytesPerRow(v202);
                    v389 = 0;
                    v390 = 0;
                    v391 = 0;
                    std::vector<MIL::IRProperty const*>::__init_with_size[abi:ne200100]<MIL::IRProperty const**,MIL::IRProperty const**>(&v389, *v208, v208[1], (v208[1] - *v208) >> 3);
                    MIL::Builder::FunctionBuilder::GetContext(a3, &v378);
                    MIL::IRPixelBufferValueType::MakeWithShape();
                  }

                  MIL::Builder::FunctionBuilder::GetContext(a3, &v389);
                  MIL::IRPixelBufferValueType::MakeWithShape();
                }

                MIL::IRTypedArgument::Make(v189, v200);
              }

              v12 = 0;
            }

            else
            {
              v12 = 1;
            }

            if (v361[0])
            {
              v361[1] = v361[0];
              operator delete(v361[0]);
            }

            goto LABEL_286;
          }

          v152 = v338;
          if (!v338)
          {
LABEL_317:
            if (v151 != v150)
            {
              for (i = 0; i < v390 - v389; ++i)
              {
                v169 = MIL::Builder::Variable::TryGetType(v150[i]);
                if ((*(*v169 + 24))(v169) && (*(**(v361[0] + i) + 24))(*(v361[0] + i)))
                {
                  v170 = MIL::Builder::Variable::TryGetType(v389[i]);
                  v171 = (*(*v170 + 24))(v170);
                  v172 = (*(*v171 + 96))(v171);
                  memset(&v364, 0, sizeof(v364));
                  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v364, *v172, v172[1], (v172[1] - *v172) >> 3);
                  v173 = (*(**(v361[0] + i) + 24))(*(v361[0] + i));
                  v174 = (*(*v173 + 96))(v173);
                  memset(&__p, 0, sizeof(__p));
                  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v174, v174[1], (v174[1] - *v174) >> 3);
                  if (MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(&v364))
                  {
                    v175 = __p.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    HasVariadicUnknownDims = MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(&__p);
                    v175 = __p.__r_.__value_.__r.__words[0];
                    if (!HasVariadicUnknownDims && v364.__r_.__value_.__l.__size_ - v364.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0])
                    {
                      std::ostringstream::basic_ostringstream[abi:ne200100](&ValueType);
                      v288 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&ValueType, "Invalid tensor rank ", 20);
                      v289 = MEMORY[0x21CEAFB40](v288, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3);
                      v290 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v289, " inferred from: ", 16);
                      v291 = MIL::Builder::OperationBuilder::GetOperator(v148);
                      v292 = (*(*v291 + 16))(v291);
                      v293 = *(v292 + 23);
                      if (v293 >= 0)
                      {
                        v294 = v292;
                      }

                      else
                      {
                        v294 = *v292;
                      }

                      if (v293 >= 0)
                      {
                        v295 = *(v292 + 23);
                      }

                      else
                      {
                        v295 = *(v292 + 8);
                      }

                      v296 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v290, v294, v295);
                      v297 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v296, ", expecting ", 12);
                      v298 = MEMORY[0x21CEAFB40](v297, (v364.__r_.__value_.__l.__size_ - v364.__r_.__value_.__r.__words[0]) >> 3);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v298, ".", 1);
                      v299 = MIL::Builder::OperationBuilder::GetLocationPtr(v148);
                      v300 = v299[1];
                      *&v376 = *v299;
                      *(&v376 + 1) = v300;
                      if (v300)
                      {
                        atomic_fetch_add_explicit((v300 + 8), 1uLL, memory_order_relaxed);
                      }

                      std::stringbuf::str();
                      MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v376, 3, &v374);
                      if (v375 < 0)
                      {
                        operator delete(v374);
                      }

                      if (*(&v376 + 1))
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v376 + 1));
                      }

                      ValueType = v311;
                      *(&ValueType + *(v311 - 3)) = v310;
                      v382 = (MEMORY[0x277D82878] + 16);
                      if (v387 < 0)
                      {
                        operator delete(v386);
                      }

                      v382 = (MEMORY[0x277D82868] + 16);
                      std::locale::~locale(&v383);
                      std::ostream::~ostream();
                      MEMORY[0x21CEAFDA0](v388);
                      if (__p.__r_.__value_.__r.__words[0])
                      {
                        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }

                      if (v364.__r_.__value_.__r.__words[0])
                      {
                        v364.__r_.__value_.__l.__size_ = v364.__r_.__value_.__r.__words[0];
                        operator delete(v364.__r_.__value_.__l.__data_);
                      }

                      goto LABEL_351;
                    }
                  }

                  if (v175)
                  {
                    __p.__r_.__value_.__l.__size_ = v175;
                    operator delete(v175);
                  }

                  if (v364.__r_.__value_.__r.__words[0])
                  {
                    v364.__r_.__value_.__l.__size_ = v364.__r_.__value_.__r.__words[0];
                    operator delete(v364.__r_.__value_.__l.__data_);
                  }
                }

                v150 = v389;
              }
            }

LABEL_330:
            v177 = MIL::Builder::OperationBuilder::GetLocationPtr(v148);
            v178 = v177[1];
            *&v373 = *v177;
            *(&v373 + 1) = v178;
            if (v178)
            {
              atomic_fetch_add_explicit((v178 + 8), 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v371, "Success");
            MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v373, 2, v371);
            if (v372 < 0)
            {
              operator delete(v371[0]);
            }

            if (*(&v373 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v373 + 1));
            }

            goto LABEL_351;
          }

LABEL_297:
          if (v152[6] == v152[5])
          {
            goto LABEL_315;
          }

          v153 = 0;
          v154 = 0;
          v155 = 1;
          while (1)
          {
            v156 = MIL::Builder::OperationBuilder::GetArgumentForParameter(v148, (v152 + 2), v154);
            v157 = MIL::Builder::Variable::TryGetType(v156);
            if (!(*(*v157 + 24))(v157))
            {
              goto LABEL_330;
            }

            v158 = MIL::IRTypedArgument::TryGetValueType(*(v152[5] + v153));
            if (!(*(*v158 + 24))(v158))
            {
              goto LABEL_330;
            }

            v159 = MIL::Builder::Variable::TryGetType(v156);
            v160 = (*(*v159 + 24))(v159);
            v161 = (*(*v160 + 96))(v160);
            v382 = 0;
            ValueType = 0;
            v383.__locale_ = 0;
            std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&ValueType, *v161, v161[1], (v161[1] - *v161) >> 3);
            v162 = MIL::IRTypedArgument::TryGetValueType(*(v152[5] + v153));
            v163 = (*(*v162 + 24))(v162);
            v164 = (*(*v163 + 96))(v163);
            memset(&v364, 0, sizeof(v364));
            std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v364, *v164, v164[1], (v164[1] - *v164) >> 3);
            if (!MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(&ValueType))
            {
              break;
            }

            v155 = 0;
            LOBYTE(v165) = 0;
            v166 = v364.__r_.__value_.__r.__words[0];
            if (v364.__r_.__value_.__r.__words[0])
            {
              goto LABEL_303;
            }

LABEL_304:
            if (ValueType)
            {
              v382 = ValueType;
              operator delete(ValueType);
            }

            if (v165)
            {
              ++v154;
              v153 += 16;
              if (v154 < (v152[6] - v152[5]) >> 4)
              {
                continue;
              }
            }

            if (!v155)
            {
              goto LABEL_330;
            }

LABEL_315:
            v152 = *v152;
            if (!v152)
            {
              v150 = v389;
              v151 = v390;
              goto LABEL_317;
            }

            goto LABEL_297;
          }

          v167 = MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(&v364);
          v166 = v364.__r_.__value_.__r.__words[0];
          if (v167)
          {
            v155 = 0;
            LOBYTE(v165) = 0;
            if (!v364.__r_.__value_.__r.__words[0])
            {
              goto LABEL_304;
            }
          }

          else
          {
            v165 = v382 - ValueType == v364.__r_.__value_.__l.__size_ - v364.__r_.__value_.__r.__words[0];
            v155 &= v165;
            if (!v364.__r_.__value_.__r.__words[0])
            {
              goto LABEL_304;
            }
          }

LABEL_303:
          v364.__r_.__value_.__l.__size_ = v166;
          operator delete(v166);
          goto LABEL_304;
        }
      }

      else if (v81)
      {
        goto LABEL_219;
      }

      v115 = v338;
      if (v338)
      {
        while (2)
        {
          memset(&__p, 0, sizeof(__p));
          v116 = v115[5];
          v117 = v115[6];
          while (v116 != v117)
          {
            if (!MIL::IRTypedArgument::IsValue(*v116))
            {
              v119 = MIL::IRTypedArgument::GetValueType(*v116);
              v120 = (*(*v119 + 24))(v119);
              v121 = v120;
              if (v120 && ((*(*v120 + 104))(v120) & 1) != 0)
              {
                v122 = (*(*v121 + 96))(v121);
                v123 = *v122;
                v124 = v122[1];
                while (v123 != v124)
                {
                  if ((*(**v123 + 24))())
                  {
                    v142 = MIL::Builder::OperationBuilder::GetLocationPtr(v74);
                    v143 = *(v142 + 8);
                    v361[0] = *v142;
                    v361[1] = v143;
                    if (v143)
                    {
                      atomic_fetch_add_explicit(v143 + 1, 1uLL, memory_order_relaxed);
                    }

                    goto LABEL_269;
                  }

                  v123 += 8;
                }

                v125 = (*(*v121 + 16))(v121);
                v126 = (*(*v121 + 88))(v121);
                if (v126 > 4)
                {
                  if (v126 == 11)
                  {
                    LODWORD(v361[0]) = 0;
                    std::vector<int>::vector[abi:ne200100](&ValueType, v125);
                    MIL::IRTensorValueType::MakeInt32Value();
                  }

                  if (v126 == 5)
                  {
                    LODWORD(v361[0]) = 0;
                    std::vector<float>::vector[abi:ne200100](&ValueType, v125);
                    MIL::IRTensorValueType::MakeFloat32Value();
                  }
                }

                else
                {
                  if (v126 == 2)
                  {
                    LOBYTE(v361[0]) = 0;
                    std::vector<BOOL>::vector(&ValueType, v125);
                    MIL::IRTensorValueType::MakeBoolValue(v121, &ValueType);
                  }

                  if (v126 == 4)
                  {
                    LOWORD(v361[0]) = MIL::Fp16::FromFloat(v126, 0.0);
                    std::vector<MIL::Fp16>::vector[abi:ne200100](&ValueType, v125);
                    MIL::IRTensorValueType::MakeFloat16Value();
                  }
                }

                v286 = MIL::Builder::OperationBuilder::GetLocationPtr(v74);
                v287 = *(v286 + 8);
                v361[0] = *v286;
                v361[1] = v287;
                if (v287)
                {
                  atomic_fetch_add_explicit(v287 + 1, 1uLL, memory_order_relaxed);
                }

                std::string::basic_string[abi:ne200100]<0>(&ValueType, "Unhandled data type for shape");
                MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, v361, 4, &ValueType);
              }

              else
              {
                v250 = MIL::Builder::OperationBuilder::GetLocationPtr(v74);
                v251 = *(v250 + 8);
                v361[0] = *v250;
                v361[1] = v251;
                if (v251)
                {
                  atomic_fetch_add_explicit(v251 + 1, 1uLL, memory_order_relaxed);
                }

LABEL_269:
                std::string::basic_string[abi:ne200100]<0>(&ValueType, "Success");
                MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, v361, 2, &ValueType);
              }

              if (SHIBYTE(v383.__locale_) < 0)
              {
                operator delete(ValueType);
              }

              if (v361[1])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v361[1]);
              }

              v356[0] = &__p;
              std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](v356);
              goto LABEL_275;
            }

            MIL::IRTypedArgument::TryGetValueSharedPtr(*v116, v361);
            size = __p.__r_.__value_.__l.__size_;
            if (__p.__r_.__value_.__l.__size_ >= __p.__r_.__value_.__r.__words[2])
            {
              v127 = __p.__r_.__value_.__r.__words[0];
              v128 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
              v129 = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 4;
              v130 = v129 + 1;
              if ((v129 + 1) >> 60)
              {
                std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
              }

              v131 = __p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0];
              if ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 3 > v130)
              {
                v130 = v131 >> 3;
              }

              v132 = v131 >= 0x7FFFFFFFFFFFFFF0;
              v133 = 0xFFFFFFFFFFFFFFFLL;
              if (!v132)
              {
                v133 = v130;
              }

              p_src = &__p;
              if (v133)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::Validation::Constraints const>>>(&__p, v133);
              }

              v134 = (16 * v129);
              v135 = &v134[-((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 4)];
              *v134++ = *v361;
              v361[1] = 0;
              v361[0] = 0;
              memcpy(v135, v127, v128);
              v136 = __p.__r_.__value_.__r.__words[0];
              v137 = __p.__r_.__value_.__r.__words[2];
              __p.__r_.__value_.__r.__words[0] = v135;
              *&__p.__r_.__value_.__r.__words[1] = v134;
              v383.__locale_ = v136;
              v384 = v137;
              v382 = v136;
              ValueType = v136;
              std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(&ValueType);
              __p.__r_.__value_.__l.__size_ = v134;
              if (v361[1])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v361[1]);
              }
            }

            else
            {
              *__p.__r_.__value_.__l.__size_ = *v361;
              __p.__r_.__value_.__l.__size_ = size + 16;
            }

            v116 += 2;
          }

          ValueType = v115 + 2;
          v138 = (std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__src, v115 + 2) + 5);
          if (v138 != &__p)
          {
            std::vector<std::shared_ptr<MIL::IRValue const>>::__assign_with_size[abi:ne200100]<std::shared_ptr<MIL::IRValue const>*,std::shared_ptr<MIL::IRValue const>*>(v138, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 4);
          }

          v356[0] = &__p;
          std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](v356);
          v115 = *v115;
          if (v115)
          {
            continue;
          }

          break;
        }
      }

      v139 = MIL::Builder::OperationBuilder::GetLocationPtr(v74);
      v140 = v139[1];
      __p.__r_.__value_.__r.__words[0] = *v139;
      __p.__r_.__value_.__l.__size_ = v140;
      if (v140)
      {
        atomic_fetch_add_explicit((v140 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&ValueType, "Success");
      MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &__p, 2, &ValueType);
      if (SHIBYTE(v383.__locale_) < 0)
      {
        operator delete(ValueType);
      }

      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }

      v141 = 1;
      goto LABEL_276;
    }

    v70 = v347;
    std::string::basic_string[abi:ne200100]<0>(&ValueType, "function");
    MIL::Builder::OperationBuilder::TryGetAttribute(v70, &ValueType, &v369);
    if (SHIBYTE(v383.__locale_) < 0)
    {
      operator delete(ValueType);
    }

    if (!v369)
    {
      v82 = MIL::Builder::OperationBuilder::GetLocationPtr(v70);
      v83 = v82[1];
      *&__src = *v82;
      *(&__src + 1) = v83;
      if (v83)
      {
        atomic_fetch_add_explicit((v83 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&ValueType, "Found call op with no function name");
      MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &__src, 3, &ValueType);
      if (SHIBYTE(v383.__locale_) < 0)
      {
        operator delete(ValueType);
      }

      if (*(&__src + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&__src + 1));
      }

      goto LABEL_518;
    }

    v71 = MIL::IRValue::AsTensor(v369);
    v72 = MIL::IRTensorValue::GetDataView<std::string>(v71);
    if (*(v72 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v72, *(v72 + 8));
    }

    else
    {
      v73 = *v72;
      __p.__r_.__value_.__r.__words[2] = *(v72 + 16);
      *&__p.__r_.__value_.__l.__data_ = v73;
    }

    v368 = 0;
    if (*(a6 + 48) != 2)
    {
      goto LABEL_516;
    }

    MIL::MILResult::~MILResult(a6);
    if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v351, &__p.__r_.__value_.__l.__data_))
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v351, &__p.__r_.__value_.__l.__data_);
      __src = 0u;
      v366 = 0u;
      v367 = 1065353216;
      MIL::Builder::OperationBuilder::GetParameterNames(v70, &v364);
      v209 = v364.__r_.__value_.__r.__words[2];
      if (v364.__r_.__value_.__r.__words[2])
      {
        while (MIL::Builder::FunctionBuilder::TryGetInput(v368, (v209 + 2)))
        {
          if (MIL::Builder::OperationBuilder::GetNumArguments(v70, v209 + 2) >= 2)
          {
            v270 = MIL::Builder::OperationBuilder::GetLocationPtr(v70);
            v271 = *(v270 + 8);
            v361[0] = *v270;
            v361[1] = v271;
            if (v271)
            {
              atomic_fetch_add_explicit(v271 + 1, 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(&ValueType, "Don't yet support >1 args for called function params");
            MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, v361, 4, &ValueType);
            if (SHIBYTE(v383.__locale_) < 0)
            {
              operator delete(ValueType);
            }

            if (v361[1])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v361[1]);
            }

            goto LABEL_514;
          }

          v210 = MIL::Builder::OperationBuilder::GetArgumentForParameter(v70, (v209 + 2), 0);
          v211 = MIL::Builder::Variable::TryGetName(v210);
          if (!v211)
          {
            v217 = MIL::Builder::OperationBuilder::GetArgumentForParameter(v70, (v209 + 2), 0);
            MIL::Builder::Variable::TryGetValueSharedPtr(v217, v361);
            if (v361[0])
            {
              v359 = v361[0];
              v360 = v361[1];
              if (v361[1])
              {
                atomic_fetch_add_explicit(v361[1] + 1, 1uLL, memory_order_relaxed);
              }

              MIL::IRTypedArgument::Make();
            }

            std::ostringstream::basic_ostringstream[abi:ne200100](&ValueType);
            v218 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&ValueType, "Could not build TypedArgument for ", 34);
            v219 = *(v209 + 39);
            if (v219 >= 0)
            {
              v220 = (v209 + 2);
            }

            else
            {
              v220 = v209[2];
            }

            if (v219 >= 0)
            {
              v221 = *(v209 + 39);
            }

            else
            {
              v221 = v209[3];
            }

            v222 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v218, v220, v221);
            v223 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v222, " in called function ", 20);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v224 = &__p;
            }

            else
            {
              v224 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v225 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v225 = __p.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v223, v224, v225);
            v226 = MIL::Builder::OperationBuilder::GetLocationPtr(v70);
            v227 = v226[1];
            *&v358 = *v226;
            *(&v358 + 1) = v227;
            if (v227)
            {
              atomic_fetch_add_explicit((v227 + 8), 1uLL, memory_order_relaxed);
            }

            std::stringbuf::str();
            MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v358, 3, v356);
            if (v357 < 0)
            {
              operator delete(v356[0]);
            }

            if (*(&v358 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v358 + 1));
            }

            ValueType = v311;
            *(&ValueType + *(v311 - 3)) = v310;
            v382 = (MEMORY[0x277D82878] + 16);
            if (v387 < 0)
            {
              operator delete(v386);
            }

            v382 = (MEMORY[0x277D82868] + 16);
            std::locale::~locale(&v383);
            std::ostream::~ostream();
            MEMORY[0x21CEAFDA0](v388);
            if (v361[1])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v361[1]);
            }

            goto LABEL_514;
          }

          if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, v211))
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&ValueType);
            v272 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&ValueType, "No inferred type for param ", 27);
            v273 = *(v209 + 39);
            if (v273 >= 0)
            {
              v274 = (v209 + 2);
            }

            else
            {
              v274 = v209[2];
            }

            if (v273 >= 0)
            {
              v275 = *(v209 + 39);
            }

            else
            {
              v275 = v209[3];
            }

            v276 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v272, v274, v275);
            v277 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v276, " in called function ", 20);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v278 = &__p;
            }

            else
            {
              v278 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v279 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v279 = __p.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v277, v278, v279);
            v280 = MIL::Builder::OperationBuilder::GetLocationPtr(v70);
            v281 = v280[1];
            *&v363 = *v280;
            *(&v363 + 1) = v281;
            if (v281)
            {
              atomic_fetch_add_explicit((v281 + 8), 1uLL, memory_order_relaxed);
            }

            std::stringbuf::str();
            MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v363, 3, v361);
            if (v362 < 0)
            {
              operator delete(v361[0]);
            }

            if (*(&v363 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v363 + 1));
            }

            std::ostringstream::~ostringstream(&ValueType);
            goto LABEL_514;
          }

          ValueType = v211;
          v212 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a4, v211);
          ValueType = v209 + 2;
          v213 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__src, v209 + 2);
          v215 = v212[5];
          v214 = v212[6];
          if (v214)
          {
            atomic_fetch_add_explicit(v214 + 1, 1uLL, memory_order_relaxed);
          }

          v216 = v213[6];
          v213[5] = v215;
          v213[6] = v214;
          if (v216)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v216);
          }

          v209 = *v209;
          if (!v209)
          {
            goto LABEL_407;
          }
        }

        std::ostringstream::basic_ostringstream[abi:ne200100](&ValueType);
        v260 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&ValueType, "No input ", 9);
        v261 = *(v209 + 39);
        if (v261 >= 0)
        {
          v262 = (v209 + 2);
        }

        else
        {
          v262 = v209[2];
        }

        if (v261 >= 0)
        {
          v263 = *(v209 + 39);
        }

        else
        {
          v263 = v209[3];
        }

        v264 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v260, v262, v263);
        v265 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v264, " in called function ", 20);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v266 = &__p;
        }

        else
        {
          v266 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v267 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v267 = __p.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v265, v266, v267);
        v268 = MIL::Builder::OperationBuilder::GetLocationPtr(v70);
        v269 = v268[1];
        *&v363 = *v268;
        *(&v363 + 1) = v269;
        if (v269)
        {
          atomic_fetch_add_explicit((v269 + 8), 1uLL, memory_order_relaxed);
        }

        std::stringbuf::str();
        MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v363, 3, v361);
        if (v362 < 0)
        {
          operator delete(v361[0]);
        }

        if (*(&v363 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v363 + 1));
        }

        ValueType = v311;
        *(&ValueType + *(v311 - 3)) = v310;
        v382 = (MEMORY[0x277D82878] + 16);
        if (v387 < 0)
        {
          operator delete(v386);
        }

        v382 = (MEMORY[0x277D82868] + 16);
        std::locale::~locale(&v383);
        std::ostream::~ostream();
        MEMORY[0x21CEAFDA0](v388);
LABEL_514:
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v364);
        goto LABEL_515;
      }

LABEL_407:
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v364);
      v228 = v368;
      {
LABEL_515:
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&__src);
        goto LABEL_516;
      }

      MIL::MILResult::~MILResult(a6);
      v229 = MIL::Builder::FunctionBuilder::SelectedSpecialization(v228);
      MIL::Builder::FunctionBuilder::GetBlock(v228, v229, &v363);
      MIL::Builder::BlockBuilder::GetOutputNames(v363, &v364);
      v230 = v364.__r_.__value_.__l.__size_;
      v231 = v364.__r_.__value_.__r.__words[0];
      if (0xAAAAAAAAAAAAAAABLL * ((v230 - v231) >> 3) == MIL::Builder::OperationBuilder::GetNumOutputs(v70))
      {
        v232 = v364.__r_.__value_.__r.__words[0];
        if (v364.__r_.__value_.__l.__size_ != v364.__r_.__value_.__r.__words[0])
        {
          v233 = 0;
          v234 = 0;
          while (1)
          {
            v235 = (v232 + v233);
            if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(&__src, (v232 + v233)))
            {
              break;
            }

            ValueType = v235;
            v236 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__src, v235);
            ValueType = MIL::Builder::OperationBuilder::GetOutputName(v70, v234);
            v237 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a4, ValueType);
            v239 = v236[5];
            v238 = v236[6];
            if (v238)
            {
              atomic_fetch_add_explicit(v238 + 1, 1uLL, memory_order_relaxed);
            }

            v240 = v237[6];
            v237[5] = v239;
            v237[6] = v238;
            if (v240)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v240);
            }

            ++v234;
            v232 = v364.__r_.__value_.__r.__words[0];
            v233 += 24;
            if (v234 >= 0xAAAAAAAAAAAAAAABLL * ((v364.__r_.__value_.__l.__size_ - v364.__r_.__value_.__r.__words[0]) >> 3))
            {
              goto LABEL_418;
            }
          }

          std::ostringstream::basic_ostringstream[abi:ne200100](&ValueType);
          v301 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&ValueType, "Could not infer type for output at index ", 41);
          MEMORY[0x21CEAFB40](v301, v234);
          v302 = MIL::Builder::OperationBuilder::GetLocationPtr(v70);
          v303 = v302[1];
          *&v355 = *v302;
          *(&v355 + 1) = v303;
          if (v303)
          {
            atomic_fetch_add_explicit((v303 + 8), 1uLL, memory_order_relaxed);
          }

          std::stringbuf::str();
          MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v355, 3, v361);
          if (v362 < 0)
          {
            operator delete(v361[0]);
          }

          if (*(&v355 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v355 + 1));
          }

          ValueType = v311;
          *(&ValueType + *(v311 - 3)) = v310;
          v382 = (MEMORY[0x277D82878] + 16);
          if (v387 < 0)
          {
            operator delete(v386);
          }

          v382 = (MEMORY[0x277D82868] + 16);
          std::locale::~locale(&v383);
          std::ostream::~ostream();
          MEMORY[0x21CEAFDA0](v388);
          goto LABEL_579;
        }

LABEL_418:
        v241 = MIL::Builder::OperationBuilder::GetLocationPtr(v70);
        v242 = *(v241 + 8);
        v361[0] = *v241;
        v361[1] = v242;
        if (v242)
        {
          atomic_fetch_add_explicit(v242 + 1, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&ValueType, "Success");
        MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, v361, 2, &ValueType);
      }

      else
      {
        v282 = MIL::Builder::OperationBuilder::GetLocationPtr(v70);
        v283 = *(v282 + 8);
        v361[0] = *v282;
        v361[1] = v283;
        if (v283)
        {
          atomic_fetch_add_explicit(v283 + 1, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&ValueType, "Num outputs mismatch between call op & callee");
        MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, v361, 3, &ValueType);
      }

      if (SHIBYTE(v383.__locale_) < 0)
      {
        operator delete(ValueType);
      }

      if (v361[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v361[1]);
      }

LABEL_579:
      v392 = &v364;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v392);
      if (*(&v363 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v363 + 1));
      }

      goto LABEL_515;
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](&ValueType);
    v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&ValueType, "Found multiple call ops calling ", 32);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v92 = &__p;
    }

    else
    {
      v92 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v93 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v93 = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, v92, v93);
    v94 = MIL::Builder::OperationBuilder::GetLocationPtr(v70);
    v95 = v94[1];
    v364.__r_.__value_.__r.__words[0] = *v94;
    v364.__r_.__value_.__l.__size_ = v95;
    if (v95)
    {
      atomic_fetch_add_explicit((v95 + 8), 1uLL, memory_order_relaxed);
    }

    std::stringbuf::str();
    MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v364, 3, &__src);
    if (SBYTE7(v366) < 0)
    {
      operator delete(__src);
    }

    if (v364.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v364.__r_.__value_.__l.__size_);
    }

    ValueType = v311;
    *(&ValueType + *(v311 - 3)) = v310;
    v382 = (MEMORY[0x277D82878] + 16);
    if (v387 < 0)
    {
      operator delete(v386);
    }

    v382 = (MEMORY[0x277D82868] + 16);
    std::locale::~locale(&v383);
    std::ostream::~ostream();
    MEMORY[0x21CEAFDA0](v388);
LABEL_516:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_518:
    if (v370)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v370);
    }

    if (*(a6 + 48) == 2)
    {
      MIL::MILResult::~MILResult(a6);
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

LABEL_523:
    if (p_p)
    {
      v334 = p_p;
      operator delete(p_p);
    }

LABEL_525:
    ValueType = &v335;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&ValueType);
LABEL_526:
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&v337);
LABEL_527:
    if (v346 < 0)
    {
      operator delete(v344);
    }

LABEL_529:
    if (v348)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v348);
    }

    if (v12 == 3 || !v12)
    {
      v8 = v315 + 16;
      if (v315 + 16 == v312)
      {
        goto LABEL_584;
      }

      continue;
    }

    break;
  }

  ValueType = &v349;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&ValueType);
LABEL_590:
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v351);
  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v353);
}

void sub_21805B128()
{
  std::ostringstream::~ostringstream(&STACK[0x4B8]);
  __cxa_end_catch();
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&v1);
  if (v0)
  {
    JUMPOUT(0x21805BA0CLL);
  }

  JUMPOUT(0x21805BA10);
}

void sub_21805B278()
{
  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  if (STACK[0x340])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x340]);
  }

  std::ostringstream::~ostringstream(&STACK[0x4B8]);
  *(v0 - 104) = &STACK[0x3B0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v0 - 104));
  if (STACK[0x3A8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3A8]);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&STACK[0x3E0]);
  if (SLOBYTE(STACK[0x487]) < 0)
  {
    operator delete(STACK[0x470]);
  }

  if (STACK[0x418])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x418]);
  }

  if (v1)
  {
    JUMPOUT(0x21805BA0CLL);
  }

  JUMPOUT(0x21805BA10);
}

void sub_21805B894()
{
  if (STACK[0x478])
  {
    JUMPOUT(0x21805B8A4);
  }

  JUMPOUT(0x21805B8A8);
}

void sub_21805B8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, std::__shared_weak_count *a60)
{
  v60 = STACK[0x4B8];
  STACK[0x4B8] = 0;
  if (v60)
  {
    MIL::Passes::PropagateValueTypes();
  }

  if (a60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a60);
  }

  STACK[0x4B8] = &STACK[0x3B0];
  JUMPOUT(0x21805B94CLL);
}

void sub_21805B910(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x4CF]) < 0)
  {
    operator delete(STACK[0x4B8]);
  }

  if (STACK[0x3E8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3E8]);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(v2);
  if (v3 < 0)
  {
    operator delete(v2[14]);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v2[0] = &v5;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](v2);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v6);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v7);
  _Unwind_Resume(a1);
}

void sub_21805B93C()
{
  STACK[0x348] = &STACK[0x470];
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x348]);
  JUMPOUT(0x21805B950);
}

void sub_21805B980()
{
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    JUMPOUT(0x21805BB98);
  }

  JUMPOUT(0x21805BB9CLL);
}

void sub_21805B994(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(v2);
  if (v3 < 0)
  {
    operator delete(v2[14]);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  v2[0] = &v5;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](v2);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v6);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v7);
  _Unwind_Resume(a1);
}

void sub_21805B99C()
{
  if (SLOBYTE(STACK[0x487]) < 0)
  {
    operator delete(STACK[0x470]);
  }

  if (STACK[0x220])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x220]);
  }

  std::ostringstream::~ostringstream(&STACK[0x4B8]);
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  STACK[0x3B0] = &STACK[0x3E0];
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3B0]);
  JUMPOUT(0x21805BB84);
}

void sub_21805B9E0()
{
  STACK[0x3E8] = v1;
  v2 = STACK[0x4B8];
  STACK[0x4B8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  STACK[0x3B0] = &STACK[0x3E0];
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3B0]);
  JUMPOUT(0x21805BB84);
}

void sub_21805BA6C()
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  v2 = STACK[0x200];
  STACK[0x200] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (STACK[0x350])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x350]);
  }

  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  STACK[0x3B0] = &STACK[0x3E0];
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3B0]);
  JUMPOUT(0x21805BB84);
}

void anonymous namespace::GetOperatorType(std::string *a1@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, ".");
  size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (size < 0)
  {
    v5 = a1->__r_.__value_.__r.__words[0];
    size = a1->__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = a1;
  }

  v6 = v17;
  if ((v17 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v8 = v17;
  }

  else
  {
    v8 = __p[1];
  }

  if (v8)
  {
    if (size >= v8)
    {
      v9 = v5 + size;
      v10 = *v7;
      v11 = v5;
      do
      {
        v12 = size - v8;
        if (v12 == -1)
        {
          break;
        }

        v13 = memchr(v11, v10, v12 + 1);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        if (!memcmp(v13, v7, v8))
        {
          if (v14 != v9)
          {
            v15 = v14 - v5;
            if (v14 - v5 != -1)
            {
              goto LABEL_19;
            }
          }

          break;
        }

        v11 = (v14 + 1);
        size = v9 - (v14 + 1);
      }

      while (size >= v8);
    }
  }

  else
  {
    v15 = 0;
LABEL_19:
    std::string::erase(a1, 0, v15 + v8);
    v6 = v17;
  }

  *a2 = *&a1->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&a1->__r_.__value_.__l + 2);
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  if ((v6 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }
}

void sub_21805BD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::InferOutputsForNestedBlocks(MIL::Builder::OperationBuilder *this@<X2>, int a2@<W0>, int a3@<W1>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  MIL::Builder::OperationBuilder::GetBlocks(this, &v69);
  v10 = v69;
  v11 = v70;
  if (v69 != v70)
  {
    v43 = *MEMORY[0x277D82828];
    v42 = *(MEMORY[0x277D82828] + 24);
    v47 = a2;
    v48 = a3;
    v46 = v70;
    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(a6 + 48) != 2)
      {
        LOBYTE(v29) = 0;
        goto LABEL_58;
      }

      MIL::MILResult::~MILResult(a6);
      v66 = 0;
      v67 = 0;
      v68 = 0;
      MIL::Builder::BlockBuilder::GetOutputs(v13, &v64);
      v15 = v64;
      v14 = v65;
      if (v64 == v65)
      {
        v29 = 1;
        if (!v64)
        {
          goto LABEL_54;
        }
      }

      else
      {
        while (1)
        {
          v16 = *v15;
          if (!*v15)
          {
            break;
          }

          Name = MIL::Builder::Variable::GetName(*v15);
          if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, Name))
          {
            v18 = MIL::Builder::Variable::GetName(v16);
            v19 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, v18);
            if (!v19)
            {
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }

            ValueType = MIL::IRTypedArgument::GetValueType(v19[5]);
            v21 = v67;
            if (v67 >= v68)
            {
              v23 = (v67 - v66) >> 3;
              if ((v23 + 1) >> 61)
              {
                std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
              }

              v24 = (v68 - v66) >> 2;
              if (v24 <= v23 + 1)
              {
                v24 = v23 + 1;
              }

              if (v68 - v66 >= 0x7FFFFFFFFFFFFFF8)
              {
                v25 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v25 = v24;
              }

              if (v25)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(&v66, v25);
              }

              v26 = (8 * v23);
              *v26 = ValueType;
              v22 = 8 * v23 + 8;
              v27 = v26 - (v67 - v66);
              memcpy(v27, v66, v67 - v66);
              v28 = v66;
              v66 = v27;
              v67 = v22;
              v68 = 0;
              if (v28)
              {
                operator delete(v28);
              }
            }

            else
            {
              *v67 = ValueType;
              v22 = (v21 + 8);
            }

            v67 = v22;
          }

          else
          {
            Type = MIL::Builder::Variable::TryGetType(v16);
            if (!Type)
            {
              std::ostringstream::basic_ostringstream[abi:ne200100](&v55);
              v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Could not deduce type of nested block output: ", 46);
              v33 = MIL::Builder::Variable::GetName(v16);
              v34 = *(v33 + 23);
              if (v34 >= 0)
              {
                v35 = v33;
              }

              else
              {
                v35 = *v33;
              }

              if (v34 >= 0)
              {
                v36 = *(v33 + 23);
              }

              else
              {
                v36 = *(v33 + 1);
              }

              v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v35, v36);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ".", 1);
              LocationPtr = MIL::Builder::BlockBuilder::GetLocationPtr(v13);
              v39 = LocationPtr[1];
              *&v54 = *LocationPtr;
              *(&v54 + 1) = v39;
              if (v39)
              {
                atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
              }

              std::stringbuf::str();
              MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v54, 3, &__p);
              if (v53 < 0)
              {
                operator delete(__p);
              }

              if (*(&v54 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v54 + 1));
              }

              v55 = v43;
              *(&v55 + *(v43 - 3)) = v42;
              v56 = MEMORY[0x277D82878] + 16;
              if (v58 < 0)
              {
                operator delete(v57[7].__locale_);
              }

              v56 = MEMORY[0x277D82868] + 16;
              std::locale::~locale(v57);
              std::ostream::~ostream();
              MEMORY[0x21CEAFDA0](&v59);
              goto LABEL_51;
            }

            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v66, &Type);
          }

          if (++v15 == v14)
          {
            v29 = 1;
            goto LABEL_52;
          }
        }

        v30 = MIL::Builder::BlockBuilder::GetLocationPtr(v13);
        v31 = v30[1];
        *&v63 = *v30;
        *(&v63 + 1) = v31;
        if (v31)
        {
          atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v61, "No Variable for Block output.");
        MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v63, 3, v61);
        if (v62 < 0)
        {
          operator delete(v61[0]);
        }

        if (*(&v63 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v63 + 1));
        }

LABEL_51:
        v29 = 0;
LABEL_52:
        v15 = v64;
        if (!v64)
        {
          goto LABEL_54;
        }
      }

      v65 = v15;
      operator delete(v15);
LABEL_54:
      if (v29)
      {
        std::vector<std::vector<MIL::IRValueType const*>>::push_back[abi:ne200100](a5, &v66);
      }

      a2 = v47;
      a3 = v48;
      v11 = v46;
      if (v66)
      {
        v67 = v66;
        operator delete(v66);
      }

LABEL_58:
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if ((v29 & 1) == 0)
      {
        v55 = &v69;
        std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v55);
        return;
      }

      v10 += 16;
    }

    while (v10 != v11);
  }

  v55 = &v69;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v55);
  v40 = MIL::Builder::OperationBuilder::GetLocationPtr(this);
  v41 = v40[1];
  *&v51 = *v40;
  *(&v51 + 1) = v41;
  if (v41)
  {
    atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v49, "Success");
  MIL::Passes::TypeInferenceResult::TypeInferenceResult(a6, &v51, 2, v49);
  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (*(&v51 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v51 + 1));
  }
}

void sub_21805C25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  std::ostringstream::~ostringstream(&a34);
  v37 = *(v35 - 160);
  if (v37)
  {
    *(v35 - 152) = v37;
    operator delete(v37);
  }

  v38 = *(v35 - 136);
  if (v38)
  {
    *(v35 - 128) = v38;
    operator delete(v38);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  a34 = v35 - 112;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a34);
  _Unwind_Resume(a1);
}

void anonymous namespace::AttemptTypeInferenceWithValues(uint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5)
{
  if ((MIL::Builder::OperationBuilder::IsVisited(*a2) & 1) == 0)
  {
    MIL::Builder::OperationBuilder::SetVisited(*a2, 1);
    OwningBlock = MIL::Builder::OperationBuilder::GetOwningBlock(*a2);
    MIL::Builder::OperationBuilder::GetInputArguments(*a2, v27);
    v11 = v28;
    if (v28)
    {
      while (1)
      {
        v12 = v11[2];
        if (MIL::Builder::Variable::TryGetName(v12))
        {
          break;
        }

LABEL_41:
        v11 = *v11;
        if (!v11)
        {
          goto LABEL_42;
        }
      }

      Name = MIL::Builder::Variable::GetName(v12);
      MIL::Builder::BlockBuilder::TryGetOperation(OwningBlock, Name, &v25);
      if (!v25)
      {
LABEL_39:
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        goto LABEL_41;
      }

      Operator = MIL::Builder::OperationBuilder::GetOperator(v25);
      v15 = (*(*Operator + 16))(Operator);
      MIL::ValueTypeInferenceUtils::GetOperatorType(v15, &v24);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v24.__r_.__value_.__l.__size_ != 5)
        {
          goto LABEL_14;
        }

        v16 = v24.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) != 5)
        {
          goto LABEL_14;
        }

        v16 = &v24;
      }

      data = v16->__r_.__value_.__l.__data_;
      v18 = v16->__r_.__value_.__s.__data_[4];
      if (data == 1885431923 && v18 == 101)
      {
        v21 = 1;
        if ((*(&v24.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_37;
      }

LABEL_14:
      MIL::ValueTypeInferenceUtils::GetOperatorType(v15, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v21 = __p.__r_.__value_.__l.__size_ == 5 && *__p.__r_.__value_.__l.__data_ == 1936617315 && *(__p.__r_.__value_.__r.__words[0] + 4) == 116;
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      else
      {
        v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 5 && LODWORD(__p.__r_.__value_.__l.__data_) == 1936617315 && __p.__r_.__value_.__s.__data_[4] == 116;
      }

      if ((*(&v24.__r_.__value_.__s + 23) & 0x80) == 0)
      {
LABEL_35:
        if (v21)
        {
LABEL_36:
          MIL::ValueTypeInferenceUtils::MixedOpTypeinference(a1, &v25, a3, a4, a5);
          goto LABEL_39;
        }

        goto LABEL_38;
      }

LABEL_37:
      operator delete(v24.__r_.__value_.__l.__data_);
      if (v21)
      {
        goto LABEL_36;
      }

LABEL_38:
      goto LABEL_39;
    }

LABEL_42:
    std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v27);
    MIL::ValueTypeInferenceUtils::MixedOpTypeinference(a1, a2, a3, a4, a5);
  }
}

void sub_21805C5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20, char a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&a21);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__emplace_back_slow_path<std::unique_ptr<MIL::IRTypedArgument>>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  v16 = 16 * v2;
  v17 = 0;
  std::shared_ptr<MIL::IRTypedArgument>::shared_ptr[abi:ne200100]<MIL::IRTypedArgument,std::default_delete<MIL::IRTypedArgument>,0>((16 * v2), a2);
  v8 = 16 * v2 + 16;
  v9 = *(a1 + 8) - *a1;
  v10 = 16 * v2 - v9;
  memcpy((v15 - v9), *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(&v14);
  return v8;
}

void sub_21805C6E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::shared_ptr<MIL::IRTypedArgument>::shared_ptr[abi:ne200100]<MIL::IRTypedArgument,std::default_delete<MIL::IRTypedArgument>,0>(uint64_t *result, uint64_t *a2)
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

void anonymous namespace::PropagateNewTypesThroughWhileBlocks(MIL::Builder::OperationBuilder *this@<X2>, int a2@<W0>, int a3@<W1>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  MIL::Builder::OperationBuilder::GetBlocks(this, &v38);
  v9 = v38;
  v27 = v39;
  if (v38 == v39)
  {
LABEL_18:
    v37.__begin_ = &v38;
    std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v37);
    if (*(a7 + 48) != 2)
    {
      return;
    }

    MIL::MILResult::~MILResult(a7);
    v17 = a6[1] - *a6;
    LocationPtr = MIL::Builder::OperationBuilder::GetLocationPtr(this);
    if (v17 == 48)
    {
      v19 = LocationPtr[1];
      *&v30 = *LocationPtr;
      *(&v30 + 1) = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v28, "Success");
      MIL::Passes::TypeInferenceResult::TypeInferenceResult(a7, &v30, 2, v28);
      if (v29 < 0)
      {
        operator delete(v28[0]);
      }

      v20 = *(&v30 + 1);
      if (!*(&v30 + 1))
      {
        return;
      }
    }

    else
    {
      v21 = LocationPtr[1];
      *&v33 = *LocationPtr;
      *(&v33 + 1) = v21;
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v31, "Invalid number of nested blocks from while_loop");
      MIL::Passes::TypeInferenceResult::TypeInferenceResult(a7, &v33, 3, v31);
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }

      v20 = *(&v33 + 1);
      if (!*(&v33 + 1))
      {
        return;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    return;
  }

  while (1)
  {
    v10 = *v9;
    v11 = *(v9 + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::Builder::BlockBuilder::GetInputNames(v10, &v37);
    v13 = (*(a4 + 8) - *a4) >> 3;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v37.__end_ - v37.__begin_) >> 3);
    if (v13 == v14)
    {
      if (v37.__end_ != v37.__begin_)
      {
        if ((*(a4 + 8) - *a4) >> 3)
        {
          MIL::IRTypedArgument::Make(**a4, v12);
        }

        std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
      }
    }

    else
    {
      v15 = MIL::Builder::OperationBuilder::GetLocationPtr(this);
      v16 = v15[1];
      *&v36 = *v15;
      *(&v36 + 1) = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Mismatch between while block input size and types to propagate");
      MIL::Passes::TypeInferenceResult::TypeInferenceResult(a7, &v36, 5, __p);
      if (v35 < 0)
      {
        operator delete(__p[0]);
      }

      if (*(&v36 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v36 + 1));
      }
    }

    v40 = &v37;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v40);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v13 != v14)
    {
      break;
    }

    v9 += 16;
    if (v9 == v27)
    {
      goto LABEL_18;
    }
  }

  v37.__begin_ = &v38;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v37);
}

void sub_21805CAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, std::__shared_weak_count *a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(void *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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

void std::vector<std::vector<MIL::IRValueType const*>>::__assign_with_size[abi:ne200100]<std::vector<MIL::IRValueType const*>*,std::vector<MIL::IRValueType const*>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<float>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<MIL::IRValueType const*> *,std::vector<MIL::IRValueType const*> *,std::vector<MIL::IRValueType const*> *>(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<MIL::IRValueType const*> *,std::vector<MIL::IRValueType const*> *,std::vector<MIL::IRValueType const*> *>(&v18, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<MIL::IRValueType const*>>,std::vector<MIL::IRValueType const*>*,std::vector<MIL::IRValueType const*>*,std::vector<MIL::IRValueType const*>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<MIL::IRValueType const*>>,std::vector<MIL::IRValueType const*>*,std::vector<MIL::IRValueType const*>*,std::vector<MIL::IRValueType const*>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<MIL::IRValueType const*>>,std::vector<MIL::IRValueType const*>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21805CF48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<MIL::IRValueType const*>>,std::vector<MIL::IRValueType const*>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<MIL::IRValueType const*> *,std::vector<MIL::IRValueType const*> *,std::vector<MIL::IRValueType const*> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(a4, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::vector<std::vector<MIL::IRValueType const*>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<MIL::IRValueType const*>>::__emplace_back_slow_path<std::vector<MIL::IRValueType const*> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<MIL::IRValueType const*>>::__construct_one_at_end[abi:ne200100]<std::vector<MIL::IRValueType const*> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::vector<MIL::IRValueType const*>>::__construct_one_at_end[abi:ne200100]<std::vector<MIL::IRValueType const*> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<MIL::IRValueType const*>>::__emplace_back_slow_path<std::vector<MIL::IRValueType const*> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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
  std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
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
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v14);
  return v8;
}

void sub_21805D1BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::shared_ptr<MIL::IRValue const>>::__emplace_back_slow_path<std::unique_ptr<MIL::IRTensorValue const>>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::Validation::Constraints const>>>(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  v16 = 16 * v2;
  v17 = 0;
  std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>((16 * v2), a2);
  v8 = 16 * v2 + 16;
  v9 = *(a1 + 8) - *a1;
  v10 = 16 * v2 - v9;
  memcpy((v15 - v9), *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(&v14);
  return v8;
}

void sub_21805D2BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_21805D450(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_21805D564(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
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

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_21805DA5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<MIL::IRValue const>>::__assign_with_size[abi:ne200100]<std::shared_ptr<MIL::IRValue const>*,std::shared_ptr<MIL::IRValue const>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<MIL::IRValue const>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument>*>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument>*>(&v17, a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRValue const>>,std::shared_ptr<MIL::IRValue const> const*,std::shared_ptr<MIL::IRValue const> const*,std::shared_ptr<MIL::IRValue const>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void anonymous namespace::ModifyBlockWithTypes(MIL::Builder::BlockBuilder *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  MIL::Builder::BlockBuilder::GetOperations(a1, v36);
  MIL::Builder::BlockBuilder::GetOutputNames(a1, &v34);
  MIL::Builder::BlockBuilder::GetContext(a1, &v32);
  MIL::Builder::BlockBuilder::GetInputNames(a1, &__p);
  begin = __p.__begin_;
  end = __p.__end_;
  while (begin != end)
  {
    if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &begin->__r_.__value_.__l.__data_))
    {
      v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &begin->__r_.__value_.__l.__data_);
      if (!v8)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      ValueType = MIL::IRTypedArgument::GetValueType(v8[5]);
      MIL::Builder::BlockBuilder::ReplaceInput(a1, begin, begin, ValueType);
    }

    ++begin;
  }

  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (v36[1] != v36[0])
  {
    v10 = *(v36[0] + 8);
    v18 = v10;
    v19 = *v36[0];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v31 = v10;
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v31 = 0;
    }

    v30 = v19;
    MIL::Builder::BlockBuilder::RemoveOperation(a1, &v30);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    MIL::Builder::OperationBuilder::TryGetOperatorSharedPtr(v19, &v28);
    if (v28)
    {
      v24[0] = v28;
      v24[1] = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::Builder::OperationBuilder::Make(v24);
    }

    LocationPtr = MIL::Builder::OperationBuilder::GetLocationPtr(v19);
    v17 = LocationPtr[1];
    *&v27 = *LocationPtr;
    *(&v27 + 1) = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v25, "No operator associated with operation");
    MIL::Passes::TypeInferenceResult::TypeInferenceResult(a3, &v27, 3, v25);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    if (*(&v27 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v27 + 1));
    }

    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    v15 = v18;
    if (!v18)
    {
      goto LABEL_28;
    }

LABEL_27:
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    goto LABEL_28;
  }

  v11 = v34;
  v12 = v35;
  if (v34 != v35)
  {
    do
    {
      MIL::Builder::BlockBuilder::RemoveOutput(a1, v11);
      v11 += 3;
    }

    while (v11 != v12);
    v11 = v34;
    v12 = v35;
  }

  while (v11 != v12)
  {
    MIL::Builder::BlockBuilder::AddOutput(a1, v11);
    v11 += 3;
  }

  MIL::Builder::BlockBuilder::UpdateStateDependencyMap(a1);
  v13 = MIL::Builder::BlockBuilder::GetLocationPtr(a1);
  v14 = v13[1];
  *&v22 = *v13;
  *(&v22 + 1) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v20, "Success");
  MIL::Passes::TypeInferenceResult::TypeInferenceResult(a3, &v22, 2, v20);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  v15 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  __p.__begin_ = &v34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p.__begin_ = v36;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_21805F0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(STACK[0x488]);
  }

  if (STACK[0x4A8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x4A8]);
  }

  v23 = *(v21 - 248);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  v24 = *(v21 - 216);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *(v21 - 120) = v21 - 200;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v21 - 120));
  *(v21 - 120) = v21 - 176;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100]((v21 - 120));
  _Unwind_Resume(a1);
}

BOOL anonymous namespace::HasFullyUnknownStrideProperty(MIL::IRValueType *a1)
{
  v1 = MIL::IRValueType::AsMemoryLayoutType(a1);
  v2 = MIL::IRMemoryLayoutValueType::AsTensorBufferType(v1);
  if (!MIL::IRTensorBufferValueType::TryGetStrides(v2))
  {
    return 0;
  }

  Strides = MIL::IRTensorBufferValueType::GetStrides(v2);
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<MIL::IRProperty const*>::__init_with_size[abi:ne200100]<MIL::IRProperty const**,MIL::IRProperty const**>(&v9, *Strides, Strides[1], (Strides[1] - *Strides) >> 3);
  v4 = v9;
  if (v10 == v9)
  {
    v7 = 1;
    if (!v9)
    {
      return v7;
    }

LABEL_10:
    v10 = v4;
    operator delete(v4);
    return v7;
  }

  v5 = 0;
  do
  {
    v6 = MIL::IRProperty::TryAsUnknown(*&v4[8 * v5]);
    v7 = v6 != 0;
    v4 = v9;
    if (!v6)
    {
      break;
    }

    ++v5;
  }

  while (v5 < (v10 - v9) >> 3);
  if (v9)
  {
    goto LABEL_10;
  }

  return v7;
}

void sub_21805F688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::UpdateTensorBufferStride(MIL::IRConstantProperty **a1, MIL::IRValueType *this, uint64_t *a3)
{
  v5 = MIL::IRValueType::AsMemoryLayoutType(this);
  v6 = MIL::IRMemoryLayoutValueType::AsTensorBufferType(v5);
  DataType = MIL::IRTensorBufferValueType::GetDataType(v6);
  InterleaveFactors = MIL::IRTensorBufferValueType::GetInterleaveFactors(v6);
  memset(v12, 0, sizeof(v12));
  std::vector<MIL::IRProperty const*>::__init_with_size[abi:ne200100]<MIL::IRProperty const**,MIL::IRProperty const**>(v12, *InterleaveFactors, InterleaveFactors[1], (InterleaveFactors[1] - *InterleaveFactors) >> 3);
  MIL::Util::GetRowAlignedStrides(*a1, DataType, a3, v12, 0x40uLL, &__p);
  Attributes = MIL::IRTensorBufferValueType::GetAttributes(v6);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v10, Attributes);
  MIL::IRTensorBufferValueType::MakeWithShape();
}

void sub_21805F790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a10);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  v18 = *(v16 - 56);
  if (v18)
  {
    *(v16 - 48) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRTypedArgument>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_21805FA34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MIL::MILResult::~MILResult(void **this)
{
  *this = &unk_2829E6218;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t MIL::MILResult::MILResult(uint64_t this)
{
  *this = &unk_2829E6218;
  *(this + 8) = 0;
  *(this + 16) = 0;
  strcpy((this + 24), "Not an error.");
  *(this + 47) = 13;
  return this;
}

__n128 MIL::MILResult::MILResult(uint64_t a1, uint64_t a2, __n128 *a3)
{
  *a1 = &unk_2829E6218;
  *(a1 + 8) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  result = *a3;
  *(a1 + 40) = a3[1].n128_u64[0];
  *(a1 + 24) = result;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  a3->n128_u64[0] = 0;
  return result;
}

uint64_t MIL::MILResult::GetLocationSharedPtr(MIL::MILResult *this)
{
  if (!*(this + 1))
  {
    MIL::UnknownLocation::Make(this);
  }

  return this + 8;
}

void sub_21805FC84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::Builder::BlockBuilder::BlockBuilderImpl::BlockBuilderImpl(a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<MIL::Location const>::operator=[abi:ne200100]<MIL::UnknownLocation,std::default_delete<MIL::UnknownLocation>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::Location const>::shared_ptr[abi:ne200100]<MIL::UnknownLocation,std::default_delete<MIL::UnknownLocation>,0>(&v6, a2);
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

void MIL::MILResult::GetMessageWithLocation(const std::string::value_type **this@<X0>, std::string *a2@<X8>)
{
  LocationSharedPtr = MIL::MILResult::GetLocationSharedPtr(this);
  (*(**LocationSharedPtr + 24))(&v14);
  v5 = std::string::append(&v14, ": ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v9 = this[3];
  v8 = (this + 3);
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  v13 = std::string::append(&v15, v11, v12);
  *a2 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_21805FDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
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

uint64_t *std::shared_ptr<MIL::Location const>::shared_ptr[abi:ne200100]<MIL::UnknownLocation,std::default_delete<MIL::UnknownLocation>,0>(uint64_t *result, uint64_t *a2)
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

MIL::ParserContext *MIL::ParserContext::ParserContext(MIL::ParserContext *this, const MIL::ParserOptions *a2)
{
  (*(*a2 + 16))(a2);
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 10) = 1065353216;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 50) = 1065353216;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 60) = 1065353216;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 70) = 1065353216;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 80) = 1065353216;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 90) = 1065353216;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 100) = 1065353216;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 110) = 1065353216;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 120) = 1065353216;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 130) = 1065353216;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 140) = 1065353216;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 150) = 1065353216;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 160) = 1065353216;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 170) = 1065353216;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 180) = 1065353216;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 190) = 1065353216;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 200) = 1065353216;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 210) = 1065353216;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 220) = 1065353216;
  *(this + 888) = 0u;
  *(this + 904) = 0u;
  *(this + 230) = 1065353216;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 240) = 1065353216;
  *(this + 968) = 0u;
  *(this + 984) = 0u;
  *(this + 250) = 1065353216;
  *(this + 63) = 0u;
  *(this + 64) = 0u;
  *(this + 260) = 1065353216;
  *(this + 1048) = 0u;
  *(this + 1064) = 0u;
  *(this + 270) = 1065353216;
  *(this + 69) = 0u;
  *(this + 68) = 0u;
  *(this + 280) = 1065353216;
  *(this + 1128) = 0u;
  *(this + 1144) = 0u;
  *(this + 290) = 1065353216;
  *(this + 74) = 0u;
  *(this + 73) = 0u;
  *(this + 300) = 1065353216;
  *(this + 1208) = 0u;
  *(this + 1224) = 0u;
  *(this + 310) = 1065353216;
  *(this + 79) = 0u;
  *(this + 78) = 0u;
  *(this + 320) = 1065353216;
  *(this + 1288) = 0u;
  *(this + 1304) = 0u;
  *(this + 330) = 1065353216;
  *(this + 84) = 0u;
  *(this + 83) = 0u;
  *(this + 340) = 1065353216;
  *(this + 1368) = 0u;
  *(this + 1384) = 0u;
  *(this + 350) = 1065353216;
  *(this + 89) = 0u;
  *(this + 88) = 0u;
  *(this + 360) = 1065353216;
  *(this + 1448) = 0u;
  *(this + 1464) = 0u;
  *(this + 370) = 1065353216;
  *(this + 94) = 0u;
  *(this + 93) = 0u;
  *(this + 380) = 1065353216;
  *(this + 1528) = 0u;
  *(this + 1544) = 0u;
  *(this + 390) = 1065353216;
  *(this + 99) = 0u;
  *(this + 98) = 0u;
  *(this + 400) = 1065353216;
  *(this + 1608) = 0u;
  *(this + 1624) = 0u;
  *(this + 410) = 1065353216;
  *(this + 104) = 0u;
  *(this + 103) = 0u;
  *(this + 420) = 1065353216;
  *(this + 1688) = 0u;
  *(this + 1704) = 0u;
  *(this + 430) = 1065353216;
  *(this + 109) = 0u;
  *(this + 108) = 0u;
  *(this + 440) = 1065353216;
  *(this + 1768) = 0u;
  *(this + 1784) = 0u;
  *(this + 450) = 1065353216;
  *(this + 114) = 0u;
  *(this + 113) = 0u;
  *(this + 460) = 1065353216;
  *(this + 1848) = 0u;
  *(this + 1864) = 0u;
  *(this + 470) = 1065353216;
  *(this + 119) = 0u;
  *(this + 118) = 0u;
  *(this + 480) = 1065353216;
  *(this + 1928) = 0u;
  *(this + 1944) = 0u;
  *(this + 490) = 1065353216;
  *(this + 124) = 0u;
  *(this + 123) = 0u;
  *(this + 500) = 1065353216;
  *(this + 2008) = 0u;
  *(this + 2024) = 0u;
  *(this + 510) = 1065353216;
  *(this + 129) = 0u;
  *(this + 128) = 0u;
  *(this + 520) = 1065353216;
  *(this + 3464) = 0u;
  *(this + 3480) = 0u;
  *(this + 3448) = 0u;
  *(this + 2088) = 0u;
  *(this + 2104) = 0u;
  *(this + 530) = 1065353216;
  *(this + 134) = 0u;
  *(this + 133) = 0u;
  *(this + 540) = 1065353216;
  *(this + 550) = 1065353216;
  *(this + 560) = 1065353216;
  *(this + 570) = 1065353216;
  *(this + 580) = 1065353216;
  *(this + 590) = 1065353216;
  *(this + 600) = 1065353216;
  *(this + 610) = 1065353216;
  *(this + 620) = 1065353216;
  *(this + 630) = 1065353216;
  *(this + 640) = 1065353216;
  *(this + 650) = 1065353216;
  *(this + 660) = 1065353216;
  *(this + 670) = 1065353216;
  *(this + 680) = 1065353216;
  *(this + 690) = 1065353216;
  *(this + 700) = 1065353216;
  *(this + 710) = 1065353216;
  *(this + 720) = 1065353216;
  *(this + 730) = 1065353216;
  *(this + 740) = 1065353216;
  *(this + 750) = 1065353216;
  *(this + 760) = 1065353216;
  *(this + 770) = 1065353216;
  *(this + 780) = 1065353216;
  *(this + 790) = 1065353216;
  *(this + 800) = 1065353216;
  *(this + 810) = 1065353216;
  *(this + 820) = 1065353216;
  *(this + 830) = 1065353216;
  *(this + 840) = 1065353216;
  *(this + 850) = 1065353216;
  *(this + 860) = 1065353216;
  *(this + 874) = 1065353216;
  *(this + 884) = 1065353216;
  *(this + 2168) = 0u;
  *(this + 2184) = 0u;
  *(this + 139) = 0u;
  *(this + 138) = 0u;
  *(this + 2248) = 0u;
  *(this + 2264) = 0u;
  *(this + 144) = 0u;
  *(this + 143) = 0u;
  *(this + 2328) = 0u;
  *(this + 2344) = 0u;
  *(this + 149) = 0u;
  *(this + 148) = 0u;
  *(this + 2408) = 0u;
  *(this + 2424) = 0u;
  *(this + 154) = 0u;
  *(this + 153) = 0u;
  *(this + 2488) = 0u;
  *(this + 2504) = 0u;
  *(this + 159) = 0u;
  *(this + 158) = 0u;
  *(this + 2568) = 0u;
  *(this + 2584) = 0u;
  *(this + 164) = 0u;
  *(this + 163) = 0u;
  *(this + 2648) = 0u;
  *(this + 2664) = 0u;
  *(this + 169) = 0u;
  *(this + 168) = 0u;
  *(this + 2728) = 0u;
  *(this + 2744) = 0u;
  *(this + 174) = 0u;
  *(this + 173) = 0u;
  *(this + 2808) = 0u;
  *(this + 2824) = 0u;
  *(this + 179) = 0u;
  *(this + 178) = 0u;
  *(this + 2888) = 0u;
  *(this + 2904) = 0u;
  *(this + 184) = 0u;
  *(this + 183) = 0u;
  *(this + 2968) = 0u;
  *(this + 2984) = 0u;
  *(this + 189) = 0u;
  *(this + 188) = 0u;
  *(this + 3048) = 0u;
  *(this + 3064) = 0u;
  *(this + 194) = 0u;
  *(this + 193) = 0u;
  *(this + 3128) = 0u;
  *(this + 3144) = 0u;
  *(this + 199) = 0u;
  *(this + 198) = 0u;
  *(this + 3208) = 0u;
  *(this + 3224) = 0u;
  *(this + 204) = 0u;
  *(this + 203) = 0u;
  *(this + 3288) = 0u;
  *(this + 3304) = 0u;
  *(this + 209) = 0u;
  *(this + 208) = 0u;
  *(this + 3368) = 0u;
  *(this + 3384) = 0u;
  *(this + 214) = 0u;
  *(this + 213) = 0u;
  *(this + 220) = 0u;
  *(this + 219) = 0u;
  MIL::ParserContext::InitializeFirstSets(this, a2);
  MIL::ParserContext::InitializeMILKeywords(this);
  return this;
}

void sub_2180603CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  *(v44 - 96) = a1;
  std::__hash_table<std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::__unordered_map_hasher<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::hash<MIL::Scanner::TokenType>,std::equal_to<MIL::Scanner::TokenType>,true>,std::__unordered_map_equal<MIL::Scanner::TokenType,std::__hash_value_type<MIL::Scanner::TokenType,std::string>,std::equal_to<MIL::Scanner::TokenType>,std::hash<MIL::Scanner::TokenType>,true>,std::allocator<std::__hash_value_type<MIL::Scanner::TokenType,std::string>>>::~__hash_table((v34 + 438));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 433));
  v45 = v34[432];
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((v34 + 426));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v38);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 416));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v37);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 406));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v41);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 396));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v35);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 386));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v43);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 376));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v42);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 366));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v40);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 356));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v36);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 346));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v39);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 336));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a10);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 326));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a11);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 316));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a12);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 306));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a13);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 296));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a14);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 286));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a15);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 276));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a16);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 266));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a17);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 256));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a18);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 246));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a19);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 236));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a20);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 226));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a21);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 216));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a22);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 206));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a23);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 196));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a24);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 186));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a25);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 176));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a26);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 166));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a27);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 156));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a28);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 146));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a29);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 136));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a30);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 126));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a31);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 116));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a32);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 106));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a33);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 96));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(a34);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 86));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 192));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 76));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 184));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 66));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 176));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 56));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 168));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 46));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 160));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((v34 + 36));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 152));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 144));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 136));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 128));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 120));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 112));
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(*(v44 - 104));
  v46 = *v34;
  *v34 = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  _Unwind_Resume(*(v44 - 96));
}

uint64_t MIL::ParserContext::InitializeFirstSets(MIL::ParserContext *this, const MIL::ParserOptions *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  LODWORD(v9) = 16;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 8, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 17;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 48, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 17;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 88, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 1;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 128, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 1;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 168, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 5;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 208, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 248, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 288, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  v7[2] = xmmword_218588780;
  v7[3] = unk_218588790;
  v8[0] = xmmword_2185887A0;
  *(v8 + 12) = *(&xmmword_2185887A0 + 12);
  v7[0] = xmmword_218588760;
  v7[1] = unk_218588770;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(&v9, v7, 23);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 328, &v9);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&v9);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 368, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 408, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 448, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 488, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 528, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 568, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 0;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 608, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 648, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 7;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 688, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 1;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 728, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 5;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 768, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 808, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 848, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&v9);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 888, v5);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v5);
  LODWORD(v9) = 7;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 928, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 7;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 968, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1008, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  v9 = 0xD00000012;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 2);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1048, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  v9 = 0xD00000012;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 2);
  v6 = 15;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(&v9, &v6, 1);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&v9);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1088, v5);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v5);
  LODWORD(v9) = 3;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1128, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  v9 = 0x1200000036;
  v10 = 13;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 3);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1168, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 3;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1208, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1248, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1288, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 3;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1328, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1368, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 3;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1408, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1448, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 3;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1488, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1528, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1568, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 3;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1608, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1648, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 3;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1688, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1728, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1768, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1808, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1848, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1888, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1928, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 3;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 1968, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2008, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2048, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 31;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2088, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 32;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2128, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 33;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2168, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 36;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2208, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 35;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2248, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 34;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2288, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 37;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2328, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 38;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2368, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 39;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2408, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 40;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2448, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 41;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2488, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 42;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2528, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 43;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2568, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 44;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2608, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 45;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2648, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 46;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2688, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 47;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2728, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 48;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2768, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 49;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2808, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 50;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2848, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 51;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2888, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 52;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2928, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 53;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 2968, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 19;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3008, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 19;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3048, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3088, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3128, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3168, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 18;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3208, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  v9 = 0x1600000015;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 2);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3248, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 20;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3288, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  LODWORD(v9) = 19;
  std::unordered_set<MIL::Scanner::TokenType>::unordered_set(v7, &v9, 1);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3328, v7);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(this + 3368, v7);
  return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v7);
}