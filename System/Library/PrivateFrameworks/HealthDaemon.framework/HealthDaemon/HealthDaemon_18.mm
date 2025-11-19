__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsDiscrete>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 3);
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v6 = *(*a4 + 256);
  v7 = *(*a4 + 264);
  v8 = v6;
  if (v6 == v7)
  {
    v9 = *(*a4 + 256);
  }

  else
  {
    while (*v8 != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(*a4 + 264);
        break;
      }
    }

    v9 = *(*a4 + 256);
    while (*v9 != v5)
    {
      v9 += 8;
      if (v9 == v7)
      {
        v9 = *(*a4 + 264);
        break;
      }
    }
  }

  if (v8 - v6 >= v9 - v6)
  {
LABEL_21:
    v13 = *(a3 + 3);
    if (v13 != v4)
    {
      v14 = *(*a4 + 256);
      v15 = *(*a4 + 264);
      if (v14 == v15)
      {
        v17 = *(*a4 + 256);
        v16 = v17;
      }

      else
      {
        v16 = *(*a4 + 256);
        v17 = v16;
        do
        {
          if (*v17 == v13)
          {
            goto LABEL_27;
          }

          v17 += 8;
        }

        while (v17 != v15);
        v17 = *(*a4 + 264);
LABEL_27:
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v15)
          {
            v16 = *(*a4 + 264);
            break;
          }
        }
      }

      if (v17 - v14 < v16 - v14)
      {
        v18 = *a2;
        *v46 = a2[1];
        *&v46[16] = a2[2];
        v19 = *(a3 + 27);
        v20 = a3[1];
        *a2 = *a3;
        a2[1] = v20;
        *(a2 + 27) = v19;
        *a3 = v18;
        a3[1] = *v46;
        result = *&v46[11];
        *(a3 + 27) = *&v46[11];
        v22 = *(a2 + 3);
        v23 = *(a1 + 3);
        if (v22 != v23)
        {
          v24 = *(*a4 + 256);
          v25 = *(*a4 + 264);
          if (v24 == v25)
          {
            v27 = *(*a4 + 256);
            v26 = v27;
          }

          else
          {
            v26 = *(*a4 + 256);
            v27 = v26;
            do
            {
              if (*v27 == v22)
              {
                goto LABEL_38;
              }

              v27 += 8;
            }

            while (v27 != v25);
            v27 = *(*a4 + 264);
LABEL_38:
            while (*v26 != v23)
            {
              v26 += 8;
              if (v26 == v25)
              {
                v26 = *(*a4 + 264);
                break;
              }
            }
          }

          if (v27 - v24 < v26 - v24)
          {
            v41 = *a1;
            *v48 = a1[1];
            *&v48[16] = a1[2];
            v42 = *(a2 + 27);
            v43 = a2[1];
            *a1 = *a2;
            a1[1] = v43;
            *(a1 + 27) = v42;
            *a2 = v41;
            a2[1] = *v48;
            result = *&v48[11];
            *(a2 + 27) = *&v48[11];
          }
        }
      }
    }
  }

  else
  {
    v10 = *(a3 + 3);
    if (v10 != v4)
    {
      v11 = *(*a4 + 256);
      if (v6 == v7)
      {
        v12 = *(*a4 + 256);
      }

      else
      {
        while (*v11 != v10)
        {
          v11 += 8;
          if (v11 == v7)
          {
            v11 = *(*a4 + 264);
            break;
          }
        }

        v12 = *(*a4 + 256);
        while (*v12 != v4)
        {
          v12 += 8;
          if (v12 == v7)
          {
            v12 = *(*a4 + 264);
            break;
          }
        }
      }

      if (v11 - v6 < v12 - v6)
      {
        v28 = a1[1];
        v29 = *a1;
        *v49 = *(&v28 + 1);
        *&v49[8] = a1[2];
        v30 = *(a3 + 27);
        v31 = a3[1];
        *a1 = *a3;
        a1[1] = v31;
        *(a1 + 27) = v30;
LABEL_59:
        *a3 = v29;
        a3[1] = v28;
        result = *&v49[3];
        *(a3 + 27) = *&v49[3];
        return result;
      }
    }

    v32 = *a1;
    *v47 = a1[1];
    *&v47[16] = a1[2];
    v33 = *(a2 + 27);
    v34 = a2[1];
    *a1 = *a2;
    a1[1] = v34;
    *(a1 + 27) = v33;
    *a2 = v32;
    a2[1] = *v47;
    result = *&v47[11];
    *(a2 + 27) = *&v47[11];
    v35 = *(a3 + 3);
    v36 = *(a2 + 3);
    if (v35 != v36)
    {
      v37 = *(*a4 + 256);
      v38 = *(*a4 + 264);
      if (v37 == v38)
      {
        v40 = *(*a4 + 256);
        v39 = v40;
      }

      else
      {
        v39 = *(*a4 + 256);
        v40 = v39;
        do
        {
          if (*v40 == v35)
          {
            goto LABEL_50;
          }

          v40 += 8;
        }

        while (v40 != v38);
        v40 = *(*a4 + 264);
LABEL_50:
        while (*v39 != v36)
        {
          v39 += 8;
          if (v39 == v38)
          {
            v39 = *(*a4 + 264);
            break;
          }
        }
      }

      if (v40 - v37 < v39 - v37)
      {
        v28 = a2[1];
        v29 = *a2;
        *v49 = *(&v28 + 1);
        *&v49[8] = a2[2];
        v44 = *(a3 + 27);
        v45 = a3[1];
        *a2 = *a3;
        a2[1] = v45;
        *(a2 + 27) = v44;
        goto LABEL_59;
      }
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsDiscrete>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsDiscrete>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 256);
    v14 = *(*a5 + 264);
    if (v13 == v14)
    {
      v16 = *(*a5 + 256);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 256);
      v16 = v15;
      do
      {
        if (*v16 == v11)
        {
          goto LABEL_7;
        }

        v16 += 8;
      }

      while (v16 != v14);
      v16 = *(*a5 + 264);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 264);
          break;
        }
      }
    }

    if (v16 - v13 < v15 - v13)
    {
      v17 = *a3;
      *v38 = *(a3 + 16);
      *&v38[16] = *(a3 + 32);
      v18 = *(a4 + 27);
      v19 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v19;
      *(a3 + 27) = v18;
      *a4 = v17;
      *(a4 + 16) = *v38;
      result = *&v38[11];
      *(a4 + 27) = *&v38[11];
      v20 = *(a3 + 24);
      v21 = *(a2 + 24);
      if (v20 != v21)
      {
        v22 = *(*a5 + 256);
        v23 = *(*a5 + 264);
        if (v22 == v23)
        {
          v25 = *(*a5 + 256);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 256);
          v25 = v24;
          do
          {
            if (*v25 == v20)
            {
              goto LABEL_18;
            }

            v25 += 8;
          }

          while (v25 != v23);
          v25 = *(*a5 + 264);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 264);
              break;
            }
          }
        }

        if (v25 - v22 < v24 - v22)
        {
          v26 = *a2;
          *v39 = *(a2 + 16);
          *&v39[16] = *(a2 + 32);
          v27 = *(a3 + 27);
          v28 = *(a3 + 16);
          *a2 = *a3;
          *(a2 + 16) = v28;
          *(a2 + 27) = v27;
          *a3 = v26;
          *(a3 + 16) = *v39;
          result = *&v39[11];
          *(a3 + 27) = *&v39[11];
          v29 = *(a2 + 24);
          v30 = *(a1 + 24);
          if (v29 != v30)
          {
            v31 = *(*a5 + 256);
            v32 = *(*a5 + 264);
            if (v31 == v32)
            {
              v34 = *(*a5 + 256);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 256);
              v34 = v33;
              do
              {
                if (*v34 == v29)
                {
                  goto LABEL_29;
                }

                v34 += 8;
              }

              while (v34 != v32);
              v34 = *(*a5 + 264);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 264);
                  break;
                }
              }
            }

            if (v34 - v31 < v33 - v31)
            {
              v35 = *a1;
              *v40 = *(a1 + 16);
              *&v40[16] = *(a1 + 32);
              v36 = *(a2 + 27);
              v37 = *(a2 + 16);
              *a1 = *a2;
              *(a1 + 16) = v37;
              *(a1 + 27) = v36;
              *a2 = v35;
              *(a2 + 16) = *v40;
              result = *&v40[11];
              *(a2 + 27) = *&v40[11];
            }
          }
        }
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsDiscrete>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsDiscrete>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *(a5 + 24);
  v14 = *(a4 + 24);
  if (v13 != v14)
  {
    v15 = *(*a6 + 256);
    v16 = *(*a6 + 264);
    if (v15 == v16)
    {
      v18 = *(*a6 + 256);
      v17 = v18;
    }

    else
    {
      v17 = *(*a6 + 256);
      v18 = v17;
      do
      {
        if (*v18 == v13)
        {
          goto LABEL_7;
        }

        v18 += 8;
      }

      while (v18 != v16);
      v18 = *(*a6 + 264);
LABEL_7:
      while (*v17 != v14)
      {
        v17 += 8;
        if (v17 == v16)
        {
          v17 = *(*a6 + 264);
          break;
        }
      }
    }

    if (v18 - v15 < v17 - v15)
    {
      v19 = *a4;
      *v49 = *(a4 + 16);
      *&v49[16] = *(a4 + 32);
      v20 = *(a5 + 27);
      v21 = *(a5 + 16);
      *a4 = *a5;
      *(a4 + 16) = v21;
      *(a4 + 27) = v20;
      *a5 = v19;
      *(a5 + 16) = *v49;
      result = *&v49[11];
      *(a5 + 27) = *&v49[11];
      v22 = *(a4 + 24);
      v23 = *(a3 + 24);
      if (v22 != v23)
      {
        v24 = *(*a6 + 256);
        v25 = *(*a6 + 264);
        if (v24 == v25)
        {
          v27 = *(*a6 + 256);
          v26 = v27;
        }

        else
        {
          v26 = *(*a6 + 256);
          v27 = v26;
          do
          {
            if (*v27 == v22)
            {
              goto LABEL_18;
            }

            v27 += 8;
          }

          while (v27 != v25);
          v27 = *(*a6 + 264);
LABEL_18:
          while (*v26 != v23)
          {
            v26 += 8;
            if (v26 == v25)
            {
              v26 = *(*a6 + 264);
              break;
            }
          }
        }

        if (v27 - v24 < v26 - v24)
        {
          v28 = *a3;
          *v50 = *(a3 + 16);
          *&v50[16] = *(a3 + 32);
          v29 = *(a4 + 27);
          v30 = *(a4 + 16);
          *a3 = *a4;
          *(a3 + 16) = v30;
          *(a3 + 27) = v29;
          *a4 = v28;
          *(a4 + 16) = *v50;
          result = *&v50[11];
          *(a4 + 27) = *&v50[11];
          v31 = *(a3 + 24);
          v32 = *(a2 + 24);
          if (v31 != v32)
          {
            v33 = *(*a6 + 256);
            v34 = *(*a6 + 264);
            if (v33 == v34)
            {
              v36 = *(*a6 + 256);
              v35 = v36;
            }

            else
            {
              v35 = *(*a6 + 256);
              v36 = v35;
              do
              {
                if (*v36 == v31)
                {
                  goto LABEL_29;
                }

                v36 += 8;
              }

              while (v36 != v34);
              v36 = *(*a6 + 264);
LABEL_29:
              while (*v35 != v32)
              {
                v35 += 8;
                if (v35 == v34)
                {
                  v35 = *(*a6 + 264);
                  break;
                }
              }
            }

            if (v36 - v33 < v35 - v33)
            {
              v37 = *a2;
              *v51 = *(a2 + 16);
              *&v51[16] = *(a2 + 32);
              v38 = *(a3 + 27);
              v39 = *(a3 + 16);
              *a2 = *a3;
              *(a2 + 16) = v39;
              *(a2 + 27) = v38;
              *a3 = v37;
              *(a3 + 16) = *v51;
              result = *&v51[11];
              *(a3 + 27) = *&v51[11];
              v40 = *(a2 + 24);
              v41 = *(a1 + 24);
              if (v40 != v41)
              {
                v42 = *(*a6 + 256);
                v43 = *(*a6 + 264);
                if (v42 == v43)
                {
                  v45 = *(*a6 + 256);
                  v44 = v45;
                }

                else
                {
                  v44 = *(*a6 + 256);
                  v45 = v44;
                  do
                  {
                    if (*v45 == v40)
                    {
                      goto LABEL_40;
                    }

                    v45 += 8;
                  }

                  while (v45 != v43);
                  v45 = *(*a6 + 264);
LABEL_40:
                  while (*v44 != v41)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(*a6 + 264);
                      break;
                    }
                  }
                }

                if (v45 - v42 < v44 - v42)
                {
                  v46 = *a1;
                  *v52 = *(a1 + 16);
                  *&v52[16] = *(a1 + 32);
                  v47 = *(a2 + 27);
                  v48 = *(a2 + 16);
                  *a1 = *a2;
                  *(a1 + 16) = v48;
                  *(a1 + 27) = v47;
                  *a2 = v46;
                  *(a2 + 16) = *v52;
                  result = *&v52[11];
                  *(a2 + 27) = *&v52[11];
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsDiscrete>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *(a2 - 24);
        v8 = *(a1 + 24);
        if (v7 != v8)
        {
          v9 = *(*a3 + 256);
          v10 = *(*a3 + 264);
          if (v9 == v10)
          {
            v12 = *(*a3 + 256);
            v11 = v12;
          }

          else
          {
            v11 = *(*a3 + 256);
            v12 = v11;
            do
            {
              if (*v12 == v7)
              {
                goto LABEL_10;
              }

              v12 += 8;
            }

            while (v12 != v10);
            v12 = *(*a3 + 264);
LABEL_10:
            while (*v11 != v8)
            {
              v11 += 8;
              if (v11 == v10)
              {
                v11 = *(*a3 + 264);
                break;
              }
            }
          }

          if (v12 - v9 < v11 - v9)
          {
            v31 = (a2 - 48);
            v32 = *a1;
            *v37 = *(a1 + 16);
            *&v37[16] = *(a1 + 32);
            v33 = *(a2 - 21);
            v34 = *(a2 - 32);
            *a1 = *(a2 - 48);
            *(a1 + 16) = v34;
            *(a1 + 27) = v33;
            *v31 = v32;
            v31[1] = *v37;
            *(v31 + 27) = *&v37[11];
          }
        }

        goto LABEL_50;
      }

      goto LABEL_18;
    }

LABEL_50:
    result = 1;
    goto LABEL_51;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsDiscrete>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder*,0>(a1, (a1 + 48), (a2 - 48), a3);
      goto LABEL_50;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsDiscrete>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a2 - 48, a3);
      goto LABEL_50;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsDiscrete>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a1 + 144, a2 - 48, a3);
      goto LABEL_50;
  }

LABEL_18:
  v13 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsDiscrete>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), a3);
  v14 = a1 + 144;
  if (a1 + 144 == a2)
  {
    goto LABEL_50;
  }

  v15 = 0;
  while (1)
  {
    v16 = *(v14 + 24);
    v17 = *(v13 + 24);
    if (v16 != v17)
    {
      v18 = *(*a3 + 256);
      v19 = *(*a3 + 264);
      if (v18 == v19)
      {
        v21 = *(*a3 + 256);
        v20 = v21;
      }

      else
      {
        v20 = *(*a3 + 256);
        v21 = v20;
        do
        {
          if (*v21 == v16)
          {
            goto LABEL_26;
          }

          v21 += 8;
        }

        while (v21 != v19);
        v21 = *(*a3 + 264);
LABEL_26:
        while (*v20 != v17)
        {
          v20 += 8;
          if (v20 == v19)
          {
            v20 = *(*a3 + 264);
            break;
          }
        }
      }

      if (v21 - v18 < v20 - v18)
      {
        v35 = *v14;
        v36 = *(v14 + 16);
        v38 = *(v14 + 32);
        v22 = v14;
        while (1)
        {
          v23 = *(v13 + 16);
          *v22 = *v13;
          *(v22 + 16) = v23;
          *(v22 + 27) = *(v13 + 27);
          if (v13 == a1)
          {
            break;
          }

          v22 = v13;
          v24 = *(v13 - 24);
          if (v16 != v24)
          {
            v25 = *(*a3 + 256);
            v26 = *(*a3 + 264);
            if (v25 == v26)
            {
              v28 = *(*a3 + 256);
              v27 = v28;
            }

            else
            {
              v27 = *(*a3 + 256);
              v28 = v27;
              do
              {
                if (*v28 == v16)
                {
                  goto LABEL_39;
                }

                v28 += 8;
              }

              while (v28 != v26);
              v28 = *(*a3 + 264);
LABEL_39:
              while (*v27 != v24)
              {
                v27 += 8;
                if (v27 == v26)
                {
                  v27 = *(*a3 + 264);
                  break;
                }
              }
            }

            v13 -= 48;
            if (v28 - v25 < v27 - v25)
            {
              continue;
            }
          }

          goto LABEL_46;
        }

        v22 = a1;
LABEL_46:
        *v22 = v35;
        *(v22 + 16) = v36;
        *(v22 + 24) = v16;
        *(v22 + 32) = v38;
        *(v22 + 39) = *(&v38 + 7);
        if (++v15 == 8)
        {
          break;
        }
      }
    }

    v13 = v14;
    v14 += 48;
    if (v14 == a2)
    {
      goto LABEL_50;
    }
  }

  result = v14 + 48 == a2;
LABEL_51:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete>(HKStatistics *,HDStatisticsBucket<HDStatisticsDiscrete> const&)::{lambda(HDStatisticsDiscrete const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete>(HKStatistics *,HDStatisticsBucket<HDStatisticsDiscrete> const&)::{lambda(HDStatisticsDiscrete const&)#1}>,HDStatisticsDiscrete const& ()(HDStatisticsDiscrete const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsDiscrete const& ()(HDStatisticsDiscrete const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_primitiveAddSample(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 552) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = *(a2 + 8);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 8);
  if (v9 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && a3)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsDiscrete>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v10 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v9 end:*(a2 + 16)];
    v11 = (*(*a1 + 128))(a1, v10, a4);
  }

  return v11;
}

double _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_earliestStartTimeWithoutInvalidation(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if ((*(a1 + 552) & 1) == 0)
    {
      v1 = *(a1 + 176);
      result = *(a1 + 120);
      if (v1 <= result)
      {
        v1 = -1.79769313e308;
      }

      else if (*(a1 + 144))
      {
        v1 = -1.79769313e308;
      }

      if (v1 >= result)
      {
        return v1;
      }

      return result;
    }

    return -1.79769313e308;
  }

  result = *(a1 + 176);
  if (result <= *(a1 + 120))
  {
    return -1.79769313e308;
  }

  if (*(a1 + 144))
  {
    return -1.79769313e308;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_advanceToTime(uint64_t a1, double a2)
{
  while (*(a1 + 128) <= a2)
  {
    v4 = *(a1 + 528);
    v5 = *(a1 + 520);
    if (v4 == v5)
    {
      v20 = 0;
      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
      v6 = [v13 dateIntervalContainingDate:v14 index:&v20];

      HDStatisticsBucket<HDStatisticsDiscrete>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsDiscrete>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_statisticsFromFinishedBucket(a1, (a1 + 120));
      v15 = v20;
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [v6 endDate];
      [v18 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsDiscrete>::resetToBucket(a1 + 112, v15, v17, v19);
    }

    else
    {
      v6 = [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      HDStatisticsBucket<HDStatisticsDiscrete>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsDiscrete>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_statisticsFromFinishedBucket(a1, (a1 + 120));
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;
      v11 = [v6 endDate];
      [v11 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsDiscrete>::advanceBucket((a1 + 112), v10, v12);
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_didChangeBucket(a1, v7);
    if (v4 != v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_notifyForCurrentBucket(a1);
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsDiscrete>::addSample(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *(a2 + 32);
  if ((v4 & 1) != 0 && (v5 = *(a2 + 1), v5 >= *(a1 + 8)))
  {
    v6 = *a2;
    v7 = *(a2 + 2);
    v8 = a2[3];
    v9 = *(a2 + 33);
    *(&v42 + 1) = a2[1];
    *&v43 = v7;
    *(&v43 + 1) = v8;
    LOBYTE(v44) = v4;
    HIBYTE(v44) = v9;
    *&v42 = v6;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    v10 = *(a1 + 16);
    if (*(a1 + 36))
    {
      v11 = v5 < v10;
    }

    else
    {
      v11 = v5 <= v10;
    }

    if (v11)
    {
      if (v7 <= v10)
      {
        v13 = v7;
      }

      else
      {
        v13 = *(a1 + 16);
      }

      *&v43 = v13;
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 224), v8);
      v14 = *(a1 + 112);
      if (v14 == *(a1 + 104) && *(a1 + 152) <= 0)
      {
        v17 = *(a1 + 8);
        v18 = *(a1 + 16);
        if (v5 >= v17)
        {
          v17 = v5;
        }

        if (v18 >= v13)
        {
          v18 = v13;
        }

        *(a1 + 48) = v17;
        *(a1 + 56) = v18;
      }

      else
      {
        if (v5 < *(a1 + 48))
        {
          v15 = *(a1 + 8);
          if (v5 >= v15)
          {
            v15 = v5;
          }

          *(a1 + 48) = v15;
        }

        if (v13 > *(a1 + 56))
        {
          v16 = *(a1 + 16);
          if (v16 >= v13)
          {
            v16 = v13;
          }

          *(a1 + 56) = v16;
        }
      }

      if (*(a1 + 32) == 1)
      {
        v19 = *(a1 + 64);
        if (v5 < v19)
        {
          v19 = v5;
        }

        *(a1 + 64) = v19;
      }

      if (a3 && v5 < *(a1 + 16))
      {
        HDStatisticsBucket<HDStatisticsDiscrete>::_mergeThroughTime(a1 + 8, v5);
        v14 = *(a1 + 112);
      }

      v39 = v42;
      v40 = v43;
      LOWORD(v41) = v44;
      v20 = *(a1 + 120);
      if (v14 >= v20)
      {
        v23 = *(a1 + 104);
        v24 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v23) >> 4);
        v25 = v24 + 1;
        if (v24 + 1 > 0x555555555555555)
        {
          std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
        }

        v26 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v23) >> 4);
        if (2 * v26 > v25)
        {
          v25 = 2 * v26;
        }

        if (v26 >= 0x2AAAAAAAAAAAAAALL)
        {
          v27 = 0x555555555555555;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v27);
        }

        v28 = 48 * v24;
        v29 = v40;
        *v28 = v39;
        *(v28 + 16) = v29;
        *(v28 + 32) = v41;
        *(v28 + 40) = 0;
        *(v28 + 42) = 0;
        v22 = 48 * v24 + 48;
        v30 = *(a1 + 104);
        v31 = *(a1 + 112) - v30;
        v32 = 48 * v24 - v31;
        memcpy((v28 - v31), v30, v31);
        v33 = *(a1 + 104);
        *(a1 + 104) = v32;
        *(a1 + 112) = v22;
        *(a1 + 120) = 0;
        if (v33)
        {
          operator delete(v33);
        }
      }

      else
      {
        v21 = v40;
        *v14 = v39;
        *(v14 + 16) = v21;
        *(v14 + 32) = v41;
        *(v14 + 40) = 0;
        *(v14 + 42) = 0;
        v22 = v14 + 48;
      }

      *(a1 + 112) = v22;
      if (!*(a1 + 192) || *(a1 + 168) <= v5)
      {
        *(a1 + 160) = v6;
        *(a1 + 168) = v5;
        *(a1 + 176) = v7;
        *(a1 + 184) = v8;
        *(a1 + 192) = v4;
        *(a1 + 193) = v9;
      }

      if (*(a1 + 33) == 1)
      {
        v34 = HDStatisticsBucket<HDStatisticsDiscrete>::_canonicalSourceIDForSourceID(a1 + 8, v8);
        v35 = HDStatisticsBucket<HDStatisticsDiscrete>::_statisticsForSource(a1 + 8, v34);
        if (!*(v35 + 64) || v35[5] <= v5)
        {
          *(v35 + 4) = v6;
          v35[5] = v5;
          v35[6] = v7;
          *(v35 + 7) = v8;
          *(v35 + 64) = v4;
          *(v35 + 65) = v9;
        }
      }
    }

    else
    {
      v36 = v42;
      v37 = v43;
      v38 = v44;
      if (v5 >= v10)
      {
        v10 = v5;
      }

      *(&v36 + 1) = v10;
    }
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  if (v38 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 408, &v36);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 554) == 1)
  {
    *(a1 + 556) = 1;
  }

  else
  {
    *(a1 + 556) = 0;
    v2 = _Block_copy(*(a1 + 96));
    if (v2)
    {
      v4 = v2;
      v3 = (*(*a1 + 96))(a1);
      if (v3)
      {
        v4[2](v4, v3);
      }

      v2 = v4;
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsDiscrete>::advanceBucket(void *a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, a1[51], a1[52], 0xCCCCCCCCCCCCCCCDLL * ((a1[52] - a1[51]) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsDiscrete>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsDiscrete>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228EBCB00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsDiscrete>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = a1 + 40;
  objc_storeStrong((a1 + 432), *(a1 + 40));
  *(v8 - 32) = a3;
  *(v8 - 24) = a4;
  *(v8 + 24) = a3;
  *(v8 + 72) = *(v8 + 64);
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0u;
  *(v8 + 152) = 0;
  if (*(v8 + 176))
  {
    v9 = *(a1 + 208);
    v10 = *(a1 + 200);
    *(a1 + 200) = a1 + 208;
    *(v9 + 16) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    if (v10[1])
    {
      v11 = v10[1];
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = v11[2];
      if (v12)
      {
        v13 = *v12;
        if (*v12 == v11)
        {
          *v12 = 0;
          while (1)
          {
            v15 = v12[1];
            if (!v15)
            {
              break;
            }

            do
            {
              v12 = v15;
              v15 = *v15;
            }

            while (v15);
          }
        }

        else
        {
          for (v12[1] = 0; v13; v13 = v12[1])
          {
            do
            {
              v12 = v13;
              v13 = *v13;
            }

            while (v13);
          }
        }

        std::__tree<long>::destroy(v11);
        for (i = v12[2]; i; i = i[2])
        {
          v12 = i;
        }

        v11 = v12;
      }
    }

    std::__tree<long>::destroy(v11);
  }

  objc_storeStrong(v8, *(a1 + 432));
  *(a1 + 416) = *(a1 + 408);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 556) == 1)
  {
    if (v3)
    {
      v6 = v3;
      v4 = _Block_copy(*(a1 + 96));
      v5 = v4;
      if (v4)
      {
        (*(v4 + 2))(v4, v6);
      }

      v3 = v6;
    }

    *(a1 + 556) = 0;
  }
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_currentBucketInterval(uint64_t a1)
{
  if (*(a1 + 552))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:*(a1 + 120) end:{*(a1 + 128), v1}];
  }

  return v3;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsDiscreteE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228EBCDA0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [v5 endDate];
      v9 = [v7 startDate];
      if ([v8 hk_isAfterDate:v9])
      {
        v10 = [v5 startDate];
        v11 = [v7 endDate];
        v12 = [v10 hk_isBeforeOrEqualToDate:v11];
      }

      else
      {
        v12 = 0;
      }

      v13 = _Block_copy(a1[12]);
      if ((v12 & 1) == 0)
      {
        operator new();
      }
    }

    else
    {
      v13 = _Block_copy(a1[12]);
    }

    *(a1 + 552) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsDiscreteE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
    v27[3] = &unk_278629370;
    v15 = v5;
    v28 = v15;
    v16 = v13;
    v29 = v16;
    (*(*a1 + 9))(a1, v27);
    if (v5)
    {
      v17 = [v15 startDate];
      [v17 timeIntervalSinceReferenceDate];
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsDiscreteE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
    v21[3] = &unk_2786293D8;
    v24 = a1;
    v5 = v15;
    v26 = 1;
    v22 = v5;
    v25 = a1;
    v23 = WeakRetained;
    v14 = (*(*a1 + 14))(a1, v21, a3);
    v18 = _Block_copy(v16);
    v19 = a1[12];
    a1[12] = v18;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to invalidate interval: no data source available."];
    v14 = 0;
  }

  return v14;
}

void sub_228EBD1F0(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C404725BC8DLL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsDiscreteE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (!*(a1 + 32))
  {
    goto LABEL_11;
  }

  v3 = [v10 endDate];
  v4 = [*(a1 + 32) startDate];
  v5 = [v3 hk_isBeforeOrEqualToDate:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [v10 startDate];
    v7 = [*(a1 + 32) endDate];
    v8 = [v6 hk_isAfterOrEqualToDate:v7];

    if ((v8 & 1) == 0)
    {
LABEL_11:
      v9 = *(a1 + 40);
      if (v9)
      {
        (*(v9 + 16))(v9, v10);
      }
    }
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsDiscreteE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) startDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = [*(a1 + 32) endDate];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((v4 + 8));
  v13 = *(a1 + 32);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsDiscreteE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v30[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v32 = *(a1 + 64);
  v30[4] = v7;
  v30[5] = v10;
  v31 = *(a1 + 56);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsDiscreteE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
  v29[3] = &__block_descriptor_40_e8_v16__0d8l;
  v29[4] = v31;
  v14 = [v11 collectionCalculator:WeakRetained queryForInterval:v13 error:a2 sampleHandler:v30 mergeHandler:v29];

  if (v14)
  {
    v15 = *(a1 + 56);
    if (v15 != v4)
    {
      v16 = [*(a1 + 32) endDate];
      [v16 timeIntervalSinceReferenceDate];
      if (*(v15 + 40))
      {
        v18 = v17;
        while (*(v15 + 120) < v18)
        {
          v19 = [*(v15 + 40) dateIntervalAtIndex:*(v15 + 112) + 1];
          HDStatisticsBucket<HDStatisticsDiscrete>::_updateSourceOrder(v15 + 120);
          HDStatisticsBucket<HDStatisticsDiscrete>::_mergeThroughTime(v15 + 120, *(v15 + 128));
          v20 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_statisticsFromFinishedBucket(v15, (v15 + 120));
          v21 = [v19 startDate];
          [v21 timeIntervalSinceReferenceDate];
          v23 = v22;
          v24 = [v19 endDate];
          [v24 timeIntervalSinceReferenceDate];
          HDStatisticsCollectionEngine<HDStatisticsDiscrete>::advanceBucket((v15 + 112), v23, v25);

          if (v20)
          {
            v26 = _Block_copy(*(v15 + 96));
            v27 = v26;
            if (v26)
            {
              (*(v26 + 2))(v26, v20);
            }
          }

          if (*(v15 + 556) == 1)
          {
            *(v15 + 556) = 0;
          }
        }
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsDiscreteE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  if (*(a1 + 32) <= a6)
  {
    v9 = 1;
  }

  else
  {
    a2 = 0;
    v9 = 0;
    a7 = 0.0;
    a5 = 0.0;
    a6 = 0.0;
  }

  v18 = v7;
  v19 = v8;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a2;
  v16 = v9;
  v17 = 0;
  if (*(a1 + 56))
  {
    if (v9)
    {
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
    }

    return 1;
  }

  if (v9)
  {
    v11 = *(a1 + 40);
    if (a6 < v11)
    {
      if (a7 <= v11)
      {
        v11 = a7;
      }

      v13 = a6;
      v14 = v11;
      v16 = v9;
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
    }

    return 1;
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 552) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsDiscrete>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsDiscreteE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsDiscreteE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsDiscreteE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsDiscreteE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v10 = *(a1 + 32);
  *v14 = a5;
  *&v14[1] = a6;
  *&v14[2] = a7;
  v14[3] = a2;
  v15 = 1;
  v11 = [MEMORY[0x277CBEAA8] distantFuture];
  [v11 timeIntervalSinceReferenceDate];
  v16 = v12 <= a7;

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_primitiveAddSample(v10, v14, a3, a4);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BECFC8;
  v9 = 900.0;
  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = 0;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 1;
  *(a1 + 626) = 0;
  *(a1 + 628) = 0;
  *(a1 + 632) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BECFC8;
  v2 = *(a1 + 656);
  if (v2)
  {
    *(a1 + 664) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 592);
  if (v3)
  {
    *(a1 + 600) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 624) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 632) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 80, a2);
  v7 = a2;
  v4 = a1[80];
  v5 = a1[77];
  a1[77] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[77]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = (a1 + 72);
  if (v6 != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v6, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (*(a1 + 40))
  {
    return 1;
  }

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 256) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
  if ((a1 + 184) != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 184), *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (v7)
  {
    return 1;
  }

  v9 = *(*a1 + 128);

  return v9(a1, 0, a3);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 copy];
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 624) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeThroughTime(v3, v4);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

void sub_228EBDE98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = [v6 startDate];
  [v8 timeIntervalSinceReferenceDate];
  if (v9 > *(a2 + 16))
  {
    v14 = 1;
LABEL_8:

    goto LABEL_13;
  }

  v10 = [v7 endDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = *(a2 + 8);

  if (v12 >= v13)
  {
LABEL_4:
    if (*(a1 + 626) == 1)
    {
      if (*(a1 + 625))
      {
        goto LABEL_6;
      }

      if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_earliestStartTimeWithoutInvalidation(a1) > *(a2 + 8))
      {
        v15 = *(a2 + 16);
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 627) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 656, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_13;
  }

LABEL_6:
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 626) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 626) = 1;
  v61 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v60 = v6;
  if (*(a1 + 625))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 648);
  if (!v9)
  {
    v8 = 0;
    v62 = 0;
    goto LABEL_28;
  }

  if (!*(a1 + 40))
  {
LABEL_5:
    v62 = 0;
    v8 = 1;
    goto LABEL_28;
  }

  [v9 sortUsingComparator:&__block_literal_global_608];
  v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v10 = *(a1 + 648);
  v11 = [v10 countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (!v11)
  {

    v12 = 0;
    goto LABEL_27;
  }

  v12 = 0;
  v13 = *v64;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v64 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v63 + 1) + 8 * i);
      v16 = v15;
      if (v12)
      {
        v17 = [v15 startDate];
        v18 = [v12 endDate];
        v19 = [v17 hk_isBeforeOrEqualToDate:v18];

        if (v19)
        {
          v20 = [v16 endDate];
          v21 = [v12 endDate];
          v22 = [v20 hk_isAfterDate:v21];

          if (!v22)
          {
            goto LABEL_21;
          }

          v23 = objc_alloc(MEMORY[0x277CCA970]);
          v24 = [v12 startDate];
          v25 = [v16 endDate];
          v26 = [v23 initWithStartDate:v24 endDate:v25];
        }

        else
        {
          [v62 addObject:v12];
          v26 = v16;
        }

        v12 = v26;
      }

      else
      {
        v12 = v15;
      }

LABEL_21:
    }

    v11 = [v10 countByEnumeratingWithState:&v63 objects:v67 count:16];
  }

  while (v11);

  if (v12)
  {
    [v62 addObject:v12];
  }

LABEL_27:

  v8 = 0;
LABEL_28:
  v27 = *(a1 + 648);
  *(a1 + 648) = 0;

  *(a1 + 625) = 0;
  if (v8)
  {
    v28 = *(a1 + 656);
    *(a1 + 672) = 0;
    *(a1 + 664) = 0;
    *(a1 + 656) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v62 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 656);
      v39 = *(a1 + 664);
      if (v38 != v39)
      {
        while (*(v38 + 8) >= v37)
        {
          v38 += 40;
          if (v38 == v39)
          {
            goto LABEL_44;
          }
        }

        if (v38 != v39)
        {
          v40 = (v38 + 40);
          if ((v38 + 40) != v39)
          {
            do
            {
              if (*(v40 + 1) >= v37)
              {
                v41 = *v40;
                v42 = v40[1];
                *(v38 + 32) = *(v40 + 16);
                *v38 = v41;
                *(v38 + 16) = v42;
                v38 += 40;
              }

              v40 = (v40 + 40);
            }

            while (v40 != v39);
            v39 = *(a1 + 664);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 664) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 656);
  v29 = *(a1 + 664);
  *(a1 + 672) = 0;
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  if ([v62 count])
  {
LABEL_46:
    v44 = v62;
    if (v44)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v45 = v44;
      v46 = [v45 countByEnumeratingWithState:&v63 objects:v67 count:16];
      if (v46)
      {
        v47 = *v64;
        while (2)
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v64 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v63 + 1) + 8 * j);
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, v49, v61);

            if (!v50)
            {

              goto LABEL_68;
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v63 objects:v67 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_58;
    }

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, 0, v61))
    {
      goto LABEL_58;
    }

LABEL_68:
    v54 = 0;
  }

  else
  {
LABEL_58:
    v52 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v29 - v28) >> 3));
    if (v29 == v28)
    {
      v53 = 0;
    }

    else
    {
      v53 = v52;
    }

    v54 = 1;
    std::__introsort<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,false>(v28, v29, v53, 1, v43);
    if (v29 != v28)
    {
      v55 = v28;
      v51 = v61;
      do
      {
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_primitiveAddSample(a1, v55, 1, v51);
        v54 = v56;
        v55 += 40;
        if (v55 == v29)
        {
          v57 = 0;
        }

        else
        {
          v57 = v56;
        }

        v51 = v61;
      }

      while ((v57 & 1) != 0);
    }
  }

  if (*(a1 + 40) && *(a1 + 600) != *(a1 + 592))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, a1 + 120);
  }

  *(a1 + 626) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 628) == 1)
    {
      *(a1 + 628) = 0;
      v6 = v60;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(a1);
      v7 = 1;
      goto LABEL_80;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v6 = v60;
LABEL_80:
  *(a1 + 626) = 0;
LABEL_81:

  v58 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_228EBE704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 626) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  if (!v6)
  {

    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    if (*(a1 + 626))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 626) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 648);
    *(a1 + 648) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 625) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 625) & 1) == 0)
  {
    v8 = *(a1 + 648);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 648);
      *(a1 + 648) = v9;

      v8 = *(a1 + 648);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 624) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 624) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 624) forKey:@"needs_config"];
  v13 = v3;
  v33 = &unk_283BF1A08;
  v34 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v4 = *(a1 + 112);
  LOBYTE(v39) = 1;
  v35 = v4;
  v36 = 0;
  statistics::StatisticsEngine::makeCurrentBucket(&v33);
  v14 = &unk_283BE6258;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v32 = 511;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v5 = vextq_s8(*(a1 + 120), *(a1 + 120), 8uLL);
  v6 = *(a1 + 136);
  v30 = *(a1 + 144);
  v31 = *(a1 + 145);
  v29 = *(a1 + 148) == 0;
  v7 = vextq_s8(*(a1 + 160), *(a1 + 160), 8uLL);
  v15 = v5;
  v16 = v7;
  v7.i64[0] = *(a1 + 176);
  v20 = v6;
  v21 = v7.i64[0];
  v8 = *(a1 + 216);
  if (v8 != *(a1 + 224))
  {
    v40 = &unk_283BEB0A8;
    v45 = 127;
    v42 = vextq_s8(*v8, *v8, 8uLL);
    v41 = v8[1];
    v44 = 0;
    HIBYTE(v43) = v8[2].i8[9];
    LOBYTE(v43) = v8[2].i8[10];
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample&>();
  }

  statistics::StatisticsBucket::makeStatistics(&v14);
  HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::archive(&v40, (a1 + 240));
  statistics::Statistics::operator=(*(&v23 + 1), &v40);
  statistics::Statistics::~Statistics(&v40);
  v9 = *(a1 + 384);
  if (v9 != a1 + 392)
  {
    HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::archive(&v40, (v9 + 40));
    v10 = *(v9 + 32);
    v47 |= 0x200u;
    v46 = v10;
    PB::PtrVector<statistics::Statistics>::emplace_back<statistics::Statistics&>();
  }

  v11 = *(a1 + 184);
  if (v11 != *(a1 + 192))
  {
    v40 = &unk_283BF1F08;
    v42.i32[0] = 3;
    v41 = vextq_s8(*v11, *v11, 8uLL);
    PB::PtrVector<statistics::Interval>::emplace_back<statistics::Interval&>();
  }

  statistics::StatisticsBucket::operator=(v34, &v14);
  statistics::StatisticsBucket::~StatisticsBucket(&v14);
  v12 = *(a1 + 592);
  if (v12 != *(a1 + 600))
  {
    v40 = &unk_283BEB0A8;
    v45 = 127;
    v42 = vextq_s8(*v12, *v12, 8uLL);
    v41 = v12[1];
    v43 = 0;
    v44 = 0;
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample>();
  }

  PB::Writer::Writer(&v40);
  statistics::StatisticsEngine::writeTo(&v33, &v40);
  [v13 encodeBytes:v41.i64[0] length:&v40[-v41.i64[0]] forKey:@"hdsce_archived_representation"];
  PB::Writer::~Writer(&v40);
  statistics::StatisticsEngine::~StatisticsEngine(&v33);
}

void sub_228EBEF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v33 = a2;
  *(a1 + 624) = [v33 decodeBoolForKey:@"needs_config"];
  v3 = v33;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::HDStatisticsBucket(&v36.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *v37 = 0u;
  v38 = 0u;
  v78 = 0;
  PB::Reader::Reader(v77, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v78]);
  v70 = &unk_283BF1A08;
  v71 = 0;
  v75 = 0;
  v73 = 0;
  v74 = 0;
  v76 = 0;
  statistics::StatisticsEngine::readFrom(&v70, v77);
  v4 = v71;
  v36.n128_u64[0] = v72;
  if (v71)
  {
    v35 = v3;
    v42 = 0;
    v45 = 0uLL;
    v46 = 0;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    LOWORD(v53) = 0;
    memset(v54, 0, 74);
    v55[1] = 0;
    v47 = 0;
    memset(v48, 0, sizeof(v48));
    v49 = 0;
    v55[0] = 0;
    v54[10] = v55;
    v56 = 0u;
    v57 = 0u;
    v58 = 1065353216;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0;
    v63 = 1065353216;
    v64 = 0u;
    v65 = 0u;
    v66 = 1065353216;
    v67 = 0u;
    v68 = 0u;
    v69 = 1065353216;
    v39 = vextq_s8(*(v71 + 8), *(v71 + 8), 8uLL);
    v5 = *(v71 + 72);
    v40 = *(v71 + 64);
    LOWORD(v41) = *(v71 + 185);
    v43 = vextq_s8(*(v71 + 24), *(v71 + 24), 8uLL);
    v44 = v5;
    v6 = *(v71 + 80);
    for (i = *(v71 + 88); v6 != i; ++v6)
    {
      v8 = *v6;
      WORD4(v80) = 1;
      LOBYTE(v81) = 0;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      *v79 = vextq_s8(*(v8 + 24), *(v8 + 24), 8uLL);
      *&v79[16] = v9;
      *&v80 = v10;
      BYTE1(v81) = *(v8 + 41);
      BYTE2(v81) = *(v8 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v48, v79);
    }

    v11 = v4[13];
    if (v11)
    {
      HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::unarchive(v79, v11);
      v49 = *v79;
      v50 = *&v79[8];
      v51 = v80;
      v52 = v81;
      v53 = v82;
      v54[0] = v83;
      if (v54[1])
      {
        v54[2] = v54[1];
        operator delete(v54[1]);
      }

      *&v54[1] = v84;
      v54[3] = v85;
      v85 = 0;
      v84 = 0uLL;
      v54[4] = v86;
      *&v54[5] = v87;
      *&v54[7] = v88;
      LOWORD(v54[9]) = v89;
    }

    v34 = a1;
    v13 = v4[17];
    for (j = v4[18]; v13 != j; ++v13)
    {
      v14 = *v13;
      HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::unarchive(v79, *v13);
      v15 = *(v14 + 144);
      v16 = v55[0];
      if (!v55[0])
      {
LABEL_15:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v18 <= v15)
          {
            break;
          }

          v16 = *v17;
          if (!*v17)
          {
            goto LABEL_15;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v16 = v17[1];
        if (!v16)
        {
          goto LABEL_15;
        }
      }

      v19 = v17[14];
      *(v17 + 10) = *v79;
      v20 = v80;
      v21 = v82;
      v22 = v81;
      *(v17 + 3) = *&v79[8];
      *(v17 + 4) = v20;
      *(v17 + 5) = v22;
      v17[12] = v21;
      v17[13] = v83;
      if (v19)
      {
        v17[15] = v19;
        operator delete(v19);
        v17[14] = 0;
        v17[15] = 0;
        v17[16] = 0;
      }

      *(v17 + 7) = v84;
      v17[16] = v85;
      v85 = 0;
      v84 = 0uLL;
      v17[17] = v86;
      v23 = v88;
      *(v17 + 9) = v87;
      *(v17 + 10) = v23;
      *(v17 + 88) = v89;
    }

    a1 = v34;
    v24 = v4[5];
    for (k = v4[6]; v24 != k; v24 += 8)
    {
      v27 = *(*v24 + 8);
      v26 = *(*v24 + 16);
      if (v27 >= v26)
      {
        v28 = *(*v24 + 16);
      }

      else
      {
        v28 = *(*v24 + 8);
      }

      if (v26 < v27)
      {
        v26 = *(*v24 + 8);
      }

      HKIntervalMask<double>::_insertInterval(&v45, v28, v26);
    }

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::operator=(&v36.n128_i64[1], &v39);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(&v39);
    v3 = v35;
  }

  v29 = v73;
  for (m = v74; v29 != m; v29 += 8)
  {
    v31 = *(*v29 + 8);
    v32 = *(*v29 + 16);
    v39 = vextq_s8(*(*v29 + 24), *(*v29 + 24), 8uLL);
    v40 = v31;
    v41 = v32;
    LOWORD(v42) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](v37, v39.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v70);

  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::operator=((a1 + 112), &v36);
  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(&v36.n128_i64[1]);
}

void sub_228EBF4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, ...)
{
  va_start(va, a7);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(v7 + 432);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a3);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v7 + 352);
  v9 = STACK[0x378];
  if (STACK[0x378])
  {
    STACK[0x380] = v9;
    operator delete(v9);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v7 + 288);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::destroy(STACK[0x340]);
  v10 = STACK[0x2F0];
  if (STACK[0x2F0])
  {
    STACK[0x2F8] = v10;
    operator delete(v10);
  }

  v11 = STACK[0x290];
  if (STACK[0x290])
  {
    STACK[0x298] = v11;
    operator delete(v11);
  }

  objc_destroyWeak((v7 + 88));
  v12 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v12;
    operator delete(v12);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x410]);
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 28) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 242) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 264) = a1 + 272;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 1065353216;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = 1065353216;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 1065353216;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 480);
  if (v2)
  {
    *(a1 + 488) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 432);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 392);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 352);
  v2 = *(a1 + 328);
  if (v2)
  {
    *(a1 + 336) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 288);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::destroy(*(a1 + 272));
  v3 = *(a1 + 192);
  if (v3)
  {
    *(a1 + 200) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  objc_destroyWeak((a1 + 88));
  v5 = *(a1 + 64);
  if (v5)
  {
    *(a1 + 72) = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::destroy(a1[1]);
    v2 = a1[14];
    if (v2)
    {
      a1[15] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_configureForStartTime(uint64_t a1)
{
  v28 = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v4 = [v2 dateIntervalContainingDate:v3 index:&v28];

    v5 = [v4 startDate];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
LABEL_5:
    v13 = v9;

    goto LABEL_6;
  }

  v10 = *(a1 + 64);
  v4 = v10;
  if (v10)
  {
    v11 = [v10 startDate];
    [v11 timeIntervalSinceReferenceDate];
    v7 = v12;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
    goto LABEL_5;
  }

  v7 = -1.79769313e308;
  v13 = 1.79769313e308;
LABEL_6:

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

  if (*(a1 + 32) == 1)
  {
    v23 = 1;
  }

  v22 = *(a1 + 56);
  v24 = *(a1 + 24) & 1;
  if (v27 != (a1 + 72))
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v27, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 4);
  }

  objc_storeStrong(&v26, *(a1 + 640));
  if (!*(a1 + 40))
  {
    v25 = 0;
  }

  v15 = v28;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v17);
  *(a1 + 624) = 0;
  return HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v21);
}

void *HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::operator=(void *a1, __n128 *a2)
{
  *a1 = a2->n128_u64[0];
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::operator=((a1 + 1), &a2->n128_i64[1]);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 60), a2 + 30);
  v4 = a2[31].n128_u64[1];
  a2[31].n128_u64[1] = 0;
  v5 = a1[63];
  a1[63] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 56);
  v6 = *(a2 + 40);
  *(a1 + 64) = 0;
  *(a1 + 40) = v6;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 64, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 4);
  objc_copyWeak((a1 + 88), (a2 + 88));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v7 != v8)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 4);
    if (v9 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v9);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 120) = *(a2 + 120);
  v10 = *(a2 + 128);
  v11 = *(a2 + 144);
  v12 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v11;
  *(a1 + 160) = v12;
  *(a1 + 128) = v10;
  v13 = *(a2 + 184);
  *(a1 + 192) = 0;
  *(a1 + 184) = v13;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 192, *(a2 + 192), *(a2 + 200), (*(a2 + 200) - *(a2 + 192)) >> 4);
  *(a1 + 216) = *(a2 + 216);
  v14 = *(a2 + 240);
  v15 = *(a2 + 256);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v14;
  v16 = (a1 + 272);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 256) = v15;
  *(a1 + 264) = a1 + 272;
  v17 = *(a2 + 264);
  if (v17 != (a2 + 272))
  {
    v18 = 0;
    v19 = (a1 + 272);
    while (1)
    {
      v20 = (a1 + 272);
      if (v19 == v16)
      {
        goto LABEL_12;
      }

      v21 = v18;
      v22 = (a1 + 272);
      if (v18)
      {
        do
        {
          v20 = v21;
          v21 = v21[1];
        }

        while (v21);
      }

      else
      {
        do
        {
          v20 = v22[2];
          v23 = *v20 == v22;
          v22 = v20;
        }

        while (v23);
      }

      v24 = v17[4];
      if (v20[4] < v24)
      {
LABEL_12:
        if (v18)
        {
          v25 = v20 + 1;
        }

        else
        {
          v25 = (a1 + 272);
        }

        if (!*v25)
        {
LABEL_23:
          operator new();
        }
      }

      else
      {
        if (!v18)
        {
          goto LABEL_23;
        }

        while (1)
        {
          while (1)
          {
            v26 = v18;
            v27 = v18[4];
            if (v27 <= v24)
            {
              break;
            }

            v18 = *v26;
            if (!*v26)
            {
              goto LABEL_23;
            }
          }

          if (v27 >= v24)
          {
            break;
          }

          v18 = v26[1];
          if (!v18)
          {
            goto LABEL_23;
          }
        }
      }

      v28 = v17[1];
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
          v29 = v17[2];
          v23 = *v29 == v17;
          v17 = v29;
        }

        while (!v23);
      }

      if (v29 == (a2 + 272))
      {
        break;
      }

      v18 = *v16;
      v19 = *(a1 + 264);
      v17 = v29;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 288, a2 + 288);
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 328, *(a2 + 328), *(a2 + 336), (*(a2 + 336) - *(a2 + 328)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 352, a2 + 352);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 392, a2 + 392);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 432, a2 + 432);
  return a1;
}

void sub_228EBFEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 392);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 352);
  v14 = *(v10 + 328);
  if (v14)
  {
    *(v10 + 336) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 288);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::destroy(*v12);
  v15 = *v11;
  if (*v11)
  {
    *(v10 + 200) = v15;
    operator delete(v15);
  }

  v16 = *a9;
  if (*a9)
  {
    *(v10 + 104) = v16;
    operator delete(v16);
  }

  objc_destroyWeak((v10 + 88));
  v17 = *a10;
  if (*a10)
  {
    *(v10 + 72) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;

  v7 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v7;
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 64, (a2 + 64));
  WeakRetained = objc_loadWeakRetained((a2 + 88));
  objc_storeWeak((a1 + 88), WeakRetained);

  v9 = *(a1 + 96);
  if (v9)
  {
    *(a1 + 104) = v9;
    operator delete(v9);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a1 + 120) = *(a2 + 120);
  v10 = *(a2 + 128);
  v11 = *(a2 + 144);
  v12 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v11;
  *(a1 + 160) = v12;
  *(a1 + 128) = v10;
  *(a1 + 184) = *(a2 + 184);
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 192, (a2 + 192));
  *(a1 + 216) = *(a2 + 216);
  v13 = *(a2 + 224);
  v14 = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 224) = v13;
  *(a1 + 240) = v14;
  v15 = a1 + 272;
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::destroy(*(a1 + 272));
  *(a1 + 264) = *(a2 + 264);
  v16 = *(a2 + 272);
  v17 = *(a2 + 280);
  *(a1 + 272) = v16;
  *(a1 + 280) = v17;
  if (v17)
  {
    *(v16 + 16) = v15;
    *(a2 + 264) = a2 + 272;
    *(a2 + 272) = 0;
    *(a2 + 280) = 0;
  }

  else
  {
    *(a1 + 264) = v15;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 288, (a2 + 288));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 328, (a2 + 328));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 352, (a2 + 352));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 392, (a2 + 392));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 432, (a2 + 432));
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = objc_alloc(MEMORY[0x277CBEAA8]);
  v5 = 40;
  if (v3 != -1.79769313e308)
  {
    v5 = 0;
  }

  v6 = [v4 initWithTimeIntervalSinceReferenceDate:*(a2 + v5)];
  if (*(a2 + 8) == 1.79769313e308)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 48)];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 8)];
  }

  v8 = v7;
  v9 = *(a1 + 16);
  v10 = *(a1 + 16);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = *(a1 + 16);
    if ([v11 shouldUseUnderlyingTypeForStatistics])
    {
      v12 = [v11 underlyingSampleType];

      v9 = v12;
    }
  }

  v13 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v6 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = *(a2 + 328);
      v17 = *(a2 + 336);
      while (v16 != v17)
      {
        v18 = *v16;
        v19 = objc_loadWeakRetained((a1 + 48));
        v20 = [v19 sourceForSourceID:v18];

        if (v20)
        {
          if (([v15 containsObject:v20] & 1) == 0)
          {
            [v15 addObject:v20];
          }
        }

        ++v16;
      }

      v21 = [v15 copy];
      [v13 _setSources:v21];
    }
  }

  v23[0] = &unk_283BED1B8;
  v23[3] = v23;
  v13;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::__value_func[abi:ne200100](v24, v23);
  v25 = 0;
  operator new();
}

void sub_228EC0BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::__function::__value_func<HDStatisticsCumulative const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](v40 - 160);
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](&a37);

  std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](&a33);
  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 312);
  v2 = *(a1 + 328);
  if (v1 != (*(a1 + 336) - v2) >> 3)
  {
    *(a1 + 336) = v2;
    std::vector<long long>::reserve((a1 + 328), v1);
    for (i = *(a1 + 304); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 328, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 328];
    }
  }
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v71 = (a1 + 272);
    while (1)
    {
      v6 = *(a1 + 104);
      __p = *(a1 + 96);
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - __p) >> 4);
      if (v7 == 1)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_90;
      }

      v8 = a2;
      v9 = a2;
      v10 = v5;
      v11 = *(a1 + 96);
      if (__p != v6)
      {
        do
        {
          v12 = *(v11 + 8);
          v13 = *(v11 + 16);
          if (v12 > v10 && v12 < v9)
          {
            v9 = *(v11 + 8);
          }

          if (v13 > v5)
          {
            v15 = *(v11 + 16);
          }

          else
          {
            v15 = v8;
          }

          if (v13 < v8)
          {
            v10 = v5;
            v8 = v15;
          }

          v11 += 48;
        }

        while (v11 != v6);
      }

      if (v8 >= v9)
      {
        v16 = v9;
      }

      else
      {
        v16 = v8;
      }

      v17 = *(a1 + 16);
      if (v17 > 0.0)
      {
        v18 = v17 * floor(v16 / v17);
        v19 = v17 * floor((v17 + v5) / v17);
        if (v18 >= v19)
        {
          v16 = v18;
        }

        else
        {
          v16 = v19;
        }
      }

      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if (__p != v6)
      {
        if (v7 < 0x555555555555556)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v7);
        }

        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v79.var0 = a1;
        v21 = 126 - 2 * __clz(v7);
        if (__p == v6)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(__p, v6, &v79, v22, 1);
      }

      if (*(a1 + 25) == 1)
      {
        v72 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v72 = 0;
      }

      if (__p != v6)
      {
        v73 = 0;
        v36 = 0;
        for (i = __p; i != v6; i += 6)
        {
          v38 = *(i + 1);
          *&v78.var0 = *i;
          *&v78.var2 = v38;
          *&v78.var4 = i[4];
          v39 = *&v38;
          v40 = v16 - v78.var1;
          v41 = *&v38 - v78.var1;
          if (v41 - (v16 - v78.var1) >= 0.01)
          {
            if (v40 >= 0.01)
            {
              var0 = v78.var0;
              var4 = v78.var4;
              v46 = v40 / v41 * v78.var0;
              v78.var0 = v46;
              v78.var2 = v16;
              if (v78.var4)
              {
                var3 = v78.var3;
                var5 = v78.var5;
                v43 = var0 - v46;
                v44 = v16;
LABEL_51:
                HDRawQuantitySample::applyMask(&v78, (a1 + 64));
                v47 = *(i + 42);
                v48 = *(i + 41);
                v75 = *(i + 40);
                if (!v78.var4)
                {
                  goto LABEL_69;
                }

                if (v36)
                {
                  v49 = v78.var3;
                  if (v73 == v78.var3 || *(a1 + 24) == 1)
                  {
                    HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v78, v47 ^ 1);
                    LOBYTE(v47) = 1;
                  }
                }

                else
                {
                  HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v78, v47 ^ 1);
                  LOBYTE(v47) = 1;
                  v49 = v78.var3;
                  v73 = v78.var3;
                }

                if (*(a1 + 25) != 1)
                {
                  goto LABEL_68;
                }

                v50 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a1, v49);
                if (!v50)
                {
                  goto LABEL_67;
                }

                v51 = [v72 objectForKeyedSubscript:v50];
                v52 = v51;
                if (v51)
                {
                  if ([v51 longLongValue] != v49 && *(a1 + 24) != 1)
                  {
LABEL_66:

LABEL_67:
LABEL_68:
                    v36 = 1;
LABEL_69:
                    if (var4)
                    {
                      v79.var0 = v43;
                      v79.var1 = v44;
                      v79.var2 = v39;
                      v79.var3 = var3;
                      v79.var4 = var4;
                      v79.var5 = var5;
                      LOBYTE(v80) = v75;
                      BYTE1(v80) = v48;
                      BYTE2(v80) = v47;
                      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v79);
                    }

                    continue;
                  }
                }

                else
                {
                  v53 = [MEMORY[0x277CCABB0] numberWithLongLong:v49];
                  [v72 setObject:v53 forKeyedSubscript:v50];
                }

                v54 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1, v49);
                v55 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_statisticsForSource(a1, v54);
                HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::addSample(v55, &v78, v48 ^ 1);
                LOBYTE(v48) = 1;
                goto LABEL_66;
              }
            }

            else
            {
              v78.var4 = 0;
            }
          }

          else if (v78.var4)
          {
            var5 = 0;
            var4 = 0;
            var3 = 0;
            v43 = 0.0;
            v39 = 0.0;
            v44 = 0.0;
            goto LABEL_51;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, i);
        }
      }

      *(a1 + 216) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 192), v16) + *(a1 + 216);
      v56 = *(a1 + 264);
      if (v56 != v71)
      {
        do
        {
          *(v56 + 17) = HKIntervalMask<double>::removeIntervalsBefore(v56 + 14, v16) + *(v56 + 17);
          v57 = v56[1];
          if (v57)
          {
            do
            {
              v58 = v57;
              v57 = *v57;
            }

            while (v57);
          }

          else
          {
            do
            {
              v58 = v56[2];
              v59 = *v58 == v56;
              v56 = v58;
            }

            while (!v59);
          }

          v56 = v58;
        }

        while (v58 != v71);
      }

      *(a1 + 56) = v16;

      if (__p)
      {
        operator delete(__p);
      }

LABEL_91:
      v68 = *(a1 + 56);
      if (v68 == v5)
      {
        v69 = [MEMORY[0x277CCA890] currentHandler];
        v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative, HDStatisticsTimeInterval>>>::_mergeThroughTime(double) [Statistics = HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative, HDStatisticsTimeInterval>>]"}];
        [v69 handleFailureInFunction:v70 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v68 = *(a1 + 56);
      }

      v5 = v68;
      if (v68 >= a2)
      {
        return;
      }
    }

    v24 = *__p;
    v23 = __p[1];
    v25 = __p[2];
    v26 = *(__p + 3);
    v27 = *(__p + 32);
    v28 = *(__p + 33);
    v29 = a2 - v23;
    if (a2 - v23 >= 0.01)
    {
      if (v25 - v23 - v29 < 0.01)
      {
        v34 = 0;
        v35 = 0;
        v32 = 0.0;
        v31 = __p[2];
        v30 = *(__p + 32);
        v33 = 0.0;
        v25 = 0.0;
        v27 = 0;
LABEL_83:
        v61 = *(__p + 42);
        v62 = *(__p + 41);
        v63 = *(__p + 40);
        v79.var0 = v24;
        v79.var1 = v23;
        v79.var2 = v31;
        v79.var3 = v26;
        v79.var4 = v30;
        v79.var5 = v28;
        *(&v79.var5 + 1) = *(__p + 34);
        *(&v79.var5 + 5) = *(__p + 19);
        *&v80 = v32;
        *(&v80 + 1) = v33;
        *&v81 = v25;
        *(&v81 + 1) = v34;
        LOBYTE(v82) = v27;
        HIBYTE(v82) = v35;
        HDRawQuantitySample::applyMask(&v79, (a1 + 64));
        if (v79.var4)
        {
          HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v79, v61 ^ 1);
          if (*(a1 + 25) == 1)
          {
            v64 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1, v79.var3);
            v65 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_statisticsForSource(a1, v64);
            HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::addSample(v65, &v79, v62 ^ 1);
          }

          v63 = 1;
          LOBYTE(v62) = 1;
          LOBYTE(v61) = 1;
        }

        if (v82 == 1)
        {
          *&v78.var4 = v82;
          v66 = v81;
          v67 = *(a1 + 96);
          *v67 = v80;
          *(v67 + 16) = v66;
          *(v67 + 32) = *&v78.var4;
          *(v67 + 40) = v63;
          *(v67 + 41) = v62;
          *(v67 + 42) = v61;
        }

        else
        {
          *(a1 + 104) = *(a1 + 96);
        }

LABEL_90:
        *(a1 + 56) = a2;
        goto LABEL_91;
      }

      v60 = v24 * (v29 / (v25 - v23));
      v31 = a2;
      v30 = *(__p + 32);
      v32 = v24 - v60;
      v24 = v60;
      v33 = a2;
    }

    else
    {
      v30 = 0;
      v31 = __p[2];
      v32 = *__p;
      v33 = __p[1];
    }

    v34 = *(__p + 3);
    v35 = *(__p + 33);
    goto LABEL_83;
  }
}

__n128 *HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::addSample(__n128 *result, const HDRawQuantitySample *a2, int a3)
{
  p_var0 = &a2->var0;
  v5 = result;
  var0 = a2->var0;
  if (a2->var0 == 1.79769313e308)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (a2->var0 != -1.79769313e308);
  }

  v8 = result->n128_u32[0];
  if (!v7)
  {
    if (v8 || result[1].n128_u64[0])
    {
      return result;
    }

    result->n128_f64[1] = var0 + result->n128_f64[1];
    if (!a3)
    {
      goto LABEL_23;
    }

    v16 = 1;
    goto LABEL_22;
  }

  if (v7 == 1)
  {
    if (v8)
    {
      return result;
    }

    v9 = 1;
LABEL_14:
    result->n128_u32[0] = v9;
    *(result + 8) = 0u;
    v12 = &result->n128_f64[1];
    v14 = &result[4].n128_i8[8];
    v13 = result[4].n128_u64[1];
    *(&v5[1] + 8) = 0u;
    *(&v5[2] + 8) = 0u;
    *(&v5[3] + 8) = 0u;
    if (v13)
    {
      v5[5].n128_u64[0] = v13;
      operator delete(v13);
      v15 = v5[3].n128_u8[8];
      *v14 = 0u;
      *(&v5[5] + 8) = 0u;
      if (v15 && v5[2].n128_f64[0] > v5[7].n128_f64[0])
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v14 = 0uLL;
      *(&v5[5] + 8) = 0uLL;
    }

    *(v5 + 24) = *(v5 + 104);
    *(v5 + 40) = *(v5 + 120);
    v5[3].n128_u16[4] = v5[8].n128_u16[4];
LABEL_20:
    *v12 = *p_var0 + *v12;
    if (!a3)
    {
LABEL_23:
      v10 = v5 + 4;
      a2 = p_var0;
      v11 = a3;
      goto LABEL_24;
    }

    v16 = v5[1].n128_u64[0] + 1;
LABEL_22:
    v5[1].n128_u64[0] = v16;
    goto LABEL_23;
  }

  if (v8 != 2)
  {
    v9 = 2;
    goto LABEL_14;
  }

  result->n128_f64[1] = var0 + result->n128_f64[1];
  ++result[1].n128_u64[0];
  v10 = result + 4;
  v11 = 1;
LABEL_24:

  return HDStatisticsTimeInterval::addSample(v10, a2, v11);
}

void *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *(a1 + 272);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (a1 + 272);
  v5 = (a1 + 272);
  do
  {
    if (v3[4] >= a2)
    {
      v5 = v3;
    }

    v3 = v3[v3[4] < a2];
  }

  while (v3);
  if (v5 == v4 || v5[4] > a2)
  {
LABEL_8:
    v8 = &v7;
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 264, a2);
    v8 = &v7;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 264, v7);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 352), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a1, a2);
      v9[0] = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 392), v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v9[1] = v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 392), v9)[3] = a2;
        v6 = v9[0];
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9[0] = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 432), a2);
    if (v5)
    {
      WeakRetained = v5[3];
    }

    else
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      WeakRetained = [v6 bundleIdentifierForSourceID:{a2, v9[0]}];

      if (WeakRetained)
      {
        v9[1] = v9;
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 432), a2);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

void *std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v256 = *MEMORY[0x277D85DE8];
LABEL_2:
  v10 = a2 - 3;
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 4);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        goto LABEL_375;
      }

      if (v13 == 2)
      {
        v104 = *(a2 - 3);
        v105 = *(v11 + 24);
        if (v104 != v105)
        {
          v106 = *(*a3 + 328);
          v107 = *(*a3 + 336);
          if (v106 == v107)
          {
            v109 = *(*a3 + 328);
            v108 = v109;
          }

          else
          {
            v108 = *(*a3 + 328);
            v109 = v108;
            do
            {
              if (*v109 == v104)
              {
                goto LABEL_189;
              }

              v109 += 8;
            }

            while (v109 != v107);
            v109 = *(*a3 + 336);
LABEL_189:
            while (*v108 != v105)
            {
              v108 += 8;
              if (v108 == v107)
              {
                v108 = *(*a3 + 336);
                break;
              }
            }
          }

          if (v109 - v106 < v108 - v106)
          {
            *v243 = *(v11 + 16);
            *&v243[16] = *(v11 + 32);
            v235 = *v11;
            v226 = *v10;
            v227 = *(a2 - 2);
            *(v11 + 27) = *(a2 - 21);
            *v11 = v226;
            *(v11 + 16) = v227;
            *(a2 - 21) = *&v243[11];
            *v10 = v235;
            *(a2 - 2) = *v243;
          }
        }

LABEL_375:
        v228 = *MEMORY[0x277D85DE8];
        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v111 = *MEMORY[0x277D85DE8];

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, (a2 - 3), a3);
      return;
    }

    if (v13 == 5)
    {
      v110 = *MEMORY[0x277D85DE8];

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, v11 + 144, (a2 - 3), a3);
      return;
    }

LABEL_10:
    if (v12 <= 1151)
    {
      v112 = (v11 + 48);
      v114 = v11 == a2 || v112 == a2;
      if (a5)
      {
        if (!v114)
        {
          v115 = v11;
          do
          {
            v116 = v115;
            v115 = v112;
            v117 = *(v116 + 72);
            v118 = *(v116 + 24);
            if (v117 != v118)
            {
              v119 = *(*a3 + 328);
              v120 = *(*a3 + 336);
              if (v119 == v120)
              {
                v122 = *(*a3 + 328);
                v121 = v122;
              }

              else
              {
                v121 = *(*a3 + 328);
                v122 = v121;
                do
                {
                  if (*v122 == v117)
                  {
                    goto LABEL_213;
                  }

                  v122 += 8;
                }

                while (v122 != v120);
                v122 = *(*a3 + 336);
LABEL_213:
                while (*v121 != v118)
                {
                  v121 += 8;
                  if (v121 == v120)
                  {
                    v121 = *(*a3 + 336);
                    break;
                  }
                }
              }

              if (v122 - v119 < v121 - v119)
              {
                v239 = *(v115 + 16);
                v231 = *v115;
                v249 = *(v116 + 80);
                v123 = v115;
                while (1)
                {
                  v124 = *(v116 + 16);
                  *v123 = *v116;
                  *(v123 + 16) = v124;
                  *(v123 + 27) = *(v116 + 27);
                  if (v116 == v11)
                  {
                    break;
                  }

                  v123 = v116;
                  v125 = *(v116 - 24);
                  if (v117 != v125)
                  {
                    v126 = *(*a3 + 328);
                    v127 = *(*a3 + 336);
                    if (v126 == v127)
                    {
                      v129 = *(*a3 + 328);
                      v128 = v129;
                    }

                    else
                    {
                      v128 = *(*a3 + 328);
                      v129 = v128;
                      do
                      {
                        if (*v129 == v117)
                        {
                          goto LABEL_226;
                        }

                        v129 += 8;
                      }

                      while (v129 != v127);
                      v129 = *(*a3 + 336);
LABEL_226:
                      while (*v128 != v125)
                      {
                        v128 += 8;
                        if (v128 == v127)
                        {
                          v128 = *(*a3 + 336);
                          break;
                        }
                      }
                    }

                    v116 = v123 - 48;
                    if (v129 - v126 < v128 - v126)
                    {
                      continue;
                    }
                  }

                  goto LABEL_233;
                }

                v123 = v11;
LABEL_233:
                *v123 = v231;
                *(v123 + 16) = v239;
                *(v123 + 24) = v117;
                *(v123 + 32) = v249;
                *(v123 + 39) = *(&v249 + 7);
              }
            }

            v112 = (v115 + 48);
          }

          while ((v115 + 48) != a2);
        }
      }

      else if (!v114)
      {
        do
        {
          v211 = a1;
          a1 = v112;
          v212 = *(v211 + 72);
          v213 = *(v211 + 24);
          if (v212 != v213)
          {
            v214 = *(*a3 + 328);
            v215 = *(*a3 + 336);
            if (v214 == v215)
            {
              v217 = *(*a3 + 328);
              v216 = v217;
            }

            else
            {
              v216 = *(*a3 + 328);
              v217 = v216;
              do
              {
                if (*v217 == v212)
                {
                  goto LABEL_352;
                }

                v217 += 8;
              }

              while (v217 != v215);
              v217 = *(*a3 + 336);
LABEL_352:
              while (*v216 != v213)
              {
                v216 += 8;
                if (v216 == v215)
                {
                  v216 = *(*a3 + 336);
                  break;
                }
              }
            }

            if (v217 - v214 < v216 - v214)
            {
              v242 = *(a1 + 16);
              v234 = *a1;
              v252 = *(v211 + 80);
              v218 = a1;
              do
              {
                v219 = v218;
                v218 = v211;
                v220 = *(v211 + 16);
                *v219 = *v211;
                v219[1] = v220;
                *(v219 + 27) = *(v211 + 27);
                v221 = *(v211 - 24);
                if (v212 == v221)
                {
                  break;
                }

                v222 = *(*a3 + 328);
                v223 = *(*a3 + 336);
                if (v222 == v223)
                {
                  v225 = *(*a3 + 328);
                  v224 = v225;
                }

                else
                {
                  v224 = *(*a3 + 328);
                  v225 = v224;
                  do
                  {
                    if (*v225 == v212)
                    {
                      goto LABEL_364;
                    }

                    v225 += 8;
                  }

                  while (v225 != v223);
                  v225 = *(*a3 + 336);
LABEL_364:
                  while (*v224 != v221)
                  {
                    v224 += 8;
                    if (v224 == v223)
                    {
                      v224 = *(*a3 + 336);
                      break;
                    }
                  }
                }

                v211 = v218 - 48;
              }

              while (v225 - v222 < v224 - v222);
              *v218 = v234;
              *(v218 + 16) = v242;
              *(v218 + 24) = v212;
              *(v218 + 32) = v252;
              *(v218 + 39) = *(&v252 + 7);
            }
          }

          v112 = (a1 + 48);
        }

        while ((a1 + 48) != a2);
      }

      goto LABEL_375;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v130 = (v13 - 2) >> 1;
        v131 = v130;
        do
        {
          v132 = v131;
          if (v130 >= v131)
          {
            v133 = (2 * v131) | 1;
            v134 = v11 + 48 * v133;
            if (2 * v132 + 2 < v13)
            {
              v135 = *(v134 + 24);
              v136 = *(v134 + 72);
              if (v135 != v136)
              {
                v138 = *(*a3 + 328);
                v137 = *(*a3 + 336);
                if (v138 == v137)
                {
                  v140 = *(*a3 + 328);
                  v139 = v140;
                }

                else
                {
                  v139 = *(*a3 + 328);
                  v140 = v139;
                  do
                  {
                    if (*v140 == v135)
                    {
                      goto LABEL_246;
                    }

                    v140 += 8;
                  }

                  while (v140 != v137);
                  v140 = *(*a3 + 336);
LABEL_246:
                  while (*v139 != v136)
                  {
                    v139 += 8;
                    if (v139 == v137)
                    {
                      v139 = *(*a3 + 336);
                      break;
                    }
                  }
                }

                v141 = (v140 - v138);
                v142 = (v139 - v138);
                v143 = v141 < v142;
                if (v141 >= v142)
                {
                  v144 = 0;
                }

                else
                {
                  v144 = 48;
                }

                v134 += v144;
                if (v143)
                {
                  v133 = 2 * v132 + 2;
                }
              }
            }

            v145 = v11 + 48 * v132;
            v146 = *(v134 + 24);
            v147 = *(v145 + 24);
            if (v146 == v147)
            {
              goto LABEL_266;
            }

            v149 = *(*a3 + 328);
            v148 = *(*a3 + 336);
            if (v149 == v148)
            {
              v151 = *(*a3 + 328);
              v150 = v151;
            }

            else
            {
              v150 = *(*a3 + 328);
              v151 = v150;
              do
              {
                if (*v151 == v146)
                {
                  goto LABEL_261;
                }

                v151 += 8;
              }

              while (v151 != v148);
              v151 = *(*a3 + 336);
LABEL_261:
              while (*v150 != v147)
              {
                v150 += 8;
                if (v150 == v148)
                {
                  v150 = *(*a3 + 336);
                  break;
                }
              }
            }

            if (v151 - v149 >= v150 - v149)
            {
LABEL_266:
              v240 = *(v145 + 16);
              v232 = *v145;
              v250 = *(v145 + 32);
              v152 = *v134;
              v153 = *(v134 + 16);
              *(v145 + 27) = *(v134 + 27);
              *v145 = v152;
              *(v145 + 16) = v153;
              if (v130 >= v133)
              {
                while (1)
                {
                  v155 = 2 * v133;
                  v133 = (2 * v133) | 1;
                  v154 = v11 + 48 * v133;
                  v156 = v155 + 2;
                  if (v156 < v13)
                  {
                    v157 = *(v154 + 24);
                    v158 = *(v154 + 72);
                    if (v157 != v158)
                    {
                      v159 = *(*a3 + 328);
                      v160 = *(*a3 + 336);
                      if (v159 == v160)
                      {
                        v162 = *(*a3 + 328);
                        v161 = v162;
                      }

                      else
                      {
                        v161 = *(*a3 + 328);
                        v162 = v161;
                        do
                        {
                          if (*v162 == v157)
                          {
                            goto LABEL_275;
                          }

                          v162 += 8;
                        }

                        while (v162 != v160);
                        v162 = *(*a3 + 336);
LABEL_275:
                        while (*v161 != v158)
                        {
                          v161 += 8;
                          if (v161 == v160)
                          {
                            v161 = *(*a3 + 336);
                            break;
                          }
                        }
                      }

                      v163 = (v162 - v159);
                      v164 = (v161 - v159);
                      v165 = v163 < v164;
                      if (v163 >= v164)
                      {
                        v166 = 0;
                      }

                      else
                      {
                        v166 = 48;
                      }

                      v154 += v166;
                      if (v165)
                      {
                        v133 = v156;
                      }
                    }
                  }

                  v167 = *(v154 + 24);
                  if (v167 != v147)
                  {
                    v169 = *(*a3 + 328);
                    v168 = *(*a3 + 336);
                    if (v169 == v168)
                    {
                      v171 = *(*a3 + 328);
                      v170 = v171;
                    }

                    else
                    {
                      v170 = *(*a3 + 328);
                      v171 = v170;
                      do
                      {
                        if (*v171 == v167)
                        {
                          goto LABEL_290;
                        }

                        v171 += 8;
                      }

                      while (v171 != v168);
                      v171 = *(*a3 + 336);
LABEL_290:
                      while (*v170 != v147)
                      {
                        v170 += 8;
                        if (v170 == v168)
                        {
                          v170 = *(*a3 + 336);
                          break;
                        }
                      }
                    }

                    if (v171 - v169 < v170 - v169)
                    {
                      break;
                    }
                  }

                  v172 = *v154;
                  v173 = *(v154 + 16);
                  *(v134 + 27) = *(v154 + 27);
                  *v134 = v172;
                  *(v134 + 16) = v173;
                  v134 = v154;
                  if (v130 < v133)
                  {
                    goto LABEL_296;
                  }
                }
              }

              v154 = v134;
LABEL_296:
              *v154 = v232;
              *(v154 + 16) = v240;
              *(v154 + 24) = v147;
              *(v154 + 32) = v250;
              *(v154 + 39) = *(&v250 + 7);
            }
          }

          v131 = v132 - 1;
        }

        while (v132);
        v174 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 4);
        do
        {
          v175 = 0;
          v176 = *(v11 + 16);
          *v241 = v176;
          *&v241[16] = *(v11 + 32);
          v233 = *v11;
          v177 = v11;
          do
          {
            v178 = v177;
            v179 = v177 + 48 * v175;
            v177 = v179 + 48;
            v180 = 2 * v175;
            v175 = (2 * v175) | 1;
            v181 = v180 + 2;
            if (v180 + 2 < v174)
            {
              v182 = *(v179 + 72);
              v183 = *(v179 + 120);
              if (v182 != v183)
              {
                v185 = *(*a3 + 328);
                v184 = *(*a3 + 336);
                if (v185 == v184)
                {
                  v187 = *(*a3 + 328);
                  v186 = v187;
                }

                else
                {
                  v186 = *(*a3 + 328);
                  v187 = v186;
                  do
                  {
                    if (*v187 == v182)
                    {
                      goto LABEL_307;
                    }

                    v187 += 8;
                  }

                  while (v187 != v184);
                  v187 = *(*a3 + 336);
LABEL_307:
                  while (*v186 != v183)
                  {
                    v186 += 8;
                    if (v186 == v184)
                    {
                      v186 = *(*a3 + 336);
                      break;
                    }
                  }
                }

                v188 = v179 + 96;
                if (v187 - v185 < v186 - v185)
                {
                  v177 = v188;
                  v175 = v181;
                }
              }
            }

            v189 = *v177;
            v190 = *(v177 + 16);
            *(v178 + 27) = *(v177 + 27);
            *v178 = v189;
            v178[1] = v190;
          }

          while (v175 <= (v174 - 2) / 2);
          a2 -= 3;
          if (v177 == a2)
          {
            *(v177 + 27) = *&v241[11];
            *v177 = v233;
            *(v177 + 16) = *v241;
          }

          else
          {
            v191 = *a2;
            v192 = a2[1];
            *(v177 + 27) = *(a2 + 27);
            *v177 = v191;
            *(v177 + 16) = v192;
            *(a2 + 27) = *&v241[11];
            *a2 = v233;
            a2[1] = *v241;
            v193 = v177 - v11 + 48;
            if (v193 >= 49)
            {
              v194 = (0xAAAAAAAAAAAAAAABLL * (v193 >> 4) - 2) >> 1;
              v195 = v11 + 48 * v194;
              v196 = *(v195 + 24);
              v197 = *(v177 + 24);
              if (v196 != v197)
              {
                v199 = *(*a3 + 328);
                v198 = *(*a3 + 336);
                if (v199 == v198)
                {
                  v201 = *(*a3 + 328);
                  v200 = v201;
                }

                else
                {
                  v200 = *(*a3 + 328);
                  v201 = v200;
                  do
                  {
                    if (*v201 == v196)
                    {
                      goto LABEL_322;
                    }

                    v201 += 8;
                  }

                  while (v201 != v198);
                  v201 = *(*a3 + 336);
LABEL_322:
                  while (*v200 != v197)
                  {
                    v200 += 8;
                    if (v200 == v198)
                    {
                      v200 = *(*a3 + 336);
                      break;
                    }
                  }
                }

                if (v201 - v199 < v200 - v199)
                {
                  v255 = *(v177 + 16);
                  v202 = *(v177 + 32);
                  v246 = v202;
                  v251 = *v177;
                  do
                  {
                    v203 = v177;
                    v177 = v195;
                    v204 = *v195;
                    v205 = *(v195 + 16);
                    *(v203 + 27) = *(v195 + 27);
                    *v203 = v204;
                    v203[1] = v205;
                    if (!v194)
                    {
                      break;
                    }

                    v194 = (v194 - 1) >> 1;
                    v195 = v11 + 48 * v194;
                    v206 = *(v195 + 24);
                    if (v206 == v197)
                    {
                      break;
                    }

                    v208 = *(*a3 + 328);
                    v207 = *(*a3 + 336);
                    if (v208 == v207)
                    {
                      v210 = *(*a3 + 328);
                      v209 = v210;
                    }

                    else
                    {
                      v209 = *(*a3 + 328);
                      v210 = v209;
                      do
                      {
                        if (*v210 == v206)
                        {
                          goto LABEL_339;
                        }

                        v210 += 8;
                      }

                      while (v210 != v207);
                      v210 = *(*a3 + 336);
LABEL_339:
                      while (*v209 != v197)
                      {
                        v209 += 8;
                        if (v209 == v207)
                        {
                          v209 = *(*a3 + 336);
                          break;
                        }
                      }
                    }
                  }

                  while (v210 - v208 < v209 - v208);
                  *v177 = v251;
                  *(v177 + 16) = v255;
                  *(v177 + 24) = v197;
                  *(v177 + 32) = v246;
                  *(v177 + 39) = *(&v246 + 7);
                }
              }
            }
          }

          v143 = v174-- <= 2;
        }

        while (!v143);
      }

      goto LABEL_375;
    }

    v14 = v13 >> 1;
    v15 = (v11 + 48 * (v13 >> 1));
    if (v12 < 0x1801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v15, a1, a2 - 3, a3);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, v15, a2 - 3, a3);
      v16 = 3 * v14;
      v17 = (a1 + 48 * v14 - 48);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>((a1 + 48), v17, a2 - 6, a3);
      v18 = (a1 + 48 + 16 * v16);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>((a1 + 96), v18, a2 - 9, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v17, v15, v18, a3);
      *v236 = *(a1 + 16);
      *&v236[16] = *(a1 + 32);
      v229 = *a1;
      v19 = *(v15 + 27);
      v20 = v15[1];
      *a1 = *v15;
      *(a1 + 16) = v20;
      *(a1 + 27) = v19;
      *(v15 + 27) = *&v236[11];
      *v15 = v229;
      v15[1] = *v236;
    }

    --a4;
    if (a5)
    {
      v21 = *(a1 + 24);
      v22 = *a3;
      goto LABEL_28;
    }

    v23 = *(a1 - 24);
    v21 = *(a1 + 24);
    if (v23 == v21)
    {
      goto LABEL_99;
    }

    v22 = *a3;
    v24 = *(*a3 + 328);
    v25 = *(*a3 + 336);
    if (v24 == v25)
    {
      v27 = *(*a3 + 328);
      v26 = v27;
    }

    else
    {
      v26 = *(*a3 + 328);
      v27 = v26;
      do
      {
        if (*v27 == v23)
        {
          goto LABEL_23;
        }

        v27 += 8;
      }

      while (v27 != v25);
      v27 = *(*a3 + 336);
LABEL_23:
      while (*v26 != v21)
      {
        v26 += 8;
        if (v26 == v25)
        {
          v26 = *(*a3 + 336);
          break;
        }
      }
    }

    if (v27 - v24 >= v26 - v24)
    {
LABEL_99:
      v254 = *(a1 + 16);
      v66 = *(a1 + 32);
      v245 = v66;
      v248 = *a1;
      v67 = *(a2 - 3);
      if (v21 == v67)
      {
        goto LABEL_123;
      }

      v68 = *(*a3 + 328);
      v69 = *(*a3 + 336);
      v70 = v68;
      if (v68 == v69)
      {
        v71 = *(*a3 + 328);
      }

      else
      {
        while (*v70 != v21)
        {
          v70 += 8;
          if (v70 == v69)
          {
            v70 = *(*a3 + 336);
            break;
          }
        }

        v71 = *(*a3 + 328);
        while (*v71 != v67)
        {
          v71 += 8;
          if (v71 == v69)
          {
            v71 = *(*a3 + 336);
            break;
          }
        }
      }

      if (v70 - v68 >= v71 - v68)
      {
LABEL_123:
        v11 = a1 + 48;
        if (a1 + 48 < a2)
        {
          v75 = *a3;
          v76 = a1;
          do
          {
            v77 = *(v76 + 72);
            v76 = v11;
            if (v21 != v77)
            {
              v78 = *(v75 + 328);
              v79 = *(v75 + 336);
              if (v78 == v79)
              {
                v81 = *(v75 + 328);
                v80 = v81;
              }

              else
              {
                v80 = *(v75 + 328);
                v81 = v80;
                do
                {
                  if (*v81 == v21)
                  {
                    goto LABEL_131;
                  }

                  v81 += 8;
                }

                while (v81 != v79);
                v81 = *(v75 + 336);
LABEL_131:
                while (*v80 != v77)
                {
                  v80 += 8;
                  if (v80 == v79)
                  {
                    v80 = *(v75 + 336);
                    break;
                  }
                }
              }

              if (v81 - v78 < v80 - v78)
              {
                break;
              }
            }

            v11 += 48;
          }

          while (v76 + 48 < a2);
        }
      }

      else
      {
        v11 = a1;
        do
        {
          do
          {
            v72 = *(v11 + 72);
            v11 += 48;
          }

          while (v21 == v72);
          v73 = *(*a3 + 328);
          if (v68 == v69)
          {
            v74 = *(*a3 + 328);
          }

          else
          {
            while (*v73 != v21)
            {
              v73 += 8;
              if (v73 == v69)
              {
                v73 = *(*a3 + 336);
                break;
              }
            }

            v74 = *(*a3 + 328);
            while (*v74 != v72)
            {
              v74 += 8;
              if (v74 == v69)
              {
                v74 = *(*a3 + 336);
                break;
              }
            }
          }
        }

        while (v73 - v68 >= v74 - v68);
      }

      v82 = a2;
      if (v11 < a2)
      {
        v83 = *a3;
        v82 = a2;
        do
        {
          v84 = *(v82 - 3);
          v82 -= 3;
          if (v21 == v84)
          {
            break;
          }

          v85 = *(v83 + 328);
          v86 = *(v83 + 336);
          if (v85 == v86)
          {
            v88 = *(v83 + 328);
            v87 = v88;
          }

          else
          {
            v87 = *(v83 + 328);
            v88 = v87;
            do
            {
              if (*v88 == v21)
              {
                goto LABEL_145;
              }

              v88 += 8;
            }

            while (v88 != v86);
            v88 = *(v83 + 336);
LABEL_145:
            while (*v87 != v84)
            {
              v87 += 8;
              if (v87 == v86)
              {
                v87 = *(v83 + 336);
                break;
              }
            }
          }
        }

        while (v88 - v85 < v87 - v85);
      }

      while (v11 < v82)
      {
        *v238 = *(v11 + 16);
        *&v238[16] = *(v11 + 32);
        v230 = *v11;
        v89 = *v82;
        v90 = v82[1];
        *(v11 + 27) = *(v82 + 27);
        *v11 = v89;
        *(v11 + 16) = v90;
        *(v82 + 27) = *&v238[11];
        *v82 = v230;
        v82[1] = *v238;
        v91 = *a3;
        do
        {
          do
          {
            v92 = *(v11 + 72);
            v11 += 48;
          }

          while (v21 == v92);
          v93 = *(v91 + 328);
          v94 = *(v91 + 336);
          v95 = v93;
          if (v93 == v94)
          {
            v96 = *(v91 + 328);
          }

          else
          {
            while (*v95 != v21)
            {
              v95 += 8;
              if (v95 == v94)
              {
                v95 = *(v91 + 336);
                break;
              }
            }

            v96 = *(v91 + 328);
            while (*v96 != v92)
            {
              v96 += 8;
              if (v96 == v94)
              {
                v96 = *(v91 + 336);
                break;
              }
            }
          }
        }

        while (v95 - v93 >= v96 - v93);
        do
        {
          v97 = *(v82 - 3);
          v82 -= 3;
          if (v21 == v97)
          {
            break;
          }

          v98 = v93;
          if (v93 == v94)
          {
            v99 = v93;
          }

          else
          {
            while (*v98 != v21)
            {
              v98 += 8;
              if (v98 == v94)
              {
                v98 = v94;
                break;
              }
            }

            v99 = v93;
            while (*v99 != v97)
            {
              v99 += 8;
              if (v99 == v94)
              {
                v99 = v94;
                break;
              }
            }
          }
        }

        while (v98 - v93 < v99 - v93);
      }

      v100 = (v11 - 48);
      if (v11 - 48 != a1)
      {
        v101 = *v100;
        v102 = *(v11 - 32);
        *(a1 + 27) = *(v11 - 21);
        *a1 = v101;
        *(a1 + 16) = v102;
      }

      a5 = 0;
      *v100 = v248;
      *(v11 - 32) = v254;
      *(v11 - 24) = v21;
      *(v11 - 9) = *(&v245 + 7);
      *(v11 - 16) = v245;
    }

    else
    {
LABEL_28:
      v253 = *(a1 + 16);
      v28 = *(a1 + 32);
      v244 = v28;
      v247 = *a1;
      v29 = a1;
      do
      {
        v30 = v29;
        v29 += 48;
        v31 = *(v30 + 72);
        if (v31 == v21)
        {
          break;
        }

        v32 = *(v22 + 328);
        v33 = *(v22 + 336);
        if (v32 == v33)
        {
          v35 = *(v22 + 328);
          v34 = v35;
        }

        else
        {
          v34 = *(v22 + 328);
          v35 = v34;
          do
          {
            if (*v35 == v31)
            {
              goto LABEL_35;
            }

            v35 += 8;
          }

          while (v35 != v33);
          v35 = *(v22 + 336);
LABEL_35:
          while (*v34 != v21)
          {
            v34 += 8;
            if (v34 == v33)
            {
              v34 = *(v22 + 336);
              break;
            }
          }
        }
      }

      while (v35 - v32 < v34 - v32);
      v36 = a2;
      if (v30 == a1)
      {
        v36 = a2;
        if (v29 < a2)
        {
          v36 = a2;
          do
          {
            v42 = *(v36 - 3);
            v36 -= 3;
            if (v42 != v21)
            {
              v43 = *(v22 + 328);
              v44 = *(v22 + 336);
              if (v43 == v44)
              {
                v46 = *(v22 + 328);
                v45 = v46;
              }

              else
              {
                v45 = *(v22 + 328);
                v46 = v45;
                do
                {
                  if (*v46 == v42)
                  {
                    goto LABEL_61;
                  }

                  v46 += 8;
                }

                while (v46 != v44);
                v46 = *(v22 + 336);
LABEL_61:
                while (*v45 != v21)
                {
                  v45 += 8;
                  if (v45 == v44)
                  {
                    v45 = *(v22 + 336);
                    break;
                  }
                }
              }

              if (v46 - v43 < v45 - v43)
              {
                break;
              }
            }
          }

          while (v29 < v36);
        }
      }

      else
      {
        do
        {
          do
          {
            v37 = *(v36 - 3);
            v36 -= 3;
          }

          while (v37 == v21);
          v38 = *(v22 + 328);
          v39 = *(v22 + 336);
          if (v38 == v39)
          {
            v41 = *(v22 + 328);
            v40 = v41;
          }

          else
          {
            v40 = *(v22 + 328);
            v41 = v40;
            do
            {
              if (*v41 == v37)
              {
                goto LABEL_47;
              }

              v41 += 8;
            }

            while (v41 != v39);
            v41 = *(v22 + 336);
LABEL_47:
            while (*v40 != v21)
            {
              v40 += 8;
              if (v40 == v39)
              {
                v40 = *(v22 + 336);
                break;
              }
            }
          }
        }

        while (v41 - v38 >= v40 - v38);
      }

      v11 = v29;
      if (v29 < v36)
      {
        v47 = v36;
        do
        {
          *v237 = *(v11 + 16);
          *&v237[16] = *(v11 + 32);
          v48 = *v11;
          v50 = *v47;
          v49 = v47[1];
          *(v11 + 27) = *(v47 + 27);
          *v11 = v50;
          *(v11 + 16) = v49;
          *(v47 + 27) = *&v237[11];
          *v47 = v48;
          v47[1] = *v237;
          v51 = *a3;
          do
          {
            v52 = *(v11 + 72);
            v11 += 48;
            if (v52 == v21)
            {
              break;
            }

            v53 = *(v51 + 328);
            v54 = *(v51 + 336);
            if (v53 == v54)
            {
              v56 = *(v51 + 328);
              v55 = v56;
            }

            else
            {
              v55 = *(v51 + 328);
              v56 = v55;
              do
              {
                if (*v56 == v52)
                {
                  goto LABEL_76;
                }

                v56 += 8;
              }

              while (v56 != v54);
              v56 = *(v51 + 336);
LABEL_76:
              while (*v55 != v21)
              {
                v55 += 8;
                if (v55 == v54)
                {
                  v55 = *(v51 + 336);
                  break;
                }
              }
            }
          }

          while (v56 - v53 < v55 - v53);
          do
          {
            do
            {
              v57 = *(v47 - 3);
              v47 -= 3;
            }

            while (v57 == v21);
            v58 = *(v51 + 328);
            v59 = *(v51 + 336);
            if (v58 == v59)
            {
              v61 = *(v51 + 328);
              v60 = v61;
            }

            else
            {
              v60 = *(v51 + 328);
              v61 = v60;
              do
              {
                if (*v61 == v57)
                {
                  goto LABEL_87;
                }

                v61 += 8;
              }

              while (v61 != v59);
              v61 = *(v51 + 336);
LABEL_87:
              while (*v60 != v21)
              {
                v60 += 8;
                if (v60 == v59)
                {
                  v60 = *(v51 + 336);
                  break;
                }
              }
            }
          }

          while (v61 - v58 >= v60 - v58);
        }

        while (v11 < v47);
      }

      v62 = (v11 - 48);
      if (v11 - 48 != a1)
      {
        v63 = *v62;
        v64 = *(v11 - 32);
        *(a1 + 27) = *(v11 - 21);
        *a1 = v63;
        *(a1 + 16) = v64;
      }

      *v62 = v247;
      *(v11 - 32) = v253;
      *(v11 - 24) = v21;
      *(v11 - 9) = *(&v244 + 7);
      *(v11 - 16) = v244;
      if (v29 < v36)
      {
        goto LABEL_98;
      }

      v65 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*>(a1, v11 - 48, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*>(v11, a2, a3))
      {
        a2 = (v11 - 48);
        if (!v65)
        {
          goto LABEL_2;
        }

        goto LABEL_375;
      }

      if (!v65)
      {
LABEL_98:
        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(a1, v11 - 48, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  v103 = *MEMORY[0x277D85DE8];

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v11, (v11 + 48), a2 - 3, a3);
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 3);
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v6 = *(*a4 + 328);
  v7 = *(*a4 + 336);
  v8 = v6;
  if (v6 == v7)
  {
    v9 = *(*a4 + 328);
  }

  else
  {
    while (*v8 != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(*a4 + 336);
        break;
      }
    }

    v9 = *(*a4 + 328);
    while (*v9 != v5)
    {
      v9 += 8;
      if (v9 == v7)
      {
        v9 = *(*a4 + 336);
        break;
      }
    }
  }

  if (v8 - v6 >= v9 - v6)
  {
LABEL_21:
    v13 = *(a3 + 3);
    if (v13 != v4)
    {
      v14 = *(*a4 + 328);
      v15 = *(*a4 + 336);
      if (v14 == v15)
      {
        v17 = *(*a4 + 328);
        v16 = v17;
      }

      else
      {
        v16 = *(*a4 + 328);
        v17 = v16;
        do
        {
          if (*v17 == v13)
          {
            goto LABEL_27;
          }

          v17 += 8;
        }

        while (v17 != v15);
        v17 = *(*a4 + 336);
LABEL_27:
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v15)
          {
            v16 = *(*a4 + 336);
            break;
          }
        }
      }

      if (v17 - v14 < v16 - v14)
      {
        v18 = *a2;
        *v46 = a2[1];
        *&v46[16] = a2[2];
        v19 = *(a3 + 27);
        v20 = a3[1];
        *a2 = *a3;
        a2[1] = v20;
        *(a2 + 27) = v19;
        *a3 = v18;
        a3[1] = *v46;
        result = *&v46[11];
        *(a3 + 27) = *&v46[11];
        v22 = *(a2 + 3);
        v23 = *(a1 + 3);
        if (v22 != v23)
        {
          v24 = *(*a4 + 328);
          v25 = *(*a4 + 336);
          if (v24 == v25)
          {
            v27 = *(*a4 + 328);
            v26 = v27;
          }

          else
          {
            v26 = *(*a4 + 328);
            v27 = v26;
            do
            {
              if (*v27 == v22)
              {
                goto LABEL_38;
              }

              v27 += 8;
            }

            while (v27 != v25);
            v27 = *(*a4 + 336);
LABEL_38:
            while (*v26 != v23)
            {
              v26 += 8;
              if (v26 == v25)
              {
                v26 = *(*a4 + 336);
                break;
              }
            }
          }

          if (v27 - v24 < v26 - v24)
          {
            v41 = *a1;
            *v48 = a1[1];
            *&v48[16] = a1[2];
            v42 = *(a2 + 27);
            v43 = a2[1];
            *a1 = *a2;
            a1[1] = v43;
            *(a1 + 27) = v42;
            *a2 = v41;
            a2[1] = *v48;
            result = *&v48[11];
            *(a2 + 27) = *&v48[11];
          }
        }
      }
    }
  }

  else
  {
    v10 = *(a3 + 3);
    if (v10 != v4)
    {
      v11 = *(*a4 + 328);
      if (v6 == v7)
      {
        v12 = *(*a4 + 328);
      }

      else
      {
        while (*v11 != v10)
        {
          v11 += 8;
          if (v11 == v7)
          {
            v11 = *(*a4 + 336);
            break;
          }
        }

        v12 = *(*a4 + 328);
        while (*v12 != v4)
        {
          v12 += 8;
          if (v12 == v7)
          {
            v12 = *(*a4 + 336);
            break;
          }
        }
      }

      if (v11 - v6 < v12 - v6)
      {
        v28 = a1[1];
        v29 = *a1;
        *v49 = *(&v28 + 1);
        *&v49[8] = a1[2];
        v30 = *(a3 + 27);
        v31 = a3[1];
        *a1 = *a3;
        a1[1] = v31;
        *(a1 + 27) = v30;
LABEL_59:
        *a3 = v29;
        a3[1] = v28;
        result = *&v49[3];
        *(a3 + 27) = *&v49[3];
        return result;
      }
    }

    v32 = *a1;
    *v47 = a1[1];
    *&v47[16] = a1[2];
    v33 = *(a2 + 27);
    v34 = a2[1];
    *a1 = *a2;
    a1[1] = v34;
    *(a1 + 27) = v33;
    *a2 = v32;
    a2[1] = *v47;
    result = *&v47[11];
    *(a2 + 27) = *&v47[11];
    v35 = *(a3 + 3);
    v36 = *(a2 + 3);
    if (v35 != v36)
    {
      v37 = *(*a4 + 328);
      v38 = *(*a4 + 336);
      if (v37 == v38)
      {
        v40 = *(*a4 + 328);
        v39 = v40;
      }

      else
      {
        v39 = *(*a4 + 328);
        v40 = v39;
        do
        {
          if (*v40 == v35)
          {
            goto LABEL_50;
          }

          v40 += 8;
        }

        while (v40 != v38);
        v40 = *(*a4 + 336);
LABEL_50:
        while (*v39 != v36)
        {
          v39 += 8;
          if (v39 == v38)
          {
            v39 = *(*a4 + 336);
            break;
          }
        }
      }

      if (v40 - v37 < v39 - v37)
      {
        v28 = a2[1];
        v29 = *a2;
        *v49 = *(&v28 + 1);
        *&v49[8] = a2[2];
        v44 = *(a3 + 27);
        v45 = a3[1];
        *a2 = *a3;
        a2[1] = v45;
        *(a2 + 27) = v44;
        goto LABEL_59;
      }
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 328);
    v14 = *(*a5 + 336);
    if (v13 == v14)
    {
      v16 = *(*a5 + 328);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 328);
      v16 = v15;
      do
      {
        if (*v16 == v11)
        {
          goto LABEL_7;
        }

        v16 += 8;
      }

      while (v16 != v14);
      v16 = *(*a5 + 336);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 336);
          break;
        }
      }
    }

    if (v16 - v13 < v15 - v13)
    {
      v17 = *a3;
      *v38 = *(a3 + 16);
      *&v38[16] = *(a3 + 32);
      v18 = *(a4 + 27);
      v19 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v19;
      *(a3 + 27) = v18;
      *a4 = v17;
      *(a4 + 16) = *v38;
      result = *&v38[11];
      *(a4 + 27) = *&v38[11];
      v20 = *(a3 + 24);
      v21 = *(a2 + 24);
      if (v20 != v21)
      {
        v22 = *(*a5 + 328);
        v23 = *(*a5 + 336);
        if (v22 == v23)
        {
          v25 = *(*a5 + 328);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 328);
          v25 = v24;
          do
          {
            if (*v25 == v20)
            {
              goto LABEL_18;
            }

            v25 += 8;
          }

          while (v25 != v23);
          v25 = *(*a5 + 336);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 336);
              break;
            }
          }
        }

        if (v25 - v22 < v24 - v22)
        {
          v26 = *a2;
          *v39 = *(a2 + 16);
          *&v39[16] = *(a2 + 32);
          v27 = *(a3 + 27);
          v28 = *(a3 + 16);
          *a2 = *a3;
          *(a2 + 16) = v28;
          *(a2 + 27) = v27;
          *a3 = v26;
          *(a3 + 16) = *v39;
          result = *&v39[11];
          *(a3 + 27) = *&v39[11];
          v29 = *(a2 + 24);
          v30 = *(a1 + 24);
          if (v29 != v30)
          {
            v31 = *(*a5 + 328);
            v32 = *(*a5 + 336);
            if (v31 == v32)
            {
              v34 = *(*a5 + 328);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 328);
              v34 = v33;
              do
              {
                if (*v34 == v29)
                {
                  goto LABEL_29;
                }

                v34 += 8;
              }

              while (v34 != v32);
              v34 = *(*a5 + 336);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 336);
                  break;
                }
              }
            }

            if (v34 - v31 < v33 - v31)
            {
              v35 = *a1;
              *v40 = *(a1 + 16);
              *&v40[16] = *(a1 + 32);
              v36 = *(a2 + 27);
              v37 = *(a2 + 16);
              *a1 = *a2;
              *(a1 + 16) = v37;
              *(a1 + 27) = v36;
              *a2 = v35;
              *(a2 + 16) = *v40;
              result = *&v40[11];
              *(a2 + 27) = *&v40[11];
            }
          }
        }
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *(a5 + 24);
  v14 = *(a4 + 24);
  if (v13 != v14)
  {
    v15 = *(*a6 + 328);
    v16 = *(*a6 + 336);
    if (v15 == v16)
    {
      v18 = *(*a6 + 328);
      v17 = v18;
    }

    else
    {
      v17 = *(*a6 + 328);
      v18 = v17;
      do
      {
        if (*v18 == v13)
        {
          goto LABEL_7;
        }

        v18 += 8;
      }

      while (v18 != v16);
      v18 = *(*a6 + 336);
LABEL_7:
      while (*v17 != v14)
      {
        v17 += 8;
        if (v17 == v16)
        {
          v17 = *(*a6 + 336);
          break;
        }
      }
    }

    if (v18 - v15 < v17 - v15)
    {
      v19 = *a4;
      *v49 = *(a4 + 16);
      *&v49[16] = *(a4 + 32);
      v20 = *(a5 + 27);
      v21 = *(a5 + 16);
      *a4 = *a5;
      *(a4 + 16) = v21;
      *(a4 + 27) = v20;
      *a5 = v19;
      *(a5 + 16) = *v49;
      result = *&v49[11];
      *(a5 + 27) = *&v49[11];
      v22 = *(a4 + 24);
      v23 = *(a3 + 24);
      if (v22 != v23)
      {
        v24 = *(*a6 + 328);
        v25 = *(*a6 + 336);
        if (v24 == v25)
        {
          v27 = *(*a6 + 328);
          v26 = v27;
        }

        else
        {
          v26 = *(*a6 + 328);
          v27 = v26;
          do
          {
            if (*v27 == v22)
            {
              goto LABEL_18;
            }

            v27 += 8;
          }

          while (v27 != v25);
          v27 = *(*a6 + 336);
LABEL_18:
          while (*v26 != v23)
          {
            v26 += 8;
            if (v26 == v25)
            {
              v26 = *(*a6 + 336);
              break;
            }
          }
        }

        if (v27 - v24 < v26 - v24)
        {
          v28 = *a3;
          *v50 = *(a3 + 16);
          *&v50[16] = *(a3 + 32);
          v29 = *(a4 + 27);
          v30 = *(a4 + 16);
          *a3 = *a4;
          *(a3 + 16) = v30;
          *(a3 + 27) = v29;
          *a4 = v28;
          *(a4 + 16) = *v50;
          result = *&v50[11];
          *(a4 + 27) = *&v50[11];
          v31 = *(a3 + 24);
          v32 = *(a2 + 24);
          if (v31 != v32)
          {
            v33 = *(*a6 + 328);
            v34 = *(*a6 + 336);
            if (v33 == v34)
            {
              v36 = *(*a6 + 328);
              v35 = v36;
            }

            else
            {
              v35 = *(*a6 + 328);
              v36 = v35;
              do
              {
                if (*v36 == v31)
                {
                  goto LABEL_29;
                }

                v36 += 8;
              }

              while (v36 != v34);
              v36 = *(*a6 + 336);
LABEL_29:
              while (*v35 != v32)
              {
                v35 += 8;
                if (v35 == v34)
                {
                  v35 = *(*a6 + 336);
                  break;
                }
              }
            }

            if (v36 - v33 < v35 - v33)
            {
              v37 = *a2;
              *v51 = *(a2 + 16);
              *&v51[16] = *(a2 + 32);
              v38 = *(a3 + 27);
              v39 = *(a3 + 16);
              *a2 = *a3;
              *(a2 + 16) = v39;
              *(a2 + 27) = v38;
              *a3 = v37;
              *(a3 + 16) = *v51;
              result = *&v51[11];
              *(a3 + 27) = *&v51[11];
              v40 = *(a2 + 24);
              v41 = *(a1 + 24);
              if (v40 != v41)
              {
                v42 = *(*a6 + 328);
                v43 = *(*a6 + 336);
                if (v42 == v43)
                {
                  v45 = *(*a6 + 328);
                  v44 = v45;
                }

                else
                {
                  v44 = *(*a6 + 328);
                  v45 = v44;
                  do
                  {
                    if (*v45 == v40)
                    {
                      goto LABEL_40;
                    }

                    v45 += 8;
                  }

                  while (v45 != v43);
                  v45 = *(*a6 + 336);
LABEL_40:
                  while (*v44 != v41)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(*a6 + 336);
                      break;
                    }
                  }
                }

                if (v45 - v42 < v44 - v42)
                {
                  v46 = *a1;
                  *v52 = *(a1 + 16);
                  *&v52[16] = *(a1 + 32);
                  v47 = *(a2 + 27);
                  v48 = *(a2 + 16);
                  *a1 = *a2;
                  *(a1 + 16) = v48;
                  *(a1 + 27) = v47;
                  *a2 = v46;
                  *(a2 + 16) = *v52;
                  result = *&v52[11];
                  *(a2 + 27) = *&v52[11];
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *(a2 - 24);
        v8 = *(a1 + 24);
        if (v7 != v8)
        {
          v9 = *(*a3 + 328);
          v10 = *(*a3 + 336);
          if (v9 == v10)
          {
            v12 = *(*a3 + 328);
            v11 = v12;
          }

          else
          {
            v11 = *(*a3 + 328);
            v12 = v11;
            do
            {
              if (*v12 == v7)
              {
                goto LABEL_10;
              }

              v12 += 8;
            }

            while (v12 != v10);
            v12 = *(*a3 + 336);
LABEL_10:
            while (*v11 != v8)
            {
              v11 += 8;
              if (v11 == v10)
              {
                v11 = *(*a3 + 336);
                break;
              }
            }
          }

          if (v12 - v9 < v11 - v9)
          {
            v31 = (a2 - 48);
            v32 = *a1;
            *v37 = *(a1 + 16);
            *&v37[16] = *(a1 + 32);
            v33 = *(a2 - 21);
            v34 = *(a2 - 32);
            *a1 = *(a2 - 48);
            *(a1 + 16) = v34;
            *(a1 + 27) = v33;
            *v31 = v32;
            v31[1] = *v37;
            *(v31 + 27) = *&v37[11];
          }
        }

        goto LABEL_50;
      }

      goto LABEL_18;
    }

LABEL_50:
    result = 1;
    goto LABEL_51;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a2 - 48), a3);
      goto LABEL_50;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a2 - 48, a3);
      goto LABEL_50;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a1 + 144, a2 - 48, a3);
      goto LABEL_50;
  }

LABEL_18:
  v13 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), a3);
  v14 = a1 + 144;
  if (a1 + 144 == a2)
  {
    goto LABEL_50;
  }

  v15 = 0;
  while (1)
  {
    v16 = *(v14 + 24);
    v17 = *(v13 + 24);
    if (v16 != v17)
    {
      v18 = *(*a3 + 328);
      v19 = *(*a3 + 336);
      if (v18 == v19)
      {
        v21 = *(*a3 + 328);
        v20 = v21;
      }

      else
      {
        v20 = *(*a3 + 328);
        v21 = v20;
        do
        {
          if (*v21 == v16)
          {
            goto LABEL_26;
          }

          v21 += 8;
        }

        while (v21 != v19);
        v21 = *(*a3 + 336);
LABEL_26:
        while (*v20 != v17)
        {
          v20 += 8;
          if (v20 == v19)
          {
            v20 = *(*a3 + 336);
            break;
          }
        }
      }

      if (v21 - v18 < v20 - v18)
      {
        v35 = *v14;
        v36 = *(v14 + 16);
        v38 = *(v14 + 32);
        v22 = v14;
        while (1)
        {
          v23 = *(v13 + 16);
          *v22 = *v13;
          *(v22 + 16) = v23;
          *(v22 + 27) = *(v13 + 27);
          if (v13 == a1)
          {
            break;
          }

          v22 = v13;
          v24 = *(v13 - 24);
          if (v16 != v24)
          {
            v25 = *(*a3 + 328);
            v26 = *(*a3 + 336);
            if (v25 == v26)
            {
              v28 = *(*a3 + 328);
              v27 = v28;
            }

            else
            {
              v27 = *(*a3 + 328);
              v28 = v27;
              do
              {
                if (*v28 == v16)
                {
                  goto LABEL_39;
                }

                v28 += 8;
              }

              while (v28 != v26);
              v28 = *(*a3 + 336);
LABEL_39:
              while (*v27 != v24)
              {
                v27 += 8;
                if (v27 == v26)
                {
                  v27 = *(*a3 + 336);
                  break;
                }
              }
            }

            v13 -= 48;
            if (v28 - v25 < v27 - v25)
            {
              continue;
            }
          }

          goto LABEL_46;
        }

        v22 = a1;
LABEL_46:
        *v22 = v35;
        *(v22 + 16) = v36;
        *(v22 + 24) = v16;
        *(v22 + 32) = v38;
        *(v22 + 39) = *(&v38 + 7);
        if (++v15 == 8)
        {
          break;
        }
      }
    }

    v13 = v14;
    v14 += 48;
    if (v14 == a2)
    {
      goto LABEL_50;
    }
  }

  result = v14 + 48 == a2;
LABEL_51:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::overallStatistics(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  *(a1 + 8) = *(a2 + 128);
  *a1 = *(a2 + 120);
  *(a1 + 24) = v4;
  *(a1 + 40) = *(a2 + 160);
  v5 = *(a2 + 184);
  *(a1 + 56) = *(a2 + 176);
  *(a1 + 64) = v5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v6 = *(a2 + 192);
  v7 = *(a2 + 200);
  *(a1 + 72) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 72, v6, v7, (v7 - v6) >> 4);
  *(a1 + 96) = *(a2 + 216);
  result = *(a2 + 224);
  v9 = *(a2 + 240);
  *(a1 + 104) = result;
  *(a1 + 120) = v9;
  *(a1 + 136) = *(a2 + 256);
  return result;
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::statisticsByBundleIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v2 = *(a2 + 264);
  v28 = (a2 + 272);
  if (v2 == (a2 + 272))
  {
    return;
  }

  v27 = a1 + 16;
  do
  {
    v4 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a2, v2[4]);
    v5 = v4;
    if (!v4)
    {
      goto LABEL_25;
    }

    v6 = [v4 hash];
    v7 = v6;
    v8 = *(a1 + 8);
    if (!*&v8)
    {
      goto LABEL_21;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v30 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v10 = v6;
      if (v6 >= *&v8)
      {
        v10 = v6 % *&v8;
      }
    }

    else
    {
      v10 = (*&v8 - 1) & v6;
    }

    v11 = *(*a1 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_21:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        break;
      }

      if (v30 > 1)
      {
        if (v13 >= *&v8)
        {
          v13 %= *&v8;
        }
      }

      else
      {
        v13 &= *&v8 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_21;
      }

LABEL_20:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    v14 = v12[2];
    v15 = v5;
    v16 = v5;
    v17 = v16;
    if (v14 != v16)
    {
      v18 = [v14 isEqualToString:v16];

      v5 = v15;
      if (v18)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    v5 = v15;
LABEL_22:
    *(v12 + 6) = *(v2 + 10);
    v19 = *(v2 + 3);
    v20 = *(v2 + 4);
    v21 = *(v2 + 5);
    v12[10] = v2[12];
    *(v12 + 4) = v21;
    *(v12 + 3) = v20;
    *(v12 + 2) = v19;
    v12[11] = v2[13];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 12, v2[14], v2[15], (v2[15] - v2[14]) >> 4);
    }

    v12[15] = v2[17];
    v22 = *(v2 + 9);
    v23 = *(v2 + 10);
    *(v12 + 80) = *(v2 + 88);
    *(v12 + 8) = v22;
    *(v12 + 9) = v23;

LABEL_25:
    v24 = v2[1];
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
        v25 = v2[2];
        v26 = *v25 == v2;
        v2 = v25;
      }

      while (!v26);
    }

    v2 = v25;
  }

  while (v25 != v28);
}

void sub_228EC4154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,void *>>>>::~unique_ptr[abi:ne200100](va);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::~__hash_table(v6);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,0>(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BED098;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BED098;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 56;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsCumulative const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BED128;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsCumulative const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BED128;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsCumulative const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsCumulative const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCumulative,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsCumulative,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsCumulative const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCumulative const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_primitiveAddSample(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 624) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = *(a2 + 8);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 8);
  if (v9 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && a3)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v10 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v9 end:*(a2 + 16)];
    v11 = (*(*a1 + 128))(a1, v10, a4);
  }

  return v11;
}

double _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_earliestStartTimeWithoutInvalidation(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if ((*(a1 + 624) & 1) == 0)
    {
      v1 = *(a1 + 176);
      result = *(a1 + 120);
      if (v1 <= result)
      {
        v1 = -1.79769313e308;
      }

      else if (*(a1 + 144))
      {
        v1 = -1.79769313e308;
      }

      if (v1 >= result)
      {
        return v1;
      }

      return result;
    }

    return -1.79769313e308;
  }

  result = *(a1 + 176);
  if (result <= *(a1 + 120))
  {
    return -1.79769313e308;
  }

  if (*(a1 + 144))
  {
    return -1.79769313e308;
  }

  return result;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_advanceToTime(uint64_t result, double a2)
{
  if (*(result + 128) <= a2)
  {
    v2 = result;
    if (*(v2 + 600) != *(v2 + 592))
    {
      [*(result + 40) dateIntervalAtIndex:*(result + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_updateSourceOrder(v2 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v2, v2 + 120);
    }

    v5 = 0;
    v3 = *(result + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_updateSourceOrder(v2 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v2, v2 + 120);
  }

  return result;
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::addSample(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = a1 + 8;
  v12 = *(a1 + 8);
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v13 = v12 - v6;
  v14 = v5;
  v15 = v6;
  if (v12 - v6 >= 0.01)
  {
    if (v7 - v6 - v13 < 0.01)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v14 = 0.0;
      v19 = 0.0;
      v15 = 0.0;
      goto LABEL_6;
    }

    v14 = v5 - v5 * (v13 / (v7 - v6));
    v15 = v12;
  }

  *&v42 = v14;
  *(&v42 + 1) = v15;
  *&v43 = v7;
  *(&v43 + 1) = v8;
  v16 = v10;
  LOBYTE(v44) = v9;
  v17 = v9;
  v18 = v8;
  v19 = v7;
  HIBYTE(v44) = v10;
LABEL_6:
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v20 = *(a1 + 16);
  v21 = v20 - v15;
  v22 = v19 - v15;
  v23 = v19 - v15 - (v20 - v15);
  if (!*(a1 + 36))
  {
    if (v23 < 0.01)
    {
LABEL_11:
      v20 = v19;
      if ((v17 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_16;
    }

    if (v21 >= 0.01)
    {
      goto LABEL_15;
    }

LABEL_14:
    v35 = v42;
    v36 = v43;
    v37 = v44;
    goto LABEL_45;
  }

  if (v21 < 0.01)
  {
    goto LABEL_14;
  }

  if (v23 < 0.01)
  {
    goto LABEL_11;
  }

LABEL_15:
  *&v35 = v14 - v21 / v22 * v14;
  *(&v35 + 1) = v20;
  *&v36 = v19;
  *(&v36 + 1) = v18;
  LOBYTE(v37) = v17;
  HIBYTE(v37) = v16;
  *&v42 = v21 / v22 * v14;
  *&v43 = v20;
  if ((v17 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_16:
  v33 = v20;
  v34 = v15;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 296), v18);
  if (*(a1 + 112) == *(a1 + 104) && *(a1 + 144) <= 0)
  {
    v27.f64[1] = *(a1 + 16);
    v24 = v34;
    v27.f64[0] = v34;
    v28.f64[0] = *(a1 + 8);
    v28.f64[1] = v33;
    v29 = vcgtq_f64(v28, v27);
    v28.f64[0] = v34;
    *(a1 + 48) = vbslq_s8(v29, *(a1 + 8), v28);
  }

  else
  {
    v24 = v34;
    if (v34 < *(a1 + 48))
    {
      v25 = *(a1 + 8);
      if (v34 >= v25)
      {
        v25 = v34;
      }

      *(a1 + 48) = v25;
    }

    if (v33 > *(a1 + 56))
    {
      v26 = *(a1 + 16);
      if (v26 >= v33)
      {
        v26 = v33;
      }

      *(a1 + 56) = v26;
    }
  }

  if (*(a1 + 32) == 1)
  {
    v30 = *(a1 + 64);
    if (v24 < v30)
    {
      v30 = v24;
    }

    *(a1 + 64) = v30;
  }

  if (a3 && v24 < *(a1 + 16))
  {
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeThroughTime(v11, v24);
  }

  v38[0] = v42;
  v38[1] = v43;
  v39 = v44;
  v40 = 0;
  v41 = 0;
  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v38);
  if (!*(a1 + 264) || *(a1 + 240) <= v6)
  {
    *(a1 + 232) = v5;
    *(a1 + 240) = v6;
    *(a1 + 248) = v7;
    *(a1 + 256) = v8;
    *(a1 + 264) = v9;
    *(a1 + 265) = v10;
    if (!*(a1 + 184) || *(a1 + 160) <= v6)
    {
      *(a1 + 152) = v5;
      *(a1 + 160) = v6;
      *(a1 + 168) = v7;
      *(a1 + 176) = v8;
      *(a1 + 184) = v9;
      *(a1 + 185) = v10;
    }
  }

  if (*(a1 + 33) == 1)
  {
    v31 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(v11, v18);
    v32 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_statisticsForSource(v11, v31);
    if (!*(v32 + 136) || v32[14] <= v6)
    {
      v32[13] = v5;
      v32[14] = v6;
      v32[15] = v7;
      *(v32 + 16) = v8;
      *(v32 + 136) = v9;
      *(v32 + 137) = v10;
      if (!*(v32 + 56) || v32[4] <= v6)
      {
        v32[3] = v5;
        v32[4] = v6;
        v32[5] = v7;
        *(v32 + 6) = v8;
        *(v32 + 56) = v9;
        *(v32 + 57) = v10;
      }
    }
  }

LABEL_45:
  if (v37 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 480, &v35);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 626) == 1)
  {
    *(a1 + 628) = 1;
  }

  else
  {
    *(a1 + 628) = 0;
    v2 = _Block_copy(*(a1 + 96));
    if (v2)
    {
      v4 = v2;
      v3 = (*(*a1 + 96))(a1);
      if (v3)
      {
        v4[2](v4, v3);
      }

      v2 = v4;
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::advanceBucket(void *a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, a1[60], a1[61], 0xCCCCCCCCCCCCCCCDLL * ((a1[61] - a1[60]) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::addSample(a1, v8, 1);
      v8 += 40;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228EC52F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = (a1 + 40);
  objc_storeStrong((a1 + 504), *(a1 + 40));
  *(v8 - 4) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  v9 = 0uLL;
  memset(v19, 0, sizeof(v19));
  v10 = *(a1 + 200);
  *(a1 + 128) = 0;
  *(a1 + 136) = *&v19[4];
  *(a1 + 152) = *&v19[20];
  *(a1 + 168) = *&v19[36];
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (v10)
  {
    *(a1 + 208) = v10;
    operator delete(v10);
    v9 = 0uLL;
  }

  *(a1 + 264) = 0;
  *(a1 + 232) = v9;
  *(a1 + 248) = v9;
  *(a1 + 200) = v9;
  *(a1 + 216) = v9;
  if (*(a1 + 288))
  {
    v11 = *(a1 + 272);
    v12 = *(a1 + 280);
    *(a1 + 272) = a1 + 280;
    *(v12 + 16) = 0;
    *(a1 + 280) = 0;
    *(a1 + 288) = 0;
    if (v11[1])
    {
      v13 = v11[1];
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = v13[2];
      if (v14)
      {
        v15 = *v14;
        if (*v14 == v13)
        {
          *v14 = 0;
          while (1)
          {
            v18 = v14[1];
            if (!v18)
            {
              break;
            }

            do
            {
              v14 = v18;
              v18 = *v18;
            }

            while (v18);
          }
        }

        else
        {
          for (v14[1] = 0; v15; v15 = v14[1])
          {
            do
            {
              v14 = v15;
              v15 = *v15;
            }

            while (v15);
          }
        }

        std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::destroy(v13);
        for (i = v14[2]; i; i = i[2])
        {
          v14 = i;
        }

        v13 = v14;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::destroy(v13);
  }

  objc_storeStrong(v8, *(a1 + 504));
  *(a1 + 488) = *(a1 + 480);
  *a1 = a2;
  v17 = *MEMORY[0x277D85DE8];
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 628) == 1)
  {
    if (v3)
    {
      v6 = v3;
      v4 = _Block_copy(*(a1 + 96));
      v5 = v4;
      if (v4)
      {
        (*(v4 + 2))(v4, v6);
      }

      v3 = v6;
    }

    *(a1 + 628) = 0;
  }
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_currentBucketInterval(uint64_t a1)
{
  if (*(a1 + 624))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:*(a1 + 120) end:{*(a1 + 128), v1}];
  }

  return v3;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228EC5608(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [v5 endDate];
      v9 = [v7 startDate];
      if ([v8 hk_isAfterDate:v9])
      {
        v10 = [v5 startDate];
        v11 = [v7 endDate];
        v12 = [v10 hk_isBeforeOrEqualToDate:v11];
      }

      else
      {
        v12 = 0;
      }

      v13 = _Block_copy(a1[12]);
      if ((v12 & 1) == 0)
      {
        operator new();
      }
    }

    else
    {
      v13 = _Block_copy(a1[12]);
    }

    *(a1 + 624) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
    v27[3] = &unk_278629370;
    v15 = v5;
    v28 = v15;
    v16 = v13;
    v29 = v16;
    (*(*a1 + 9))(a1, v27);
    if (v5)
    {
      v17 = [v15 startDate];
      [v17 timeIntervalSinceReferenceDate];
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
    v21[3] = &unk_2786293D8;
    v24 = a1;
    v5 = v15;
    v26 = 1;
    v22 = v5;
    v25 = a1;
    v23 = WeakRetained;
    v14 = (*(*a1 + 14))(a1, v21, a3);
    v18 = _Block_copy(v16);
    v19 = a1[12];
    a1[12] = v18;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to invalidate interval: no data source available."];
    v14 = 0;
  }

  return v14;
}

void sub_228EC5A58(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40E5794905);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (!*(a1 + 32))
  {
    goto LABEL_11;
  }

  v3 = [v10 endDate];
  v4 = [*(a1 + 32) startDate];
  v5 = [v3 hk_isBeforeOrEqualToDate:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [v10 startDate];
    v7 = [*(a1 + 32) endDate];
    v8 = [v6 hk_isAfterOrEqualToDate:v7];

    if ((v8 & 1) == 0)
    {
LABEL_11:
      v9 = *(a1 + 40);
      if (v9)
      {
        (*(v9 + 16))(v9, v10);
      }
    }
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) startDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = [*(a1 + 32) endDate];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((v4 + 8));
  v13 = *(a1 + 32);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
  v19[3] = &__block_descriptor_40_e8_v16__0d8l;
  v19[4] = v21;
  v14 = [v11 collectionCalculator:WeakRetained queryForInterval:v13 error:a2 sampleHandler:v20 mergeHandler:v19];

  if (v14)
  {
    v15 = *(a1 + 56);
    if (v15 != v4)
    {
      v16 = [*(a1 + 32) endDate];
      [v16 timeIntervalSinceReferenceDate];
      if (*(v15 + 40) && *(v15 + 120) < v17)
      {
        [*(v15 + 40) dateIntervalAtIndex:*(v15 + 112) + 1];
        objc_claimAutoreleasedReturnValue();
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v15, v15 + 120);
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v9 = *(a1 + 32) - a6;
  if (v9 >= 0.01)
  {
    v11 = a7 - a6;
    if (v11 - v9 >= 0.01)
    {
      a5 = a5 - v9 / v11 * a5;
      v10 = 1;
      a6 = *(a1 + 32);
    }

    else
    {
      a2 = 0;
      v10 = 0;
      a5 = 0.0;
      a6 = 0.0;
      a7 = 0.0;
    }
  }

  else
  {
    v10 = 1;
  }

  v21 = v7;
  v22 = v8;
  *v16 = a5;
  *&v16[1] = a6;
  v17 = a7;
  v18 = a2;
  v19 = v10;
  v20 = 0;
  if ((*(a1 + 56) & 1) == 0)
  {
    v12 = *(a1 + 40);
    v13 = v12 - a6;
    if (v12 - a6 < 0.01)
    {
      return 1;
    }

    v14 = a7 - a6;
    if (v14 - v13 >= 0.01)
    {
      a5 = a5 * (v13 / v14);
    }

    else
    {
      v12 = a7;
    }

    *v16 = a5;
    v17 = v12;
    v19 = v10;
    if ((v10 & 1) == 0)
    {
      return 1;
    }

    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), v16, a3, a4);
  }

  if (v10)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), v16, a3, a4);
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 624) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v10 = *(a1 + 32);
  *v14 = a5;
  *&v14[1] = a6;
  *&v14[2] = a7;
  v14[3] = a2;
  v15 = 1;
  v11 = [MEMORY[0x277CBEAA8] distantFuture];
  [v11 timeIntervalSinceReferenceDate];
  v16 = v12 <= a7;

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::archive(uint64_t a1, int *a2)
{
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0;
  v4 = (a1 + 112);
  *(a1 + 160) = 0;
  *(a1 + 204) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_283BE6208;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  statistics::Statistics::makePrimaryStatistics(a1);
  HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>::archive(v6, (a2 + 2));
  statistics::Statistics::operator=(*(a1 + 128), v6);
  statistics::Statistics::~Statistics(v6);
  v5 = *a2;
  *(a1 + 204) |= 0x100u;
  *(a1 + 136) = v5;
  statistics::Statistics::makeMostRecentDatum(a1);
  v6[0] = &unk_283BEB0A8;
  v10 = 127;
  v7 = vextq_s8(*(a2 + 26), *(a2 + 26), 8uLL);
  v6[1] = *(a2 + 15);
  v6[2] = *(a2 + 16);
  v8 = 0;
  v9 = 0;
  statistics::RawQuantitySample::operator=(*v4, v6);
  PB::Base::~Base(v6);
}

void HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>::archive(uint64_t a1, int8x16_t *a2)
{
  *a1 = &unk_283BE6208;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 160) = 0;
  *(a1 + 204) = 0;
  *(a1 + 16) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  statistics::Statistics::makePrimaryStatistics(a1);
  HDStatisticsCumulative::archive(a2, v5);
  statistics::Statistics::operator=(*(a1 + 128), v5);
  statistics::Statistics::~Statistics(v5);
  statistics::Statistics::makeAuxiliaryStatistics(a1);
  HDStatisticsTimeInterval::archive(&a2[3].u64[1], v5);
  statistics::Statistics::operator=(*v4, v5);
  statistics::Statistics::~Statistics(v5);
}

double HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::unarchive(uint64_t a1, void *a2)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(a1 + 56) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 122) = 0u;
  v6 = a2[16];
  if (v6)
  {
    HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>::unarchive(v12, *(v6 + 8), *(v6 + 128));
    v7 = v14;
    *(v5 + 48) = v13;
    v8 = v12[1];
    *v5 = v12[0];
    *(v5 + 16) = v8;
    *(v5 + 32) = v12[2];
    *(a1 + 64) = v7;
    result = v17;
    v9 = v16;
    *(a1 + 72) = v15;
    *(a1 + 88) = v9;
    *(a1 + 96) = result;
  }

  *a1 = a2[17];
  v10 = a2[14];
  if (v10)
  {
    result = *(v10 + 8);
    v11 = *(v10 + 16);
    *(a1 + 104) = vextq_s8(*(v10 + 24), *(v10 + 24), 8uLL);
    *(a1 + 120) = result;
    *(a1 + 128) = v11;
    *(a1 + 136) = 1;
  }

  return result;
}

double HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>::unarchive(uint64_t a1, HDStatisticsTimeInterval *this, void *a3)
{
  *(a1 + 48) = 0;
  v4 = 0uLL;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  if (a3)
  {
    v5 = a3[3];
    v6 = a3[14];
    if (v6)
    {
      v4 = *(v6 + 24);
      v7 = *(v6 + 8);
      v8 = 1;
      v6 = *(v6 + 16);
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    *a1 = a3[19];
    *(a1 + 8) = v5;
    v4 = vextq_s8(v4, v4, 8uLL);
    *(a1 + 16) = v4;
    *(a1 + 32) = v7;
    *(a1 + 40) = v6;
    *(a1 + 48) = v8;
    *(a1 + 49) = 0;
  }

  if (this)
  {
    HDStatisticsTimeInterval::unarchive(this, &v11);
    *(a1 + 56) = v11;
    v4.i64[0] = v14;
    v9 = v13;
    *(a1 + 64) = v12;
    *(a1 + 80) = v9;
    *(a1 + 88) = v4.i64[0];
  }

  return *v4.i64;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BED268;
  v9 = 900.0;
  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = 0;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 1;
  *(a1 + 578) = 0;
  *(a1 + 580) = 0;
  *(a1 + 584) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BED268;
  v2 = *(a1 + 608);
  if (v2)
  {
    *(a1 + 616) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 544);
  if (v3)
  {
    *(a1 + 552) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 576) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 584) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 74, a2);
  v7 = a2;
  v4 = a1[74];
  v5 = a1[71];
  a1[71] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[71]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = (a1 + 72);
  if (v6 != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v6, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (*(a1 + 40))
  {
    return 1;
  }

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 248) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
  if ((a1 + 184) != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 184), *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (v7)
  {
    return 1;
  }

  v9 = *(*a1 + 128);

  return v9(a1, 0, a3);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 copy];
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 576) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeThroughTime(v3, v4);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

void sub_228EC6AF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = [v6 startDate];
  [v8 timeIntervalSinceReferenceDate];
  if (v9 > *(a2 + 16))
  {
    v14 = 1;
LABEL_8:

    goto LABEL_13;
  }

  v10 = [v7 endDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = *(a2 + 8);

  if (v12 >= v13)
  {
LABEL_4:
    if (*(a1 + 578) == 1)
    {
      if (*(a1 + 577))
      {
        goto LABEL_6;
      }

      if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_earliestStartTimeWithoutInvalidation(a1) > *(a2 + 8))
      {
        v15 = *(a2 + 16);
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 579) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 608, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_13;
  }

LABEL_6:
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 578) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 578) = 1;
  v61 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v60 = v6;
  if (*(a1 + 577))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 600);
  if (!v9)
  {
    v8 = 0;
    v62 = 0;
    goto LABEL_28;
  }

  if (!*(a1 + 40))
  {
LABEL_5:
    v62 = 0;
    v8 = 1;
    goto LABEL_28;
  }

  [v9 sortUsingComparator:&__block_literal_global_631];
  v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v10 = *(a1 + 600);
  v11 = [v10 countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (!v11)
  {

    v12 = 0;
    goto LABEL_27;
  }

  v12 = 0;
  v13 = *v64;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v64 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v63 + 1) + 8 * i);
      v16 = v15;
      if (v12)
      {
        v17 = [v15 startDate];
        v18 = [v12 endDate];
        v19 = [v17 hk_isBeforeOrEqualToDate:v18];

        if (v19)
        {
          v20 = [v16 endDate];
          v21 = [v12 endDate];
          v22 = [v20 hk_isAfterDate:v21];

          if (!v22)
          {
            goto LABEL_21;
          }

          v23 = objc_alloc(MEMORY[0x277CCA970]);
          v24 = [v12 startDate];
          v25 = [v16 endDate];
          v26 = [v23 initWithStartDate:v24 endDate:v25];
        }

        else
        {
          [v62 addObject:v12];
          v26 = v16;
        }

        v12 = v26;
      }

      else
      {
        v12 = v15;
      }

LABEL_21:
    }

    v11 = [v10 countByEnumeratingWithState:&v63 objects:v67 count:16];
  }

  while (v11);

  if (v12)
  {
    [v62 addObject:v12];
  }

LABEL_27:

  v8 = 0;
LABEL_28:
  v27 = *(a1 + 600);
  *(a1 + 600) = 0;

  *(a1 + 577) = 0;
  if (v8)
  {
    v28 = *(a1 + 608);
    *(a1 + 624) = 0;
    *(a1 + 616) = 0;
    *(a1 + 608) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v62 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 608);
      v39 = *(a1 + 616);
      if (v38 != v39)
      {
        while (*(v38 + 8) >= v37)
        {
          v38 += 40;
          if (v38 == v39)
          {
            goto LABEL_44;
          }
        }

        if (v38 != v39)
        {
          v40 = (v38 + 40);
          if ((v38 + 40) != v39)
          {
            do
            {
              if (*(v40 + 1) >= v37)
              {
                v41 = *v40;
                v42 = v40[1];
                *(v38 + 32) = *(v40 + 16);
                *v38 = v41;
                *(v38 + 16) = v42;
                v38 += 40;
              }

              v40 = (v40 + 40);
            }

            while (v40 != v39);
            v39 = *(a1 + 616);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 616) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 608);
  v29 = *(a1 + 616);
  *(a1 + 624) = 0;
  *(a1 + 608) = 0;
  *(a1 + 616) = 0;
  if ([v62 count])
  {
LABEL_46:
    v44 = v62;
    if (v44)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v45 = v44;
      v46 = [v45 countByEnumeratingWithState:&v63 objects:v67 count:16];
      if (v46)
      {
        v47 = *v64;
        while (2)
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v64 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v63 + 1) + 8 * j);
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v49, v61);

            if (!v50)
            {

              goto LABEL_68;
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v63 objects:v67 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_58;
    }

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, 0, v61))
    {
      goto LABEL_58;
    }

LABEL_68:
    v54 = 0;
  }

  else
  {
LABEL_58:
    v52 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v29 - v28) >> 3));
    if (v29 == v28)
    {
      v53 = 0;
    }

    else
    {
      v53 = v52;
    }

    v54 = 1;
    std::__introsort<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,false>(v28, v29, v53, 1, v43);
    if (v29 != v28)
    {
      v55 = v28;
      v51 = v61;
      do
      {
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, v55, 1, v51);
        v54 = v56;
        v55 += 40;
        if (v55 == v29)
        {
          v57 = 0;
        }

        else
        {
          v57 = v56;
        }

        v51 = v61;
      }

      while ((v57 & 1) != 0);
    }
  }

  if (*(a1 + 40) && *(a1 + 552) != *(a1 + 544))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
  }

  *(a1 + 578) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 580) == 1)
    {
      *(a1 + 580) = 0;
      v6 = v60;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
      v7 = 1;
      goto LABEL_80;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v6 = v60;
LABEL_80:
  *(a1 + 578) = 0;
LABEL_81:

  v58 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_228EC735C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 578) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  if (!v6)
  {

    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    if (*(a1 + 578))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 578) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 600);
    *(a1 + 600) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 577) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 577) & 1) == 0)
  {
    v8 = *(a1 + 600);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 600);
      *(a1 + 600) = v9;

      v8 = *(a1 + 600);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 576) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsCumulative24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 576) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 576) forKey:@"needs_config"];
  v13 = v3;
  v33 = &unk_283BF1A08;
  v34 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v4 = *(a1 + 112);
  LOBYTE(v39) = 1;
  v35 = v4;
  v36 = 0;
  statistics::StatisticsEngine::makeCurrentBucket(&v33);
  v14 = &unk_283BE6258;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v32 = 511;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v5 = vextq_s8(*(a1 + 120), *(a1 + 120), 8uLL);
  v6 = *(a1 + 136);
  v30 = *(a1 + 144);
  v31 = *(a1 + 145);
  v29 = *(a1 + 148) == 0;
  v7 = vextq_s8(*(a1 + 160), *(a1 + 160), 8uLL);
  v15 = v5;
  v16 = v7;
  v7.i64[0] = *(a1 + 176);
  v20 = v6;
  v21 = v7.i64[0];
  v8 = *(a1 + 216);
  if (v8 != *(a1 + 224))
  {
    v40 = &unk_283BEB0A8;
    v45 = 127;
    v42 = vextq_s8(*v8, *v8, 8uLL);
    v41 = v8[1];
    v44 = 0;
    HIBYTE(v43) = v8[2].i8[9];
    LOBYTE(v43) = v8[2].i8[10];
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample&>();
  }

  statistics::StatisticsBucket::makeStatistics(&v14);
  HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>::archive(&v40, (a1 + 240));
  statistics::Statistics::operator=(*(&v23 + 1), &v40);
  statistics::Statistics::~Statistics(&v40);
  v9 = *(a1 + 336);
  if (v9 != a1 + 344)
  {
    HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>::archive(&v40, (v9 + 40));
    v10 = *(v9 + 32);
    v47 |= 0x200u;
    v46 = v10;
    PB::PtrVector<statistics::Statistics>::emplace_back<statistics::Statistics&>();
  }

  v11 = *(a1 + 184);
  if (v11 != *(a1 + 192))
  {
    v40 = &unk_283BF1F08;
    v42.i32[0] = 3;
    v41 = vextq_s8(*v11, *v11, 8uLL);
    PB::PtrVector<statistics::Interval>::emplace_back<statistics::Interval&>();
  }

  statistics::StatisticsBucket::operator=(v34, &v14);
  statistics::StatisticsBucket::~StatisticsBucket(&v14);
  v12 = *(a1 + 544);
  if (v12 != *(a1 + 552))
  {
    v40 = &unk_283BEB0A8;
    v45 = 127;
    v42 = vextq_s8(*v12, *v12, 8uLL);
    v41 = v12[1];
    v43 = 0;
    v44 = 0;
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample>();
  }

  PB::Writer::Writer(&v40);
  statistics::StatisticsEngine::writeTo(&v33, &v40);
  [v13 encodeBytes:v41.i64[0] length:&v40[-v41.i64[0]] forKey:@"hdsce_archived_representation"];
  PB::Writer::~Writer(&v40);
  statistics::StatisticsEngine::~StatisticsEngine(&v33);
}

void sub_228EC7BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v31 = a2;
  *(a1 + 576) = [v31 decodeBoolForKey:@"needs_config"];
  v3 = v31;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::HDStatisticsBucket(&v34.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *v35 = 0u;
  v36 = 0u;
  v72 = 0;
  PB::Reader::Reader(v71, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v72]);
  v64 = &unk_283BF1A08;
  v65 = 0;
  v69 = 0;
  v67 = 0;
  v68 = 0;
  v70 = 0;
  statistics::StatisticsEngine::readFrom(&v64, v71);
  v34.n128_u64[0] = v66;
  if (v65)
  {
    v32 = v3;
    v40 = 0;
    v43 = 0uLL;
    v45 = 0;
    v44 = 0;
    memset(&v46[40], 0, 32);
    v49[1] = 0;
    v49[0] = 0;
    memset(v46, 0, 74);
    v47 = 0;
    v48 = v49;
    v50 = 0u;
    v51 = 0u;
    v52 = 1065353216;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
    v57 = 1065353216;
    v58 = 0u;
    v59 = 0u;
    v60 = 1065353216;
    v61 = 0u;
    v62 = 0u;
    v63 = 1065353216;
    v37 = vextq_s8(*(v65 + 8), *(v65 + 8), 8uLL);
    v4 = *(v65 + 72);
    v38 = *(v65 + 64);
    LOWORD(v39) = *(v65 + 185);
    v41 = vextq_s8(*(v65 + 24), *(v65 + 24), 8uLL);
    v42 = v4;
    v5 = *(v65 + 80);
    v6 = *(v65 + 88);
    for (i = v65; v5 != v6; ++v5)
    {
      v7 = *v5;
      LOWORD(v75) = 1;
      BYTE8(v75) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v73 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v74 = v8;
      *(&v74 + 1) = v9;
      BYTE9(v75) = *(v7 + 41);
      BYTE10(v75) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v46, v73.i8);
    }

    v10 = i[13];
    if (v10)
    {
      HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>::unarchive(&v73, *(v10 + 8), *(v10 + 128));
      *&v46[12] = v73;
      *&v46[20] = v74;
      *&v46[28] = v75;
      *&v46[36] = v76;
      *&v46[40] = v77;
      if (*&v46[44])
      {
        *&v46[48] = *&v46[44];
        operator delete(*&v46[44]);
      }

      *&v46[44] = v78;
      *&v46[52] = v79;
      v79 = 0;
      v78 = 0uLL;
      v47 = v80;
    }

    v11 = i[17];
    for (j = i[18]; v11 != j; ++v11)
    {
      v13 = *v11;
      HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>::unarchive(&v73, *(*v11 + 8), *(*v11 + 128));
      v14 = *(v13 + 144);
      v15 = v49[0];
      if (!v49[0])
      {
LABEL_15:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v16 = v15;
          v17 = v15[4];
          if (v17 <= v14)
          {
            break;
          }

          v15 = *v16;
          if (!*v16)
          {
            goto LABEL_15;
          }
        }

        if (v17 >= v14)
        {
          break;
        }

        v15 = v16[1];
        if (!v15)
        {
          goto LABEL_15;
        }
      }

      v18 = v76;
      v20 = v74;
      v19 = v75;
      v21 = v16[13];
      *(v16 + 5) = v73;
      *(v16 + 7) = v20;
      *(v16 + 9) = v19;
      v16[11] = v18;
      v16[12] = v77;
      if (v21)
      {
        v16[14] = v21;
        operator delete(v21);
        v16[13] = 0;
        v16[14] = 0;
        v16[15] = 0;
      }

      *(v16 + 13) = v78;
      v16[15] = v79;
      v79 = 0;
      v78 = 0uLL;
      v16[16] = v80;
    }

    v22 = i[5];
    for (k = i[6]; v22 != k; v22 += 8)
    {
      v25 = *(*v22 + 8);
      v24 = *(*v22 + 16);
      if (v25 >= v24)
      {
        v26 = *(*v22 + 16);
      }

      else
      {
        v26 = *(*v22 + 8);
      }

      if (v24 < v25)
      {
        v24 = *(*v22 + 8);
      }

      HKIntervalMask<double>::_insertInterval(&v43, v26, v24);
    }

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::operator=(&v34.n128_i64[1], &v37);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v37);
    v3 = v32;
  }

  v27 = v67;
  for (m = v68; v27 != m; v27 += 8)
  {
    v29 = *(*v27 + 8);
    v30 = *(*v27 + 16);
    v37 = vextq_s8(*(*v27 + 24), *(*v27 + 24), 8uLL);
    v38 = v29;
    v39 = v30;
    LOWORD(v40) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](v35, v37.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v64);

  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v34);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v34.n128_i64[1]);
}

void sub_228EC8104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(v7 + 384);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a3);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v7 + 304);
  v9 = STACK[0x318];
  if (STACK[0x318])
  {
    STACK[0x320] = v9;
    operator delete(v9);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v7 + 240);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::destroy(STACK[0x2E0]);
  v10 = STACK[0x2B8];
  if (STACK[0x2B8])
  {
    STACK[0x2C0] = v10;
    operator delete(v10);
  }

  v11 = STACK[0x260];
  if (STACK[0x260])
  {
    STACK[0x268] = v11;
    operator delete(v11);
  }

  objc_destroyWeak((v7 + 88));
  v12 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v12;
    operator delete(v12);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x3B0]);
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 28) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 154) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = a1 + 224;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 1065353216;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = 1065353216;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 1065353216;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 432);
  if (v2)
  {
    *(a1 + 440) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 384);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 344);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 304);
  v2 = *(a1 + 280);
  if (v2)
  {
    *(a1 + 288) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 240);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 224));
  v3 = *(a1 + 184);
  if (v3)
  {
    *(a1 + 192) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  objc_destroyWeak((a1 + 88));
  v5 = *(a1 + 64);
  if (v5)
  {
    *(a1 + 72) = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::destroy(a1[1]);
    v2 = a1[13];
    if (v2)
    {
      a1[14] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_configureForStartTime(uint64_t a1)
{
  v28 = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v4 = [v2 dateIntervalContainingDate:v3 index:&v28];

    v5 = [v4 startDate];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
LABEL_5:
    v13 = v9;

    goto LABEL_6;
  }

  v10 = *(a1 + 64);
  v4 = v10;
  if (v10)
  {
    v11 = [v10 startDate];
    [v11 timeIntervalSinceReferenceDate];
    v7 = v12;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
    goto LABEL_5;
  }

  v7 = -1.79769313e308;
  v13 = 1.79769313e308;
LABEL_6:

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

  if (*(a1 + 32) == 1)
  {
    v23 = 1;
  }

  v22 = *(a1 + 56);
  v24 = *(a1 + 24) & 1;
  if (v27 != (a1 + 72))
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v27, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 4);
  }

  objc_storeStrong(&v26, *(a1 + 592));
  if (!*(a1 + 40))
  {
    v25 = 0;
  }

  v15 = v28;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v17);
  *(a1 + 576) = 0;
  return HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v21);
}

void *HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::operator=(void *a1, __n128 *a2)
{
  *a1 = a2->n128_u64[0];
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::operator=((a1 + 1), &a2->n128_i64[1]);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 54), a2 + 27);
  v4 = a2[28].n128_u64[1];
  a2[28].n128_u64[1] = 0;
  v5 = a1[57];
  a1[57] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 56);
  v6 = *(a2 + 40);
  *(a1 + 64) = 0;
  *(a1 + 40) = v6;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 64, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 4);
  objc_copyWeak((a1 + 88), (a2 + 88));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v7 != v8)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 4);
    if (v9 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v9);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  v10 = *(a2 + 120);
  v11 = *(a2 + 136);
  v12 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v12;
  *(a1 + 136) = v11;
  *(a1 + 120) = v10;
  v13 = *(a2 + 176);
  *(a1 + 184) = 0;
  *(a1 + 176) = v13;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 184, *(a2 + 184), *(a2 + 192), (*(a2 + 192) - *(a2 + 184)) >> 4);
  v14 = *(a2 + 208);
  *(a1 + 224) = 0;
  v15 = (a1 + 224);
  *(a1 + 208) = v14;
  *(a1 + 232) = 0;
  *(a1 + 216) = a1 + 224;
  v16 = *(a2 + 216);
  if (v16 != (a2 + 224))
  {
    v17 = 0;
    v18 = (a1 + 224);
    while (1)
    {
      v19 = (a1 + 224);
      if (v18 == v15)
      {
        goto LABEL_12;
      }

      v20 = v17;
      v21 = (a1 + 224);
      if (v17)
      {
        do
        {
          v19 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        do
        {
          v19 = v21[2];
          v22 = *v19 == v21;
          v21 = v19;
        }

        while (v22);
      }

      v23 = v16[4];
      if (v19[4] < v23)
      {
LABEL_12:
        if (v17)
        {
          v24 = v19 + 1;
        }

        else
        {
          v24 = (a1 + 224);
        }

        if (!*v24)
        {
LABEL_23:
          operator new();
        }
      }

      else
      {
        if (!v17)
        {
          goto LABEL_23;
        }

        while (1)
        {
          while (1)
          {
            v25 = v17;
            v26 = v17[4];
            if (v26 <= v23)
            {
              break;
            }

            v17 = *v25;
            if (!*v25)
            {
              goto LABEL_23;
            }
          }

          if (v26 >= v23)
          {
            break;
          }

          v17 = v25[1];
          if (!v17)
          {
            goto LABEL_23;
          }
        }
      }

      v27 = v16[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v16[2];
          v22 = *v28 == v16;
          v16 = v28;
        }

        while (!v22);
      }

      if (v28 == (a2 + 224))
      {
        break;
      }

      v17 = *v15;
      v18 = *(a1 + 216);
      v16 = v28;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 240, a2 + 240);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 280, *(a2 + 280), *(a2 + 288), (*(a2 + 288) - *(a2 + 280)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 304, a2 + 304);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 344, a2 + 344);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 384, a2 + 384);
  return a1;
}