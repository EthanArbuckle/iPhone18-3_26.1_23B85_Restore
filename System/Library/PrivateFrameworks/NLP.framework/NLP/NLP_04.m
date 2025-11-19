void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *>(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    v4 = a1 + 2;
    if (a1 + 2 != a2)
    {
      v5 = (a1 + 1);
      do
      {
        v6 = v3;
        v3 = v4;
        v7 = v6[2];
        if (v7)
        {
          v8 = *v6;
          if (*v6)
          {
            v9 = *(v7 + 96);
            v10 = *(v8 + 96);
            v11 = v9 < v10;
            if (v9 == v10 && (v12 = *(v7 + 104), v13 = *(v8 + 104), v11 = v12 < v13, v12 == v13))
            {
              if (*(v7 + 112) < *(v8 + 112))
              {
                goto LABEL_12;
              }
            }

            else if (v11)
            {
LABEL_12:
              v14 = v6[3];
              v15 = v5;
              *v3 = 0;
              v3[1] = 0;
              while (1)
              {
                v16 = *v15;
                *(v15 - 1) = 0;
                *v15 = 0;
                v17 = v15[2];
                v15[1] = v8;
                v15[2] = v16;
                if (v17)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
                }

                v8 = *(v15 - 3);
                if (!v8)
                {
                  break;
                }

                v18 = *(v7 + 96);
                v19 = *(v8 + 96);
                v20 = v18 < v19;
                if (v18 == v19 && (v21 = *(v7 + 104), v22 = *(v8 + 104), v20 = v21 < v22, v21 == v22))
                {
                  if (*(v7 + 112) >= *(v8 + 112))
                  {
                    break;
                  }
                }

                else if (!v20)
                {
                  break;
                }

                v15 -= 2;
              }

              v23 = *v15;
              *(v15 - 1) = v7;
              *v15 = v14;
              if (v23)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v23);
              }
            }
          }
        }

        v4 = v3 + 2;
        v5 += 2;
      }

      while (v3 + 2 != a2);
    }
  }
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<NL::Entity> *,entity_greater_than_range &>(__int128 *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  if (v2)
  {
    v3 = *(a2 - 2);
    if (v3)
    {
      v4 = *(v2 + 96);
      v5 = *(v2 + 104);
      v6 = *(v3 + 96);
      v7 = v4 < v6;
      if (v4 == v6)
      {
        v8 = *(v3 + 104);
        v7 = v5 < v8;
        if (v5 == v8)
        {
          if (*(v2 + 112) >= *(v3 + 112))
          {
            goto LABEL_6;
          }

LABEL_18:
          for (i = (a1 + 1); ; i += 2)
          {
            v16 = *i;
            if (*i)
            {
              v17 = *(v16 + 96);
              v18 = v4 < v17;
              if (v4 == v17 && (v19 = *(v16 + 104), v18 = v5 < v19, v5 == v19))
              {
                if (*(v2 + 112) < *(v16 + 112))
                {
                  goto LABEL_26;
                }
              }

              else if (v18)
              {
                goto LABEL_26;
              }
            }
          }
        }
      }

      if (v7)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_6:
  for (i = (a1 + 1); i < a2; i += 2)
  {
    if (v2)
    {
      v10 = *i;
      if (*i)
      {
        v11 = *(v2 + 96);
        v12 = *(v10 + 96);
        v13 = v11 < v12;
        if (v11 == v12 && (v14 = *(v2 + 104), v15 = *(v10 + 104), v13 = v14 < v15, v14 == v15))
        {
          if (*(v2 + 112) < *(v10 + 112))
          {
            break;
          }
        }

        else if (v13)
        {
          break;
        }
      }
    }
  }

LABEL_26:
  if (i < a2)
  {
    a2 -= 2;
    if (v2)
    {
      v20 = *a2;
      if (*a2)
      {
        v21 = *(v2 + 96);
        v22 = *(v2 + 104);
        do
        {
          v23 = *(v20 + 96);
          v24 = v21 < v23;
          if (v21 == v23 && (v25 = *(v20 + 104), v24 = v22 < v25, v22 == v25))
          {
            if (*(v2 + 112) >= *(v20 + 112))
            {
              break;
            }
          }

          else if (!v24)
          {
            break;
          }

          v26 = *(a2 - 2);
          a2 -= 2;
          v20 = v26;
        }

        while (v26);
      }
    }
  }

  if (i < a2)
  {
    v27 = *i;
    v28 = *a2;
    do
    {
      *i = v28;
      *a2 = v27;
      v29 = i[1];
      i[1] = a2[1];
      a2[1] = v29;
      i += 2;
      v30 = *(v2 + 96);
      v31 = *(v2 + 104);
      if (!v2)
      {
        goto LABEL_46;
      }

      while (1)
      {
        v27 = *i;
        if (!*i)
        {
          goto LABEL_46;
        }

        v32 = *(v27 + 96);
        v33 = v30 < v32;
        if (v30 == v32)
        {
          v34 = *(v27 + 104);
          v33 = v31 < v34;
          if (v31 == v34)
          {
            break;
          }
        }

        if (v33)
        {
          goto LABEL_50;
        }

        do
        {
LABEL_46:
          i += 2;
        }

        while (!v2);
      }

      if (*(v2 + 112) >= *(v27 + 112))
      {
        goto LABEL_46;
      }

LABEL_50:
      while (1)
      {
        v35 = *(a2 - 2);
        a2 -= 2;
        v28 = v35;
        if (!v35)
        {
          break;
        }

        v36 = *(v28 + 96);
        v37 = v30 < v36;
        if (v30 == v36 && (v38 = *(v28 + 104), v37 = v31 < v38, v31 == v38))
        {
          if (*(v2 + 112) >= *(v28 + 112))
          {
            break;
          }
        }

        else if (!v37)
        {
          break;
        }
      }
    }

    while (i < a2);
  }

  v39 = (i - 2);
  if (i - 2 != a1)
  {
    v40 = *v39;
    *v39 = 0;
    *(i - 1) = 0;
    v41 = *(a1 + 1);
    *a1 = v40;
    if (v41)
    {
      v44 = v2;
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      v2 = v44;
    }
  }

  v42 = *(i - 1);
  *(i - 1) = v2;
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  return i;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<NL::Entity> *,entity_greater_than_range &>(__int128 *a1, uint64_t *a2)
{
  v2 = a2;
  v3 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v5 = (a1 + 1);
  v4 = *(a1 + 2);
  if (v4)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_6;
  }

  v40 = 0;
  v41 = *(v3 + 96);
  v42 = *(v3 + 104);
  while (1)
  {
    v43 = *(v4 + 96);
    v44 = v43 < v41;
    if (v43 == v41)
    {
      v45 = *(v4 + 104);
      v44 = v45 < v42;
      if (v45 == v42)
      {
        if (*(v4 + 112) >= *(v3 + 112))
        {
          break;
        }

        goto LABEL_62;
      }
    }

    if (!v44)
    {
      break;
    }

LABEL_62:
    v46 = v5[2];
    v5 += 2;
    v4 = v46;
    v40 -= 16;
    if (!v46)
    {
      goto LABEL_65;
    }
  }

  if (v40)
  {
LABEL_65:
    v2 = a2 - 2;
    v47 = *(v3 + 96);
    v48 = *(v3 + 104);
    while (1)
    {
      v49 = *v2;
      if (*v2)
      {
        v50 = *(v49 + 96);
        v51 = v50 < v47;
        if (v50 == v47 && (v52 = *(v49 + 104), v51 = v52 < v48, v52 == v48))
        {
          if (*(v49 + 112) < *(v3 + 112))
          {
            goto LABEL_24;
          }
        }

        else if (v51)
        {
          goto LABEL_24;
        }
      }

      v2 -= 2;
    }
  }

LABEL_6:
  while (v5 < v2)
  {
    while (1)
    {
      v8 = *(v2 - 2);
      v2 -= 2;
      v7 = v8;
      if (!v8 || v3 == 0)
      {
        break;
      }

      v10 = *(v7 + 96);
      v11 = *(v3 + 96);
      v12 = v10 < v11;
      if (v10 == v11 && (v13 = *(v7 + 104), v14 = *(v3 + 104), v12 = v13 < v14, v13 == v14))
      {
        if (*(v7 + 112) < *(v3 + 112) || v5 >= v2)
        {
          goto LABEL_24;
        }
      }

      else if (v12 || v5 >= v2)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_24:
  v17 = v5;
  if (v5 < v2)
  {
    v18 = *v2;
    v17 = v5;
    v19 = v2;
    do
    {
      *v17 = v18;
      *v19 = v4;
      v20 = v17[1];
      v17[1] = v19[1];
      v19[1] = v20;
      v21 = v17[2];
      v17 += 2;
      v4 = v21;
      if (v21)
      {
        v22 = v3 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v23 = *(v3 + 96);
        v24 = *(v3 + 104);
        do
        {
          v25 = *(v4 + 96);
          v26 = v25 < v23;
          if (v25 == v23 && (v27 = *(v4 + 104), v26 = v27 < v24, v27 == v24))
          {
            if (*(v4 + 112) >= *(v3 + 112))
            {
              break;
            }
          }

          else if (!v26)
          {
            break;
          }

          v28 = v17[2];
          v17 += 2;
          v4 = v28;
        }

        while (v28);
      }

      v19 -= 2;
      v29 = *(v3 + 96);
      v30 = *(v3 + 104);
      while (1)
      {
        v18 = *v19;
        if (*v19)
        {
          v31 = v3 == 0;
        }

        else
        {
          v31 = 1;
        }

        if (v31)
        {
          goto LABEL_48;
        }

        v32 = *(v18 + 96);
        v33 = v32 < v29;
        if (v32 != v29)
        {
          break;
        }

        v34 = *(v18 + 104);
        v33 = v34 < v30;
        if (v34 != v30)
        {
          break;
        }

        if (*(v18 + 112) < *(v3 + 112))
        {
          goto LABEL_49;
        }

LABEL_48:
        v19 -= 2;
      }

      if (!v33)
      {
        goto LABEL_48;
      }

LABEL_49:
      ;
    }

    while (v17 < v19);
  }

  v35 = (v17 - 2);
  if (v17 - 2 != a1)
  {
    v36 = *v35;
    *v35 = 0;
    *(v17 - 1) = 0;
    v37 = *(a1 + 1);
    *a1 = v36;
    if (v37)
    {
      v53 = v3;
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      v3 = v53;
    }
  }

  v38 = *(v17 - 1);
  *(v17 - 1) = v3;
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  return v17 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *>(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,0>(a1, a1 + 2, a2 - 2);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
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
      v5 = *(a2 - 2);
      if (!v5)
      {
        return 1;
      }

      v6 = *a1;
      if (!*a1)
      {
        return 1;
      }

      v7 = *(v5 + 96);
      v8 = *(v6 + 96);
      v9 = v7 < v8;
      if (v7 != v8 || (v10 = *(v5 + 104), v11 = *(v6 + 104), v9 = v10 < v11, v10 != v11))
      {
        if (!v9)
        {
          return 1;
        }

        goto LABEL_47;
      }

      if (*(v5 + 112) < *(v6 + 112))
      {
LABEL_47:
        *a1 = v5;
        *(a2 - 2) = v6;
        v36 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v36;
      }

      return 1;
    }
  }

  v12 = a1 + 4;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,0>(a1, a1 + 2, a1 + 4);
  v13 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v14 = 0;
  for (i = 32; ; i += 16)
  {
    v16 = *v13;
    if (!*v13)
    {
      goto LABEL_41;
    }

    v17 = *v12;
    if (!*v12)
    {
      goto LABEL_41;
    }

    v18 = *(v16 + 96);
    v19 = *(v17 + 96);
    v20 = v18 < v19;
    if (v18 != v19)
    {
      break;
    }

    v21 = *(v16 + 104);
    v22 = *(v17 + 104);
    v20 = v21 < v22;
    if (v21 != v22)
    {
      break;
    }

    if (*(v16 + 112) < *(v17 + 112))
    {
      goto LABEL_25;
    }

LABEL_41:
    v12 = v13;
    v13 += 2;
    if (v13 == a2)
    {
      return 1;
    }
  }

  if (!v20)
  {
    goto LABEL_41;
  }

LABEL_25:
  v23 = v13[1];
  v24 = i;
  *v13 = 0;
  v13[1] = 0;
  while (1)
  {
    v25 = (a1 + v24);
    v26 = *(a1 + v24 + 8);
    *v25 = 0;
    v25[1] = 0;
    v27 = *(a1 + v24 + 24);
    v25[2] = v17;
    v25[3] = v26;
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (!v24)
    {
      break;
    }

    v28 = (a1 + v24);
    v17 = *(a1 + v24 - 16);
    if (!v17)
    {
      goto LABEL_38;
    }

    v29 = *(v16 + 96);
    v30 = *(v17 + 96);
    v31 = v29 < v30;
    if (v29 == v30 && (v32 = *(v16 + 104), v33 = *(v17 + 104), v31 = v32 < v33, v32 == v33))
    {
      if (*(v16 + 112) >= *(v17 + 112))
      {
        goto LABEL_38;
      }
    }

    else if (!v31)
    {
      goto LABEL_38;
    }

    v24 -= 16;
  }

  v28 = a1;
LABEL_38:
  v34 = v28[1];
  *v28 = v16;
  v28[1] = v23;
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (++v14 != 8)
  {
    goto LABEL_41;
  }

  return v13 + 2 == a2;
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *,std::shared_ptr<NL::Entity> *>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    i = v6;
    if (v6 != a3)
    {
      for (i = v6; i != a3; i += 2)
      {
        v13 = *i;
        if (!*i)
        {
          continue;
        }

        v14 = *a1;
        if (!*a1)
        {
          continue;
        }

        v15 = *(v13 + 96);
        v16 = *(v14 + 96);
        v17 = v15 < v16;
        if (v15 == v16 && (v18 = *(v13 + 104), v19 = *(v14 + 104), v17 = v18 < v19, v18 == v19))
        {
          if (*(v13 + 112) >= *(v14 + 112))
          {
            continue;
          }
        }

        else if (!v17)
        {
          continue;
        }

        *i = v14;
        *a1 = v13;
        v20 = i[1];
        i[1] = a1[1];
        a1[1] = v20;
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *>(a1, a4, v8, a1);
      }
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range,std::shared_ptr<NL::Entity> *>(a1, v6, a4, v8);
        v6 -= 16;
        v17 = v8-- > 2;
      }

      while (v17);
    }

    return i;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v6 = a4 - a1;
  v7 = v4 >> 1;
  if ((v4 >> 1) < (a4 - a1) >> 4)
  {
    return;
  }

  v9 = v6 >> 3;
  v10 = (v6 >> 3) + 1;
  v11 = (a1 + 16 * v10);
  v12 = v9 + 2;
  if (v9 + 2 >= a3)
  {
    goto LABEL_13;
  }

  v14 = v11 + 2;
  v13 = *v11;
  if (!*v11)
  {
    goto LABEL_20;
  }

  v15 = *v14;
  if (*v14)
  {
    v16 = *(v13 + 96);
    v17 = *(v15 + 96);
    v18 = v16 < v17;
    if (v16 == v17)
    {
      v19 = *(v13 + 104);
      v20 = *(v15 + 104);
      v18 = v19 < v20;
      if (v19 == v20)
      {
        if (*(v13 + 112) >= *(v15 + 112))
        {
          goto LABEL_13;
        }

LABEL_12:
        v11 += 2;
        v10 = v12;
        goto LABEL_13;
      }
    }

    if (v18)
    {
      goto LABEL_12;
    }

LABEL_13:
    v13 = *v11;
    if (!*v11)
    {
      goto LABEL_20;
    }
  }

  v21 = *a4;
  if (!*a4)
  {
    v27 = 0;
    goto LABEL_22;
  }

  v22 = *(v13 + 96);
  v23 = *(v21 + 96);
  v24 = v22 < v23;
  if (v22 == v23 && (v25 = *(v13 + 104), v26 = *(v21 + 104), v24 = v25 < v26, v25 == v26))
  {
    if (*(v13 + 112) < *(v21 + 112))
    {
      return;
    }
  }

  else if (v24)
  {
    return;
  }

LABEL_20:
  v27 = *a4;
LABEL_22:
  v28 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v29 = *v11;
  while (1)
  {
    v30 = v11;
    v31 = v11[1];
    *v30 = 0;
    v30[1] = 0;
    v32 = a4[1];
    *a4 = v29;
    a4[1] = v31;
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (v7 < v10)
    {
      break;
    }

    v33 = 2 * v10;
    v10 = (2 * v10) | 1;
    v11 = (a1 + 16 * v10);
    v34 = v33 + 2;
    if (v33 + 2 >= a3)
    {
      goto LABEL_36;
    }

    v29 = 0;
    v36 = v11 + 2;
    v35 = *v11;
    a4 = v30;
    if (*v11)
    {
      v37 = *v36;
      if (*v36)
      {
        v38 = *(v35 + 96);
        v39 = *(v37 + 96);
        v40 = v38 < v39;
        if (v38 == v39 && (v41 = *(v35 + 104), v42 = *(v37 + 104), v40 = v41 < v42, v41 == v42))
        {
          if (*(v35 + 112) >= *(v37 + 112))
          {
            goto LABEL_36;
          }
        }

        else if (!v40)
        {
          goto LABEL_36;
        }

        v11 += 2;
        v10 = v34;
LABEL_36:
        v29 = 0;
        v35 = *v11;
        a4 = v30;
        if (*v11)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_37:
        v29 = v35;
        a4 = v30;
        if (v27)
        {
          v43 = *(v35 + 96);
          v44 = *(v27 + 96);
          v45 = v43 < v44;
          if (v43 == v44 && (v46 = *(v35 + 104), v47 = *(v27 + 104), v45 = v46 < v47, v46 == v47))
          {
            v29 = v35;
            a4 = v30;
            if (*(v35 + 112) < *(v27 + 112))
            {
              break;
            }
          }

          else
          {
            v29 = v35;
            a4 = v30;
            if (v45)
            {
              break;
            }
          }
        }
      }
    }
  }

  v48 = v30[1];
  *v30 = v27;
  v30[1] = v28;
  if (v48)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range,std::shared_ptr<NL::Entity> *>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *>(a1, a3, a4);
    v10 = v9;
    if (v9 == (a2 - 16))
    {
      v15 = v9[1];
      *v10 = v8;
      v10[1] = v7;
      if (v15)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    else
    {
      v11 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v12 = v9[1];
      *v10 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = (v10 + 2);
      v14 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *>(a1, v13, a3, (v13 - a1) >> 4);
    }
  }
}

void sub_22CD58960(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *>(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = (a3 - 2) / 2;
  do
  {
    v6 = &a1[2 * v4];
    v7 = v6 + 2;
    v8 = 2 * v4;
    v4 = (2 * v4) | 1;
    v9 = v8 + 2;
    if (v9 < a3)
    {
      v10 = *v7;
      if (*v7)
      {
        v13 = v6[4];
        v11 = v6 + 4;
        v12 = v13;
        if (v13)
        {
          v14 = *(v10 + 96);
          v15 = *(v12 + 96);
          v16 = v14 < v15;
          if (v14 == v15 && (v17 = *(v10 + 104), v18 = *(v12 + 104), v16 = v17 < v18, v17 == v18))
          {
            if (*(v10 + 112) < *(v12 + 112))
            {
              goto LABEL_11;
            }
          }

          else if (v16)
          {
LABEL_11:
            v7 = v11;
            v4 = v9;
          }
        }
      }
    }

    v19 = *v7;
    *v7 = 0;
    v7[1] = 0;
    v20 = a1[1];
    *a1 = v19;
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    a1 = v7;
  }

  while (v4 <= v5);
  return v7;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,entity_greater_than_range &,std::shared_ptr<NL::Entity> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = (a1 + 16 * (v4 >> 1));
    v8 = *v7;
    if (*v7)
    {
      v9 = (a2 - 16);
      v10 = *(a2 - 16);
      if (v10)
      {
        v11 = *(v8 + 96);
        v12 = *(v10 + 96);
        v13 = v11 < v12;
        if (v11 == v12 && (v14 = *(v8 + 104), v15 = *(v10 + 104), v13 = v14 < v15, v14 == v15))
        {
          if (*(v8 + 112) >= *(v10 + 112))
          {
            return;
          }
        }

        else if (!v13)
        {
          return;
        }

        v16 = *(a2 - 8);
        *v9 = 0;
        *(a2 - 8) = 0;
        v17 = *v7;
        while (1)
        {
          v18 = v7;
          v19 = v7[1];
          *v18 = 0;
          v18[1] = 0;
          v20 = v9[1];
          *v9 = v17;
          v9[1] = v19;
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          if (!v6)
          {
            break;
          }

          v6 = (v6 - 1) >> 1;
          v7 = (a1 + 16 * v6);
          v17 = *v7;
          if (!*v7)
          {
            break;
          }

          v21 = *(v17 + 96);
          v22 = *(v10 + 96);
          v23 = v21 < v22;
          if (v21 == v22 && (v24 = *(v17 + 104), v25 = *(v10 + 104), v23 = v24 < v25, v24 == v25))
          {
            v9 = v18;
            if (*(v17 + 112) >= *(v10 + 112))
            {
              break;
            }
          }

          else
          {
            v9 = v18;
            if (!v23)
            {
              break;
            }
          }
        }

        v26 = v18[1];
        *v18 = v10;
        v18[1] = v16;
        if (v26)
        {

          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }
      }
    }
  }
}

void std::__sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::vector<CFRange> *>,ranges_greater_than_range>(uint64_t *a1, __n128 *a2, uint64_t a3)
{
  v3 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3));
  if (a2 == a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  std::__introsort<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,false>(a1, a2, a3, v4, 1);
}

void std::__introsort<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,false>(uint64_t *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 3);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,0>(v9, &v9[1].n128_i64[1], &a2[-2].n128_i64[1]);
          return;
        case 4uLL:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,0>(v9, &v9[1].n128_i64[1], &v9[3], &a2[-2].n128_i64[1]);
          return;
        case 5uLL:
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,0>(v9, &v9[1].n128_i64[1], &v9[3], &v9[4].n128_i64[1], &a2[-2].n128_i64[1]);
          return;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v46, a2[-2].n128_i64[1], a2[-1].n128_i64[0], (a2[-1].n128_u64[0] - a2[-2].n128_u64[1]) >> 4);
        v43 = 0;
        v44 = 0;
        v45 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v43, v9->n128_u64[0], v9->n128_i64[1], (v9->n128_u64[1] - v9->n128_u64[0]) >> 4);
        v29 = v46;
        v28 = v47;
        v30 = v43;
        v31 = v44;
        if (v43)
        {
          v44 = v43;
          operator delete(v43);
        }

        v32 = v28 - v29;
        v33 = v31 - v30;
        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        if (v32 > v33)
        {
          v34 = v9->n128_u64[0];
          v9->n128_u64[0] = a2[-2].n128_u64[1];
          a2[-2].n128_u64[1] = v34;
          v35 = v9->n128_u64[1];
          v9->n128_u64[1] = a2[-1].n128_u64[0];
          a2[-1].n128_u64[0] = v35;
          v36 = v9[1].n128_u64[0];
          v9[1].n128_u64[0] = a2[-1].n128_u64[1];
          a2[-1].n128_u64[1] = v36;
        }

        return;
      }
    }

    if (v12 <= 575)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *>(v9, a2);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      break;
    }

    v14 = v13 >> 1;
    v15 = v9 + 3 * (v13 >> 1);
    if (v12 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,0>(v9 + 3 * v14, v9, &a2[-2].n128_i64[1]);
      if (a5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,0>(v9, v9 + 3 * v14, &a2[-2].n128_i64[1]);
      v16 = 3 * v14;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,0>(&v9[1].n128_i64[1], &v9[-1] + v16 - 1, &a2[-3]);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,0>(&v9[3], &v9[1].n128_i64[v16 + 1], &a2[-5].n128_i64[1]);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,0>(&v9[-1] + v16 - 1, v15, &v9[1].n128_i64[v16 + 1]);
      v17 = *v9;
      *v9 = *v15;
      *v15 = v17;
      v18 = v9[1].n128_i64[0];
      v9[1].n128_u64[0] = v15[2];
      v15[2] = v18;
      if (a5)
      {
        goto LABEL_21;
      }
    }

    v40 = 0;
    v41 = 0;
    v42 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v40, v9[-2].n128_i64[1], v9[-1].n128_i64[0], (v9[-1].n128_u64[0] - v9[-2].n128_u64[1]) >> 4);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v37, v9->n128_u64[0], v9->n128_i64[1], (v9->n128_u64[1] - v9->n128_u64[0]) >> 4);
    v20 = v40;
    v19 = v41;
    v22 = v37;
    v21 = v38;
    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    v23 = v19 - v20;
    v24 = v21 - v22;
    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v23 <= v24)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<CFRange> *,ranges_greater_than_range &>(a1, a2);
      goto LABEL_26;
    }

LABEL_21:
    v25 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<CFRange> *,ranges_greater_than_range &>(a1, a2);
    if ((v26 & 1) == 0)
    {
      goto LABEL_24;
    }

    v27 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *>(a1, v25);
    v9 = (v25 + 3);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *>(v25 + 3, a2))
    {
      a4 = -v11;
      a2 = v25;
      if (v27)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v27)
    {
LABEL_24:
      std::__introsort<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,false>(a1, v25, a3, -v11, a5 & 1);
      v9 = (v25 + 3);
LABEL_26:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v9 != a2)
  {
    std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,std::vector<CFRange> *>(v9, a2, a2, a3);
  }
}

void sub_22CD58F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v77 = 0;
  v78 = 0;
  v79 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v77, *a2, a2[1], (a2[1] - *a2) >> 4);
  v74 = 0;
  v75 = 0;
  v76 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v74, *a1, a1[1], (a1[1] - *a1) >> 4);
  v7 = v77;
  v6 = v78;
  v8 = v74;
  v9 = v75;
  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  v10 = v6 - v7;
  v11 = v9 - v8;
  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v10 > v11)
  {
    v59 = 0;
    v60 = 0;
    v61 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v59, *a3, a3[1], (a3[1] - *a3) >> 4);
    v56 = 0;
    v57 = 0;
    v58 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v56, *a2, a2[1], (a2[1] - *a2) >> 4);
    v13 = v59;
    v12 = v60;
    v14 = v56;
    v15 = v57;
    if (v56)
    {
      v57 = v56;
      operator delete(v56);
    }

    v20 = v12 - v13;
    v21 = v15 - v14;
    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    v23 = a1 + 2;
    v22 = *a1;
    if (v20 <= v21)
    {
      *a1 = *a2;
      *a2 = v22;
      v25 = a1[1];
      a1[1] = a2[1];
      a2[1] = v25;
      v23 = a2 + 2;
      v26 = a1[2];
      a1[2] = a2[2];
      a2[2] = v26;
      v54 = 0;
      v55 = 0;
      v53 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v53, *a3, a3[1], (a3[1] - *a3) >> 4);
      v50 = 0;
      v51 = 0;
      v52 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v50, *a2, a2[1], (a2[1] - *a2) >> 4);
      v28 = v53;
      v27 = v54;
      v29 = v50;
      v30 = v51;
      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }

      v42 = v27 - v28;
      v43 = v30 - v29;
      if (v53)
      {
        v54 = v53;
        operator delete(v53);
      }

      if (v42 <= v43)
      {
        return 1;
      }

      v44 = *a2;
      *a2 = *a3;
      *a3 = v44;
      v24 = a2[1];
      a2[1] = a3[1];
    }

    else
    {
      *a1 = *a3;
      *a3 = v22;
      v24 = a1[1];
      a1[1] = a3[1];
    }

    a3[1] = v24;
    v36 = a3 + 2;
    goto LABEL_31;
  }

  v71 = 0;
  v72 = 0;
  v73 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v71, *a3, a3[1], (a3[1] - *a3) >> 4);
  v68 = 0;
  v69 = 0;
  v70 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v68, *a2, a2[1], (a2[1] - *a2) >> 4);
  v17 = v71;
  v16 = v72;
  v18 = v68;
  v19 = v69;
  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  v31 = v16 - v17;
  v32 = v19 - v18;
  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v31 <= v32)
  {
    return 0;
  }

  v33 = *a2;
  *a2 = *a3;
  *a3 = v33;
  v34 = a2[1];
  a2[1] = a3[1];
  a3[1] = v34;
  v36 = a2 + 2;
  v35 = a2[2];
  a2[2] = a3[2];
  a3[2] = v35;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v65, *a2, a2[1], (a2[1] - *a2) >> 4);
  v62 = 0;
  v63 = 0;
  v64 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v62, *a1, a1[1], (a1[1] - *a1) >> 4);
  v38 = v65;
  v37 = v66;
  v39 = v62;
  v40 = v63;
  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  v45 = v37 - v38;
  v46 = v40 - v39;
  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v45 > v46)
  {
    v47 = *a1;
    *a1 = *a2;
    *a2 = v47;
    v48 = a1[1];
    a1[1] = a2[1];
    a2[1] = v48;
    v23 = a1 + 2;
LABEL_31:
    v49 = *v23;
    *v23 = *v36;
    *v36 = v49;
  }

  return 1;
}

void sub_22CD59378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p)
{
  if (__p)
  {
    *v24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,0>(a1, a2, a3);
  v51 = 0;
  v52 = 0;
  v50 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v50, *a4, a4[1], (a4[1] - *a4) >> 4);
  v47 = 0;
  v48 = 0;
  v49 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v47, *a3, a3[1], (a3[1] - *a3) >> 4);
  v9 = v50;
  v8 = v51;
  v10 = v47;
  v11 = v48;
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  v12 = v8 - v9;
  v13 = v11 - v10;
  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v12 > v13)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    v15 = a3[1];
    a3[1] = a4[1];
    a4[1] = v15;
    v16 = a3[2];
    a3[2] = a4[2];
    a4[2] = v16;
    v45 = 0;
    v46 = 0;
    v44 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v44, *a3, a3[1], (a3[1] - *a3) >> 4);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v41, *a2, a2[1], (a2[1] - *a2) >> 4);
    v18 = v44;
    v17 = v45;
    v19 = v41;
    v20 = v42;
    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    v21 = v17 - v18;
    v22 = v20 - v19;
    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    if (v21 > v22)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = a2[1];
      a2[1] = a3[1];
      a3[1] = v24;
      v25 = a2[2];
      a2[2] = a3[2];
      a3[2] = v25;
      v39 = 0;
      v40 = 0;
      v38 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v38, *a2, a2[1], (a2[1] - *a2) >> 4);
      v35 = 0;
      v36 = 0;
      v37 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v35, *a1, a1[1], (a1[1] - *a1) >> 4);
      v27 = v38;
      v26 = v39;
      v28 = v35;
      v29 = v36;
      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      v30 = v26 - v27;
      v31 = v29 - v28;
      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      if (v30 > v31)
      {
        v32 = *a1;
        *a1 = *a2;
        *a2 = v32;
        v33 = a1[1];
        a1[1] = a2[1];
        a2[1] = v33;
        v34 = a1[2];
        a1[2] = a2[2];
        a2[2] = v34;
      }
    }
  }
}

void sub_22CD59638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (__p)
  {
    *v18 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,0>(a1, a2, a3, a4);
  v67 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v67, *a5, a5[1], (a5[1] - *a5) >> 4);
  v64 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v64, *a4, a4[1], (a4[1] - *a4) >> 4);
  v11 = v67;
  v10 = v68;
  v12 = v64;
  v13 = v65;
  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  v14 = v10 - v11;
  v15 = v13 - v12;
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (v14 > v15)
  {
    v16 = *a4;
    *a4 = *a5;
    *a5 = v16;
    v17 = a4[1];
    a4[1] = a5[1];
    a5[1] = v17;
    v18 = a4[2];
    a4[2] = a5[2];
    a5[2] = v18;
    v62 = 0;
    v63 = 0;
    v61 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v61, *a4, a4[1], (a4[1] - *a4) >> 4);
    v58 = 0;
    v59 = 0;
    v60 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v58, *a3, a3[1], (a3[1] - *a3) >> 4);
    v20 = v61;
    v19 = v62;
    v21 = v58;
    v22 = v59;
    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    v23 = v19 - v20;
    v24 = v22 - v21;
    if (v61)
    {
      v62 = v61;
      operator delete(v61);
    }

    if (v23 > v24)
    {
      v25 = *a3;
      *a3 = *a4;
      *a4 = v25;
      v26 = a3[1];
      a3[1] = a4[1];
      a4[1] = v26;
      v27 = a3[2];
      a3[2] = a4[2];
      a4[2] = v27;
      v56 = 0;
      v57 = 0;
      v55 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v55, *a3, a3[1], (a3[1] - *a3) >> 4);
      v52 = 0;
      v53 = 0;
      v54 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v52, *a2, a2[1], (a2[1] - *a2) >> 4);
      v29 = v55;
      v28 = v56;
      v30 = v52;
      v31 = v53;
      if (v52)
      {
        v53 = v52;
        operator delete(v52);
      }

      v32 = v28 - v29;
      v33 = v31 - v30;
      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }

      if (v32 > v33)
      {
        v34 = *a2;
        *a2 = *a3;
        *a3 = v34;
        v35 = a2[1];
        a2[1] = a3[1];
        a3[1] = v35;
        v36 = a2[2];
        a2[2] = a3[2];
        a3[2] = v36;
        v50 = 0;
        v51 = 0;
        v49 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v49, *a2, a2[1], (a2[1] - *a2) >> 4);
        v46 = 0;
        v47 = 0;
        v48 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v46, *a1, a1[1], (a1[1] - *a1) >> 4);
        v38 = v49;
        v37 = v50;
        v39 = v46;
        v40 = v47;
        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        v41 = v37 - v38;
        v42 = v40 - v39;
        if (v49)
        {
          v50 = v49;
          operator delete(v49);
        }

        if (v41 > v42)
        {
          v43 = *a1;
          *a1 = *a2;
          *a2 = v43;
          v44 = a1[1];
          a1[1] = a2[1];
          a2[1] = v44;
          v45 = a1[2];
          a1[2] = a2[2];
          a2[2] = v45;
        }
      }
    }
  }
}

void sub_22CD59994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    *v24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *>(__n128 *a1, __n128 *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v2 = a2;
  v3 = (a1 + 24);
  if (&a1[1].n128_i8[8] == a2)
  {
    return;
  }

  v4 = 0;
  v5 = a1;
  do
  {
    v6 = v3;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v37, v5[1].n128_i64[1], v5[2].n128_i64[0], (v5[2].n128_u64[0] - v5[1].n128_u64[1]) >> 4);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v34, v5->n128_u64[0], v5->n128_i64[1], (v5->n128_u64[1] - v5->n128_u64[0]) >> 4);
    v8 = v37;
    v7 = v38;
    v9 = v34;
    v10 = v35;
    if (!v34)
    {
      v11 = v37;
      if (!v37)
      {
        goto LABEL_7;
      }

LABEL_6:
      v38 = v11;
      operator delete(v11);
      goto LABEL_7;
    }

    v35 = v34;
    operator delete(v34);
    v11 = v37;
    if (v37)
    {
      goto LABEL_6;
    }

LABEL_7:
    if (v7 - v8 <= (v10 - v9))
    {
      goto LABEL_25;
    }

    v12 = v5[1].n128_i64[1];
    v26 = v5[2];
    v6->n128_u64[0] = 0;
    v6->n128_u64[1] = 0;
    v6[1].n128_u64[0] = 0;
    std::vector<CFRange>::__move_assign(v6, v5);
    v13 = a1;
    if (v5 == a1)
    {
      goto LABEL_22;
    }

    v25 = v4;
    v14 = v4;
    while (1)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v31, v12, v26.n128_i64[0], (v26.n128_u64[0] - v12) >> 4);
      v15 = *(&a1[-1] + v14 - 8);
      v16 = *(a1[-1].n128_i64 + v14);
      v28 = 0;
      v29 = 0;
      v30 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v28, v15, v16, (v16 - v15) >> 4);
      v18 = v31;
      v17 = v32;
      v20 = v28;
      v19 = v29;
      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }

      v21 = v17 - v18;
      v22 = v19 - v20;
      if (v31)
      {
        v32 = v31;
        operator delete(v31);
        if (v21 <= v22)
        {
          v13 = v5;
          goto LABEL_21;
        }

        goto LABEL_16;
      }

      if (v21 <= v22)
      {
        break;
      }

LABEL_16:
      v5 = (v5 - 24);
      std::vector<CFRange>::__move_assign(a1 + v14, (a1 + v14 - 24));
      v14 -= 24;
      if (!v14)
      {
        v13 = a1;
        goto LABEL_21;
      }
    }

    v13 = (a1 + v14);
LABEL_21:
    v2 = a2;
    v4 = v25;
LABEL_22:
    v23 = v13->n128_u64[0];
    if (v13->n128_u64[0])
    {
      v13->n128_u64[1] = v23;
      operator delete(v23);
      v13->n128_u64[0] = 0;
      v13->n128_u64[1] = 0;
      v13[1].n128_u64[0] = 0;
    }

    v13->n128_u64[0] = v12;
    *(v13 + 8) = v26;
LABEL_25:
    v3 = (v6 + 24);
    v4 += 24;
    v5 = v6;
  }

  while (&v6[1].n128_i8[8] != v2);
}

void sub_22CD59C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  v24 = *(v22 - 112);
  if (v24)
  {
    v25 = *(v22 - 112);
    *(v22 - 104) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *>(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    v4 = a1 + 3;
    while (1)
    {
      if (v4 == a2)
      {
        return;
      }

      v5 = v4;
      __p = 0;
      v35 = 0;
      v36 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, v3[3], v3[4], (v3[4] - v3[3]) >> 4);
      v31 = 0;
      v32 = 0;
      v33 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v31, *v3, v3[1], (v3[1] - *v3) >> 4);
      v7 = __p;
      v6 = v35;
      v8 = v31;
      v9 = v32;
      if (!v31)
      {
        break;
      }

      v32 = v31;
      operator delete(v31);
      v10 = __p;
      if (__p)
      {
        goto LABEL_6;
      }

LABEL_7:
      if (v6 - v7 <= (v9 - v8))
      {
        goto LABEL_19;
      }

      v11 = *v5;
      v12 = *(v3 + 2);
      v5[1] = 0;
      v5[2] = 0;
      *v5 = 0;
      v24 = v12;
      v13 = v12;
      v14 = (v12 - v11) >> 4;
      v15 = v5;
      do
      {
        v16 = v15 - 24;
        std::vector<CFRange>::__move_assign(v15, (v15 - 24));
        v28 = 0;
        v29 = 0;
        v30 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v28, v11, v13, v14);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v25, *(v15 - 48), *(v15 - 40), (*(v15 - 40) - *(v15 - 48)) >> 4);
        v18 = v28;
        v17 = v29;
        v19 = v25;
        v20 = v26;
        if (v25)
        {
          v26 = v25;
          operator delete(v25);
          v21 = v28;
          if (!v28)
          {
            goto LABEL_12;
          }

LABEL_11:
          v29 = v21;
          operator delete(v21);
          goto LABEL_12;
        }

        v21 = v28;
        if (v28)
        {
          goto LABEL_11;
        }

LABEL_12:
        v22 = v20 - v19;
        v15 = v16;
      }

      while (v17 - v18 > v22);
      v23 = *v16;
      if (*v16)
      {
        *(v16 + 8) = v23;
        operator delete(v23);
        *v16 = 0;
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
      }

      *v16 = v11;
      *(v16 + 8) = v24;
LABEL_19:
      v4 = v5 + 3;
      v3 = v5;
    }

    v10 = __p;
    if (!__p)
    {
      goto LABEL_7;
    }

LABEL_6:
    v35 = v10;
    operator delete(v10);
    goto LABEL_7;
  }
}

void sub_22CD59E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<CFRange> *,ranges_greater_than_range &>(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v82 = 0;
  v83 = 0;
  v81 = 0;
  v47 = v5;
  v6 = v5;
  v7 = (v5 - v4) >> 4;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v81, v4, v5, v7);
  v78 = 0;
  v79 = 0;
  v80 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v78, *(a2 - 3), *(a2 - 2), (*(a2 - 2) - *(a2 - 3)) >> 4);
  v9 = v81;
  v8 = v82;
  v10 = v78;
  v11 = v79;
  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  v12 = v8 - v9;
  v13 = v11 - v10;
  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (v12 > v13)
  {
    i = a1;
    while (1)
    {
      v75 = 0;
      v76 = 0;
      v77 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v75, v4, v6, v7);
      v72 = 0;
      v73 = 0;
      v74 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v72, i[3], i[4], (i[4] - i[3]) >> 4);
      v16 = v75;
      v15 = v76;
      v17 = v72;
      v18 = v73;
      if (!v72)
      {
        break;
      }

      v73 = v72;
      operator delete(v72);
      v19 = v75;
      if (v75)
      {
        goto LABEL_9;
      }

LABEL_10:
      i += 3;
      if (v15 - v16 > (v18 - v17))
      {
        goto LABEL_22;
      }
    }

    v19 = v75;
    if (!v75)
    {
      goto LABEL_10;
    }

LABEL_9:
    v76 = v19;
    operator delete(v19);
    goto LABEL_10;
  }

  for (i = (a1 + 24); i < a2; i += 3)
  {
    v69 = 0;
    v70 = 0;
    v71 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v69, v4, v6, v7);
    v66 = 0;
    v67 = 0;
    v68 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v66, *i, i[1], (i[1] - *i) >> 4);
    v21 = v69;
    v20 = v70;
    v22 = v66;
    v23 = v67;
    if (v66)
    {
      v67 = v66;
      operator delete(v66);
    }

    v24 = v20 - v21;
    v25 = v23 - v22;
    if (v69)
    {
      v70 = v69;
      operator delete(v69);
    }

    if (v24 > v25)
    {
      break;
    }
  }

LABEL_22:
  if (i < a2)
  {
    while (1)
    {
      __p = 0;
      v64 = 0;
      v65 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, v4, v6, v7);
      v60 = 0;
      v61 = 0;
      v62 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v60, *(a2 - 3), *(a2 - 2), (*(a2 - 2) - *(a2 - 3)) >> 4);
      v27 = __p;
      v26 = v64;
      v28 = v60;
      v29 = v61;
      if (!v60)
      {
        break;
      }

      v61 = v60;
      operator delete(v60);
      v30 = __p;
      if (__p)
      {
        goto LABEL_25;
      }

LABEL_26:
      a2 -= 3;
      if (v26 - v27 <= (v29 - v28))
      {
        goto LABEL_44;
      }
    }

    v30 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }

LABEL_25:
    v64 = v30;
    operator delete(v30);
    goto LABEL_26;
  }

LABEL_44:
  if (i < a2)
  {
    v31 = *i;
    *i = *a2;
    *a2 = v31;
    v32 = i[1];
    i[1] = a2[1];
    a2[1] = v32;
    v33 = i[2];
    i[2] = a2[2];
    a2[2] = v33;
    while (1)
    {
      v57 = 0;
      v58 = 0;
      v59 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v57, v4, v6, v7);
      v54 = 0;
      v55 = 0;
      v56 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v54, i[3], i[4], (i[4] - i[3]) >> 4);
      v35 = v57;
      v34 = v58;
      v36 = v54;
      v37 = v55;
      if (!v54)
      {
        break;
      }

      v55 = v54;
      operator delete(v54);
      v38 = v57;
      if (v57)
      {
        goto LABEL_33;
      }

LABEL_34:
      i += 3;
      if (v34 - v35 > (v37 - v36))
      {
        while (1)
        {
          v51 = 0;
          v52 = 0;
          v53 = 0;
          std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v51, v4, v6, v7);
          v48 = 0;
          v49 = 0;
          v50 = 0;
          std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v48, *(a2 - 3), *(a2 - 2), (*(a2 - 2) - *(a2 - 3)) >> 4);
          v41 = v51;
          v40 = v52;
          v42 = v48;
          v43 = v49;
          if (!v48)
          {
            break;
          }

          v49 = v48;
          operator delete(v48);
          v39 = v51;
          if (v51)
          {
            goto LABEL_42;
          }

LABEL_43:
          a2 -= 3;
          if (v40 - v41 <= (v43 - v42))
          {
            goto LABEL_44;
          }
        }

        v39 = v51;
        if (!v51)
        {
          goto LABEL_43;
        }

LABEL_42:
        v52 = v39;
        operator delete(v39);
        goto LABEL_43;
      }
    }

    v38 = v57;
    if (!v57)
    {
      goto LABEL_34;
    }

LABEL_33:
    v58 = v38;
    operator delete(v38);
    goto LABEL_34;
  }

  v44 = (i - 3);
  if (i - 3 != a1)
  {
    std::vector<CFRange>::__move_assign(a1, (i - 3));
  }

  v45 = *v44;
  if (*v44)
  {
    *(i - 2) = v45;
    operator delete(v45);
    *v44 = 0;
    *(i - 2) = 0;
    *(i - 1) = 0;
  }

  *(i - 3) = v4;
  *(i - 1) = v47;
  return i;
}

void sub_22CD5A274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = *(v35 - 112);
  if (v37)
  {
    *(v35 - 104) = v37;
    operator delete(v37);
  }

  if (v34)
  {
    operator delete(v34);
  }

  _Unwind_Resume(exception_object);
}

void *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<CFRange> *,ranges_greater_than_range &>(uint64_t a1, void *a2)
{
  v3 = 0;
  v4 = *a1;
  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v52 = v5;
  v6 = v5;
  v7 = (v5 - v4) >> 4;
  v54 = a1;
  do
  {
    v82 = 0;
    v83 = 0;
    v84 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v82, *(a1 + v3 + 24), *(a1 + v3 + 32), (*(a1 + v3 + 32) - *(a1 + v3 + 24)) >> 4);
    v79 = 0;
    v80 = 0;
    v81 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v79, v4, v6, v7);
    v8 = v82;
    v9 = v83;
    v10 = v79;
    v11 = v80;
    if (v79)
    {
      v80 = v79;
      operator delete(v79);
      v12 = v82;
      if (!v82)
      {
        goto LABEL_5;
      }

LABEL_4:
      v83 = v12;
      operator delete(v12);
      goto LABEL_5;
    }

    v12 = v82;
    if (v82)
    {
      goto LABEL_4;
    }

LABEL_5:
    v3 += 24;
    a1 = v54;
  }

  while (v9 - v8 > (v11 - v10));
  v13 = (v54 + v3);
  v53 = (v54 + v3);
  if (v3 != 24)
  {
    while (1)
    {
      v14 = *(a2 - 3);
      v15 = *(a2 - 2);
      a2 -= 3;
      __p = 0;
      v71 = 0;
      v72 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, v14, v15, (v15 - v14) >> 4);
      v67 = 0;
      v68 = 0;
      v69 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v67, v4, v6, v7);
      v17 = __p;
      v16 = v71;
      v18 = v67;
      v19 = v68;
      if (!v67)
      {
        break;
      }

      v68 = v67;
      operator delete(v67);
      v20 = __p;
      if (__p)
      {
        goto LABEL_12;
      }

LABEL_13:
      if (v16 - v17 > (v19 - v18))
      {
        goto LABEL_29;
      }
    }

    v20 = __p;
    if (!__p)
    {
      goto LABEL_13;
    }

LABEL_12:
    v71 = v20;
    operator delete(v20);
    goto LABEL_13;
  }

  while (v13 < a2)
  {
    while (1)
    {
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v21 = *(a2 - 3);
      v22 = *(a2 - 2);
      a2 -= 3;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v76, v21, v22, (v22 - v21) >> 4);
      v73 = 0;
      v74 = 0;
      v75 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v73, v4, v6, v7);
      v24 = v76;
      v23 = v77;
      v25 = v73;
      v26 = v74;
      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }

      v27 = v23 - v24;
      v28 = v26 - v25;
      if (v76)
      {
        break;
      }

      if (v27 > v28 || v53 >= a2)
      {
        goto LABEL_29;
      }
    }

    v77 = v76;
    operator delete(v76);
    if (v27 > v28)
    {
      break;
    }

    v13 = v53;
  }

LABEL_29:
  v30 = v53;
  if (v53 >= a2)
  {
    goto LABEL_46;
  }

  v31 = a2;
  while (2)
  {
    v32 = *v30;
    *v30 = *v31;
    *v31 = v32;
    v33 = v30[1];
    v30[1] = v31[1];
    v31[1] = v33;
    v34 = v30[2];
    v30[2] = v31[2];
    v31[2] = v34;
    while (2)
    {
      v35 = v30[3];
      v36 = v30[4];
      v30 += 3;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v64, v35, v36, (v36 - v35) >> 4);
      v61 = 0;
      v62 = 0;
      v63 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v61, v4, v6, v7);
      v37 = v64;
      v38 = v65;
      v40 = v61;
      v39 = v62;
      if (v61)
      {
        v62 = v61;
        operator delete(v61);
        v41 = v64;
        if (v64)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v41 = v64;
        if (v64)
        {
LABEL_34:
          v65 = v41;
          operator delete(v41);
        }
      }

      if (v38 - v37 > (v39 - v40))
      {
        continue;
      }

      break;
    }

    while (2)
    {
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v43 = *(v31 - 3);
      v44 = *(v31 - 2);
      v31 -= 3;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v58, v43, v44, (v44 - v43) >> 4);
      v55 = 0;
      v56 = 0;
      v57 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v55, v4, v6, v7);
      v45 = v58;
      v46 = v59;
      v48 = v55;
      v47 = v56;
      if (v55)
      {
        v56 = v55;
        operator delete(v55);
        v42 = v58;
        if (v58)
        {
LABEL_43:
          v59 = v42;
          operator delete(v42);
        }
      }

      else
      {
        v42 = v58;
        if (v58)
        {
          goto LABEL_43;
        }
      }

      if (v46 - v45 <= (v47 - v48))
      {
        continue;
      }

      break;
    }

    if (v30 < v31)
    {
      continue;
    }

    break;
  }

LABEL_46:
  v49 = (v30 - 3);
  if (v30 - 3 != v54)
  {
    std::vector<CFRange>::__move_assign(v54, (v30 - 3));
  }

  v50 = *v49;
  if (*v49)
  {
    *(v30 - 2) = v50;
    operator delete(v50);
    *v49 = 0;
    *(v30 - 2) = 0;
    *(v30 - 1) = 0;
  }

  *(v30 - 3) = v4;
  *(v30 - 1) = v52;
  return v30 - 3;
}

void sub_22CD5A6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (v30)
  {
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v3 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v3 <= 2)
  {
    if (v3 >= 2)
    {
      if (v3 == 2)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v52, *(a2 - 3), *(a2 - 2), (*(a2 - 2) - *(a2 - 3)) >> 4);
        v49 = 0;
        v50 = 0;
        v51 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v49, *a1, a1[1], (a1[1] - *a1) >> 4);
        v4 = v52;
        v5 = v53;
        v6 = v49;
        v7 = v50;
        if (v49)
        {
          v50 = v49;
          operator delete(v49);
        }

        v26 = v5 - v4;
        if (v52)
        {
          v53 = v52;
          operator delete(v52);
        }

        if (v26 > v7 - v6)
        {
          v27 = *a1;
          *a1 = *(v2 - 3);
          *(v2 - 3) = v27;
          v28 = a1[1];
          a1[1] = *(v2 - 2);
          *(v2 - 2) = v28;
          v29 = a1[2];
          a1[2] = *(v2 - 1);
          *(v2 - 1) = v29;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v3)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,0>(a1, a1 + 3, a2 - 3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,0>(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
      return 1;
  }

LABEL_11:
  v8 = (a1 + 6);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,0>(a1, a1 + 3, a1 + 6);
  v9 = a1 + 9;
  if (a1 + 9 == v2)
  {
    return 1;
  }

  v10 = 0;
  v34 = 0;
  v31 = v2;
  while (1)
  {
    __p = 0;
    v47 = 0;
    v48 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, *v9, v9[1], (v9[1] - *v9) >> 4);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v43, v8->n128_u64[0], v8->n128_i64[1], (v8->n128_u64[1] - v8->n128_u64[0]) >> 4);
    v12 = __p;
    v11 = v47;
    v13 = v43;
    v14 = v44;
    if (!v43)
    {
      v15 = __p;
      if (!__p)
      {
        goto LABEL_16;
      }

LABEL_15:
      v47 = v15;
      operator delete(v15);
      goto LABEL_16;
    }

    v44 = v43;
    operator delete(v43);
    v15 = __p;
    if (__p)
    {
      goto LABEL_15;
    }

LABEL_16:
    if (v11 - v12 > (v14 - v13))
    {
      v16 = *v9;
      v35 = *(v9 + 1);
      v9[1] = 0;
      v9[2] = 0;
      *v9 = 0;
      v33 = v9;
      std::vector<CFRange>::__move_assign(v9, v8);
      v32 = v10;
      do
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v40, v16, v35.n128_i64[0], (v35.n128_u64[0] - v16) >> 4);
        v17 = *(a1 + v10 + 24);
        v18 = *(a1 + v10 + 32);
        v37 = 0;
        v38 = 0;
        v39 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v37, v17, v18, (v18 - v17) >> 4);
        v20 = v40;
        v19 = v41;
        v22 = v37;
        v21 = v38;
        if (v37)
        {
          v38 = v37;
          operator delete(v37);
        }

        v23 = v19 - v20;
        v24 = v21 - v22;
        if (v40)
        {
          v41 = v40;
          operator delete(v40);
          if (v23 <= v24)
          {
            v8 = (a1 + v10 + 48);
            goto LABEL_28;
          }
        }

        else if (v23 <= v24)
        {
          goto LABEL_28;
        }

        v8 = (v8 - 24);
        std::vector<CFRange>::__move_assign(a1 + v10 + 48, (a1 + v10 + 24));
        v10 -= 24;
      }

      while (v10 != -48);
      v8 = a1;
LABEL_28:
      v10 = v32;
      v9 = v33;
      v25 = v8->n128_u64[0];
      v2 = v31;
      if (v8->n128_u64[0])
      {
        v8->n128_u64[1] = v25;
        operator delete(v25);
        v8->n128_u64[0] = 0;
        v8->n128_u64[1] = 0;
        v8[1].n128_u64[0] = 0;
      }

      v8->n128_u64[0] = v16;
      *(v8 + 8) = v35;
      if (++v34 == 8)
      {
        return v33 + 3 == v31;
      }
    }

    v8 = v9;
    v10 += 24;
    v9 += 3;
    if (v9 == v2)
    {
      return 1;
    }
  }
}

void sub_22CD5AB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  __pa = *(v28 - 112);
  if (__pa)
  {
    *(v28 - 104) = __pa;
    operator delete(__pa);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<CFRange>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *,std::vector<CFRange> *>(__n128 *a1, __n128 *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    v24 = a2 - a1;
    if (a2 - a1 >= 25)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = a1 + 3 * v9;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *>(a1, a4, v8, v11);
        v11 -= 3;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      while (1)
      {
        __p = 0;
        v29 = 0;
        v30 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, *v12, v12[1], (v12[1] - *v12) >> 4);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v25, a1->n128_u64[0], a1->n128_i64[1], (a1->n128_u64[1] - a1->n128_u64[0]) >> 4);
        v14 = __p;
        v13 = v29;
        v15 = v25;
        v16 = v26;
        if (!v25)
        {
          break;
        }

        v26 = v25;
        operator delete(v25);
        v17 = __p;
        if (__p)
        {
          goto LABEL_9;
        }

LABEL_10:
        if (v13 - v14 > (v16 - v15))
        {
          v18 = *v12;
          *v12 = a1->n128_u64[0];
          a1->n128_u64[0] = v18;
          v19 = v12[1];
          v12[1] = a1->n128_i64[1];
          a1->n128_u64[1] = v19;
          v20 = v12[2];
          v12[2] = a1[1].n128_i64[0];
          a1[1].n128_u64[0] = v20;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *>(a1, a4, v8, a1);
        }

        v12 += 3;
        if (v12 == a3)
        {
          goto LABEL_16;
        }
      }

      v17 = __p;
      if (!__p)
      {
        goto LABEL_10;
      }

LABEL_9:
      v29 = v17;
      operator delete(v17);
      goto LABEL_10;
    }

LABEL_16:
    if (v24 >= 25)
    {
      v21 = 0xAAAAAAAAAAAAAAABLL * (v24 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range,std::vector<CFRange> *>(a1, v6, a4, v21);
        v6 -= 24;
      }

      while (v21-- > 2);
    }

    return v12;
  }

  return a3;
}

void sub_22CD5ADAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v49 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v6 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v7 = (a1 + 24 * v6);
      v8 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v8 < a3)
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v71, v7->n128_u64[0], v7->n128_i64[1], (v7->n128_u64[1] - v7->n128_u64[0]) >> 4);
        v9 = v7[1].n128_i64[1];
        v10 = v7[2].n128_i64[0];
        v68 = 0;
        v69 = 0;
        v70 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v68, v9, v10, (v10 - v9) >> 4);
        v12 = v71;
        v11 = v72;
        v13 = v68;
        v14 = v69;
        if (v68)
        {
          v69 = v68;
          operator delete(v68);
        }

        if (v71)
        {
          v72 = v71;
          operator delete(v71);
        }

        if (v11 - v12 > (v14 - v13))
        {
          v7 = (v7 + 24);
          v6 = v8;
        }
      }

      v65 = 0;
      v66 = 0;
      v67 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v65, v7->n128_u64[0], v7->n128_i64[1], (v7->n128_u64[1] - v7->n128_u64[0]) >> 4);
      v62 = 0;
      v63 = 0;
      v64 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v62, *v5, v5[1], (v5[1] - *v5) >> 4);
      v17 = v65;
      v16 = v66;
      v18 = v62;
      v19 = v63;
      if (v62)
      {
        v63 = v62;
        operator delete(v62);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      v20 = v16 - v17 > (v19 - v18);
      v22 = a1;
      v21 = a3;
      if (!v20)
      {
        v23 = *v5;
        v24 = *(v5 + 1);
        v5[1] = 0;
        v5[2] = 0;
        *v5 = 0;
        v44 = v24;
        v25 = v24;
        v48 = v23;
        v47 = (v24 - v23) >> 4;
        while (1)
        {
          v26 = v7;
          std::vector<CFRange>::__move_assign(v5, v7);
          if (v49 < v6)
          {
LABEL_32:
            v43 = v26->n128_u64[0];
            if (v26->n128_u64[0])
            {
              v26->n128_u64[1] = v43;
              operator delete(v43);
              v26->n128_u64[0] = 0;
              v26->n128_u64[1] = 0;
              v26[1].n128_u64[0] = 0;
            }

            v26->n128_u64[0] = v48;
            result = v44;
            *(v26 + 8) = v44;
            return result;
          }

          v27 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (v22 + 24 * v6);
          v28 = v27 + 2;
          if (v27 + 2 < v21)
          {
            v59 = 0;
            v60 = 0;
            v61 = 0;
            std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v59, v7->n128_u64[0], v7->n128_i64[1], (v7->n128_u64[1] - v7->n128_u64[0]) >> 4);
            v29 = v7[1].n128_i64[1];
            v30 = v7[2].n128_i64[0];
            v56 = 0;
            v57 = 0;
            v58 = 0;
            std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v56, v29, v30, (v30 - v29) >> 4);
            v32 = v59;
            v31 = v60;
            v34 = v56;
            v33 = v57;
            if (v56)
            {
              v57 = v56;
              operator delete(v56);
            }

            v35 = v31 - v32;
            v36 = v33 - v34;
            if (v59)
            {
              v60 = v59;
              operator delete(v59);
            }

            v20 = v35 > v36;
            v22 = a1;
            v21 = a3;
            if (v20)
            {
              v7 = (v7 + 24);
              v6 = v28;
            }
          }

          __p = 0;
          v54 = 0;
          v55 = 0;
          std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, v7->n128_u64[0], v7->n128_i64[1], (v7->n128_u64[1] - v7->n128_u64[0]) >> 4);
          v50 = 0;
          v51 = 0;
          v52 = 0;
          std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v50, v48, v25, v47);
          v38 = __p;
          v37 = v54;
          v40 = v50;
          v39 = v51;
          if (!v50)
          {
            break;
          }

          v51 = v50;
          operator delete(v50);
          v41 = __p;
          if (__p)
          {
            goto LABEL_27;
          }

LABEL_28:
          v42 = v39 - v40;
          v5 = v26;
          if (v37 - v38 > v42)
          {
            goto LABEL_32;
          }
        }

        v41 = __p;
        if (!__p)
        {
          goto LABEL_28;
        }

LABEL_27:
        v54 = v41;
        operator delete(v41);
        goto LABEL_28;
      }
    }
  }

  return result;
}

void sub_22CD5B108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  __pa = *(v27 - 112);
  if (__pa)
  {
    *v26 = __pa;
    operator delete(__pa);
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range,std::vector<CFRange> *>(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = a1->n128_u64[0];
    v8 = a1->n128_u64[1];
    v9 = a1[1].n128_u64[0];
    a1->n128_u64[1] = 0;
    a1[1].n128_u64[0] = 0;
    a1->n128_u64[0] = 0;
    v10 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *>(a1, a3, a4);
    v11 = v10;
    v12 = (a2 - 24);
    if (v10 == (a2 - 24))
    {
      v15 = v10->n128_u64[0];
      if (v11->n128_u64[0])
      {
        v11->n128_u64[1] = v15;
        operator delete(v15);
        v11->n128_u64[0] = 0;
        v11->n128_u64[1] = 0;
        v11[1].n128_u64[0] = 0;
      }

      v11->n128_u64[0] = v7;
      v11->n128_u64[1] = v8;
      v11[1].n128_u64[0] = v9;
    }

    else
    {
      std::vector<CFRange>::__move_assign(v10, (a2 - 24));
      v13 = &v11[1].n128_i64[1];
      v14 = *v12;
      if (*v12)
      {
        *(a2 - 16) = v14;
        operator delete(v14);
        *v12 = 0;
        *(a2 - 16) = 0;
        *(a2 - 8) = 0;
      }

      *(a2 - 24) = v7;
      *(a2 - 16) = v8;
      *(a2 - 8) = v9;

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *>(a1, v13, a3, 0xAAAAAAAAAAAAAAABLL * ((v13 - a1) >> 3));
    }
  }
}

void sub_22CD5B284(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *>(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1;
    v8 = a1 + 3 * v5;
    a1 = (v8 + 3);
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < v3)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v26, v8[3], v8[4], (v8[4] - v8[3]) >> 4);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v11 = v8[6];
      v12 = v8[7];
      v13 = (v8 + 6);
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v23, v11, v12, (v12 - v11) >> 4);
      v14 = v26;
      v15 = v27;
      v16 = v23;
      v17 = v24;
      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      v18 = v15 - v14;
      v19 = v17 - v16;
      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      v20 = v18 > v19;
      v3 = a3;
      if (v20)
      {
        a1 = v13;
        v5 = v10;
      }
    }

    std::vector<CFRange>::__move_assign(v7, a1);
  }

  while (v5 <= v6);
  return a1;
}

void sub_22CD5B3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,ranges_greater_than_range &,std::vector<CFRange> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 24 * (v4 >> 1));
    v42 = 0;
    v43 = 0;
    v44 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v42, v8->n128_u64[0], v8->n128_i64[1], (v8->n128_u64[1] - v8->n128_u64[0]) >> 4);
    v9 = *(a2 - 24);
    v10 = *(a2 - 16);
    v11 = (a2 - 24);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v39, v9, v10, (v10 - v9) >> 4);
    v14 = v42;
    v13 = v43;
    v15 = v39;
    v16 = v40;
    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    v17 = v13 - v14;
    v18 = v16 - v15;
    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    if (v17 > v18)
    {
      v19 = *(a2 - 24);
      v20 = *(a2 - 16);
      v11->n128_u64[0] = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v31 = v20;
      v21 = v20;
      v32 = v19;
      v22 = (v20 - v19) >> 4;
      while (1)
      {
        v23 = v8;
        std::vector<CFRange>::__move_assign(v11, v8);
        if (!v7)
        {
LABEL_16:
          v30 = v23->n128_u64[0];
          if (v23->n128_u64[0])
          {
            v23->n128_u64[1] = v30;
            operator delete(v30);
            v23->n128_u64[0] = 0;
            v23->n128_u64[1] = 0;
            v23[1].n128_u64[0] = 0;
          }

          v23->n128_u64[0] = v32;
          result = v31;
          *(v23 + 8) = v31;
          return result;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 24 * v7);
        __p = 0;
        v37 = 0;
        v38 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, v8->n128_u64[0], v8->n128_i64[1], (v8->n128_u64[1] - v8->n128_u64[0]) >> 4);
        v33 = 0;
        v34 = 0;
        v35 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v33, v32, v21, v22);
        v24 = __p;
        v25 = v37;
        v27 = v33;
        v26 = v34;
        if (!v33)
        {
          break;
        }

        v34 = v33;
        operator delete(v33);
        v28 = __p;
        if (__p)
        {
          goto LABEL_11;
        }

LABEL_12:
        v29 = v26 - v27;
        v11 = v23;
        if (v25 - v24 <= v29)
        {
          goto LABEL_16;
        }
      }

      v28 = __p;
      if (!__p)
      {
        goto LABEL_12;
      }

LABEL_11:
      v37 = v28;
      operator delete(v28);
      goto LABEL_12;
    }
  }

  return result;
}

void sub_22CD5B5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void NLTextSlotParserDateTimeExtractor::~NLTextSlotParserDateTimeExtractor(NLTextSlotParserDateTimeExtractor *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }
}

void NLTextSlotParserDateTimeExtractor::getEventFixedDateTimeAndRange(NLTextSlotParserDateTimeExtractor *this@<X0>, const __CFTimeZone *a2@<X2>, uint64_t a3@<X8>)
{
  Current = CFAbsoluteTimeGetCurrent();
  v8 = CFDateCreate(*MEMORY[0x277CBECE8], Current);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  if (v8)
  {
    v9 = v8;
    if (a2)
    {
      v12 = this;
      v10 = *this;
      v11 = *(v12 + 1);
      if (DDScannerScanString() && (v13 = DDScannerCopyResultsWithOptions()) != 0)
      {
        v14 = v13;
        if (CFArrayGetCount(v13) < 1)
        {
          Range = 0;
          v18 = 0;
        }

        else
        {
          v15 = 0;
          do
          {
            CFArrayGetValueAtIndex(v14, v15);
            Range = DDResultGetRange();
            v18 = v17;
            DDResultCopyExtractedDateFromReferenceDateWithLocale();
            ++v15;
          }

          while (v15 < CFArrayGetCount(v14));
        }

        CFRelease(v14);
      }

      else
      {
        Range = 0;
        v18 = 0;
      }

      *a3 = 0;
      *(a3 + 8) = Range;
      *(a3 + 16) = v18;
      *(a3 + 24) = 0;
    }

    CFRelease(v9);
  }
}

void *_CFInit_MessageConversationWrapper(void *result)
{
  result[3] = 0;
  result[4] = 0;
  result[2] = &unk_28400E8F8;
  return result;
}

uint64_t createMessageConversationWrapper(uint64_t *a1)
{
  CFAllocatorGetDefault();
  if (!g_CFTypeID_MessageConversationWrapper)
  {
    qword_280C274D0 = 0;
    unk_280C274E0 = 0u;
    unk_280C274F0 = 0u;
    g_CFTypeID_MessageConversationWrapper = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  v5 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(Instance + 32);
  *(v3 + 24) = v5;
  *(v3 + 32) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void *_CFInit_MessageIntentCandidateWrapper(void *result)
{
  result[3] = 0;
  result[4] = 0;
  result[2] = &unk_28400E528;
  return result;
}

uint64_t createMessageIntentCandidateWrapper(uint64_t *a1)
{
  CFAllocatorGetDefault();
  if (!g_CFTypeID_MessageIntentCandidateWrapper)
  {
    qword_280C27230 = 0;
    unk_280C27240 = 0u;
    unk_280C27250 = 0u;
    g_CFTypeID_MessageIntentCandidateWrapper = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  v5 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(Instance + 32);
  *(v3 + 24) = v5;
  *(v3 + 32) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void *_CFInit_MessageConversationTurnWrapper(void *result)
{
  result[3] = 0;
  result[4] = 0;
  result[2] = &unk_28400E3B8;
  return result;
}

uint64_t createMessageConversationTurnWrapper(uint64_t *a1)
{
  CFAllocatorGetDefault();
  if (!g_CFTypeID_MessageConversationTurnWrapper)
  {
    qword_280C27470 = 0;
    unk_280C27480 = 0u;
    unk_280C27490 = 0u;
    g_CFTypeID_MessageConversationTurnWrapper = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  v5 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(Instance + 32);
  *(v3 + 24) = v5;
  *(v3 + 32) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void *_CFInit_MessageIntentRecognizerWrapper(void *result)
{
  result[3] = 0;
  result[4] = 0;
  result[2] = &unk_28400E370;
  return result;
}

uint64_t createMessageIntentRecognizerWrapper(uint64_t *a1)
{
  CFAllocatorGetDefault();
  if (!g_CFTypeID_MessageIntentRecognizerWrapper)
  {
    qword_280C27530 = 0;
    unk_280C27540 = 0u;
    unk_280C27550 = 0u;
    g_CFTypeID_MessageIntentRecognizerWrapper = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  v5 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(Instance + 32);
  *(v3 + 24) = v5;
  *(v3 + 32) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void convertToMessageConversationTurnVector(const __CFArray *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        v7 = ValueAtIndex[4];
        *&v8 = ValueAtIndex[3];
        *(&v8 + 1) = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        std::vector<std::shared_ptr<NL::ParseAttribute>>::push_back[abi:ne200100](a2, &v8);
        if (*(&v8 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
        }
      }
    }
  }
}

void convertToUnorderedMap(const __CFDictionary *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  if (a1)
  {
    Count = CFDictionaryGetCount(a1);
    v5 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(a1, v5, 0);
    if (Count < 1)
    {
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v6 = v5;
      do
      {
        v7 = *v6;
        Value = CFDictionaryGetValue(a1, *v6);
        getUTF8StringFromCFString(v7, v11);
        getUTF8StringFromCFString(Value, v9);
        *v13 = *v11;
        v14 = v12;
        v11[1] = 0;
        v12 = 0;
        __p = *v9;
        v16 = v10;
        v9[0] = 0;
        v9[1] = 0;
        v10 = 0;
        v11[0] = 0;
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::string>>(a2, v13);
        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v14) < 0)
        {
          operator delete(v13[0]);
        }

        if (SHIBYTE(v10) < 0)
        {
          operator delete(v9[0]);
        }

        if (SHIBYTE(v12) < 0)
        {
          operator delete(v11[0]);
        }

        ++v6;
        --Count;
      }

      while (Count);
    }

    free(v5);
  }
}

void NLMessageConversationCreate(const __CFArray *a1, const __CFDictionary *a2)
{
  convertToMessageConversationTurnVector(a1, v4);
  convertToUnorderedMap(a2, v3);
  std::allocate_shared[abi:ne200100]<NLMessageConversation,std::allocator<NLMessageConversation>,std::vector<std::shared_ptr<NLMessageConversationTurn>> &,std::unordered_map<std::string,std::string> &,0>();
}

void sub_22CD5BE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void **a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a14);
  a14 = (v15 - 48);
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

__CFArray *NLMessageConversationCopyConversationTurns(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NLMessageConversation::getConversationTurns(v2, &v13);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v5 = v13;
  for (i = v14; v5 != i; v5 += 2)
  {
    v7 = *v5;
    v8 = v5[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = v7;
      v12 = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v11 = *v5;
      v12 = 0;
    }

    v9 = createMessageConversationTurnWrapper(&v11);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    CFArrayAppendValue(Mutable, v9);
    CFRelease(v9);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v15 = &v13;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&v15);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return Mutable;
}

void sub_22CD5BFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&a14);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(a1);
}

void NLMessageConversationAddConversationTurn(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v8 = 0;
  }

  v7 = v5;
  NLMessageConversation::addConversationTurn(v3, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_22CD5C094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    if (!v11)
    {
LABEL_3:
      if (!v10)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (!v10)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  goto LABEL_5;
}

__CFDictionary *NLMessageConversationCopyMetadata(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  TransliteratedWord = NLTransliterationCandidate::getTransliteratedWord(v2);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  for (i = *(TransliteratedWord + 16); i; i = *i)
  {
    CFStringFromString = createCFStringFromString((i + 2));
    v8 = createCFStringFromString((i + 5));
    CFDictionaryAddValue(Mutable, CFStringFromString, v8);
    if (CFStringFromString)
    {
      CFRelease(CFStringFromString);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return Mutable;
}

void sub_22CD5C1A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void NLMessageConversationUpdateMetadata(uint64_t a1, __CFDictionary *a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  convertToUnorderedMap(a2, v5);
  std::unordered_map<std::string,std::string>::unordered_map(v4, v5);
  NLMessageConversation::updateMetadata(v3, v4);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v4);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_22CD5C244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a9);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a14);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(a1);
}

void NLMessageConversationTurnCreate(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  getUTF8StringFromCFString(a1, &v7);
  getUTF8StringFromCFString(a2, &__p);
  v5 = MEMORY[0x2318BF720](a3);
  std::allocate_shared[abi:ne200100]<NLMessageConversationTurn,std::allocator<NLMessageConversationTurn>,std::string &,std::string &,long &,0>();
}

void sub_22CD5C344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 25) < 0)
  {
    operator delete(*(v20 - 48));
  }

  _Unwind_Resume(exception_object);
}

CFStringRef NLMessageConversationTurnCopyContent(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NLResult::getLemmaID(v2, &__p);
  CFStringFromString = createCFStringFromString(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return CFStringFromString;
}

void sub_22CD5C410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef NLMessageConversationTurnCopySenderID(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NLResult::getVocStr(v2, &__p);
  CFStringFromString = createCFStringFromString(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return CFStringFromString;
}

void sub_22CD5C4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

CFDateRef NLMessageConversationTurnCopyTimestamp(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Timestamp = NLMessageConversationTurn::getTimestamp(v2);
  v5 = CFDateCreate(*MEMORY[0x277CBECE8], Timestamp);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v5;
}

void sub_22CD5C54C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void NLMessageIntentCandidateCreate(int a1, CFDictionaryRef theDict, double a3)
{
  v18 = a1;
  v17 = a3;
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  Count = CFDictionaryGetCount(theDict);
  std::vector<__CFString const*>::vector[abi:ne200100](&keys, Count);
  CFDictionaryGetKeysAndValues(theDict, keys, 0);
  v5 = keys;
  v6 = v14;
  if (keys != v14)
  {
    do
    {
      v7 = *v5;
      Value = CFDictionaryGetValue(theDict, *v5);
      getUTF8StringFromCFString(v7, &__p);
      getUTF8StringFromCFString(Value, &__str);
      p_p = &__p;
      v9 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v15, &__p);
      std::string::operator=((v9 + 5), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v12 < 0)
      {
        operator delete(__p);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  std::allocate_shared[abi:ne200100]<NLMessageIntentCandidate,std::allocator<NLMessageIntentCandidate>,NLMessageIntentType &,std::unordered_map<std::string,std::string> &,double &,0>();
}

void sub_22CD5C6DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, uint64_t a26, char a27)
{
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a27);
  _Unwind_Resume(a1);
}

uint64_t NLMessageIntentCandidateGetIntentType(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MessageIntentType = NLMessageIntentCandidate::getMessageIntentType(v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return MessageIntentType;
}

void sub_22CD5C7B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__CFDictionary *NLMessageIntentCandidateCopyAttributes(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NLMessageIntentCandidate::getAttributes(v2, v9);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  for (i = v10; i; i = *i)
  {
    CFStringFromString = createCFStringFromString((i + 2));
    v7 = createCFStringFromString((i + 5));
    CFDictionaryAddValue(Mutable, CFStringFromString, v7);
    CFRelease(CFStringFromString);
    CFRelease(v7);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v9);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return Mutable;
}

void sub_22CD5C8AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

double NLMessageIntentCandidateGetScore(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Score = NLMessageIntentCandidate::getScore(v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return Score;
}

void sub_22CD5C934(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NLMessageIntentRecognizerCreate(CFDictionaryRef theDict)
{
  if (!theDict)
  {
    v6 = 0;
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(theDict, kNLMessageIntentRecognizerLocaleKey);
  if (Value)
  {
    v3 = Value;
    v4 = CFGetTypeID(Value);
    if (v4 == CFStringGetTypeID())
    {
      v5 = CFLocaleCreate(0, v3);
LABEL_9:
      v6 = v5;
LABEL_10:
      v10 = CFLocaleGetValue(v6, *MEMORY[0x277CBEED0]);
      cf = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theDict);
      CFDictionaryAddValue(cf, kNLMessageIntentRecognizerLocaleKey, v10);
      std::allocate_shared[abi:ne200100]<NLMessageIntentRecognizer,std::allocator<NLMessageIntentRecognizer>,__CFDictionary *&,0>();
    }

    v8 = CFGetTypeID(v3);
    TypeID = CFLocaleGetTypeID();
    if (v8 == TypeID)
    {
      v5 = CFRetain(v3);
      goto LABEL_9;
    }

    v7 = *(*NL::CFLogger::sharedInstance(TypeID) + 16);
  }

  else
  {
    v7 = *(*NL::CFLogger::sharedInstance(0) + 16);
  }

  v7();
  return 0;
}

__CFArray *NLMessageIntentRecognizerCopyTopIntentCandidate(uint64_t a1, uint64_t a2)
{
  result = NLMessageIntentRecognizerCopyTopNIntentCandidates(a1, a2, 1);
  if (result)
  {
    v3 = result;
    ValueAtIndex = CFArrayGetValueAtIndex(result, 0);
    CFRelease(v3);
    return ValueAtIndex;
  }

  return result;
}

__CFArray *NLMessageIntentRecognizerCopyTopNIntentCandidates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 32);
  v18 = *(a2 + 24);
  v19 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NLMessageIntentRecognizer::getCandidates(v5, &v18, &v16);
  v8 = v17 - v16;
  if (v17 == v16)
  {
    Mutable = 0;
  }

  else
  {
    if (a3 - 1 >= (v8 >> 3))
    {
      v9 = v8 >> 3;
    }

    else
    {
      v9 = a3;
    }

    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (v9 >= 1)
    {
      v11 = 0;
      do
      {
        std::shared_ptr<NLMessageIntentCandidate>::shared_ptr[abi:ne200100]<NLMessageIntentCandidate,std::default_delete<NLMessageIntentCandidate>,0>(&v14, &v16[v11]);
        v12 = createMessageIntentCandidateWrapper(&v14);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        CFArrayAppendValue(Mutable, v12);
        ++v11;
        --v9;
      }

      while (v9);
    }
  }

  v20 = &v16;
  std::vector<std::unique_ptr<NLMessageIntentCandidate>>::__destroy_vector::operator()[abi:ne200100](&v20);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return Mutable;
}

void sub_22CD5CD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void **a16)
{
  a16 = &a11;
  std::vector<std::unique_ptr<NLMessageIntentCandidate>>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(a1);
}

__CFArray *NLMessageIntentRecognizerCopyTopNCandidatesForIntentType(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 32);
  v19 = *(a2 + 24);
  v20 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NLMessageIntentRecognizer::getCandidateForIntentType(v6, &v19, a3, &v17);
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = (v18 - v17) >> 3;
  }

  if ((v18 - v17) >> 3 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = (v18 - v17) >> 3;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (v10 >= 1)
  {
    v12 = 0;
    do
    {
      std::shared_ptr<NLMessageIntentCandidate>::shared_ptr[abi:ne200100]<NLMessageIntentCandidate,std::default_delete<NLMessageIntentCandidate>,0>(&v15, (v17 + v12));
      v13 = createMessageIntentCandidateWrapper(&v15);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      CFArrayAppendValue(Mutable, v13);
      v12 += 8;
      --v10;
    }

    while (v10);
  }

  v21 = &v17;
  std::vector<std::unique_ptr<NLMessageIntentCandidate>>::__destroy_vector::operator()[abi:ne200100](&v21);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return Mutable;
}

void sub_22CD5CEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void **a16)
{
  a16 = &a11;
  std::vector<std::unique_ptr<NLMessageIntentCandidate>>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(a1);
}

uint64_t NLMessageIntentRecognizerCopyIntentCandidatesForIntentType(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 32);
  v12 = *(a2 + 24);
  v13 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NLMessageIntentRecognizer::getCandidateForIntentType(v4, &v12, a3, v11);
  if (v11[1] == v11[0])
  {
    v7 = 0;
  }

  else
  {
    std::shared_ptr<NLMessageIntentCandidate>::shared_ptr[abi:ne200100]<NLMessageIntentCandidate,std::default_delete<NLMessageIntentCandidate>,0>(&v9, v11[0]);
    v7 = createMessageIntentCandidateWrapper(&v9);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  v14 = v11;
  std::vector<std::unique_ptr<NLMessageIntentCandidate>>::__destroy_vector::operator()[abi:ne200100](&v14);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v7;
}

void sub_22CD5CFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  *(v16 - 24) = &a11;
  std::vector<std::unique_ptr<NLMessageIntentCandidate>>::__destroy_vector::operator()[abi:ne200100]((v16 - 24));
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

__CFArray *NLMessageIntentRecognizerCopyTopNIntentTypes(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 32);
  v15 = *(a2 + 24);
  v16 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NLMessageIntentRecognizer::getCandidateIntentTypes(v3, &v15, &v13);
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v8 = v13;
  if (v14 != v13)
  {
    v9 = 0;
    do
    {
      valuePtr = v8[v9];
      v10 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
      CFArrayAppendValue(Mutable, v10);
      CFRelease(v10);
      ++v9;
      v8 = v13;
    }

    while (v9 < (v14 - v13) >> 2);
  }

  if (v8)
  {
    v14 = v8;
    operator delete(v8);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return Mutable;
}

void sub_22CD5D128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void MessageConversationWrapper::~MessageConversationWrapper(MessageConversationWrapper *this)
{
  *this = &unk_28400E8F8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
}

{
  *this = &unk_28400E8F8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);

  JUMPOUT(0x2318C0600);
}

void MessageIntentCandidateWrapper::~MessageIntentCandidateWrapper(MessageIntentCandidateWrapper *this)
{
  *this = &unk_28400E528;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
}

{
  *this = &unk_28400E528;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);

  JUMPOUT(0x2318C0600);
}

void MessageConversationTurnWrapper::~MessageConversationTurnWrapper(MessageConversationTurnWrapper *this)
{
  *this = &unk_28400E3B8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
}

{
  *this = &unk_28400E3B8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);

  JUMPOUT(0x2318C0600);
}

void MessageIntentRecognizerWrapper::~MessageIntentRecognizerWrapper(MessageIntentRecognizerWrapper *this)
{
  *this = &unk_28400E370;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
}

{
  *this = &unk_28400E370;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);

  JUMPOUT(0x2318C0600);
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::string>>(void *a1, const void **a2)
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
    operator new();
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

void sub_22CD5D764(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<NLMessageConversation>::__shared_ptr_emplace[abi:ne200100]<std::vector<std::shared_ptr<NLMessageConversationTurn>> &,std::unordered_map<std::string,std::string> &,std::allocator<NLMessageConversation>,0>(void *a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28400D9F8;
  std::allocator<NLMessageConversation>::construct[abi:ne200100]<NLMessageConversation,std::vector<std::shared_ptr<NLMessageConversationTurn>> &,std::unordered_map<std::string,std::string> &>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<NLMessageConversation>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28400D9F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

void std::__shared_ptr_emplace<NLMessageConversation>::__on_zero_shared(uint64_t a1)
{
  v1 = (a1 + 24);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(a1 + 48);
  v2 = v1;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::allocator<NLMessageConversation>::construct[abi:ne200100]<NLMessageConversation,std::vector<std::shared_ptr<NLMessageConversationTurn>> &,std::unordered_map<std::string,std::string> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  memset(v7, 0, sizeof(v7));
  std::vector<std::shared_ptr<NLMessageConversationTurn>>::__init_with_size[abi:ne200100]<std::shared_ptr<NLMessageConversationTurn>*,std::shared_ptr<NLMessageConversationTurn>*>(v7, *a3, a3[1], (a3[1] - *a3) >> 4);
  std::unordered_map<std::string,std::string>::unordered_map(v6, a4);
  NLMessageConversation::NLMessageConversation(a2, v7, v6);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v6);
  v8 = v7;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&v8);
}

void sub_22CD5D990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a10);
  *(v15 - 24) = &a15;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100]((v15 - 24));
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::shared_ptr<NLMessageConversationTurn>>::__init_with_size[abi:ne200100]<std::shared_ptr<NLMessageConversationTurn>*,std::shared_ptr<NLMessageConversationTurn>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<NL::Entity>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22CD5DA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<NLMessageConversationTurn>>,std::shared_ptr<NLMessageConversationTurn>*,std::shared_ptr<NLMessageConversationTurn>*,std::shared_ptr<NLMessageConversationTurn>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<NLMessageConversationTurn>>,std::shared_ptr<NLMessageConversationTurn>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<NLMessageConversationTurn>>,std::shared_ptr<NLMessageConversationTurn>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<NL::Entity>>,std::shared_ptr<NL::Entity>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::__shared_ptr_emplace<NLMessageConversationTurn>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::string &,long &,std::allocator<NLMessageConversationTurn>,0>(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28400D988;
  std::allocator<NLMessageConversationTurn>::construct[abi:ne200100]<NLMessageConversationTurn,std::string &,std::string &,long &>(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<NLMessageConversationTurn>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28400D988;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

void std::allocator<NLMessageConversationTurn>::construct[abi:ne200100]<NLMessageConversationTurn,std::string &,std::string &,long &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  NLMessageConversationTurn::NLMessageConversationTurn(a2, &v9, &__p, *a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_22CD5DD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<__CFString const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_22CD5DDF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<__CFString const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(a1, a2);
  }

  std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__shared_ptr_emplace<NLMessageIntentCandidate>::__shared_ptr_emplace[abi:ne200100]<NLMessageIntentType &,std::unordered_map<std::string,std::string> &,double &,std::allocator<NLMessageIntentCandidate>,0>(void *a1, int *a2, uint64_t a3, double *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28400D9C0;
  std::allocator<NLMessageIntentCandidate>::construct[abi:ne200100]<NLMessageIntentCandidate,NLMessageIntentType &,std::unordered_map<std::string,std::string> &,double &>(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<NLMessageIntentCandidate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28400D9C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

uint64_t std::allocator<NLMessageIntentCandidate>::construct[abi:ne200100]<NLMessageIntentCandidate,NLMessageIntentType &,std::unordered_map<std::string,std::string> &,double &>(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, double *a5)
{
  v7 = *a3;
  std::unordered_map<std::string,std::string>::unordered_map(v9, a4);
  NLMessageIntentCandidate::NLMessageIntentCandidate(a2, v7, v9, *a5);
  return std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v9);
}

void sub_22CD5E06C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<NLMessageIntentRecognizer>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary *&,std::allocator<NLMessageIntentRecognizer>,0>(void *a1, const __CFDictionary **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28400D950;
  NLMessageIntentRecognizer::NLMessageIntentRecognizer((a1 + 3), *a2);
  return a1;
}

void std::__shared_ptr_emplace<NLMessageIntentRecognizer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28400D950;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

void std::__shared_ptr_emplace<NLMessageIntentRecognizer>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>>::~__hash_table(a1 + 168);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>>>::~__hash_table(a1 + 128);
  std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::~__hash_table(a1 + 88);
  std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::~__hash_table(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<NLAbstractIntentRecognizer>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<NLAbstractIntentRecognizer>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::vector<std::string>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::vector<std::string>>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::string const,std::basic_regex<char,std::regex_traits<char>>>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::pair<std::string const,std::basic_regex<char,std::regex_traits<char>>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::locale::~locale((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::unique_ptr<NLMessageIntentCandidate>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<NLMessageIntentCandidate>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<NLMessageIntentCandidate>>::__base_destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v6 = *--v4;
    v5 = v6;
    *v4 = 0;
    if (v6)
    {
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v5 + 8);
      result = MEMORY[0x2318C0600](v5, 0x10A0C4042D94C91);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t *std::shared_ptr<NLMessageIntentCandidate>::shared_ptr[abi:ne200100]<NLMessageIntentCandidate,std::default_delete<NLMessageIntentCandidate>,0>(uint64_t *result, uint64_t *a2)
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

void std::__shared_ptr_pointer<NLMessageIntentCandidate  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

uint64_t std::__shared_ptr_pointer<NLMessageIntentCandidate  *>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v1 + 8);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<NLMessageIntentCandidate  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void NLTextSlotParserRecurrenceEventExtractor::NLTextSlotParserRecurrenceEventExtractor(NLTextSlotParserRecurrenceEventExtractor *this, CFTypeRef cf)
{
  *this = 0u;
  *(this + 1) = 0u;
  if (cf)
  {
    v3 = CFRetain(cf);
    *this = v3;
  }

  else
  {
    v3 = 0;
  }

  if (CFDictionaryContainsKey(v3, kNLTextSlotParserLocaleKey[0]))
  {
    Value = CFDictionaryGetValue(*this, kNLTextSlotParserLocaleKey[0]);
    *(this + 1) = MEMORY[0x2318BF880](*MEMORY[0x277CBECE8], Value);
  }

  if (CFDictionaryContainsKey(*this, kNLTextSlotParserReferenceDateKey[0]))
  {
    v5 = CFDictionaryGetValue(*this, kNLTextSlotParserReferenceDateKey[0]);
    *(this + 2) = CFRetain(v5);
  }

  if (!*(this + 3))
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    [v6 setObject:MEMORY[0x277CBEC38] forKey:@"includeFutureDates"];
    v7 = *(this + 2);
    if (v7)
    {
      [v6 setObject:v7 forKey:@"date"];
    }

    v8 = *(this + 1);
    if (!v8)
    {
      v8 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
    }

    [[NLSearchParserManager alloc] initWithLocale:v8 context:@"com.apple.NLP" options:v6];
    operator new();
  }
}

id *std::unique_ptr<NLSearchParserManagerWrapper>::reset[abi:ne200100](id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    NLSearchParserManagerWrapper::~NLSearchParserManagerWrapper(result);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

void NLTextSlotParserRecurrenceEventExtractor::~NLTextSlotParserRecurrenceEventExtractor(NLTextSlotParserRecurrenceEventExtractor *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    CFRelease(v4);
  }

  std::unique_ptr<NLSearchParserManagerWrapper>::reset[abi:ne200100](this + 3, 0);
}

BOOL NLTextSlotParserRecurrenceEventExtractor::checkFutureTime(NLTextSlotParserRecurrenceEventExtractor *this, const __CFDate *a2)
{
  if (!a2)
  {
    return 1;
  }

  v3 = MEMORY[0x2318BF720](a2);
  CurrentTime = getCurrentTime(*(this + 2));
  v12 = -1;
  v13 = -1;
  v11 = -1;
  v9 = -1;
  v10 = -1;
  v8 = -1;
  v5 = copyCurrentCalendar(*(this + 1));
  CFCalendarDecomposeAbsoluteTime(v5, CurrentTime, "yMd", &v13, &v12, &v11);
  CFCalendarDecomposeAbsoluteTime(v5, v3, "yMd", &v10, &v9, &v8);
  if (v10 >= v13 && (v10 != v13 || v9 >= v12 && (v9 != v12 || v8 >= v11)))
  {
    v6 = 1;
    if (!v5)
    {
      return v6 != 0;
    }

    goto LABEL_10;
  }

  v6 = 0;
  if (v5)
  {
LABEL_10:
    CFRelease(v5);
  }

  return v6 != 0;
}

void sub_22CD5EBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlp::CFScopedPtr<__CFCalendar *>::reset(va, 0);
  _Unwind_Resume(a1);
}

void NLTextSlotParserRecurrenceEventExtractor::getRecurrentEventDatesAndFrequency(NLTextSlotParserRecurrenceEventExtractor *this@<X0>, CFStringRef theString@<X1>, const __CFTimeZone *a3@<X2>, void *a4@<X8>)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x4012000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = &unk_22CDFE4D1;
  v25 = 0;
  v26 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x4012000000;
  v16[3] = __Block_byref_object_copy__10;
  v16[4] = __Block_byref_object_dispose__11;
  v16[5] = &unk_22CDFE4D1;
  v17 = 0;
  v18 = 0;
  Length = CFStringGetLength(theString);
  v17 = 0;
  v18 = Length;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x4012000000;
  v15[3] = __Block_byref_object_copy__10;
  v15[4] = __Block_byref_object_dispose__11;
  v15[5] = &unk_22CDFE4D1;
  v15[6] = 0;
  v15[7] = 0;
  v9 = *(this + 3);
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = *v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = ___ZNK40NLTextSlotParserRecurrenceEventExtractor34getRecurrentEventDatesAndFrequencyEPK10__CFStringPK12__CFTimeZone_block_invoke;
  v14[3] = &unk_27873FFB8;
  v14[4] = v16;
  v14[5] = v15;
  v14[6] = &v19;
  v14[7] = this;
  v14[8] = a3;
  [v10 tokenizeAndEnumerateAttributedParsesForQuery:theString options:0 withBlock:v14];
  v11 = v20[6];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = NL::AssetResource::URL(v11);
  if (NLTextSlotParserRecurrenceEventExtractor::checkFutureTime(this, v12))
  {
    v13 = v20[7];
    *a4 = v20[6];
    a4[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_6:
    *a4 = 0;
    a4[1] = 0;
  }

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v19, 8);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }
}

void sub_22CD5EE18(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  v3 = *(v1 - 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__3(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__3(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 __Block_byref_object_copy__10(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t ___ZNK40NLTextSlotParserRecurrenceEventExtractor34getRecurrentEventDatesAndFrequencyEPK10__CFStringPK12__CFTimeZone_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___ZNK40NLTextSlotParserRecurrenceEventExtractor34getRecurrentEventDatesAndFrequencyEPK10__CFStringPK12__CFTimeZone_block_invoke_2;
  v7[3] = &unk_27873FF90;
  v5 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = v5;
  return [a2 enumerateAttributesInRange:v3 options:v4 usingBlock:{0, v7}];
}

uint64_t ___ZNK40NLTextSlotParserRecurrenceEventExtractor34getRecurrentEventDatesAndFrequencyEPK10__CFStringPK12__CFTimeZone_block_invoke_2(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return result;
  }

  v7 = result;
  v8 = *(result + 48);
  result = [a2 count];
  if (!result)
  {
    return result;
  }

  v9 = [a2 objectForKeyedSubscript:@"dateComponents"];
  v10 = [a2 objectForKeyedSubscript:@"startDateComponents"];
  v11 = [a2 objectForKeyedSubscript:@"endDateComponents"];
  v12 = [a2 objectForKeyedSubscript:@"frequencyDateComponents"];
  if ([a2 objectForKeyedSubscript:@"dateType"])
  {
    v13 = [objc_msgSend(a2 objectForKeyedSubscript:{@"dateType", "unsignedIntValue"}];
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v7[4] + 8);
  v15 = *(v14 + 56);
  if (v15)
  {
    v16 = *(v14 + 48);
    if (v16 + v15 <= a3)
    {
      *(v14 + 56) = a4 + a3 - v16;
    }
  }

  else
  {
    *(v14 + 48) = a3;
    *(*(v7[4] + 8) + 56) = a4;
  }

  if (v9)
  {
    v17 = v10 == 0;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    v9 = v10;
  }

  v18 = [MEMORY[0x277CBEB38] dictionary];
  v19 = copyCurrentCalendar(*(v8 + 8));
  CurrentTime = getCurrentTime(*(v8 + 16));
  at[0] = CurrentTime;
  v87 = -1;
  v85 = -1;
  v86 = -1;
  v83 = -1;
  v84 = -1;
  v81 = -1;
  v82 = -1;
  v79 = -1;
  v80 = -1;
  v78 = -1;
  CFCalendarDecomposeAbsoluteTime(v19, CurrentTime, "smHyMdEFwW", &v78, &v79, &v80, &v87, &v86, &v85, &v84, &v83, &v81, &v82);
  if (v9)
  {
    if ([v9 weekday] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v9 weekOfYear] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v9 day] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v9, "month") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v9, "year") == 0x7FFFFFFFFFFFFFFFLL)
        {
          CFCalendarAddComponents(v19, at, 0, "smH", -v78, -v79, -v80);
          if ([v9 hour] != 0x7FFFFFFFFFFFFFFFLL)
          {
            CFCalendarAddComponents(v19, at, 0, "H", [v9 hour]);
            if (!v12)
            {
              v21 = at[0];
              if (at[0] < CurrentTime)
              {
                CFCalendarAddComponents(v19, at, 0, "d", at[0], 1);
              }
            }
          }

          if ([v9 minute] != 0x7FFFFFFFFFFFFFFFLL)
          {
            CFCalendarAddComponents(v19, at, 0, "m", [v9 minute]);
            if (!v12)
            {
              v22 = at[0];
              if (at[0] < CurrentTime)
              {
                CFCalendarAddComponents(v19, at, 0, "h", at[0], 1);
              }
            }
          }

          if ([v9 second] != 0x7FFFFFFFFFFFFFFFLL)
          {
            CFCalendarAddComponents(v19, at, 0, "s", [v9 second]);
            if (!v12 && at[0] < CurrentTime)
            {
              CFCalendarAddComponents(v19, at, 0, "m", at[0], 1);
            }
          }

          goto LABEL_80;
        }

        CFCalendarAddComponents(v19, at, 0, "smHdM", -v78, -v79, -v80, (1 - v85), (1 - v86));
        if ([v9 year] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v33 = [v9 year];
          CFCalendarAddComponents(v19, at, 0, "y", v33 - v87);
        }

        if ([v9 month] != 0x7FFFFFFFFFFFFFFFLL)
        {
          CFCalendarAddComponents(v19, at, 0, "M", [v9 month] - 1);
        }

        if ([v9 day] != 0x7FFFFFFFFFFFFFFFLL)
        {
          CFCalendarAddComponents(v19, at, 0, "d", [v9 day] - 1);
        }

        if ([v9 hour] != 0x7FFFFFFFFFFFFFFFLL)
        {
          CFCalendarAddComponents(v19, at, 0, "H", [v9 hour]);
          if (!v12)
          {
            v35 = v11;
            v36 = v13;
            v37 = v18;
            v38 = v85;
            v17 = [v9 day] == v38;
            v18 = v37;
            v13 = v36;
            v11 = v35;
            if (v17)
            {
              v34 = at[0];
              if (at[0] < CurrentTime)
              {
                CFCalendarAddComponents(v19, at, 0, "h", at[0], 12);
              }
            }
          }
        }

        if ([v9 minute] != 0x7FFFFFFFFFFFFFFFLL)
        {
          CFCalendarAddComponents(v19, at, 0, "m", [v9 minute]);
          if (!v12)
          {
            v40 = v11;
            v41 = v13;
            v42 = v18;
            v43 = v85;
            v17 = [v9 day] == v43;
            v18 = v42;
            v13 = v41;
            v11 = v40;
            if (v17)
            {
              v39 = at[0];
              if (at[0] < CurrentTime)
              {
                CFCalendarAddComponents(v19, at, 0, "h", at[0], 12);
              }
            }
          }
        }

        if ([v9 second] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (!v12)
          {
LABEL_100:
            if ([v9 year] == 0x7FFFFFFFFFFFFFFFLL && at[0] < CurrentTime)
            {
              CFCalendarAddComponents(v19, at, 0, "y", at[0], 1);
            }
          }
        }

        else
        {
          CFCalendarAddComponents(v19, at, 0, "s", [v9 second]);
          if (!v12)
          {
            v54 = v11;
            v55 = v13;
            v56 = v18;
            v57 = v85;
            v17 = [v9 day] == v57;
            v18 = v56;
            v13 = v55;
            v11 = v54;
            if (v17)
            {
              v44 = at[0];
              if (at[0] < CurrentTime)
              {
                CFCalendarAddComponents(v19, at, 0, "h", at[0], 12);
              }
            }

            goto LABEL_100;
          }
        }

LABEL_80:
        CFCalendarDecomposeAbsoluteTime(v19, at[0], "smHyMdEFwW", &v78, &v79, &v80, &v87, &v86, &v85, &v84, &v83, &v81, &v82);
        goto LABEL_81;
      }

      v77 = v11;
      v24 = v13;
      v25 = v18;
      v26 = -v78;
      v27 = -v79;
      v28 = -v80;
      v29 = (1 - v84);
      v30 = [v9 weekOfYear];
      CFCalendarAddComponents(v19, at, 0, "smHEw", v26, v27, v28, v29, v30 - v81);
      if ([v9 hour] != 0x7FFFFFFFFFFFFFFFLL)
      {
        CFCalendarAddComponents(v19, at, 0, "H", [v9 hour]);
      }

      v18 = v25;
      if ([v9 minute] != 0x7FFFFFFFFFFFFFFFLL)
      {
        CFCalendarAddComponents(v19, at, 0, "m", [v9 minute]);
      }

      v13 = v24;
      v11 = v77;
      if ([v9 second] == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_80;
      }
    }

    else
    {
      CFCalendarAddComponents(v19, at, 0, "E", -v84);
      CFCalendarAddComponents(v19, at, 0, "E", [v9 weekday]);
      if ([v9 weekdayOrdinal] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v9 weekOfYear] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v9 weekOfYear] == 0x7FFFFFFFFFFFFFFFLL && !v12)
          {
            v23 = at[0];
            if (at[0] < CurrentTime)
            {
              CFCalendarAddComponents(v19, at, 0, "w", at[0], 1);
            }
          }
        }

        else
        {
          CFCalendarDecomposeAbsoluteTime(v19, at[0], "w", &v81);
          v45 = [v9 weekOfYear];
          CFCalendarAddComponents(v19, at, 0, "w", v46, v45 - v81);
        }
      }

      else
      {
        CFCalendarDecomposeAbsoluteTime(v19, at[0], "F", &v83);
        v31 = [v9 weekdayOrdinal];
        CFCalendarAddComponents(v19, at, 0, "F", v32, v31 - v83);
      }

      if ([v9 yearForWeekOfYear] != 0x7FFFFFFFFFFFFFFFLL)
      {
        CFCalendarDecomposeAbsoluteTime(v19, at[0], "y", &v87);
        v48 = [v9 yearForWeekOfYear];
        CFCalendarAddComponents(v19, at, 0, "Y", v48 - v87);
      }

      if (!v12 && [v9 weekday] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v47 = at[0];
        if (at[0] <= CurrentTime)
        {
          CFCalendarAddComponents(v19, at, 0, "w", at[0], 1);
        }
      }

      CFCalendarAddComponents(v19, at, 0, "smH", v47, -v78, -v79, -v80);
      if ([v9 hour] != 0x7FFFFFFFFFFFFFFFLL)
      {
        CFCalendarAddComponents(v19, at, 0, "H", [v9 hour]);
      }

      if ([v9 minute] != 0x7FFFFFFFFFFFFFFFLL)
      {
        CFCalendarAddComponents(v19, at, 0, "m", [v9 minute]);
      }

      if ([v9 second] == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_80;
      }
    }

    v76 = [v9 second];
    CFCalendarAddComponents(v19, at, 0, "s", v49, v76);
    goto LABEL_80;
  }

LABEL_81:
  if (v12)
  {
    if ([v12 second] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v12 minute] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v12 hour] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v12 day] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([v12 weekOfYear] == 0x7FFFFFFFFFFFFFFFLL)
            {
              if ([v12 weekOfMonth] == 0x7FFFFFFFFFFFFFFFLL)
              {
                if ([v12 weekdayOrdinal] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  if ([v12 month] == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    if ([v12 year] != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v50 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "year")}];
                      [v18 setValue:v50 forKey:kNLTextSlotParserRecurrentFrequencyYearKey[0]];
                      CFCalendarAddComponents(v19, at, 0, "y", [v12 year]);
                    }
                  }

                  else
                  {
                    v75 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "month")}];
                    [v18 setValue:v75 forKey:kNLTextSlotParserRecurrentFrequencyMonthKey[0]];
                    CFCalendarAddComponents(v19, at, 0, "M", [v12 month]);
                  }
                }

                else
                {
                  v68 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "weekday")}];
                  [v18 setValue:v68 forKey:kNLTextSlotParserRecurrentFrequencyWeekdayKey[0]];
                  v69 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "weekdayOrdinal")}];
                  [v18 setValue:v69 forKey:kNLTextSlotParserRecurrentFrequencyWeekdayOrdinalKey[0]];
                  if (at[0] < CurrentTime)
                  {
                    CFCalendarAddComponents(v19, at, 0, "dM", at[0], (1 - v85), 1);
                    CFCalendarDecomposeAbsoluteTime(v19, at[0], "EF", &v84, &v83);
                    v70 = [v9 weekday];
                    CFCalendarAddComponents(v19, at, 0, "E", v70 - v84);
                    CFCalendarDecomposeAbsoluteTime(v19, at[0], "F", &v83);
                    v71 = v83;
                    v72 = [v9 weekdayOrdinal];
                    v73 = [v9 weekdayOrdinal];
                    v74 = v83;
                    if (v72 < v71)
                    {
                      v74 = 0;
                    }

                    CFCalendarAddComponents(v19, at, 0, "F", v73 - v74);
                  }
                }
              }

              else
              {
                v67 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "weekOfMonth")}];
                [v18 setValue:v67 forKey:kNLTextSlotParserRecurrentFrequencyWeekOfMonthKey[0]];
              }
            }

            else
            {
              v64 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "weekOfYear")}];
              [v18 setValue:v64 forKey:kNLTextSlotParserRecurrentFrequencyWeekOfYearKey[0]];
              if ([v9 weekday] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v65 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "weekday")}];
                if (v13 == 48)
                {
                  [v18 setValue:v65 forKey:kNLTextSlotParserRecurrentFrequencyWeekdayStartKey[0]];
                  v66 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "weekday")}];
                  [v18 setValue:v66 forKey:kNLTextSlotParserRecurrentFrequencyWeekdayEndKey[0]];
                  v11 = 0;
                }

                else
                {
                  [v18 setValue:v65 forKey:kNLTextSlotParserRecurrentFrequencyWeekdayKey[0]];
                  CFCalendarAddComponents(v19, at, 0, "w", [v12 weekOfYear]);
                }
              }
            }
          }

          else
          {
            v58 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "day")}];
            [v18 setValue:v58 forKey:kNLTextSlotParserRecurrentFrequencyDayKey[0]];
            CFCalendarAddComponents(v19, at, 0, "d", [v12 day]);
          }
        }

        else
        {
          v53 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "hour")}];
          [v18 setValue:v53 forKey:kNLTextSlotParserRecurrentFrequencyHourKey[0]];
          CFCalendarAddComponents(v19, at, 0, "H", [v12 hour]);
        }
      }

      else
      {
        v52 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "minute")}];
        [v18 setValue:v52 forKey:kNLTextSlotParserRecurrentFrequencyMinuteKey[0]];
        CFCalendarAddComponents(v19, at, 0, "m", [v12 minute]);
      }
    }

    else
    {
      v51 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "second")}];
      [v18 setValue:v51 forKey:kNLTextSlotParserRecurrentFrequencySecondKey[0]];
      CFCalendarAddComponents(v19, at, 0, "s", [v12 second]);
    }
  }

  if (v9 && [v9 hour] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v9, "minute") == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 second];
    if (!v12)
    {
      goto LABEL_113;
    }
  }

  else if (!v12)
  {
    goto LABEL_113;
  }

  if ([v12 weekday] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v12, "weekOfMonth") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v12, "weekOfYear") != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_129;
  }

LABEL_113:
  if (v9)
  {
    if ([v9 weekday] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v9, "weekOfMonth") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v9, "weekOfYear") == 0x7FFFFFFFFFFFFFFFLL)
    {
      CFCalendarDecomposeAbsoluteTime(v19, at[0], "smHyMd", &v78, &v79, &v80, &v87, &v86, &v85);
      v59 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      v60 = v59;
      if (v78)
      {
        [v59 setSecond:?];
      }

      if (v79)
      {
        [v60 setMinute:?];
      }

      if (v80)
      {
        [v60 setHour:?];
      }

      if (v85)
      {
        [v60 setDay:?];
      }

      if (v86)
      {
        [v60 setMonth:?];
      }

      if (v87)
      {
        [v60 setYear:?];
      }

      goto LABEL_145;
    }

LABEL_129:
    CFCalendarDecomposeAbsoluteTime(v19, at[0], "smHyEwW", &v78, &v79, &v80, &v87, &v84, &v81, &v82);
    v61 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v60 = v61;
    if (v78)
    {
      [v61 setSecond:?];
    }

    if (v79)
    {
      [v60 setMinute:?];
    }

    if (v80)
    {
      [v60 setHour:?];
    }

    if (v84)
    {
      [v60 setWeekday:?];
    }

    if (v81)
    {
      [v60 setWeekOfYear:?];
    }

    if (v82 && [v60 weekOfMonth])
    {
      [v60 setWeekOfMonth:v82];
    }

    if (v87)
    {
      [v60 setYearForWeekOfYear:?];
    }

    goto LABEL_145;
  }

  v60 = 0;
LABEL_145:
  result = *(*(v7[5] + 8) + 48);
  if (!result && v13 != 42)
  {
    v62 = v7[7];
    if (v62 && v60)
    {
      [v60 setTimeZone:?];
      v62 = v7[7];
    }

    if (v62)
    {
      if (v11)
      {
        [v11 setTimeZone:?];
      }
    }

    v63 = *(v7[5] + 8);
    operator new();
  }

  if (result && v13 == 42)
  {
    return NLTextSlotRecurrentEvent::setEventDateRange(result, *(*(v7[4] + 8) + 48), *(*(v7[4] + 8) + 56));
  }

  return result;
}

void NLSearchParserManagerWrapper::~NLSearchParserManagerWrapper(id *this)
{
  if (*this)
  {
  }
}

void nlp::CFScopedPtr<__CFCalendar *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void std::shared_ptr<NLTextSlotRecurrentEvent>::shared_ptr[abi:ne200100]<NLTextSlotRecurrentEvent,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_22CD602D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<NLTextSlotRecurrentEvent>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

NLTextSlotRecurrentEvent **std::unique_ptr<NLTextSlotRecurrentEvent>::~unique_ptr[abi:ne200100](NLTextSlotRecurrentEvent **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    NLTextSlotRecurrentEvent::~NLTextSlotRecurrentEvent(v2);
    MEMORY[0x2318C0600]();
  }

  return a1;
}

void std::__shared_ptr_pointer<NLTextSlotRecurrentEvent *,std::shared_ptr<NLTextSlotRecurrentEvent>::__shared_ptr_default_delete<NLTextSlotRecurrentEvent,NLTextSlotRecurrentEvent>,std::allocator<NLTextSlotRecurrentEvent>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

NLTextSlotRecurrentEvent *std::__shared_ptr_pointer<NLTextSlotRecurrentEvent *,std::shared_ptr<NLTextSlotRecurrentEvent>::__shared_ptr_default_delete<NLTextSlotRecurrentEvent,NLTextSlotRecurrentEvent>,std::allocator<NLTextSlotRecurrentEvent>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    NLTextSlotRecurrentEvent::~NLTextSlotRecurrentEvent(result);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<NLTextSlotRecurrentEvent *,std::shared_ptr<NLTextSlotRecurrentEvent>::__shared_ptr_default_delete<NLTextSlotRecurrentEvent,NLTextSlotRecurrentEvent>,std::allocator<NLTextSlotRecurrentEvent>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void NLDevanagariNasalOrthographyConverter::NLDevanagariNasalOrthographyConverter(NLDevanagariNasalOrthographyConverter *this)
{
  v47.__r_.__value_.__r.__words[0] = *MEMORY[0x277D85DE8];
  *(this + 2) = 0u;
  v2 = (this + 32);
  *this = &unk_28400E1E0;
  *(this + 1) = @"्";
  *(this + 3) = 0u;
  *(this + 72) = 0u;
  v3 = (this + 72);
  *(this + 16) = 1065353216;
  *(this + 88) = 0u;
  *(this + 26) = 1065353216;
  *(this + 7) = 0u;
  v4 = (this + 112);
  *(this + 8) = 0u;
  *(this + 36) = 1065353216;
  *(this + 152) = 0u;
  v5 = (this + 152);
  *(this + 168) = 0u;
  *(this + 46) = 1065353216;
  *(this + 12) = 0u;
  v6 = (this + 192);
  *(this + 13) = 0u;
  *(this + 56) = 1065353216;
  Mutable = CFCharacterSetCreateMutable(0);
  v48.location = 2325;
  v48.length = 37;
  CFCharacterSetAddCharactersInRange(Mutable, v48);
  v49.location = 2392;
  v49.length = 8;
  CFCharacterSetAddCharactersInRange(Mutable, v49);
  v50.location = 2424;
  v50.length = 8;
  CFCharacterSetAddCharactersInRange(Mutable, v50);
  *(this + 2) = CFCharacterSetCreateCopy(0, Mutable);
  CFRelease(Mutable);
  *(this + 3) = CFCharacterSetCreateWithCharactersInString(0, @"ङञणनम");
  std::string::basic_string[abi:ne200100]<0>(v14, "क");
  std::string::basic_string[abi:ne200100]<0>(v15, "ख");
  std::string::basic_string[abi:ne200100]<0>(v16, "ग");
  std::string::basic_string[abi:ne200100]<0>(v17, "घ");
  std::string::basic_string[abi:ne200100]<0>(&v18, "च");
  std::string::basic_string[abi:ne200100]<0>(v19, "छ");
  std::string::basic_string[abi:ne200100]<0>(v20, "ज");
  std::string::basic_string[abi:ne200100]<0>(v21, "झ");
  std::string::basic_string[abi:ne200100]<0>(&v22, "ट");
  std::string::basic_string[abi:ne200100]<0>(v23, "ठ");
  std::string::basic_string[abi:ne200100]<0>(v24, "ड");
  std::string::basic_string[abi:ne200100]<0>(v25, "ढ");
  std::string::basic_string[abi:ne200100]<0>(v26, "त");
  std::string::basic_string[abi:ne200100]<0>(v27, "थ");
  std::string::basic_string[abi:ne200100]<0>(v28, "द");
  std::string::basic_string[abi:ne200100]<0>(v29, "ध");
  std::string::basic_string[abi:ne200100]<0>(v30, "ड़");
  std::string::basic_string[abi:ne200100]<0>(v31, "ड़");
  std::string::basic_string[abi:ne200100]<0>(v32, "ढ़");
  std::string::basic_string[abi:ne200100]<0>(v33, "ढ़");
  std::string::basic_string[abi:ne200100]<0>(v34, "क़");
  std::string::basic_string[abi:ne200100]<0>(v35, "क़");
  std::string::basic_string[abi:ne200100]<0>(v36, "ख़");
  std::string::basic_string[abi:ne200100]<0>(v37, "ख़");
  std::string::basic_string[abi:ne200100]<0>(v38, "ग़");
  std::string::basic_string[abi:ne200100]<0>(v39, "ग़");
  std::string::basic_string[abi:ne200100]<0>(v40, "फ़");
  std::string::basic_string[abi:ne200100]<0>(v41, "फ़");
  std::string::basic_string[abi:ne200100]<0>(v42, "ज़");
  std::string::basic_string[abi:ne200100]<0>(v43, "ज़");
  std::string::basic_string[abi:ne200100]<0>(v44, "श");
  std::string::basic_string[abi:ne200100]<0>(v45, "ष");
  std::string::basic_string[abi:ne200100]<0>(v46, "स");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(v2, v14, &v47);
  v8 = 33;
  do
  {
    if (SHIBYTE(v14[v8 - 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14[v8 - 1].__r_.__value_.__l.__data_);
    }

    --v8;
  }

  while (v8 * 24);
  std::string::basic_string[abi:ne200100]<0>(v14, "प");
  std::string::basic_string[abi:ne200100]<0>(v15, "फ");
  std::string::basic_string[abi:ne200100]<0>(v16, "ब");
  std::string::basic_string[abi:ne200100]<0>(v17, "भ");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(v3, v14, &v18);
  for (i = 0; i != -96; i -= 24)
  {
    if (v17[i + 23] < 0)
    {
      operator delete(*&v17[i]);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "ट");
  std::string::basic_string[abi:ne200100]<0>(v15, "ठ");
  std::string::basic_string[abi:ne200100]<0>(v16, "ड");
  std::string::basic_string[abi:ne200100]<0>(v17, "ड़");
  std::string::basic_string[abi:ne200100]<0>(&v18, "ड़");
  std::string::basic_string[abi:ne200100]<0>(v19, "ढ");
  std::string::basic_string[abi:ne200100]<0>(v20, "ढ़");
  std::string::basic_string[abi:ne200100]<0>(v21, "ढ़");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(v4, v14, &v22);
  for (j = 0; j != -192; j -= 24)
  {
    if (v21[j + 23] < 0)
    {
      operator delete(*&v21[j]);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "क");
  std::string::basic_string[abi:ne200100]<0>(v15, "ख");
  std::string::basic_string[abi:ne200100]<0>(v16, "ग");
  std::string::basic_string[abi:ne200100]<0>(v17, "घ");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(v5, v14, &v18);
  for (k = 0; k != -96; k -= 24)
  {
    if (v17[k + 23] < 0)
    {
      operator delete(*&v17[k]);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "च");
  std::string::basic_string[abi:ne200100]<0>(v15, "छ");
  std::string::basic_string[abi:ne200100]<0>(v16, "ज");
  std::string::basic_string[abi:ne200100]<0>(v17, "झ");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(v6, v14, &v18);
  for (m = 0; m != -96; m -= 24)
  {
    if (v17[m + 23] < 0)
    {
      operator delete(*&v17[m]);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22CD60AD4(_Unwind_Exception *a1)
{
  v9 = (v7 + 95);
  v10 = -96;
  v11 = v9;
  while (1)
  {
    v12 = *v11;
    v11 -= 24;
    if (v12 < 0)
    {
      operator delete(*(v9 - 23));
    }

    v9 = v11;
    v10 += 24;
    if (!v10)
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v6);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v5);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v4);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v3);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2);
      NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(v1);
      _Unwind_Resume(a1);
    }
  }
}

void NLDevanagariNasalOrthographyConverter::~NLDevanagariNasalOrthographyConverter(NLDevanagariNasalOrthographyConverter *this)
{
  *this = &unk_28400E1E0;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    CFRelease(v3);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 192);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 152);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 112);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 72);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 32);

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
}

{
  NLDevanagariNasalOrthographyConverter::~NLDevanagariNasalOrthographyConverter(this);

  JUMPOUT(0x2318C0600);
}

BOOL NLDevanagariNasalOrthographyConverter::isConsonant(CFStringRef *this, CFStringRef theString)
{
  v2 = theString;
  HasSuffix = CFStringHasSuffix(theString, this[1]);
  if (HasSuffix)
  {
    v9.length = CFStringGetLength(v2) - 1;
    v9.location = 0;
    v2 = CFStringCreateWithSubstring(0, v2, v9);
  }

  if (CFStringGetLength(v2) < 1)
  {
    v7 = 0;
    if (!HasSuffix)
    {
      return v7;
    }

    goto LABEL_5;
  }

  v5 = this[2];
  CharacterAtIndex = CFStringGetCharacterAtIndex(v2, 0);
  v7 = CFCharacterSetIsCharacterMember(v5, CharacterAtIndex) != 0;
  if (HasSuffix)
  {
LABEL_5:
    CFRelease(v2);
  }

  return v7;
}

BOOL NLDevanagariNasalOrthographyConverter::isNasal(uint64_t a1, uint64_t a2)
{
  CFStringFromString = createCFStringFromString(a2);
  HasSuffix = CFStringHasSuffix(CFStringFromString, *(a1 + 8));
  v5 = CFStringFromString;
  if (HasSuffix)
  {
    v10.length = CFStringGetLength(CFStringFromString) - 1;
    v10.location = 0;
    v5 = CFStringCreateWithSubstring(0, CFStringFromString, v10);
  }

  if (CFStringGetLength(v5) == 1)
  {
    v6 = *(a1 + 24);
    CharacterAtIndex = CFStringGetCharacterAtIndex(v5, 0);
    v8 = CFCharacterSetIsCharacterMember(v6, CharacterAtIndex) != 0;
    if (!HasSuffix)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = 0;
  if (HasSuffix)
  {
LABEL_7:
    CFRelease(v5);
  }

LABEL_8:
  CFRelease(CFStringFromString);
  return v8;
}

void NLDevanagariNasalOrthographyConverter::getSimplifiedFormForNasalConsonantCombination(CFStringRef *this@<X0>, CFStringRef theString@<X1>, const __CFString *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = theString;
  v35[2] = *MEMORY[0x277D85DE8];
  HasSuffix = CFStringHasSuffix(theString, this[1]);
  if (HasSuffix)
  {
    v36.length = CFStringGetLength(v5) - 1;
    v36.location = 0;
    v5 = CFStringCreateWithSubstring(0, v5, v36);
  }

  v9 = CFStringHasSuffix(a3, this[1]);
  v10 = a3;
  if (v9)
  {
    v37.length = CFStringGetLength(a3) - 1;
    v37.location = 0;
    v10 = CFStringCreateWithSubstring(0, a3, v37);
  }

  getUTF8StringFromCFString(v10, v33);
  getUTF8StringFromCFString(a3, &__p);
  std::string::basic_string[abi:ne200100]<0>(a4, "");
  if (CFStringCompare(v5, @"न", 0))
  {
    if (CFStringCompare(v5, @"म", 0))
    {
      if (CFStringCompare(v5, @"ण", 0))
      {
        if (CFStringCompare(v5, @"ङ", 0))
        {
          if (CFStringCompare(v5, @"ञ", 0))
          {
            goto LABEL_58;
          }

          if (std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(this + 24, v33))
          {
            goto LABEL_25;
          }

          getUTF8StringFromCFString(v5, &v28);
          v21 = std::string::append(&v28, "्");
          v22 = *&v21->__r_.__value_.__l.__data_;
          v29.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
          *&v29.__r_.__value_.__l.__data_ = v22;
          v21->__r_.__value_.__l.__size_ = 0;
          v21->__r_.__value_.__r.__words[2] = 0;
          v21->__r_.__value_.__r.__words[0] = 0;
          if ((v32 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if ((v32 & 0x80u) == 0)
          {
            v14 = v32;
          }

          else
          {
            v14 = v31;
          }
        }

        else
        {
          if (std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(this + 19, v33))
          {
            goto LABEL_25;
          }

          getUTF8StringFromCFString(v5, &v28);
          v19 = std::string::append(&v28, "्");
          v20 = *&v19->__r_.__value_.__l.__data_;
          v29.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
          *&v29.__r_.__value_.__l.__data_ = v20;
          v19->__r_.__value_.__l.__size_ = 0;
          v19->__r_.__value_.__r.__words[2] = 0;
          v19->__r_.__value_.__r.__words[0] = 0;
          if ((v32 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if ((v32 & 0x80u) == 0)
          {
            v14 = v32;
          }

          else
          {
            v14 = v31;
          }
        }

LABEL_53:
        v23 = std::string::append(&v29, p_p, v14);
        v24 = v23->__r_.__value_.__r.__words[0];
        v35[0] = v23->__r_.__value_.__l.__size_;
        *(v35 + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
        v25 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        if (*(a4 + 23) < 0)
        {
          operator delete(*a4);
        }

        v26 = v35[0];
        *a4 = v24;
        *(a4 + 8) = v26;
        *(a4 + 15) = *(v35 + 7);
        *(a4 + 23) = v25;
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
          if (!v9)
          {
            goto LABEL_60;
          }

LABEL_59:
          CFRelease(v10);
          goto LABEL_60;
        }

LABEL_58:
        if (!v9)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }

      if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(this + 14, v33))
      {
        getUTF8StringFromCFString(v5, &v28);
        v17 = std::string::append(&v28, "्");
        v18 = *&v17->__r_.__value_.__l.__data_;
        v29.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v29.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        if ((v32 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v32 & 0x80u) == 0)
        {
          v14 = v32;
        }

        else
        {
          v14 = v31;
        }

        goto LABEL_53;
      }
    }

    else if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(this + 9, v33))
    {
      getUTF8StringFromCFString(v5, &v28);
      v15 = std::string::append(&v28, "्");
      v16 = *&v15->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if ((v32 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v32 & 0x80u) == 0)
      {
        v14 = v32;
      }

      else
      {
        v14 = v31;
      }

      goto LABEL_53;
    }
  }

  else if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(this + 4, v33))
  {
    getUTF8StringFromCFString(v5, &v28);
    v11 = std::string::append(&v28, "्");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if ((v32 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v32 & 0x80u) == 0)
    {
      v14 = v32;
    }

    else
    {
      v14 = v31;
    }

    goto LABEL_53;
  }

LABEL_25:
  std::operator+<char>();
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v29;
  if (v9)
  {
    goto LABEL_59;
  }

LABEL_60:
  if (HasSuffix)
  {
    CFRelease(v5);
  }

  if (v32 < 0)
  {
    operator delete(__p);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void sub_22CD613FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void NLDevanagariNasalOrthographyConverter::convertToModernOrthography(CFStringRef *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *a2, *(a2 + 8));
  }

  else
  {
    v28 = *a2;
  }

  NLDevanagariCharTokenizer::NLDevanagariCharTokenizer(v29, &v28, 0, 0);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  CFStringFromString = createCFStringFromString(a2);
  v26 = a3;
  Mutable = CFStringCreateMutable(0, 0);
  Copy = 0;
  while (NLDevanagariCharTokenizer::advance(v29))
  {
    v34.location = NLDevanagariCharTokenizer::currentTokenRange(v29);
    v34.length = v9;
    v10 = CFStringCreateWithSubstring(0, CFStringFromString, v34);
    getUTF8StringFromCFString(v10, &v27);
    isConsonant = NLDevanagariNasalOrthographyConverter::isConsonant(a1, v10);
    if (Copy)
    {
      v12 = isConsonant;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      if (CFStringGetLength(Copy) < 1)
      {
        v15 = 0;
      }

      else
      {
        NLDevanagariNasalOrthographyConverter::getSimplifiedFormForNasalConsonantCombination(a1, Copy, v10, &__p);
        v13 = v31;
        v14 = v31;
        if ((v31 & 0x80u) != 0)
        {
          v13 = *(&__p + 1);
        }

        v15 = v13 != 0;
        if (v13)
        {
          Length = CFStringGetLength(Mutable);
          v17 = CFStringGetLength(Copy);
          v18 = CFStringGetLength(Copy);
          v19 = createCFStringFromString(&__p);
          v33.location = Length - v17;
          v33.length = v18;
          CFStringReplace(Mutable, v33, v19);
          CFRelease(v19);
          v14 = v31;
        }

        if ((v14 & 0x80) != 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      v15 = 0;
      if (!Copy)
      {
        goto LABEL_23;
      }
    }

    CFRelease(Copy);
LABEL_23:
    if (!((*a1)->data)(a1, &v27) || !CFStringHasSuffix(v10, a1[1]))
    {
      Copy = 0;
      if (v15)
      {
        goto LABEL_29;
      }

LABEL_28:
      CFStringAppend(Mutable, v10);
      goto LABEL_29;
    }

    Copy = CFStringCreateCopy(0, v10);
    if (!v15)
    {
      goto LABEL_28;
    }

LABEL_29:
    if (v10)
    {
      CFRelease(v10);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }

  getUTF8StringFromCFString(Mutable, v26);
  if (Copy)
  {
    v35.length = CFStringGetLength(Mutable) - 2;
    v35.location = 0;
    v20 = CFStringCreateWithSubstring(0, Mutable, v35);
    getUTF8StringFromCFString(v20, &v27);
    v21 = std::string::append(&v27, "ं");
    v22 = v21->__r_.__value_.__r.__words[0];
    *&__p = v21->__r_.__value_.__l.__size_;
    *(&__p + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
    v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (*(v26 + 23) < 0)
    {
      operator delete(*v26);
    }

    v24 = __p;
    *v26 = v22;
    *(v26 + 8) = v24;
    *(v26 + 15) = *(&__p + 7);
    *(v26 + 23) = v23;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    CFRelease(v20);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  NLDevanagariCharTokenizer::~NLDevanagariCharTokenizer(v29);
  v25 = *MEMORY[0x277D85DE8];
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(uint64_t *a1, std::string *__str, std::string *a3)
{
  v4 = __str;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = __str == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 16), v4);
        v10 = *v8;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_unique(a1, v8);
        ++v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, v10);
  }

  while (v4 != a3)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, &v4->__r_.__value_.__l.__data_);
    ++v4;
  }
}

void sub_22CD61A34(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(v2 + 8) = v4;
  v5 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 16));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::__rehash<true>(a1, v18);
  }

  return 0;
}

uint64_t *std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
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

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, const void **a2)
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
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
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

void sub_22CD61F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22CD61FC4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void NLRomanHindiWordLanguageModeler::NLRomanHindiWordLanguageModeler(NLRomanHindiWordLanguageModeler *this, const __CFDictionary *a2)
{
  NLAbstractLanguageModeler::NLAbstractLanguageModeler(this, @"hi-Latn");
  *v3 = &unk_28400E258;
  NLRomanHindiWordLanguageModeler::loadLanguageModel(v3, a2);
}

void NLRomanHindiWordLanguageModeler::loadLanguageModel(NLRomanHindiWordLanguageModeler *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v4 = MutableCopy;
  CFDictionarySetValue(MutableCopy, *MEMORY[0x277D230E0], @"hi-Latn");
  *(this + 1) = LMLanguageModelCreate();
  CFRelease(v4);
  if (!*(this + 1))
  {
    v6 = *(*NL::CFLogger::sharedInstance(v5) + 16);

    v6();
  }
}

void NLRomanHindiWordLanguageModeler::~NLRomanHindiWordLanguageModeler(NLRomanHindiWordLanguageModeler *this)
{
  NLAbstractLanguageModeler::~NLAbstractLanguageModeler(this);

  JUMPOUT(0x2318C0600);
}

double NL::ParserContext::ParserContext(NL::ParserContext *this)
{
  *(this + 28) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *&result = 1;
  *(this + 3) = xmmword_22CDDEA90;
  *(this + 32) = 1;
  *(this + 66) = 0;
  *(this + 10) = 0;
  *(this + 9) = this + 80;
  *(this + 14) = 0;
  *(this + 13) = 0;
  *(this + 11) = 0;
  *(this + 12) = this + 104;
  return result;
}

uint64_t NL::ParserContext::index(NL::ParserContext *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    v3 = *(this + 10);
    if (v3 == 3)
    {
      return 2;
    }

    else if (v3 == 1)
    {
      v4 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], @"/Library/Application Support/Apple/Spotlight/MailUsesCoreSpotlight", kCFURLPOSIXPathStyle, 0);
      if (CFURLResourceIsReachable(v4, 0))
      {
        v1 = 2;
      }

      else
      {
        v1 = 1;
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }

    else
    {
      return 3;
    }
  }

  return v1;
}

void sub_22CD622AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFURL const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void NL::ParserContext::setDate(const void **this, const __CFDate *a2)
{
  nlp::CFScopedPtr<__CFDate const*>::reset(this, 0);
  if (a2)
  {
    v4 = CFRetain(a2);

    nlp::CFScopedPtr<__CFDate const*>::reset(this, v4);
  }
}

void nlp::CFScopedPtr<__CFDate const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t NL::ParserContext::setLocale(const void **this, const __CFLocale *a2)
{
  nlp::CFScopedPtr<__CFLocale const*>::reset(this + 1, 0);
  if (a2)
  {
    v4 = CFRetain(a2);
    nlp::CFScopedPtr<__CFLocale const*>::reset(this + 1, v4);
  }

  result = MEMORY[0x2318BF8A0](this[1]);
  if (this[1])
  {
    v6 = result;
    HasPrefix = CFStringHasPrefix(result, @"ja");
    result = CFStringHasPrefix(v6, @"zh");
    if (result | HasPrefix)
    {
      *(this + 64) = 0;
      if (HasPrefix)
      {
        *(this + 65) = 1;
      }
    }
  }

  return result;
}

void NL::ParserContext::setUsername(const void **this, const __CFString *a2)
{
  nlp::CFScopedPtr<__CFString const*>::reset(this + 2, 0);
  if (a2)
  {
    v4 = CFRetain(a2);

    nlp::CFScopedPtr<__CFString const*>::reset(this + 2, v4);
  }
}

void NL::ParserContext::setReferenceDatesPath(const void **this, const __CFURL *a2)
{
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 3, 0);
  if (a2)
  {
    DictionaryWithContentsOfURL = createDictionaryWithContentsOfURL(a2, 0);

    nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 3, DictionaryWithContentsOfURL);
  }
}

void nlp::CFScopedPtr<__CFDictionary const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void NL::ParserContext::setCanonicalRegions(const void **this, const __CFDictionary *a2)
{
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 4, 0);
  if (a2)
  {
    v4 = CFRetain(a2);

    nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 4, v4);
  }
}

BOOL NL::ParserContext::regionValidForLanguage(NL::ParserContext *this, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  if (!a4 || !a2 || !*(this + 4))
  {
    return 0;
  }

  v7 = *MEMORY[0x277CBECE8];
  if (a3)
  {
    v8 = CFStringCreateWithFormat(v7, 0, @"%@-%@", a2, a3);
    if (!CFDictionaryContainsKey(*(this + 4), v8))
    {
      goto LABEL_16;
    }

    Value = CFDictionaryGetValue(*(this + 4), v8);
  }

  else
  {
    v8 = CFStringCreateWithFormat(v7, 0, @"%@_%@", a2, a4);
    v10 = CFDictionaryContainsKey(*(this + 4), v8);
    v11 = *(this + 4);
    if (v10)
    {
      Value = CFDictionaryGetValue(v11, v8);
    }

    else
    {
      if (!CFDictionaryContainsKey(v11, a2))
      {
        goto LABEL_16;
      }

      Value = CFDictionaryGetValue(*(this + 4), a2);
    }
  }

  if (!Value || (v12 = CFDictionaryGetValue(Value, @"ValidRegions"), (v13 = v12) == 0) || (v16.length = CFArrayGetCount(v12), v16.location = 0, !CFArrayContainsValue(v13, v16, a4)))
  {
LABEL_16:
    v14 = 1;
    if (!v8)
    {
      return (v14 & 1) == 0;
    }

    goto LABEL_17;
  }

  v14 = 0;
  if (v8)
  {
LABEL_17:
    CFRelease(v8);
  }

  return (v14 & 1) == 0;
}

void sub_22CD626B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

NL::ParserContext *NL::ParserContext::canonicalRegionForLanguage(const __CFDictionary **this, const __CFString *key, const __CFString *a3)
{
  if (!key)
  {
    return 0;
  }

  v3 = this;
  v4 = this[4];
  if (!v4)
  {
    return 0;
  }

  if (a3)
  {
    v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@-%@", key, a3);
    v7 = CFDictionaryContainsKey(*(v3 + 4), v6);
    if (v7)
    {
      Value = CFDictionaryGetValue(*(v3 + 4), v6);
      v3 = CFDictionaryGetValue(Value, @"CanonicalRegion");
      if (!v6)
      {
LABEL_13:
        if (v7)
        {
          return v3;
        }

        return 0;
      }
    }

    else if (!v6)
    {
      goto LABEL_13;
    }

    CFRelease(v6);
    goto LABEL_13;
  }

  if (!CFDictionaryContainsKey(v4, key))
  {
    return 0;
  }

  v9 = CFDictionaryGetValue(*(v3 + 4), key);

  return CFDictionaryGetValue(v9, @"CanonicalRegion");
}

void sub_22CD627D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t NL::ParserContext::primaryCategory(NL::ParserContext *this)
{
  v1 = *(this + 6);
  if ((v1 & 0x401C000) != 0)
  {
    return 1;
  }

  if ((v1 & 0x200000) != 0)
  {
    return 8;
  }

  if ((v1 & 0x2000000) != 0)
  {
    return 15;
  }

  if ((v1 & 0x20000) != 0)
  {
    return 14;
  }

  if ((v1 & 0x100000) != 0)
  {
    return 11;
  }

  if ((v1 & 0x40000) != 0)
  {
    return 12;
  }

  if ((v1 & 0x800000) != 0)
  {
    v3 = 7;
  }

  else
  {
    v3 = 0;
  }

  if ((v1 & 0x400000) != 0)
  {
    v4 = 10;
  }

  else
  {
    v4 = v3;
  }

  if ((v1 & 0x1000000) != 0)
  {
    v5 = 13;
  }

  else
  {
    v5 = v4;
  }

  if ((v1 & 0x80000) != 0)
  {
    return 16;
  }

  else
  {
    return v5;
  }
}

uint64_t NL::ParserContext::secondaryCategory(NL::ParserContext *this)
{
  v1 = *(this + 6);
  if ((v1 & 0x200000) != 0)
  {
    return 8;
  }

  if ((v1 & 0x2000000) != 0)
  {
    return 15;
  }

  if ((v1 & 0x20000) != 0)
  {
    return 14;
  }

  if ((v1 & 0x100000) != 0)
  {
    return 11;
  }

  if ((v1 & 0x40000) != 0)
  {
    return 12;
  }

  if ((v1 & 0x800000) != 0)
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 0x400000) != 0)
  {
    v3 = 10;
  }

  else
  {
    v3 = v2;
  }

  if ((v1 & 0x1000000) != 0)
  {
    v4 = 13;
  }

  else
  {
    v4 = v3;
  }

  if ((v1 & 0x80000) != 0)
  {
    return 16;
  }

  else
  {
    return v4;
  }
}

void NL::ParserContext::close(NL::ParserContext *this)
{
  v2 = *(this + 6);
  if ((v2 & 0x10000000000) != 0)
  {
    if ((v2 & 0x200) == 0 || *(this + 11) != 1)
    {
      if ((v2 & 0x207000000000) == 0)
      {
        goto LABEL_14;
      }

      v4 = 336;
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if ((v2 & 0x400) != 0)
  {
    v3 = 0xFFFFFEFFFFFFFCBBLL;
    goto LABEL_12;
  }

  if ((v2 & 0x12) != 0 && *(this + 11) >= 2uLL)
  {
    v3 = 0xFFFFFEFFFFFFF8B9;
LABEL_12:
    v2 &= v3;
    v4 = 580;
    goto LABEL_13;
  }

  if ((v2 & 8) == 0)
  {
    if ((v2 & 4) == 0)
    {
      goto LABEL_43;
    }

    if (*(this + 11) >= 2uLL)
    {
      v2 &= 0xFFFFFEFFFFFFF8B7;
      v4 = 320;
      goto LABEL_13;
    }

    goto LABEL_79;
  }

  v6 = *(this + 11);
  if (v6 >= 2)
  {
    v7 = 0xFFFFFEFFFFFFF8BDLL;
    goto LABEL_54;
  }

  if (v6 == 1)
  {
    if ((v2 & 0xF000000100) != 0)
    {
      v2 &= 0xFFFFFEFFFFFFF8BBLL;
      v4 = 1604;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if ((v2 & 0x104) != 0)
  {
LABEL_79:
    if ((*(this + 6) & 0x80000004) == 0x80000000)
    {
      goto LABEL_14;
    }

    v2 &= 0xFFFFFEFFFFFFF8BFLL;
LABEL_8:
    v4 = 1600;
LABEL_13:
    v2 |= v4;
    *(this + 6) = v2;
    goto LABEL_14;
  }

LABEL_43:
  if ((v2 & 0x12) == 0)
  {
    if ((v2 & 0x80000000) == 0 || !*(this + 11))
    {
      goto LABEL_14;
    }

    v7 = 0xFFFFFEFFFFFFF8ADLL;
LABEL_54:
    v2 &= v7;
    v4 = 576;
    goto LABEL_13;
  }

  *(this + 6) = v2 | 0x140;
  if ((v2 & 0x7000000000) != 0)
  {
    v4 = 832;
    goto LABEL_13;
  }

  v2 |= 0x140uLL;
LABEL_14:
  if ((v2 & 0x40000000000) != 0)
  {
    if ((v2 & 0x200000000) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "MAILVIEWED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = *(this + 6);
    }

    if ((~v2 & 0x300) != 0)
    {
      if ((v2 & 0x204) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "MAILRECEIVED");
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        goto LABEL_181;
      }

      if ((v2 & 0x80000112) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "MAILRECEIVED");
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "MAILRECEIVED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "MAILSENT");
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
    goto LABEL_181;
  }

  if ((v2 & 0x1A0000000000) != 0)
  {
    if ((~v2 & 0x300) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "RECEIVED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_70;
    }

    if ((v2 & 0x200) == 0)
    {
      if ((v2 & 0x10080000012) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "RECEIVED");
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      goto LABEL_70;
    }

    goto LABEL_235;
  }

  if ((v2 & 0x200000000000) != 0)
  {
LABEL_70:
    std::string::basic_string[abi:ne200100]<0>(__p, "SENT");
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
    goto LABEL_181;
  }

  if ((v2 & 0x8000) != 0 || (v5 = *(this + 10), v5 == 1))
  {
    if ((v2 & 0x200000000) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILVIEWED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = *(this + 6);
    }

    if ((~v2 & 0x300) != 0)
    {
      if ((v2 & 0x8000000800) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILRECEIVED");
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        if ((v2 & 0x604) != 0)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILRECEIVED");
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
          goto LABEL_181;
        }

        if ((v2 & 0xC0000112) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILRECEIVED");
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILRECEIVED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILSENT");
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
LABEL_181:
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_183;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v2 & 0x8000000800) != 0 || (v2 & 0x300) == 0x300)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "MSGMESSAGERECEIVED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      if ((v2 & 0x204) != 0)
      {
LABEL_90:
        std::string::basic_string[abi:ne200100]<0>(__p, "MSGMESSAGERECEIVED");
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        goto LABEL_181;
      }

      if ((v2 & 0xC0000112) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "MSGMESSAGERECEIVED");
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    goto LABEL_249;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v2 & 0x8000000800) != 0 || (v2 & 0x300) == 0x300)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILRECEIVED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILSENT");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "MSGMESSAGERECEIVED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      if ((v2 & 0x204) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILRECEIVED");
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_90;
      }

      if ((v2 & 0xC0000112) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILSENT");
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILRECEIVED");
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILSENT");
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "MSGMESSAGERECEIVED");
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    goto LABEL_249;
  }

  if (v5 == 3)
  {
    if ((v2 & 0x800) != 0)
    {
      if ((v2 & 0x10000000000) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "SENT");
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_77;
      }
    }

    else if ((v2 & 0x8000000000) != 0)
    {
      if ((v2 & 0x10000000000) == 0 && (v2 & 4) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "SENT");
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_77;
      }
    }

    else
    {
      if ((v2 & 0x80000200) != 0)
      {
LABEL_77:
        std::string::basic_string[abi:ne200100]<0>(__p, "RECEIVED");
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
LABEL_162:
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        v8 = 1;
LABEL_165:
        v9 = *(this + 6);
        if ((v9 & 0x400000000000) != 0)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "FILECREATED");
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "FILEADDED");
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        }

        else if ((v9 & 0x40000000) != 0)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "FILECREATED");
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        }

        else
        {
          if ((v9 & 0x100000000) == 0)
          {
            goto LABEL_175;
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "FILEMODIFIED");
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        }

        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

LABEL_175:
        if (v8)
        {
          goto LABEL_183;
        }

LABEL_176:
        if (!*(this + 14))
        {
          goto LABEL_183;
        }

        v10 = *(this + 6);
        if ((v10 & 0x100) != 0)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "SENTFROM");
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        }

        else
        {
          if ((v10 & 0x200) == 0)
          {
            goto LABEL_183;
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "RECEIVEDFROM");
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        }

        goto LABEL_181;
      }

      if ((v2 & 0x112) == 0)
      {
        v8 = 0;
        goto LABEL_165;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "SENT");
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
    goto LABEL_162;
  }

  if ((v2 & 0x40000000) != 0)
  {
    if ((v2 & 0x10000000000) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "USERCREATED");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FILECREATED");
    }

    goto LABEL_231;
  }

  if ((v2 & 0x100000000) != 0)
  {
    if ((v2 & 0x10000000000) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "USERMODIFIED");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FILEMODIFIED");
    }

    goto LABEL_231;
  }

  if ((v2 & 0x400000000000) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FILECREATED");
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
    goto LABEL_159;
  }

  if ((v2 & 0x800000000) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "USERPRINTED");
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
    goto LABEL_159;
  }

  if ((v2 & 0x600000000) != 0)
  {
    if ((v2 & 0x8000000) == 0)
    {
      if ((v2 & 0x2000000) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "USERWEBVIEWED");
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      }

      else if ((v2 & 0x200000000) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "USERVIEWED");
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      }

      else
      {
        if ((v2 & 0x400000000) == 0)
        {
          goto LABEL_176;
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "USERDOWNLOADED");
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      }

      goto LABEL_159;
    }

    if ((v2 & 0x2000000) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "WEBVIEWED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
    }

    else
    {
      if ((v2 & 0x200000000) == 0)
      {
        if ((v2 & 0x400000000) != 0)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "FILEDOWNLOADED");
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "FILEVIEWED");
        }

LABEL_231:
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
        goto LABEL_159;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "FILEVIEWED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
    }

LABEL_159:
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_176;
  }

  if ((v2 & 0x8000000000) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "SENT");
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (*(this + 53))
    {
      goto LABEL_183;
    }

    goto LABEL_235;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v2 & 0x200) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "SENT");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "MAILSENT");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "MESSAGESENT");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "RECEIVED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "MAILRECEIVED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "MESSAGERECEIVED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      goto LABEL_159;
    }

    goto LABEL_239;
  }

  if ((v2 & 0x12) != 0)
  {
LABEL_239:
    if ((v2 & 0x800) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "SENT");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "MAILSENT");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "MESSAGESENT");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      if ((*(this + 49) & 0x10) != 0)
      {
        goto LABEL_183;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILSENT");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_249:
      std::string::basic_string[abi:ne200100]<0>(__p, "MSGMESSAGESENT");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      goto LABEL_181;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "SENT");
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_235:
    std::string::basic_string[abi:ne200100]<0>(__p, "RECEIVED");
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
    goto LABEL_181;
  }

  if ((v2 & 0x200) == 0)
  {
    goto LABEL_176;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "RECEIVED");
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MAILRECEIVED");
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(this + 49) & 0x10) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILRECEIVED");
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_90;
  }

LABEL_183:
  if (!*(this + 14))
  {
    if (*(this + 10) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "MAILSENT");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILSENT");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "MAILRECEIVED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILRECEIVED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
    }

    else if (NL::ParserContext::index(this) == 2)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FILEMODIFIED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "FILECREATED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "MAILSENT");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "MAILRECEIVED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "MESSAGESENT");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "MESSAGERECEIVED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "SENT");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "RECEIVED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "FILECREATED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "FILEMODIFIED");
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 96, __p);
    }

    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_22CD63D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NL::ParserContext::reset(NL::ParserContext *this)
{
  v1 = this;
  *(this + 6) = 1;
  v2 = (this + 104);
  std::__tree<std::string>::destroy(this + 96, *(this + 13));
  *(v1 + 12) = v2;
  *v2 = 0;
  v3 = *(v1 + 10);
  v1 = (v1 + 80);
  *(v1 + 4) = 0;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::destroy(v1 - 8, v3);
  *v1 = 0;
  *(v1 + 1) = 0;
  *(v1 - 1) = v1;
}

BOOL NL::ParserContext::currentActionContainsSent(NL::ParserContext *this)
{
  std::string::basic_string[abi:ne200100]<0>(v9, "SENT");
  v2 = (this + 104);
  if ((this + 104) == std::__find[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity>(*(this + 12), this + 13, v9))
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "MAILSENT");
    if (v2 == std::__find[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity>(*(this + 12), this + 13, v7))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILSENT");
      v3 = v2 != std::__find[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity>(*(this + 12), this + 13, __p);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v3 = 1;
    }

    if (v8 < 0)
    {
      operator delete(v7[0]);
    }
  }

  else
  {
    v3 = 1;
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  return v3;
}

void sub_22CD64348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

BOOL NL::ParserContext::currentActionContainsReceived(NL::ParserContext *this)
{
  std::string::basic_string[abi:ne200100]<0>(v9, "RECEIVED");
  v2 = (this + 104);
  if ((this + 104) == std::__find[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity>(*(this + 12), this + 13, v9))
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "MAILRECEIVED");
    if (v2 == std::__find[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity>(*(this + 12), this + 13, v7))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILRECEIVED");
      v3 = v2 != std::__find[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity>(*(this + 12), this + 13, __p);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v3 = 1;
    }

    if (v8 < 0)
    {
      operator delete(v7[0]);
    }
  }

  else
  {
    v3 = 1;
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  return v3;
}

void sub_22CD64490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void *std::__find[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity>(void *a1, void *a2, const void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = a3[1];
    }

    if (v5 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    while (1)
    {
      v8 = *(v3 + 55);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = v3[5];
      }

      if (v8 == v6)
      {
        v10 = v9 >= 0 ? v3 + 4 : v3[4];
        if (!memcmp(v10, v7, v6))
        {
          break;
        }
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v13 = *v12 == v3;
          v3 = v12;
        }

        while (!v13);
      }

      v3 = v12;
      if (v12 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<short>::__emplace_unique_key_args<short,short const&>(uint64_t a1, __int16 *a2)
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
      v5 = *(v2 + 26);
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

void NLTextSlotParserEventExtractor::NLTextSlotParserEventExtractor(NLTextSlotParserEventExtractor *this, const __CFLocale *a2)
{
  *(this + 8) = xmmword_22CDDE2F0;
  *(this + 24) = xmmword_22CDDE2F0;
  *this = MEMORY[0x2318BF880](*MEMORY[0x277CBECE8], a2);
}

void NLTextSlotParserEventExtractor::~NLTextSlotParserEventExtractor(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void NLResult::NLResult(std::string *this, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, int a7, __int128 *a8)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v15 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v15;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v16 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v16;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *a4, *(a4 + 1));
  }

  else
  {
    v17 = *a4;
    this[2].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&this[2].__r_.__value_.__l.__data_ = v17;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *a5, *(a5 + 1));
  }

  else
  {
    v18 = *a5;
    this[3].__r_.__value_.__r.__words[2] = *(a5 + 2);
    *&this[3].__r_.__value_.__l.__data_ = v18;
  }

  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *a6, *(a6 + 1));
  }

  else
  {
    v19 = *a6;
    this[4].__r_.__value_.__r.__words[2] = *(a6 + 2);
    *&this[4].__r_.__value_.__l.__data_ = v19;
  }

  LODWORD(this[5].__r_.__value_.__l.__data_) = a7;
  if (*(a8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 128), *a8, *(a8 + 1));
  }

  else
  {
    v20 = *a8;
    this[6].__r_.__value_.__r.__words[0] = *(a8 + 2);
    *&this[5].__r_.__value_.__r.__words[1] = v20;
  }
}

void sub_22CD64900(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void NLResult::getLemmaID(NLResult *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

void NLResult::getVocStr(NLResult *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 3), *(this + 4));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 24);
    a2->__r_.__value_.__r.__words[2] = *(this + 5);
  }
}

void NLResult::getPosStr(NLResult *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 6), *(this + 7));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 3);
    a2->__r_.__value_.__r.__words[2] = *(this + 8);
  }
}

CFStringRef *NLDevanagariCharTokenizer::NLDevanagariCharTokenizer(CFStringRef *a1, uint64_t a2, const __CFString *a3, const __CFString *a4)
{
  *a1 = createCFStringFromString(a2);
  a1[1] = a3;
  a1[2] = a4;
  Mutable = CFCharacterSetCreateMutable(0);
  v9.location = 2325;
  v9.length = 37;
  CFCharacterSetAddCharactersInRange(Mutable, v9);
  v10.location = 2392;
  v10.length = 8;
  CFCharacterSetAddCharactersInRange(Mutable, v10);
  v11.location = 2424;
  v11.length = 8;
  CFCharacterSetAddCharactersInRange(Mutable, v11);
  a1[3] = Mutable;
  return a1;
}

void NLDevanagariCharTokenizer::~NLDevanagariCharTokenizer(NLDevanagariCharTokenizer *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(@"्");
  CFRelease(@"ं");
  CFRelease(@"़");
}

BOOL NLDevanagariCharTokenizer::advance(NLDevanagariCharTokenizer *this)
{
  v2 = *(this + 2);
  Length = CFStringGetLength(*this);
  if (v2 < Length)
  {
    v4 = *(this + 2);
    *(this + 1) = v4;
    v5 = CFStringGetLength(*this);
    if (v4 < v5)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(*this, v4);
      v7 = v4 + 1;
      if (!CFCharacterSetIsCharacterMember(*(this + 3), CharacterAtIndex))
      {
        goto LABEL_11;
      }

      v8 = v5;
      if (v7 < v5)
      {
        v9 = CFStringGetCharacterAtIndex(*this, v4 + 1);
        if (v9 == CFStringGetCharacterAtIndex(@"़", 0))
        {
          v7 = v4 + 2;
        }
      }

      if (v7 < v8)
      {
        v10 = CFStringGetCharacterAtIndex(*this, v7);
        if (v10 == CFStringGetCharacterAtIndex(@"्", 0))
        {
          v4 = v7 + 1;
        }

        else
        {
          v4 = v7;
        }
      }

      else
      {
LABEL_11:
        v4 = v7;
      }
    }

    *(this + 2) = v4;
  }

  return v2 < Length;
}