__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 344);
    v14 = *(*a5 + 352);
    if (v13 == v14)
    {
      v16 = *(*a5 + 344);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 344);
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
      v16 = *(*a5 + 352);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 352);
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
        v22 = *(*a5 + 344);
        v23 = *(*a5 + 352);
        if (v22 == v23)
        {
          v25 = *(*a5 + 344);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 344);
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
          v25 = *(*a5 + 352);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 352);
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
            v31 = *(*a5 + 344);
            v32 = *(*a5 + 352);
            if (v31 == v32)
            {
              v34 = *(*a5 + 344);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 344);
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
              v34 = *(*a5 + 352);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 352);
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

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *(a5 + 24);
  v14 = *(a4 + 24);
  if (v13 != v14)
  {
    v15 = *(*a6 + 344);
    v16 = *(*a6 + 352);
    if (v15 == v16)
    {
      v18 = *(*a6 + 344);
      v17 = v18;
    }

    else
    {
      v17 = *(*a6 + 344);
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
      v18 = *(*a6 + 352);
LABEL_7:
      while (*v17 != v14)
      {
        v17 += 8;
        if (v17 == v16)
        {
          v17 = *(*a6 + 352);
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
        v24 = *(*a6 + 344);
        v25 = *(*a6 + 352);
        if (v24 == v25)
        {
          v27 = *(*a6 + 344);
          v26 = v27;
        }

        else
        {
          v26 = *(*a6 + 344);
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
          v27 = *(*a6 + 352);
LABEL_18:
          while (*v26 != v23)
          {
            v26 += 8;
            if (v26 == v25)
            {
              v26 = *(*a6 + 352);
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
            v33 = *(*a6 + 344);
            v34 = *(*a6 + 352);
            if (v33 == v34)
            {
              v36 = *(*a6 + 344);
              v35 = v36;
            }

            else
            {
              v35 = *(*a6 + 344);
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
              v36 = *(*a6 + 352);
LABEL_29:
              while (*v35 != v32)
              {
                v35 += 8;
                if (v35 == v34)
                {
                  v35 = *(*a6 + 352);
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
                v42 = *(*a6 + 344);
                v43 = *(*a6 + 352);
                if (v42 == v43)
                {
                  v45 = *(*a6 + 344);
                  v44 = v45;
                }

                else
                {
                  v44 = *(*a6 + 344);
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
                  v45 = *(*a6 + 352);
LABEL_40:
                  while (*v44 != v41)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(*a6 + 352);
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder*>(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v9 = *(*a3 + 344);
          v10 = *(*a3 + 352);
          if (v9 == v10)
          {
            v12 = *(*a3 + 344);
            v11 = v12;
          }

          else
          {
            v11 = *(*a3 + 344);
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
            v12 = *(*a3 + 352);
LABEL_10:
            while (*v11 != v8)
            {
              v11 += 8;
              if (v11 == v10)
              {
                v11 = *(*a3 + 352);
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
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a2 - 48), a3);
      goto LABEL_50;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a2 - 48, a3);
      goto LABEL_50;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a1 + 144, a2 - 48, a3);
      goto LABEL_50;
  }

LABEL_18:
  v13 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), a3);
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
      v18 = *(*a3 + 344);
      v19 = *(*a3 + 352);
      if (v18 == v19)
      {
        v21 = *(*a3 + 344);
        v20 = v21;
      }

      else
      {
        v20 = *(*a3 + 344);
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
        v21 = *(*a3 + 352);
LABEL_26:
        while (*v20 != v17)
        {
          v20 += 8;
          if (v20 == v19)
          {
            v20 = *(*a3 + 352);
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
            v25 = *(*a3 + 344);
            v26 = *(*a3 + 352);
            if (v25 == v26)
            {
              v28 = *(*a3 + 344);
              v27 = v28;
            }

            else
            {
              v27 = *(*a3 + 344);
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
              v28 = *(*a3 + 352);
LABEL_39:
              while (*v27 != v24)
              {
                v27 += 8;
                if (v27 == v26)
                {
                  v27 = *(*a3 + 352);
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

void *std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_228EA17F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<long long,NSString * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,NSString * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::overallStatistics(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 128);
  *(a1 + 24) = *(a2 + 144);
  v5 = *(a2 + 176);
  *(a1 + 40) = *(a2 + 160);
  *(a1 + 56) = v5;
  *a1 = *(a2 + 120);
  *(a1 + 8) = v4;
  v6 = *(a2 + 200);
  *(a1 + 72) = *(a2 + 192);
  *(a1 + 80) = v6;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v7 = *(a2 + 208);
  v8 = *(a2 + 216);
  *(a1 + 88) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 88, v7, v8, (v8 - v7) >> 4);
  *(a1 + 112) = *(a2 + 232);
  result = *(a2 + 240);
  v10 = *(a2 + 256);
  *(a1 + 120) = result;
  *(a1 + 136) = v10;
  *(a1 + 152) = *(a2 + 272);
  return result;
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::statisticsByBundleIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v2 = *(a2 + 280);
  v28 = (a2 + 288);
  if (v2 == (a2 + 288))
  {
    return;
  }

  v27 = a1 + 16;
  do
  {
    v4 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a2, v2[4]);
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
    *(v12 + 2) = *(v2 + 3);
    v19 = *(v2 + 4);
    v20 = *(v2 + 5);
    v21 = *(v2 + 6);
    v12[12] = v2[14];
    *(v12 + 5) = v21;
    *(v12 + 4) = v20;
    *(v12 + 3) = v19;
    v12[13] = v2[15];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 14, v2[16], v2[17], (v2[17] - v2[16]) >> 4);
    }

    v12[17] = v2[19];
    v22 = *(v2 + 10);
    v23 = *(v2 + 11);
    *(v12 + 88) = *(v2 + 96);
    *(v12 + 9) = v22;
    *(v12 + 10) = v23;

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

void sub_228EA1E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>,void *>>>>::~unique_ptr[abi:ne200100](va);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>>::~__hash_table(v6);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>,0>(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>,0>((v2 + 2));
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

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEC858;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEC858;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 72;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsDiscrete const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEC8E8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsDiscrete const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEC8E8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsDiscrete const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsDiscrete const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsDiscrete const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsDiscrete const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_primitiveAddSample(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 640) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = *(a2 + 8);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 8);
  if (v9 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && a3)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v10 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v9 end:*(a2 + 16)];
    v11 = (*(*a1 + 128))(a1, v10, a4);
  }

  return v11;
}

double _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_earliestStartTimeWithoutInvalidation(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if ((*(a1 + 640) & 1) == 0)
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

void std::vector<HDRawQuantitySample>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HDRawQuantitySample>>(v11);
    }

    v12 = 40 * v8;
    v13 = *a2;
    v14 = a2[1];
    *(v12 + 32) = *(a2 + 4);
    *v12 = v13;
    *(v12 + 16) = v14;
    v7 = 40 * v8 + 40;
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
  }

  *(a1 + 8) = v7;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_advanceToTime(uint64_t result, double a2)
{
  if (*(result + 128) <= a2)
  {
    v2 = result;
    if (*(v2 + 616) != *(v2 + 608))
    {
      [*(result + 40) dateIntervalAtIndex:*(result + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_updateSourceOrder(v2 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v2, (v2 + 120));
    }

    v5 = 0;
    v3 = *(result + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_updateSourceOrder(v2 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v2, (v2 + 120));
  }

  return result;
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::addSample(uint64_t a1, uint64_t *a2, int a3)
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
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 312), v8);
      v14 = *(a1 + 112);
      if (v14 == *(a1 + 104) && *(a1 + 160) <= 0)
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
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 8, v5);
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
      if (!*(a1 + 280) || *(a1 + 256) <= v5)
      {
        *(a1 + 248) = v6;
        *(a1 + 256) = v5;
        *(a1 + 264) = v7;
        *(a1 + 272) = v8;
        *(a1 + 280) = v4;
        *(a1 + 281) = v9;
        if (!*(a1 + 200) || *(a1 + 176) <= v5)
        {
          *(a1 + 168) = v6;
          *(a1 + 176) = v5;
          *(a1 + 184) = v7;
          *(a1 + 192) = v8;
          *(a1 + 200) = v4;
          *(a1 + 201) = v9;
        }
      }

      if (*(a1 + 33) == 1)
      {
        v34 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1 + 8, v8);
        v35 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_statisticsForSource(a1 + 8, v34);
        if (!*(v35 + 152) || v35[16] <= v5)
        {
          *(v35 + 15) = v6;
          v35[16] = v5;
          v35[17] = v7;
          *(v35 + 18) = v8;
          *(v35 + 152) = v4;
          *(v35 + 153) = v9;
          if (!*(v35 + 72) || v35[6] <= v5)
          {
            *(v35 + 5) = v6;
            v35[6] = v5;
            v35[7] = v7;
            *(v35 + 8) = v8;
            *(v35 + 72) = v4;
            *(v35 + 73) = v9;
          }
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
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 496, &v36);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 642) == 1)
  {
    *(a1 + 644) = 1;
  }

  else
  {
    *(a1 + 644) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::advanceBucket(void *a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, a1[62], a1[63], 0xCCCCCCCCCCCCCCCDLL * ((a1[63] - a1[62]) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228EA30FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = (a1 + 40);
  objc_storeStrong((a1 + 520), *(a1 + 40));
  *(v8 - 4) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  v9 = 0uLL;
  memset(v19, 0, sizeof(v19));
  v10 = *(a1 + 216);
  *(a1 + 128) = 0;
  *(a1 + 168) = *&v19[36];
  *(a1 + 184) = *&v19[52];
  *(a1 + 136) = *&v19[4];
  *(a1 + 152) = *&v19[20];
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  if (v10)
  {
    *(a1 + 224) = v10;
    operator delete(v10);
    v9 = 0uLL;
  }

  *(a1 + 280) = 0;
  *(a1 + 248) = v9;
  *(a1 + 264) = v9;
  *(a1 + 216) = v9;
  *(a1 + 232) = v9;
  if (*(a1 + 304))
  {
    v11 = *(a1 + 288);
    v12 = *(a1 + 296);
    *(a1 + 288) = a1 + 296;
    *(v12 + 16) = 0;
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
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

        std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>>::destroy(v13);
        for (i = v14[2]; i; i = i[2])
        {
          v14 = i;
        }

        v13 = v14;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>>::destroy(v13);
  }

  objc_storeStrong(v8, *(a1 + 520));
  *(a1 + 504) = *(a1 + 496);
  *a1 = a2;
  v17 = *MEMORY[0x277D85DE8];
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 644) == 1)
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

    *(a1 + 644) = 0;
  }
}

void std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HDRawQuantitySample>>(a4);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }
}

void sub_228EA33DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HDRawQuantitySample>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_currentBucketInterval(uint64_t a1)
{
  if (*(a1 + 640))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:*(a1 + 120) end:{*(a1 + 128), v1}];
  }

  return v3;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228EA3518(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 640) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228EA3968(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C400CC883D5);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v15, (v15 + 120));
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
    }

    return 1;
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 640) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, a2);
  }
}

__n128 std::__introsort<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 40);
  v10 = (a2 - 80);
  v11 = (a2 - 120);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        result.n128_u64[0] = *(a2 - 32);
        if (result.n128_f64[0] < *(v12 + 8))
        {
          v294 = *(v12 + 32);
          v226 = *v12;
          v262 = *(v12 + 16);
          v123 = *(a2 - 40);
          v124 = *(a2 - 24);
          *(v12 + 32) = *(a2 - 8);
          *v12 = v123;
          *(v12 + 16) = v124;
          result = v226;
          *(a2 - 8) = v294;
          *(a2 - 24) = v262;
          *(a2 - 40) = v226;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v129 = *(v12 + 48);
      v130 = *(v12 + 88);
      if (v129 >= *(v12 + 8))
      {
        if (v130 < v129)
        {
          v179 = *(v12 + 72);
          result = *(v12 + 40);
          v180 = *(v12 + 96);
          *(v12 + 40) = *(v12 + 80);
          v181 = *(v12 + 56);
          *(v12 + 56) = v180;
          *(v12 + 72) = *(v12 + 112);
          *(v12 + 80) = result;
          *(v12 + 96) = v181;
          *(v12 + 112) = v179;
          if (*(v12 + 48) < *(v12 + 8))
          {
            v299 = *(v12 + 32);
            v233 = *v12;
            v269 = *(v12 + 16);
            v182 = *(v12 + 56);
            *v12 = *(v12 + 40);
            *(v12 + 16) = v182;
            *(v12 + 32) = *(v12 + 72);
            *(v12 + 40) = v233;
            *(v12 + 56) = v269;
            *(v12 + 72) = v299;
          }
        }
      }

      else if (v130 >= v129)
      {
        v302 = *(v12 + 32);
        v236 = *v12;
        v272 = *(v12 + 16);
        v191 = *(v12 + 56);
        *v12 = *(v12 + 40);
        *(v12 + 16) = v191;
        *(v12 + 32) = *(v12 + 72);
        *(v12 + 40) = v236;
        *(v12 + 56) = v272;
        *(v12 + 72) = v302;
        if (v130 < *(v12 + 48))
        {
          v192 = *(v12 + 72);
          result = *(v12 + 56);
          v193 = *(v12 + 40);
          v194 = *(v12 + 96);
          *(v12 + 40) = *(v12 + 80);
          *(v12 + 56) = v194;
          *(v12 + 72) = *(v12 + 112);
          *(v12 + 80) = v193;
          *(v12 + 96) = result;
          *(v12 + 112) = v192;
        }
      }

      else
      {
        v296 = *(v12 + 32);
        v228 = *v12;
        v264 = *(v12 + 16);
        v131 = *(v12 + 96);
        *v12 = *(v12 + 80);
        *(v12 + 16) = v131;
        *(v12 + 32) = *(v12 + 112);
        *(v12 + 80) = v228;
        *(v12 + 96) = v264;
        *(v12 + 112) = v296;
      }

      result.n128_u64[0] = *(a2 - 32);
      if (result.n128_f64[0] >= *(v12 + 88))
      {
        return result;
      }

      v237 = *(v12 + 80);
      v273 = *(v12 + 96);
      v303 = *(v12 + 112);
      v196 = *v9;
      v195 = *(a2 - 24);
      *(v12 + 112) = *(a2 - 8);
      *(v12 + 80) = v196;
      *(v12 + 96) = v195;
      *(a2 - 8) = v303;
      *v9 = v237;
      *(a2 - 24) = v273;
      result.n128_u64[0] = *(v12 + 88);
      if (result.n128_f64[0] >= *(v12 + 48))
      {
        return result;
      }

      v197 = *(v12 + 72);
      result = *(v12 + 40);
      v198 = *(v12 + 96);
      *(v12 + 40) = *(v12 + 80);
      v199 = *(v12 + 56);
      *(v12 + 56) = v198;
      *(v12 + 72) = *(v12 + 112);
      *(v12 + 80) = result;
      *(v12 + 96) = v199;
      *(v12 + 112) = v197;
LABEL_186:
      result.n128_u64[0] = *(v12 + 48);
      if (result.n128_f64[0] < *(v12 + 8))
      {
        v304 = *(v12 + 32);
        v238 = *v12;
        v274 = *(v12 + 16);
        v200 = *(v12 + 56);
        *v12 = *(v12 + 40);
        *(v12 + 16) = v200;
        *(v12 + 32) = *(v12 + 72);
        result = v238;
        *(v12 + 40) = v238;
        *(v12 + 56) = v274;
        *(v12 + 72) = v304;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,0>(v12, v12 + 40, v12 + 80, v12 + 120, a2 - 40, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 959)
    {
      v132 = (v12 + 40);
      v134 = v12 == a2 || v132 == a2;
      if (a4)
      {
        if (!v134)
        {
          v135 = 0;
          v136 = v12;
          do
          {
            v137 = v132;
            result.n128_u64[0] = *(v136 + 48);
            if (result.n128_f64[0] < *(v136 + 8))
            {
              v138 = *v132;
              v229 = *(v136 + 56);
              v265 = *(v136 + 72);
              v139 = v135;
              while (1)
              {
                v140 = v12 + v139;
                v141 = *(v12 + v139 + 16);
                *(v140 + 40) = *(v12 + v139);
                *(v140 + 56) = v141;
                *(v140 + 72) = *(v12 + v139 + 32);
                if (!v139)
                {
                  break;
                }

                v139 -= 40;
                if (result.n128_f64[0] >= *(v140 - 32))
                {
                  v142 = v12 + v139 + 40;
                  goto LABEL_129;
                }
              }

              v142 = v12;
LABEL_129:
              *v142 = v138;
              *(v142 + 8) = result.n128_u64[0];
              result = v229;
              *(v142 + 16) = v229;
              *(v142 + 32) = v265;
            }

            v132 = v137 + 5;
            v135 += 40;
            v136 = v137;
          }

          while (v137 + 5 != a2);
        }
      }

      else if (!v134)
      {
        do
        {
          v183 = v132;
          result.n128_u64[0] = *(a1 + 48);
          if (result.n128_f64[0] < *(a1 + 8))
          {
            v184 = *v132;
            v234 = *(a1 + 56);
            v270 = *(a1 + 72);
            v185 = v132;
            do
            {
              v186 = *(v185 - 3);
              *v185 = *(v185 - 5);
              *(v185 + 1) = v186;
              *(v185 + 16) = *(v185 - 4);
              v187 = *(v185 - 9);
              v185 -= 5;
            }

            while (result.n128_f64[0] < v187);
            *v185 = v184;
            v185[1] = result.n128_u64[0];
            result = v234;
            *(v185 + 16) = v270;
            *(v185 + 1) = v234;
          }

          v132 += 5;
          a1 = v183;
        }

        while (v183 + 5 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v143 = (v14 - 2) >> 1;
        v144 = v143;
        do
        {
          v145 = v144;
          if (v143 >= v144)
          {
            v146 = (2 * v144) | 1;
            v147 = v12 + 40 * v146;
            if (2 * v145 + 2 < v14 && *(v147 + 8) < *(v147 + 48))
            {
              v147 += 40;
              v146 = 2 * v145 + 2;
            }

            v148 = v12 + 40 * v145;
            v149 = *(v148 + 8);
            if (*(v147 + 8) >= v149)
            {
              v150 = *v148;
              v266 = *(v148 + 32);
              v230 = *(v148 + 16);
              do
              {
                v151 = v148;
                v148 = v147;
                v152 = *v147;
                v153 = *(v147 + 16);
                *(v151 + 32) = *(v147 + 32);
                *v151 = v152;
                *(v151 + 16) = v153;
                if (v143 < v146)
                {
                  break;
                }

                v154 = 2 * v146;
                v146 = (2 * v146) | 1;
                v147 = v12 + 40 * v146;
                v155 = v154 + 2;
                if (v155 < v14 && *(v147 + 8) < *(v147 + 48))
                {
                  v147 += 40;
                  v146 = v155;
                }
              }

              while (*(v147 + 8) >= v149);
              *v148 = v150;
              *(v148 + 8) = v149;
              *(v148 + 16) = v230;
              *(v148 + 32) = v266;
            }
          }

          v144 = v145 - 1;
        }

        while (v145);
        v156 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
        do
        {
          v157 = 0;
          v297 = *(v12 + 32);
          v231 = *v12;
          v267 = *(v12 + 16);
          v158 = v12;
          do
          {
            v159 = v158 + 40 * v157;
            v160 = (v159 + 40);
            v161 = (2 * v157) | 1;
            v157 = 2 * v157 + 2;
            if (v157 >= v156)
            {
              v157 = v161;
            }

            else
            {
              v162 = *(v159 + 48);
              v163 = *(v159 + 88);
              v164 = (v159 + 80);
              if (v162 >= v163)
              {
                v157 = v161;
              }

              else
              {
                v160 = v164;
              }
            }

            v165 = *v160;
            v166 = v160[1];
            *(v158 + 32) = v160[2].n128_u16[0];
            *v158 = v165;
            *(v158 + 16) = v166;
            v158 = v160;
          }

          while (v157 <= ((v156 - 2) >> 1));
          a2 -= 40;
          if (v160 == a2)
          {
            result = v231;
            v160[2].n128_u16[0] = v297;
            *v160 = v231;
            v160[1] = v267;
          }

          else
          {
            v167 = *a2;
            v168 = *(a2 + 16);
            v160[2].n128_u16[0] = *(a2 + 32);
            *v160 = v167;
            v160[1] = v168;
            result = v231;
            *(a2 + 32) = v297;
            *a2 = v231;
            *(a2 + 16) = v267;
            v169 = &v160[2].n128_i64[1] - v12;
            if (v169 >= 41)
            {
              v170 = (-2 - 0x3333333333333333 * (v169 >> 3)) >> 1;
              v171 = v12 + 40 * v170;
              result.n128_u64[0] = v160->n128_u64[1];
              if (*(v171 + 8) < result.n128_f64[0])
              {
                v172 = v160->n128_u64[0];
                v203 = v160[1];
                v206 = v160[2].n128_i64[0];
                do
                {
                  v173 = v160;
                  v160 = v171;
                  v174 = *v171;
                  v175 = *(v171 + 16);
                  v173[2].n128_u16[0] = *(v171 + 32);
                  *v173 = v174;
                  v173[1] = v175;
                  if (!v170)
                  {
                    break;
                  }

                  v170 = (v170 - 1) >> 1;
                  v171 = v12 + 40 * v170;
                }

                while (*(v171 + 8) < result.n128_f64[0]);
                v160->n128_u64[0] = v172;
                v160->n128_u64[1] = result.n128_u64[0];
                result = v203;
                v160[1] = v203;
                v160[2].n128_u16[0] = v206;
              }
            }
          }
        }

        while (v156-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 40 * (v14 >> 1);
    v17 = *(a2 - 32);
    if (v13 >= 0x1401)
    {
      v18 = *(v16 + 8);
      if (v18 >= *(v12 + 8))
      {
        if (v17 < v18)
        {
          v277 = *(v16 + 32);
          v209 = *v16;
          v241 = *(v16 + 16);
          v24 = *v9;
          v25 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v24;
          *(v16 + 16) = v25;
          *(a2 - 8) = v277;
          *v9 = v209;
          *(a2 - 24) = v241;
          if (*(v16 + 8) < *(v12 + 8))
          {
            v278 = *(v12 + 32);
            v210 = *v12;
            v242 = *(v12 + 16);
            v26 = *v16;
            v27 = *(v16 + 16);
            *(v12 + 32) = *(v16 + 32);
            *v12 = v26;
            *(v12 + 16) = v27;
            *(v16 + 32) = v278;
            *v16 = v210;
            *(v16 + 16) = v242;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v275 = *(v12 + 32);
          v207 = *v12;
          v239 = *(v12 + 16);
          v19 = *v9;
          v20 = *(a2 - 24);
          *(v12 + 32) = *(a2 - 8);
          *v12 = v19;
          *(v12 + 16) = v20;
          goto LABEL_26;
        }

        v281 = *(v12 + 32);
        v213 = *v12;
        v245 = *(v12 + 16);
        v32 = *v16;
        v33 = *(v16 + 16);
        *(v12 + 32) = *(v16 + 32);
        *v12 = v32;
        *(v12 + 16) = v33;
        *(v16 + 32) = v281;
        *v16 = v213;
        *(v16 + 16) = v245;
        if (*(a2 - 32) < *(v16 + 8))
        {
          v275 = *(v16 + 32);
          v207 = *v16;
          v239 = *(v16 + 16);
          v34 = *v9;
          v35 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v34;
          *(v16 + 16) = v35;
LABEL_26:
          *(a2 - 8) = v275;
          *v9 = v207;
          *(a2 - 24) = v239;
        }
      }

      v36 = v12 + 40 * v15;
      v37 = v36 - 40;
      v38 = *(v36 - 32);
      v39 = *(a2 - 72);
      if (v38 >= *(v12 + 48))
      {
        if (v39 < v38)
        {
          v282 = *(v36 - 8);
          v214 = *v37;
          v246 = *(v36 - 24);
          v45 = *v10;
          v46 = *(a2 - 64);
          *(v36 - 8) = *(a2 - 48);
          *v37 = v45;
          *(v36 - 24) = v46;
          *(a2 - 48) = v282;
          *v10 = v214;
          *(a2 - 64) = v246;
          if (*(v36 - 32) < *(v12 + 48))
          {
            v47 = *(v12 + 40);
            v247 = *(v12 + 56);
            v48 = *(v12 + 72);
            v50 = *v37;
            v49 = *(v37 + 16);
            *(v12 + 72) = *(v37 + 32);
            *(v12 + 40) = v50;
            *(v12 + 56) = v49;
            *(v37 + 32) = v48;
            *v37 = v47;
            *(v37 + 16) = v247;
          }
        }
      }

      else
      {
        if (v39 < v38)
        {
          v40 = *(v12 + 40);
          v41 = *(v12 + 56);
          v42 = *(v12 + 72);
          v44 = *v10;
          v43 = *(a2 - 64);
          *(v12 + 72) = *(a2 - 48);
          *(v12 + 40) = v44;
          *(v12 + 56) = v43;
          *(a2 - 48) = v42;
          goto LABEL_38;
        }

        v55 = *(v12 + 40);
        v249 = *(v12 + 56);
        v56 = *(v12 + 72);
        v58 = *v37;
        v57 = *(v37 + 16);
        *(v12 + 72) = *(v37 + 32);
        *(v12 + 40) = v58;
        *(v12 + 56) = v57;
        *(v37 + 32) = v56;
        *v37 = v55;
        *(v37 + 16) = v249;
        if (*(a2 - 72) < *(v37 + 8))
        {
          v284 = *(v37 + 32);
          v216 = *v37;
          v250 = *(v37 + 16);
          v59 = *v10;
          v60 = *(a2 - 64);
          *(v37 + 32) = *(a2 - 48);
          *v37 = v59;
          *(v37 + 16) = v60;
          v40 = v216;
          v41 = v250;
          *(a2 - 48) = v284;
LABEL_38:
          *v10 = v40;
          *(a2 - 64) = v41;
        }
      }

      v61 = v12 + 40 * v15;
      v62 = *(v61 + 48);
      v63 = *(a2 - 112);
      if (v62 >= *(v12 + 88))
      {
        if (v63 < v62)
        {
          v285 = *(v61 + 72);
          v217 = *(v61 + 40);
          v251 = *(v61 + 56);
          v69 = *v11;
          v70 = *(a2 - 104);
          *(v61 + 72) = *(a2 - 88);
          *(v61 + 56) = v70;
          *(v61 + 40) = v69;
          *(a2 - 88) = v285;
          *v11 = v217;
          *(a2 - 104) = v251;
          if (*(v61 + 48) < *(v12 + 88))
          {
            v71 = *(v12 + 80);
            v252 = *(v12 + 96);
            v72 = *(v12 + 112);
            v73 = *(v61 + 56);
            v74 = *(v61 + 40);
            *(v12 + 112) = *(v61 + 72);
            *(v12 + 80) = v74;
            *(v12 + 96) = v73;
            *(v61 + 56) = v252;
            *(v61 + 72) = v72;
            *(v61 + 40) = v71;
          }
        }
      }

      else
      {
        if (v63 < v62)
        {
          v64 = *(v12 + 80);
          v65 = *(v12 + 96);
          v66 = *(v12 + 112);
          v68 = *v11;
          v67 = *(a2 - 104);
          *(v12 + 112) = *(a2 - 88);
          *(v12 + 80) = v68;
          *(v12 + 96) = v67;
          *(a2 - 88) = v66;
          goto LABEL_47;
        }

        v75 = *(v12 + 80);
        v253 = *(v12 + 96);
        v76 = *(v12 + 112);
        v77 = *(v61 + 56);
        v78 = *(v61 + 40);
        *(v12 + 112) = *(v61 + 72);
        *(v12 + 80) = v78;
        *(v12 + 96) = v77;
        *(v61 + 56) = v253;
        *(v61 + 72) = v76;
        *(v61 + 40) = v75;
        if (*(a2 - 112) < *(v61 + 48))
        {
          v286 = *(v61 + 72);
          v218 = *(v61 + 40);
          v254 = *(v61 + 56);
          v79 = *v11;
          v80 = *(a2 - 104);
          *(v61 + 72) = *(a2 - 88);
          *(v61 + 56) = v80;
          *(v61 + 40) = v79;
          v64 = v218;
          v65 = v254;
          *(a2 - 88) = v286;
LABEL_47:
          *v11 = v64;
          *(a2 - 104) = v65;
        }
      }

      v81 = *(v16 + 8);
      v82 = *(v61 + 48);
      if (v81 >= *(v37 + 8))
      {
        if (v82 < v81)
        {
          v288 = *(v16 + 32);
          v220 = *v16;
          v256 = *(v16 + 16);
          v84 = *(v61 + 56);
          *v16 = *(v61 + 40);
          *(v16 + 16) = v84;
          *(v16 + 32) = *(v61 + 72);
          *(v61 + 56) = v256;
          *(v61 + 72) = v288;
          *(v61 + 40) = v220;
          if (*(v16 + 8) < *(v37 + 8))
          {
            v289 = *(v37 + 32);
            v221 = *v37;
            v257 = *(v37 + 16);
            v85 = *(v16 + 16);
            *v37 = *v16;
            *(v37 + 16) = v85;
            *(v37 + 32) = *(v16 + 32);
            *(v16 + 32) = v289;
            *v16 = v221;
            *(v16 + 16) = v257;
          }
        }
      }

      else
      {
        if (v82 < v81)
        {
          v287 = *(v37 + 32);
          v219 = *v37;
          v255 = *(v37 + 16);
          v83 = *(v61 + 56);
          *v37 = *(v61 + 40);
          *(v37 + 16) = v83;
          *(v37 + 32) = *(v61 + 72);
          goto LABEL_56;
        }

        v290 = *(v37 + 32);
        v222 = *v37;
        v258 = *(v37 + 16);
        v86 = *(v16 + 16);
        *v37 = *v16;
        *(v37 + 16) = v86;
        *(v37 + 32) = *(v16 + 32);
        *(v16 + 32) = v290;
        *v16 = v222;
        *(v16 + 16) = v258;
        if (*(v61 + 48) < *(v16 + 8))
        {
          v287 = *(v16 + 32);
          v219 = *v16;
          v255 = *(v16 + 16);
          v87 = *(v61 + 56);
          *v16 = *(v61 + 40);
          *(v16 + 16) = v87;
          *(v16 + 32) = *(v61 + 72);
LABEL_56:
          *(v61 + 56) = v255;
          *(v61 + 72) = v287;
          *(v61 + 40) = v219;
        }
      }

      v291 = *(v12 + 32);
      v223 = *v12;
      v259 = *(v12 + 16);
      v88 = *v16;
      v89 = *(v16 + 16);
      *(v12 + 32) = *(v16 + 32);
      *v12 = v88;
      *(v12 + 16) = v89;
      *(v16 + 32) = v291;
      *v16 = v223;
      *(v16 + 16) = v259;
      goto LABEL_58;
    }

    v21 = *(v12 + 8);
    if (v21 >= *(v16 + 8))
    {
      if (v17 < v21)
      {
        v279 = *(v12 + 32);
        v211 = *v12;
        v243 = *(v12 + 16);
        v28 = *v9;
        v29 = *(a2 - 24);
        *(v12 + 32) = *(a2 - 8);
        *v12 = v28;
        *(v12 + 16) = v29;
        *(a2 - 8) = v279;
        *v9 = v211;
        *(a2 - 24) = v243;
        if (*(v12 + 8) < *(v16 + 8))
        {
          v280 = *(v16 + 32);
          v212 = *v16;
          v244 = *(v16 + 16);
          v30 = *v12;
          v31 = *(v12 + 16);
          *(v16 + 32) = *(v12 + 32);
          *v16 = v30;
          *(v16 + 16) = v31;
          *(v12 + 32) = v280;
          *v12 = v212;
          *(v12 + 16) = v244;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v21)
    {
      v276 = *(v16 + 32);
      v208 = *v16;
      v240 = *(v16 + 16);
      v22 = *v9;
      v23 = *(a2 - 24);
      *(v16 + 32) = *(a2 - 8);
      *v16 = v22;
      *(v16 + 16) = v23;
LABEL_35:
      *(a2 - 8) = v276;
      *v9 = v208;
      *(a2 - 24) = v240;
      goto LABEL_58;
    }

    v283 = *(v16 + 32);
    v215 = *v16;
    v248 = *(v16 + 16);
    v51 = *v12;
    v52 = *(v12 + 16);
    *(v16 + 32) = *(v12 + 32);
    *v16 = v51;
    *(v16 + 16) = v52;
    *(v12 + 32) = v283;
    *v12 = v215;
    *(v12 + 16) = v248;
    if (*(a2 - 32) < *(v12 + 8))
    {
      v276 = *(v12 + 32);
      v208 = *v12;
      v240 = *(v12 + 16);
      v53 = *v9;
      v54 = *(a2 - 24);
      *(v12 + 32) = *(a2 - 8);
      *v12 = v53;
      *(v12 + 16) = v54;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v90 = *(v12 + 8);
LABEL_61:
      v91 = 0;
      v92 = *v12;
      v201 = *(v12 + 16);
      v204 = *(v12 + 32);
      do
      {
        v93 = *(v12 + v91 + 48);
        v91 += 40;
      }

      while (v93 < v90);
      v94 = v12 + v91;
      v95 = a2;
      if (v91 == 40)
      {
        v98 = a2;
        while (v94 < v98)
        {
          v96 = v98 - 40;
          v99 = *(v98 - 32);
          v98 -= 40;
          if (v99 < v90)
          {
            goto LABEL_71;
          }
        }

        v96 = v98;
      }

      else
      {
        do
        {
          v96 = v95 - 40;
          v97 = *(v95 - 32);
          v95 -= 40;
        }

        while (v97 >= v90);
      }

LABEL_71:
      v12 = v94;
      if (v94 < v96)
      {
        v100 = v96;
        do
        {
          v292 = *(v12 + 32);
          v224 = *v12;
          v260 = *(v12 + 16);
          v101 = *v100;
          v102 = *(v100 + 16);
          *(v12 + 32) = *(v100 + 32);
          *v12 = v101;
          *(v12 + 16) = v102;
          *(v100 + 32) = v292;
          *v100 = v224;
          *(v100 + 16) = v260;
          do
          {
            v103 = *(v12 + 48);
            v12 += 40;
          }

          while (v103 < v90);
          do
          {
            v104 = *(v100 - 32);
            v100 -= 40;
          }

          while (v104 >= v90);
        }

        while (v12 < v100);
      }

      if (v12 - 40 != a1)
      {
        v105 = *(v12 - 40);
        v106 = *(v12 - 24);
        *(a1 + 32) = *(v12 - 8);
        *a1 = v105;
        *(a1 + 16) = v106;
      }

      *(v12 - 40) = v92;
      *(v12 - 32) = v90;
      *(v12 - 8) = v204;
      *(v12 - 24) = v201;
      if (v94 < v96)
      {
        goto LABEL_82;
      }

      v107 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*>(a1, v12 - 40, v201);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*>(v12, a2, v108))
      {
        a2 = v12 - 40;
        if (!v107)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v107)
      {
LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,false>(a1, v12 - 40, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v90 = *(v12 + 8);
      if (*(v12 - 32) < v90)
      {
        goto LABEL_61;
      }

      v109 = *v12;
      v202 = *(v12 + 16);
      v205 = *(v12 + 32);
      if (v90 >= *(a2 - 32))
      {
        v112 = v12 + 40;
        do
        {
          v12 = v112;
          if (v112 >= a2)
          {
            break;
          }

          v113 = *(v112 + 8);
          v112 += 40;
        }

        while (v90 >= v113);
      }

      else
      {
        v110 = v12;
        do
        {
          v12 = v110 + 40;
          v111 = *(v110 + 48);
          v110 += 40;
        }

        while (v90 >= v111);
      }

      v114 = a2;
      if (v12 < a2)
      {
        v115 = a2;
        do
        {
          v114 = v115 - 40;
          v116 = *(v115 - 32);
          v115 -= 40;
        }

        while (v90 < v116);
      }

      while (v12 < v114)
      {
        v293 = *(v12 + 32);
        v225 = *v12;
        v261 = *(v12 + 16);
        v117 = *v114;
        v118 = *(v114 + 16);
        *(v12 + 32) = *(v114 + 32);
        *v12 = v117;
        *(v12 + 16) = v118;
        *(v114 + 32) = v293;
        *v114 = v225;
        *(v114 + 16) = v261;
        do
        {
          v119 = *(v12 + 48);
          v12 += 40;
        }

        while (v90 >= v119);
        do
        {
          v120 = *(v114 - 32);
          v114 -= 40;
        }

        while (v90 < v120);
      }

      if (v12 - 40 != a1)
      {
        v121 = *(v12 - 40);
        v122 = *(v12 - 24);
        *(a1 + 32) = *(v12 - 8);
        *a1 = v121;
        *(a1 + 16) = v122;
      }

      a4 = 0;
      *(v12 - 40) = v109;
      *(v12 - 32) = v90;
      result = v202;
      *(v12 - 8) = v205;
      *(v12 - 24) = v202;
    }
  }

  result.n128_u64[0] = *(v12 + 48);
  v125 = *(a2 - 32);
  if (result.n128_f64[0] >= *(v12 + 8))
  {
    if (v125 >= result.n128_f64[0])
    {
      return result;
    }

    v232 = *(v12 + 40);
    v268 = *(v12 + 56);
    v298 = *(v12 + 72);
    v178 = *v9;
    v177 = *(a2 - 24);
    *(v12 + 72) = *(a2 - 8);
    *(v12 + 40) = v178;
    *(v12 + 56) = v177;
    *(a2 - 8) = v298;
    *v9 = v232;
    *(a2 - 24) = v268;
    goto LABEL_186;
  }

  if (v125 >= result.n128_f64[0])
  {
    v300 = *(v12 + 32);
    v235 = *v12;
    v271 = *(v12 + 16);
    v188 = *(v12 + 56);
    *v12 = *(v12 + 40);
    *(v12 + 16) = v188;
    *(v12 + 32) = *(v12 + 72);
    *(v12 + 40) = v235;
    *(v12 + 56) = v271;
    *(v12 + 72) = v300;
    result.n128_u64[0] = *(a2 - 32);
    if (result.n128_f64[0] >= *(v12 + 48))
    {
      return result;
    }

    result = *(v12 + 40);
    v128 = *(v12 + 56);
    v301 = *(v12 + 72);
    v190 = *v9;
    v189 = *(a2 - 24);
    *(v12 + 72) = *(a2 - 8);
    *(v12 + 40) = v190;
    *(v12 + 56) = v189;
    *(a2 - 8) = v301;
  }

  else
  {
    v295 = *(v12 + 32);
    v227 = *v12;
    v263 = *(v12 + 16);
    v126 = *v9;
    v127 = *(a2 - 24);
    *(v12 + 32) = *(a2 - 8);
    *v12 = v126;
    *(v12 + 16) = v127;
    result = v227;
    v128 = v263;
    *(a2 - 8) = v295;
  }

  *v9 = result;
  *(a2 - 24) = v128;
  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = *(a2 + 8);
  v7 = *(a3 + 8);
  if (v6 >= *(a1 + 8))
  {
    if (v7 < v6)
    {
      v12 = *(a2 + 32);
      result = *a2;
      v13 = *(a2 + 16);
      v14 = *(a3 + 32);
      v15 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v15;
      *(a2 + 32) = v14;
      *a3 = result;
      *(a3 + 16) = v13;
      *(a3 + 32) = v12;
      if (*(a2 + 8) < *(a1 + 8))
      {
        v16 = *(a1 + 32);
        result = *a1;
        v17 = *(a1 + 16);
        v18 = *(a2 + 32);
        v19 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *(a1 + 32) = v18;
        *a2 = result;
        *(a2 + 16) = v17;
        *(a2 + 32) = v16;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *(a1 + 32);
      result = *a1;
      v9 = *(a1 + 16);
      v10 = *(a3 + 32);
      v11 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v11;
      *(a1 + 32) = v10;
LABEL_9:
      *a3 = result;
      *(a3 + 16) = v9;
      *(a3 + 32) = v8;
      goto LABEL_10;
    }

    v20 = *(a1 + 32);
    result = *a1;
    v21 = *(a1 + 16);
    v22 = *(a2 + 32);
    v23 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = v22;
    *a2 = result;
    *(a2 + 16) = v21;
    *(a2 + 32) = v20;
    if (*(a3 + 8) < *(a2 + 8))
    {
      v8 = *(a2 + 32);
      result = *a2;
      v9 = *(a2 + 16);
      v24 = *(a3 + 32);
      v25 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v25;
      *(a2 + 32) = v24;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 8) < *(a3 + 8))
  {
    v26 = *(a3 + 32);
    result = *a3;
    v27 = *(a3 + 16);
    v28 = *(a4 + 32);
    v29 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v29;
    *(a3 + 32) = v28;
    *a4 = result;
    *(a4 + 16) = v27;
    *(a4 + 32) = v26;
    if (*(a3 + 8) < *(a2 + 8))
    {
      v30 = *(a2 + 32);
      result = *a2;
      v31 = *(a2 + 16);
      v32 = *(a3 + 32);
      v33 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v33;
      *(a2 + 32) = v32;
      *a3 = result;
      *(a3 + 16) = v31;
      *(a3 + 32) = v30;
      if (*(a2 + 8) < *(a1 + 8))
      {
        v34 = *(a1 + 32);
        result = *a1;
        v35 = *(a1 + 16);
        v36 = *(a2 + 32);
        v37 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v37;
        *(a1 + 32) = v36;
        *a2 = result;
        *(a2 + 16) = v35;
        *(a2 + 32) = v34;
      }
    }
  }

  result.n128_u64[0] = *(a5 + 8);
  if (result.n128_f64[0] < *(a4 + 8))
  {
    v38 = *(a4 + 32);
    result = *a4;
    v39 = *(a4 + 16);
    v40 = *(a5 + 32);
    v41 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v41;
    *(a4 + 32) = v40;
    *a5 = result;
    *(a5 + 16) = v39;
    *(a5 + 32) = v38;
    result.n128_u64[0] = *(a4 + 8);
    if (result.n128_f64[0] < *(a3 + 8))
    {
      v42 = *(a3 + 32);
      result = *a3;
      v43 = *(a3 + 16);
      v44 = *(a4 + 32);
      v45 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v45;
      *(a3 + 32) = v44;
      *a4 = result;
      *(a4 + 16) = v43;
      *(a4 + 32) = v42;
      result.n128_u64[0] = *(a3 + 8);
      if (result.n128_f64[0] < *(a2 + 8))
      {
        v46 = *(a2 + 32);
        result = *a2;
        v47 = *(a2 + 16);
        v48 = *(a3 + 32);
        v49 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v49;
        *(a2 + 32) = v48;
        *a3 = result;
        *(a3 + 16) = v47;
        *(a3 + 32) = v46;
        result.n128_u64[0] = *(a2 + 8);
        if (result.n128_f64[0] < *(a1 + 8))
        {
          v50 = *(a1 + 32);
          result = *a1;
          v51 = *(a1 + 16);
          v52 = *(a2 + 32);
          v53 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v53;
          *(a1 + 32) = v52;
          *a2 = result;
          *(a2 + 16) = v51;
          *(a2 + 32) = v50;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v10 = (a2 - 40);
      v11 = *(a1 + 48);
      v12 = *(a2 - 32);
      if (v11 < *(a1 + 8))
      {
        if (v12 >= v11)
        {
          v54 = *(a1 + 32);
          v56 = *a1;
          v55 = *(a1 + 16);
          v57 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v57;
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v56;
          *(a1 + 56) = v55;
          *(a1 + 72) = v54;
          if (*(a2 - 32) >= *(a1 + 48))
          {
            return 1;
          }

          v13 = *(a1 + 72);
          v14 = *(a1 + 40);
          v15 = *(a1 + 56);
          v58 = *(a2 - 8);
          v59 = *(a2 - 24);
          *(a1 + 40) = *v10;
          *(a1 + 56) = v59;
          *(a1 + 72) = v58;
        }

        else
        {
          v13 = *(a1 + 32);
          v14 = *a1;
          v15 = *(a1 + 16);
          v16 = *(a2 - 8);
          v17 = *(a2 - 24);
          *a1 = *v10;
          *(a1 + 16) = v17;
          *(a1 + 32) = v16;
        }

        *v10 = v14;
        *(a2 - 24) = v15;
        v9 = 1;
        *(a2 - 8) = v13;
        return v9;
      }

      if (v12 >= v11)
      {
        return 1;
      }

      v33 = *(a1 + 72);
      v34 = *(a1 + 40);
      v35 = *(a1 + 56);
      v36 = *(a2 - 8);
      v37 = *(a2 - 24);
      *(a1 + 40) = *v10;
      *(a1 + 56) = v37;
      *(a1 + 72) = v36;
      *v10 = v34;
      *(a2 - 24) = v35;
      *(a2 - 8) = v33;
LABEL_50:
      if (*(a1 + 48) < *(a1 + 8))
      {
        v89 = *(a1 + 32);
        v91 = *a1;
        v90 = *(a1 + 16);
        v92 = *(a1 + 56);
        *a1 = *(a1 + 40);
        *(a1 + 16) = v92;
        *(a1 + 32) = *(a1 + 72);
        *(a1 + 40) = v91;
        *(a1 + 56) = v90;
        v9 = 1;
        *(a1 + 72) = v89;
        return v9;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,0>(a1, a1 + 40, a1 + 80, a1 + 120, a2 - 40, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v26 = *(a1 + 48);
    v27 = *(a1 + 8);
    v28 = *(a1 + 88);
    if (v26 >= v27)
    {
      if (v28 < v26)
      {
        v46 = *(a1 + 72);
        v47 = *(a1 + 56);
        v48 = *(a1 + 40);
        v49 = *(a1 + 96);
        *(a1 + 40) = *(a1 + 80);
        *(a1 + 56) = v49;
        *(a1 + 72) = *(a1 + 112);
        *(a1 + 80) = v48;
        *(a1 + 96) = v47;
        *(a1 + 112) = v46;
        if (*(a1 + 48) < v27)
        {
          v50 = *(a1 + 32);
          v52 = *a1;
          v51 = *(a1 + 16);
          v53 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v53;
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v52;
          *(a1 + 56) = v51;
          *(a1 + 72) = v50;
        }
      }

      goto LABEL_47;
    }

    if (v28 >= v26)
    {
      v74 = *(a1 + 32);
      v76 = *a1;
      v75 = *(a1 + 16);
      v77 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v77;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v76;
      *(a1 + 56) = v75;
      *(a1 + 72) = v74;
      if (v28 >= *(a1 + 48))
      {
        goto LABEL_47;
      }

      v29 = *(a1 + 72);
      v30 = *(a1 + 56);
      v31 = *(a1 + 40);
      v78 = *(a1 + 96);
      *(a1 + 40) = *(a1 + 80);
      *(a1 + 56) = v78;
      *(a1 + 72) = *(a1 + 112);
    }

    else
    {
      v29 = *(a1 + 32);
      v31 = *a1;
      v30 = *(a1 + 16);
      v32 = *(a1 + 96);
      *a1 = *(a1 + 80);
      *(a1 + 16) = v32;
      *(a1 + 32) = *(a1 + 112);
    }

    *(a1 + 80) = v31;
    *(a1 + 96) = v30;
    *(a1 + 112) = v29;
LABEL_47:
    if (*(a2 - 32) >= *(a1 + 88))
    {
      return 1;
    }

    v79 = a2 - 40;
    v80 = *(a1 + 112);
    v81 = *(a1 + 80);
    v82 = *(a1 + 96);
    v83 = *(a2 - 8);
    v84 = *(a2 - 24);
    *(a1 + 80) = *(a2 - 40);
    *(a1 + 96) = v84;
    *(a1 + 112) = v83;
    *v79 = v81;
    *(v79 + 16) = v82;
    *(v79 + 32) = v80;
    if (*(a1 + 88) >= *(a1 + 48))
    {
      return 1;
    }

    v85 = *(a1 + 72);
    v86 = *(a1 + 40);
    v87 = *(a1 + 96);
    *(a1 + 40) = *(a1 + 80);
    v88 = *(a1 + 56);
    *(a1 + 56) = v87;
    *(a1 + 72) = *(a1 + 112);
    *(a1 + 80) = v86;
    *(a1 + 96) = v88;
    *(a1 + 112) = v85;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 32) < *(a1 + 8))
    {
      v4 = *(a1 + 32);
      v5 = *a1;
      v6 = *(a1 + 16);
      v7 = *(a2 - 8);
      v8 = *(a2 - 24);
      *a1 = *(a2 - 40);
      *(a1 + 16) = v8;
      *(a1 + 32) = v7;
      *(a2 - 24) = v6;
      *(a2 - 40) = v5;
      v9 = 1;
      *(a2 - 8) = v4;
      return v9;
    }

    return 1;
  }

LABEL_13:
  v18 = a1 + 80;
  v19 = *(a1 + 48);
  v20 = *(a1 + 8);
  v21 = *(a1 + 88);
  if (v19 >= v20)
  {
    if (v21 < v19)
    {
      v38 = *(a1 + 72);
      v39 = *(a1 + 56);
      v40 = *(a1 + 40);
      v41 = *(a1 + 96);
      *(a1 + 40) = *v18;
      *(a1 + 56) = v41;
      *(a1 + 72) = *(a1 + 112);
      *v18 = v40;
      *(a1 + 96) = v39;
      *(a1 + 112) = v38;
      if (*(a1 + 48) < v20)
      {
        v42 = *(a1 + 32);
        v44 = *a1;
        v43 = *(a1 + 16);
        v45 = *(a1 + 56);
        *a1 = *(a1 + 40);
        *(a1 + 16) = v45;
        *(a1 + 32) = *(a1 + 72);
        *(a1 + 40) = v44;
        *(a1 + 56) = v43;
        *(a1 + 72) = v42;
      }
    }
  }

  else
  {
    if (v21 >= v19)
    {
      v60 = *(a1 + 32);
      v62 = *a1;
      v61 = *(a1 + 16);
      v63 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v63;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v62;
      *(a1 + 56) = v61;
      *(a1 + 72) = v60;
      if (v21 >= *(a1 + 48))
      {
        goto LABEL_33;
      }

      v22 = *(a1 + 72);
      v23 = *(a1 + 56);
      v24 = *(a1 + 40);
      v64 = *(a1 + 96);
      *(a1 + 40) = *v18;
      *(a1 + 56) = v64;
      *(a1 + 72) = *(a1 + 112);
    }

    else
    {
      v22 = *(a1 + 32);
      v24 = *a1;
      v23 = *(a1 + 16);
      v25 = *(a1 + 96);
      *a1 = *v18;
      *(a1 + 16) = v25;
      *(a1 + 32) = *(a1 + 112);
    }

    *v18 = v24;
    *(a1 + 96) = v23;
    *(a1 + 112) = v22;
  }

LABEL_33:
  v65 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v66 = 0;
  v67 = 0;
  while (1)
  {
    v68 = *(v65 + 8);
    if (v68 < *(v18 + 8))
    {
      v69 = *v65;
      v94 = *(v65 + 16);
      v95 = *(v65 + 32);
      v70 = v66;
      while (1)
      {
        v71 = a1 + v70;
        v72 = *(a1 + v70 + 96);
        *(v71 + 120) = *(a1 + v70 + 80);
        *(v71 + 136) = v72;
        *(v71 + 152) = *(a1 + v70 + 112);
        if (v70 == -80)
        {
          break;
        }

        v70 -= 40;
        if (v68 >= *(v71 + 48))
        {
          v73 = a1 + v70 + 120;
          goto LABEL_41;
        }
      }

      v73 = a1;
LABEL_41:
      *v73 = v69;
      *(v73 + 8) = v68;
      *(v73 + 16) = v94;
      *(v73 + 32) = v95;
      if (++v67 == 8)
      {
        return v65 + 40 == a2;
      }
    }

    v18 = v65;
    v66 += 40;
    v65 += 40;
    if (v65 == a2)
    {
      return 1;
    }
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::archive(uint64_t a1, int *a2)
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
  HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>::archive(v6, (a2 + 2));
  statistics::Statistics::operator=(*(a1 + 128), v6);
  statistics::Statistics::~Statistics(v6);
  v5 = *a2;
  *(a1 + 204) |= 0x100u;
  *(a1 + 136) = v5;
  statistics::Statistics::makeMostRecentDatum(a1);
  v6[0] = &unk_283BEB0A8;
  v10 = 127;
  v7 = vextq_s8(*(a2 + 30), *(a2 + 30), 8uLL);
  v6[1] = *(a2 + 17);
  v6[2] = *(a2 + 18);
  v8 = 0;
  v9 = 0;
  statistics::RawQuantitySample::operator=(*v4, v6);
  PB::Base::~Base(v6);
}

void HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>::archive(uint64_t a1, int8x16_t *a2)
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
  HDStatisticsDiscrete::archive(a2, v5);
  statistics::Statistics::operator=(*(a1 + 128), v5);
  statistics::Statistics::~Statistics(v5);
  statistics::Statistics::makeAuxiliaryStatistics(a1);
  HDStatisticsTimeInterval::archive(&a2[4].u64[1], v5);
  statistics::Statistics::operator=(*v4, v5);
  statistics::Statistics::~Statistics(v5);
}

double HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::unarchive(uint64_t a1, void *a2)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(a1 + 72) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 138) = 0u;
  v6 = a2[16];
  if (v6)
  {
    HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>::unarchive(v13, *(v6 + 8), *(v6 + 128));
    v7 = v15;
    *(v5 + 64) = v14;
    v8 = v13[3];
    *(v5 + 32) = v13[2];
    *(v5 + 48) = v8;
    v9 = v13[1];
    *v5 = v13[0];
    *(v5 + 16) = v9;
    *(a1 + 80) = v7;
    result = v18;
    v10 = v17;
    *(a1 + 88) = v16;
    *(a1 + 104) = v10;
    *(a1 + 112) = result;
  }

  *a1 = a2[17];
  v11 = a2[14];
  if (v11)
  {
    result = *(v11 + 8);
    v12 = *(v11 + 16);
    *(a1 + 120) = vextq_s8(*(v11 + 24), *(v11 + 24), 8uLL);
    *(a1 + 136) = result;
    *(a1 + 144) = v12;
    *(a1 + 152) = 1;
  }

  return result;
}

double HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>::unarchive(uint64_t a1, HDStatisticsTimeInterval *this, uint64_t a3)
{
  *(a1 + 64) = 0;
  v4 = 0uLL;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  if (a3)
  {
    v5 = *(a3 + 24);
    v6 = *(a3 + 104);
    v7 = *(a3 + 112);
    if (v7)
    {
      v4 = *(v7 + 24);
      v8 = *(v7 + 8);
      v9 = 1;
      v7 = *(v7 + 16);
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    *a1 = vextq_s8(*(a3 + 88), *(a3 + 88), 8uLL);
    *(a1 + 16) = v6;
    *(a1 + 24) = v5;
    v4 = vextq_s8(v4, v4, 8uLL);
    *(a1 + 32) = v4;
    *(a1 + 48) = v8;
    *(a1 + 56) = v7;
    *(a1 + 64) = v9;
    *(a1 + 65) = 0;
  }

  if (this)
  {
    HDStatisticsTimeInterval::unarchive(this, &v12);
    *(a1 + 72) = v12;
    v4.i64[0] = v15;
    v10 = v14;
    *(a1 + 80) = v13;
    *(a1 + 96) = v10;
    *(a1 + 104) = v4.i64[0];
  }

  return *v4.i64;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BECA28;
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
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 1;
  *(a1 + 594) = 0;
  *(a1 + 596) = 0;
  *(a1 + 600) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BECA28;
  v2 = *(a1 + 624);
  if (v2)
  {
    *(a1 + 632) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 560);
  if (v3)
  {
    *(a1 + 568) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 592) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 600) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 76, a2);
  v7 = a2;
  v4 = a1[76];
  v5 = a1[73];
  a1[73] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[73]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 264) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 copy];
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 592) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeThroughTime(v3, v4);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

void sub_228EA664C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(a1 + 594) == 1)
    {
      if (*(a1 + 593))
      {
        goto LABEL_6;
      }

      if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_earliestStartTimeWithoutInvalidation(a1) > *(a2 + 8))
      {
        v15 = *(a2 + 16);
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 595) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 624, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_13;
  }

LABEL_6:
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 594) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 594) = 1;
  v61 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v60 = v6;
  if (*(a1 + 593))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 616);
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

  [v9 sortUsingComparator:&__block_literal_global_567];
  v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v10 = *(a1 + 616);
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
  v27 = *(a1 + 616);
  *(a1 + 616) = 0;

  *(a1 + 593) = 0;
  if (v8)
  {
    v28 = *(a1 + 624);
    *(a1 + 640) = 0;
    *(a1 + 632) = 0;
    *(a1 + 624) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v62 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 624);
      v39 = *(a1 + 632);
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
            v39 = *(a1 + 632);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 632) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 624);
  v29 = *(a1 + 632);
  *(a1 + 640) = 0;
  *(a1 + 624) = 0;
  *(a1 + 632) = 0;
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v49, v61);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, 0, v61))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, v55, 1, v51);
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

  if (*(a1 + 40) && *(a1 + 568) != *(a1 + 560))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
  }

  *(a1 + 594) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 596) == 1)
    {
      *(a1 + 596) = 0;
      v6 = v60;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
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
  *(a1 + 594) = 0;
LABEL_81:

  v58 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_228EA6EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 594) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    if (*(a1 + 594))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 594) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 616);
    *(a1 + 616) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 593) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 593) & 1) == 0)
  {
    v8 = *(a1 + 616);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 616);
      *(a1 + 616) = v9;

      v8 = *(a1 + 616);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 592) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 592) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 592) forKey:@"needs_config"];
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
  HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>::archive(&v40, (a1 + 240));
  statistics::Statistics::operator=(*(&v23 + 1), &v40);
  statistics::Statistics::~Statistics(&v40);
  v9 = *(a1 + 352);
  if (v9 != a1 + 360)
  {
    HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>::archive(&v40, (v9 + 40));
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
  v12 = *(a1 + 560);
  if (v12 != *(a1 + 568))
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

void sub_228EA7700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v31 = a2;
  *(a1 + 592) = [v31 decodeBoolForKey:@"needs_config"];
  v3 = v31;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::HDStatisticsBucket(&v34.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
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
    memset(&v46[96], 0, 32);
    v49[1] = 0;
    v49[0] = 0;
    memset(v46, 0, 90);
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
      HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>::unarchive(&v73, *(v10 + 8), *(v10 + 128));
      *&v46[40] = v74;
      *&v46[56] = v75;
      *&v46[72] = v76;
      *&v46[88] = v77;
      *&v46[24] = v73;
      *&v46[96] = v78;
      if (*&v46[104])
      {
        *&v46[112] = *&v46[104];
        operator delete(*&v46[104]);
      }

      *&v46[104] = v79;
      *&v46[120] = v80;
      v80 = 0;
      v79 = 0uLL;
      v47 = v81;
    }

    v11 = i[17];
    for (j = i[18]; v11 != j; ++v11)
    {
      v13 = *v11;
      HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>::unarchive(&v73, *(*v11 + 8), *(*v11 + 128));
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

      v18 = v16[15];
      v19 = v77;
      v20 = v76;
      *(v16 + 9) = v75;
      *(v16 + 11) = v20;
      v16[13] = v19;
      v21 = v74;
      *(v16 + 5) = v73;
      *(v16 + 7) = v21;
      v16[14] = v78;
      if (v18)
      {
        v16[16] = v18;
        operator delete(v18);
        v16[15] = 0;
        v16[16] = 0;
        v16[17] = 0;
      }

      *(v16 + 15) = v79;
      v16[17] = v80;
      v80 = 0;
      v79 = 0uLL;
      v16[18] = v81;
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

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::operator=(&v34.n128_i64[1], &v37);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v37);
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

  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v34);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v34.n128_i64[1]);
}

void sub_228EA7C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(v7 + 400);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a3);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v7 + 320);
  v9 = STACK[0x338];
  if (STACK[0x338])
  {
    STACK[0x340] = v9;
    operator delete(v9);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v7 + 256);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::destroy(STACK[0x300]);
  v10 = STACK[0x2D8];
  if (STACK[0x2D8])
  {
    STACK[0x2E0] = v10;
    operator delete(v10);
  }

  v11 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v11;
    operator delete(v11);
  }

  objc_destroyWeak((v7 + 88));
  v12 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v12;
    operator delete(v12);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x3D0]);
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
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
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 240) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 170) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 1065353216;
  *(a1 + 344) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 1065353216;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 448);
  if (v2)
  {
    *(a1 + 456) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 400);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 360);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 320);
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 256);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 240));
  v3 = *(a1 + 200);
  if (v3)
  {
    *(a1 + 208) = v3;
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

void std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::destroy(a1[1]);
    v2 = a1[15];
    if (v2)
    {
      a1[16] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

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

  objc_storeStrong(&v26, *(a1 + 608));
  if (!*(a1 + 40))
  {
    v25 = 0;
  }

  v15 = v28;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v17);
  *(a1 + 592) = 0;
  return HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v21);
}

void *HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::operator=(void *a1, __n128 *a2)
{
  *a1 = a2->n128_u64[0];
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::operator=((a1 + 1), &a2->n128_i64[1]);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 56), a2 + 28);
  v4 = a2[29].n128_u64[1];
  a2[29].n128_u64[1] = 0;
  v5 = a1[59];
  a1[59] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 136);
  v11 = *(a2 + 152);
  v12 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v12;
  *(a1 + 152) = v11;
  *(a1 + 136) = v10;
  v13 = *(a2 + 192);
  *(a1 + 200) = 0;
  *(a1 + 192) = v13;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 200, *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 4);
  v14 = *(a2 + 224);
  *(a1 + 240) = 0;
  v15 = (a1 + 240);
  *(a1 + 224) = v14;
  *(a1 + 248) = 0;
  *(a1 + 232) = a1 + 240;
  v16 = *(a2 + 232);
  if (v16 != (a2 + 240))
  {
    v17 = 0;
    v18 = (a1 + 240);
    while (1)
    {
      v19 = (a1 + 240);
      if (v18 == v15)
      {
        goto LABEL_12;
      }

      v20 = v17;
      v21 = (a1 + 240);
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
          v24 = (a1 + 240);
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

      if (v28 == (a2 + 240))
      {
        break;
      }

      v17 = *v15;
      v18 = *(a1 + 232);
      v16 = v28;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 256, a2 + 256);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 296, *(a2 + 296), *(a2 + 304), (*(a2 + 304) - *(a2 + 296)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 320, a2 + 320);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 360, a2 + 360);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 400, a2 + 400);
  return a1;
}

void sub_228EA8608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v13 + 360);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 320);
  v15 = *(v13 + 296);
  if (v15)
  {
    *(v13 + 304) = v15;
    operator delete(v15);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 256);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::destroy(*v12);
  v16 = *a10;
  if (*a10)
  {
    *(v13 + 208) = v16;
    operator delete(v16);
  }

  v17 = *a11;
  if (*a11)
  {
    *(v13 + 104) = v17;
    operator delete(v17);
  }

  objc_destroyWeak((v13 + 88));
  v18 = *a12;
  if (*a12)
  {
    *(v13 + 72) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::operator=(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  v12 = *(a2 + 184);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 184) = v12;
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 192) = *(a2 + 192);
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 200, (a2 + 200));
  v14 = a1 + 240;
  v13 = *(a1 + 240);
  *(a1 + 224) = *(a2 + 224);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::destroy(v13);
  *(a1 + 232) = *(a2 + 232);
  v16 = *(a2 + 240);
  v17 = *(a2 + 248);
  v15 = (a2 + 240);
  *(a1 + 240) = v16;
  *(a1 + 248) = v17;
  if (v17)
  {
    *(v16 + 16) = v14;
    *(a2 + 232) = v15;
    *v15 = 0;
    *(a2 + 248) = 0;
  }

  else
  {
    *(a1 + 232) = v14;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 256, (a2 + 256));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 296, (a2 + 296));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 320, (a2 + 320));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 360, (a2 + 360));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 400, (a2 + 400));
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
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
      v16 = *(a2 + 296);
      v17 = *(a2 + 304);
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

  v23[0] = &unk_283BECC18;
  v23[3] = v23;
  v13;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](v24, v23);
  v25 = 0;
  operator new();
}

void sub_228EA9438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__function::__value_func<HDStatisticsDiscrete const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](v38 - 176);
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](&a31);

  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 280);
  v2 = *(a1 + 296);
  if (v1 != (*(a1 + 304) - v2) >> 3)
  {
    *(a1 + 304) = v2;
    std::vector<long long>::reserve((a1 + 296), v1);
    for (i = *(a1 + 272); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 296, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 296];
    }
  }
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v72 = (a1 + 240);
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
        goto LABEL_88;
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

      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v75.var0 = a1;
        v22 = 126 - 2 * __clz(v8);
        if (v6 == v7)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,false>(v6, v7, &v75, v23, 1);
      }

      if (*(a1 + 25) == 1)
      {
        v73 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v73 = 0;
      }

      if (v6 != v7)
      {
        v50 = 0;
        v51 = 0;
        v52 = v6;
        while (1)
        {
          v53 = v52[1];
          *&v75.var0 = *v52;
          *&v75.var2 = v53;
          *&v75.var4 = *(v52 + 4);
          if (v75.var4 && v75.var1 <= v17)
          {
            break;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, v52);
LABEL_118:
          v52 += 3;
          if (v52 == v7)
          {
            goto LABEL_119;
          }
        }

        var2 = v75.var2;
        if (v75.var2 > v17)
        {
          var2 = v17;
        }

        v75.var2 = var2;
        for (i = *(a1 + 64); i != *(a1 + 72) && v75.var1 >= *i; i += 2)
        {
          if (v75.var1 < i[1])
          {
            goto LABEL_118;
          }
        }

        v56 = *(v52 + 42);
        v57 = *(v52 + 41);
        if (v51)
        {
          var3 = v75.var3;
          if (v50 == v75.var3 || *(a1 + 24) == 1)
          {
            HDStatisticsDiscrete::addSample(a1 + 120, &v75);
            HDStatisticsTimeInterval::addSample((a1 + 192), &v75, v56 ^ 1);
          }
        }

        else
        {
          HDStatisticsDiscrete::addSample(a1 + 120, &v75);
          HDStatisticsTimeInterval::addSample((a1 + 192), &v75, v56 ^ 1);
          var3 = v75.var3;
          v50 = v75.var3;
        }

        if (*(a1 + 25) != 1)
        {
          goto LABEL_117;
        }

        v59 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, var3);
        if (!v59)
        {
          goto LABEL_116;
        }

        v60 = [v73 objectForKeyedSubscript:v59];
        v61 = v60;
        if (v60)
        {
          if ([v60 longLongValue] != var3 && *(a1 + 24) != 1)
          {
LABEL_115:

LABEL_116:
LABEL_117:
            v51 = 1;
            goto LABEL_118;
          }
        }

        else
        {
          v62 = [MEMORY[0x277CCABB0] numberWithLongLong:var3];
          [v73 setObject:v62 forKeyedSubscript:v59];
        }

        v63 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, var3);
        v64 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v63);
        HDStatisticsDiscrete::addSample(v64, &v75);
        HDStatisticsTimeInterval::addSample((v64 + 9), &v75, v57 ^ 1);
        goto LABEL_115;
      }

LABEL_119:
      *(a1 + 224) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 200), v17) + *(a1 + 224);
      v65 = *(a1 + 232);
      if (v65 != v72)
      {
        do
        {
          *(v65 + 18) = HKIntervalMask<double>::removeIntervalsBefore(v65 + 15, v17) + *(v65 + 18);
          v66 = v65[1];
          if (v66)
          {
            do
            {
              v67 = v66;
              v66 = *v66;
            }

            while (v66);
          }

          else
          {
            do
            {
              v67 = v65[2];
              v68 = *v67 == v65;
              v65 = v67;
            }

            while (!v68);
          }

          v65 = v67;
        }

        while (v67 != v72);
      }

      *(a1 + 56) = v17;

      if (v6)
      {
        operator delete(v6);
      }

LABEL_128:
      v69 = *(a1 + 56);
      if (v69 == v5)
      {
        v70 = [MEMORY[0x277CCA890] currentHandler];
        v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete, HDStatisticsTimeInterval>>::_mergeThroughTime(double) [Statistics = HDStatisticsCombined<HDStatisticsDiscrete, HDStatisticsTimeInterval>]"}];
        [v70 handleFailureInFunction:v71 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v69 = *(a1 + 56);
      }

      v5 = v69;
      if (v69 >= a2)
      {
        return;
      }
    }

    v24 = *(v6 + 42);
    v25 = *(v6 + 41);
    v26 = *(v6 + 40);
    v28 = *v6;
    v27 = *(v6 + 1);
    v29 = *(v6 + 2);
    v30 = *(v6 + 3);
    v31 = *(v6 + 32);
    v32 = *(v6 + 33);
    if (v29 <= a2)
    {
      v33 = *(v6 + 2);
    }

    else
    {
      v33 = a2;
    }

    if (v27 < a2)
    {
      v34 = *(v6 + 32);
    }

    else
    {
      v34 = 0;
    }

    if (v27 < a2)
    {
      v35 = 0;
    }

    else
    {
      v35 = *(v6 + 33);
    }

    if (v27 < a2)
    {
      v36 = 0;
    }

    else
    {
      v33 = *(v6 + 2);
      v36 = *(v6 + 3);
    }

    if (v27 < a2)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = *(v6 + 2);
    }

    if (v27 < a2)
    {
      v38 = 0.0;
    }

    else
    {
      v38 = *v6;
    }

    if (v27 < a2)
    {
      v39 = 0.0;
    }

    else
    {
      v39 = *(v6 + 1);
    }

    if (v27 < a2)
    {
      v40 = 0;
    }

    else
    {
      v40 = *(v6 + 32);
    }

    if (v6[2])
    {
      v29 = v33;
    }

    else
    {
      v34 = *(v6 + 32);
      v35 = 0;
      v36 = 0;
    }

    if (v6[2])
    {
      v41 = v37;
    }

    else
    {
      v41 = 0.0;
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
      v44 = 0;
    }

    v75.var0 = *v6;
    v75.var1 = v27;
    v75.var2 = v29;
    v75.var3 = v30;
    v75.var4 = v34;
    v75.var5 = v32;
    *(&v75.var5 + 1) = *(v6 + 34);
    *(&v75.var5 + 5) = *(v6 + 19);
    *&v76 = v42;
    *(&v76 + 1) = v43;
    *&v77 = v41;
    *(&v77 + 1) = v36;
    LOBYTE(v78) = v44;
    HIBYTE(v78) = v35;
    for (j = *(a1 + 64); j != *(a1 + 72) && v27 >= *j; j += 2)
    {
      if (v27 < j[1])
      {
        goto LABEL_85;
      }
    }

    if (v34)
    {
      HDStatisticsDiscrete::addSample(a1 + 120, &v75);
      HDStatisticsTimeInterval::addSample((a1 + 192), &v75, v24 ^ 1);
      if (*(a1 + 25) == 1)
      {
        v46 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v30);
        v47 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v46);
        HDStatisticsDiscrete::addSample(v47, &v75);
        HDStatisticsTimeInterval::addSample((v47 + 9), &v75, v25 ^ 1);
      }

      v26 = 1;
      LOBYTE(v25) = 1;
      LOBYTE(v24) = 1;
    }

LABEL_85:
    if (v44)
    {
      LOWORD(v74) = v78;
      v48 = v77;
      v49 = *(a1 + 96);
      *v49 = v76;
      *(v49 + 16) = v48;
      *(v49 + 32) = v74;
      *(v49 + 40) = v26;
      *(v49 + 41) = v25;
      *(v49 + 42) = v24;
    }

    else
    {
      *(a1 + 104) = *(a1 + 96);
    }

LABEL_88:
    *(a1 + 56) = a2;
    goto LABEL_128;
  }
}

void *HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v4 = *(a1 + 240);
  v2 = (a1 + 240);
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (v3[4] >= a2)
    {
      v5 = v3;
    }

    v3 = v3[v3[4] < a2];
  }

  while (v3);
  if (v5 == v2 || v5[4] > a2)
  {
LABEL_8:
    v6 = (v2 - 1);
    v9 = &v8;
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v2 - 1), a2);
    v9 = &v8;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v6, v8);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 320), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, a2);
      v9[0] = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 360), v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v9[1] = v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 360), v9)[3] = a2;
        v6 = v9[0];
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9[0] = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 400), a2);
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
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 400), a2);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

void *std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
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

void std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,false>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
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
          v106 = *(*a3 + 296);
          v107 = *(*a3 + 304);
          if (v106 == v107)
          {
            v109 = *(*a3 + 296);
            v108 = v109;
          }

          else
          {
            v108 = *(*a3 + 296);
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
            v109 = *(*a3 + 304);
LABEL_189:
            while (*v108 != v105)
            {
              v108 += 8;
              if (v108 == v107)
              {
                v108 = *(*a3 + 304);
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

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, (a2 - 3), a3);
      return;
    }

    if (v13 == 5)
    {
      v110 = *MEMORY[0x277D85DE8];

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, v11 + 144, (a2 - 3), a3);
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
              v119 = *(*a3 + 296);
              v120 = *(*a3 + 304);
              if (v119 == v120)
              {
                v122 = *(*a3 + 296);
                v121 = v122;
              }

              else
              {
                v121 = *(*a3 + 296);
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
                v122 = *(*a3 + 304);
LABEL_213:
                while (*v121 != v118)
                {
                  v121 += 8;
                  if (v121 == v120)
                  {
                    v121 = *(*a3 + 304);
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
                    v126 = *(*a3 + 296);
                    v127 = *(*a3 + 304);
                    if (v126 == v127)
                    {
                      v129 = *(*a3 + 296);
                      v128 = v129;
                    }

                    else
                    {
                      v128 = *(*a3 + 296);
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
                      v129 = *(*a3 + 304);
LABEL_226:
                      while (*v128 != v125)
                      {
                        v128 += 8;
                        if (v128 == v127)
                        {
                          v128 = *(*a3 + 304);
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
            v214 = *(*a3 + 296);
            v215 = *(*a3 + 304);
            if (v214 == v215)
            {
              v217 = *(*a3 + 296);
              v216 = v217;
            }

            else
            {
              v216 = *(*a3 + 296);
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
              v217 = *(*a3 + 304);
LABEL_352:
              while (*v216 != v213)
              {
                v216 += 8;
                if (v216 == v215)
                {
                  v216 = *(*a3 + 304);
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

                v222 = *(*a3 + 296);
                v223 = *(*a3 + 304);
                if (v222 == v223)
                {
                  v225 = *(*a3 + 296);
                  v224 = v225;
                }

                else
                {
                  v224 = *(*a3 + 296);
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
                  v225 = *(*a3 + 304);
LABEL_364:
                  while (*v224 != v221)
                  {
                    v224 += 8;
                    if (v224 == v223)
                    {
                      v224 = *(*a3 + 304);
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
                v138 = *(*a3 + 296);
                v137 = *(*a3 + 304);
                if (v138 == v137)
                {
                  v140 = *(*a3 + 296);
                  v139 = v140;
                }

                else
                {
                  v139 = *(*a3 + 296);
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
                  v140 = *(*a3 + 304);
LABEL_246:
                  while (*v139 != v136)
                  {
                    v139 += 8;
                    if (v139 == v137)
                    {
                      v139 = *(*a3 + 304);
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

            v149 = *(*a3 + 296);
            v148 = *(*a3 + 304);
            if (v149 == v148)
            {
              v151 = *(*a3 + 296);
              v150 = v151;
            }

            else
            {
              v150 = *(*a3 + 296);
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
              v151 = *(*a3 + 304);
LABEL_261:
              while (*v150 != v147)
              {
                v150 += 8;
                if (v150 == v148)
                {
                  v150 = *(*a3 + 304);
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
                      v159 = *(*a3 + 296);
                      v160 = *(*a3 + 304);
                      if (v159 == v160)
                      {
                        v162 = *(*a3 + 296);
                        v161 = v162;
                      }

                      else
                      {
                        v161 = *(*a3 + 296);
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
                        v162 = *(*a3 + 304);
LABEL_275:
                        while (*v161 != v158)
                        {
                          v161 += 8;
                          if (v161 == v160)
                          {
                            v161 = *(*a3 + 304);
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
                    v169 = *(*a3 + 296);
                    v168 = *(*a3 + 304);
                    if (v169 == v168)
                    {
                      v171 = *(*a3 + 296);
                      v170 = v171;
                    }

                    else
                    {
                      v170 = *(*a3 + 296);
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
                      v171 = *(*a3 + 304);
LABEL_290:
                      while (*v170 != v147)
                      {
                        v170 += 8;
                        if (v170 == v168)
                        {
                          v170 = *(*a3 + 304);
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
                v185 = *(*a3 + 296);
                v184 = *(*a3 + 304);
                if (v185 == v184)
                {
                  v187 = *(*a3 + 296);
                  v186 = v187;
                }

                else
                {
                  v186 = *(*a3 + 296);
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
                  v187 = *(*a3 + 304);
LABEL_307:
                  while (*v186 != v183)
                  {
                    v186 += 8;
                    if (v186 == v184)
                    {
                      v186 = *(*a3 + 304);
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
                v199 = *(*a3 + 296);
                v198 = *(*a3 + 304);
                if (v199 == v198)
                {
                  v201 = *(*a3 + 296);
                  v200 = v201;
                }

                else
                {
                  v200 = *(*a3 + 296);
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
                  v201 = *(*a3 + 304);
LABEL_322:
                  while (*v200 != v197)
                  {
                    v200 += 8;
                    if (v200 == v198)
                    {
                      v200 = *(*a3 + 304);
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

                    v208 = *(*a3 + 296);
                    v207 = *(*a3 + 304);
                    if (v208 == v207)
                    {
                      v210 = *(*a3 + 296);
                      v209 = v210;
                    }

                    else
                    {
                      v209 = *(*a3 + 296);
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
                      v210 = *(*a3 + 304);
LABEL_339:
                      while (*v209 != v197)
                      {
                        v209 += 8;
                        if (v209 == v207)
                        {
                          v209 = *(*a3 + 304);
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
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v15, a1, a2 - 3, a3);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, v15, a2 - 3, a3);
      v16 = 3 * v14;
      v17 = (a1 + 48 * v14 - 48);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>((a1 + 48), v17, a2 - 6, a3);
      v18 = (a1 + 48 + 16 * v16);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>((a1 + 96), v18, a2 - 9, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v17, v15, v18, a3);
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
    v24 = *(*a3 + 296);
    v25 = *(*a3 + 304);
    if (v24 == v25)
    {
      v27 = *(*a3 + 296);
      v26 = v27;
    }

    else
    {
      v26 = *(*a3 + 296);
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
      v27 = *(*a3 + 304);
LABEL_23:
      while (*v26 != v21)
      {
        v26 += 8;
        if (v26 == v25)
        {
          v26 = *(*a3 + 304);
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

      v68 = *(*a3 + 296);
      v69 = *(*a3 + 304);
      v70 = v68;
      if (v68 == v69)
      {
        v71 = *(*a3 + 296);
      }

      else
      {
        while (*v70 != v21)
        {
          v70 += 8;
          if (v70 == v69)
          {
            v70 = *(*a3 + 304);
            break;
          }
        }

        v71 = *(*a3 + 296);
        while (*v71 != v67)
        {
          v71 += 8;
          if (v71 == v69)
          {
            v71 = *(*a3 + 304);
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
              v78 = *(v75 + 296);
              v79 = *(v75 + 304);
              if (v78 == v79)
              {
                v81 = *(v75 + 296);
                v80 = v81;
              }

              else
              {
                v80 = *(v75 + 296);
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
                v81 = *(v75 + 304);
LABEL_131:
                while (*v80 != v77)
                {
                  v80 += 8;
                  if (v80 == v79)
                  {
                    v80 = *(v75 + 304);
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
          v73 = *(*a3 + 296);
          if (v68 == v69)
          {
            v74 = *(*a3 + 296);
          }

          else
          {
            while (*v73 != v21)
            {
              v73 += 8;
              if (v73 == v69)
              {
                v73 = *(*a3 + 304);
                break;
              }
            }

            v74 = *(*a3 + 296);
            while (*v74 != v72)
            {
              v74 += 8;
              if (v74 == v69)
              {
                v74 = *(*a3 + 304);
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

          v85 = *(v83 + 296);
          v86 = *(v83 + 304);
          if (v85 == v86)
          {
            v88 = *(v83 + 296);
            v87 = v88;
          }

          else
          {
            v87 = *(v83 + 296);
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
            v88 = *(v83 + 304);
LABEL_145:
            while (*v87 != v84)
            {
              v87 += 8;
              if (v87 == v86)
              {
                v87 = *(v83 + 304);
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
          v93 = *(v91 + 296);
          v94 = *(v91 + 304);
          v95 = v93;
          if (v93 == v94)
          {
            v96 = *(v91 + 296);
          }

          else
          {
            while (*v95 != v21)
            {
              v95 += 8;
              if (v95 == v94)
              {
                v95 = *(v91 + 304);
                break;
              }
            }

            v96 = *(v91 + 296);
            while (*v96 != v92)
            {
              v96 += 8;
              if (v96 == v94)
              {
                v96 = *(v91 + 304);
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

        v32 = *(v22 + 296);
        v33 = *(v22 + 304);
        if (v32 == v33)
        {
          v35 = *(v22 + 296);
          v34 = v35;
        }

        else
        {
          v34 = *(v22 + 296);
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
          v35 = *(v22 + 304);
LABEL_35:
          while (*v34 != v21)
          {
            v34 += 8;
            if (v34 == v33)
            {
              v34 = *(v22 + 304);
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
              v43 = *(v22 + 296);
              v44 = *(v22 + 304);
              if (v43 == v44)
              {
                v46 = *(v22 + 296);
                v45 = v46;
              }

              else
              {
                v45 = *(v22 + 296);
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
                v46 = *(v22 + 304);
LABEL_61:
                while (*v45 != v21)
                {
                  v45 += 8;
                  if (v45 == v44)
                  {
                    v45 = *(v22 + 304);
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
          v38 = *(v22 + 296);
          v39 = *(v22 + 304);
          if (v38 == v39)
          {
            v41 = *(v22 + 296);
            v40 = v41;
          }

          else
          {
            v40 = *(v22 + 296);
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
            v41 = *(v22 + 304);
LABEL_47:
            while (*v40 != v21)
            {
              v40 += 8;
              if (v40 == v39)
              {
                v40 = *(v22 + 304);
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

            v53 = *(v51 + 296);
            v54 = *(v51 + 304);
            if (v53 == v54)
            {
              v56 = *(v51 + 296);
              v55 = v56;
            }

            else
            {
              v55 = *(v51 + 296);
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
              v56 = *(v51 + 304);
LABEL_76:
              while (*v55 != v21)
              {
                v55 += 8;
                if (v55 == v54)
                {
                  v55 = *(v51 + 304);
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
            v58 = *(v51 + 296);
            v59 = *(v51 + 304);
            if (v58 == v59)
            {
              v61 = *(v51 + 296);
              v60 = v61;
            }

            else
            {
              v60 = *(v51 + 296);
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
              v61 = *(v51 + 304);
LABEL_87:
              while (*v60 != v21)
              {
                v60 += 8;
                if (v60 == v59)
                {
                  v60 = *(v51 + 304);
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

      v65 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*>(a1, v11 - 48, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*>(v11, a2, a3))
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
        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,false>(a1, v11 - 48, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  v103 = *MEMORY[0x277D85DE8];

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v11, (v11 + 48), a2 - 3, a3);
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 3);
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v6 = *(*a4 + 296);
  v7 = *(*a4 + 304);
  v8 = v6;
  if (v6 == v7)
  {
    v9 = *(*a4 + 296);
  }

  else
  {
    while (*v8 != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(*a4 + 304);
        break;
      }
    }

    v9 = *(*a4 + 296);
    while (*v9 != v5)
    {
      v9 += 8;
      if (v9 == v7)
      {
        v9 = *(*a4 + 304);
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
      v14 = *(*a4 + 296);
      v15 = *(*a4 + 304);
      if (v14 == v15)
      {
        v17 = *(*a4 + 296);
        v16 = v17;
      }

      else
      {
        v16 = *(*a4 + 296);
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
        v17 = *(*a4 + 304);
LABEL_27:
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v15)
          {
            v16 = *(*a4 + 304);
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
          v24 = *(*a4 + 296);
          v25 = *(*a4 + 304);
          if (v24 == v25)
          {
            v27 = *(*a4 + 296);
            v26 = v27;
          }

          else
          {
            v26 = *(*a4 + 296);
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
            v27 = *(*a4 + 304);
LABEL_38:
            while (*v26 != v23)
            {
              v26 += 8;
              if (v26 == v25)
              {
                v26 = *(*a4 + 304);
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
      v11 = *(*a4 + 296);
      if (v6 == v7)
      {
        v12 = *(*a4 + 296);
      }

      else
      {
        while (*v11 != v10)
        {
          v11 += 8;
          if (v11 == v7)
          {
            v11 = *(*a4 + 304);
            break;
          }
        }

        v12 = *(*a4 + 296);
        while (*v12 != v4)
        {
          v12 += 8;
          if (v12 == v7)
          {
            v12 = *(*a4 + 304);
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
      v37 = *(*a4 + 296);
      v38 = *(*a4 + 304);
      if (v37 == v38)
      {
        v40 = *(*a4 + 296);
        v39 = v40;
      }

      else
      {
        v39 = *(*a4 + 296);
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
        v40 = *(*a4 + 304);
LABEL_50:
        while (*v39 != v36)
        {
          v39 += 8;
          if (v39 == v38)
          {
            v39 = *(*a4 + 304);
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

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 296);
    v14 = *(*a5 + 304);
    if (v13 == v14)
    {
      v16 = *(*a5 + 296);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 296);
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
      v16 = *(*a5 + 304);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 304);
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
        v22 = *(*a5 + 296);
        v23 = *(*a5 + 304);
        if (v22 == v23)
        {
          v25 = *(*a5 + 296);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 296);
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
          v25 = *(*a5 + 304);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 304);
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
            v31 = *(*a5 + 296);
            v32 = *(*a5 + 304);
            if (v31 == v32)
            {
              v34 = *(*a5 + 296);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 296);
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
              v34 = *(*a5 + 304);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 304);
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

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *(a5 + 24);
  v14 = *(a4 + 24);
  if (v13 != v14)
  {
    v15 = *(*a6 + 296);
    v16 = *(*a6 + 304);
    if (v15 == v16)
    {
      v18 = *(*a6 + 296);
      v17 = v18;
    }

    else
    {
      v17 = *(*a6 + 296);
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
      v18 = *(*a6 + 304);
LABEL_7:
      while (*v17 != v14)
      {
        v17 += 8;
        if (v17 == v16)
        {
          v17 = *(*a6 + 304);
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
        v24 = *(*a6 + 296);
        v25 = *(*a6 + 304);
        if (v24 == v25)
        {
          v27 = *(*a6 + 296);
          v26 = v27;
        }

        else
        {
          v26 = *(*a6 + 296);
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
          v27 = *(*a6 + 304);
LABEL_18:
          while (*v26 != v23)
          {
            v26 += 8;
            if (v26 == v25)
            {
              v26 = *(*a6 + 304);
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
            v33 = *(*a6 + 296);
            v34 = *(*a6 + 304);
            if (v33 == v34)
            {
              v36 = *(*a6 + 296);
              v35 = v36;
            }

            else
            {
              v35 = *(*a6 + 296);
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
              v36 = *(*a6 + 304);
LABEL_29:
              while (*v35 != v32)
              {
                v35 += 8;
                if (v35 == v34)
                {
                  v35 = *(*a6 + 304);
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
                v42 = *(*a6 + 296);
                v43 = *(*a6 + 304);
                if (v42 == v43)
                {
                  v45 = *(*a6 + 296);
                  v44 = v45;
                }

                else
                {
                  v44 = *(*a6 + 296);
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
                  v45 = *(*a6 + 304);
LABEL_40:
                  while (*v44 != v41)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(*a6 + 304);
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*>(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v9 = *(*a3 + 296);
          v10 = *(*a3 + 304);
          if (v9 == v10)
          {
            v12 = *(*a3 + 296);
            v11 = v12;
          }

          else
          {
            v11 = *(*a3 + 296);
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
            v12 = *(*a3 + 304);
LABEL_10:
            while (*v11 != v8)
            {
              v11 += 8;
              if (v11 == v10)
              {
                v11 = *(*a3 + 304);
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
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, (a1 + 48), (a2 - 48), a3);
      goto LABEL_50;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a2 - 48, a3);
      goto LABEL_50;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a1 + 144, a2 - 48, a3);
      goto LABEL_50;
  }

LABEL_18:
  v13 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), a3);
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
      v18 = *(*a3 + 296);
      v19 = *(*a3 + 304);
      if (v18 == v19)
      {
        v21 = *(*a3 + 296);
        v20 = v21;
      }

      else
      {
        v20 = *(*a3 + 296);
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
        v21 = *(*a3 + 304);
LABEL_26:
        while (*v20 != v17)
        {
          v20 += 8;
          if (v20 == v19)
          {
            v20 = *(*a3 + 304);
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
            v25 = *(*a3 + 296);
            v26 = *(*a3 + 304);
            if (v25 == v26)
            {
              v28 = *(*a3 + 296);
              v27 = v28;
            }

            else
            {
              v27 = *(*a3 + 296);
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
              v28 = *(*a3 + 304);
LABEL_39:
              while (*v27 != v24)
              {
                v27 += 8;
                if (v27 == v26)
                {
                  v27 = *(*a3 + 304);
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

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::statisticsByBundleIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v2 = *(a2 + 232);
  v26 = (a2 + 240);
  if (v2 == (a2 + 240))
  {
    return;
  }

  v25 = a1 + 16;
  do
  {
    v4 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a2, v2[4]);
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
    v28 = v9.u32[0];
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

      if (v28 > 1)
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
    *(v12 + 3) = *(v2 + 5);
    v19 = *(v2 + 7);
    v20 = *(v2 + 9);
    v21 = *(v2 + 11);
    v12[11] = v2[13];
    *(v12 + 9) = v21;
    *(v12 + 7) = v20;
    *(v12 + 5) = v19;
    v12[12] = v2[14];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 13, v2[15], v2[16], (v2[16] - v2[15]) >> 4);
    }

    v12[16] = v2[18];

LABEL_25:
    v22 = v2[1];
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
    }

    else
    {
      do
      {
        v23 = v2[2];
        v24 = *v23 == v2;
        v2 = v23;
      }

      while (!v24);
    }

    v2 = v23;
  }

  while (v23 != v26);
}

void sub_228EAC6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](va);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::~__hash_table(v6);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,0>(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,0>((v2 + 2));
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

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BECAF8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BECAF8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 72;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsDiscrete const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BECB88;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsDiscrete const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BECB88;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsDiscrete const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsDiscrete const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsDiscrete const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsDiscrete const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_primitiveAddSample(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 592) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = *(a2 + 8);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 8);
  if (v9 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && a3)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v10 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v9 end:*(a2 + 16)];
    v11 = (*(*a1 + 128))(a1, v10, a4);
  }

  return v11;
}

double _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_earliestStartTimeWithoutInvalidation(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if ((*(a1 + 592) & 1) == 0)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_advanceToTime(uint64_t result, double a2)
{
  if (*(result + 128) <= a2)
  {
    v2 = result;
    if (*(v2 + 568) != *(v2 + 560))
    {
      [*(result + 40) dateIntervalAtIndex:*(result + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_updateSourceOrder(v2 + 120);
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v2, v2 + 120);
    }

    v5 = 0;
    v3 = *(result + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_updateSourceOrder(v2 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v2, v2 + 120);
  }

  return result;
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t *a2, int a3)
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
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 264), v8);
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
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 8, v5);
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
        v34 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1 + 8, v8);
        v35 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsForSource(a1 + 8, v34);
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
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 448, &v36);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 594) == 1)
  {
    *(a1 + 596) = 1;
  }

  else
  {
    *(a1 + 596) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::advanceBucket(void *a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, a1[56], a1[57], 0xCCCCCCCCCCCCCCCDLL * ((a1[57] - a1[56]) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}