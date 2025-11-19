uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,0>(int *a1, int *a2, int *a3, int *a4, uint64_t a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,0>(a1, a2, a3, a5);
  v10 = *a4;
  v11 = *a3;
  v12 = *(*a5 + 224);
  v13 = *(*a5 + 200);
  v14 = v13 + 24 * *(v12 + 4 * v10);
  v15 = v13 + 24 * *(v12 + 4 * v11);
  v16 = *(v15 + 23);
  v17 = *(v14 + 23);
  if (v17 >= 0)
  {
    v18 = *(v14 + 23);
  }

  else
  {
    v18 = *(v14 + 8);
  }

  if (v17 >= 0)
  {
    v19 = (v13 + 24 * *(v12 + 4 * v10));
  }

  else
  {
    v19 = *v14;
  }

  if (v16 >= 0)
  {
    v20 = *(v15 + 23);
  }

  else
  {
    v20 = *(v15 + 8);
  }

  if (v16 >= 0)
  {
    v21 = (v13 + 24 * *(v12 + 4 * v11));
  }

  else
  {
    v21 = *v15;
  }

  if (v20 >= v18)
  {
    v22 = v18;
  }

  else
  {
    v22 = v20;
  }

  result = memcmp(v19, v21, v22);
  v24 = v18 < v20;
  if (result)
  {
    v24 = result < 0;
  }

  if (v24)
  {
    *a3 = v10;
    *a4 = v11;
    v25 = *a3;
    v26 = *a2;
    v27 = v13 + 24 * *(v12 + 4 * v25);
    v28 = v13 + 24 * *(v12 + 4 * v26);
    v29 = *(v28 + 23);
    v30 = *(v27 + 23);
    if (v30 >= 0)
    {
      v31 = *(v27 + 23);
    }

    else
    {
      v31 = *(v27 + 8);
    }

    if (v30 >= 0)
    {
      v32 = (v13 + 24 * *(v12 + 4 * v25));
    }

    else
    {
      v32 = *v27;
    }

    if (v29 >= 0)
    {
      v33 = *(v28 + 23);
    }

    else
    {
      v33 = *(v28 + 8);
    }

    if (v29 >= 0)
    {
      v34 = (v13 + 24 * *(v12 + 4 * v26));
    }

    else
    {
      v34 = *v28;
    }

    if (v33 >= v31)
    {
      v35 = v31;
    }

    else
    {
      v35 = v33;
    }

    result = memcmp(v32, v34, v35);
    v36 = v31 < v33;
    if (result)
    {
      v36 = result < 0;
    }

    if (v36)
    {
      *a2 = v25;
      *a3 = v26;
      v37 = *a2;
      v38 = *a1;
      v39 = (v13 + 24 * *(v12 + 4 * v37));
      v40 = (v13 + 24 * *(v12 + 4 * v38));
      v41 = *(v40 + 23);
      v42 = *(v39 + 23);
      if (v42 >= 0)
      {
        v43 = *(v39 + 23);
      }

      else
      {
        v43 = v39[1];
      }

      if (v42 >= 0)
      {
        v44 = v39;
      }

      else
      {
        v44 = *v39;
      }

      if (v41 >= 0)
      {
        v45 = *(v40 + 23);
      }

      else
      {
        v45 = v40[1];
      }

      if (v41 >= 0)
      {
        v46 = v40;
      }

      else
      {
        v46 = *v40;
      }

      if (v45 >= v43)
      {
        v47 = v43;
      }

      else
      {
        v47 = v45;
      }

      result = memcmp(v44, v46, v47);
      v48 = v43 < v45;
      if (result)
      {
        v48 = result < 0;
      }

      if (v48)
      {
        *a1 = v37;
        *a2 = v38;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,0>(int *a1, int *a2, int *a3, int *a4, int *a5, uint64_t a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,0>(a1, a2, a3, a4, a6);
  v11 = *a5;
  v12 = *a4;
  v13 = *(*a6 + 224);
  v14 = *(*a6 + 200);
  v15 = v14 + 24 * *(v13 + 4 * v11);
  v16 = v14 + 24 * *(v13 + 4 * v12);
  v17 = *(v16 + 23);
  v18 = *(v15 + 23);
  if (v18 >= 0)
  {
    v19 = *(v15 + 23);
  }

  else
  {
    v19 = *(v15 + 8);
  }

  if (v18 >= 0)
  {
    v20 = (v14 + 24 * *(v13 + 4 * v11));
  }

  else
  {
    v20 = *v15;
  }

  if (v17 >= 0)
  {
    v21 = *(v16 + 23);
  }

  else
  {
    v21 = *(v16 + 8);
  }

  if (v17 >= 0)
  {
    v22 = (v14 + 24 * *(v13 + 4 * v12));
  }

  else
  {
    v22 = *v16;
  }

  if (v21 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v21;
  }

  result = memcmp(v20, v22, v23);
  v25 = v19 < v21;
  if (result)
  {
    v25 = result < 0;
  }

  if (v25)
  {
    *a4 = v11;
    *a5 = v12;
    v26 = *a4;
    v27 = *a3;
    v28 = v14 + 24 * *(v13 + 4 * v26);
    v29 = v14 + 24 * *(v13 + 4 * v27);
    v30 = *(v29 + 23);
    v31 = *(v28 + 23);
    if (v31 >= 0)
    {
      v32 = *(v28 + 23);
    }

    else
    {
      v32 = *(v28 + 8);
    }

    if (v31 >= 0)
    {
      v33 = (v14 + 24 * *(v13 + 4 * v26));
    }

    else
    {
      v33 = *v28;
    }

    if (v30 >= 0)
    {
      v34 = *(v29 + 23);
    }

    else
    {
      v34 = *(v29 + 8);
    }

    if (v30 >= 0)
    {
      v35 = (v14 + 24 * *(v13 + 4 * v27));
    }

    else
    {
      v35 = *v29;
    }

    if (v34 >= v32)
    {
      v36 = v32;
    }

    else
    {
      v36 = v34;
    }

    result = memcmp(v33, v35, v36);
    v37 = v32 < v34;
    if (result)
    {
      v37 = result < 0;
    }

    if (v37)
    {
      *a3 = v26;
      *a4 = v27;
      v38 = *a3;
      v39 = *a2;
      v40 = v14 + 24 * *(v13 + 4 * v38);
      v41 = v14 + 24 * *(v13 + 4 * v39);
      v42 = *(v41 + 23);
      v43 = *(v40 + 23);
      if (v43 >= 0)
      {
        v44 = *(v40 + 23);
      }

      else
      {
        v44 = *(v40 + 8);
      }

      if (v43 >= 0)
      {
        v45 = (v14 + 24 * *(v13 + 4 * v38));
      }

      else
      {
        v45 = *v40;
      }

      if (v42 >= 0)
      {
        v46 = *(v41 + 23);
      }

      else
      {
        v46 = *(v41 + 8);
      }

      if (v42 >= 0)
      {
        v47 = (v14 + 24 * *(v13 + 4 * v39));
      }

      else
      {
        v47 = *v41;
      }

      if (v46 >= v44)
      {
        v48 = v44;
      }

      else
      {
        v48 = v46;
      }

      result = memcmp(v45, v47, v48);
      v49 = v44 < v46;
      if (result)
      {
        v49 = result < 0;
      }

      if (v49)
      {
        *a2 = v38;
        *a3 = v39;
        v50 = *a2;
        v51 = *a1;
        v52 = v14 + 24 * *(v13 + 4 * v50);
        v53 = v14 + 24 * *(v13 + 4 * v51);
        v54 = *(v53 + 23);
        v55 = *(v52 + 23);
        if (v55 >= 0)
        {
          v56 = *(v52 + 23);
        }

        else
        {
          v56 = *(v52 + 8);
        }

        if (v55 >= 0)
        {
          v57 = (v14 + 24 * *(v13 + 4 * v50));
        }

        else
        {
          v57 = *v52;
        }

        if (v54 >= 0)
        {
          v58 = *(v53 + 23);
        }

        else
        {
          v58 = *(v53 + 8);
        }

        if (v54 >= 0)
        {
          v59 = (v14 + 24 * *(v13 + 4 * v51));
        }

        else
        {
          v59 = *v53;
        }

        if (v58 >= v56)
        {
          v60 = v56;
        }

        else
        {
          v60 = v58;
        }

        result = memcmp(v57, v59, v60);
        v61 = v56 < v58;
        if (result)
        {
          v61 = result < 0;
        }

        if (v61)
        {
          *a1 = v50;
          *a2 = v51;
        }
      }
    }
  }

  return result;
}

int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *>(int *result, int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = a2;
    v4 = result;
    v5 = result + 1;
    if (result + 1 != a2)
    {
      v34 = 0;
      v6 = *(*a3 + 224);
      v7 = *(*a3 + 200);
      v8 = result;
      do
      {
        v9 = v8[1];
        v10 = *v8;
        v8 = v5;
        v11 = v7 + 24 * *(v6 + 4 * v9);
        v12 = v7 + 24 * *(v6 + 4 * v10);
        v13 = *(v12 + 23);
        v14 = *(v11 + 23);
        if (v14 >= 0)
        {
          v15 = *(v11 + 23);
        }

        else
        {
          v15 = *(v11 + 8);
        }

        if (v14 >= 0)
        {
          v16 = (v7 + 24 * *(v6 + 4 * v9));
        }

        else
        {
          v16 = *v11;
        }

        if (v13 >= 0)
        {
          v17 = *(v12 + 23);
        }

        else
        {
          v17 = *(v12 + 8);
        }

        if (v13 >= 0)
        {
          v18 = (v7 + 24 * *(v6 + 4 * v10));
        }

        else
        {
          v18 = *v12;
        }

        if (v17 >= v15)
        {
          v19 = v15;
        }

        else
        {
          v19 = v17;
        }

        result = memcmp(v16, v18, v19);
        v20 = v15 < v17;
        if (result)
        {
          v20 = result < 0;
        }

        if (v20)
        {
          v21 = v34;
          while (1)
          {
            *(v4 + v21 + 4) = v10;
            if (!v21)
            {
              break;
            }

            v10 = *(v4 + v21 - 4);
            v22 = v7 + 24 * *(v6 + 4 * v9);
            v23 = v7 + 24 * *(v6 + 4 * v10);
            v24 = *(v23 + 23);
            v25 = *(v22 + 23);
            if (v25 >= 0)
            {
              v26 = *(v22 + 23);
            }

            else
            {
              v26 = *(v22 + 8);
            }

            if (v25 >= 0)
            {
              v27 = (v7 + 24 * *(v6 + 4 * v9));
            }

            else
            {
              v27 = *v22;
            }

            if (v24 >= 0)
            {
              v28 = *(v23 + 23);
            }

            else
            {
              v28 = *(v23 + 8);
            }

            if (v24 >= 0)
            {
              v29 = (v7 + 24 * *(v6 + 4 * v10));
            }

            else
            {
              v29 = *v23;
            }

            if (v28 >= v26)
            {
              v30 = v26;
            }

            else
            {
              v30 = v28;
            }

            result = memcmp(v27, v29, v30);
            v31 = v26 < v28;
            if (result)
            {
              v31 = result < 0;
            }

            v21 -= 4;
            if (!v31)
            {
              v32 = (v4 + v21 + 4);
              goto LABEL_44;
            }
          }

          v32 = v4;
LABEL_44:
          v3 = a2;
          *v32 = v9;
        }

        v5 = v8 + 1;
        v34 += 4;
      }

      while (v8 + 1 != v3);
    }
  }

  return result;
}

int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *>(int *result, int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 1;
    if (result + 1 != a2)
    {
      v6 = *(*a3 + 224);
      v7 = *(*a3 + 200);
      do
      {
        v8 = v4[1];
        v9 = *v4;
        v4 = v5;
        v10 = v7 + 24 * *(v6 + 4 * v8);
        v11 = v7 + 24 * *(v6 + 4 * v9);
        v12 = *(v11 + 23);
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = *(v10 + 8);
        }

        if (v13 >= 0)
        {
          v15 = (v7 + 24 * *(v6 + 4 * v8));
        }

        else
        {
          v15 = *v10;
        }

        if (v12 >= 0)
        {
          v16 = *(v11 + 23);
        }

        else
        {
          v16 = *(v11 + 8);
        }

        if (v12 >= 0)
        {
          v17 = (v7 + 24 * *(v6 + 4 * v9));
        }

        else
        {
          v17 = *v11;
        }

        if (v16 >= v14)
        {
          v18 = v14;
        }

        else
        {
          v18 = v16;
        }

        result = memcmp(v15, v17, v18);
        v19 = v14 < v16;
        if (result)
        {
          v19 = result < 0;
        }

        if (v19)
        {
          v20 = v4;
          do
          {
            *v20 = v9;
            v9 = *(v20 - 2);
            v21 = v7 + 24 * *(v6 + 4 * v8);
            v22 = v7 + 24 * *(v6 + 4 * v9);
            v23 = *(v22 + 23);
            v24 = *(v21 + 23);
            if (v24 >= 0)
            {
              v25 = *(v21 + 23);
            }

            else
            {
              v25 = *(v21 + 8);
            }

            if (v24 >= 0)
            {
              v26 = (v7 + 24 * *(v6 + 4 * v8));
            }

            else
            {
              v26 = *v21;
            }

            if (v23 >= 0)
            {
              v27 = *(v22 + 23);
            }

            else
            {
              v27 = *(v22 + 8);
            }

            if (v23 >= 0)
            {
              v28 = (v7 + 24 * *(v6 + 4 * v9));
            }

            else
            {
              v28 = *v22;
            }

            if (v27 >= v25)
            {
              v29 = v25;
            }

            else
            {
              v29 = v27;
            }

            result = memcmp(v26, v28, v29);
            v30 = v25 < v27;
            if (result)
            {
              v30 = result < 0;
            }

            --v20;
          }

          while (v30);
          *v20 = v8;
        }

        v5 = v4 + 1;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,int *,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &>(int *a1, int *a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*a3 + 224);
  v67 = *a1;
  v6 = *(*a3 + 200);
  v7 = v6 + 24 * *(v5 + 4 * *a1);
  v8 = v6 + 24 * *(v5 + 4 * *(a2 - 1));
  v9 = *(v8 + 23);
  v10 = *(v7 + 23);
  if (v10 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  if (v10 >= 0)
  {
    v12 = (v6 + 24 * *(v5 + 4 * v67));
  }

  else
  {
    v12 = *v7;
  }

  if (v9 >= 0)
  {
    v13 = *(v8 + 23);
  }

  else
  {
    v13 = *(v8 + 8);
  }

  if (v9 >= 0)
  {
    v14 = (v6 + 24 * *(v5 + 4 * *(a2 - 1)));
  }

  else
  {
    v14 = *v8;
  }

  if (v13 >= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = memcmp(v12, v14, v15);
  v17 = v11 < v13;
  if (v16)
  {
    v17 = v16 < 0;
  }

  if (v17)
  {
    v18 = a1;
    do
    {
      v19 = v18[1];
      ++v18;
      v20 = (v6 + 24 * *(v5 + 4 * v19));
      v21 = *(v20 + 23);
      if (v21 >= 0)
      {
        v22 = *(v20 + 23);
      }

      else
      {
        v22 = v20[1];
      }

      if (v21 >= 0)
      {
        v23 = v20;
      }

      else
      {
        v23 = *v20;
      }

      if (v22 >= v11)
      {
        v24 = v11;
      }

      else
      {
        v24 = v22;
      }

      v25 = memcmp(v12, v23, v24);
      v26 = v11 < v22;
      if (v25)
      {
        v26 = v25 < 0;
      }
    }

    while (!v26);
  }

  else
  {
    v27 = a1 + 1;
    do
    {
      v18 = v27;
      if (v27 >= v3)
      {
        break;
      }

      ++v27;
      v28 = v6 + 24 * *(v5 + 4 * *v18);
      v29 = *(v28 + 23);
      if (v29 >= 0)
      {
        v30 = *(v28 + 23);
      }

      else
      {
        v30 = *(v28 + 8);
      }

      if (v29 >= 0)
      {
        v31 = (v6 + 24 * *(v5 + 4 * *v18));
      }

      else
      {
        v31 = *v28;
      }

      if (v30 >= v11)
      {
        v32 = v11;
      }

      else
      {
        v32 = v30;
      }

      v33 = memcmp(v12, v31, v32);
      v34 = v11 < v30;
      if (v33)
      {
        v34 = v33 < 0;
      }
    }

    while (!v34);
  }

  if (v18 < v3)
  {
    do
    {
      v35 = *--v3;
      v36 = (v6 + 24 * *(v5 + 4 * v35));
      v37 = *(v36 + 23);
      if (v37 >= 0)
      {
        v38 = *(v36 + 23);
      }

      else
      {
        v38 = v36[1];
      }

      if (v37 >= 0)
      {
        v39 = v36;
      }

      else
      {
        v39 = *v36;
      }

      if (v38 >= v11)
      {
        v40 = v11;
      }

      else
      {
        v40 = v38;
      }

      v41 = memcmp(v12, v39, v40);
      v42 = v11 < v38;
      if (v41)
      {
        v42 = v41 < 0;
      }
    }

    while (v42);
  }

  v66 = a1;
  if (v18 < v3)
  {
    v43 = *v18;
    v44 = *v3;
    do
    {
      *v18 = v44;
      *v3 = v43;
      v45 = v6 + 24 * *(v5 + 4 * v67);
      v46 = *(v45 + 23);
      if (v46 >= 0)
      {
        v47 = *(v45 + 23);
      }

      else
      {
        v47 = *(v45 + 8);
      }

      if (v46 >= 0)
      {
        v48 = (v6 + 24 * *(v5 + 4 * v67));
      }

      else
      {
        v48 = *v45;
      }

      do
      {
        v49 = v18[1];
        ++v18;
        v43 = v49;
        v50 = (v6 + 24 * *(v5 + 4 * v49));
        v51 = *(v50 + 23);
        if (v51 >= 0)
        {
          v52 = *(v50 + 23);
        }

        else
        {
          v52 = v50[1];
        }

        if (v51 >= 0)
        {
          v53 = v50;
        }

        else
        {
          v53 = *v50;
        }

        if (v52 >= v47)
        {
          v54 = v47;
        }

        else
        {
          v54 = v52;
        }

        v55 = memcmp(v48, v53, v54);
        v56 = v47 < v52;
        if (v55)
        {
          v56 = v55 < 0;
        }
      }

      while (!v56);
      do
      {
        v57 = *--v3;
        v44 = v57;
        v58 = (v6 + 24 * *(v5 + 4 * v57));
        v59 = *(v58 + 23);
        if (v59 >= 0)
        {
          v60 = *(v58 + 23);
        }

        else
        {
          v60 = v58[1];
        }

        if (v59 >= 0)
        {
          v61 = v58;
        }

        else
        {
          v61 = *v58;
        }

        if (v60 >= v47)
        {
          v62 = v47;
        }

        else
        {
          v62 = v60;
        }

        v63 = memcmp(v48, v61, v62);
        v64 = v47 < v60;
        if (v63)
        {
          v64 = v63 < 0;
        }
      }

      while (v64);
    }

    while (v18 < v3);
  }

  if (v18 - 1 != v66)
  {
    *v66 = *(v18 - 1);
  }

  *(v18 - 1) = v67;
  return v18;
}

_DWORD *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,int *,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &>(int *a1, _DWORD *a2, uint64_t a3)
{
  v4 = a1;
  v5 = 0;
  v6 = *(*a3 + 224);
  v7 = *(*a3 + 200);
  v64 = *a1;
  v8 = v7 + 24 * *(v6 + 4 * *a1);
  v9 = *(v8 + 23);
  if (v9 >= 0)
  {
    v10 = *(v8 + 23);
  }

  else
  {
    v10 = *(v8 + 8);
  }

  if (v9 >= 0)
  {
    v11 = (v7 + 24 * *(v6 + 4 * v64));
  }

  else
  {
    v11 = *v8;
  }

  do
  {
    v12 = v4[v5 + 1];
    v13 = v7 + 24 * *(v6 + 4 * v12);
    v14 = *(v13 + 23);
    if (v14 >= 0)
    {
      v15 = *(v13 + 23);
    }

    else
    {
      v15 = *(v13 + 8);
    }

    if (v14 >= 0)
    {
      v16 = (v7 + 24 * *(v6 + 4 * v12));
    }

    else
    {
      v16 = *v13;
    }

    if (v10 >= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v10;
    }

    v18 = memcmp(v16, v11, v17);
    v19 = v15 < v10;
    if (v18)
    {
      v19 = v18 < 0;
    }

    ++v5;
  }

  while (v19);
  v63 = &v4[v5];
  v20 = &v4[v5 - 1];
  if (v5 == 1)
  {
    do
    {
      if (v63 >= a2)
      {
        break;
      }

      v29 = *--a2;
      v30 = (v7 + 24 * *(v6 + 4 * v29));
      v31 = *(v30 + 23);
      if (v31 >= 0)
      {
        v32 = *(v30 + 23);
      }

      else
      {
        v32 = v30[1];
      }

      if (v31 >= 0)
      {
        v33 = v30;
      }

      else
      {
        v33 = *v30;
      }

      if (v10 >= v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = v10;
      }

      v35 = memcmp(v33, v11, v34);
      v36 = v32 < v10;
      if (v35)
      {
        v36 = v35 < 0;
      }
    }

    while (!v36);
  }

  else
  {
    do
    {
      v21 = *--a2;
      v22 = (v7 + 24 * *(v6 + 4 * v21));
      v23 = *(v22 + 23);
      if (v23 >= 0)
      {
        v24 = *(v22 + 23);
      }

      else
      {
        v24 = v22[1];
      }

      if (v23 >= 0)
      {
        v25 = v22;
      }

      else
      {
        v25 = *v22;
      }

      if (v10 >= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v10;
      }

      v27 = memcmp(v25, v11, v26);
      v28 = v24 < v10;
      if (v27)
      {
        v28 = v27 < 0;
      }
    }

    while (!v28);
  }

  if (v63 < a2)
  {
    v62 = v4;
    v37 = *a2;
    v38 = v12;
    v39 = v63;
    v40 = a2;
    do
    {
      *v39 = v37;
      *v40 = v38;
      v41 = v7 + 24 * *(v6 + 4 * v64);
      v42 = *(v41 + 23);
      if (v42 >= 0)
      {
        v43 = *(v41 + 23);
      }

      else
      {
        v43 = *(v41 + 8);
      }

      if (v42 >= 0)
      {
        v44 = (v7 + 24 * *(v6 + 4 * v64));
      }

      else
      {
        v44 = *v41;
      }

      do
      {
        v45 = v39[1];
        ++v39;
        v38 = v45;
        v46 = (v7 + 24 * *(v6 + 4 * v45));
        v47 = *(v46 + 23);
        if (v47 >= 0)
        {
          v48 = *(v46 + 23);
        }

        else
        {
          v48 = v46[1];
        }

        if (v47 >= 0)
        {
          v49 = v46;
        }

        else
        {
          v49 = *v46;
        }

        if (v43 >= v48)
        {
          v50 = v48;
        }

        else
        {
          v50 = v43;
        }

        v51 = memcmp(v49, v44, v50);
        v52 = v48 < v43;
        if (v51)
        {
          v52 = v51 < 0;
        }
      }

      while (v52);
      do
      {
        v53 = *--v40;
        v37 = v53;
        v54 = (v7 + 24 * *(v6 + 4 * v53));
        v55 = *(v54 + 23);
        if (v55 >= 0)
        {
          v56 = *(v54 + 23);
        }

        else
        {
          v56 = v54[1];
        }

        if (v55 >= 0)
        {
          v57 = v54;
        }

        else
        {
          v57 = *v54;
        }

        if (v43 >= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = v43;
        }

        v59 = memcmp(v57, v44, v58);
        v60 = v56 < v43;
        if (v59)
        {
          v60 = v59 < 0;
        }
      }

      while (!v60);
    }

    while (v39 < v40);
    v20 = v39 - 1;
    v4 = v62;
  }

  if (v20 != v4)
  {
    *v4 = *v20;
  }

  *v20 = v64;
  return v20;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *>(int *a1, int *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *(a2 - 1);
        v8 = *a1;
        v9 = *(*a3 + 224);
        v10 = *(*a3 + 200);
        v11 = (v10 + 24 * *(v9 + 4 * v7));
        v12 = (v10 + 24 * *(v9 + 4 * v8));
        v13 = *(v12 + 23);
        v14 = *(v11 + 23);
        if (v14 >= 0)
        {
          v15 = *(v11 + 23);
        }

        else
        {
          v15 = v11[1];
        }

        if (v14 >= 0)
        {
          v16 = v11;
        }

        else
        {
          v16 = *v11;
        }

        if (v13 >= 0)
        {
          v17 = *(v12 + 23);
        }

        else
        {
          v17 = v12[1];
        }

        if (v13 >= 0)
        {
          v18 = v12;
        }

        else
        {
          v18 = *v12;
        }

        if (v17 >= v15)
        {
          v19 = v15;
        }

        else
        {
          v19 = v17;
        }

        v20 = memcmp(v16, v18, v19);
        v21 = v15 < v17;
        if (v20)
        {
          v21 = v20 < 0;
        }

        if (v21)
        {
          *a1 = v7;
          *(a2 - 1) = v8;
        }

        return 1;
      }

      goto LABEL_28;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,0>(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_28:
  v22 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,0>(a1, a1 + 1, a1 + 2, a3);
  v23 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v57 = 0;
  v24 = *a3;
  v25 = *(*a3 + 224);
  v26 = *(v24 + 200);
  v27 = 12;
  v58 = a2;
  while (1)
  {
    v28 = *v23;
    v29 = *v22;
    v30 = v26 + 24 * *(v25 + 4 * *v23);
    v31 = v26 + 24 * *(v25 + 4 * v29);
    v32 = *(v31 + 23);
    v33 = *(v30 + 23);
    if (v33 >= 0)
    {
      v34 = *(v30 + 23);
    }

    else
    {
      v34 = *(v30 + 8);
    }

    if (v33 >= 0)
    {
      v35 = (v26 + 24 * *(v25 + 4 * v28));
    }

    else
    {
      v35 = *v30;
    }

    if (v32 >= 0)
    {
      v36 = *(v31 + 23);
    }

    else
    {
      v36 = *(v31 + 8);
    }

    if (v32 >= 0)
    {
      v37 = (v26 + 24 * *(v25 + 4 * v29));
    }

    else
    {
      v37 = *v31;
    }

    if (v36 >= v34)
    {
      v38 = v34;
    }

    else
    {
      v38 = v36;
    }

    v39 = memcmp(v35, v37, v38);
    v40 = v34 < v36;
    if (v39)
    {
      v40 = v39 < 0;
    }

    if (v40)
    {
      v56 = v23;
      v41 = v27;
      while (1)
      {
        *(a1 + v41) = v29;
        v42 = v41 - 4;
        if (v41 == 4)
        {
          break;
        }

        v29 = *(a1 + v41 - 8);
        v43 = v26 + 24 * *(v25 + 4 * v28);
        v44 = v26 + 24 * *(v25 + 4 * v29);
        v45 = *(v44 + 23);
        v46 = *(v43 + 23);
        if (v46 >= 0)
        {
          v47 = *(v43 + 23);
        }

        else
        {
          v47 = *(v43 + 8);
        }

        if (v46 >= 0)
        {
          v48 = (v26 + 24 * *(v25 + 4 * v28));
        }

        else
        {
          v48 = *v43;
        }

        if (v45 >= 0)
        {
          v49 = *(v44 + 23);
        }

        else
        {
          v49 = *(v44 + 8);
        }

        if (v45 >= 0)
        {
          v50 = (v26 + 24 * *(v25 + 4 * v29));
        }

        else
        {
          v50 = *v44;
        }

        if (v49 >= v47)
        {
          v51 = v47;
        }

        else
        {
          v51 = v49;
        }

        v52 = memcmp(v48, v50, v51);
        v53 = v52 < 0;
        if (!v52)
        {
          v53 = v47 < v49;
        }

        v41 = v42;
        if (!v53)
        {
          v54 = (a1 + v42);
          goto LABEL_70;
        }
      }

      v54 = a1;
LABEL_70:
      v23 = v56;
      *v54 = v28;
      if (++v57 == 8)
      {
        return v56 + 1 == v58;
      }
    }

    v22 = v23;
    v27 += 4;
    if (++v23 == v58)
    {
      return 1;
    }
  }
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,int *>(int *a1, int *a2, int *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    v33 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        v15 = *(*a4 + 224);
        v16 = *(*a4 + 200);
        v17 = (v16 + 24 * *(v15 + 4 * v13));
        v18 = (v16 + 24 * *(v15 + 4 * v14));
        v19 = *(v18 + 23);
        v20 = *(v17 + 23);
        if (v20 >= 0)
        {
          v21 = *(v17 + 23);
        }

        else
        {
          v21 = v17[1];
        }

        if (v20 >= 0)
        {
          v22 = v17;
        }

        else
        {
          v22 = *v17;
        }

        if (v19 >= 0)
        {
          v23 = *(v18 + 23);
        }

        else
        {
          v23 = v18[1];
        }

        if (v19 >= 0)
        {
          v24 = v18;
        }

        else
        {
          v24 = *v18;
        }

        if (v23 >= v21)
        {
          v25 = v21;
        }

        else
        {
          v25 = v23;
        }

        v26 = memcmp(v22, v24, v25);
        v27 = v21 < v23;
        if (v26)
        {
          v27 = v26 < 0;
        }

        if (v27)
        {
          *v12 = v14;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v28 = v33 - 1;
      do
      {
        v29 = *a1;
        v30 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *>(a1, a4, v8);
        if (v28 == v30)
        {
          *v30 = v29;
        }

        else
        {
          *v30 = *v28;
          *v28 = v29;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *>(a1, (v30 + 1), a4, v30 + 1 - a1);
        }

        --v28;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v76 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 2)
    {
      v8 = (a4 - result) >> 1;
      v9 = v8 + 1;
      v10 = (result + 4 * (v8 + 1));
      v11 = v8 + 2;
      if (v8 + 2 >= a3)
      {
        v75 = (result + 4 * (v8 + 1));
        v12 = *(*a2 + 224);
        v25 = *(*a2 + 200);
        v28 = *v10;
      }

      else
      {
        v71 = v10[1];
        v73 = *v10;
        v12 = *(*a2 + 224);
        v13 = *(*a2 + 200);
        v14 = v13 + 24 * *(v12 + 4 * *v10);
        v15 = v13 + 24 * *(v12 + 4 * v71);
        v16 = *(v15 + 23);
        v17 = *(v14 + 23);
        if (v17 >= 0)
        {
          v18 = *(v14 + 23);
        }

        else
        {
          v18 = *(v14 + 8);
        }

        if (v17 >= 0)
        {
          v19 = (v13 + 24 * *(v12 + 4 * *v10));
        }

        else
        {
          v19 = *v14;
        }

        if (v16 >= 0)
        {
          v20 = *(v15 + 23);
        }

        else
        {
          v20 = *(v15 + 8);
        }

        if (v16 >= 0)
        {
          v21 = (v13 + 24 * *(v12 + 4 * v71));
        }

        else
        {
          v21 = *v15;
        }

        if (v20 >= v18)
        {
          v22 = v18;
        }

        else
        {
          v22 = v20;
        }

        v23 = memcmp(v19, v21, v22);
        v24 = v18 >= v20;
        v25 = v13;
        v26 = !v24;
        if (v23)
        {
          v26 = v23 < 0;
        }

        v27 = !v26;
        if (v26)
        {
          v28 = v71;
        }

        else
        {
          v28 = v73;
        }

        if (!v27)
        {
          ++v10;
        }

        v75 = v10;
        if (!v27)
        {
          v9 = v11;
        }
      }

      v29 = v28;
      v74 = *v5;
      v30 = (v25 + 24 * *(v12 + 4 * v28));
      v31 = v25 + 24 * *(v12 + 4 * *v5);
      v32 = *(v31 + 23);
      v33 = *(v30 + 23);
      if (v33 >= 0)
      {
        v34 = *(v30 + 23);
      }

      else
      {
        v34 = v30[1];
      }

      if (v33 >= 0)
      {
        v35 = v30;
      }

      else
      {
        v35 = *v30;
      }

      if (v32 >= 0)
      {
        v36 = *(v31 + 23);
      }

      else
      {
        v36 = *(v31 + 8);
      }

      if (v32 >= 0)
      {
        v37 = (v25 + 24 * *(v12 + 4 * v74));
      }

      else
      {
        v37 = *v31;
      }

      if (v36 >= v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = v36;
      }

      result = memcmp(v35, v37, v38);
      v39 = v34 < v36;
      if (result)
      {
        v39 = result < 0;
      }

      if (!v39)
      {
        v40 = v12;
        v72 = v25;
        v41 = v75;
        v42 = v29;
        v69 = v40;
        do
        {
          v43 = v41;
          *v5 = v42;
          if (v76 < v9)
          {
            break;
          }

          v44 = (2 * v9) | 1;
          v41 = (v6 + 4 * v44);
          v9 = 2 * v9 + 2;
          v45 = *v41;
          if (v9 >= a3)
          {
            v9 = v44;
            v47 = v72;
          }

          else
          {
            v46 = v41 + 1;
            v70 = v41[1];
            v47 = v72;
            v48 = v72 + 24 * *(v40 + 4 * v45);
            v49 = (v72 + 24 * *(v40 + 4 * v70));
            v50 = *(v49 + 23);
            v51 = *(v48 + 23);
            if (v51 >= 0)
            {
              v52 = *(v48 + 23);
            }

            else
            {
              v52 = *(v48 + 8);
            }

            if (v51 >= 0)
            {
              v53 = (v72 + 24 * *(v40 + 4 * v45));
            }

            else
            {
              v53 = *v48;
            }

            if (v50 >= 0)
            {
              v54 = *(v49 + 23);
            }

            else
            {
              v54 = v49[1];
            }

            if (v50 >= 0)
            {
              v55 = v49;
            }

            else
            {
              v55 = *v49;
            }

            if (v54 >= v52)
            {
              v56 = v52;
            }

            else
            {
              v56 = v54;
            }

            v57 = memcmp(v53, v55, v56);
            v24 = v52 >= v54;
            v41 = (v6 + 4 * v44);
            v58 = !v24;
            if (v57)
            {
              v58 = v57 < 0;
            }

            v40 = v69;
            if (v58)
            {
              v45 = v70;
              v41 = v46;
            }

            else
            {
              v9 = v44;
            }
          }

          v59 = v47 + 24 * *(v40 + 4 * v45);
          v60 = v47 + 24 * *(v40 + 4 * v74);
          v61 = *(v60 + 23);
          v62 = *(v59 + 23);
          v42 = v45;
          v63 = v62 >= 0 ? *(v59 + 23) : *(v59 + 8);
          v64 = v62 >= 0 ? v59 : *v59;
          v65 = v61 >= 0 ? *(v60 + 23) : *(v60 + 8);
          v66 = v61 >= 0 ? v60 : *v60;
          v67 = v65 >= v63 ? v63 : v65;
          result = memcmp(v64, v66, v67);
          v68 = v63 < v65;
          if (result)
          {
            v68 = result < 0;
          }

          v5 = v43;
        }

        while (!v68);
        *v43 = v74;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *>(_DWORD *a1, uint64_t *a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  v29 = *a2;
  v30 = v6;
  do
  {
    v7 = &a1[v5];
    v8 = v7 + 1;
    v9 = v7[1];
    v10 = (2 * v5) | 1;
    v11 = 2 * v5 + 2;
    if (v11 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v14 = v7[2];
      v13 = v7 + 2;
      v12 = v14;
      v15 = *(v29 + 224);
      v16 = *(v29 + 200);
      v17 = (v16 + 24 * *(v15 + 4 * v9));
      v18 = (v16 + 24 * *(v15 + 4 * v14));
      v19 = *(v18 + 23);
      v20 = *(v17 + 23);
      if (v20 >= 0)
      {
        v21 = *(v17 + 23);
      }

      else
      {
        v21 = v17[1];
      }

      if (v20 >= 0)
      {
        v22 = v17;
      }

      else
      {
        v22 = *v17;
      }

      if (v19 >= 0)
      {
        v23 = *(v18 + 23);
      }

      else
      {
        v23 = v18[1];
      }

      if (v19 >= 0)
      {
        v24 = v18;
      }

      else
      {
        v24 = *v18;
      }

      if (v23 >= v21)
      {
        v25 = v21;
      }

      else
      {
        v25 = v23;
      }

      v26 = memcmp(v22, v24, v25);
      v6 = v30;
      v27 = v21 < v23;
      if (v26)
      {
        v27 = v26 < 0;
      }

      if (v27)
      {
        v9 = v12;
        v8 = v13;
        v5 = v11;
      }

      else
      {
        v5 = v10;
      }
    }

    *a1 = v9;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = (result + 4 * (v4 >> 1));
    v8 = *v7;
    v9 = (a2 - 4);
    v10 = *(*a3 + 224);
    v11 = *(*a3 + 200);
    v34 = *(a2 - 4);
    v12 = v11 + 24 * *(v10 + 4 * v8);
    v13 = v11 + 24 * *(v10 + 4 * v34);
    v14 = *(v13 + 23);
    v15 = *(v12 + 23);
    if (v15 >= 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = *(v12 + 8);
    }

    if (v15 >= 0)
    {
      v17 = (v11 + 24 * *(v10 + 4 * v8));
    }

    else
    {
      v17 = *v12;
    }

    if (v14 >= 0)
    {
      v18 = *(v13 + 23);
    }

    else
    {
      v18 = *(v13 + 8);
    }

    if (v14 >= 0)
    {
      v19 = (v11 + 24 * *(v10 + 4 * v34));
    }

    else
    {
      v19 = *v13;
    }

    if (v18 >= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v18;
    }

    result = memcmp(v17, v19, v20);
    v21 = v16 < v18;
    if (result)
    {
      v21 = result < 0;
    }

    if (v21)
    {
      LODWORD(v22) = v8;
      do
      {
        v23 = v7;
        *v9 = v22;
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (v5 + 4 * v6);
        v22 = *v7;
        v24 = v11 + 24 * *(v10 + 4 * v22);
        v25 = v11 + 24 * *(v10 + 4 * v34);
        v26 = *(v25 + 23);
        v27 = *(v24 + 23);
        v28 = v27 >= 0 ? *(v24 + 23) : *(v24 + 8);
        v29 = v27 >= 0 ? (v11 + 24 * *(v10 + 4 * v22)) : *v24;
        v30 = v26 >= 0 ? *(v25 + 23) : *(v25 + 8);
        v31 = v26 >= 0 ? (v11 + 24 * *(v10 + 4 * v34)) : *v25;
        v32 = v30 >= v28 ? v28 : v30;
        result = memcmp(v29, v31, v32);
        v33 = v28 < v30;
        if (result)
        {
          v33 = result < 0;
        }

        v9 = v23;
      }

      while (v33);
      *v23 = v34;
    }
  }

  return result;
}

uint64_t *std::shared_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::shared_ptr[abi:ne200100]<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::default_delete<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,0>(uint64_t *result, uint64_t *a2)
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

void std::__shared_ptr_pointer<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1B579A34C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B579A404(_Unwind_Exception *a1)
{
  *v2 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v1);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,0>(uint64_t a1)
{
  std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::vector<std::vector<std::string>>::vector[abi:ne200100]<std::__tree_const_iterator<std::vector<std::string>,std::__tree_node<std::vector<std::string>,void *> *,long>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a3);
  }

  std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::__tree_const_iterator<std::vector<std::string>,std::__tree_node<std::vector<std::string>,void *> *,long>,std::__tree_const_iterator<std::vector<std::string>,std::__tree_node<std::vector<std::string>,void *> *,long>>(a1, a2, a3, v4);
  return a1;
}

uint64_t std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::__tree_const_iterator<std::vector<std::string>,std::__tree_node<std::vector<std::string>,void *> *,long>,std::__tree_const_iterator<std::vector<std::string>,std::__tree_node<std::vector<std::string>,void *> *,long>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B579A754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::string>>,std::__tree_const_iterator<std::vector<std::string>,std::__tree_node<std::vector<std::string>,void *> *,long>,std::__tree_const_iterator<std::vector<std::string>,std::__tree_node<std::vector<std::string>,void *> *,long>,std::vector<std::string>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4, v6[4], v6[5], 0xAAAAAAAAAAAAAAABLL * ((v6[5] - v6[4]) >> 3));
      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v4 = v14 + 3;
      v14 += 3;
      v6 = v8;
    }

    while (v8 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::string>>,std::vector<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::__move_assign(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

uint64_t std::__function::__value_func<BOOL ()(quasar::LmeDataFactoryBase::Word const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(quasar::LmeDataFactoryBase::Word const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::LmeDataFactoryBase::Word *,quasar::LmeDataFactoryBase::Word *,quasar::LmeDataFactoryBase::Word *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      if (*(a4 + 47) < 0)
      {
        operator delete(*(a4 + 24));
      }

      v8 = *(v5 + 24);
      *(a4 + 40) = *(v5 + 5);
      *(a4 + 24) = v8;
      *(v5 + 47) = 0;
      *(v5 + 24) = 0;
      *(a4 + 48) = *(v5 + 12);
      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::__move_assign(a4 + 56, v5 + 7);
      a4 += 80;
      v5 += 5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

__n128 std::__function::__func<std::__bind<BOOL (&)(quasar::LmeDataFactoryBase::Word const&,int),std::placeholders::__ph<1> const&,int &>,std::allocator<std::__bind<BOOL (&)(quasar::LmeDataFactoryBase::Word const&,int),std::placeholders::__ph<1> const&,int &>>,BOOL ()(quasar::LmeDataFactoryBase::Word const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D2FB58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<BOOL (&)(quasar::LmeDataFactoryBase::Word const&,int),std::placeholders::__ph<1> const&,int &>,std::allocator<std::__bind<BOOL (&)(quasar::LmeDataFactoryBase::Word const&,int),std::placeholders::__ph<1> const&,int &>>,BOOL ()(quasar::LmeDataFactoryBase::Word const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t **std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::__assign_multi<std::__tree_const_iterator<quasar::LmeDataFactoryBase::Word,std::__tree_node<quasar::LmeDataFactoryBase::Word,void *> *,long>>(uint64_t **result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          *(v8 + 20) = *(v9 + 20);
          if (v8 != v9)
          {
            std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__tree_node<std::__value_type<std::pair<quasar::PronType,std::string>,float>,void *> *,long>>(v8 + 11, v9[11], v9 + 12);
          }

          leaf_high = std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::__emplace_multi<quasar::LmeDataFactoryBase::Word const&>();
  }

  return result;
}

uint64_t **std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__tree_node<std::__value_type<std::pair<quasar::PronType,std::string>,float>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 8) = *(v9 + 8);
          std::string::operator=((v8 + 5), (v9 + 5));
          *(v8 + 16) = *(v9 + 16);
          leaf_high = std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::__find_leaf_high(v5, &v16, (v15 + 4));
          std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::__emplace_multi<std::pair<std::pair<quasar::PronType,std::string> const,float> const&>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::__find_leaf_high(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_1B579B018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::pair<quasar::PronType,std::string>,float>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::__find_leaf_high(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v5 = v4;
        v11 = v4[4];
        v9 = v4 + 4;
        v10 = v11;
        v12 = *(v9 + 23);
        v13 = v12 >= 0 ? *(v9 + 23) : v9[1];
        v14 = v12 >= 0 ? v9 : v10;
        v15 = (v13 >= v7 ? v7 : v13);
        v16 = memcmp(v8, v14, v15);
        v17 = v7 < v13;
        if (v16)
        {
          v17 = v16 < 0;
        }

        if (!v17)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_25;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_25:
  *a2 = v5;
  return result;
}

uint64_t std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_1B579B1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<quasar::LmeDataFactoryBase::Word,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B579B2A8(_Unwind_Exception *a1)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<quasar::LmeDataFactoryBase::Word,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<quasar::LmeDataFactoryBase::Word,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(a2 + 88, *(a2 + 96));
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }

    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void kaldi::quasar::SystemSelectionFeatureExtractor::PopulateFeatureList(uint64_t a1, uint64_t a2)
{
  v45[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 8) == *a2)
  {
    v4 = *a1;
    if (*a1 >= 1)
    {
      v5 = 0;
      v6 = (a1 + 32);
      v7 = *(a1 + 16);
      do
      {
        v8 = *(a1 + 8);
        ++v5;
        if (v8 != v7)
        {
          do
          {
            std::to_string(&v41, v5);
            v9 = std::string::insert(&v41, 0, "hyp");
            v10 = *&v9->__r_.__value_.__l.__data_;
            v42.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
            *&v42.__r_.__value_.__l.__data_ = v10;
            v9->__r_.__value_.__l.__size_ = 0;
            v9->__r_.__value_.__r.__words[2] = 0;
            v9->__r_.__value_.__r.__words[0] = 0;
            v11 = std::string::append(&v42, "_");
            v12 = *&v11->__r_.__value_.__l.__data_;
            v43.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
            *&v43.__r_.__value_.__l.__data_ = v12;
            v11->__r_.__value_.__l.__size_ = 0;
            v11->__r_.__value_.__r.__words[2] = 0;
            v11->__r_.__value_.__r.__words[0] = 0;
            v13 = *(v8 + 23);
            if (v13 >= 0)
            {
              v14 = v8;
            }

            else
            {
              v14 = *v8;
            }

            if (v13 >= 0)
            {
              v15 = *(v8 + 23);
            }

            else
            {
              v15 = *(v8 + 8);
            }

            v16 = std::string::append(&v43, v14, v15);
            v17 = v16->__r_.__value_.__r.__words[0];
            v45[0] = v16->__r_.__value_.__l.__size_;
            *(v45 + 7) = *(&v16->__r_.__value_.__r.__words[1] + 7);
            v18 = HIBYTE(v16->__r_.__value_.__r.__words[2]);
            v16->__r_.__value_.__l.__size_ = 0;
            v16->__r_.__value_.__r.__words[2] = 0;
            v16->__r_.__value_.__r.__words[0] = 0;
            v19 = *(a1 + 40);
            v20 = *(a1 + 48);
            if (v19 >= v20)
            {
              v23 = 0xAAAAAAAAAAAAAAABLL * ((v19 - *v6) >> 3);
              v24 = v23 + 1;
              if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v25 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *v6) >> 3);
              if (2 * v25 > v24)
              {
                v24 = 2 * v25;
              }

              if (v25 >= 0x555555555555555)
              {
                v26 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v26 = v24;
              }

              v44.__end_cap_.__value_ = (a1 + 32);
              if (v26)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1 + 32, v26);
              }

              v27 = 24 * v23;
              v28 = v45[0];
              *v27 = v17;
              *(v27 + 8) = v28;
              *(v27 + 15) = *(v45 + 7);
              *(v27 + 23) = v18;
              v45[0] = 0;
              *(v45 + 7) = 0;
              v22 = 24 * v23 + 24;
              v29 = *(a1 + 32);
              v30 = *(a1 + 40) - v29;
              v31 = (24 * v23 - v30);
              memcpy(v31, v29, v30);
              v32 = *(a1 + 32);
              *(a1 + 32) = v31;
              *(a1 + 40) = v22;
              v33 = *(a1 + 48);
              *(a1 + 48) = 0;
              v44.__end_ = v32;
              v44.__end_cap_.__value_ = v33;
              v44.__first_ = v32;
              v44.__begin_ = v32;
              std::__split_buffer<std::string>::~__split_buffer(&v44);
            }

            else
            {
              v21 = v45[0];
              *v19 = v17;
              *(v19 + 8) = v21;
              *(v19 + 15) = *(v45 + 7);
              *(v19 + 23) = v18;
              v22 = v19 + 24;
            }

            *(a1 + 40) = v22;
            if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v43.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v42.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v41.__r_.__value_.__l.__data_);
            }

            v8 += 24;
            v7 = *(a1 + 16);
          }

          while (v8 != v7);
          v4 = *a1;
        }
      }

      while (v5 < v4);
    }
  }

  else
  {
    kaldi::quasar::SystemSelectionFeatureExtractor::ValidateFeatureList(a1, a2);
    if (a1 + 32 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 32), *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    }
  }

  v34 = *(a1 + 32);
  v35 = *(a1 + 40);
  if (v34 == v35)
  {
    LOBYTE(v39) = 0;
  }

  else
  {
    v36 = v34 + 24;
    do
    {
      if (*(v36 - 1) < 0)
      {
        std::string::__init_copy_ctor_external(&v43, *(v36 - 24), *(v36 - 16));
      }

      else
      {
        v37 = *(v36 - 24);
        v43.__r_.__value_.__r.__words[2] = *(v36 - 8);
        *&v43.__r_.__value_.__l.__data_ = v37;
      }

      v38 = std::string::basic_string[abi:ne200100]<0>(&v44, "pct");
      v39 = kaldi::quasar::SystemSelectionFeatureExtractor::CheckIfStringEndsWith(v38, &v43, &v44.__first_);
      if (SHIBYTE(v44.__end_) < 0)
      {
        operator delete(v44.__first_);
      }

      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      v40 = v36 == v35 || v39;
      v36 += 24;
    }

    while (v40 != 1);
  }

  *(a1 + 60) = v39;
}

void sub_1B579B6E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::SystemSelectionFeatureExtractor::ValidateFeatureList(uint64_t a1, const std::string **a2)
{
  for (i = *a2; i != a2[1]; ++i)
  {
    std::string::basic_string(&v28, i, 0, 3uLL, v27);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v28.__r_.__value_.__l.__size_ != 3)
      {
        goto LABEL_58;
      }

      v5 = v28.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) != 3)
      {
        goto LABEL_58;
      }

      v5 = &v28;
    }

    data_low = LOWORD(v5->__r_.__value_.__l.__data_);
    v7 = v5->__r_.__value_.__s.__data_[2];
    if (data_low != 31080 || v7 != 112)
    {
LABEL_58:
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "should_be_hyp == hyp", 22);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
    }

    size = SHIBYTE(i->__r_.__value_.__r.__words[2]);
    if (size < 0)
    {
      v10 = i->__r_.__value_.__r.__words[0];
      size = i->__r_.__value_.__l.__size_;
    }

    else
    {
      v10 = i;
    }

    v11 = v10 + size;
    if (size >= 1)
    {
      v12 = v10;
      do
      {
        v13 = memchr(v12, 95, size);
        if (!v13)
        {
          break;
        }

        if (*v13 == 95)
        {
          goto LABEL_21;
        }

        v12 = (v13 + 1);
        size = v11 - v12;
      }

      while (v11 - v12 > 0);
    }

    v13 = v11;
LABEL_21:
    if (v13 == v11)
    {
      v14 = -1;
    }

    else
    {
      v14 = v13 - v10;
    }

    if (v14 << 32 == 0xFFFFFFFF00000000 || v14 <= 3)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "(first_underscore_index != std::string::npos) && (first_underscore_index > 3)", 77);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
    }

    std::string::basic_string(&__str, i, 3uLL, ((v14 << 32) - 0x300000000) >> 32, v27);
    v16 = std::stoi(&__str, 0, 10);
    if (v16 <= 0 || v16 > *a1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "(hyp_id >= 1) && (hyp_id <= num_hyps_)", 38);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
    }

    v17 = SHIBYTE(i->__r_.__value_.__r.__words[2]);
    if ((v17 & 0x8000000000000000) != 0)
    {
      v17 = i->__r_.__value_.__l.__size_;
    }

    std::string::basic_string(&__p, i, (v14 + 1), v17 - v14, v27);
    v19 = *(a1 + 8);
    v18 = *(a1 + 16);
    if (v19 != v18)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = __p.__r_.__value_.__l.__size_;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      while (1)
      {
        v22 = *(v19 + 23);
        v23 = v22;
        if ((v22 & 0x80u) != 0)
        {
          v22 = *(v19 + 8);
        }

        if (v22 == v20)
        {
          v24 = v23 >= 0 ? v19 : *v19;
          if (!memcmp(v24, p_p, v20))
          {
            break;
          }
        }

        v19 += 24;
        if (v19 == v18)
        {
          goto LABEL_60;
        }
      }
    }

    if (v19 == v18)
    {
LABEL_60:
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "std::find(feature_list_without_hyp_ids_.begin(), feature_list_without_hyp_ids_.end(), should_be_in_feature_list_without_hyp_ids) != feature_list_without_hyp_ids_.end()", 167);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }
}

BOOL kaldi::quasar::SystemSelectionFeatureExtractor::CheckIfStringEndsWith(uint64_t a1, uint64_t **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = a2[1];
  if ((v3 & 0x80u) == 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  v12 = v5 >= v7;
  v8 = v5 - v7;
  if (!v12)
  {
    return 0;
  }

  if ((v3 & 0x80) != 0)
  {
    v12 = v7 != -1 && v4 >= v8;
    if (v12)
    {
      v13 = v4 - v8;
      if (v13 >= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v13;
      }

      a2 = *a2;
      goto LABEL_26;
    }

LABEL_35:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v3 < v8 || v7 == -1)
  {
    goto LABEL_35;
  }

  if (v3 - v8 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v3 - v8;
  }

LABEL_26:
  if (v6 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  return !memcmp(a2 + v8, v14, v11) && v11 == v7;
}

void kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(int *a1, uint64_t *a2, std::vector<unsigned int> *this)
{
  v15 = *MEMORY[0x1E69E9840];
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) != *a1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v11);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v11, "hyp_confidence_values.size() == num_hyps_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v11);
  }

  std::vector<int>::resize(this, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 5) - *(a1 + 4)) >> 3));
  memset(v10, 0, sizeof(v10));
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  if (*(a1 + 60) == 1 && *a1 >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      std::__sort<std::__less<float,float> &,float *>();
      ++v7;
      v6 += 24;
    }

    while (v7 < *a1);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "count");
  v11 = &unk_1F2D2FC18;
  v12 = a2;
  v14 = &v11;
  kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeature(a1, __p, &v11, this);
  std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](&v11);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mean");
  v11 = &unk_1F2D2FCA8;
  v12 = a1;
  v13 = a2;
  v14 = &v11;
  kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeature(a1, __p, &v11, this);
  std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](&v11);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "std");
  v11 = &unk_1F2D2FD28;
  v12 = a1;
  v13 = a2;
  v14 = &v11;
  kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeature(a1, __p, &v11, this);
  std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](&v11);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "min");
  v11 = &unk_1F2D2FDA8;
  v12 = a1;
  v13 = a2;
  v14 = &v11;
  kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeature(a1, __p, &v11, this);
  std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](&v11);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "max");
  v11 = &unk_1F2D2FE28;
  v12 = a1;
  v13 = a2;
  v14 = &v11;
  kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeature(a1, __p, &v11, this);
  std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](&v11);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "25pct");
  v11 = &unk_1F2D2FEA8;
  v12 = a1;
  v13 = v10;
  v14 = &v11;
  kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeature(a1, __p, &v11, this);
  std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](&v11);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "50pct");
  v11 = &unk_1F2D2FF28;
  v12 = a1;
  v13 = v10;
  v14 = &v11;
  kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeature(a1, __p, &v11, this);
  std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](&v11);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "75pct");
  v11 = &unk_1F2D2FFA8;
  v12 = a1;
  v13 = v10;
  v14 = &v11;
  kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeature(a1, __p, &v11, this);
  std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](&v11);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void sub_1B579C0A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeature(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*a1 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = v6 + 1;
      std::to_string(&v26, v6 + 1);
      v8 = std::string::insert(&v26, 0, "hyp");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v27.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v27.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v27, "_");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v28.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v28.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = *(a2 + 23);
      if (v12 >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if (v12 >= 0)
      {
        v14 = *(a2 + 23);
      }

      else
      {
        v14 = *(a2 + 8);
      }

      v15 = std::string::append(&v28, v13, v14);
      __p = *v15;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      if (v16 != v17)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        while (1)
        {
          v20 = *(v16 + 23);
          v21 = v20;
          if ((v20 & 0x80u) != 0)
          {
            v20 = *(v16 + 8);
          }

          if (v20 == size)
          {
            v22 = v21 >= 0 ? v16 : *v16;
            if (!memcmp(v22, p_p, size))
            {
              break;
            }
          }

          v16 += 24;
          if (v16 == v17)
          {
            goto LABEL_33;
          }
        }
      }

      if (v16 != v17)
      {
        std::function<float ()(int)>::operator()(a3, v6);
        *(*a4 - 0x5555555555555555 * ((v16 - *(a1 + 32)) >> 1)) = v23;
      }

LABEL_33:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v6;
    }

    while (v7 < *a1);
  }
}

void sub_1B579C2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<float ()(int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void kaldi::quasar::SystemSelectionFeatureExtractor::ExtractStd(uint64_t a1, float **a2, float a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = v3 - *a2;
  v6 = v5 >> 2;
  if ((v5 >> 2) > 1)
  {
    v7 = a3;
    if (a3 < 0.0)
    {
      if (v6)
      {
        if (v4 == v3)
        {
          v11 = 0.0;
        }

        else
        {
          v9 = 0.0;
          do
          {
            v10 = *v4++;
            v9 = v9 + v10;
          }

          while (v4 != v3);
          v11 = v9;
        }

        v7 = v11 / v6;
      }

      else
      {
        v7 = *(a1 + 56);
      }
    }

    std::vector<float>::vector[abi:ne200100](&__p, (v5 >> 2) & 0x7FFFFFFF);
    v12 = *a2;
    v13 = a2[1];
    v14 = __p;
    if (*a2 != v13)
    {
      v15 = __p;
      do
      {
        v16 = *v12++;
        *v15++ = v16 - v7;
      }

      while (v12 != v13);
    }

    if (v14 != v21)
    {
      v17 = 0.0;
      v18 = v14;
      do
      {
        v19 = *v18++;
        v17 = v17 + (v19 * v19);
      }

      while (v18 != v21);
    }

    if (v14)
    {
      v21 = v14;
      operator delete(v14);
    }
  }
}

float kaldi::quasar::SystemSelectionFeatureExtractor::ExtractMin(uint64_t a1, float **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (((v3 - *a2) & 0x3FFFFFFFCLL) != 0)
  {
    v4 = v2 + 1;
    if (v2 != v3 && v4 != v3)
    {
      v6 = *v2;
      v7 = v2 + 1;
      do
      {
        v8 = *v7++;
        v9 = v8;
        if (v8 < v6)
        {
          v6 = v9;
          v2 = v4;
        }

        v4 = v7;
      }

      while (v7 != v3);
    }
  }

  else
  {
    v2 = (a1 + 56);
  }

  return *v2;
}

float kaldi::quasar::SystemSelectionFeatureExtractor::ExtractMax(uint64_t a1, float **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (((v3 - *a2) & 0x3FFFFFFFCLL) != 0)
  {
    v4 = v2 + 1;
    if (v2 != v3 && v4 != v3)
    {
      v6 = *v2;
      v7 = v2 + 1;
      do
      {
        v8 = *v7++;
        v9 = v8;
        if (v6 < v8)
        {
          v6 = v9;
          v2 = v4;
        }

        v4 = v7;
      }

      while (v7 != v3);
    }
  }

  else
  {
    v2 = (a1 + 56);
  }

  return *v2;
}

float kaldi::quasar::SystemSelectionFeatureExtractor::ExtractPercentile(uint64_t a1, uint64_t *a2, float a3)
{
  v3 = *a2;
  v4 = (a2[1] - *a2) >> 2;
  if (!v4)
  {
    return *(a1 + 56);
  }

  v5 = (v4 - 1);
  v6 = vcvtms_s32_f32(v5 * a3);
  v7 = vcvtps_s32_f32(v5 * a3);
  v8 = *(v3 + 4 * v6);
  if (v7 != v6)
  {
    return v8 + (-(v6 - (a3 * v5)) * (*(v3 + 4 * v7) - v8));
  }

  return v8;
}

uint64_t std::__function::__func<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_0,std::allocator<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_0>,float ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D2FC18;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_0,std::allocator<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_0>,float ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_1,std::allocator<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_1>,float ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D2FCA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float std::__function::__func<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_1,std::allocator<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_1>,float ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = **(a1 + 16) + 24 * *a2;
  v4 = *v2;
  v3 = *(v2 + 8);
  v5 = (v3 - *v2) >> 2;
  if (!v5)
  {
    return *(*(a1 + 8) + 56);
  }

  if (v4 == v3)
  {
    v8 = 0.0;
  }

  else
  {
    v6 = 0.0;
    do
    {
      v7 = *v4++;
      v6 = v6 + v7;
    }

    while (v4 != v3);
    v8 = v6;
  }

  return v8 / v5;
}

uint64_t std::__function::__func<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_1,std::allocator<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_1>,float ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_2,std::allocator<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_2>,float ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D2FD28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_2,std::allocator<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_2>,float ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_3,std::allocator<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_3>,float ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D2FDA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_3,std::allocator<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_3>,float ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_4,std::allocator<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_4>,float ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D2FE28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_4,std::allocator<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_4>,float ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_5,std::allocator<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_5>,float ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D2FEA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_5,std::allocator<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_5>,float ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_6,std::allocator<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_6>,float ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D2FF28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_6,std::allocator<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_6>,float ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_7,std::allocator<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_7>,float ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D2FFA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_7,std::allocator<kaldi::quasar::SystemSelectionFeatureExtractor::ExtractFeatures(std::vector<std::vector<float>> const&,std::vector<float>*)::$_7>,float ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t quasar::LinkAlternativesOptions::options@<X0>(quasar::LinkAlternativesOptions *this@<X0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(this + 20);
  v2 = this + 160;
  v5[0] = v2 - 144;
  v5[1] = &v2[*(v3 - 24)];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, v5, &v6, 2uLL);
}

void quasar::LinkAlternativesBlock::process(void *a1, uint64_t a2, uint64_t *a3)
{
  v296 = *MEMORY[0x1E69E9840];
  if (*quasar::OptionValue<BOOL>::value((a1 + *(a1[21] - 24) + 168)))
  {
    v294 = 0uLL;
    v295 = 0;
    v253 = 0;
    v254 = 0;
    v252 = 0;
    v6 = *a3;
    v5 = a3[1];
    v233 = a1;
    if (v5 != *a3)
    {
      v7 = 0xF83E0F83E0F83E1 * ((v5 - *a3) >> 3);
      if (v7 > 0x333333333333333)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v6 = *a3;
      v5 = a3[1];
    }

    if (v6 != v5)
    {
      v237 = v5;
      while (1)
      {
        LOBYTE(v258) = 0;
        BYTE4(v258) = 0;
        memset(&v272, 0, sizeof(v272));
        v8 = quasar::MetaInfo::structuredPrediction(v6 + 32, "gender", 6);
        if (v8)
        {
          LODWORD(v258) = *(v8 + 24);
          BYTE4(v258) = 1;
          memset(&v249, 0, sizeof(v249));
          v9 = *(v8 + 32);
          v10 = *(v8 + 40);
          while (v9 != v10)
          {
            v11 = *(v9 + 56);
            v12 = *(v9 + 64);
            if (v11 == v12)
            {
              if (quasar::gLogLevel >= 2)
              {
                v289 = 0u;
                v290 = 0u;
                v287 = 0u;
                v288 = 0u;
                v285 = 0u;
                v286 = 0u;
                v283 = 0u;
                v284 = 0u;
                v281 = 0u;
                v282 = 0u;
                v279 = 0u;
                v280 = 0u;
                v277 = 0u;
                v278 = 0u;
                v275 = 0u;
                v276 = 0u;
                v274 = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&v274);
                v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v274, "[LinkAlternatives validation failure]: Structured prediction information is incomplete for source span ", 103);
                v29 = quasar::operator<<(v28, (v9 + 48));
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ": projections are missing. Skipping span.", 41);
                quasar::QuasarWarnMessage::~QuasarWarnMessage(&v274);
              }
            }

            else
            {
              v13 = v12 - v11;
              if (v13 >= 9 && quasar::gLogLevel >= 4)
              {
                v289 = 0u;
                v290 = 0u;
                v287 = 0u;
                v288 = 0u;
                v285 = 0u;
                v286 = 0u;
                v283 = 0u;
                v284 = 0u;
                v281 = 0u;
                v282 = 0u;
                v279 = 0u;
                v280 = 0u;
                v277 = 0u;
                v278 = 0u;
                v275 = 0u;
                v276 = 0u;
                v274 = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&v274);
                v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v274, "[LinkAlternatives validation failure]: Structured prediction generated more than one projection for gender alternative for source span: ", 136);
                quasar::operator<<(v15, (v9 + 48));
                quasar::QuasarInfoMessage::~QuasarInfoMessage(&v274);
                v13 = *(v9 + 64) - *(v9 + 56);
              }

              __p[0] = 0;
              __p[1] = 0;
              *&v256 = 0;
              std::vector<std::pair<int,int>>::reserve(__p, v13 >> 3);
              v16 = *(v9 + 56);
              v17 = *(v9 + 64);
              if (v16 != v17)
              {
                v18 = __p[1];
                do
                {
                  v19 = *v16 | ((v16[1] - *v16 + 1) << 32);
                  if (v18 >= v256)
                  {
                    v20 = (v18 - __p[0]) >> 3;
                    if ((v20 + 1) >> 61)
                    {
                      std::vector<int>::__throw_length_error[abi:ne200100]();
                    }

                    v21 = (v256 - __p[0]) >> 2;
                    if (v21 <= v20 + 1)
                    {
                      v21 = v20 + 1;
                    }

                    if (v256 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v22 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v22 = v21;
                    }

                    if (v22)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(__p, v22);
                    }

                    v23 = (8 * v20);
                    *v23 = v19;
                    v18 = (8 * v20 + 8);
                    v24 = v23 - (__p[1] - __p[0]);
                    memcpy(v24, __p[0], __p[1] - __p[0]);
                    v25 = __p[0];
                    __p[0] = v24;
                    __p[1] = v18;
                    *&v256 = 0;
                    if (v25)
                    {
                      operator delete(v25);
                    }
                  }

                  else
                  {
                    *v18++ = v19;
                  }

                  __p[1] = v18;
                  v16 += 2;
                }

                while (v16 != v17);
              }

              v26 = *(v9 + 23);
              if (v26 < 0)
              {
                v27 = *v9;
                v26 = *(v9 + 8);
              }

              else
              {
                v27 = v9;
              }

              v30 = v26 != 4 || *v27 != 1162625357;
              v31 = *(v9 + 47);
              if (v31 < 0)
              {
                v32 = *(v9 + 24);
                v31 = *(v9 + 32);
              }

              else
              {
                v32 = (v9 + 24);
              }

              if (v31 == 4)
              {
                v33 = (*v32 != 1162625357) << 32;
              }

              else
              {
                v33 = 0x100000000;
              }

              LODWORD(v263[0]) = *(v9 + 48);
              HIDWORD(v263[0]) = *(v9 + 52) - *(v9 + 48) + 1;
              *&v270 = v33 | v30;
              v35 = *(&v294 + 1);
              v34 = v294;
              if (v294 != *(&v294 + 1))
              {
                while (1)
                {
                  v36 = *v34;
                  if (*v34)
                  {
                    if (!v36[6] && quasar::operator==(v36, &v270))
                    {
                      break;
                    }
                  }

                  v34 += 16;
                  if (v34 == v35)
                  {
                    v34 = v35;
                    break;
                  }
                }

                v35 = *(&v294 + 1);
              }

              if (v34 == v35)
              {
                operator new();
              }

              v37 = *(v34 + 8);
              *&v267 = *v34;
              *(&v267 + 1) = v37;
              if (v37)
              {
                atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
              }

              size = v249.__r_.__value_.__l.__size_;
              if (v249.__r_.__value_.__l.__size_ >= v249.__r_.__value_.__r.__words[2])
              {
                v40 = 0x6DB6DB6DB6DB6DB7 * ((v249.__r_.__value_.__l.__size_ - v249.__r_.__value_.__r.__words[0]) >> 3) + 1;
                if (v40 > 0x492492492492492)
                {
                  std::vector<int>::__throw_length_error[abi:ne200100]();
                }

                if (0xDB6DB6DB6DB6DB6ELL * ((v249.__r_.__value_.__r.__words[2] - v249.__r_.__value_.__r.__words[0]) >> 3) > v40)
                {
                  v40 = 0xDB6DB6DB6DB6DB6ELL * ((v249.__r_.__value_.__r.__words[2] - v249.__r_.__value_.__r.__words[0]) >> 3);
                }

                if ((0x6DB6DB6DB6DB6DB7 * ((v249.__r_.__value_.__r.__words[2] - v249.__r_.__value_.__r.__words[0]) >> 3)) >= 0x249249249249249)
                {
                  v41 = 0x492492492492492;
                }

                else
                {
                  v41 = v40;
                }

                *&v276 = &v249;
                if (v41)
                {
                }

                *&v274 = 0;
                *(&v274 + 1) = 8 * ((v249.__r_.__value_.__l.__size_ - v249.__r_.__value_.__r.__words[0]) >> 3);
                v275 = *(&v274 + 1);
                *&v275 = v275 + 56;
                v39 = v249.__r_.__value_.__l.__size_;
              }

              else
              {
                v39 = size + 56;
              }

              v249.__r_.__value_.__l.__size_ = v39;
              if (*(&v267 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v267 + 1));
              }

              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }
            }

            v9 += 80;
          }

          v42 = v272.__r_.__value_.__r.__words[0];
          if (v272.__r_.__value_.__r.__words[0])
          {
            v43 = v272.__r_.__value_.__l.__size_;
            v44 = v272.__r_.__value_.__r.__words[0];
            if (v272.__r_.__value_.__l.__size_ != v272.__r_.__value_.__r.__words[0])
            {
              do
              {
                v43 -= 56;
              }

              while (v43 != v42);
              v44 = v272.__r_.__value_.__r.__words[0];
            }

            v272.__r_.__value_.__l.__size_ = v42;
            operator delete(v44);
          }

          v272 = v249;
          memset(&v249, 0, sizeof(v249));
          *&v274 = &v249;
        }

        if (quasar::MetaInfo::hasSenses((v6 + 32)))
        {
          break;
        }

        v270 = 0uLL;
        v271 = 0;
LABEL_119:
        quasar::TranslationPhraseInternal::convertTokensToString(v263, v6);
        *&v249.__r_.__value_.__r.__words[1] = 0uLL;
        v249.__r_.__value_.__r.__words[0] = &v249.__r_.__value_.__l.__size_;
        v291 = &v249;
        v267 = 0uLL;
        v268 = 0;
        v58 = v249.__r_.__value_.__r.__words[0];
        if (v249.__r_.__value_.__l.__data_ == &v249.__r_.__value_.__r.__words[1])
        {
          goto LABEL_157;
        }

        do
        {
          v59 = *(v58 + 40);
          __p[0] = *v59;
          v256 = 0uLL;
          __p[1] = 0;
          std::vector<quasar::AlternativeSelectionSpan::Range>::__init_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan::Range*,quasar::AlternativeSelectionSpan::Range*>(&__p[1], *(v59 + 8), *(v59 + 16), (*(v59 + 16) - *(v59 + 8)) >> 3);
          std::set<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>::set[abi:ne200100](v257, v59 + 32);
          v60 = (*(v58 + 40) + 56);
          if (*(v58 + 48) == v60)
          {
LABEL_136:
          }

          else
          {
            while (1)
            {
              v61 = __p[1];
              v62 = v256;
              v63 = v60[1];
              if (v256 - __p[1] != v60[2] - v63)
              {
                break;
              }

              if (__p[1] != v256)
              {
                do
                {
                  v64 = quasar::operator==(v61, v63);
                  v61 += 2;
                  v63 += 2;
                }

                while (v61 != v62 && v64);
                if (!v64)
                {
                  break;
                }
              }

              v66 = v60[4];
              if (v66 != v60 + 5)
              {
                do
                {
                  std::__tree<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>::__emplace_unique_key_args<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>> const&>(v257, v66 + 4);
                  v67 = v66[1];
                  if (v67)
                  {
                    do
                    {
                      v68 = v67;
                      v67 = *v67;
                    }

                    while (v67);
                  }

                  else
                  {
                    do
                    {
                      v68 = v66[2];
                      v108 = *v68 == v66;
                      v66 = v68;
                    }

                    while (!v108);
                  }

                  v66 = v68;
                }

                while (v68 != v60 + 5);
              }

              v60 += 7;
              if (v60 == *(v58 + 48))
              {
                goto LABEL_136;
              }
            }

            if (quasar::gLogLevel >= 2)
            {
              v289 = 0u;
              v290 = 0u;
              v287 = 0u;
              v288 = 0u;
              v285 = 0u;
              v286 = 0u;
              v283 = 0u;
              v284 = 0u;
              v281 = 0u;
              v282 = 0u;
              v279 = 0u;
              v280 = 0u;
              v277 = 0u;
              v278 = 0u;
              v275 = 0u;
              v276 = 0u;
              v274 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v274);
              v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v274, "[LinkAlternatives validation failure]: Projections mismatch for source span ", 76);
              v70 = quasar::operator<<(v69, (v58 + 32));
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, ". Exclude this source span from results.", 40);
              quasar::QuasarWarnMessage::~QuasarWarnMessage(&v274);
            }
          }

          std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::destroy(v257, *(&v257[0] + 1));
          if (__p[1])
          {
            *&v256 = __p[1];
            operator delete(__p[1]);
          }

          v71 = *(v58 + 8);
          if (v71)
          {
            do
            {
              v72 = v71;
              v71 = v71->__r_.__value_.__r.__words[0];
            }

            while (v71);
          }

          else
          {
            do
            {
              v72 = *(v58 + 16);
              v108 = v72->__r_.__value_.__r.__words[0] == v58;
              v58 = v72;
            }

            while (!v108);
          }

          v58 = v72;
        }

        while (v72 != &v249.__r_.__value_.__r.__words[1]);
        v73 = v267;
        if (v267 == *(&v267 + 1))
        {
LABEL_157:
          v260 = 0;
          v261 = 0;
          v262 = 0;
        }

        else
        {
          v260 = 0;
          v261 = 0;
          v262 = 0;
          v74 = (v267 + 56);
          if (*(&v267 + 1) == v267 + 56)
          {
            v77 = v267;
          }

          else
          {
            do
            {
              v75 = v74;
              if (quasar::operator==(v73, v74) || (*v73 < v75[1] + *v75 ? (v76 = *v75 < v73[1] + *v73) : (v76 = 0), !v76))
              {
              }

              v74 = v75 + 14;
              v73 = v75;
            }

            while (*(&v267 + 1) != v75 + 14);
            v77 = v267;
            v73 = v75;
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v74 - v77) >> 3)) < 2 || quasar::operator==(v73 - 14, v73) || ((v78 = *(v73 - 14), v78 < v73[1] + *v73) ? (v79 = *v73 < *(v73 - 13) + v78) : (v79 = 0), !v79))
          {
          }
        }

        *&v274 = &v267;
        v80 = v253;
        if (v253 >= v254)
        {
          v82 = 0xCCCCCCCCCCCCCCCDLL * ((v253 - v252) >> 4);
          v83 = v82 + 1;
          if ((v82 + 1) > 0x333333333333333)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x999999999999999ALL * ((v254 - v252) >> 4) > v83)
          {
            v83 = 0x999999999999999ALL * ((v254 - v252) >> 4);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v254 - v252) >> 4) >= 0x199999999999999)
          {
            v84 = 0x333333333333333;
          }

          else
          {
            v84 = v83;
          }

          *&v275 = v275 + 80;
          v81 = v253;
        }

        else
        {
          v81 = v80 + 80;
        }

        v253 = v81;
        *&v274 = &v260;
        if (SHIBYTE(v264) < 0)
        {
          operator delete(v263[0]);
        }

        *&v274 = &v270;
        *&v274 = &v272;
        v6 += 33;
        if (v6 == v237)
        {
          goto LABEL_178;
        }
      }

      Senses = quasar::MetaInfo::getSenses((v6 + 32));
      v271 = 0;
      v270 = 0uLL;
      v46 = *Senses;
      v47 = Senses[1];
      while (1)
      {
        if (v46 == v47)
        {
          goto LABEL_119;
        }

        if (*(v46 + 47) < 0)
        {
          v49 = *(v46 + 32);
          if (!v49)
          {
            goto LABEL_117;
          }

          v260 = *(v46 + 96);
          v48 = *(v46 + 128);
          std::string::__init_copy_ctor_external(&v249, *(v46 + 24), v49);
        }

        else
        {
          if (!*(v46 + 47))
          {
            goto LABEL_117;
          }

          v260 = *(v46 + 96);
          v48 = *(v46 + 128);
          v249 = *(v46 + 24);
        }

        *__p = *&v249.__r_.__value_.__l.__data_;
        *&v256 = *(&v249.__r_.__value_.__l + 2);
        memset(&v249, 0, sizeof(v249));
        v51 = *(&v294 + 1);
        v50 = v294;
        if (v294 != *(&v294 + 1))
        {
          while (1)
          {
            v52 = *v50;
            if (*v50)
            {
              if (v52[6] == 1 && std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v52, __p))
              {
                break;
              }
            }

            v50 += 16;
            if (v50 == v51)
            {
              v50 = v51;
              break;
            }
          }

          v51 = *(&v294 + 1);
        }

        if (v50 == v51)
        {
          operator new();
        }

        v53 = *(v50 + 8);
        v263[0] = *v50;
        v263[1] = v53;
        if (v53)
        {
          atomic_fetch_add_explicit(v53 + 1, 1uLL, memory_order_relaxed);
        }

        if (SBYTE7(v256) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v249.__r_.__value_.__l.__data_);
        }

        v291 = v48;
        v268 = 0;
        v267 = 0uLL;
        std::vector<quasar::AlternativeSelectionSpan::Range>::__init_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan::Range const*,quasar::AlternativeSelectionSpan::Range const*>(&v267, &v291, &v292, 1uLL);
        v54 = *(&v270 + 1);
        if (*(&v270 + 1) >= v271)
        {
          v56 = 0x6DB6DB6DB6DB6DB7 * ((*(&v270 + 1) - v270) >> 3) + 1;
          if (v56 > 0x492492492492492)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((v271 - v270) >> 3) > v56)
          {
            v56 = 0xDB6DB6DB6DB6DB6ELL * ((v271 - v270) >> 3);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v271 - v270) >> 3)) >= 0x249249249249249)
          {
            v57 = 0x492492492492492;
          }

          else
          {
            v57 = v56;
          }

          *&v276 = &v270;
          if (v57)
          {
          }

          *&v274 = 0;
          *(&v274 + 1) = 8 * ((*(&v270 + 1) - v270) >> 3);
          v275 = *(&v274 + 1);
          *&v275 = v275 + 56;
          v55 = *(&v270 + 1);
        }

        else
        {
          v55 = v54 + 56;
        }

        *(&v270 + 1) = v55;
        if (v267)
        {
          *(&v267 + 1) = v267;
          operator delete(v267);
        }

        if (v263[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v263[1]);
        }

LABEL_117:
        v46 += 296;
      }
    }

LABEL_178:
    *&v274 = &v294;
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v274);
    v260 = 0;
    v261 = 0;
    v262 = 0;
    v85 = 0xF83E0F83E0F83E1;
    std::vector<std::unordered_set<int>>::reserve(&v260, 0xF83E0F83E0F83E1 * ((a3[1] - *a3) >> 3));
    v291 = 0;
    v292 = 0;
    v293 = 0;
    std::vector<std::vector<quasar::AlternativeSelectionSpan>>::reserve(&v291, 0xF83E0F83E0F83E1 * ((a3[1] - *a3) >> 3));
    if (a3[1] != *a3)
    {
      v86 = 0;
      while (1)
      {
        v266 = v86;
        v259 = 0;
        v258 = 0uLL;
        v87 = &v252[80 * v86];
        v88 = *(v87 + 6);
        v265 = 0;
        v238 = (v87 + 48);
        v235 = v86;
        if (*(v87 + 7) != v88)
        {
          break;
        }

        *__p = 0u;
        v256 = 0u;
        LODWORD(v257[0]) = 1065353216;
LABEL_330:
        if (v261 >= v262)
        {
          v183 = std::vector<std::unordered_set<int>>::__emplace_back_slow_path<std::unordered_set<int>>(&v260, __p);
        }

        else
        {
          v183 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__hash_table(v261, __p) + 40;
        }

        v261 = v183;
        v184 = v292;
        if (v292 >= v293)
        {
          v186 = 0xAAAAAAAAAAAAAAABLL * ((v292 - v291) >> 3);
          v187 = v186 + 1;
          if (v186 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v293 - v291) >> 3) > v187)
          {
            v187 = 0x5555555555555556 * ((v293 - v291) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v293 - v291) >> 3) >= 0x555555555555555)
          {
            v188 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v188 = v187;
          }

          *&v276 = &v291;
          if (v188)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(&v291, v188);
          }

          v189 = (8 * ((v292 - v291) >> 3));
          *v189 = 0;
          v189[1] = 0;
          v189[2] = 0;
          *v189 = v258;
          v189[2] = v259;
          v258 = 0uLL;
          v259 = 0;
          v185 = 24 * v186 + 24;
          v190 = (24 * v186 - (v292 - v291));
          memcpy(v189 - (v292 - v291), v291, v292 - v291);
          v191 = v291;
          v192 = v293;
          v291 = v190;
          v292 = v185;
          v293 = 0;
          *&v275 = v191;
          *(&v275 + 1) = v192;
          *&v274 = v191;
          *(&v274 + 1) = v191;
          std::__split_buffer<std::vector<quasar::AlternativeSelectionSpan>>::~__split_buffer(&v274);
        }

        else
        {
          *v292 = 0;
          *(v184 + 1) = 0;
          *(v184 + 2) = 0;
          *v184 = v258;
          *(v184 + 2) = v259;
          v258 = 0uLL;
          v259 = 0;
          v185 = (v184 + 24);
        }

        v292 = v185;
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(__p);
        *&v274 = &v258;
        std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v274);
        v86 = v235 + 1;
        if (((a3[1] - *a3) >> 3) * v85 <= (v235 + 1))
        {
          goto LABEL_345;
        }
      }

      v89 = 0;
      while (1)
      {
        v90 = (v88 + 56 * v89);
        v91 = v266;
        v270 = 0uLL;
        v271 = 0;
        *__p = 0u;
        v256 = 0u;
        LODWORD(v257[0]) = 1065353216;
        v92 = v252;
        if (v253 != v252)
        {
          break;
        }

LABEL_298:
        *v263 = v270;
        v264 = v271;
        v271 = 0;
        v270 = 0uLL;
LABEL_299:
        std::__hash_table<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>>>::~__hash_table(__p);
        *&v274 = &v270;
        std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&v274);
        v165 = v263[1];
        if (v263[0] != v263[1])
        {
          __p[0] = 0;
          __p[1] = 0;
          *&v256 = 0;
          v166 = v90[4];
          if (v166 == v90 + 5)
          {
            v167 = 0;
            v171 = 0;
          }

          else
          {
            v167 = 0;
            do
            {
              v168 = v263[0];
              if (v263[0] != v263[1])
              {
                while (*(*v168 + 24) != *(v166[4] + 24))
                {
                  v168 += 24;
                  if (v168 == v263[1])
                  {
                    goto LABEL_310;
                  }
                }

                if (v167 >= v256)
                {
                  v167 = std::vector<quasar::AlternativeSelectionSpan::Alternative>::__emplace_back_slow_path<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>> const&,int &,int &>(__p, v166 + 4, &v266, &v265);
                }

                else
                {
                  std::allocator<quasar::AlternativeSelectionSpan::Alternative>::construct[abi:ne200100]<quasar::AlternativeSelectionSpan::Alternative,std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>> const&,int &,int &>(__p, v167, v166 + 4, &v266, &v265);
                  v167 += 24;
                }

                __p[1] = v167;
              }

LABEL_310:
              v169 = v166[1];
              if (v169)
              {
                do
                {
                  v170 = v169;
                  v169 = *v169;
                }

                while (v169);
              }

              else
              {
                do
                {
                  v170 = v166[2];
                  v108 = *v170 == v166;
                  v166 = v170;
                }

                while (!v108);
              }

              v166 = v170;
            }

            while (v170 != v90 + 5);
            v165 = v263[1];
            v171 = __p[0];
          }

          std::vector<quasar::AlternativeSelectionSpan::Alternative>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::AlternativeSelectionSpan::Alternative const*>,std::__wrap_iter<quasar::AlternativeSelectionSpan::Alternative const*>>(v263, v165, v171, v167, 0xAAAAAAAAAAAAAAABLL * ((v167 - v171) >> 3));
          v172 = v90[1];
          v173 = *(&v258 + 1);
          if (*(&v258 + 1) >= v259)
          {
            v178 = std::vector<quasar::AlternativeSelectionSpan>::__emplace_back_slow_path<quasar::AlternativeSelectionSpan::Range const&,quasar::AlternativeSelectionSpan::Range const&,std::vector<quasar::AlternativeSelectionSpan::Alternative>>(&v258, v90, v172, v263);
          }

          else
          {
            v174 = *v90;
            v175 = *v172;
            v176 = v264;
            v177 = *v263;
            v263[0] = 0;
            v263[1] = 0;
            v264 = 0;
            **(&v258 + 1) = v174;
            *(v173 + 8) = v175;
            *(v173 + 16) = v177;
            *(v173 + 32) = v176;
            *&v275 = 0;
            v274 = 0uLL;
            *&v267 = &v274;
            std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&v267);
            v178 = v173 + 40;
          }

          *(&v258 + 1) = v178;
          *&v274 = __p;
          std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&v274);
        }

        *&v274 = v263;
        std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&v274);
        v89 = ++v265;
        v88 = *v238;
        if (0x6DB6DB6DB6DB6DB7 * ((v238[1] - *v238) >> 3) <= v89)
        {
          v180 = *(&v258 + 1);
          v179 = v258;
          *__p = 0u;
          v256 = 0u;
          LODWORD(v257[0]) = 1065353216;
          while (v179 != v180)
          {
            v181 = *(v179 + 16);
            v182 = *(v179 + 24);
            while (v181 != v182)
            {
              std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(__p, (v181 + 16));
              v181 += 24;
            }

            v179 += 40;
          }

          goto LABEL_330;
        }
      }

      v93 = 0;
      v236 = 0;
      v94 = v266;
      v239 = v266;
      v240 = v266;
      while (v93 == v94)
      {
LABEL_228:
        ++v93;
        v92 = v252;
        if (0xCCCCCCCCCCCCCCCDLL * ((v253 - v252) >> 4) <= v93)
        {
          for (i = v256; i; i = *i)
          {
            std::vector<quasar::AlternativeSelectionSpan::Alternative>::reserve(&v270, 0xAAAAAAAAAAAAAAABLL * ((*(&v270 + 1) - v270) >> 3) - 0x5555555555555555 * (i[6] - i[5]));
            std::vector<quasar::AlternativeSelectionSpan::Alternative>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::AlternativeSelectionSpan::Alternative const*>,std::__wrap_iter<quasar::AlternativeSelectionSpan::Alternative const*>>(&v270, *(&v270 + 1), i[5], i[6], 0xAAAAAAAAAAAAAAABLL * (i[6] - i[5]));
          }

          goto LABEL_298;
        }
      }

      v95 = &v92[80 * v91];
      if (!SpanForSourceRange)
      {
        goto LABEL_222;
      }

      v97 = &v92[80 * v93];
      if (!v98 || *(SpanForSourceRange + 2) - *(SpanForSourceRange + 1) > 8uLL || *(v98 + 2) - *(v98 + 1) > 8uLL)
      {
        goto LABEL_222;
      }

      v99 = v274;
      v100 = v294;
      v101 = *(&v274 + 1) - v274 == *(&v294 + 1) - v294;
      v102 = *(&v274 + 1) - v274;
      if (*(&v274 + 1) == v274 || v102 != *(&v294 + 1) - v294)
      {
        if (!v294)
        {
          goto LABEL_202;
        }
      }

      else
      {
        v103 = 0;
        v104 = v102 >> 3;
        if (v104 <= 1)
        {
          v104 = 1;
        }

        v105 = v104 - 1;
        do
        {
          v107 = v272.__r_.__value_.__l.__size_;
          v106 = v272.__r_.__value_.__r.__words[0];
          v273 = &v272;
          std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v273);
          v101 = v106 == v107;
          v108 = !v101 || v105 == v103++;
        }

        while (!v108);
        v85 = 0xF83E0F83E0F83E1;
      }

      operator delete(v100);
LABEL_202:
      if (v99)
      {
        operator delete(v99);
      }

      if (v101)
      {
        v109 = v90;
        if (v110)
        {
          if (v111)
          {
            if (*(&v274 + 1) - v274 == 16)
            {
              v112 = v85;
              v113 = *v274;
              if (*(*v274 + 24))
              {
                goto LABEL_213;
              }

              v114 = *(v95 + 76);
              v115 = *(v97 + 76);
              if (v114 == v115 && *(v95 + 76))
              {
                v114 = *(v95 + 72);
                v115 = *(v97 + 72);
              }

              if (v114 == v115)
              {
LABEL_213:
                v116 = *(v274 + 8);
                if (v116)
                {
                  atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v117 = *(v97 + 48);
                v118 = *(v97 + 56);
                if (v117 != v118)
                {
                  while (!quasar::operator==(v117, v90))
                  {
                    v117 += 14;
                    if (v117 == v118)
                    {
                      v117 = v118;
                      break;
                    }
                  }

                  v118 = *(v97 + 56);
                }

                if (v117 == v118)
                {
                  v119 = 0;
                }

                else
                {
                  v119 = 0xB6DB6DB700000000 * ((v117 - *(v97 + 48)) >> 3);
                }

                v109 = v90;
                if (v116)
                {
                  atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
                  *&v267 = v113;
                  *(&v267 + 1) = v116;
                  v268 = v119 | v93;
                  v269 = 1;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v116);
                }

                else
                {
                  v267 = v113;
                  v268 = v119 | v93;
                  v269 = 1;
                }
              }

              else
              {
                LOBYTE(v267) = 0;
                v269 = 0;
              }

              v85 = v112;
            }

            else
            {
              LOBYTE(v267) = 0;
              v269 = 0;
            }

            *&v294 = &v274;
            std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v294);
            if (v269)
            {
              v121 = v267;
              v122 = *(v267 + 24);
              if (v122 == 1)
              {
                v129 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(__p, v267);
                v130 = v129;
                if (v129)
                {
                  v133 = v129[5];
                  v132 = v129[6];
                  v131 = (v129 + 5);
                  if (v133 != v132)
                  {
                    v134 = *&v252[80 * v268 + 48] + 56 * SHIDWORD(v268);
                    do
                    {
                      v135 = *&v252[80 * v133[4] + 48] + 56 * v133[5];
                      if (*(v135 + 48) == *(v134 + 48))
                      {
                        v136 = (v135 + 32);
                        v139 = *v136;
                        v137 = v136 + 1;
                        v138 = v139;
                        if (v139 == v137)
                        {
LABEL_276:
                          if (quasar::gLogLevel >= 5)
                          {
                            v289 = 0u;
                            v290 = 0u;
                            v287 = 0u;
                            v288 = 0u;
                            v285 = 0u;
                            v286 = 0u;
                            v283 = 0u;
                            v284 = 0u;
                            v281 = 0u;
                            v282 = 0u;
                            v279 = 0u;
                            v280 = 0u;
                            v277 = 0u;
                            v278 = 0u;
                            v275 = 0u;
                            v276 = 0u;
                            v274 = 0u;
                            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v274);
                            v147 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v274, "[LinkAlternatives validation]: for source range: ", 49);
                            v148 = quasar::operator<<(v147, v109);
                            v149 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v148, " in phrase ", 11);
                            v150 = MEMORY[0x1B8C84C00](v149, v240);
                            v151 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v150, " found the same meaning (", 25);
                            v152 = *(v121 + 23);
                            if (v152 >= 0)
                            {
                              v153 = v121;
                            }

                            else
                            {
                              v153 = *v121;
                            }

                            if (v152 >= 0)
                            {
                              v154 = *(v121 + 23);
                            }

                            else
                            {
                              v154 = v121[1];
                            }

                            v155 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v151, v153, v154);
                            v156 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v155, ") alternatives in phrases ", 26);
                            v157 = MEMORY[0x1B8C84C00](v156, v133[4]);
                            v158 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v157, " and ", 5);
                            v159 = MEMORY[0x1B8C84C00](v158, v268);
                            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v159, " and all other alternative descriptions are the same. Ignoring.", 63);
                            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v274);
                          }

                          goto LABEL_284;
                        }

                        v140 = *(v134 + 32);
                        while (v138[4] == v140[4])
                        {
                          v141 = v138[1];
                          v142 = v138;
                          if (v141)
                          {
                            do
                            {
                              v138 = v141;
                              v141 = *v141;
                            }

                            while (v141);
                          }

                          else
                          {
                            do
                            {
                              v138 = v142[2];
                              v108 = *v138 == v142;
                              v142 = v138;
                            }

                            while (!v108);
                          }

                          v143 = v140[1];
                          if (v143)
                          {
                            do
                            {
                              v144 = v143;
                              v143 = *v143;
                            }

                            while (v143);
                          }

                          else
                          {
                            do
                            {
                              v144 = v140[2];
                              v108 = *v144 == v140;
                              v140 = v144;
                            }

                            while (!v108);
                          }

                          v140 = v144;
                          if (v138 == v137)
                          {
                            goto LABEL_276;
                          }
                        }
                      }

                      v133 += 6;
                    }

                    while (v133 != v132);
                  }

                  if (v132 >= v130[7])
                  {
                    v146 = std::vector<quasar::AlternativeSelectionSpan::Alternative>::__emplace_back_slow_path<quasar::AlternativeSelectionSpan::Alternative const&>(v131, &v267);
                  }

                  else
                  {
                    *v132 = v267;
                    v145 = *(&v267 + 1);
                    *(v132 + 1) = *(&v267 + 1);
                    if (v145)
                    {
                      atomic_fetch_add_explicit((v145 + 8), 1uLL, memory_order_relaxed);
                    }

                    *(v132 + 2) = v268;
                    v146 = (v132 + 6);
                  }

                  v120 = 0;
                  v130[6] = v146;
                }

                else
                {
                  v294 = v267;
                  if (*(&v267 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v267 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  v295 = v268;
                  *&v275 = 0;
                  v274 = 0uLL;
                  std::vector<quasar::AlternativeSelectionSpan::Alternative>::__init_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan::Alternative const*,quasar::AlternativeSelectionSpan::Alternative const*>(&v274, &v294, &v296, 1uLL);
                  std::__hash_table<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>>>::__emplace_unique_key_args<std::string,std::string const&,std::vector<quasar::AlternativeSelectionSpan::Alternative>>(__p, v121);
                  v272.__r_.__value_.__r.__words[0] = &v274;
                  std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&v272);
                  if (*(&v294 + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v294 + 1));
                  }

LABEL_284:
                  v120 = 0;
                }
              }

              else
              {
                if (v122)
                {
                  goto LABEL_284;
                }

                v123 = *(v95 + 76);
                v124 = *(v97 + 76);
                if (v123 == v124 && *(v95 + 76))
                {
                  v123 = *(v95 + 72);
                  v124 = *(v97 + 72);
                }

                if (v123 != v124)
                {
                  goto LABEL_284;
                }

                if (v236)
                {
                  if (quasar::gLogLevel >= 2)
                  {
                    v289 = 0u;
                    v290 = 0u;
                    v287 = 0u;
                    v288 = 0u;
                    v285 = 0u;
                    v286 = 0u;
                    v283 = 0u;
                    v284 = 0u;
                    v281 = 0u;
                    v282 = 0u;
                    v279 = 0u;
                    v280 = 0u;
                    v277 = 0u;
                    v278 = 0u;
                    v275 = 0u;
                    v276 = 0u;
                    v274 = 0u;
                    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v274);
                    v125 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v274, "[LinkAlternatives validation failure]: More than 1 gender alternative for source span ", 86);
                    v126 = quasar::operator<<(v125, v109);
                    v127 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v126, " and groupId ", 13);
                    if (*(v95 + 76) == 1)
                    {
                      v128 = *(v95 + 72);
                    }

                    else
                    {
                      v128 = 0;
                    }

                    v163 = MEMORY[0x1B8C84C00](v127, v128);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v163, ". No alternatives will be produced.", 35);
                    quasar::QuasarWarnMessage::~QuasarWarnMessage(&v274);
                  }

                  v263[0] = 0;
                  v263[1] = 0;
                  v120 = 1;
                  v236 = 1;
                  v264 = 0;
                }

                else
                {
                  v160 = *(&v270 + 1);
                  if (*(&v270 + 1) >= v271)
                  {
                    v162 = std::vector<quasar::AlternativeSelectionSpan::Alternative>::__emplace_back_slow_path<quasar::AlternativeSelectionSpan::Alternative const&>(&v270, &v267);
                  }

                  else
                  {
                    **(&v270 + 1) = v267;
                    v161 = *(&v267 + 1);
                    *(v160 + 8) = *(&v267 + 1);
                    if (v161)
                    {
                      atomic_fetch_add_explicit((v161 + 8), 1uLL, memory_order_relaxed);
                    }

                    *(v160 + 16) = v268;
                    v162 = v160 + 24;
                  }

                  v120 = 0;
                  *(&v270 + 1) = v162;
                  v236 = 1;
                }
              }

LABEL_224:
              if (v269 == 1 && *(&v267 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v267 + 1));
              }

              v94 = v239;
              v91 = v240;
              if ((v120 | 4) != 4)
              {
                goto LABEL_299;
              }

              goto LABEL_228;
            }

LABEL_223:
            v120 = 4;
            goto LABEL_224;
          }
        }
      }

LABEL_222:
      LOBYTE(v267) = 0;
      v269 = 0;
      goto LABEL_223;
    }

LABEL_345:
    std::pair<std::vector<std::unordered_set<int>>,std::vector<std::vector<quasar::AlternativeSelectionSpan>>>::pair[abi:ne200100]<std::vector<std::unordered_set<int>>&,std::vector<std::vector<quasar::AlternativeSelectionSpan>>&,0>(&v249, &v260, &v291);
    *&v274 = &v291;
    std::vector<std::vector<quasar::AlternativeSelectionSpan>>::__destroy_vector::operator()[abi:ne200100](&v274);
    *&v274 = &v260;
    std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::__destroy_vector::operator()[abi:ne200100](&v274);
    v193 = *quasar::OptionValue<BOOL>::value(v233 + 3);
    if (v193 == 1)
    {
      memset(v248, 0, sizeof(v248));
      std::vector<quasar::TranslationPhraseInternal>::__init_with_size[abi:ne200100]<quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*>(v248, *a3, a3[1], ((a3[1] - *a3) >> 3) * v85);
      v246 = v250;
      v247 = v251;
      v251 = 0;
      v250 = 0uLL;
      memset(&v272, 0, sizeof(v272));
      LODWORD(v270) = 0;
      *(&v267 + 1) = 0;
      v268 = 0;
      *&v267 = &v267 + 8;
      v256 = 0u;
      v257[0] = 0u;
      *__p = 0u;
      std::deque<int>::push_back(__p, &v270);
      for (j = *(&v257[0] + 1); *(&v257[0] + 1); j = *(&v257[0] + 1))
      {
        LODWORD(v263[0]) = *(*(__p[1] + (((*&v257[0])++ >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v257[0] & 0x3FF));
        *(&v257[0] + 1) = j - 1;
        if (*&v257[0] >= 0x800uLL)
        {
          operator delete(*__p[1]);
          __p[1] = __p[1] + 8;
          *&v257[0] -= 1024;
        }

        std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v267, v263);
        if (0xCCCCCCCCCCCCCCCDLL * ((v249.__r_.__value_.__l.__size_ - v249.__r_.__value_.__r.__words[0]) >> 3) <= SLODWORD(v263[0]))
        {
          v289 = 0u;
          v290 = 0u;
          v287 = 0u;
          v288 = 0u;
          v285 = 0u;
          v286 = 0u;
          v283 = 0u;
          v284 = 0u;
          v281 = 0u;
          v282 = 0u;
          v279 = 0u;
          v280 = 0u;
          v277 = 0u;
          v278 = 0u;
          v275 = 0u;
          v276 = 0u;
          v274 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v274);
          v230 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v274, "Processing translation phrase with index ", 41);
          v231 = MEMORY[0x1B8C84C00](v230, LODWORD(v263[0]));
          v232 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v231, " while total number is ", 23);
          MEMORY[0x1B8C84C30](v232, 0xCCCCCCCCCCCCCCCDLL * ((v249.__r_.__value_.__l.__size_ - v249.__r_.__value_.__r.__words[0]) >> 3));
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v274);
        }

        for (k = *(v249.__r_.__value_.__r.__words[0] + 40 * SLODWORD(v263[0]) + 16); k; k = *k)
        {
          v196 = *(&v267 + 1);
          if (*(&v267 + 1))
          {
            v197 = *(k + 4);
            do
            {
              v198 = *(v196 + 7);
              if (v197 >= v198)
              {
                if (v198 >= v197)
                {
                  goto LABEL_358;
                }

                ++v196;
              }

              v196 = *v196;
            }

            while (v196);
          }

          std::deque<int>::push_back(__p, k + 4);
LABEL_358:
          ;
        }
      }

      v294 = v267;
      v295 = v268;
      if (v268)
      {
        *(*(&v267 + 1) + 16) = &v294 + 8;
        *&v267 = &v267 + 8;
        *(&v267 + 1) = 0;
        v268 = 0;
      }

      else
      {
        *&v294 = &v294 + 8;
      }

      std::deque<int>::~deque[abi:ne200100](__p);
      std::__tree<int>::destroy(&v267, *(&v267 + 1));
      if (v295)
      {
        std::vector<quasar::TranslationPhraseInternal>::reserve(&v272, v295);
        *(&v274 + 1) = 0;
        *&v275 = 0;
        *&v274 = &v274 + 8;
        v207 = v294;
        if (v294 != (&v294 + 8))
        {
          v208 = v272.__r_.__value_.__l.__size_;
          do
          {
            __p[0] = (((v208 - v272.__r_.__value_.__r.__words[0]) >> 3) * v85);
            std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,int const&,unsigned long>(&v274, v207 + 7);
            v209 = (v248[0] + 264 * v207[7]);
            v210 = v272.__r_.__value_.__l.__size_;
            if (v272.__r_.__value_.__l.__size_ >= v272.__r_.__value_.__r.__words[2])
            {
              v208 = std::vector<quasar::TranslationPhraseInternal>::__emplace_back_slow_path<quasar::TranslationPhraseInternal>(&v272, v209);
            }

            else
            {
              quasar::TranslationPhraseInternal::TranslationPhraseInternal(v272.__r_.__value_.__l.__size_, v209);
              v208 = v210 + 264;
            }

            v272.__r_.__value_.__l.__size_ = v208;
            v211 = *(v207 + 1);
            if (v211)
            {
              do
              {
                v212 = v211;
                v211 = *v211;
              }

              while (v211);
            }

            else
            {
              do
              {
                v212 = *(v207 + 2);
                v108 = *v212 == v207;
                v207 = v212;
              }

              while (!v108);
            }

            v207 = v212;
          }

          while (v212 != (&v294 + 8));
        }

        v214 = *(&v246 + 1);
        v213 = v246;
        if (v246 != *(&v246 + 1))
        {
          v215 = *(&v274 + 1);
          do
          {
            v216 = *v213;
            v217 = v213[1];
            while (v216 != v217)
            {
              v218 = *(v216 + 16);
              v219 = *(v216 + 24);
              while (v218 != v219)
              {
                if (v215)
                {
                  v220 = *(v218 + 16);
                  v221 = &v274 + 8;
                  v222 = v215;
                  do
                  {
                    if (*(v222 + 7) >= v220)
                    {
                      v221 = v222;
                    }

                    v222 = *&v222[8 * (*(v222 + 7) < v220)];
                  }

                  while (v222);
                  if (v221 != &v274 + 8 && v220 >= *(v221 + 7))
                  {
                    *(v218 + 16) = *(v221 + 8);
                  }
                }

                v218 += 24;
              }

              v216 += 40;
            }

            v213 += 3;
          }

          while (v213 != v214);
        }

        v223 = v274;
        if (v274 != (&v274 + 8))
        {
          do
          {
            v224 = *(v223 + 28);
            v225 = v272.__r_.__value_.__r.__words[0] + 264 * SHIDWORD(v224);
            v226 = v246 + 24 * v224;
            __p[1] = 0;
            *&v256 = 0;
            __p[0] = 0;
            *__p = *v226;
            *&v256 = *(v226 + 16);
            *v226 = 0;
            *(v226 + 8) = 0;
            *(v226 + 16) = 0;
            quasar::MetaInfo::setAlternativeSelectionSpans((v225 + 256), __p);
            *&v267 = __p;
            std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v267);
            v227 = *(v223 + 1);
            if (v227)
            {
              do
              {
                v228 = v227;
                v227 = *v227;
              }

              while (v227);
            }

            else
            {
              do
              {
                v228 = *(v223 + 2);
                v108 = *v228 == v223;
                v223 = v228;
              }

              while (!v108);
            }

            v223 = v228;
          }

          while (v228 != (&v274 + 8));
        }

        std::__tree<int>::destroy(&v274, *(&v274 + 1));
      }

      std::__tree<int>::destroy(&v294, *(&v294 + 1));
    }

    else
    {
      v243 = 0;
      v244 = 0;
      v245 = 0;
      std::vector<quasar::TranslationPhraseInternal>::__init_with_size[abi:ne200100]<quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*>(&v243, *a3, a3[1], ((a3[1] - *a3) >> 3) * v85);
      v241 = v250;
      v242 = v251;
      v251 = 0;
      v250 = 0uLL;
      v200 = v243;
      v201 = v244;
      if (v244 != v243)
      {
        v202 = 0;
        v203 = 0;
        v204 = 256;
        do
        {
          v205 = v241 + v202;
          if (*(v241 + v202) != *(v241 + v202 + 8))
          {
            v274 = 0uLL;
            *&v275 = 0;
            v274 = *v205;
            *&v275 = *(v205 + 16);
            *v205 = 0;
            *(v205 + 8) = 0;
            *(v205 + 16) = 0;
            quasar::MetaInfo::setAlternativeSelectionSpans((v200 + v204), &v274);
            __p[0] = &v274;
            std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](__p);
            v200 = v243;
            v201 = v244;
          }

          ++v203;
          v204 += 264;
          v202 += 24;
        }

        while (((v201 - v200) >> 3) * v85 > v203);
      }

      v272.__r_.__value_.__r.__words[0] = v200;
      v272.__r_.__value_.__l.__size_ = v201;
      v272.__r_.__value_.__r.__words[2] = v245;
      v244 = 0;
      v245 = 0;
      v243 = 0;
      if ((v193 & 1) == 0)
      {
        *&v274 = &v241;
        std::vector<std::vector<quasar::AlternativeSelectionSpan>>::__destroy_vector::operator()[abi:ne200100](&v274);
        v206 = &v243;
        goto LABEL_412;
      }
    }

    *&v274 = &v246;
    std::vector<std::vector<quasar::AlternativeSelectionSpan>>::__destroy_vector::operator()[abi:ne200100](&v274);
    v206 = v248;
LABEL_412:
    *&v274 = v206;
    std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v274);
    v229 = *(*v233 - 24);
    v274 = 0uLL;
    *&v275 = 0;
    std::vector<quasar::TranslationPhraseInternal>::__init_with_size[abi:ne200100]<quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*>(&v274, v272.__r_.__value_.__l.__data_, v272.__r_.__value_.__l.__size_, ((v272.__r_.__value_.__l.__size_ - v272.__r_.__value_.__r.__words[0]) >> 3) * v85);
    quasar::ProcessingBlock::send(v233 + v229, &v274, 0);
    __p[0] = &v274;
    std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](__p);
    *&v274 = &v272;
    std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v274);
    *&v274 = &v250;
    std::vector<std::vector<quasar::AlternativeSelectionSpan>>::__destroy_vector::operator()[abi:ne200100](&v274);
    *&v274 = &v249;
    std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::__destroy_vector::operator()[abi:ne200100](&v274);
    return;
  }

  v199 = a1 + *(*a1 - 24);

  quasar::ProcessingBlock::send(v199, a3, 0);
}

void sub_1B579F22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void **a57)
{
  a57 = &a39;
  std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&a57);
  JUMPOUT(0x1B579F248);
}

void sub_1B579F260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void **a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a39 = &a69;
  std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&a39);
  a39 = &a17;
  std::vector<std::vector<quasar::AlternativeSelectionSpan>>::__destroy_vector::operator()[abi:ne200100](&a39);
  a39 = &a20;
  JUMPOUT(0x1B579F45CLL);
}

void sub_1B579F298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void **a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a39 = &a50;
  JUMPOUT(0x1B579F63CLL);
}

void sub_1B579F320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  JUMPOUT(0x1B579F658);
}

void sub_1B579F418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::deque<int>::~deque[abi:ne200100](&a39);
  std::__tree<int>::destroy(&a57, a58);
  a69 = &a65;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&a69);
  a69 = &a23;
  std::vector<std::vector<quasar::AlternativeSelectionSpan>>::__destroy_vector::operator()[abi:ne200100](&a69);
  a69 = &a26;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&a69);
  std::pair<std::vector<std::unordered_set<int>>,std::vector<std::vector<quasar::AlternativeSelectionSpan>>>::~pair(&a29);
  _Unwind_Resume(a1);
}

void sub_1B579F47C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B579F494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  *(v70 - 120) = &a69;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100]((v70 - 120));
  std::__hash_table<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>>>::~__hash_table(v71);
  v71[0] = &v74;
  std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](v71);
  v71[0] = &v72;
  std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](v71);
  v71[0] = (v70 - 144);
  std::vector<std::vector<quasar::AlternativeSelectionSpan>>::__destroy_vector::operator()[abi:ne200100](v71);
  v71[0] = &v73;
  std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::__destroy_vector::operator()[abi:ne200100](v71);
  JUMPOUT(0x1B579F5F4);
}

void sub_1B579F4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a72 = &a50;
  a72 = &a60;
  if (a58 < 0)
  {
    operator delete(__p);
  }

  a39 = &a64;
  a60 = &a68;
  a60 = v72 - 120;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a60);
  JUMPOUT(0x1B579F684);
}

void sub_1B579F4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>>>::~__hash_table(v70);
  v70[0] = &v73;
  std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](v70);
  v70[0] = &v71;
  std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](v70);
  v70[0] = (v69 - 144);
  std::vector<std::vector<quasar::AlternativeSelectionSpan>>::__destroy_vector::operator()[abi:ne200100](v70);
  v70[0] = &v72;
  std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::__destroy_vector::operator()[abi:ne200100](v70);
  JUMPOUT(0x1B579F5F4);
}

void sub_1B579F4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, uint64_t *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a72 = &a60;
  if (a58 < 0)
  {
    operator delete(a53);
  }

  a39 = &a64;
  a60 = &a68;
  a60 = (v72 - 120);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a60);
  JUMPOUT(0x1B579F684);
}

void sub_1B579F528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a69 = &a39;
  std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&a69);
  a69 = &a53;
  JUMPOUT(0x1B579F5C0);
}

void sub_1B579F55C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B579F650);
}

void sub_1B579F604(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t *a39, void *__p, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void **a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::destroy(v72 + 32, a44);
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  a72 = &a60;
  if (a58 < 0)
  {
    operator delete(a53);
  }

  a39 = &a64;
  a60 = &a68;
  a60 = (v73 - 120);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a60);
  JUMPOUT(0x1B579F684);
}

void **std::vector<quasar::anonymous namespace::ProcessedTranslation>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 80;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void quasar::ConfiguredProcessingBlock<quasar::LinkAlternativesOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
{
  v3 = (*(*a1 + 8))(a1);
  (**v3)(&v10);
  v4 = v10;
  v5 = v11;
  if (v10 != v11)
  {
    do
    {
      v6 = *v4;
      v7 = a2[1];
      v8 = *a2;
      v9 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      quasar::OptionValueBase::setContextProvider(v6, &v8);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = v10;
  }

  if (v4)
  {
    v11 = v4;
    operator delete(v4);
  }
}

void sub_1B579F7F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::LinkAlternativesBlock::~LinkAlternativesBlock(quasar::LinkAlternativesBlock *this)
{
  *this = &unk_1F2D301A8;
  v1 = (this + 320);
  *(this + 40) = off_1F2D30230;
  quasar::LinkAlternativesOptions::~LinkAlternativesOptions((this + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v1);
}

{
  *this = &unk_1F2D301A8;
  v1 = (this + 320);
  *(this + 40) = off_1F2D30230;
  quasar::LinkAlternativesOptions::~LinkAlternativesOptions((this + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v1);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::LinkAlternativesBlock::~LinkAlternativesBlock(quasar::LinkAlternativesBlock *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_1F2D301A8;
  v2 = (v1 + 40);
  v1[40] = off_1F2D30230;
  quasar::LinkAlternativesOptions::~LinkAlternativesOptions((v1 + 1));

  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_1F2D301A8;
  *(v1 + 40) = off_1F2D30230;
  quasar::LinkAlternativesOptions::~LinkAlternativesOptions((v1 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 40);

  JUMPOUT(0x1B8C85350);
}

void *std::__split_buffer<quasar::anonymous namespace::ProcessedTranslation>::__split_buffer(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (a2 < 0x333333333333334)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *result = 0;
  result[1] = 80 * a3;
  result[2] = 80 * a3;
  result[3] = 0;
  return result;
}

void std::vector<quasar::anonymous namespace::ProcessedTranslation>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 24) = *(v7 + 24);
      *(v8 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 48) = *(v7 + 48);
      *(v8 + 64) = *(v7 + 64);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v8 + 72) = *(v7 + 72);
      v7 += 80;
      v8 += 80;
    }

    while (v7 != v5);
    do
    {
      v4 += 80;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v10 = *a1;
  *a1 = v6;
  a1[1] = v10;
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<quasar::anonymous namespace::ProcessedTranslation>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<quasar::anonymous namespace::ProcessedTranslation>>::destroy[abi:ne200100]<quasar::anonymous namespace::ProcessedTranslation,0>(uint64_t a1)
{
  v3 = (a1 + 48);
  v3 = (a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::allocator_traits<std::allocator<quasar::anonymous namespace::TranslationPhraseSpan>>::construct[abi:ne200100]<quasar::anonymous namespace::TranslationPhraseSpan,quasar::AlternativeSelectionSpan::Range,std::vector<quasar::AlternativeSelectionSpan::Range>,std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,0>(void *a1, uint64_t *a2, __int128 *a3, __int128 *a4)
{
  v4 = *a2;
  v5 = *a3;
  v8 = *(a3 + 2);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v6 = *a4;
  *__p = v5;
  *a4 = 0;
  *(a4 + 1) = 0;
  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void sub_1B579FD5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::anonymous namespace::TranslationPhraseSpan::TranslationPhraseSpan(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  *a1 = a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *(a1 + 1) = *a3;
  a1[3] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  a1[5] = 0;
  a1[4] = a1 + 5;
  a1[6] = 0;
  std::__tree<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>::__emplace_unique_key_args<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>((a1 + 4), a4);
  return a1;
}

void sub_1B579FDF8(_Unwind_Exception *a1)
{
  v5 = v2;
  std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::destroy(v5, *v4);
  v7 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void *std::__tree<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>::__emplace_unique_key_args<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>(uint64_t a1, unint64_t *a2)
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

void std::vector<quasar::anonymous namespace::TranslationPhraseSpan>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = 0;
    do
    {
      v8 = (v4 + v7);
      v9 = (v6 + v7);
      *v9 = *(v4 + v7);
      v9[1] = 0;
      v9[2] = 0;
      v9[3] = 0;
      *(v9 + 1) = *(v4 + v7 + 8);
      v9[3] = *(v4 + v7 + 24);
      v8[2] = 0;
      v8[3] = 0;
      v8[1] = 0;
      v9[4] = *(v4 + v7 + 32);
      v10 = (v4 + v7 + 40);
      v11 = *v10;
      *(v6 + v7 + 40) = *v10;
      v12 = v6 + v7 + 40;
      v13 = *(v4 + v7 + 48);
      v9[6] = v13;
      if (v13)
      {
        *(v11 + 16) = v12;
        v8[4] = v10;
        *v10 = 0;
        *(v4 + v7 + 48) = 0;
      }

      else
      {
        v9[4] = v12;
      }

      v7 += 56;
    }

    while (v4 + v7 != v5);
    do
    {
      v4 += 56;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v14 = *a1;
  *a1 = v6;
  a1[1] = v14;
  a2[1] = v14;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<quasar::anonymous namespace::TranslationPhraseSpan>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::anonymous namespace::TranslationPhraseSpan>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator_traits<std::allocator<quasar::anonymous namespace::TranslationPhraseSpan>>::destroy[abi:ne200100]<quasar::anonymous namespace::TranslationPhraseSpan,0>(uint64_t a1)
{
  std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::destroy(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;

    operator delete(v2);
  }
}

void quasar::anonymous namespace::TranslationPhraseSpan::~TranslationPhraseSpan(quasar::_anonymous_namespace_::TranslationPhraseSpan *this)
{
  std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::destroy(this + 32, *(this + 5));
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D302E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_1F2D30320[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6quasar24AlternativeSelectionSpan11Alternative17GenderDescriptionENSA_18MeaningDescriptionEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSB_SC_EEEEEEDcSG_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void std::vector<quasar::anonymous namespace::TranslationPhraseSpan>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 56;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<quasar::anonymous namespace::TranslationPhraseSpan>>::construct[abi:ne200100]<quasar::anonymous namespace::TranslationPhraseSpan,quasar::AlternativeSelectionSpan::Range &,std::vector<quasar::AlternativeSelectionSpan::Range>,std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,0>(void *a1, uint64_t *a2, __int128 *a3, __int128 *a4)
{
  v4 = *a2;
  v5 = *a3;
  v8 = *(a3 + 2);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v6 = *a4;
  *__p = v5;
  *a4 = 0;
  *(a4 + 1) = 0;
  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void sub_1B57A0324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::AlternativeSelectionSpan::Range>::__init_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan::Range const*,quasar::AlternativeSelectionSpan::Range const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B57A03A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator_traits<std::allocator<quasar::anonymous namespace::ProcessedTranslation>>::construct[abi:ne200100]<quasar::anonymous namespace::ProcessedTranslation,std::string,std::vector<quasar::anonymous namespace::TranslationPhraseSpan>,std::optional<int> &,0>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v14[0] = a2[1];
  *(v14 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v6 = *a3;
  v7 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v8 = *a4;
  *(a1 + 24) = v6;
  *(a1 + 15) = *(v14 + 7);
  v9 = v14[0];
  *a1 = v4;
  *(a1 + 8) = v9;
  *(a1 + 23) = v5;
  *(a1 + 32) = v7;
  v12[0] = 0;
  v12[1] = 0;
  *(a1 + 48) = 0;
  v10 = (a1 + 48);
  v12[2] = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v11 = v7;
  for (*(a1 + 72) = v8; v6 != v11; v6 += 7)
  {
    if (v6[2] - v6[1] == 8)
    {
    }
  }

  v13 = v12;
}

void sub_1B57A04CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  if (*(v13 + 23) < 0)
  {
    operator delete(*v13);
  }

  a13 = &a10;
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::anonymous namespace::TranslationPhraseSpan>::emplace_back<quasar::anonymous namespace::TranslationPhraseSpan const&>(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    if ((v7 + 1) > 0x492492492492492)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x249249249249249)
    {
      v10 = 0x492492492492492;
    }

    else
    {
      v10 = v9;
    }

    v11[4] = a1;
    if (v10)
    {
    }

    v11[0] = 0;
    v11[1] = 56 * v7;
    v11[3] = 0;
    v11[2] = 56 * v7 + 56;
    v6 = a1[1];
  }

  else
  {
    v6 = v4 + 56;
    a1[1] = v4 + 56;
  }

  a1[1] = v6;
  return result;
}

void sub_1B57A0634(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Unwind_Resume(a1);
}

void *std::allocator_traits<std::allocator<quasar::anonymous namespace::TranslationPhraseSpan>>::construct[abi:ne200100]<quasar::anonymous namespace::TranslationPhraseSpan,quasar::anonymous namespace::TranslationPhraseSpan const&,0>(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  std::vector<quasar::AlternativeSelectionSpan::Range>::__init_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan::Range*,quasar::AlternativeSelectionSpan::Range*>((a1 + 1), a2[1], a2[2], (a2[2] - a2[1]) >> 3);
  return std::set<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>::set[abi:ne200100](a1 + 4, (a2 + 4));
}

void sub_1B57A06B8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::AlternativeSelectionSpan::Range>::__init_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan::Range*,quasar::AlternativeSelectionSpan::Range*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B57A0734(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::set<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>::insert[abi:ne200100]<std::__tree_const_iterator<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,std::__tree_node<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>::insert[abi:ne200100]<std::__tree_const_iterator<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,std::__tree_node<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>::__emplace_hint_unique_key_args<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>> const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t std::__tree<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>::__emplace_hint_unique_key_args<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>> const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>::__find_equal<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>::__find_equal<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
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
    if (v10[4] < *a5)
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
          v18 = v16[4];
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

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
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

uint64_t quasar::anonymous namespace::merge(std::vector<quasar::anonymous namespace::TranslationPhraseSpan> const&,std::vector<quasar::anonymous namespace::TranslationPhraseSpan> const&)::$_0::operator()<std::vector<quasar::anonymous namespace::TranslationPhraseSpan>>(uint64_t result, uint64_t **a2)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      v5 = (*v4 + 8);
      v6 = *v5;
      if (!*v5)
      {
        goto LABEL_13;
      }

      v7 = *v4 + 8;
      do
      {
        v8 = quasar::operator<((v6 + 32), v2);
        if (v8)
        {
          v9 = 8;
        }

        else
        {
          v9 = 0;
        }

        if (!v8)
        {
          v7 = v6;
        }

        v6 = *(v6 + v9);
      }

      while (v6);
      if (v7 == v5 || quasar::operator<(v2, (v7 + 32)))
      {
LABEL_13:
        v7 = v5;
      }

      if (v7 == *v4 + 8)
      {
        v14 = *v2;
        memset(__p, 0, sizeof(__p));
        std::vector<quasar::AlternativeSelectionSpan::Range>::__init_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan::Range*,quasar::AlternativeSelectionSpan::Range*>(__p, v2[1], v2[2], (v2[2] - v2[1]) >> 3);
        std::set<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>::set[abi:ne200100](v16, (v2 + 4));
        v10 = 0uLL;
        v11 = 0;
        v12 = &v10;
        v13 = 0;
        operator new();
      }

      v2 += 7;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1B57A0D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::anonymous namespace::TranslationPhraseSpan>::emplace_back<quasar::anonymous namespace::TranslationPhraseSpan&>(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    if ((v7 + 1) > 0x492492492492492)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x249249249249249)
    {
      v10 = 0x492492492492492;
    }

    else
    {
      v10 = v9;
    }

    v11[4] = a1;
    if (v10)
    {
    }

    v11[0] = 0;
    v11[1] = 56 * v7;
    v11[3] = 0;
    v11[2] = 56 * v7 + 56;
    v6 = a1[1];
  }

  else
  {
    v6 = v4 + 56;
    a1[1] = v4 + 56;
  }

  a1[1] = v6;
  return result;
}

void sub_1B57A0E98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<quasar::AlternativeSelectionSpan::Range,std::vector<quasar::anonymous namespace::TranslationPhraseSpan>>,std::__map_value_compare<quasar::AlternativeSelectionSpan::Range,std::__value_type<quasar::AlternativeSelectionSpan::Range,std::vector<quasar::anonymous namespace::TranslationPhraseSpan>>,std::less<quasar::AlternativeSelectionSpan::Range>,true>,std::allocator<std::__value_type<quasar::AlternativeSelectionSpan::Range,std::vector<quasar::anonymous namespace::TranslationPhraseSpan>>>>::__find_equal<quasar::AlternativeSelectionSpan::Range>(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!quasar::operator<(a3, v4 + 8))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!quasar::operator<(v7 + 8, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void *std::__tree<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>::__emplace_unique_key_args<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>> const&>(uint64_t a1, unint64_t *a2)
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

void *std::allocator_traits<std::allocator<quasar::anonymous namespace::TranslationPhraseSpan>>::construct[abi:ne200100]<quasar::anonymous namespace::TranslationPhraseSpan,quasar::anonymous namespace::TranslationPhraseSpan&,0>(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  std::vector<quasar::AlternativeSelectionSpan::Range>::__init_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan::Range*,quasar::AlternativeSelectionSpan::Range*>((a1 + 1), a2[1], a2[2], (a2[2] - a2[1]) >> 3);
  return std::set<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>::set[abi:ne200100](a1 + 4, (a2 + 4));
}

void sub_1B57A1080(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<quasar::AlternativeSelectionSpan::Range,std::vector<quasar::anonymous namespace::TranslationPhraseSpan>>,std::__map_value_compare<quasar::AlternativeSelectionSpan::Range,std::__value_type<quasar::AlternativeSelectionSpan::Range,std::vector<quasar::anonymous namespace::TranslationPhraseSpan>>,std::less<quasar::AlternativeSelectionSpan::Range>,true>,std::allocator<std::__value_type<quasar::AlternativeSelectionSpan::Range,std::vector<quasar::anonymous namespace::TranslationPhraseSpan>>>>::destroy(char *a1)
{
  if (a1)
  {
    v2 = (a1 + 40);

    operator delete(a1);
  }
}

void *std::vector<std::unordered_set<int>>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<std::string,unsigned long>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B57A11C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<std::vector<quasar::AlternativeSelectionSpan>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void **std::__split_buffer<std::vector<quasar::AlternativeSelectionSpan>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<quasar::AlternativeSelectionSpan>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<quasar::AlternativeSelectionSpan>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void *std::vector<quasar::AlternativeSelectionSpan::Alternative>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B57A13E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

_DWORD *quasar::anonymous namespace::ProcessedTranslation::getSpanForSourceRange(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 != v3)
  {
    while (!quasar::operator==(v2, a2))
    {
      v2 += 14;
      if (v2 == v3)
      {
        v2 = v3;
        break;
      }
    }

    v3 = *(a1 + 32);
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void quasar::anonymous namespace::getDifferentValuesForSameDescriptions(void *a1@<X0>, void *a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,std::insert_iterator<std::set<int>>>(v30, &v31, v28, &v28 + 1, &v26, v27, v33);
  std::__tree<int>::destroy(&v28, *(&v28 + 1));
  std::__tree<int>::destroy(&v30, v31);
  v6 = v26;
  if (v26 != v27)
  {
    do
    {
      v7 = v32;
      v8 = v29;
      v9 = v32 != v29 || v32 == 0;
      if (v9)
      {
        if (v32 != v29)
        {
          goto LABEL_11;
        }
      }

      else if (v30 != v28)
      {
LABEL_11:
        v10 = a3[1];
        v11 = a3[2];
        if (v10 >= v11)
        {
          v14 = (v10 - *a3) >> 4;
          v15 = v14 + 1;
          if ((v14 + 1) >> 60)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v16 = v11 - *a3;
          if (v16 >> 3 > v15)
          {
            v15 = v16 >> 3;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF0)
          {
            v17 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          v33[4] = a3;
          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<quasar::FeatureExtractor>>>(a3, v17);
          }

          v18 = 16 * v14;
          v19 = *(&v28 + 1);
          *(16 * v14) = v28;
          if (v19)
          {
            atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
          }

          v13 = (v18 + 16);
          v20 = a3[1] - *a3;
          v21 = v18 - v20;
          memcpy((v18 - v20), *a3, v20);
          v22 = *a3;
          *a3 = v21;
          a3[1] = v13;
          v23 = a3[2];
          a3[2] = 0;
          v33[2] = v22;
          v33[3] = v23;
          v33[0] = v22;
          v33[1] = v22;
          std::__split_buffer<std::shared_ptr<quasar::FeatureExtractor>>::~__split_buffer(v33);
        }

        else
        {
          *v10 = v28;
          v12 = *(&v28 + 1);
          v10[1] = *(&v28 + 1);
          if (v12)
          {
            atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
          }

          v13 = v10 + 2;
        }

        a3[1] = v13;
        if (!v8)
        {
          goto LABEL_29;
        }

LABEL_27:
        if (*(&v28 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v28 + 1));
        }

        goto LABEL_29;
      }

      if (v29)
      {
        goto LABEL_27;
      }

LABEL_29:
      if (v7 && v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      v24 = v6[1];
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
          v25 = v6[2];
          v9 = *v25 == v6;
          v6 = v25;
        }

        while (!v9);
      }

      v6 = v25;
    }

    while (v25 != v27);
  }

  std::__tree<int>::destroy(&v26, v27[0]);
}

void sub_1B57A16D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, void **a13, void *a14, uint64_t a15, char a16, void *a17)
{
  std::__tree<int>::destroy(&a10, a11);
  std::__tree<int>::destroy(&a13, a14);
  std::__tree<int>::destroy(&a16, a17);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void quasar::anonymous namespace::ProcessedTranslation::getSpansWithoutSource(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v4 != v5)
  {
    v7 = 0;
    v8 = *(a1 + 24);
    do
    {
      if (!quasar::operator==(v8, a2))
      {
        v9 = a3[2];
        if (v7 >= v9)
        {
          v10 = v7;
          v11 = v7 >> 3;
          v12 = v11 + 1;
          if ((v11 + 1) >> 61)
          {
            *a3 = 0;
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (v9 >> 2 > v12)
          {
            v12 = v9 >> 2;
          }

          if (v9 >= 0x7FFFFFFFFFFFFFF8)
          {
            v13 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v12;
          }

          if (v13)
          {
            if (!(v13 >> 61))
            {
              operator new();
            }

            *a3 = 0;
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v14 = (8 * v11);
          *v14 = v4;
          v7 = (v14 + 1);
          memcpy(0, 0, v10);
          a3[1] = v7;
          a3[2] = 0;
        }

        else
        {
          *v7 = v4;
          v7 += 8;
        }

        a3[1] = v7;
      }

      v8 += 14;
      v4 += 14;
    }

    while (v8 != v5);
  }

  *a3 = 0;
}

void sub_1B57A18A8(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::anonymous namespace::TranslationPhraseSpan::getAltValue@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(this + 32);
  v4 = (this + 40);
  if (v3 != (this + 40))
  {
    while (1)
    {
      v5 = *(v3[4] + 24);
      if (v5 == -1)
      {
        v5 = -1;
      }

      if (v5 == a2)
      {
        break;
      }

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
      if (v7 == v4)
      {
        goto LABEL_15;
      }
    }
  }

  if (v3 == v4)
  {
LABEL_15:
    v11 = 0;
    *a3 = 0;
  }

  else
  {
    v9 = v3[5];
    *a3 = v3[4];
    *(a3 + 8) = v9;
    if (v9)
    {
      v10 = (v9 + 8);
      v11 = 1;
      atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
    }

    else
    {
      v11 = 1;
    }
  }

  *(a3 + 16) = v11;
  return this;
}

void *quasar::anonymous namespace::TranslationPhraseSpan::getAltTypes@<X0>(void *this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v3 = this[4];
  v4 = this + 5;
  if (v3 != this + 5)
  {
    do
    {
      v5 = *(v3[4] + 24);
      if (v5 == -1)
      {
        v5 = -1;
      }

      v9 = v5;
      this = std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(a2, &v9);
      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  return this;
}

void *std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(uint64_t a1, unint64_t *a2)
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

double std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,std::insert_iterator<std::set<int>>>@<D0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v17 = a3;
  v18 = a1;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  for (i = 0; v17 != a4; a3 = v17)
  {
    v10 = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,unsigned long,std::__identity const,std::__less<void,void>>(v18, a2, a3 + 4);
    v11 = v18;
    v18 = v10;
    std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,std::insert_iterator<std::set<int>>>((v10 == v11), &v18, &v17, &v16, &i);
    if (v18 == a2)
    {
      break;
    }

    v12 = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,unsigned long,std::__identity const,std::__less<void,void>>(v17, a4, v18 + 4);
    v13 = v17;
    v17 = v12;
    std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,std::insert_iterator<std::set<int>>>((v12 == v13), &v18, &v17, &v16, &i);
  }

  *a7 = a2;
  *(a7 + 8) = a4;
  result = *&v16;
  *(a7 + 16) = v16;
  return result;
}

void *std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,unsigned long,std::__identity const,std::__less<void,void>>(void *a1, void *a2, void *a3)
{
  v10 = a2;
  if (a1 != a2)
  {
    v4 = a1;
    if (a1[4] >= *a3)
    {
      return a1;
    }

    else
    {
      v9 = a1;
      v5 = 1;
      v6 = std::_IterOps<std::_ClassicAlgPolicy>::__advance_to[abi:ne200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(&v9, 1, &v10);
      a2 = v9;
      if (v9 != v10)
      {
        v5 = 1;
        do
        {
          v7 = a2;
          if (a2[4] >= *a3)
          {
            break;
          }

          v5 *= 2;
          v9 = a2;
          v6 = std::_IterOps<std::_ClassicAlgPolicy>::__advance_to[abi:ne200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(&v9, v5, &v10);
          a2 = v9;
          v4 = v7;
        }

        while (v9 != v10);
      }

      if (v5 - v6 != 1)
      {
        return std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,unsigned long,std::__identity const,std::__less<void,void>>(v4, a3, v5 - v6);
      }
    }
  }

  return a2;
}

void **std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,std::insert_iterator<std::set<int>>>(void **result, uint64_t a2, uint64_t a3, void **a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      v16 = *(*a2 + 32);
      result = std::insert_iterator<std::set<int>>::operator=[abi:ne200100](a4, &v16);
      v8 = *a2;
      v9 = *(*a2 + 8);
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      *a2 = v10;
      v12 = *a3;
      v13 = *(*a3 + 8);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      v15 = 0;
      *a3 = v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *a5 = v15;
  return result;
}

void *std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>,unsigned long,std::__identity const,std::__less<void,void>>(void *a1, void *a2, unint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v6 = v4 >> 1;
      v11 = a1;
      std::__advance[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(&v11, v4 >> 1);
      v7 = v11;
      if (v11[4] < *a2)
      {
        v8 = v11[1];
        if (v8)
        {
          do
          {
            a1 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            a1 = v7[2];
            v9 = *a1 == v7;
            v7 = a1;
          }

          while (!v9);
        }

        v6 = v4 + ~v6;
      }

      v4 = v6;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::_IterOps<std::_ClassicAlgPolicy>::__advance_to[abi:ne200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(void **a1, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    v3 = 0;
    v8 = -a2;
    v9 = 1;
    if (-a2 > 1)
    {
      v9 = -a2;
    }

    v10 = *a1;
    while (v10 != *a3)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v10[2];
          v7 = *v12 == v10;
          v10 = v12;
        }

        while (v7);
      }

      *a1 = v12;
      ++v3;
      v10 = v12;
      if (v3 == v9)
      {
        v3 = v9;
        return v8 - v3;
      }
    }
  }

  else if (a2)
  {
    v3 = 0;
    v4 = *a1;
    while (v4 != *a3)
    {
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      *a1 = v6;
      ++v3;
      v4 = v6;
      if (v3 == a2)
      {
        v8 = a2;
        v3 = a2;
        return v8 - v3;
      }
    }

    v8 = a2;
  }

  else
  {
    v8 = 0;
    v3 = 0;
  }

  return v8 - v3;
}

void **std::insert_iterator<std::set<int>>::operator=[abi:ne200100](void **a1, int *a2)
{
  v3 = std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(*a1, a1[1], a2);
  a1[1] = v3;
  v4 = *(v3 + 8);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = *(v3 + 16);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

uint64_t std::vector<quasar::AlternativeSelectionSpan::Alternative>::__emplace_back_slow_path<quasar::AlternativeSelectionSpan::Alternative const&>(uint64_t *a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>>(a1, v6);
  }

  v7 = 24 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = a2[1];
  *v7 = *a2;
  *(v7 + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(24 * v2 + 0x10) = a2[2];
  *&v17 = v7 + 24;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>,quasar::AlternativeSelectionSpan::Alternative*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>::~__split_buffer(&v15);
  return v14;
}

void sub_1B57A20F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>,quasar::AlternativeSelectionSpan::Alternative*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(a4 + 16) = *(v6 + 16);
      v6 += 24;
      a4 += 24;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AlternativeSelectionSpan::Alternative>,quasar::AlternativeSelectionSpan::Alternative*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>>>::__emplace_unique_key_args<std::string,std::string const&,std::vector<quasar::AlternativeSelectionSpan::Alternative>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>>>::__construct_node_hash<std::string const&,std::vector<quasar::AlternativeSelectionSpan::Alternative>>();
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

void sub_1B57A2400(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::vector<quasar::AlternativeSelectionSpan::Alternative>>::pair[abi:ne200100]<std::string const&,std::vector<quasar::AlternativeSelectionSpan::Alternative>,0>(std::string *this, __int128 *a2, uint64_t a3)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  *&this[1].__r_.__value_.__l.__data_ = *a3;
  this[1].__r_.__value_.__r.__words[2] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return this;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t std::vector<quasar::AlternativeSelectionSpan::Alternative>::__init_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan::Alternative const*,quasar::AlternativeSelectionSpan::Alternative const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::AlternativeSelectionSpan::Alternative>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B57A2610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::vector<quasar::AlternativeSelectionSpan::Alternative>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::AlternativeSelectionSpan::Alternative const*>,std::__wrap_iter<quasar::AlternativeSelectionSpan::Alternative const*>>(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 3 * a5;
        std::vector<quasar::AlternativeSelectionSpan::Alternative>::__move_range(a1, a2, a1[1], a2 + 24 * a5);
        v17 = &v7[v18];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>,quasar::AlternativeSelectionSpan::Alternative*,quasar::AlternativeSelectionSpan::Alternative*,quasar::AlternativeSelectionSpan::Alternative*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<quasar::AlternativeSelectionSpan::Alternative>::__move_range(a1, v5, v10, &v5[3 * a5]);
        v17 = (v7 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<quasar::AlternativeSelectionSpan::Alternative *,quasar::AlternativeSelectionSpan::Alternative *,quasar::AlternativeSelectionSpan::Alternative *>(v22, v7, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    v22[4] = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>>(a1, v15);
    }

    v19 = (8 * (v13 >> 3));
    v22[0] = 0;
    v22[1] = v19;
    v22[3] = 0;
    do
    {
      *v19 = *v7;
      v20 = v7[1];
      v19[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }

      v19[2] = v7[2];
      v19 += 3;
      v7 += 3;
    }

    while (v19 != (8 * (v13 >> 3) + 24 * a5));
    v22[2] = (8 * (v13 >> 3) + 24 * a5);
    v5 = std::vector<quasar::AlternativeSelectionSpan::Alternative>::__swap_out_circular_buffer(a1, v22, v5);
    std::__split_buffer<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>::~__split_buffer(v22);
  }

  return v5;
}

uint64_t std::vector<quasar::AlternativeSelectionSpan::Alternative>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v9;
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v8 + 16) = *(v9 + 16);
      v9 += 24;
      v8 += 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::AlternativeSelectionSpan::Alternative *,quasar::AlternativeSelectionSpan::Alternative *,quasar::AlternativeSelectionSpan::Alternative *>(&v11, a2, v7, v6);
}

uint64_t std::vector<quasar::AlternativeSelectionSpan::Alternative>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>,quasar::AlternativeSelectionSpan::Alternative*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>,quasar::AlternativeSelectionSpan::Alternative*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::AlternativeSelectionSpan::Alternative *,quasar::AlternativeSelectionSpan::Alternative *,quasar::AlternativeSelectionSpan::Alternative *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = *(a3 + v7 - 24);
      *(v8 - 24) = 0;
      *(v8 - 16) = 0;
      v10 = *(a4 + v7 - 16);
      *(a4 + v7 - 24) = v9;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      *(a4 + v7 - 8) = *(v8 - 8);
      v7 -= 24;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<quasar::AlternativeSelectionSpan::Alternative>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<quasar::AlternativeSelectionSpan::Alternative>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::vector<quasar::AlternativeSelectionSpan::Alternative>::__emplace_back_slow_path<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>> const&,int &,int &>(uint64_t *a1, uint64_t *a2, int *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>>(a1, v8);
  }

  v15 = 0;
  v16 = 24 * v4;
  std::allocator<quasar::AlternativeSelectionSpan::Alternative>::construct[abi:ne200100]<quasar::AlternativeSelectionSpan::Alternative,std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>> const&,int &,int &>(a1, 24 * v4, a2, a3, a4);
  v17 = 24 * v4 + 24;
  v9 = a1[1];
  v10 = 24 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>,quasar::AlternativeSelectionSpan::Alternative*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>::~__split_buffer(&v15);
  return v14;
}

void sub_1B57A2BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::AlternativeSelectionSpan::Alternative>::construct[abi:ne200100]<quasar::AlternativeSelectionSpan::Alternative,std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>> const&,int &,int &>(uint64_t a1, uint64_t a2, uint64_t *a3, int *a4, int *a5)
{
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *a4;
    v8 = *a5;
    *a2 = v6;
    *(a2 + 8) = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a2 + 16) = v7;
    *(a2 + 20) = v8;
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v9 = *a4;
    v10 = *a5;
    *a2 = v6;
    *(a2 + 8) = 0;
    *(a2 + 16) = v9;
    *(a2 + 20) = v10;
  }
}

uint64_t std::vector<quasar::AlternativeSelectionSpan>::__emplace_back_slow_path<quasar::AlternativeSelectionSpan::Range const&,quasar::AlternativeSelectionSpan::Range const&,std::vector<quasar::AlternativeSelectionSpan::Alternative>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v5;
  }

  v23 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan>>(a1, v8);
  }

  v9 = 40 * v4;
  v20 = 0;
  v21 = v9;
  *(&v22 + 1) = 0;
  v10 = *a2;
  v11 = *a3;
  v12 = *(a4 + 2);
  v13 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *v9 = v10;
  *(v9 + 8) = v11;
  *(v9 + 16) = v13;
  *(v9 + 32) = v12;
  memset(v24, 0, sizeof(v24));
  v25 = v24;
  std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&v25);
  *&v22 = v9 + 40;
  v14 = a1[1];
  v15 = v9 + *a1 - v14;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan>,quasar::AlternativeSelectionSpan*>(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  std::__split_buffer<quasar::AlternativeSelectionSpan>::~__split_buffer(&v20);
  return v19;
}

void sub_1B57A2D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::AlternativeSelectionSpan>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan>,quasar::AlternativeSelectionSpan*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    while (v5 != a3)
    {
      v12 = (v5 + 16);
      std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&v12);
      v5 += 40;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AlternativeSelectionSpan>,quasar::AlternativeSelectionSpan*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

void **std::__split_buffer<quasar::AlternativeSelectionSpan>::~__split_buffer(void **a1)
{
  std::__split_buffer<quasar::AlternativeSelectionSpan>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::AlternativeSelectionSpan>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    v4 = (i - 24);
    std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&v4);
  }
}

uint64_t std::vector<std::unordered_set<int>>::__emplace_back_slow_path<std::unordered_set<int>>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<std::string,unsigned long>>>(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__hash_table(40 * v2, a2);
  v15 = 40 * v2 + 40;
  v7 = *(a1 + 8);
  v8 = 40 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>,std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::~__split_buffer(&v13);
  return v12;
}

void sub_1B57A2FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::pair<std::vector<std::unordered_set<int>>,std::vector<std::vector<quasar::AlternativeSelectionSpan>>>::pair[abi:ne200100]<std::vector<std::unordered_set<int>>&,std::vector<std::vector<quasar::AlternativeSelectionSpan>>&,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::unordered_set<int>>::__init_with_size[abi:ne200100]<std::unordered_set<int>*,std::unordered_set<int>*>(a1, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<std::vector<quasar::AlternativeSelectionSpan>>::__init_with_size[abi:ne200100]<std::vector<quasar::AlternativeSelectionSpan>*,std::vector<quasar::AlternativeSelectionSpan>*>((a1 + 3), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return a1;
}

void sub_1B57A305C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::unordered_set<int>>::__init_with_size[abi:ne200100]<std::unordered_set<int>*,std::unordered_set<int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::unordered_set<int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B57A30DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::unordered_set<int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<std::string,unsigned long>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::unordered_set<int>>,std::unordered_set<int>*,std::unordered_set<int>*,std::unordered_set<int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::unordered_set<int>::unordered_set(a4, v6);
      v6 += 40;
      a4 += 40;
      v7 -= 40;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1B57A31A8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 40;
    do
    {
      v4 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4) - 40;
      v2 += 40;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<quasar::AlternativeSelectionSpan>>::__init_with_size[abi:ne200100]<std::vector<quasar::AlternativeSelectionSpan>*,std::vector<quasar::AlternativeSelectionSpan>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B57A3234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<quasar::AlternativeSelectionSpan>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<quasar::AlternativeSelectionSpan>>,std::vector<quasar::AlternativeSelectionSpan>*,std::vector<quasar::AlternativeSelectionSpan>*,std::vector<quasar::AlternativeSelectionSpan>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<quasar::AlternativeSelectionSpan>::__init_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan*,quasar::AlternativeSelectionSpan*>(v4, *v6, v6[1], 0xCCCCCCCCCCCCCCCDLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::AlternativeSelectionSpan>>,std::vector<quasar::AlternativeSelectionSpan>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::AlternativeSelectionSpan>>,std::vector<quasar::AlternativeSelectionSpan>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::AlternativeSelectionSpan>>,std::vector<quasar::AlternativeSelectionSpan>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::AlternativeSelectionSpan>>,std::vector<quasar::AlternativeSelectionSpan>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void std::vector<std::vector<quasar::AlternativeSelectionSpan>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void *std::vector<quasar::TranslationPhraseInternal>::reserve(void *result, unint64_t a2)
{
  if (0xF83E0F83E0F83E1 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xF83E0F83E0F83FLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationPhraseInternal>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B57A34E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::TranslationPhraseInternal>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,int const&,unsigned long>(uint64_t a1, int *a2)
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

uint64_t std::vector<quasar::TranslationPhraseInternal>::__emplace_back_slow_path<quasar::TranslationPhraseInternal>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xF83E0F83E0F83E1 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xF83E0F83E0F83ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0xF83E0F83E0F83E1 * ((*(a1 + 16) - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
  {
    v6 = 0xF83E0F83E0F83ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationPhraseInternal>>(a1, v6);
  }

  v13 = 0;
  v14 = 264 * v2;
  quasar::TranslationPhraseInternal::TranslationPhraseInternal(264 * v2, a2);
  v15 = (264 * v2 + 264);
  v7 = *(a1 + 8);
  v8 = (264 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TranslationPhraseInternal>,quasar::TranslationPhraseInternal*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::TranslationPhraseInternal>::~__split_buffer(&v13);
  return v12;
}

void sub_1B57A36FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TranslationPhraseInternal>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void **std::pair<std::vector<std::unordered_set<int>>,std::vector<std::vector<quasar::AlternativeSelectionSpan>>>::~pair(void **a1)
{
  v3 = a1 + 3;
  std::vector<std::vector<quasar::AlternativeSelectionSpan>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1;
  std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void quasar::LinkAlternativesOptions::~LinkAlternativesOptions(quasar::LinkAlternativesOptions *this)
{
  *(this + 21) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 288, *(this + 37));
  *(this + 21) = &unk_1F2D08890;
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 247) < 0)
  {
    operator delete(*(this + 28));
  }

  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  *(this + 2) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 136, *(this + 18));
  *(this + 2) = &unk_1F2D08890;
  v3 = *(this + 14);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

void sub_1B57A3B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(&STACK[0x270]);
  _Unwind_Resume(a1);
}

uint64_t quasar::TextSanitizer::removeEmojis(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) != 1)
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
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v7, "TextSanitizer is not initialized");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v7);
  }

  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    __p = 0;
    v5 = 0;
    v6 = 0;
    quasar::TextSanitizer::remapEmojiUnicode();
  }

  if (quasar::gLogLevel >= 6)
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "Empty string received.", 22);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(&v7);
  }

  return 2;
}

uint64_t quasar::TextSanitizer::sanitizeDuplicateWhitespace(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 72) != 1)
  {
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
    v27 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v23, "TextSanitizer is not initialized");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v23);
  }

  if (*(a2 + 23) < 0)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      std::string::__init_copy_ctor_external(&v22, *a2, v5);
LABEL_7:
      code = U_ZERO_ERROR;
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v22;
      }

      else
      {
        v6 = v22.__r_.__value_.__r.__words[0];
      }

      quasar::UTextWrapper::UTextWrapper(&v20, v6, &code);
      if (code < U_ILLEGAL_ARGUMENT_ERROR)
      {
        quasar::URegularExpressionWrapper::replaceAllUTextWithSpace(*(a1 + 40), &v20, &code, &v23);
        quasar::UTextWrapper::operator=(&v20, &v23);
        quasar::UTextWrapper::~UTextWrapper(&v23);
        if (code < U_ILLEGAL_ARGUMENT_ERROR)
        {
          quasar::UTextWrapper::getUTF8String(&v20, &code, &__p);
          if (code < U_ILLEGAL_ARGUMENT_ERROR)
          {
            quasar::trim(&__p);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            if (size)
            {
              if (quasar::gLogLevel >= 6)
              {
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
                v27 = 0u;
                v25 = 0u;
                v26 = 0u;
                v23 = 0u;
                v24 = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
                v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Intermediate basic sanitization result=", 39);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v18 = __p.__r_.__value_.__l.__size_;
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, p_p, v18);
                quasar::QuasarTraceMessage::~QuasarTraceMessage(&v23);
              }

              v10 = (*(*a1 + 16))(a1, &__p, a3);
            }

            else
            {
              if (quasar::gLogLevel >= 6)
              {
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
                v27 = 0u;
                v25 = 0u;
                v26 = 0u;
                v23 = 0u;
                v24 = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "sanitized string is empty", 25);
                quasar::QuasarTraceMessage::~QuasarTraceMessage(&v23);
              }

              v10 = 2;
            }
          }

          else
          {
            v10 = 1;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_20;
        }

        if (quasar::gLogLevel >= 1)
        {
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
          v27 = 0u;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
          v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Failed to remove redundant space characters: ", 45);
          v12 = u_errorName(code);
          v13 = strlen(v12);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
          quasar::QuasarErrorMessage::~QuasarErrorMessage(&v23);
        }
      }

      else if (quasar::gLogLevel >= 1)
      {
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
        v27 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Could not open UTF8: : ", 23);
        v8 = u_errorName(code);
        v9 = strlen(v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(&v23);
      }

      v10 = 1;
LABEL_20:
      quasar::UTextWrapper::~UTextWrapper(&v20);
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      return v10;
    }
  }

  else if (*(a2 + 23))
  {
    v22 = *a2;
    goto LABEL_7;
  }

  if (quasar::gLogLevel >= 6)
  {
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
    v27 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Empty string received.", 22);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(&v23);
  }

  return 2;
}