__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 3);
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v6 = *(*a4 + 384);
  v7 = *(*a4 + 392);
  v8 = v6;
  if (v6 == v7)
  {
    v9 = *(*a4 + 384);
  }

  else
  {
    while (*v8 != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(*a4 + 392);
        break;
      }
    }

    v9 = *(*a4 + 384);
    while (*v9 != v5)
    {
      v9 += 8;
      if (v9 == v7)
      {
        v9 = *(*a4 + 392);
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
      v14 = *(*a4 + 384);
      v15 = *(*a4 + 392);
      if (v14 == v15)
      {
        v17 = *(*a4 + 384);
        v16 = v17;
      }

      else
      {
        v16 = *(*a4 + 384);
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
        v17 = *(*a4 + 392);
LABEL_27:
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v15)
          {
            v16 = *(*a4 + 392);
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
          v24 = *(*a4 + 384);
          v25 = *(*a4 + 392);
          if (v24 == v25)
          {
            v27 = *(*a4 + 384);
            v26 = v27;
          }

          else
          {
            v26 = *(*a4 + 384);
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
            v27 = *(*a4 + 392);
LABEL_38:
            while (*v26 != v23)
            {
              v26 += 8;
              if (v26 == v25)
              {
                v26 = *(*a4 + 392);
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
      v11 = *(*a4 + 384);
      if (v6 == v7)
      {
        v12 = *(*a4 + 384);
      }

      else
      {
        while (*v11 != v10)
        {
          v11 += 8;
          if (v11 == v7)
          {
            v11 = *(*a4 + 392);
            break;
          }
        }

        v12 = *(*a4 + 384);
        while (*v12 != v4)
        {
          v12 += 8;
          if (v12 == v7)
          {
            v12 = *(*a4 + 392);
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
      v37 = *(*a4 + 384);
      v38 = *(*a4 + 392);
      if (v37 == v38)
      {
        v40 = *(*a4 + 384);
        v39 = v40;
      }

      else
      {
        v39 = *(*a4 + 384);
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
        v40 = *(*a4 + 392);
LABEL_50:
        while (*v39 != v36)
        {
          v39 += 8;
          if (v39 == v38)
          {
            v39 = *(*a4 + 392);
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

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 384);
    v14 = *(*a5 + 392);
    if (v13 == v14)
    {
      v16 = *(*a5 + 384);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 384);
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
      v16 = *(*a5 + 392);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 392);
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
        v22 = *(*a5 + 384);
        v23 = *(*a5 + 392);
        if (v22 == v23)
        {
          v25 = *(*a5 + 384);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 384);
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
          v25 = *(*a5 + 392);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 392);
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
            v31 = *(*a5 + 384);
            v32 = *(*a5 + 392);
            if (v31 == v32)
            {
              v34 = *(*a5 + 384);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 384);
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
              v34 = *(*a5 + 392);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 392);
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

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *(a5 + 24);
  v14 = *(a4 + 24);
  if (v13 != v14)
  {
    v15 = *(*a6 + 384);
    v16 = *(*a6 + 392);
    if (v15 == v16)
    {
      v18 = *(*a6 + 384);
      v17 = v18;
    }

    else
    {
      v17 = *(*a6 + 384);
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
      v18 = *(*a6 + 392);
LABEL_7:
      while (*v17 != v14)
      {
        v17 += 8;
        if (v17 == v16)
        {
          v17 = *(*a6 + 392);
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
        v24 = *(*a6 + 384);
        v25 = *(*a6 + 392);
        if (v24 == v25)
        {
          v27 = *(*a6 + 384);
          v26 = v27;
        }

        else
        {
          v26 = *(*a6 + 384);
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
          v27 = *(*a6 + 392);
LABEL_18:
          while (*v26 != v23)
          {
            v26 += 8;
            if (v26 == v25)
            {
              v26 = *(*a6 + 392);
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
            v33 = *(*a6 + 384);
            v34 = *(*a6 + 392);
            if (v33 == v34)
            {
              v36 = *(*a6 + 384);
              v35 = v36;
            }

            else
            {
              v35 = *(*a6 + 384);
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
              v36 = *(*a6 + 392);
LABEL_29:
              while (*v35 != v32)
              {
                v35 += 8;
                if (v35 == v34)
                {
                  v35 = *(*a6 + 392);
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
                v42 = *(*a6 + 384);
                v43 = *(*a6 + 392);
                if (v42 == v43)
                {
                  v45 = *(*a6 + 384);
                  v44 = v45;
                }

                else
                {
                  v44 = *(*a6 + 384);
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
                  v45 = *(*a6 + 392);
LABEL_40:
                  while (*v44 != v41)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(*a6 + 392);
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*>(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v9 = *(*a3 + 384);
          v10 = *(*a3 + 392);
          if (v9 == v10)
          {
            v12 = *(*a3 + 384);
            v11 = v12;
          }

          else
          {
            v11 = *(*a3 + 384);
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
            v12 = *(*a3 + 392);
LABEL_10:
            while (*v11 != v8)
            {
              v11 += 8;
              if (v11 == v10)
              {
                v11 = *(*a3 + 392);
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
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a2 - 48), a3);
      goto LABEL_50;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a2 - 48, a3);
      goto LABEL_50;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a1 + 144, a2 - 48, a3);
      goto LABEL_50;
  }

LABEL_18:
  v13 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), a3);
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
      v18 = *(*a3 + 384);
      v19 = *(*a3 + 392);
      if (v18 == v19)
      {
        v21 = *(*a3 + 384);
        v20 = v21;
      }

      else
      {
        v20 = *(*a3 + 384);
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
        v21 = *(*a3 + 392);
LABEL_26:
        while (*v20 != v17)
        {
          v20 += 8;
          if (v20 == v19)
          {
            v20 = *(*a3 + 392);
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
            v25 = *(*a3 + 384);
            v26 = *(*a3 + 392);
            if (v25 == v26)
            {
              v28 = *(*a3 + 384);
              v27 = v28;
            }

            else
            {
              v27 = *(*a3 + 384);
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
              v28 = *(*a3 + 392);
LABEL_39:
              while (*v27 != v24)
              {
                v27 += 8;
                if (v27 == v26)
                {
                  v27 = *(*a3 + 392);
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

void std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(uint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
  v268 = *MEMORY[0x277D85DE8];
LABEL_2:
  v8 = a2 - 3;
  v9 = a2 - 6;
  v10 = a2 - 9;
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 4);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      goto LABEL_190;
    }

    if (v13 == 2)
    {
      if (*(a2 - 5) < *(v11 + 8))
      {
        *v256 = *(v11 + 16);
        *&v256[16] = *(v11 + 32);
        v222 = *v11;
        v116 = *(a2 - 3);
        v117 = *(a2 - 2);
        *(v11 + 27) = *(a2 - 21);
        *v11 = v116;
        *(v11 + 16) = v117;
        *(a2 - 21) = *&v256[11];
        *(a2 - 3) = v222;
        *(a2 - 2) = *v256;
      }

      goto LABEL_190;
    }

LABEL_10:
    if (v12 <= 1151)
    {
      v127 = (v11 + 48);
      v129 = v11 == a2 || v127 == a2;
      if (a4)
      {
        if (!v129)
        {
          v130 = 0;
          v131 = v11;
          do
          {
            v132 = v127;
            v133 = *(v131 + 56);
            if (v133 < *(v131 + 8))
            {
              v134 = *v127;
              *v225 = *(v131 + 64);
              *&v225[16] = *(v131 + 80);
              v135 = v130;
              while (1)
              {
                v136 = (v11 + v135);
                v137 = *(v11 + v135 + 16);
                v136[3] = *(v11 + v135);
                v136[4] = v137;
                *(v136 + 75) = *(v11 + v135 + 27);
                if (!v135)
                {
                  break;
                }

                v135 -= 48;
                if (v133 >= *(v136 - 5))
                {
                  v138 = v11 + v135 + 48;
                  goto LABEL_130;
                }
              }

              v138 = v11;
LABEL_130:
              *v138 = v134;
              *(v138 + 8) = v133;
              *(v138 + 16) = *v225;
              *(v138 + 27) = *&v225[11];
            }

            v127 = v132 + 3;
            v130 += 48;
            v131 = v132;
          }

          while (v132 + 3 != a2);
        }
      }

      else if (!v129)
      {
        do
        {
          v181 = v127;
          v182 = *(a1 + 56);
          if (v182 < *(a1 + 8))
          {
            v183 = *v127;
            *v229 = *(a1 + 64);
            *&v229[16] = *(a1 + 80);
            v184 = v127;
            do
            {
              v185 = *(v184 - 2);
              *v184 = *(v184 - 3);
              v184[1] = v185;
              *(v184 + 27) = *(v184 - 21);
              v186 = *(v184 - 11);
              v184 -= 3;
            }

            while (v182 < v186);
            *v184 = v183;
            *(v184 + 1) = v182;
            *(v184 + 27) = *&v229[11];
            v184[1] = *v229;
          }

          v127 += 3;
          a1 = v181;
        }

        while (v181 + 3 != a2);
      }

      goto LABEL_190;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v139 = (v13 - 2) >> 1;
        v140 = v139;
        do
        {
          v141 = v140;
          if (v139 >= v140)
          {
            v142 = (2 * v140) | 1;
            v143 = v11 + 48 * v142;
            if (2 * v141 + 2 < v13 && *(v143 + 8) < *(v143 + 56))
            {
              v143 += 48;
              v142 = 2 * v141 + 2;
            }

            v144 = v11 + 48 * v141;
            v145 = *(v144 + 8);
            if (*(v143 + 8) >= v145)
            {
              v146 = *v144;
              *v226 = *(v144 + 16);
              *&v226[16] = *(v144 + 32);
              do
              {
                v147 = v144;
                v144 = v143;
                v148 = *v143;
                v149 = *(v143 + 16);
                *(v147 + 27) = *(v143 + 27);
                *v147 = v148;
                v147[1] = v149;
                if (v139 < v142)
                {
                  break;
                }

                v150 = 2 * v142;
                v142 = (2 * v142) | 1;
                v143 = v11 + 48 * v142;
                v151 = v150 + 2;
                if (v151 < v13 && *(v143 + 8) < *(v143 + 56))
                {
                  v143 += 48;
                  v142 = v151;
                }
              }

              while (*(v143 + 8) >= v145);
              *v144 = v146;
              *(v144 + 8) = v145;
              *(v144 + 16) = *v226;
              *(v144 + 27) = *&v226[11];
            }
          }

          v140 = v141 - 1;
        }

        while (v141);
        v152 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 4);
        do
        {
          v153 = 0;
          v154 = *(v11 + 16);
          *v259 = v154;
          *&v259[16] = *(v11 + 32);
          v227 = *v11;
          v155 = v11;
          do
          {
            v156 = &v155[3 * v153];
            v157 = (v156 + 6);
            v158 = (2 * v153) | 1;
            v153 = 2 * v153 + 2;
            if (v153 >= v152)
            {
              v153 = v158;
            }

            else
            {
              v159 = v156[7];
              v160 = v156[13];
              v161 = (v156 + 12);
              if (v159 >= v160)
              {
                v153 = v158;
              }

              else
              {
                v157 = v161;
              }
            }

            v162 = *v157;
            v163 = v157[1];
            *(v155 + 27) = *(v157 + 27);
            *v155 = v162;
            v155[1] = v163;
            v155 = v157;
          }

          while (v153 <= ((v152 - 2) >> 1));
          a2 -= 3;
          if (v157 == a2)
          {
            *(v157 + 27) = *&v259[11];
            *v157 = v227;
            v157[1] = *v259;
          }

          else
          {
            v164 = *a2;
            v165 = a2[1];
            *(v157 + 27) = *(a2 + 27);
            *v157 = v164;
            v157[1] = v165;
            *(a2 + 27) = *&v259[11];
            *a2 = v227;
            a2[1] = *v259;
            v166 = v157 - v11 + 48;
            if (v166 >= 49)
            {
              v167 = (-2 - 0x5555555555555555 * (v166 >> 4)) >> 1;
              v168 = v11 + 48 * v167;
              v169 = *(v157 + 1);
              if (*(v168 + 8) < v169)
              {
                v170 = *v157;
                *v202 = v157[1];
                *&v202[16] = v157[2];
                do
                {
                  v171 = v157;
                  v157 = v168;
                  v172 = *v168;
                  v173 = *(v168 + 16);
                  *(v171 + 27) = *(v168 + 27);
                  *v171 = v172;
                  v171[1] = v173;
                  if (!v167)
                  {
                    break;
                  }

                  v167 = (v167 - 1) >> 1;
                  v168 = v11 + 48 * v167;
                }

                while (*(v168 + 8) < v169);
                *v157 = v170;
                *(v157 + 1) = v169;
                v157[1] = *v202;
                *(v157 + 27) = *&v202[11];
              }
            }
          }
        }

        while (v152-- > 2);
      }

      goto LABEL_190;
    }

    v14 = v13 >> 1;
    v15 = v11 + 48 * (v13 >> 1);
    v16 = *(a2 - 5);
    if (v12 >= 0x1801)
    {
      v17 = *(v15 + 8);
      if (v17 >= *(v11 + 8))
      {
        if (v16 < v17)
        {
          *v235 = *(v15 + 16);
          *&v235[16] = *(v15 + 32);
          v205 = *v15;
          v23 = *v8;
          v24 = *(a2 - 2);
          *(v15 + 27) = *(a2 - 21);
          *v15 = v23;
          *(v15 + 16) = v24;
          *(a2 - 21) = *&v235[11];
          *v8 = v205;
          *(a2 - 2) = *v235;
          if (*(v15 + 8) < *(v11 + 8))
          {
            *v236 = *(v11 + 16);
            *&v236[16] = *(v11 + 32);
            v206 = *v11;
            v25 = *v15;
            v26 = *(v15 + 16);
            *(v11 + 27) = *(v15 + 27);
            *v11 = v25;
            *(v11 + 16) = v26;
            *(v15 + 27) = *&v236[11];
            *v15 = v206;
            *(v15 + 16) = *v236;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          *v233 = *(v11 + 16);
          *&v233[16] = *(v11 + 32);
          v203 = *v11;
          v18 = *v8;
          v19 = *(a2 - 2);
          *(v11 + 27) = *(a2 - 21);
          *v11 = v18;
          *(v11 + 16) = v19;
          goto LABEL_27;
        }

        *v239 = *(v11 + 16);
        *&v239[16] = *(v11 + 32);
        v209 = *v11;
        v31 = *v15;
        v32 = *(v15 + 16);
        *(v11 + 27) = *(v15 + 27);
        *v11 = v31;
        *(v11 + 16) = v32;
        *(v15 + 27) = *&v239[11];
        *v15 = v209;
        *(v15 + 16) = *v239;
        if (*(a2 - 5) < *(v15 + 8))
        {
          *v233 = *(v15 + 16);
          *&v233[16] = *(v15 + 32);
          v203 = *v15;
          v33 = *v8;
          v34 = *(a2 - 2);
          *(v15 + 27) = *(a2 - 21);
          *v15 = v33;
          *(v15 + 16) = v34;
LABEL_27:
          *(a2 - 21) = *&v233[11];
          *v8 = v203;
          *(a2 - 2) = *v233;
        }
      }

      v35 = v11 + 48 * v14;
      v36 = (v35 - 48);
      v37 = *(v35 - 40);
      v38 = *(a2 - 11);
      if (v37 >= *(v11 + 56))
      {
        if (v38 < v37)
        {
          *v241 = *(v35 - 32);
          *&v241[16] = *(v35 - 16);
          v210 = *v36;
          v43 = *v9;
          v44 = *(a2 - 5);
          *(v35 - 21) = *(a2 - 69);
          *v36 = v43;
          *(v35 - 32) = v44;
          *(a2 - 69) = *&v241[11];
          *v9 = v210;
          *(a2 - 5) = *v241;
          if (*(v35 - 40) < *(v11 + 56))
          {
            *v242 = *(v11 + 64);
            *&v242[16] = *(v11 + 80);
            v45 = *(v11 + 48);
            v47 = *v36;
            v46 = *(v35 - 32);
            *(v11 + 75) = *(v35 - 21);
            *(v11 + 48) = v47;
            *(v11 + 64) = v46;
            *(v35 - 21) = *&v242[11];
            *v36 = v45;
            *(v35 - 32) = *v242;
          }
        }
      }

      else
      {
        if (v38 < v37)
        {
          v39 = *(v11 + 64);
          *&v240[8] = *(&v39 + 1);
          *&v240[16] = *(v11 + 80);
          v40 = *(v11 + 48);
          v42 = *v9;
          v41 = *(a2 - 5);
          *(v11 + 75) = *(a2 - 69);
          *(v11 + 48) = v42;
          *(v11 + 64) = v41;
          goto LABEL_39;
        }

        *v244 = *(v11 + 64);
        *&v244[16] = *(v11 + 80);
        v52 = *(v11 + 48);
        v54 = *v36;
        v53 = *(v35 - 32);
        *(v11 + 75) = *(v35 - 21);
        *(v11 + 48) = v54;
        *(v11 + 64) = v53;
        *(v35 - 21) = *&v244[11];
        *v36 = v52;
        *(v35 - 32) = *v244;
        if (*(a2 - 11) < *(v35 - 40))
        {
          *v240 = *(v35 - 32);
          *&v240[16] = *(v35 - 16);
          v212 = *v36;
          v55 = *v9;
          v56 = *(a2 - 5);
          *(v35 - 21) = *(a2 - 69);
          *v36 = v55;
          *(v35 - 32) = v56;
          v40 = v212;
          v39 = *v240;
LABEL_39:
          *(a2 - 69) = *&v240[11];
          *v9 = v40;
          *(a2 - 5) = v39;
        }
      }

      v57 = v11 + 48 * v14;
      v58 = *(v57 + 56);
      v59 = *(a2 - 17);
      if (v58 >= *(v11 + 104))
      {
        if (v59 < v58)
        {
          *v246 = *(v57 + 64);
          *&v246[16] = *(v57 + 80);
          v213 = *(v57 + 48);
          v64 = *v10;
          v65 = *(a2 - 8);
          *(v57 + 75) = *(a2 - 117);
          *(v57 + 48) = v64;
          *(v57 + 64) = v65;
          *(a2 - 117) = *&v246[11];
          *v10 = v213;
          *(a2 - 8) = *v246;
          if (*(v57 + 56) < *(v11 + 104))
          {
            *v247 = *(v11 + 112);
            *&v247[16] = *(v11 + 128);
            v66 = *(v11 + 96);
            v68 = *(v57 + 48);
            v67 = *(v57 + 64);
            *(v11 + 123) = *(v57 + 75);
            *(v11 + 96) = v68;
            *(v11 + 112) = v67;
            *(v57 + 75) = *&v247[11];
            *(v57 + 48) = v66;
            *(v57 + 64) = *v247;
          }
        }
      }

      else
      {
        if (v59 < v58)
        {
          v60 = *(v11 + 112);
          *&v245[8] = *(&v60 + 1);
          *&v245[16] = *(v11 + 128);
          v61 = *(v11 + 96);
          v63 = *v10;
          v62 = *(a2 - 8);
          *(v11 + 123) = *(a2 - 117);
          *(v11 + 96) = v63;
          *(v11 + 112) = v62;
          goto LABEL_48;
        }

        *v248 = *(v11 + 112);
        *&v248[16] = *(v11 + 128);
        v69 = *(v11 + 96);
        v71 = *(v57 + 48);
        v70 = *(v57 + 64);
        *(v11 + 123) = *(v57 + 75);
        *(v11 + 96) = v71;
        *(v11 + 112) = v70;
        *(v57 + 75) = *&v248[11];
        *(v57 + 48) = v69;
        *(v57 + 64) = *v248;
        if (*(a2 - 17) < *(v57 + 56))
        {
          *v245 = *(v57 + 64);
          *&v245[16] = *(v57 + 80);
          v214 = *(v57 + 48);
          v72 = *v10;
          v73 = *(a2 - 8);
          *(v57 + 75) = *(a2 - 117);
          *(v57 + 48) = v72;
          *(v57 + 64) = v73;
          v61 = v214;
          v60 = *v245;
LABEL_48:
          *(a2 - 117) = *&v245[11];
          *v10 = v61;
          *(a2 - 8) = v60;
        }
      }

      v74 = *(v15 + 8);
      v75 = *(v57 + 56);
      if (v74 >= *(v35 - 40))
      {
        if (v75 < v74)
        {
          *v250 = *(v15 + 16);
          *&v250[16] = *(v15 + 32);
          v216 = *v15;
          v77 = *(v57 + 64);
          *v15 = *(v57 + 48);
          *(v15 + 16) = v77;
          *(v15 + 27) = *(v57 + 75);
          *(v57 + 75) = *&v250[11];
          *(v57 + 48) = v216;
          *(v57 + 64) = *v250;
          if (*(v15 + 8) < *(v35 - 40))
          {
            *v251 = *(v35 - 32);
            *&v251[16] = *(v35 - 16);
            v217 = *v36;
            v78 = *(v15 + 16);
            *v36 = *v15;
            *(v35 - 32) = v78;
            *(v35 - 21) = *(v15 + 27);
            *(v15 + 27) = *&v251[11];
            *v15 = v217;
            *(v15 + 16) = *v251;
          }
        }
      }

      else
      {
        if (v75 < v74)
        {
          *v249 = *(v35 - 32);
          *&v249[16] = *(v35 - 16);
          v215 = *v36;
          v76 = *(v57 + 64);
          *v36 = *(v57 + 48);
          *(v35 - 32) = v76;
          *(v35 - 21) = *(v57 + 75);
          goto LABEL_57;
        }

        *v252 = *(v35 - 32);
        *&v252[16] = *(v35 - 16);
        v218 = *v36;
        v79 = *(v15 + 16);
        *v36 = *v15;
        *(v35 - 32) = v79;
        *(v35 - 21) = *(v15 + 27);
        *(v15 + 27) = *&v252[11];
        *v15 = v218;
        *(v15 + 16) = *v252;
        if (*(v57 + 56) < *(v15 + 8))
        {
          *v249 = *(v15 + 16);
          *&v249[16] = *(v15 + 32);
          v215 = *v15;
          v80 = *(v57 + 64);
          *v15 = *(v57 + 48);
          *(v15 + 16) = v80;
          *(v15 + 27) = *(v57 + 75);
LABEL_57:
          *(v57 + 75) = *&v249[11];
          *(v57 + 48) = v215;
          *(v57 + 64) = *v249;
        }
      }

      *v253 = *(v11 + 16);
      *&v253[16] = *(v11 + 32);
      v219 = *v11;
      v81 = *v15;
      v82 = *(v15 + 16);
      *(v11 + 27) = *(v15 + 27);
      *v11 = v81;
      *(v11 + 16) = v82;
      *(v15 + 27) = *&v253[11];
      *v15 = v219;
      *(v15 + 16) = *v253;
      goto LABEL_59;
    }

    v20 = *(v11 + 8);
    if (v20 >= *(v15 + 8))
    {
      if (v16 < v20)
      {
        *v237 = *(v11 + 16);
        *&v237[16] = *(v11 + 32);
        v207 = *v11;
        v27 = *v8;
        v28 = *(a2 - 2);
        *(v11 + 27) = *(a2 - 21);
        *v11 = v27;
        *(v11 + 16) = v28;
        *(a2 - 21) = *&v237[11];
        *v8 = v207;
        *(a2 - 2) = *v237;
        if (*(v11 + 8) < *(v15 + 8))
        {
          *v238 = *(v15 + 16);
          *&v238[16] = *(v15 + 32);
          v208 = *v15;
          v29 = *v11;
          v30 = *(v11 + 16);
          *(v15 + 27) = *(v11 + 27);
          *v15 = v29;
          *(v15 + 16) = v30;
          *(v11 + 27) = *&v238[11];
          *v11 = v208;
          *(v11 + 16) = *v238;
        }
      }

      goto LABEL_59;
    }

    if (v16 < v20)
    {
      *v234 = *(v15 + 16);
      *&v234[16] = *(v15 + 32);
      v204 = *v15;
      v21 = *v8;
      v22 = *(a2 - 2);
      *(v15 + 27) = *(a2 - 21);
      *v15 = v21;
      *(v15 + 16) = v22;
LABEL_36:
      *(a2 - 21) = *&v234[11];
      *v8 = v204;
      *(a2 - 2) = *v234;
      goto LABEL_59;
    }

    *v243 = *(v15 + 16);
    *&v243[16] = *(v15 + 32);
    v211 = *v15;
    v48 = *v11;
    v49 = *(v11 + 16);
    *(v15 + 27) = *(v11 + 27);
    *v15 = v48;
    *(v15 + 16) = v49;
    *(v11 + 27) = *&v243[11];
    *v11 = v211;
    *(v11 + 16) = *v243;
    if (*(a2 - 5) < *(v11 + 8))
    {
      *v234 = *(v11 + 16);
      *&v234[16] = *(v11 + 32);
      v204 = *v11;
      v50 = *v8;
      v51 = *(a2 - 2);
      *(v11 + 27) = *(a2 - 21);
      *v11 = v50;
      *(v11 + 16) = v51;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v83 = *(v11 + 8);
LABEL_62:
      v84 = 0;
      v85 = *v11;
      *v200 = *(v11 + 16);
      *&v200[16] = *(v11 + 32);
      do
      {
        v86 = *(v11 + v84 + 56);
        v84 += 48;
      }

      while (v86 < v83);
      v87 = v11 + v84;
      v88 = a2;
      if (v84 == 48)
      {
        v91 = a2;
        while (v87 < v91)
        {
          v89 = v91 - 6;
          v92 = *(v91 - 5);
          v91 -= 6;
          if (v92 < v83)
          {
            goto LABEL_72;
          }
        }

        v89 = v91;
      }

      else
      {
        do
        {
          v89 = v88 - 6;
          v90 = *(v88 - 5);
          v88 -= 6;
        }

        while (v90 >= v83);
      }

LABEL_72:
      v11 = v87;
      if (v87 < v89)
      {
        v93 = v89;
        do
        {
          *v254 = *(v11 + 16);
          *&v254[16] = *(v11 + 32);
          v220 = *v11;
          v94 = *v93;
          v95 = *(v93 + 1);
          *(v11 + 27) = *(v93 + 27);
          *v11 = v94;
          *(v11 + 16) = v95;
          *(v93 + 27) = *&v254[11];
          *v93 = v220;
          *(v93 + 1) = *v254;
          do
          {
            v96 = *(v11 + 56);
            v11 += 48;
          }

          while (v96 < v83);
          do
          {
            v97 = *(v93 - 5);
            v93 -= 6;
          }

          while (v97 >= v83);
        }

        while (v11 < v93);
      }

      if (v11 - 48 != a1)
      {
        v98 = *(v11 - 48);
        v99 = *(v11 - 32);
        *(a1 + 27) = *(v11 - 21);
        *a1 = v98;
        *(a1 + 16) = v99;
      }

      *(v11 - 48) = v85;
      *(v11 - 40) = v83;
      *(v11 - 21) = *&v200[11];
      *(v11 - 32) = *v200;
      if (v87 < v89)
      {
        goto LABEL_83;
      }

      v100 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*>(a1, v11 - 48);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*>(v11, a2))
      {
        a2 = (v11 - 48);
        if (!v100)
        {
          goto LABEL_2;
        }

        goto LABEL_190;
      }

      if (!v100)
      {
LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(a1, v11 - 48, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v83 = *(v11 + 8);
      if (*(v11 - 40) < v83)
      {
        goto LABEL_62;
      }

      v101 = *v11;
      *v201 = *(v11 + 16);
      *&v201[16] = *(v11 + 32);
      if (v83 >= *(a2 - 5))
      {
        v104 = v11 + 48;
        do
        {
          v11 = v104;
          if (v104 >= a2)
          {
            break;
          }

          v105 = *(v104 + 8);
          v104 += 48;
        }

        while (v83 >= v105);
      }

      else
      {
        v102 = v11;
        do
        {
          v11 = v102 + 48;
          v103 = *(v102 + 56);
          v102 += 48;
        }

        while (v83 >= v103);
      }

      v106 = a2;
      if (v11 < a2)
      {
        v107 = a2;
        do
        {
          v106 = (v107 - 6);
          v108 = *(v107 - 5);
          v107 -= 6;
        }

        while (v83 < v108);
      }

      while (v11 < v106)
      {
        *v255 = *(v11 + 16);
        *&v255[16] = *(v11 + 32);
        v221 = *v11;
        v109 = *v106;
        v110 = v106[1];
        *(v11 + 27) = *(v106 + 27);
        *v11 = v109;
        *(v11 + 16) = v110;
        *(v106 + 27) = *&v255[11];
        *v106 = v221;
        v106[1] = *v255;
        do
        {
          v111 = *(v11 + 56);
          v11 += 48;
        }

        while (v83 >= v111);
        do
        {
          v112 = *(v106 - 5);
          v106 -= 3;
        }

        while (v83 < v112);
      }

      if (v11 - 48 != a1)
      {
        v113 = *(v11 - 48);
        v114 = *(v11 - 32);
        *(a1 + 27) = *(v11 - 21);
        *a1 = v113;
        *(a1 + 16) = v114;
      }

      a4 = 0;
      *(v11 - 48) = v101;
      *(v11 - 40) = v83;
      *(v11 - 21) = *&v201[11];
      *(v11 - 32) = *v201;
    }
  }

  if (v13 == 3)
  {
    v118 = *(v11 + 56);
    v119 = *(a2 - 5);
    if (v118 >= *(v11 + 8))
    {
      if (v119 < v118)
      {
        *v260 = *(v11 + 64);
        *&v260[16] = *(v11 + 80);
        v175 = *(v11 + 48);
        v177 = *v8;
        v176 = *(a2 - 2);
        *(v11 + 75) = *(a2 - 21);
        *(v11 + 48) = v177;
        *(v11 + 64) = v176;
        *(a2 - 21) = *&v260[11];
        *v8 = v175;
        *(a2 - 2) = *v260;
        goto LABEL_188;
      }
    }

    else
    {
      if (v119 < v118)
      {
        *v257 = *(v11 + 16);
        *&v257[16] = *(v11 + 32);
        v223 = *v11;
        v120 = *v8;
        v121 = *(a2 - 2);
        *(v11 + 27) = *(a2 - 21);
        *v11 = v120;
        *(v11 + 16) = v121;
        v122 = v223;
        v123 = *v257;
LABEL_181:
        *(a2 - 21) = *&v257[11];
        *v8 = v122;
        *(a2 - 2) = v123;
        goto LABEL_190;
      }

      *v263 = *(v11 + 16);
      *&v263[16] = *(v11 + 32);
      v230 = *v11;
      v187 = *(v11 + 64);
      *v11 = *(v11 + 48);
      *(v11 + 16) = v187;
      *(v11 + 27) = *(v11 + 75);
      *(v11 + 48) = v230;
      *(v11 + 64) = *v263;
      *(v11 + 75) = *&v263[11];
      if (*(a2 - 5) < *(v11 + 56))
      {
        v123 = *(v11 + 64);
        *&v257[8] = *(&v123 + 1);
        *&v257[16] = *(v11 + 80);
        v122 = *(v11 + 48);
        v189 = *v8;
        v188 = *(a2 - 2);
        *(v11 + 75) = *(a2 - 21);
        *(v11 + 48) = v189;
        *(v11 + 64) = v188;
        goto LABEL_181;
      }
    }

LABEL_190:
    v199 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v13 == 4)
  {
    v124 = *(v11 + 56);
    v125 = *(v11 + 104);
    if (v124 >= *(v11 + 8))
    {
      if (v125 < v124)
      {
        v178 = *(v11 + 48);
        *v261 = *(v11 + 64);
        *&v261[16] = *(v11 + 80);
        v179 = *(v11 + 112);
        *(v11 + 48) = *(v11 + 96);
        *(v11 + 64) = v179;
        *(v11 + 75) = *(v11 + 123);
        *(v11 + 96) = v178;
        *(v11 + 112) = *v261;
        *(v11 + 123) = *&v261[11];
        if (*(v11 + 56) < *(v11 + 8))
        {
          *v262 = *(v11 + 16);
          *&v262[16] = *(v11 + 32);
          v228 = *v11;
          v180 = *(v11 + 64);
          *v11 = *(v11 + 48);
          *(v11 + 16) = v180;
          *(v11 + 27) = *(v11 + 75);
          *(v11 + 48) = v228;
          *(v11 + 64) = *v262;
          *(v11 + 75) = *&v262[11];
        }
      }

      goto LABEL_185;
    }

    if (v125 >= v124)
    {
      *v264 = *(v11 + 16);
      *&v264[16] = *(v11 + 32);
      v231 = *v11;
      v190 = *(v11 + 64);
      *v11 = *(v11 + 48);
      *(v11 + 16) = v190;
      *(v11 + 27) = *(v11 + 75);
      *(v11 + 48) = v231;
      *(v11 + 64) = *v264;
      *(v11 + 75) = *&v264[11];
      if (v125 >= *(v11 + 56))
      {
        goto LABEL_185;
      }

      v191 = *(v11 + 48);
      *v258 = *(v11 + 64);
      *&v258[16] = *(v11 + 80);
      v192 = *(v11 + 112);
      *(v11 + 48) = *(v11 + 96);
      *(v11 + 64) = v192;
      *(v11 + 75) = *(v11 + 123);
      *(v11 + 96) = v191;
      *(v11 + 112) = *v258;
    }

    else
    {
      *v258 = *(v11 + 16);
      *&v258[16] = *(v11 + 32);
      v224 = *v11;
      v126 = *(v11 + 112);
      *v11 = *(v11 + 96);
      *(v11 + 16) = v126;
      *(v11 + 27) = *(v11 + 123);
      *(v11 + 96) = v224;
      *(v11 + 112) = *v258;
    }

    *(v11 + 123) = *&v258[11];
LABEL_185:
    if (*(a2 - 5) >= *(v11 + 104))
    {
      goto LABEL_190;
    }

    *v265 = *(v11 + 112);
    *&v265[16] = *(v11 + 128);
    v193 = *(v11 + 96);
    v195 = *v8;
    v194 = *(a2 - 2);
    *(v11 + 123) = *(a2 - 21);
    *(v11 + 96) = v195;
    *(v11 + 112) = v194;
    *(a2 - 21) = *&v265[11];
    *v8 = v193;
    *(a2 - 2) = *v265;
    if (*(v11 + 104) >= *(v11 + 56))
    {
      goto LABEL_190;
    }

    v196 = *(v11 + 48);
    *v266 = *(v11 + 64);
    *&v266[16] = *(v11 + 80);
    v197 = *(v11 + 112);
    *(v11 + 48) = *(v11 + 96);
    *(v11 + 64) = v197;
    *(v11 + 75) = *(v11 + 123);
    *(v11 + 96) = v196;
    *(v11 + 112) = *v266;
    *(v11 + 123) = *&v266[11];
LABEL_188:
    if (*(v11 + 56) < *(v11 + 8))
    {
      *v267 = *(v11 + 16);
      *&v267[16] = *(v11 + 32);
      v232 = *v11;
      v198 = *(v11 + 64);
      *v11 = *(v11 + 48);
      *(v11 + 16) = v198;
      *(v11 + 27) = *(v11 + 75);
      *(v11 + 48) = v232;
      *(v11 + 64) = *v267;
      *(v11 + 75) = *&v267[11];
    }

    goto LABEL_190;
  }

  if (v13 != 5)
  {
    goto LABEL_10;
  }

  v115 = *MEMORY[0x277D85DE8];

  std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(v11, (v11 + 48), (v11 + 96), (v11 + 144), a2 - 3);
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v5 = *(a2 + 1);
  v6 = *(a3 + 1);
  if (v5 >= *(a1 + 1))
  {
    if (v6 < v5)
    {
      v11 = *a2;
      *v38 = a2[1];
      *&v38[16] = a2[2];
      result = *(a3 + 27);
      v12 = a3[1];
      *a2 = *a3;
      a2[1] = v12;
      *(a2 + 27) = result;
      *a3 = v11;
      a3[1] = *v38;
      result.n128_u64[1] = *&v38[19];
      *(a3 + 27) = *&v38[11];
      if (*(a2 + 1) < *(a1 + 1))
      {
        v14 = *a1;
        *v39 = a1[1];
        *&v39[16] = a1[2];
        result = *(a2 + 27);
        v15 = a2[1];
        *a1 = *a2;
        a1[1] = v15;
        *(a1 + 27) = result;
        *a2 = v14;
        a2[1] = *v39;
        result.n128_u64[1] = *&v39[19];
        *(a2 + 27) = *&v39[11];
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v7 = a1[1];
      v8 = *a1;
      *v48 = *(&v7 + 1);
      *&v48[8] = a1[2];
      v9 = *(a3 + 27);
      v10 = a3[1];
      *a1 = *a3;
      a1[1] = v10;
      *(a1 + 27) = v9;
LABEL_9:
      *a3 = v8;
      a3[1] = v7;
      result.n128_u64[1] = *&v48[11];
      *(a3 + 27) = *&v48[3];
      goto LABEL_10;
    }

    v16 = *a1;
    *v40 = a1[1];
    *&v40[16] = a1[2];
    result = *(a2 + 27);
    v17 = a2[1];
    *a1 = *a2;
    a1[1] = v17;
    *(a1 + 27) = result;
    *a2 = v16;
    a2[1] = *v40;
    result.n128_u64[1] = *&v40[19];
    *(a2 + 27) = *&v40[11];
    if (*(a3 + 1) < *(a2 + 1))
    {
      v7 = a2[1];
      v8 = *a2;
      *v48 = *(&v7 + 1);
      *&v48[8] = a2[2];
      v18 = *(a3 + 27);
      v19 = a3[1];
      *a2 = *a3;
      a2[1] = v19;
      *(a2 + 27) = v18;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 1) < *(a3 + 1))
  {
    v20 = *a3;
    *v41 = a3[1];
    *&v41[16] = a3[2];
    result = *(a4 + 27);
    v21 = a4[1];
    *a3 = *a4;
    a3[1] = v21;
    *(a3 + 27) = result;
    *a4 = v20;
    a4[1] = *v41;
    result.n128_u64[1] = *&v41[19];
    *(a4 + 27) = *&v41[11];
    if (*(a3 + 1) < *(a2 + 1))
    {
      v22 = *a2;
      *v42 = a2[1];
      *&v42[16] = a2[2];
      result = *(a3 + 27);
      v23 = a3[1];
      *a2 = *a3;
      a2[1] = v23;
      *(a2 + 27) = result;
      *a3 = v22;
      a3[1] = *v42;
      result.n128_u64[1] = *&v42[19];
      *(a3 + 27) = *&v42[11];
      if (*(a2 + 1) < *(a1 + 1))
      {
        v24 = *a1;
        *v43 = a1[1];
        *&v43[16] = a1[2];
        result = *(a2 + 27);
        v25 = a2[1];
        *a1 = *a2;
        a1[1] = v25;
        *(a1 + 27) = result;
        *a2 = v24;
        a2[1] = *v43;
        result.n128_u64[1] = *&v43[19];
        *(a2 + 27) = *&v43[11];
      }
    }
  }

  result.n128_u64[0] = *(a5 + 1);
  if (result.n128_f64[0] < *(a4 + 1))
  {
    v26 = *a4;
    *v44 = a4[1];
    *&v44[16] = a4[2];
    v27 = *(a5 + 27);
    v28 = a5[1];
    *a4 = *a5;
    a4[1] = v28;
    *(a4 + 27) = v27;
    *a5 = v26;
    a5[1] = *v44;
    result.n128_u64[1] = *&v44[19];
    *(a5 + 27) = *&v44[11];
    result.n128_u64[0] = *(a4 + 1);
    if (result.n128_f64[0] < *(a3 + 1))
    {
      v29 = *a3;
      *v45 = a3[1];
      *&v45[16] = a3[2];
      v30 = *(a4 + 27);
      v31 = a4[1];
      *a3 = *a4;
      a3[1] = v31;
      *(a3 + 27) = v30;
      *a4 = v29;
      a4[1] = *v45;
      result.n128_u64[1] = *&v45[19];
      *(a4 + 27) = *&v45[11];
      result.n128_u64[0] = *(a3 + 1);
      if (result.n128_f64[0] < *(a2 + 1))
      {
        v32 = *a2;
        *v46 = a2[1];
        *&v46[16] = a2[2];
        v33 = *(a3 + 27);
        v34 = a3[1];
        *a2 = *a3;
        a2[1] = v34;
        *(a2 + 27) = v33;
        *a3 = v32;
        a3[1] = *v46;
        result.n128_u64[1] = *&v46[19];
        *(a3 + 27) = *&v46[11];
        result.n128_u64[0] = *(a2 + 1);
        if (result.n128_f64[0] < *(a1 + 1))
        {
          v35 = *a1;
          *v47 = a1[1];
          *&v47[16] = a1[2];
          v36 = *(a2 + 27);
          v37 = a2[1];
          *a1 = *a2;
          a1[1] = v37;
          *(a1 + 27) = v36;
          *a2 = v35;
          a2[1] = *v47;
          result = *&v47[11];
          *(a2 + 27) = *&v47[11];
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*>(uint64_t a1, uint64_t a2)
{
  v82 = *MEMORY[0x277D85DE8];
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = (a2 - 48);
      v7 = *(a1 + 56);
      v8 = *(a2 - 40);
      if (v7 < *(a1 + 8))
      {
        if (v8 >= v7)
        {
          v36 = *a1;
          *v74 = *(a1 + 16);
          *&v74[16] = *(a1 + 32);
          v37 = *(a1 + 64);
          *a1 = *(a1 + 48);
          *(a1 + 16) = v37;
          *(a1 + 27) = *(a1 + 75);
          *(a1 + 48) = v36;
          *(a1 + 64) = *v74;
          *(a1 + 75) = *&v74[11];
          if (*(a2 - 40) >= *(a1 + 56))
          {
            goto LABEL_52;
          }

          v9 = *(a1 + 64);
          v10 = *(a1 + 48);
          *v80 = *(&v9 + 1);
          *&v80[8] = *(a1 + 80);
          v38 = *(a2 - 21);
          v39 = *(a2 - 32);
          *(a1 + 48) = *v6;
          *(a1 + 64) = v39;
          *(a1 + 75) = v38;
        }

        else
        {
          v9 = *(a1 + 16);
          v10 = *a1;
          *v80 = *(&v9 + 1);
          *&v80[8] = *(a1 + 32);
          v11 = *(a2 - 21);
          v12 = *(a2 - 32);
          *a1 = *v6;
          *(a1 + 16) = v12;
          *(a1 + 27) = v11;
        }

        *v6 = v10;
        *(a2 - 32) = v9;
        *(a2 - 21) = *&v80[3];
        goto LABEL_52;
      }

      if (v8 >= v7)
      {
LABEL_52:
        result = 1;
        goto LABEL_53;
      }

      v25 = *(a1 + 48);
      *v69 = *(a1 + 64);
      *&v69[16] = *(a1 + 80);
      v26 = *(a2 - 21);
      v27 = *(a2 - 32);
      *(a1 + 48) = *v6;
      *(a1 + 64) = v27;
      *(a1 + 75) = v26;
      *v6 = v25;
      *(a2 - 32) = *v69;
      *(a2 - 21) = *&v69[11];
LABEL_50:
      if (*(a1 + 56) < *(a1 + 8))
      {
        v62 = *a1;
        *v79 = *(a1 + 16);
        *&v79[16] = *(a1 + 32);
        v63 = *(a1 + 64);
        *a1 = *(a1 + 48);
        *(a1 + 16) = v63;
        *(a1 + 27) = *(a1 + 75);
        *(a1 + 48) = v62;
        *(a1 + 64) = *v79;
        *(a1 + 75) = *&v79[11];
      }

      goto LABEL_52;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), (a1 + 144), (a2 - 48));
      goto LABEL_52;
    }

    v20 = *(a1 + 56);
    v21 = *(a1 + 8);
    v22 = *(a1 + 104);
    if (v20 >= v21)
    {
      if (v22 < v20)
      {
        v32 = *(a1 + 48);
        *v72 = *(a1 + 64);
        *&v72[16] = *(a1 + 80);
        v33 = *(a1 + 112);
        *(a1 + 48) = *(a1 + 96);
        *(a1 + 64) = v33;
        *(a1 + 75) = *(a1 + 123);
        *(a1 + 96) = v32;
        *(a1 + 112) = *v72;
        *(a1 + 123) = *&v72[11];
        if (*(a1 + 56) < v21)
        {
          v34 = *a1;
          *v73 = *(a1 + 16);
          *&v73[16] = *(a1 + 32);
          v35 = *(a1 + 64);
          *a1 = *(a1 + 48);
          *(a1 + 16) = v35;
          *(a1 + 27) = *(a1 + 75);
          *(a1 + 48) = v34;
          *(a1 + 64) = *v73;
          *(a1 + 75) = *&v73[11];
        }
      }

      goto LABEL_47;
    }

    if (v22 >= v20)
    {
      v52 = *a1;
      *v76 = *(a1 + 16);
      *&v76[16] = *(a1 + 32);
      v53 = *(a1 + 64);
      *a1 = *(a1 + 48);
      *(a1 + 16) = v53;
      *(a1 + 27) = *(a1 + 75);
      *(a1 + 48) = v52;
      *(a1 + 64) = *v76;
      *(a1 + 75) = *&v76[11];
      if (v22 >= *(a1 + 56))
      {
        goto LABEL_47;
      }

      v54 = *(a1 + 48);
      *v68 = *(a1 + 64);
      *&v68[16] = *(a1 + 80);
      v55 = *(a1 + 112);
      *(a1 + 48) = *(a1 + 96);
      *(a1 + 64) = v55;
      *(a1 + 75) = *(a1 + 123);
      *(a1 + 96) = v54;
      *(a1 + 112) = *v68;
    }

    else
    {
      v23 = *a1;
      *v68 = *(a1 + 16);
      *&v68[16] = *(a1 + 32);
      v24 = *(a1 + 112);
      *a1 = *(a1 + 96);
      *(a1 + 16) = v24;
      *(a1 + 27) = *(a1 + 123);
      *(a1 + 96) = v23;
      *(a1 + 112) = *v68;
    }

    *(a1 + 123) = *&v68[11];
LABEL_47:
    if (*(a2 - 40) >= *(a1 + 104))
    {
      goto LABEL_52;
    }

    v56 = (a2 - 48);
    v57 = *(a1 + 96);
    *v77 = *(a1 + 112);
    *&v77[16] = *(a1 + 128);
    v58 = *(a2 - 21);
    v59 = *(a2 - 32);
    *(a1 + 96) = *(a2 - 48);
    *(a1 + 112) = v59;
    *(a1 + 123) = v58;
    *v56 = v57;
    v56[1] = *v77;
    *(v56 + 27) = *&v77[11];
    if (*(a1 + 104) >= *(a1 + 56))
    {
      goto LABEL_52;
    }

    v60 = *(a1 + 48);
    *v78 = *(a1 + 64);
    *&v78[16] = *(a1 + 80);
    v61 = *(a1 + 112);
    *(a1 + 48) = *(a1 + 96);
    *(a1 + 64) = v61;
    *(a1 + 75) = *(a1 + 123);
    *(a1 + 96) = v60;
    *(a1 + 112) = *v78;
    *(a1 + 123) = *&v78[11];
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    goto LABEL_52;
  }

  if (v2 == 2)
  {
    if (*(a2 - 40) < *(a1 + 8))
    {
      v3 = *a1;
      *v67 = *(a1 + 16);
      *&v67[16] = *(a1 + 32);
      v4 = *(a2 - 21);
      v5 = *(a2 - 32);
      *a1 = *(a2 - 48);
      *(a1 + 16) = v5;
      *(a1 + 27) = v4;
      *(a2 - 48) = v3;
      *(a2 - 32) = *v67;
      *(a2 - 21) = *&v67[11];
    }

    goto LABEL_52;
  }

LABEL_13:
  v13 = a1 + 96;
  v14 = *(a1 + 56);
  v15 = *(a1 + 8);
  v16 = *(a1 + 104);
  if (v14 >= v15)
  {
    if (v16 < v14)
    {
      v28 = *(a1 + 48);
      *v70 = *(a1 + 64);
      *&v70[16] = *(a1 + 80);
      v29 = *(a1 + 112);
      *(a1 + 48) = *v13;
      *(a1 + 64) = v29;
      *(a1 + 75) = *(a1 + 123);
      *v13 = v28;
      *(a1 + 112) = *v70;
      *(a1 + 123) = *&v70[11];
      if (*(a1 + 56) < v15)
      {
        v30 = *a1;
        *v71 = *(a1 + 16);
        *&v71[16] = *(a1 + 32);
        v31 = *(a1 + 64);
        *a1 = *(a1 + 48);
        *(a1 + 16) = v31;
        *(a1 + 27) = *(a1 + 75);
        *(a1 + 48) = v30;
        *(a1 + 64) = *v71;
        *(a1 + 75) = *&v71[11];
      }
    }
  }

  else
  {
    if (v16 >= v14)
    {
      v40 = *a1;
      *v75 = *(a1 + 16);
      *&v75[16] = *(a1 + 32);
      v41 = *(a1 + 64);
      *a1 = *(a1 + 48);
      *(a1 + 16) = v41;
      *(a1 + 27) = *(a1 + 75);
      *(a1 + 48) = v40;
      *(a1 + 64) = *v75;
      *(a1 + 75) = *&v75[11];
      if (v16 >= *(a1 + 56))
      {
        goto LABEL_33;
      }

      v17 = *(a1 + 64);
      v18 = *(a1 + 48);
      *v81 = *(&v17 + 1);
      *&v81[8] = *(a1 + 80);
      v42 = *(a1 + 112);
      *(a1 + 48) = *v13;
      *(a1 + 64) = v42;
      *(a1 + 75) = *(a1 + 123);
    }

    else
    {
      v17 = *(a1 + 16);
      v18 = *a1;
      *v81 = *(&v17 + 1);
      *&v81[8] = *(a1 + 32);
      v19 = *(a1 + 112);
      *a1 = *v13;
      *(a1 + 16) = v19;
      *(a1 + 27) = *(a1 + 123);
    }

    *v13 = v18;
    *(a1 + 112) = v17;
    *(a1 + 123) = *&v81[3];
  }

LABEL_33:
  v43 = a1 + 144;
  if (a1 + 144 == a2)
  {
    goto LABEL_52;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    v46 = *(v43 + 8);
    if (v46 < *(v13 + 8))
    {
      v47 = *v43;
      *v66 = *(v43 + 16);
      *&v66[16] = *(v43 + 32);
      v48 = v44;
      while (1)
      {
        v49 = a1 + v48;
        v50 = *(a1 + v48 + 112);
        *(v49 + 144) = *(a1 + v48 + 96);
        *(v49 + 160) = v50;
        *(v49 + 171) = *(a1 + v48 + 123);
        if (v48 == -96)
        {
          break;
        }

        v48 -= 48;
        if (v46 >= *(v49 + 56))
        {
          v51 = a1 + v48 + 144;
          goto LABEL_41;
        }
      }

      v51 = a1;
LABEL_41:
      *v51 = v47;
      *(v51 + 8) = v46;
      *(v51 + 16) = *v66;
      *(v51 + 27) = *&v66[11];
      if (++v45 == 8)
      {
        break;
      }
    }

    v13 = v43;
    v44 += 48;
    v43 += 48;
    if (v43 == a2)
    {
      goto LABEL_52;
    }
  }

  result = v43 + 48 == a2;
LABEL_53:
  v65 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::overallStatistics(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 160);
  *(a1 + 56) = *(a2 + 176);
  v4 = *(a2 + 208);
  *(a1 + 72) = *(a2 + 192);
  *(a1 + 88) = v4;
  *(a1 + 104) = *(a2 + 224);
  v5 = *(a2 + 144);
  *(a1 + 8) = *(a2 + 128);
  *(a1 + 24) = v5;
  *a1 = *(a2 + 120);
  *(a1 + 40) = v3;
  v7 = *(a2 + 240);
  v6 = *(a2 + 248);
  *(a1 + 120) = v7;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v8 = a1 + 128;
  v9 = *(a2 + 256);
  *(a1 + 144) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 128, v6, v9, (v9 - v6) >> 4);
  *(v8 + 24) = *(a2 + 272);
  result = *(a2 + 280);
  v11 = *(a2 + 296);
  *(v8 + 32) = result;
  *(v8 + 48) = v11;
  *(v8 + 64) = *(a2 + 312);
  return result;
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::statisticsByBundleIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v2 = *(a2 + 320);
  v30 = (a2 + 328);
  if (v2 == (a2 + 328))
  {
    return;
  }

  v29 = a1 + 16;
  do
  {
    v4 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a2, v2[4]);
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
    v32 = v9.u32[0];
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

      if (v32 > 1)
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
    *(v12 + 4) = *(v2 + 5);
    *(v12 + 3) = v20;
    *(v12 + 2) = v19;
    v21 = *(v2 + 6);
    v22 = *(v2 + 7);
    v23 = *(v2 + 8);
    *(v12 + 8) = *(v2 + 9);
    *(v12 + 7) = v23;
    *(v12 + 6) = v22;
    *(v12 + 5) = v21;
    v12[18] = v2[20];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 19, v2[21], v2[22], (v2[22] - v2[21]) >> 4);
    }

    v12[22] = v2[24];
    v24 = *(v2 + 25);
    v25 = *(v2 + 27);
    *(v12 + 108) = *(v2 + 116);
    *(v12 + 25) = v25;
    *(v12 + 23) = v24;

LABEL_25:
    v26 = v2[1];
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
        v27 = v2[2];
        v28 = *v27 == v2;
        v2 = v27;
      }

      while (!v28);
    }

    v2 = v27;
  }

  while (v27 != v30);
}

void sub_228EE5E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,void *>>>>::~unique_ptr[abi:ne200100](va);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::~__hash_table(v6);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,0>(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,0>((v2 + 2));
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

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BED8D8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BED8D8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 112;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BED968;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BED968;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveAddSample(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (*(a1 + 680) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = a2[1];
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 1);
  v10 = *(a1 + 40);
  if (v10)
  {
    if (*(a1 + 680))
    {
      v11 = -1.79769313e308;
    }

    else
    {
      v11 = *(a1 + 176);
      v13 = *(a1 + 120);
      if (v11 <= v13)
      {
        v11 = -1.79769313e308;
      }

      if (v11 < v13)
      {
        v11 = *(a1 + 120);
      }
    }
  }

  else
  {
    v11 = *(a1 + 176);
    if (v11 <= *(a1 + 120))
    {
      v11 = -1.79769313e308;
    }
  }

  if (v9 >= v11)
  {
    if (v10 && a3)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v14 = a2[2];
    v15 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
    v12 = (*(*a1 + 128))(a1, v15, a4);
  }

  return v12;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_advanceToTime(uint64_t result, double a2)
{
  if (*(result + 128) <= a2)
  {
    v2 = result;
    if (*(v2 + 656) != *(v2 + 648))
    {
      [*(result + 40) dateIntervalAtIndex:*(result + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_updateSourceOrder(v2 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v2, (v2 + 120));
    }

    v5 = 0;
    v3 = *(result + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_updateSourceOrder(v2 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v2, (v2 + 120));
  }

  return result;
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::addSample(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *(a2 + 32);
  if ((v4 & 1) == 0 || (v5 = *(a2 + 1), v5 < *(a1 + 8)))
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    goto LABEL_4;
  }

  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = a2[3];
  v9 = *(a2 + 33);
  *(&v41 + 1) = a2[1];
  *&v42 = v7;
  *(&v42 + 1) = v8;
  LOBYTE(v43) = v4;
  HIBYTE(v43) = v9;
  *&v41 = v6;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
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

    *&v42 = v13;
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 352), v8);
    v14 = *(a1 + 112);
    if (v14 == *(a1 + 104) && *(a1 + 200) <= 0)
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
      if (!a3)
      {
        goto LABEL_35;
      }
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

      if (!a3)
      {
        goto LABEL_35;
      }
    }

    if (v5 < *(a1 + 16))
    {
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 8, v5);
      v14 = *(a1 + 112);
    }

LABEL_35:
    v38 = v41;
    v39 = v42;
    LOWORD(v40) = v43;
    v19 = *(a1 + 120);
    if (v14 >= v19)
    {
      v22 = *(a1 + 104);
      v23 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v22) >> 4);
      v24 = v23 + 1;
      if (v23 + 1 > 0x555555555555555)
      {
        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      v25 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v22) >> 4);
      if (2 * v25 > v24)
      {
        v24 = 2 * v25;
      }

      if (v25 >= 0x2AAAAAAAAAAAAAALL)
      {
        v26 = 0x555555555555555;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v26);
      }

      v27 = 48 * v23;
      v28 = v39;
      *v27 = v38;
      *(v27 + 16) = v28;
      *(v27 + 32) = v40;
      *(v27 + 40) = 0;
      *(v27 + 42) = 0;
      v21 = 48 * v23 + 48;
      v29 = *(a1 + 104);
      v30 = *(a1 + 112) - v29;
      v31 = 48 * v23 - v30;
      memcpy((v27 - v30), v29, v30);
      v32 = *(a1 + 104);
      *(a1 + 104) = v31;
      *(a1 + 112) = v21;
      *(a1 + 120) = 0;
      if (v32)
      {
        operator delete(v32);
      }
    }

    else
    {
      v20 = v39;
      *v14 = v38;
      *(v14 + 16) = v20;
      *(v14 + 32) = v40;
      *(v14 + 40) = 0;
      *(v14 + 42) = 0;
      v21 = v14 + 48;
    }

    *(a1 + 112) = v21;
    if (!*(a1 + 320) || *(a1 + 296) <= v5)
    {
      *(a1 + 288) = v6;
      *(a1 + 296) = v5;
      *(a1 + 304) = v7;
      *(a1 + 312) = v8;
      *(a1 + 320) = v4;
      *(a1 + 321) = v9;
      if (!*(a1 + 240) || *(a1 + 216) <= v5)
      {
        *(a1 + 208) = v6;
        *(a1 + 216) = v5;
        *(a1 + 224) = v7;
        *(a1 + 232) = v8;
        *(a1 + 240) = v4;
        *(a1 + 241) = v9;
      }
    }

    if (*(a1 + 33) == 1)
    {
      v33 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1 + 8, v8);
      v34 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsForSource(a1 + 8, v33);
      if (!*(v34 + 192) || v34[21] <= v5)
      {
        *(v34 + 20) = v6;
        v34[21] = v5;
        v34[22] = v7;
        *(v34 + 23) = v8;
        *(v34 + 192) = v4;
        *(v34 + 193) = v9;
        if (!*(v34 + 112) || v34[11] <= v5)
        {
          *(v34 + 10) = v6;
          v34[11] = v5;
          v34[12] = v7;
          *(v34 + 13) = v8;
          *(v34 + 112) = v4;
          *(v34 + 113) = v9;
        }
      }
    }

    goto LABEL_4;
  }

  v35 = v41;
  v36 = v42;
  v37 = v43;
  if (v5 >= v10)
  {
    v10 = v5;
  }

  *(&v35 + 1) = v10;
LABEL_4:
  if (v37 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 536, &v35);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 682) == 1)
  {
    *(a1 + 684) = 1;
  }

  else
  {
    *(a1 + 684) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::advanceBucket(void *a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, a1[67], a1[68], 0xCCCCCCCCCCCCCCCDLL * ((a1[68] - a1[67]) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228EE6FB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = a1 + 40;
  objc_storeStrong((a1 + 560), *(a1 + 40));
  *(v8 - 32) = a3;
  *(v8 - 24) = a4;
  *(v8 + 24) = a3;
  *(v8 + 72) = *(v8 + 64);
  *(v8 + 88) = 0;
  v9 = 0uLL;
  *(v8 + 96) = xmmword_229170D40;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0u;
  *(v8 + 160) = 0u;
  *(v8 + 176) = 0u;
  *(v8 + 192) = 0u;
  *(v8 + 208) = 0;
  v10 = *(v8 + 216);
  if (v10)
  {
    *(a1 + 264) = v10;
    operator delete(v10);
    v9 = 0uLL;
  }

  *(v8 + 280) = 0;
  *(v8 + 248) = v9;
  *(v8 + 264) = v9;
  *(v8 + 216) = v9;
  *(v8 + 232) = v9;
  if (*(a1 + 344))
  {
    v11 = *(a1 + 328);
    v12 = *(a1 + 336);
    *(a1 + 328) = a1 + 336;
    *(v12 + 16) = 0;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
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
            v17 = v14[1];
            if (!v17)
            {
              break;
            }

            do
            {
              v14 = v17;
              v17 = *v17;
            }

            while (v17);
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

        std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::destroy(v13);
        for (i = v14[2]; i; i = i[2])
        {
          v14 = i;
        }

        v13 = v14;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>>::destroy(v13);
  }

  objc_storeStrong(v8, *(a1 + 560));
  *(a1 + 544) = *(a1 + 536);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 684) == 1)
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

    *(a1 + 684) = 0;
  }
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_currentBucketInterval(uint64_t a1)
{
  if (*(a1 + 680))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:*(a1 + 120) end:{*(a1 + 128), v1}];
  }

  return v3;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228EE727C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 680) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228EE76CC(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C4016FCC05CLL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v15, (v15 + 120));
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
    }

    return 1;
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 680) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersE24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::archive(uint64_t a1, int8x16_t *a2)
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
  HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>::archive(v6, &a2->i64[1]);
  statistics::Statistics::operator=(*(a1 + 128), v6);
  statistics::Statistics::~Statistics(v6);
  v5 = a2->i32[0];
  *(a1 + 204) |= 0x100u;
  *(a1 + 136) = v5;
  statistics::Statistics::makeMostRecentDatum(a1);
  v6[0] = &unk_283BEB0A8;
  v10 = 127;
  v7 = vextq_s8(a2[10], a2[10], 8uLL);
  v6[1] = a2[11].i64[0];
  v6[2] = a2[11].i64[1];
  v8 = 0;
  v9 = 0;
  statistics::RawQuantitySample::operator=(*v4, v6);
  PB::Base::~Base(v6);
}

void HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>::archive(uint64_t a1, uint64_t a2)
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
  HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::archive(v5, a2);
  statistics::Statistics::operator=(*(a1 + 128), v5);
  statistics::Statistics::~Statistics(v5);
  statistics::Statistics::makeAuxiliaryStatistics(a1);
  HDStatisticsTimeInterval::archive((a2 + 112), v5);
  statistics::Statistics::operator=(*v4, v5);
  statistics::Statistics::~Statistics(v5);
}

void HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::archive(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = vextq_s8(*(a2 + 40), *(a2 + 40), 8uLL);
  *(a1 + 104) = *(a2 + 56);
  *(a1 + 176) = *(a2 + 32);
  v3 = *(a2 + 8);
  *(a1 + 56) = *a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  v4 = *(a2 + 64);
  *(a1 + 16) = 0;
  *(a1 + 24) = v4;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  *(a1 + 160) = 0;
  *(a1 + 168) = v5;
  *(a1 + 112) = 0;
  v7 = (a1 + 112);
  *a1 = &unk_283BE6208;
  *(a1 + 8) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 48) = v6;
  *(a1 + 204) = 6397;
  *(a1 + 40) = v3;
  statistics::Statistics::makeMostRecentDatum(a1);
  v8[0] = &unk_283BEB0A8;
  v12 = 127;
  v9 = vextq_s8(*(a2 + 72), *(a2 + 72), 8uLL);
  v8[1] = *(a2 + 88);
  v8[2] = *(a2 + 96);
  v10 = 0;
  v11 = 0;
  statistics::RawQuantitySample::operator=(*v7, v8);
  PB::Base::~Base(v8);
}

double HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::unarchive(uint64_t a1, void *a2)
{
  *(a1 + 8) = xmmword_229170D40;
  v4 = (a1 + 8);
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 98) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 178) = 0u;
  v6 = a2[16];
  if (v6)
  {
    HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>::unarchive(v13, *(v6 + 8), *(v6 + 128));
    v7 = v13[5];
    v4[4] = v13[4];
    v4[5] = v7;
    v4[6] = v13[6];
    v8 = v13[1];
    *v4 = v13[0];
    v4[1] = v8;
    v9 = v13[3];
    v4[2] = v13[2];
    v4[3] = v9;
    *(a1 + 120) = v14;
    result = v17;
    v10 = v16;
    *(a1 + 128) = v15;
    *(a1 + 144) = v10;
    *(a1 + 152) = result;
  }

  *a1 = a2[17];
  v11 = a2[14];
  if (v11)
  {
    result = *(v11 + 8);
    v12 = *(v11 + 16);
    *(a1 + 160) = vextq_s8(*(v11 + 24), *(v11 + 24), 8uLL);
    *(a1 + 176) = result;
    *(a1 + 184) = v12;
    *(a1 + 192) = 1;
  }

  return result;
}

double HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>::unarchive(uint64_t a1, HDStatisticsTimeInterval *this, uint64_t a3)
{
  v4 = 0uLL;
  *a1 = xmmword_229170D40;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 90) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  if (a3)
  {
    v5 = *(a3 + 24);
    v6 = *(a3 + 88);
    v7 = *(a3 + 104);
    v8 = *(a3 + 176);
    v9 = *(a3 + 168);
    v10 = *(a3 + 48);
    v11 = *(a3 + 40);
    v12 = *(a3 + 112);
    if (v12)
    {
      v4 = *(v12 + 24);
      v13 = *(v12 + 8);
      v14 = 1;
      v12 = *(v12 + 16);
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    *a1 = *(a3 + 56);
    *(a1 + 8) = v11;
    *(a1 + 16) = v10;
    *(a1 + 24) = v9;
    *(a1 + 32) = v8;
    *(a1 + 40) = vextq_s8(v6, v6, 8uLL);
    *(a1 + 56) = v7;
    *(a1 + 64) = v5;
    v4 = vextq_s8(v4, v4, 8uLL);
    *(a1 + 72) = v4;
    *(a1 + 88) = v13;
    *(a1 + 96) = v12;
    *(a1 + 104) = v14;
  }

  if (this)
  {
    HDStatisticsTimeInterval::unarchive(this, &v17);
    *(a1 + 112) = v17;
    v4.i64[0] = v20;
    v15 = v19;
    *(a1 + 120) = v18;
    *(a1 + 136) = v15;
    *(a1 + 144) = v4.i64[0];
  }

  return *v4.i64;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BEDAA8;
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
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 1;
  *(a1 + 634) = 0;
  *(a1 + 636) = 0;
  *(a1 + 640) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BEDAA8;
  v2 = *(a1 + 664);
  if (v2)
  {
    *(a1 + 672) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 600);
  if (v3)
  {
    *(a1 + 608) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 632) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::configureMergeAnchor(double *a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 5))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 80) = v4;
    v3 = v5;
    if (a1[31] == -1.79769313e308)
    {
      *(a1 + 31) = v4;
    }
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 81, a2);
  v7 = a2;
  v4 = a1[81];
  v5 = a1[78];
  a1[78] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[78]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 304) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 copy];
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 632) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeThroughTime(v3, v3[1]);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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

    goto LABEL_23;
  }

  v10 = [v7 endDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = *(a2 + 8);

  if (v12 >= v13)
  {
LABEL_4:
    if (*(a1 + 634) == 1)
    {
      if (*(a1 + 633))
      {
        goto LABEL_6;
      }

      if (*(a1 + 40))
      {
        if (*(a1 + 632))
        {
          v15 = -1.79769313e308;
        }

        else
        {
          v16 = *(a1 + 176);
          v15 = *(a1 + 120);
          if (v16 <= v15)
          {
            v16 = -1.79769313e308;
          }

          if (v16 >= v15)
          {
            v15 = v16;
          }
        }
      }

      else
      {
        v15 = -1.79769313e308;
        if (*(a1 + 176) > *(a1 + 120))
        {
          v15 = *(a1 + 176);
        }
      }

      if (v15 > *(a2 + 8))
      {
        v17 = *(a2 + 16);
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 635) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 664, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 634) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 634) = 1;
  v61 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v60 = v6;
  if (*(a1 + 633))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 656);
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

  [v9 sortUsingComparator:&__block_literal_global_695];
  v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v10 = *(a1 + 656);
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
  v27 = *(a1 + 656);
  *(a1 + 656) = 0;

  *(a1 + 633) = 0;
  if (v8)
  {
    v28 = *(a1 + 664);
    *(a1 + 680) = 0;
    *(a1 + 672) = 0;
    *(a1 + 664) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v62 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 664);
      v39 = *(a1 + 672);
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
            v39 = *(a1 + 672);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 672) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 664);
  v29 = *(a1 + 672);
  *(a1 + 680) = 0;
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v49, v61);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, 0, v61))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, v55, 1, v51);
        v54 = v56;
        v55 += 5;
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

  if (*(a1 + 40) && *(a1 + 608) != *(a1 + 600))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
  }

  *(a1 + 634) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 636) == 1)
    {
      *(a1 + 636) = 0;
      v6 = v60;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
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
  *(a1 + 634) = 0;
LABEL_81:

  v58 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_228EE9168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 634) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    if (*(a1 + 634))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 634) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 656);
    *(a1 + 656) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 633) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 633) & 1) == 0)
  {
    v8 = *(a1 + 656);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 656);
      *(a1 + 656) = v9;

      v8 = *(a1 + 656);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 632) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI42HDStatisticsTemporalBucketWeightedDiscreteI52HDStatisticsTemporalBucketWeightedDiscreteParametersE24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 632) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 632) forKey:@"needs_config"];
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
  HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>::archive(&v40, a1 + 240);
  statistics::Statistics::operator=(*(&v23 + 1), &v40);
  statistics::Statistics::~Statistics(&v40);
  v9 = *(a1 + 392);
  if (v9 != a1 + 400)
  {
    HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>::archive(&v40, v9 + 40);
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
  v12 = *(a1 + 600);
  if (v12 != *(a1 + 608))
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

void sub_228EE99B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::decodeInternalsWithDecoder(uint64_t k, void *a2)
{
  v33 = a2;
  *(k + 632) = [v33 decodeBoolForKey:@"needs_config"];
  v3 = v33;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::HDStatisticsBucket(v38, 0, -1.79769313e308, 1.79769313e308);
  v39 = 0u;
  v40 = 0u;
  v82 = 0;
  PB::Reader::Reader(v81, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v82]);
  v74 = &unk_283BF1A08;
  v75 = 0;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  v80 = 0;
  statistics::StatisticsEngine::readFrom(&v74, v81);
  v37 = v76;
  if (v75)
  {
    v44 = 0;
    v47 = 0uLL;
    v48 = 0;
    v50 = 0u;
    *v51 = 0u;
    v49 = 0;
    *&v51[16] = 0xFFEFFFFFFFFFFFFFLL;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    memset(v56, 0, 26);
    memset(&v56[2], 0, 32);
    v59[0] = 0;
    v59[1] = 0;
    v57 = 0;
    v58 = v59;
    v60 = 0u;
    v61 = 0u;
    v62 = 1065353216;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0;
    v67 = 1065353216;
    v68 = 0u;
    v69 = 0u;
    v70 = 1065353216;
    v71 = 0u;
    v72 = 0u;
    v73 = 1065353216;
    v41 = vextq_s8(*(v75 + 8), *(v75 + 8), 8uLL);
    v4 = *(v75 + 72);
    v42 = *(v75 + 64);
    LOWORD(v43) = *(v75 + 185);
    v45 = vextq_s8(*(v75 + 24), *(v75 + 24), 8uLL);
    v46 = v4;
    v5 = *(v75 + 80);
    v6 = *(v75 + 88);
    v35 = v3;
    for (i = v75; v5 != v6; ++v5)
    {
      v7 = *v5;
      LOWORD(v85) = 1;
      BYTE8(v85) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v83 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v84 = v8;
      *(&v84 + 1) = v9;
      BYTE9(v85) = *(v7 + 41);
      BYTE10(v85) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](&v50, v83.i8);
    }

    v34 = k;
    v10 = i[13];
    if (v10)
    {
      HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>::unarchive(&v83, *(v10 + 8), *(v10 + 128));
      v54 = v86;
      v55 = v87;
      v56[0] = v88;
      v56[1] = v89;
      *&v51[8] = v83;
      v52 = v84;
      v53 = v85;
      *&v56[2] = v90;
      if (*(&v56[2] + 1))
      {
        *&v56[3] = *(&v56[2] + 1);
        operator delete(*(&v56[2] + 1));
      }

      *(&v56[2] + 8) = v91;
      *(&v56[3] + 1) = v92;
      v92 = 0;
      v91 = 0uLL;
      v57 = v93;
    }

    v11 = i[17];
    for (j = i[18]; v11 != j; ++v11)
    {
      v13 = *v11;
      HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>::unarchive(&v83, *(*v11 + 8), *(*v11 + 128));
      v14 = *(v13 + 144);
      v15 = v59[0];
      if (!v59[0])
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

      v19 = v88;
      v18 = v89;
      v20 = v87;
      *(v16 + 11) = v86;
      *(v16 + 13) = v20;
      *(v16 + 15) = v19;
      *(v16 + 17) = v18;
      v21 = v84;
      v22 = v85;
      *(v16 + 5) = v83;
      *(v16 + 7) = v21;
      *(v16 + 9) = v22;
      v16[19] = v90;
      v23 = v16[20];
      if (v23)
      {
        v16[21] = v23;
        operator delete(v23);
        v16[20] = 0;
        v16[21] = 0;
        v16[22] = 0;
      }

      *(v16 + 10) = v91;
      v16[22] = v92;
      v92 = 0;
      v91 = 0uLL;
      v16[23] = v93;
    }

    v3 = v35;
    v24 = i[5];
    v25 = i[6];
    for (k = v34; v24 != v25; v24 += 8)
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

      HKIntervalMask<double>::_insertInterval(&v47, v28, v26);
    }

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::operator=(v38, &v41);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v41);
  }

  v29 = v77;
  for (m = v78; v29 != m; v29 += 8)
  {
    v31 = *(*v29 + 8);
    v32 = *(*v29 + 16);
    v41 = vextq_s8(*(*v29 + 24), *(*v29 + 24), 8uLL);
    v42 = v31;
    v43 = v32;
    LOWORD(v44) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](&v39, v41.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v74);

  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::operator=((k + 112), &v37);
  if (v39)
  {
    *(&v39 + 1) = v39;
    operator delete(v39);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v38);
}

void sub_228EE9F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a2);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(&STACK[0x3D0]);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x3A8]);
  v9 = STACK[0x390];
  if (STACK[0x390])
  {
    STACK[0x398] = v9;
    operator delete(v9);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a3);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::destroy(STACK[0x358]);
  v10 = STACK[0x330];
  if (STACK[0x330])
  {
    STACK[0x338] = v10;
    operator delete(v10);
  }

  v11 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v11;
    operator delete(v11);
  }

  objc_destroyWeak(&STACK[0x298]);
  v12 = STACK[0x280];
  if (STACK[0x280])
  {
    STACK[0x288] = v12;
    operator delete(v12);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x420]);
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 257;
  *(a1 + 28) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 210) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a1 + 280;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 1065353216;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 392) = 1065353216;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 1065353216;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 488);
  if (v2)
  {
    *(a1 + 496) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 440);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 400);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 360);
  v2 = *(a1 + 336);
  if (v2)
  {
    *(a1 + 344) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 296);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 280));
  v3 = *(a1 + 240);
  if (v3)
  {
    *(a1 + 248) = v3;
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

void std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::destroy(a1[1]);
    v2 = a1[20];
    if (v2)
    {
      a1[21] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_configureForStartTime(uint64_t a1)
{
  v30 = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v4 = [v2 dateIntervalContainingDate:v3 index:&v30];

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
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::HDStatisticsBucket(v22, WeakRetained, v7, v13);

  if (*(a1 + 32) == 1)
  {
    v24 = 1;
  }

  v23 = *(a1 + 56);
  v25 = *(a1 + 24) & 1;
  if (v28 != (a1 + 72))
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v28, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 4);
  }

  objc_storeStrong(&v27, *(a1 + 648));
  if (!*(a1 + 40))
  {
    v26 = 0;
    if (v29 == -1.79769313e308)
    {
      v29 = *(a1 + 640);
    }
  }

  v15 = v30;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::HDStatisticsBucket(v17, v22);
  v18 = v15;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::HDStatisticsBucket(v19, v17);
  __p = 0u;
  v21 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v19);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v17);
  *(a1 + 632) = 0;
  return HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v22);
}

void *HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::operator=((a1 + 1), a2 + 8);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 61), (a2 + 488));
  v4 = *(a2 + 512);
  *(a2 + 512) = 0;
  v5 = a1[64];
  a1[64] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v11;
  *(a1 + 120) = v10;
  v12 = *(a2 + 168);
  v13 = *(a2 + 184);
  v14 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v14;
  *(a1 + 184) = v13;
  *(a1 + 168) = v12;
  v15 = *(a2 + 232);
  *(a1 + 240) = 0;
  *(a1 + 232) = v15;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 240, *(a2 + 240), *(a2 + 248), (*(a2 + 248) - *(a2 + 240)) >> 4);
  *(a1 + 264) = *(a2 + 264);
  v16 = (a1 + 280);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = a1 + 280;
  v17 = *(a2 + 272);
  if (v17 != (a2 + 280))
  {
    v18 = 0;
    v19 = (a1 + 280);
    while (1)
    {
      v20 = (a1 + 280);
      if (v19 == v16)
      {
        goto LABEL_12;
      }

      v21 = v18;
      v22 = (a1 + 280);
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
          v25 = (a1 + 280);
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

      if (v29 == (a2 + 280))
      {
        break;
      }

      v18 = *v16;
      v19 = *(a1 + 272);
      v17 = v29;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 296, a2 + 296);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 336, *(a2 + 336), *(a2 + 344), (*(a2 + 344) - *(a2 + 336)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 360, a2 + 360);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 400, a2 + 400);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 440, a2 + 440);
  return a1;
}

void sub_228EEA98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 400);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 360);
  v14 = *(v10 + 336);
  if (v14)
  {
    *(v10 + 344) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 296);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::destroy(*v12);
  v15 = *v11;
  if (*v11)
  {
    *(v10 + 248) = v15;
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

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::operator=(uint64_t a1, uint64_t a2)
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
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  v10 = *(a2 + 184);
  v11 = *(a2 + 200);
  v12 = *(a2 + 216);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 216) = v12;
  *(a1 + 200) = v11;
  *(a1 + 184) = v10;
  v13 = *(a2 + 136);
  v14 = *(a2 + 152);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 152) = v14;
  *(a1 + 136) = v13;
  *(a1 + 232) = *(a2 + 232);
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 240, (a2 + 240));
  *(a1 + 264) = *(a2 + 264);
  v15 = a1 + 280;
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 280));
  *(a1 + 272) = *(a2 + 272);
  v16 = *(a2 + 280);
  v17 = *(a2 + 288);
  *(a1 + 280) = v16;
  *(a1 + 288) = v17;
  if (v17)
  {
    *(v16 + 16) = v15;
    *(a2 + 272) = a2 + 280;
    *(a2 + 280) = 0;
    *(a2 + 288) = 0;
  }

  else
  {
    *(a1 + 272) = v15;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 296, (a2 + 296));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 336, (a2 + 336));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 360, (a2 + 360));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 400, (a2 + 400));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 440, (a2 + 440));
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v22 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
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

  v13 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v22 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = *(a2 + 336);
      v17 = *(a2 + 344);
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

  v23[0] = &unk_283BEDC98;
  v23[3] = v23;
  v13;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](v24, v23);
  v25 = 0;
  operator new();
}

void sub_228EEB7F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::__function::__value_func<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](v40 - 176);
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](&a37);

  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](&a33);
  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 320);
  v2 = *(a1 + 336);
  if (v1 != (*(a1 + 344) - v2) >> 3)
  {
    *(a1 + 344) = v2;
    std::vector<long long>::reserve((a1 + 336), v1);
    for (i = *(a1 + 312); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 336, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 336];
    }
  }
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v74 = (a1 + 280);
    while (1)
    {
      v6 = *(a1 + 96);
      v7 = *(a1 + 104);
      v8 = 0xAAAAAAAAAAAAAAABLL * (v7 - v6);
      if (v8 == 1)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_86;
      }

      v9 = a2;
      v10 = a2;
      v11 = v5;
      v12 = *(a1 + 96);
      if (v6 != v7)
      {
        do
        {
          v13 = *(v12 + 8);
          v14 = *(v12 + 16);
          if (v13 > v11 && v13 < v10)
          {
            v10 = *(v12 + 8);
          }

          if (v14 > v5)
          {
            v16 = *(v12 + 16);
          }

          else
          {
            v16 = v9;
          }

          if (v14 < v9)
          {
            v11 = v5;
            v9 = v16;
          }

          v12 += 48;
        }

        while (v12 != v7);
      }

      if (v9 >= v10)
      {
        v17 = v10;
      }

      else
      {
        v17 = v9;
      }

      v18 = *(a1 + 16);
      if (v18 > 0.0)
      {
        v19 = v18 * floor(v17 / v18);
        v20 = v18 * floor((v18 + v5) / v18);
        if (v19 >= v20)
        {
          v17 = v19;
        }

        else
        {
          v17 = v20;
        }
      }

      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if (v6 != v7)
      {
        if (v8 < 0x555555555555556)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(0xAAAAAAAAAAAAAAABLL * (v7 - v6));
        }

        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      v22 = __clz(v8);
      if (WeakRetained)
      {
        *&v77.var0 = a1;
        v23 = 126 - 2 * v22;
        if (v6 == v7)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,false>(v6, v7, &v77, v24, 1);
      }

      else
      {
        v51 = 126 - 2 * v22;
        if (v6 == v7)
        {
          v24 = 0;
        }

        else
        {
          v24 = v51;
        }
      }

      std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v6, v7, v24, 1);
      if (*(a1 + 25) == 1)
      {
        v75 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v75 = 0;
      }

      if (v6 != v7)
      {
        v52 = 0;
        v53 = 0;
        v54 = v6;
        while (1)
        {
          v55 = v54[1];
          *&v77.var0 = *v54;
          *&v77.var2 = v55;
          *&v77.var4 = *(v54 + 4);
          if (v77.var4 && v77.var1 <= v17)
          {
            break;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, v54);
LABEL_121:
          v54 += 3;
          if (v54 == v7)
          {
            goto LABEL_122;
          }
        }

        var2 = v77.var2;
        if (v77.var2 > v17)
        {
          var2 = v17;
        }

        v77.var2 = var2;
        for (i = *(a1 + 64); i != *(a1 + 72) && v77.var1 >= *i; i += 2)
        {
          if (v77.var1 < i[1])
          {
            goto LABEL_121;
          }
        }

        v58 = *(v54 + 42);
        v59 = *(v54 + 41);
        if (v53)
        {
          var3 = v77.var3;
          if (v52 == v77.var3 || *(a1 + 24) == 1)
          {
            HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::addSample(a1 + 120, &v77.var0);
            HDStatisticsTimeInterval::addSample((a1 + 232), &v77, v58 ^ 1);
          }
        }

        else
        {
          HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::addSample(a1 + 120, &v77.var0);
          HDStatisticsTimeInterval::addSample((a1 + 232), &v77, v58 ^ 1);
          var3 = v77.var3;
          v52 = v77.var3;
        }

        if (*(a1 + 25) != 1)
        {
          goto LABEL_120;
        }

        v61 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, var3);
        if (!v61)
        {
          goto LABEL_119;
        }

        v62 = [v75 objectForKeyedSubscript:v61];
        v63 = v62;
        if (v62)
        {
          if ([v62 longLongValue] != var3 && *(a1 + 24) != 1)
          {
LABEL_118:

LABEL_119:
LABEL_120:
            v53 = 1;
            goto LABEL_121;
          }
        }

        else
        {
          v64 = [MEMORY[0x277CCABB0] numberWithLongLong:var3];
          [v75 setObject:v64 forKeyedSubscript:v61];
        }

        v65 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, var3);
        v66 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v65);
        HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::addSample(v66, &v77.var0);
        HDStatisticsTimeInterval::addSample(v66 + 7, &v77, v59 ^ 1);
        goto LABEL_118;
      }

LABEL_122:
      *(a1 + 264) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 240), v17) + *(a1 + 264);
      v67 = *(a1 + 272);
      if (v67 != v74)
      {
        do
        {
          *(v67 + 23) = HKIntervalMask<double>::removeIntervalsBefore(v67 + 20, v17) + *(v67 + 23);
          v68 = v67[1];
          if (v68)
          {
            do
            {
              v69 = v68;
              v68 = *v68;
            }

            while (v68);
          }

          else
          {
            do
            {
              v69 = v67[2];
              v70 = *v69 == v67;
              v67 = v69;
            }

            while (!v70);
          }

          v67 = v69;
        }

        while (v69 != v74);
      }

      *(a1 + 56) = v17;

      if (v6)
      {
        operator delete(v6);
      }

LABEL_131:
      v71 = *(a1 + 56);
      if (v71 == v5)
      {
        v72 = [MEMORY[0x277CCA890] currentHandler];
        v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>, HDStatisticsTimeInterval>>::_mergeThroughTime(double) [Statistics = HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>, HDStatisticsTimeInterval>]"}];
        [v72 handleFailureInFunction:v73 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v71 = *(a1 + 56);
      }

      v5 = v71;
      if (v71 >= a2)
      {
        return;
      }
    }

    v25 = *(v6 + 42);
    v26 = *(v6 + 41);
    v27 = *(v6 + 40);
    v29 = *v6;
    v28 = *(v6 + 1);
    v30 = *(v6 + 2);
    v31 = *(v6 + 3);
    v32 = *(v6 + 32);
    v33 = *(v6 + 33);
    if (v30 <= a2)
    {
      v34 = *(v6 + 2);
    }

    else
    {
      v34 = a2;
    }

    if (v28 < a2)
    {
      v35 = *(v6 + 32);
    }

    else
    {
      v35 = 0;
    }

    if (v28 < a2)
    {
      v36 = 0;
    }

    else
    {
      v36 = *(v6 + 33);
    }

    if (v28 < a2)
    {
      v37 = 0;
    }

    else
    {
      v34 = *(v6 + 2);
      v37 = *(v6 + 3);
    }

    if (v28 < a2)
    {
      v38 = 0.0;
    }

    else
    {
      v38 = *(v6 + 2);
    }

    if (v28 < a2)
    {
      v39 = 0.0;
    }

    else
    {
      v39 = *v6;
    }

    if (v28 < a2)
    {
      v40 = 0.0;
    }

    else
    {
      v40 = *(v6 + 1);
    }

    if (v28 < a2)
    {
      v41 = 0;
    }

    else
    {
      v41 = *(v6 + 32);
    }

    if (v6[2])
    {
      v30 = v34;
    }

    else
    {
      v35 = *(v6 + 32);
      v36 = 0;
      v37 = 0;
    }

    if (v6[2])
    {
      v42 = v38;
    }

    else
    {
      v42 = 0.0;
    }

    if (v6[2])
    {
      v43 = v39;
    }

    else
    {
      v43 = 0.0;
    }

    if (v6[2])
    {
      v44 = v40;
    }

    else
    {
      v44 = 0.0;
    }

    if (v6[2])
    {
      v45 = v41;
    }

    else
    {
      v45 = 0;
    }

    v77.var0 = *v6;
    v77.var1 = v28;
    v77.var2 = v30;
    v77.var3 = v31;
    v77.var4 = v35;
    v77.var5 = v33;
    *(&v77.var5 + 1) = *(v6 + 34);
    *(&v77.var5 + 5) = *(v6 + 19);
    *&v78 = v43;
    *(&v78 + 1) = v44;
    *&v79 = v42;
    *(&v79 + 1) = v37;
    LOBYTE(v80) = v45;
    HIBYTE(v80) = v36;
    for (j = *(a1 + 64); j != *(a1 + 72) && v28 >= *j; j += 2)
    {
      if (v28 < j[1])
      {
        goto LABEL_83;
      }
    }

    if (v35)
    {
      HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::addSample(a1 + 120, &v77.var0);
      HDStatisticsTimeInterval::addSample((a1 + 232), &v77, v25 ^ 1);
      if (*(a1 + 25) == 1)
      {
        v47 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v31);
        v48 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v47);
        HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>::addSample(v48, &v77.var0);
        HDStatisticsTimeInterval::addSample(v48 + 7, &v77, v26 ^ 1);
      }

      v27 = 1;
      LOBYTE(v26) = 1;
      LOBYTE(v25) = 1;
    }

LABEL_83:
    if (v45)
    {
      LOWORD(v76) = v80;
      v49 = v79;
      v50 = *(a1 + 96);
      *v50 = v78;
      *(v50 + 16) = v49;
      *(v50 + 32) = v76;
      *(v50 + 40) = v27;
      *(v50 + 41) = v26;
      *(v50 + 42) = v25;
    }

    else
    {
      *(a1 + 104) = *(a1 + 96);
    }

LABEL_86:
    *(a1 + 56) = a2;
    goto LABEL_131;
  }
}

void *HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *(a1 + 280);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (a1 + 280);
  v5 = (a1 + 280);
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
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 272, a2);
    v8 = &v7;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 272, v7);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 360), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, a2);
      v9[0] = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 400), v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v9[1] = v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 400), v9)[3] = a2;
        v6 = v9[0];
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9[0] = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 440), a2);
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
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 440), a2);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

void *std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
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

void std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,false>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
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
          v106 = *(*a3 + 336);
          v107 = *(*a3 + 344);
          if (v106 == v107)
          {
            v109 = *(*a3 + 336);
            v108 = v109;
          }

          else
          {
            v108 = *(*a3 + 336);
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
            v109 = *(*a3 + 344);
LABEL_189:
            while (*v108 != v105)
            {
              v108 += 8;
              if (v108 == v107)
              {
                v108 = *(*a3 + 344);
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

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, (a2 - 3), a3);
      return;
    }

    if (v13 == 5)
    {
      v110 = *MEMORY[0x277D85DE8];

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, v11 + 144, (a2 - 3), a3);
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
              v119 = *(*a3 + 336);
              v120 = *(*a3 + 344);
              if (v119 == v120)
              {
                v122 = *(*a3 + 336);
                v121 = v122;
              }

              else
              {
                v121 = *(*a3 + 336);
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
                v122 = *(*a3 + 344);
LABEL_213:
                while (*v121 != v118)
                {
                  v121 += 8;
                  if (v121 == v120)
                  {
                    v121 = *(*a3 + 344);
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
                    v126 = *(*a3 + 336);
                    v127 = *(*a3 + 344);
                    if (v126 == v127)
                    {
                      v129 = *(*a3 + 336);
                      v128 = v129;
                    }

                    else
                    {
                      v128 = *(*a3 + 336);
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
                      v129 = *(*a3 + 344);
LABEL_226:
                      while (*v128 != v125)
                      {
                        v128 += 8;
                        if (v128 == v127)
                        {
                          v128 = *(*a3 + 344);
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
            v214 = *(*a3 + 336);
            v215 = *(*a3 + 344);
            if (v214 == v215)
            {
              v217 = *(*a3 + 336);
              v216 = v217;
            }

            else
            {
              v216 = *(*a3 + 336);
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
              v217 = *(*a3 + 344);
LABEL_352:
              while (*v216 != v213)
              {
                v216 += 8;
                if (v216 == v215)
                {
                  v216 = *(*a3 + 344);
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

                v222 = *(*a3 + 336);
                v223 = *(*a3 + 344);
                if (v222 == v223)
                {
                  v225 = *(*a3 + 336);
                  v224 = v225;
                }

                else
                {
                  v224 = *(*a3 + 336);
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
                  v225 = *(*a3 + 344);
LABEL_364:
                  while (*v224 != v221)
                  {
                    v224 += 8;
                    if (v224 == v223)
                    {
                      v224 = *(*a3 + 344);
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
                v138 = *(*a3 + 336);
                v137 = *(*a3 + 344);
                if (v138 == v137)
                {
                  v140 = *(*a3 + 336);
                  v139 = v140;
                }

                else
                {
                  v139 = *(*a3 + 336);
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
                  v140 = *(*a3 + 344);
LABEL_246:
                  while (*v139 != v136)
                  {
                    v139 += 8;
                    if (v139 == v137)
                    {
                      v139 = *(*a3 + 344);
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

            v149 = *(*a3 + 336);
            v148 = *(*a3 + 344);
            if (v149 == v148)
            {
              v151 = *(*a3 + 336);
              v150 = v151;
            }

            else
            {
              v150 = *(*a3 + 336);
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
              v151 = *(*a3 + 344);
LABEL_261:
              while (*v150 != v147)
              {
                v150 += 8;
                if (v150 == v148)
                {
                  v150 = *(*a3 + 344);
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
                      v159 = *(*a3 + 336);
                      v160 = *(*a3 + 344);
                      if (v159 == v160)
                      {
                        v162 = *(*a3 + 336);
                        v161 = v162;
                      }

                      else
                      {
                        v161 = *(*a3 + 336);
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
                        v162 = *(*a3 + 344);
LABEL_275:
                        while (*v161 != v158)
                        {
                          v161 += 8;
                          if (v161 == v160)
                          {
                            v161 = *(*a3 + 344);
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
                    v169 = *(*a3 + 336);
                    v168 = *(*a3 + 344);
                    if (v169 == v168)
                    {
                      v171 = *(*a3 + 336);
                      v170 = v171;
                    }

                    else
                    {
                      v170 = *(*a3 + 336);
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
                      v171 = *(*a3 + 344);
LABEL_290:
                      while (*v170 != v147)
                      {
                        v170 += 8;
                        if (v170 == v168)
                        {
                          v170 = *(*a3 + 344);
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
                v185 = *(*a3 + 336);
                v184 = *(*a3 + 344);
                if (v185 == v184)
                {
                  v187 = *(*a3 + 336);
                  v186 = v187;
                }

                else
                {
                  v186 = *(*a3 + 336);
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
                  v187 = *(*a3 + 344);
LABEL_307:
                  while (*v186 != v183)
                  {
                    v186 += 8;
                    if (v186 == v184)
                    {
                      v186 = *(*a3 + 344);
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
                v199 = *(*a3 + 336);
                v198 = *(*a3 + 344);
                if (v199 == v198)
                {
                  v201 = *(*a3 + 336);
                  v200 = v201;
                }

                else
                {
                  v200 = *(*a3 + 336);
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
                  v201 = *(*a3 + 344);
LABEL_322:
                  while (*v200 != v197)
                  {
                    v200 += 8;
                    if (v200 == v198)
                    {
                      v200 = *(*a3 + 344);
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

                    v208 = *(*a3 + 336);
                    v207 = *(*a3 + 344);
                    if (v208 == v207)
                    {
                      v210 = *(*a3 + 336);
                      v209 = v210;
                    }

                    else
                    {
                      v209 = *(*a3 + 336);
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
                      v210 = *(*a3 + 344);
LABEL_339:
                      while (*v209 != v197)
                      {
                        v209 += 8;
                        if (v209 == v207)
                        {
                          v209 = *(*a3 + 344);
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
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v15, a1, a2 - 3, a3);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, v15, a2 - 3, a3);
      v16 = 3 * v14;
      v17 = (a1 + 48 * v14 - 48);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>((a1 + 48), v17, a2 - 6, a3);
      v18 = (a1 + 48 + 16 * v16);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>((a1 + 96), v18, a2 - 9, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v17, v15, v18, a3);
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
    v24 = *(*a3 + 336);
    v25 = *(*a3 + 344);
    if (v24 == v25)
    {
      v27 = *(*a3 + 336);
      v26 = v27;
    }

    else
    {
      v26 = *(*a3 + 336);
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
      v27 = *(*a3 + 344);
LABEL_23:
      while (*v26 != v21)
      {
        v26 += 8;
        if (v26 == v25)
        {
          v26 = *(*a3 + 344);
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

      v68 = *(*a3 + 336);
      v69 = *(*a3 + 344);
      v70 = v68;
      if (v68 == v69)
      {
        v71 = *(*a3 + 336);
      }

      else
      {
        while (*v70 != v21)
        {
          v70 += 8;
          if (v70 == v69)
          {
            v70 = *(*a3 + 344);
            break;
          }
        }

        v71 = *(*a3 + 336);
        while (*v71 != v67)
        {
          v71 += 8;
          if (v71 == v69)
          {
            v71 = *(*a3 + 344);
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
              v78 = *(v75 + 336);
              v79 = *(v75 + 344);
              if (v78 == v79)
              {
                v81 = *(v75 + 336);
                v80 = v81;
              }

              else
              {
                v80 = *(v75 + 336);
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
                v81 = *(v75 + 344);
LABEL_131:
                while (*v80 != v77)
                {
                  v80 += 8;
                  if (v80 == v79)
                  {
                    v80 = *(v75 + 344);
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
          v73 = *(*a3 + 336);
          if (v68 == v69)
          {
            v74 = *(*a3 + 336);
          }

          else
          {
            while (*v73 != v21)
            {
              v73 += 8;
              if (v73 == v69)
              {
                v73 = *(*a3 + 344);
                break;
              }
            }

            v74 = *(*a3 + 336);
            while (*v74 != v72)
            {
              v74 += 8;
              if (v74 == v69)
              {
                v74 = *(*a3 + 344);
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

          v85 = *(v83 + 336);
          v86 = *(v83 + 344);
          if (v85 == v86)
          {
            v88 = *(v83 + 336);
            v87 = v88;
          }

          else
          {
            v87 = *(v83 + 336);
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
            v88 = *(v83 + 344);
LABEL_145:
            while (*v87 != v84)
            {
              v87 += 8;
              if (v87 == v86)
              {
                v87 = *(v83 + 344);
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
          v93 = *(v91 + 336);
          v94 = *(v91 + 344);
          v95 = v93;
          if (v93 == v94)
          {
            v96 = *(v91 + 336);
          }

          else
          {
            while (*v95 != v21)
            {
              v95 += 8;
              if (v95 == v94)
              {
                v95 = *(v91 + 344);
                break;
              }
            }

            v96 = *(v91 + 336);
            while (*v96 != v92)
            {
              v96 += 8;
              if (v96 == v94)
              {
                v96 = *(v91 + 344);
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

        v32 = *(v22 + 336);
        v33 = *(v22 + 344);
        if (v32 == v33)
        {
          v35 = *(v22 + 336);
          v34 = v35;
        }

        else
        {
          v34 = *(v22 + 336);
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
          v35 = *(v22 + 344);
LABEL_35:
          while (*v34 != v21)
          {
            v34 += 8;
            if (v34 == v33)
            {
              v34 = *(v22 + 344);
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
              v43 = *(v22 + 336);
              v44 = *(v22 + 344);
              if (v43 == v44)
              {
                v46 = *(v22 + 336);
                v45 = v46;
              }

              else
              {
                v45 = *(v22 + 336);
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
                v46 = *(v22 + 344);
LABEL_61:
                while (*v45 != v21)
                {
                  v45 += 8;
                  if (v45 == v44)
                  {
                    v45 = *(v22 + 344);
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
          v38 = *(v22 + 336);
          v39 = *(v22 + 344);
          if (v38 == v39)
          {
            v41 = *(v22 + 336);
            v40 = v41;
          }

          else
          {
            v40 = *(v22 + 336);
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
            v41 = *(v22 + 344);
LABEL_47:
            while (*v40 != v21)
            {
              v40 += 8;
              if (v40 == v39)
              {
                v40 = *(v22 + 344);
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

            v53 = *(v51 + 336);
            v54 = *(v51 + 344);
            if (v53 == v54)
            {
              v56 = *(v51 + 336);
              v55 = v56;
            }

            else
            {
              v55 = *(v51 + 336);
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
              v56 = *(v51 + 344);
LABEL_76:
              while (*v55 != v21)
              {
                v55 += 8;
                if (v55 == v54)
                {
                  v55 = *(v51 + 344);
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
            v58 = *(v51 + 336);
            v59 = *(v51 + 344);
            if (v58 == v59)
            {
              v61 = *(v51 + 336);
              v60 = v61;
            }

            else
            {
              v60 = *(v51 + 336);
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
              v61 = *(v51 + 344);
LABEL_87:
              while (*v60 != v21)
              {
                v60 += 8;
                if (v60 == v59)
                {
                  v60 = *(v51 + 344);
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

      v65 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*>(a1, v11 - 48, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*>(v11, a2, a3))
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
        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,false>(a1, v11 - 48, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  v103 = *MEMORY[0x277D85DE8];

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v11, (v11 + 48), a2 - 3, a3);
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 3);
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v6 = *(*a4 + 336);
  v7 = *(*a4 + 344);
  v8 = v6;
  if (v6 == v7)
  {
    v9 = *(*a4 + 336);
  }

  else
  {
    while (*v8 != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(*a4 + 344);
        break;
      }
    }

    v9 = *(*a4 + 336);
    while (*v9 != v5)
    {
      v9 += 8;
      if (v9 == v7)
      {
        v9 = *(*a4 + 344);
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
      v14 = *(*a4 + 336);
      v15 = *(*a4 + 344);
      if (v14 == v15)
      {
        v17 = *(*a4 + 336);
        v16 = v17;
      }

      else
      {
        v16 = *(*a4 + 336);
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
        v17 = *(*a4 + 344);
LABEL_27:
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v15)
          {
            v16 = *(*a4 + 344);
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
          v24 = *(*a4 + 336);
          v25 = *(*a4 + 344);
          if (v24 == v25)
          {
            v27 = *(*a4 + 336);
            v26 = v27;
          }

          else
          {
            v26 = *(*a4 + 336);
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
            v27 = *(*a4 + 344);
LABEL_38:
            while (*v26 != v23)
            {
              v26 += 8;
              if (v26 == v25)
              {
                v26 = *(*a4 + 344);
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
      v11 = *(*a4 + 336);
      if (v6 == v7)
      {
        v12 = *(*a4 + 336);
      }

      else
      {
        while (*v11 != v10)
        {
          v11 += 8;
          if (v11 == v7)
          {
            v11 = *(*a4 + 344);
            break;
          }
        }

        v12 = *(*a4 + 336);
        while (*v12 != v4)
        {
          v12 += 8;
          if (v12 == v7)
          {
            v12 = *(*a4 + 344);
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
      v37 = *(*a4 + 336);
      v38 = *(*a4 + 344);
      if (v37 == v38)
      {
        v40 = *(*a4 + 336);
        v39 = v40;
      }

      else
      {
        v39 = *(*a4 + 336);
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
        v40 = *(*a4 + 344);
LABEL_50:
        while (*v39 != v36)
        {
          v39 += 8;
          if (v39 == v38)
          {
            v39 = *(*a4 + 344);
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

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 336);
    v14 = *(*a5 + 344);
    if (v13 == v14)
    {
      v16 = *(*a5 + 336);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 336);
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
      v16 = *(*a5 + 344);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 344);
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
        v22 = *(*a5 + 336);
        v23 = *(*a5 + 344);
        if (v22 == v23)
        {
          v25 = *(*a5 + 336);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 336);
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
          v25 = *(*a5 + 344);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 344);
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
            v31 = *(*a5 + 336);
            v32 = *(*a5 + 344);
            if (v31 == v32)
            {
              v34 = *(*a5 + 336);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 336);
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
              v34 = *(*a5 + 344);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 344);
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

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *(a5 + 24);
  v14 = *(a4 + 24);
  if (v13 != v14)
  {
    v15 = *(*a6 + 336);
    v16 = *(*a6 + 344);
    if (v15 == v16)
    {
      v18 = *(*a6 + 336);
      v17 = v18;
    }

    else
    {
      v17 = *(*a6 + 336);
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
      v18 = *(*a6 + 344);
LABEL_7:
      while (*v17 != v14)
      {
        v17 += 8;
        if (v17 == v16)
        {
          v17 = *(*a6 + 344);
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
        v24 = *(*a6 + 336);
        v25 = *(*a6 + 344);
        if (v24 == v25)
        {
          v27 = *(*a6 + 336);
          v26 = v27;
        }

        else
        {
          v26 = *(*a6 + 336);
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
          v27 = *(*a6 + 344);
LABEL_18:
          while (*v26 != v23)
          {
            v26 += 8;
            if (v26 == v25)
            {
              v26 = *(*a6 + 344);
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
            v33 = *(*a6 + 336);
            v34 = *(*a6 + 344);
            if (v33 == v34)
            {
              v36 = *(*a6 + 336);
              v35 = v36;
            }

            else
            {
              v35 = *(*a6 + 336);
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
              v36 = *(*a6 + 344);
LABEL_29:
              while (*v35 != v32)
              {
                v35 += 8;
                if (v35 == v34)
                {
                  v35 = *(*a6 + 344);
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
                v42 = *(*a6 + 336);
                v43 = *(*a6 + 344);
                if (v42 == v43)
                {
                  v45 = *(*a6 + 336);
                  v44 = v45;
                }

                else
                {
                  v44 = *(*a6 + 336);
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
                  v45 = *(*a6 + 344);
LABEL_40:
                  while (*v44 != v41)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(*a6 + 344);
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*>(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v9 = *(*a3 + 336);
          v10 = *(*a3 + 344);
          if (v9 == v10)
          {
            v12 = *(*a3 + 336);
            v11 = v12;
          }

          else
          {
            v11 = *(*a3 + 336);
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
            v12 = *(*a3 + 344);
LABEL_10:
            while (*v11 != v8)
            {
              v11 += 8;
              if (v11 == v10)
              {
                v11 = *(*a3 + 344);
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
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, (a1 + 48), (a2 - 48), a3);
      goto LABEL_50;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a2 - 48, a3);
      goto LABEL_50;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a1 + 144, a2 - 48, a3);
      goto LABEL_50;
  }

LABEL_18:
  v13 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), a3);
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
      v18 = *(*a3 + 336);
      v19 = *(*a3 + 344);
      if (v18 == v19)
      {
        v21 = *(*a3 + 336);
        v20 = v21;
      }

      else
      {
        v20 = *(*a3 + 336);
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
        v21 = *(*a3 + 344);
LABEL_26:
        while (*v20 != v17)
        {
          v20 += 8;
          if (v20 == v19)
          {
            v20 = *(*a3 + 344);
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
            v25 = *(*a3 + 336);
            v26 = *(*a3 + 344);
            if (v25 == v26)
            {
              v28 = *(*a3 + 336);
              v27 = v28;
            }

            else
            {
              v27 = *(*a3 + 336);
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
              v28 = *(*a3 + 344);
LABEL_39:
              while (*v27 != v24)
              {
                v27 += 8;
                if (v27 == v26)
                {
                  v27 = *(*a3 + 344);
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

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::statisticsByBundleIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v2 = *(a2 + 272);
  v28 = (a2 + 280);
  if (v2 == (a2 + 280))
  {
    return;
  }

  v27 = a1 + 16;
  do
  {
    v4 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a2, v2[4]);
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
    v19 = *(v2 + 5);
    v20 = *(v2 + 7);
    *(v12 + 7) = *(v2 + 9);
    *(v12 + 5) = v20;
    *(v12 + 3) = v19;
    v21 = *(v2 + 11);
    v22 = *(v2 + 13);
    v23 = *(v2 + 15);
    *(v12 + 15) = *(v2 + 17);
    *(v12 + 13) = v23;
    *(v12 + 11) = v22;
    *(v12 + 9) = v21;
    v12[17] = v2[19];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 18, v2[20], v2[21], (v2[21] - v2[20]) >> 4);
    }

    v12[21] = v2[23];

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

void sub_228EEEAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](va);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::~__hash_table(v6);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,0>(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>,0>((v2 + 2));
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

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEDB78;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEDB78;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 112;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEDC08;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEDC08;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_primitiveAddSample(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (*(a1 + 632) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = a2[1];
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 1);
  v10 = *(a1 + 40);
  if (v10)
  {
    if (*(a1 + 632))
    {
      v11 = -1.79769313e308;
    }

    else
    {
      v11 = *(a1 + 176);
      v13 = *(a1 + 120);
      if (v11 <= v13)
      {
        v11 = -1.79769313e308;
      }

      if (v11 < v13)
      {
        v11 = *(a1 + 120);
      }
    }
  }

  else
  {
    v11 = *(a1 + 176);
    if (v11 <= *(a1 + 120))
    {
      v11 = -1.79769313e308;
    }
  }

  if (v9 >= v11)
  {
    if (v10 && a3)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v14 = a2[2];
    v15 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
    v12 = (*(*a1 + 128))(a1, v15, a4);
  }

  return v12;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_advanceToTime(uint64_t result, double a2)
{
  if (*(result + 128) <= a2)
  {
    v2 = result;
    if (*(v2 + 608) != *(v2 + 600))
    {
      [*(result + 40) dateIntervalAtIndex:*(result + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_updateSourceOrder(v2 + 120);
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v2, v2 + 120);
    }

    v5 = 0;
    v3 = *(result + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_updateSourceOrder(v2 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v2, v2 + 120);
  }

  return result;
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *(a2 + 32);
  if ((v4 & 1) == 0 || (v5 = *(a2 + 1), v5 < *(a1 + 8)))
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    goto LABEL_4;
  }

  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = a2[3];
  v9 = *(a2 + 33);
  *(&v41 + 1) = a2[1];
  *&v42 = v7;
  *(&v42 + 1) = v8;
  LOBYTE(v43) = v4;
  HIBYTE(v43) = v9;
  *&v41 = v6;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
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

    *&v42 = v13;
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 304), v8);
    v14 = *(a1 + 112);
    if (v14 == *(a1 + 104) && *(a1 + 192) <= 0)
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
      if (!a3)
      {
        goto LABEL_35;
      }
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

      if (!a3)
      {
        goto LABEL_35;
      }
    }

    if (v5 < *(a1 + 16))
    {
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 8, v5);
      v14 = *(a1 + 112);
    }

LABEL_35:
    v38 = v41;
    v39 = v42;
    LOWORD(v40) = v43;
    v19 = *(a1 + 120);
    if (v14 >= v19)
    {
      v22 = *(a1 + 104);
      v23 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v22) >> 4);
      v24 = v23 + 1;
      if (v23 + 1 > 0x555555555555555)
      {
        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      v25 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v22) >> 4);
      if (2 * v25 > v24)
      {
        v24 = 2 * v25;
      }

      if (v25 >= 0x2AAAAAAAAAAAAAALL)
      {
        v26 = 0x555555555555555;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v26);
      }

      v27 = 48 * v23;
      v28 = v39;
      *v27 = v38;
      *(v27 + 16) = v28;
      *(v27 + 32) = v40;
      *(v27 + 40) = 0;
      *(v27 + 42) = 0;
      v21 = 48 * v23 + 48;
      v29 = *(a1 + 104);
      v30 = *(a1 + 112) - v29;
      v31 = 48 * v23 - v30;
      memcpy((v27 - v30), v29, v30);
      v32 = *(a1 + 104);
      *(a1 + 104) = v31;
      *(a1 + 112) = v21;
      *(a1 + 120) = 0;
      if (v32)
      {
        operator delete(v32);
      }
    }

    else
    {
      v20 = v39;
      *v14 = v38;
      *(v14 + 16) = v20;
      *(v14 + 32) = v40;
      *(v14 + 40) = 0;
      *(v14 + 42) = 0;
      v21 = v14 + 48;
    }

    *(a1 + 112) = v21;
    if (!*(a1 + 232) || *(a1 + 208) <= v5)
    {
      *(a1 + 200) = v6;
      *(a1 + 208) = v5;
      *(a1 + 216) = v7;
      *(a1 + 224) = v8;
      *(a1 + 232) = v4;
      *(a1 + 233) = v9;
    }

    if (*(a1 + 33) == 1)
    {
      v33 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1 + 8, v8);
      v34 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>::_statisticsForSource(a1 + 8, v33);
      if (!*(v34 + 104) || v34[10] <= v5)
      {
        *(v34 + 9) = v6;
        v34[10] = v5;
        v34[11] = v7;
        *(v34 + 12) = v8;
        *(v34 + 104) = v4;
        *(v34 + 105) = v9;
      }
    }

    goto LABEL_4;
  }

  v35 = v41;
  v36 = v42;
  v37 = v43;
  if (v5 >= v10)
  {
    v10 = v5;
  }

  *(&v35 + 1) = v10;
LABEL_4:
  if (v37 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 488, &v35);
  }
}