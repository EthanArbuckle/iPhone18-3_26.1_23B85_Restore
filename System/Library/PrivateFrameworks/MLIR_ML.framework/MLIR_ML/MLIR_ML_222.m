void std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v62 = v2;
    v63 = v3;
    v4 = a2;
    v6 = a1 + 40;
    if (a1 + 40 != a2)
    {
      v7 = 0;
      v8 = v60;
      v9 = a1;
      do
      {
        v10 = v9;
        v9 = v6;
        v12 = *(v10 + 40);
        v13 = v12 >= *v10;
        if (v12 == *v10 && (v14 = *(v10 + 48), v15 = *(v10 + 8), v13 = v14 >= v15, v14 == v15))
        {
          v41 = *(v10 + 39);
          v42 = *(v10 + 79);
          if (v42 >= 0)
          {
            v43 = (v10 + 56);
          }

          else
          {
            v43 = *(v10 + 56);
          }

          if (v42 >= 0)
          {
            v44 = *(v10 + 79);
          }

          else
          {
            v44 = *(v10 + 64);
          }

          if (v41 >= 0)
          {
            v45 = *(v10 + 39);
          }

          else
          {
            v45 = *(v10 + 24);
          }

          if (v41 >= 0)
          {
            v46 = (v10 + 16);
          }

          else
          {
            v46 = *(v10 + 16);
          }

          if (v45 >= v44)
          {
            v47 = v44;
          }

          else
          {
            v47 = v45;
          }

          v48 = memcmp(v43, v46, v47);
          v13 = v44 >= v45;
          v4 = a2;
          v49 = !v13;
          if (v48)
          {
            v49 = v48 < 0;
          }

          if (!v49)
          {
            goto LABEL_6;
          }
        }

        else if (v13)
        {
          goto LABEL_6;
        }

        v59 = *v9;
        v8[2] = *(v10 + 72);
        *v8 = *(v10 + 56);
        *(v10 + 56) = 0;
        *(v10 + 64) = 0;
        *(v10 + 72) = 0;
        v16 = *(&v59 + 1);
        if ((v61 & 0x80u) == 0)
        {
          v17 = v61;
        }

        else
        {
          v17 = v60[1];
        }

        if ((v61 & 0x80u) == 0)
        {
          v18 = v8;
        }

        else
        {
          v18 = v60[0];
        }

        v57 = v18;
        v58 = v17;
        v19 = *(v9 + 39);
        *v9 = *v10;
        if (v19 < 0)
        {
          operator delete(*(v9 + 16));
        }

        v20 = v10 + 16;
        *(v9 + 16) = *(v10 + 16);
        *(v9 + 32) = *(v10 + 32);
        *(v10 + 39) = 0;
        *(v10 + 16) = 0;
        if (v10 == a1)
        {
          v10 = a1;
        }

        else
        {
          v21 = *(v10 - 40);
          v22 = v59 >= v21;
          if (v59 == v21 && (v23 = *(v10 - 32), v22 = *(&v59 + 1) >= v23, *(&v59 + 1) == v23))
          {
            v50 = *(v10 - 1);
            if (v50 >= 0)
            {
              v51 = *(v10 - 1);
            }

            else
            {
              v51 = *(v10 - 16);
            }

            if (v50 >= 0)
            {
              v52 = (v10 - 24);
            }

            else
            {
              v52 = *(v10 - 24);
            }

            if (v51 >= v58)
            {
              v53 = v58;
            }

            else
            {
              v53 = v51;
            }

            v54 = memcmp(v57, v52, v53);
            v13 = v58 >= v51;
            v4 = a2;
            v55 = !v13;
            if (v54)
            {
              v55 = v54 < 0;
            }

            if (v55)
            {
LABEL_22:
              for (i = v7; ; i -= 40)
              {
                v25 = a1 + i;
                v26 = *(a1 + i - 24);
                *v25 = *(a1 + i - 40);
                *(v25 + 16) = v26;
                *(v25 + 32) = *(a1 + i - 8);
                *(v25 - 1) = 0;
                *(v25 - 24) = 0;
                if (i == 40)
                {
                  break;
                }

                v27 = *(v25 - 80);
                v28 = v59 >= v27;
                if (v59 == v27 && (v29 = a1 + i, v30 = *(a1 + i - 72), v28 = v16 >= v30, v16 == v30))
                {
                  v33 = *(v29 - 64);
                  v31 = v29 - 64;
                  v32 = v33;
                  v34 = *(v31 + 23);
                  v35 = v8;
                  if (v34 >= 0)
                  {
                    v36 = *(v31 + 23);
                  }

                  else
                  {
                    v36 = *(v31 + 8);
                  }

                  if (v34 >= 0)
                  {
                    v37 = v31;
                  }

                  else
                  {
                    v37 = v32;
                  }

                  if (v36 >= v58)
                  {
                    v38 = v58;
                  }

                  else
                  {
                    v38 = v36;
                  }

                  v39 = memcmp(v57, v37, v38);
                  v13 = v58 >= v36;
                  v8 = v35;
                  v16 = *(&v59 + 1);
                  v40 = !v13;
                  if (v39)
                  {
                    v40 = v39 < 0;
                  }

                  if (!v40)
                  {
LABEL_43:
                    v10 = a1 + i - 40;
                    goto LABEL_67;
                  }
                }

                else if (v28)
                {
                  goto LABEL_43;
                }
              }

              v10 = a1;
LABEL_67:
              v20 = v25 - 24;
              v4 = a2;
            }
          }

          else if (!v22)
          {
            goto LABEL_22;
          }
        }

        *v10 = v59;
        v11 = *v8;
        *(v20 + 16) = v8[2];
        *v20 = v11;
LABEL_6:
        v6 = v9 + 40;
        v7 += 40;
      }

      while (v9 + 40 != v4);
    }
  }
}

void std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v51 = v2;
    v52 = v3;
    v4 = a2;
    v5 = a1;
    v6 = (a1 + 40);
    if ((a1 + 40) != a2)
    {
      v7 = a1 + 1;
      do
      {
        v9 = v5;
        v5 = v6;
        v11 = *(v9 + 5);
        v12 = v11 >= *v9;
        if (v11 == *v9 && (v13 = *(v9 + 6), v14 = *(v9 + 1), v12 = v13 >= v14, v13 == v14))
        {
          v32 = *(v9 + 39);
          v33 = *(v9 + 79);
          if (v33 >= 0)
          {
            v34 = v9 + 56;
          }

          else
          {
            v34 = *(v9 + 7);
          }

          if (v33 >= 0)
          {
            v35 = *(v9 + 79);
          }

          else
          {
            v35 = *(v9 + 8);
          }

          if (v32 >= 0)
          {
            v36 = *(v9 + 39);
          }

          else
          {
            v36 = *(v9 + 3);
          }

          if (v32 >= 0)
          {
            v37 = v9 + 1;
          }

          else
          {
            v37 = *(v9 + 2);
          }

          if (v36 >= v35)
          {
            v38 = v35;
          }

          else
          {
            v38 = v36;
          }

          v39 = memcmp(v34, v37, v38);
          v40 = v35 < v36;
          if (v39)
          {
            v40 = v39 < 0;
          }

          if (!v40)
          {
            goto LABEL_6;
          }
        }

        else if (v12)
        {
          goto LABEL_6;
        }

        v48 = *v5;
        v50 = *(v9 + 9);
        v49 = *(v9 + 56);
        *(v9 + 7) = 0;
        *(v9 + 8) = 0;
        *(v9 + 9) = 0;
        if (v50 >= 0)
        {
          v15 = HIBYTE(v50);
        }

        else
        {
          v15 = *(&v49 + 1);
        }

        if (v50 >= 0)
        {
          v16 = &v49;
        }

        else
        {
          v16 = v49;
        }

        v17 = *(v5 + 39);
        *v5 = *v9;
        if (v17 < 0)
        {
          operator delete(*(v5 + 2));
        }

        v8 = v9 + 1;
        v5[1] = v9[1];
        *(v5 + 4) = *(v9 + 4);
        *(v9 + 39) = 0;
        *(v9 + 16) = 0;
        v18 = *(v9 - 5);
        v19 = v48 >= v18;
        if (v48 == v18 && (v20 = *(v9 - 4), v19 = *(&v48 + 1) >= v20, *(&v48 + 1) == v20))
        {
          v41 = *(v9 - 1);
          if (v41 >= 0)
          {
            v42 = *(v9 - 1);
          }

          else
          {
            v42 = *(v9 - 2);
          }

          if (v41 >= 0)
          {
            v43 = v9 - 24;
          }

          else
          {
            v43 = *(v9 - 3);
          }

          if (v42 >= v15)
          {
            v44 = v15;
          }

          else
          {
            v44 = v42;
          }

          v45 = memcmp(v16, v43, v44);
          v46 = v15 < v42;
          if (v45)
          {
            v46 = v45 < 0;
          }

          if (v46)
          {
LABEL_21:
            for (i = v7; ; i = (i - 40))
            {
              v22 = *(i - 40);
              *(i - 1) = *(i - 56);
              *i = v22;
              *(i + 2) = *(i - 3);
              *(i - 17) = 0;
              *(i - 40) = 0;
              v23 = *(i - 12);
              v24 = v48 >= v23;
              if (v48 == v23 && (v25 = *(i - 11), v24 = *(&v48 + 1) >= v25, *(&v48 + 1) == v25))
              {
                v26 = *(i - 57);
                if (v26 >= 0)
                {
                  v27 = *(i - 57);
                }

                else
                {
                  v27 = *(i - 9);
                }

                if (v26 >= 0)
                {
                  v28 = i - 5;
                }

                else
                {
                  v28 = *(i - 10);
                }

                if (v27 >= v15)
                {
                  v29 = v15;
                }

                else
                {
                  v29 = v27;
                }

                v30 = memcmp(v16, v28, v29);
                v31 = v15 < v27;
                if (v30)
                {
                  v31 = v30 < 0;
                }

                if (!v31)
                {
LABEL_4:
                  v8 = (i - 40);
                  v9 = (i - 56);
                  break;
                }
              }

              else if (v24)
              {
                goto LABEL_4;
              }
            }
          }
        }

        else if (!v19)
        {
          goto LABEL_21;
        }

        *v9 = v48;
        v10 = v49;
        *(v8 + 2) = v50;
        *v8 = v10;
        v4 = a2;
LABEL_6:
        v6 = (v5 + 40);
        v7 = (v7 + 40);
      }

      while ((v5 + 40) != v4);
    }
  }
}

unint64_t std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,llvm::SMFixIt *,std::__less<void,void> &>(__int128 *a1, unint64_t a2)
{
  v2 = a2;
  v81[2] = *MEMORY[0x277D85DE8];
  v77 = *a1;
  v78 = a1[1];
  v79 = *(a1 + 4);
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  *(a1 + 2) = 0;
  v4 = *(a2 - 40);
  if (v77 == v4)
  {
    v5 = *(&v77 + 1);
    v6 = *(a2 - 32);
    if (*(&v77 + 1) == v6)
    {
      v18 = *(a2 - 1);
      if (v79 >= 0)
      {
        v19 = HIBYTE(v79);
      }

      else
      {
        v19 = *(&v78 + 1);
      }

      if (v79 >= 0)
      {
        v20 = &v78;
      }

      else
      {
        v20 = v78;
      }

      if (v18 >= 0)
      {
        v21 = *(a2 - 1);
      }

      else
      {
        v21 = *(a2 - 16);
      }

      if (v18 >= 0)
      {
        v22 = (a2 - 24);
      }

      else
      {
        v22 = *(a2 - 24);
      }

      if (v21 >= v19)
      {
        v23 = v19;
      }

      else
      {
        v23 = v21;
      }

      v24 = memcmp(v20, v22, v23);
      v25 = v19 < v21;
      if (v24)
      {
        v25 = v24 < 0;
      }

      if (v25)
      {
        goto LABEL_6;
      }
    }

    else if (*(&v77 + 1) < v6)
    {
      goto LABEL_6;
    }
  }

  else if (v77 < v4)
  {
    v5 = *(&v77 + 1);
LABEL_6:
    if (v79 >= 0)
    {
      v7 = HIBYTE(v79);
    }

    else
    {
      v7 = *(&v78 + 1);
    }

    if (v79 >= 0)
    {
      v8 = &v78;
    }

    else
    {
      v8 = v78;
    }

    for (i = a1 + 40; ; i += 40)
    {
      v10 = v77 >= *i;
      if (v77 == *i && (v11 = *(i + 8), v10 = v5 >= v11, v5 == v11))
      {
        v12 = *(i + 39);
        if (v12 >= 0)
        {
          v13 = *(i + 39);
        }

        else
        {
          v13 = *(i + 24);
        }

        if (v12 >= 0)
        {
          v14 = (i + 16);
        }

        else
        {
          v14 = *(i + 16);
        }

        if (v13 >= v7)
        {
          v15 = v7;
        }

        else
        {
          v15 = v13;
        }

        v16 = memcmp(v8, v14, v15);
        v17 = v7 < v13;
        if (v16)
        {
          v17 = v16 < 0;
        }

        if (v17)
        {
          goto LABEL_73;
        }
      }

      else if (!v10)
      {
        goto LABEL_73;
      }
    }
  }

  i = a1 + 40;
  if (a1 + 40 < v2)
  {
    if (v79 >= 0)
    {
      v26 = HIBYTE(v79);
    }

    else
    {
      v26 = *(&v78 + 1);
    }

    if (v79 >= 0)
    {
      v27 = &v78;
    }

    else
    {
      v27 = v78;
    }

    do
    {
      v28 = v77 >= *i;
      if (v77 == *i && (v29 = *(i + 8), v28 = *(&v77 + 1) >= v29, *(&v77 + 1) == v29))
      {
        v30 = *(i + 39);
        if (v30 >= 0)
        {
          v31 = *(i + 39);
        }

        else
        {
          v31 = *(i + 24);
        }

        if (v30 >= 0)
        {
          v32 = (i + 16);
        }

        else
        {
          v32 = *(i + 16);
        }

        if (v31 >= v26)
        {
          v33 = v26;
        }

        else
        {
          v33 = v31;
        }

        v34 = memcmp(v27, v32, v33);
        v35 = v26 < v31;
        if (v34)
        {
          v35 = v34 < 0;
        }

        if (v35)
        {
          break;
        }
      }

      else if (!v28)
      {
        break;
      }

      i += 40;
    }

    while (i < v2);
  }

LABEL_73:
  if (i < v2)
  {
    if (v79 >= 0)
    {
      v36 = HIBYTE(v79);
    }

    else
    {
      v36 = *(&v78 + 1);
    }

    if (v79 >= 0)
    {
      v37 = &v78;
    }

    else
    {
      v37 = v78;
    }

    for (v2 -= 40; ; v2 -= 40)
    {
      v39 = v77 >= v4;
      if (v77 == v4 && (v40 = *(v2 + 8), v39 = *(&v77 + 1) >= v40, *(&v77 + 1) == v40))
      {
        v41 = *(v2 + 39);
        if (v41 >= 0)
        {
          v42 = *(v2 + 39);
        }

        else
        {
          v42 = *(v2 + 24);
        }

        if (v41 >= 0)
        {
          v43 = (v2 + 16);
        }

        else
        {
          v43 = *(v2 + 16);
        }

        if (v42 >= v36)
        {
          v44 = v36;
        }

        else
        {
          v44 = v42;
        }

        v45 = memcmp(v37, v43, v44);
        v46 = v36 < v42;
        if (v45)
        {
          v46 = v45 < 0;
        }

        if (!v46)
        {
          break;
        }
      }

      else if (v39)
      {
        break;
      }

      v38 = *(v2 - 40);
      v4 = v38;
    }
  }

LABEL_140:
  while (i < v2)
  {
    v80 = *i;
    v47 = *(i + 16);
    v81[0] = *(i + 24);
    *(v81 + 7) = *(i + 31);
    v48 = *(i + 39);
    *(i + 24) = 0;
    *(i + 32) = 0;
    *(i + 16) = 0;
    *i = *v2;
    v49 = *(v2 + 16);
    *(i + 32) = *(v2 + 32);
    *(i + 16) = v49;
    *v2 = v80;
    *(v2 + 31) = *(v81 + 7);
    v50 = v81[0];
    *(v2 + 16) = v47;
    *(v2 + 24) = v50;
    *(v2 + 39) = v48;
    if (v79 >= 0)
    {
      v51 = HIBYTE(v79);
    }

    else
    {
      v51 = *(&v78 + 1);
    }

    if (v79 >= 0)
    {
      v52 = &v78;
    }

    else
    {
      v52 = v78;
    }

    do
    {
      while (1)
      {
        while (1)
        {
          v53 = *(i + 40);
          i += 40;
          v54 = v77 >= v53;
          if (v77 == v53)
          {
            break;
          }

          if (!v54)
          {
            goto LABEL_124;
          }
        }

        v55 = *(i + 8);
        if (*(&v77 + 1) == v55)
        {
          break;
        }

        if (*(&v77 + 1) < v55)
        {
          goto LABEL_124;
        }
      }

      v56 = *(i + 39);
      if (v56 >= 0)
      {
        v57 = *(i + 39);
      }

      else
      {
        v57 = *(i + 24);
      }

      if (v56 >= 0)
      {
        v58 = (i + 16);
      }

      else
      {
        v58 = *(i + 16);
      }

      if (v57 >= v51)
      {
        v59 = v51;
      }

      else
      {
        v59 = v57;
      }

      v60 = memcmp(v52, v58, v59);
      v61 = v51 < v57;
      if (v60)
      {
        v61 = v60 < 0;
      }
    }

    while (!v61);
    do
    {
      while (1)
      {
LABEL_124:
        while (1)
        {
          v62 = *(v2 - 40);
          v2 -= 40;
          v63 = v77 >= v62;
          if (v77 == v62)
          {
            break;
          }

          if (v63)
          {
            goto LABEL_140;
          }
        }

        v64 = *(v2 + 8);
        if (*(&v77 + 1) == v64)
        {
          break;
        }

        if (*(&v77 + 1) >= v64)
        {
          goto LABEL_140;
        }
      }

      v65 = *(v2 + 39);
      if (v65 >= 0)
      {
        v66 = *(v2 + 39);
      }

      else
      {
        v66 = *(v2 + 24);
      }

      if (v65 >= 0)
      {
        v67 = (v2 + 16);
      }

      else
      {
        v67 = *(v2 + 16);
      }

      if (v66 >= v51)
      {
        v68 = v51;
      }

      else
      {
        v68 = v66;
      }

      v69 = memcmp(v52, v67, v68);
      v70 = v51 < v66;
      if (v69)
      {
        v70 = v69 < 0;
      }
    }

    while (v70);
  }

  v71 = (i - 40);
  if ((i - 40) == a1)
  {
    v74 = *(i - 1);
    *v71 = v77;
    v72 = i - 24;
    if (v74 < 0)
    {
      operator delete(*v72);
    }
  }

  else
  {
    *a1 = *v71;
    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 2));
    }

    v72 = i - 24;
    v73 = *(i - 24);
    *(a1 + 4) = *(i - 8);
    a1[1] = v73;
    *(i - 1) = 0;
    *(i - 24) = 0;
    *v71 = v77;
  }

  v75 = v78;
  *(v72 + 16) = v79;
  *v72 = v75;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,llvm::SMFixIt *,std::__less<void,void> &>(__int128 *a1, unint64_t a2)
{
  v4 = 0;
  v75[2] = *MEMORY[0x277D85DE8];
  v73 = *(a1 + 4);
  v5 = v73;
  v71 = *a1;
  v72 = a1[1];
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  v6 = HIBYTE(v5);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(&v72 + 1);
  }

  if ((v6 & 0x80u) == 0)
  {
    v8 = &v72;
  }

  else
  {
    v8 = v72;
  }

  while (1)
  {
    v9 = *(a1 + v4 + 40);
    v10 = v9 >= v71;
    if (v9 == v71)
    {
      v11 = *(a1 + v4 + 48);
      v10 = v11 >= *(&v71 + 1);
      if (v11 == *(&v71 + 1))
      {
        break;
      }
    }

    if (v10)
    {
      goto LABEL_23;
    }

LABEL_8:
    v4 += 40;
  }

  v12 = *(a1 + v4 + 79);
  if (v12 >= 0)
  {
    v13 = *(a1 + v4 + 79);
  }

  else
  {
    v13 = *(a1 + v4 + 64);
  }

  if (v12 >= 0)
  {
    v14 = a1 + v4 + 56;
  }

  else
  {
    v14 = *(a1 + v4 + 56);
  }

  if (v7 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v7;
  }

  v16 = memcmp(v14, v8, v15);
  v17 = v13 < v7;
  if (v16)
  {
    v17 = v16 < 0;
  }

  if (v17)
  {
    goto LABEL_8;
  }

LABEL_23:
  v18 = a1 + v4 + 40;
  if (v4)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v19 = *(a2 - 40);
          a2 -= 40;
          v20 = v19 >= v71;
          if (v19 == v71)
          {
            break;
          }

          if (!v20)
          {
            goto LABEL_67;
          }
        }

        v21 = *(a2 + 8);
        if (v21 == *(&v71 + 1))
        {
          break;
        }

        if (v21 < *(&v71 + 1))
        {
          goto LABEL_67;
        }
      }

      v22 = *(a2 + 39);
      if (v22 >= 0)
      {
        v23 = *(a2 + 39);
      }

      else
      {
        v23 = *(a2 + 24);
      }

      if (v22 >= 0)
      {
        v24 = (a2 + 16);
      }

      else
      {
        v24 = *(a2 + 16);
      }

      if (v7 >= v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = v7;
      }

      v26 = memcmp(v24, v8, v25);
      v27 = v23 < v7;
      if (v26)
      {
        v27 = v26 < 0;
      }
    }

    while (!v27);
  }

  else if (v18 < a2)
  {
    do
    {
      while (1)
      {
        v29 = *(a2 - 40);
        a2 -= 40;
        v30 = v29 >= v71;
        if (v29 == v71)
        {
          v31 = *(a2 + 8);
          v30 = v31 >= *(&v71 + 1);
          if (v31 == *(&v71 + 1))
          {
            break;
          }
        }

        if (!v30 || v18 >= a2)
        {
          goto LABEL_67;
        }
      }

      v32 = *(a2 + 39);
      if (v32 >= 0)
      {
        v33 = *(a2 + 39);
      }

      else
      {
        v33 = *(a2 + 24);
      }

      if (v32 >= 0)
      {
        v34 = (a2 + 16);
      }

      else
      {
        v34 = *(a2 + 16);
      }

      if (v7 >= v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v7;
      }

      v36 = memcmp(v34, v8, v35);
      v37 = v33 >= v7;
      if (v36)
      {
        v37 = v36 >= 0;
      }
    }

    while (v37 && v18 < a2);
  }

LABEL_67:
  v39 = v18;
  if (v18 < a2)
  {
    v40 = a2;
    do
    {
      v74 = *v39;
      v41 = *(v39 + 16);
      v75[0] = *(v39 + 24);
      *(v75 + 7) = *(v39 + 31);
      v42 = *(v39 + 39);
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
      *(v39 + 16) = 0;
      *v39 = *v40;
      v43 = *(v40 + 16);
      *(v39 + 32) = *(v40 + 32);
      *(v39 + 16) = v43;
      *v40 = v74;
      *(v40 + 31) = *(v75 + 7);
      v44 = v75[0];
      *(v40 + 16) = v41;
      *(v40 + 24) = v44;
      *(v40 + 39) = v42;
      if (v73 >= 0)
      {
        v45 = HIBYTE(v73);
      }

      else
      {
        v45 = *(&v72 + 1);
      }

      if (v73 >= 0)
      {
        v46 = &v72;
      }

      else
      {
        v46 = v72;
      }

      do
      {
        while (1)
        {
          while (1)
          {
            v47 = *(v39 + 40);
            v39 += 40;
            v48 = v47 >= v71;
            if (v47 == v71)
            {
              break;
            }

            if (v48)
            {
              goto LABEL_96;
            }
          }

          v49 = *(v39 + 8);
          if (v49 == *(&v71 + 1))
          {
            break;
          }

          if (v49 >= *(&v71 + 1))
          {
            goto LABEL_96;
          }
        }

        v50 = *(v39 + 39);
        if (v50 >= 0)
        {
          v51 = *(v39 + 39);
        }

        else
        {
          v51 = *(v39 + 24);
        }

        if (v50 >= 0)
        {
          v52 = (v39 + 16);
        }

        else
        {
          v52 = *(v39 + 16);
        }

        if (v45 >= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = v45;
        }

        v54 = memcmp(v52, v46, v53);
        v55 = v51 < v45;
        if (v54)
        {
          v55 = v54 < 0;
        }
      }

      while (v55);
      do
      {
        while (1)
        {
LABEL_96:
          while (1)
          {
            v56 = *(v40 - 40);
            v40 -= 40;
            v57 = v56 >= v71;
            if (v56 == v71)
            {
              break;
            }

            if (!v57)
            {
              goto LABEL_69;
            }
          }

          v58 = *(v40 + 8);
          if (v58 == *(&v71 + 1))
          {
            break;
          }

          if (v58 < *(&v71 + 1))
          {
            goto LABEL_69;
          }
        }

        v59 = *(v40 + 39);
        if (v59 >= 0)
        {
          v60 = *(v40 + 39);
        }

        else
        {
          v60 = *(v40 + 24);
        }

        if (v59 >= 0)
        {
          v61 = (v40 + 16);
        }

        else
        {
          v61 = *(v40 + 16);
        }

        if (v45 >= v60)
        {
          v62 = v60;
        }

        else
        {
          v62 = v45;
        }

        v63 = memcmp(v61, v46, v62);
        v64 = v60 < v45;
        if (v63)
        {
          v64 = v63 < 0;
        }
      }

      while (!v64);
LABEL_69:
      ;
    }

    while (v39 < v40);
  }

  v65 = (v39 - 40);
  if ((v39 - 40) == a1)
  {
    v68 = *(v39 - 1);
    *v65 = v71;
    v66 = v39 - 24;
    if (v68 < 0)
    {
      operator delete(*v66);
    }
  }

  else
  {
    *a1 = *v65;
    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 2));
    }

    v66 = v39 - 24;
    v67 = *(v39 - 24);
    *(a1 + 4) = *(v39 - 8);
    a1[1] = v67;
    *(v39 - 1) = 0;
    *(v39 - 24) = 0;
    *v65 = v71;
  }

  v69 = v72;
  *(v66 + 16) = v73;
  *v66 = v69;
  return v39 - 40;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v64[2] = *MEMORY[0x277D85DE8];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, (a1 + 40), (a2 - 40));
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, (a1 + 40), (a1 + 80), (a2 - 40));
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, a1 + 40, a1 + 80, a1 + 120, a2 - 40);
        return 1;
    }

    goto LABEL_14;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
LABEL_14:
    v15 = a1 + 80;
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,0>(a1, (a1 + 40), (a1 + 80));
    v16 = a1 + 120;
    if (a1 + 120 == v2)
    {
      return 1;
    }

    v17 = 0;
    v18 = 0;
    v57 = v2;
LABEL_19:
    v21 = *v16 >= *v15;
    if (*v16 == *v15 && (v22 = *(v16 + 8), v23 = *(v15 + 8), v21 = v22 >= v23, v22 == v23))
    {
      v39 = *(v15 + 39);
      v40 = *(v16 + 39);
      if (v40 >= 0)
      {
        v41 = *(v16 + 39);
      }

      else
      {
        v41 = *(v16 + 24);
      }

      if (v40 >= 0)
      {
        v42 = (v16 + 16);
      }

      else
      {
        v42 = *(v16 + 16);
      }

      if (v39 >= 0)
      {
        v43 = *(v15 + 39);
      }

      else
      {
        v43 = *(v15 + 24);
      }

      if (v39 >= 0)
      {
        v44 = (v15 + 16);
      }

      else
      {
        v44 = *(v15 + 16);
      }

      if (v43 >= v41)
      {
        v45 = v41;
      }

      else
      {
        v45 = v43;
      }

      v46 = memcmp(v42, v44, v45);
      v47 = v41 < v43;
      if (v46)
      {
        v47 = v46 < 0;
      }

      if (!v47)
      {
        goto LABEL_18;
      }
    }

    else if (v21)
    {
      goto LABEL_18;
    }

    v58 = v18;
    v24 = *(v16 + 16);
    v61 = *v16;
    v25 = *v16;
    v63 = *(v16 + 32);
    v62 = v24;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *v16 = *v15;
    v19 = v15 + 16;
    *(v16 + 32) = *(v15 + 32);
    *(v16 + 16) = *(v15 + 16);
    *(v15 + 39) = 0;
    *(v15 + 16) = 0;
    v59 = v17;
    while (1)
    {
      v27 = *(a1 + v17 + 40);
      v28 = v25 >= v27;
      if (v25 == v27 && (v29 = *(a1 + v17 + 48), v28 = *(&v61 + 1) >= v29, *(&v61 + 1) == v29))
      {
        v30 = a1 + v17;
        v31 = *(a1 + v17 + 79);
        if (v63 >= 0)
        {
          v32 = HIBYTE(v63);
        }

        else
        {
          v32 = *(&v62 + 1);
        }

        if (v63 >= 0)
        {
          v33 = &v62;
        }

        else
        {
          v33 = v62;
        }

        if (v31 >= 0)
        {
          v34 = *(a1 + v17 + 79);
        }

        else
        {
          v34 = *(a1 + v17 + 64);
        }

        if (v31 >= 0)
        {
          v35 = (a1 + v17 + 56);
        }

        else
        {
          v35 = *(a1 + v17 + 56);
        }

        if (v34 >= v32)
        {
          v36 = v32;
        }

        else
        {
          v36 = v34;
        }

        v37 = memcmp(v33, v35, v36);
        v38 = v32 < v34;
        if (v37)
        {
          v38 = v37 < 0;
        }

        if (!v38)
        {
          v19 = v30 + 96;
          v15 = v30 + 80;
LABEL_17:
          *v15 = v61;
          v17 = v59;
          v20 = v62;
          *(v19 + 16) = v63;
          *v19 = v20;
          v18 = v58 + 1;
          v2 = v57;
          if (v58 == 7)
          {
            return v16 + 40 == v57;
          }

LABEL_18:
          v15 = v16;
          v17 += 40;
          v16 += 40;
          if (v16 != v2)
          {
            goto LABEL_19;
          }

          return 1;
        }
      }

      else if (v28)
      {
        goto LABEL_17;
      }

      v19 = v15 - 24;
      v15 -= 40;
      *(a1 + v17 + 80) = *(a1 + v17 + 40);
      v26 = a1 + v17;
      *(v26 + 96) = *(a1 + v17 + 56);
      *(v26 + 112) = *(a1 + v17 + 72);
      *(v26 + 79) = 0;
      *(v26 + 56) = 0;
      v17 -= 40;
      if (v17 == -80)
      {
        v19 = a1 + 16;
        v15 = a1;
        goto LABEL_17;
      }
    }
  }

  v7 = (a2 - 40);
  v6 = *(a2 - 40);
  v8 = v6 >= *a1;
  if (v6 == *a1 && (v9 = *(a2 - 32), v10 = *(a1 + 8), v8 = v9 >= v10, v9 == v10))
  {
    v48 = *(a1 + 39);
    v49 = *(a2 - 1);
    if (v49 >= 0)
    {
      v50 = *(a2 - 1);
    }

    else
    {
      v50 = *(a2 - 16);
    }

    if (v49 >= 0)
    {
      v51 = (a2 - 24);
    }

    else
    {
      v51 = *(a2 - 24);
    }

    if (v48 >= 0)
    {
      v52 = *(a1 + 39);
    }

    else
    {
      v52 = *(a1 + 24);
    }

    if (v48 >= 0)
    {
      v53 = (a1 + 16);
    }

    else
    {
      v53 = *(a1 + 16);
    }

    if (v52 >= v50)
    {
      v54 = v50;
    }

    else
    {
      v54 = v52;
    }

    v55 = memcmp(v51, v53, v54);
    v56 = v50 < v52;
    if (v55)
    {
      v56 = v55 < 0;
    }

    if (!v56)
    {
      return 1;
    }
  }

  else if (v8)
  {
    return 1;
  }

  v60 = *a1;
  v11 = *(a1 + 16);
  v64[0] = *(a1 + 24);
  *(v64 + 7) = *(a1 + 31);
  v12 = *(a1 + 39);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = *v7;
  v13 = *(v2 - 8);
  *(a1 + 16) = *(v2 - 24);
  *(a1 + 32) = v13;
  *v7 = v60;
  v14 = v64[0];
  *(v2 - 24) = v11;
  *(v2 - 16) = v14;
  *(v2 - 9) = *(v64 + 7);
  result = 1;
  *(v2 - 1) = v12;
  return result;
}

__int128 *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *,llvm::SMFixIt *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 41)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 40 * v10);
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(a1, a4, v9, v12);
        v12 = (v12 - 40);
        --v11;
      }

      while (v11);
    }

    i = a2;
    if (a2 != a3)
    {
      for (i = a2; i != a3; i = (i + 40))
      {
        v17 = *i >= *a1;
        if (*i == *a1 && (v18 = *(i + 1), v19 = *(a1 + 8), v17 = v18 >= v19, v18 == v19))
        {
          v20 = *(a1 + 39);
          v21 = *(i + 39);
          if (v21 >= 0)
          {
            v22 = *(i + 39);
          }

          else
          {
            v22 = *(i + 3);
          }

          if (v21 >= 0)
          {
            v23 = i + 1;
          }

          else
          {
            v23 = *(i + 2);
          }

          if (v20 >= 0)
          {
            v24 = *(a1 + 39);
          }

          else
          {
            v24 = *(a1 + 24);
          }

          if (v20 >= 0)
          {
            v25 = (a1 + 16);
          }

          else
          {
            v25 = *(a1 + 16);
          }

          if (v24 >= v22)
          {
            v26 = v22;
          }

          else
          {
            v26 = v24;
          }

          v27 = memcmp(v23, v25, v26);
          v28 = v22 < v24;
          if (v27)
          {
            v28 = v27 < 0;
          }

          if (!v28)
          {
            continue;
          }
        }

        else if (v17)
        {
          continue;
        }

        v38 = *i;
        v14 = *(i + 2);
        *&v40 = *(i + 3);
        *(&v40 + 7) = *(i + 31);
        v15 = *(i + 39);
        *(i + 3) = 0;
        *(i + 4) = 0;
        *(i + 2) = 0;
        *i = *a1;
        v16 = *(a1 + 32);
        i[1] = *(a1 + 16);
        *(i + 4) = v16;
        *a1 = v38;
        *(a1 + 16) = v14;
        *(a1 + 24) = v40;
        *(a1 + 31) = *(&v40 + 7);
        *(a1 + 39) = v15;
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(a1, a4, v9, a1);
      }
    }

    if (v8 >= 41)
    {
      v29 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
      v30 = a2 - 40;
      do
      {
        while (1)
        {
          v39 = *a1;
          v33 = *(a1 + 16);
          *v41 = *(a1 + 24);
          *&v41[7] = *(a1 + 31);
          v34 = *(a1 + 39);
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 16) = 0;
          v35 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(a1, a4, v29);
          v36 = v35;
          if (v30 == v35)
          {
            break;
          }

          *v35 = *v30;
          if (*(v35 + 39) < 0)
          {
            operator delete(v35[2]);
          }

          v31 = *(v30 + 16);
          v36[4] = *(v30 + 32);
          *(v36 + 1) = v31;
          *v30 = v39;
          *(v30 + 16) = v33;
          *(v30 + 24) = *v41;
          *(v30 + 31) = *&v41[7];
          *(v30 + 39) = v34;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(a1, (v36 + 5), a4, 0xCCCCCCCCCCCCCCCDLL * ((v36 - a1 + 40) >> 3));
          v30 -= 40;
          v32 = v29-- <= 2;
          if (v32)
          {
            return i;
          }
        }

        *v35 = v39;
        if (*(v35 + 39) < 0)
        {
          operator delete(v35[2]);
        }

        v36[2] = v33;
        v36[3] = *v41;
        *(v36 + 31) = *&v41[7];
        *(v36 + 39) = v34;
        v30 -= 40;
        v32 = v29-- <= 2;
      }

      while (!v32);
    }

    return i;
  }

  return a3;
}

__n128 std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v86 = v4;
  v87 = v5;
  v7 = v6 >> 1;
  if ((v6 >> 1) < (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 3)))
  {
    return result;
  }

  v8 = (0x999999999999999ALL * ((a4 - a1) >> 3)) | 1;
  v9 = (a1 + 40 * v8);
  v10 = 0x999999999999999ALL * ((a4 - a1) >> 3) + 2;
  if (v10 >= a3)
  {
    goto LABEL_8;
  }

  v11 = v9[2].n128_u64[1];
  v12 = v9->n128_u64[0] >= v11;
  if (v9->n128_u64[0] == v11 && (v13 = v9->n128_u64[1], v14 = v9[3].n128_u64[0], v12 = v13 >= v14, v13 == v14))
  {
    v67 = v9[1].n128_u64[0];
    v68 = v9[4].n128_i8[15];
    if (v9[2].n128_i8[7] < 0)
    {
      v69 = v9[1].n128_u64[1];
    }

    else
    {
      v67 = v9 + 1;
      v69 = v9[2].n128_u8[7];
    }

    if (v68 >= 0)
    {
      v70 = v9[4].n128_u8[15];
    }

    else
    {
      v70 = v9[4].n128_u64[0];
    }

    if (v68 >= 0)
    {
      v71 = &v9[3].n128_i8[8];
    }

    else
    {
      v71 = v9[3].n128_u64[1];
    }

    if (v70 >= v69)
    {
      v72 = v69;
    }

    else
    {
      v72 = v70;
    }

    v73 = a1;
    v74 = a3;
    v75 = a4;
    v76 = memcmp(v67, v71, v72);
    a4 = v75;
    a3 = v74;
    v77 = v76;
    a1 = v73;
    v41 = v77 == 0;
    v78 = v77 < 0;
    if (v41)
    {
      v78 = v69 < v70;
    }

    if (!v78)
    {
      goto LABEL_8;
    }
  }

  else if (v12)
  {
    goto LABEL_8;
  }

  v9 = (v9 + 40);
  v8 = v10;
LABEL_8:
  v15 = v9->n128_u64[0] >= a4->n128_u64[0];
  if (v9->n128_u64[0] == a4->n128_u64[0] && (v16 = v9->n128_u64[1], v17 = a4->n128_u64[1], v15 = v16 >= v17, v16 == v17))
  {
    v53 = a4[2].n128_i8[7];
    v54 = v9 + 1;
    v55 = v9[2].n128_i8[7];
    if (v55 >= 0)
    {
      v56 = v9[2].n128_u8[7];
    }

    else
    {
      v56 = v9[1].n128_u64[1];
    }

    if (v55 < 0)
    {
      v54 = v9[1].n128_u64[0];
    }

    if (v53 >= 0)
    {
      v57 = a4[2].n128_u8[7];
    }

    else
    {
      v57 = a4[1].n128_u64[1];
    }

    if (v53 >= 0)
    {
      v58 = a4 + 1;
    }

    else
    {
      v58 = a4[1].n128_u64[0];
    }

    if (v57 >= v56)
    {
      v59 = v56;
    }

    else
    {
      v59 = v57;
    }

    v60 = a1;
    v61 = a3;
    v62 = a4;
    v63 = memcmp(v54, v58, v59);
    a4 = v62;
    a3 = v61;
    v65 = v63;
    a1 = v60;
    v41 = v65 == 0;
    v66 = v65 < 0;
    if (v41)
    {
      v66 = v56 < v57;
    }

    if (v66)
    {
      return result;
    }
  }

  else if (!v15)
  {
    return result;
  }

  v83 = *a4;
  v84 = a4[1];
  v85 = a4[2].n128_i64[0];
  a4[1].n128_u64[0] = 0;
  a4[1].n128_u64[1] = 0;
  a4[2].n128_u64[0] = 0;
  v18 = v83.n128_u64[1];
  *a4 = *v9;
  v19 = v9 + 1;
  v20 = v9[2].n128_u64[0];
  a4[1] = v9[1];
  a4[2].n128_u64[0] = v20;
  v9[2].n128_u8[7] = 0;
  v9[1].n128_u8[0] = 0;
  if (v7 < v8)
  {
    goto LABEL_81;
  }

  if (v85 >= 0)
  {
    v21 = HIBYTE(v85);
  }

  else
  {
    v21 = v84.n128_u64[1];
  }

  v22 = &v84;
  if (v85 < 0)
  {
    v22 = v84.n128_u64[0];
  }

  v81 = v22;
  v82 = v21;
  v79 = a3;
  v80 = a1;
  while (1)
  {
    v25 = v9;
    v26 = 2 * v8;
    v8 = (2 * v8) | 1;
    v9 = (a1 + 40 * v8);
    v27 = v26 + 2;
    if (v26 + 2 >= a3)
    {
      goto LABEL_20;
    }

    v28 = v9[2].n128_u64[1];
    v29 = v9->n128_u64[0] >= v28;
    if (v9->n128_u64[0] != v28 || (v30 = v9->n128_u64[1], v31 = v9[3].n128_u64[0], v29 = v30 >= v31, v30 != v31))
    {
      if (v29)
      {
        goto LABEL_20;
      }

LABEL_19:
      v9 = (v9 + 40);
      v8 = v27;
      goto LABEL_20;
    }

    v43 = v9[4].n128_i8[15];
    v44 = v9[2].n128_i8[7];
    if (v44 >= 0)
    {
      v45 = v9 + 1;
    }

    else
    {
      v45 = v9[1].n128_u64[0];
    }

    if (v44 >= 0)
    {
      v46 = v9[2].n128_u8[7];
    }

    else
    {
      v46 = v9[1].n128_u64[1];
    }

    if (v43 >= 0)
    {
      v47 = v9[4].n128_u8[15];
    }

    else
    {
      v47 = v9[4].n128_u64[0];
    }

    if (v43 >= 0)
    {
      v48 = &v9[3].n128_i8[8];
    }

    else
    {
      v48 = v9[3].n128_u64[1];
    }

    if (v47 >= v46)
    {
      v49 = v46;
    }

    else
    {
      v49 = v47;
    }

    v50 = memcmp(v45, v48, v49);
    v18 = v83.n128_u64[1];
    v51 = v50;
    a3 = v79;
    a1 = v80;
    v41 = v51 == 0;
    v52 = v51 < 0;
    if (v41)
    {
      v52 = v46 < v47;
    }

    if (v52)
    {
      goto LABEL_19;
    }

LABEL_20:
    v23 = v9->n128_u64[0] >= v83.n128_u64[0];
    if (v9->n128_u64[0] == v83.n128_u64[0])
    {
      v32 = v9->n128_u64[1];
      v23 = v32 >= v18;
      if (v32 == v18)
      {
        break;
      }
    }

    if (!v23)
    {
      goto LABEL_80;
    }

LABEL_23:
    *v25 = *v9;
    v19 = v9 + 1;
    v24 = v9[1];
    v25[2].n128_u64[0] = v9[2].n128_u64[0];
    v25[1] = v24;
    v9[2].n128_u8[7] = 0;
    v9[1].n128_u8[0] = 0;
    if (v7 < v8)
    {
      goto LABEL_81;
    }
  }

  v33 = v9 + 1;
  v34 = v9[2].n128_i8[7];
  if (v34 >= 0)
  {
    v35 = v9[2].n128_u8[7];
  }

  else
  {
    v35 = v9[1].n128_u64[1];
  }

  if (v34 < 0)
  {
    v33 = v9[1].n128_u64[0];
  }

  if (v82 >= v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = v82;
  }

  v37 = a1;
  v38 = a3;
  v39 = memcmp(v33, v81, v36);
  v18 = v83.n128_u64[1];
  a3 = v38;
  v40 = v39;
  a1 = v37;
  v41 = v40 == 0;
  v42 = v40 < 0;
  if (v41)
  {
    v42 = v35 < v82;
  }

  if (!v42)
  {
    goto LABEL_23;
  }

LABEL_80:
  v9 = v25;
LABEL_81:
  *v9 = v83;
  result = v84;
  v19[1].n128_u64[0] = v85;
  *v19 = result;
  return result;
}

void *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v9 = &a1[5 * v5];
    v7 = v9 + 5;
    v10 = 2 * v5;
    v5 = (2 * v5) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v13 = v9 + 10;
      v12 = v9[10];
      v14 = v9[5];
      v15 = v14 >= v12;
      if (v14 == v12 && (v16 = v9[6], v17 = v9[11], v15 = v16 >= v17, v16 == v17))
      {
        v20 = v9[7];
        v18 = v9 + 7;
        v19 = v20;
        v21 = *(v18 + 63);
        v22 = *(v18 + 23);
        if (v22 >= 0)
        {
          v23 = *(v18 + 23);
        }

        else
        {
          v23 = v18[1];
        }

        if (v22 >= 0)
        {
          v24 = v18;
        }

        else
        {
          v24 = v19;
        }

        if (v21 >= 0)
        {
          v25 = *(v18 + 63);
        }

        else
        {
          v25 = v18[6];
        }

        if (v21 >= 0)
        {
          v26 = v18 + 5;
        }

        else
        {
          v26 = v18[5];
        }

        if (v25 >= v23)
        {
          v27 = v23;
        }

        else
        {
          v27 = v25;
        }

        v28 = memcmp(v24, v26, v27);
        v29 = v23 < v25;
        if (v28)
        {
          v29 = v28 < 0;
        }

        if (v29)
        {
LABEL_2:
          v7 = v13;
          v5 = v11;
        }
      }

      else if (!v15)
      {
        goto LABEL_2;
      }
    }

    *a1 = *v7;
    if (*(a1 + 39) < 0)
    {
      operator delete(a1[2]);
    }

    v8 = *(v7 + 1);
    a1[4] = v7[4];
    *(a1 + 1) = v8;
    *(v7 + 39) = 0;
    *(v7 + 16) = 0;
    a1 = v7;
  }

  while (v5 <= v6);
  return v7;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::SMFixIt *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = result + 40 * (v4 >> 1);
  v8 = (a2 - 40);
  v7 = *(a2 - 40);
  v9 = *v6 >= v7;
  if (*v6 == v7 && (v10 = *(v6 + 8), v11 = *(a2 - 32), v9 = v10 >= v11, v10 == v11))
  {
    v35 = (a2 - 24);
    v36 = *(a2 - 1);
    v37 = (v6 + 16);
    v38 = *(v6 + 39);
    if (v38 >= 0)
    {
      v39 = *(v6 + 39);
    }

    else
    {
      v39 = *(v6 + 24);
    }

    if (v38 < 0)
    {
      v37 = *(v6 + 16);
    }

    if (v36 >= 0)
    {
      v40 = *(a2 - 1);
    }

    else
    {
      v40 = *(a2 - 16);
    }

    if (v36 < 0)
    {
      v35 = *(a2 - 24);
    }

    if (v40 >= v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = v40;
    }

    v42 = result;
    v43 = a2;
    v44 = memcmp(v37, v35, v41);
    a2 = v43;
    v45 = v44;
    result = v42;
    v32 = v45 == 0;
    v46 = v45 < 0;
    if (v32)
    {
      v46 = v39 < v40;
    }

    if (!v46)
    {
      return result;
    }
  }

  else if (v9)
  {
    return result;
  }

  v12 = *v8;
  v51 = *(a2 - 8);
  v13 = v51;
  v49 = v12;
  v50 = *(a2 - 24);
  *(a2 - 24) = 0;
  *(a2 - 16) = 0;
  *(a2 - 8) = 0;
  v14 = v12;
  v15 = HIBYTE(v13);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(&v50 + 1);
  }

  if ((v15 & 0x80u) == 0)
  {
    v17 = &v50;
  }

  else
  {
    v17 = v50;
  }

  v47 = v17;
  v48 = v16;
  *v8 = *v6;
  v18 = v6 + 16;
  v19 = *(v6 + 32);
  *(a2 - 24) = *(v6 + 16);
  *(a2 - 8) = v19;
  *(v6 + 39) = 0;
  *(v6 + 16) = 0;
  if (v4 >= 2)
  {
    do
    {
      v22 = v6;
      v23 = v5 - 1;
      v5 = (v5 - 1) >> 1;
      v6 = result + 40 * v5;
      v24 = *v6 >= v14;
      if (*v6 == v14 && (v25 = *(v6 + 8), v24 = v25 >= *(&v14 + 1), v25 == *(&v14 + 1)))
      {
        v26 = (v6 + 16);
        v27 = *(v6 + 39);
        if (v27 >= 0)
        {
          v28 = *(v6 + 39);
        }

        else
        {
          v28 = *(v6 + 24);
        }

        if (v27 < 0)
        {
          v26 = *(v6 + 16);
        }

        if (v48 >= v28)
        {
          v29 = v28;
        }

        else
        {
          v29 = v48;
        }

        v30 = result;
        v31 = memcmp(v26, v47, v29);
        result = v30;
        v32 = v31 == 0;
        v33 = v31 < 0;
        if (v32)
        {
          v33 = v28 < v48;
        }

        if (!v33)
        {
LABEL_28:
          v6 = v22;
          break;
        }
      }

      else if (v24)
      {
        goto LABEL_28;
      }

      v18 = v6 + 16;
      v20 = *(v6 + 32);
      v21 = *(v6 + 16);
      *v22 = *v6;
      *(v22 + 16) = v21;
      *(v22 + 32) = v20;
      *(v6 + 39) = 0;
      *(v6 + 16) = 0;
    }

    while (v23 > 1);
  }

  *v6 = v49;
  v34 = v50;
  *(v18 + 16) = v51;
  *v18 = v34;
  return result;
}

unint64_t **llvm::SpecialCaseList::Matcher::insert@<X0>(llvm::StringMapImpl *a1@<X0>, void *a2@<X1>, size_t a3@<X2>, int a4@<W3>, int a5@<W4>, void *a6@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    std::generic_category();
    if (a5)
    {
      v17 = "glob";
    }

    else
    {
      v17 = "regex";
    }

    v18 = *v17;
    if (*v17)
    {
      v30 = v17;
      v19 = 3;
      v20 = 2;
    }

    else
    {
      v19 = 1;
      v20 = 3;
    }

    __p[0] = "Supplied ";
    LOBYTE(v32) = 3;
    HIBYTE(v32) = v19;
    v21 = v18 == 0;
    v22 = __p;
    if (v21)
    {
      v22 = "Supplied ";
    }

    *&v34 = v22;
    v35 = " was blank";
    LOBYTE(v36) = v20;
    HIBYTE(v36) = 3;
    llvm::Twine::str(&v34, &__dst);
    llvm::createStringError();
  }

  if ((a5 & 1) == 0)
  {
    if (a2)
    {
      if (a3 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (a3 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = a3;
      memmove(&__dst, a2, a3);
      __dst.__r_.__value_.__s.__data_[a3] = 0;
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
    }

    v24 = std::string::find(&__dst, 42, 0);
    if (v24 != -1)
    {
      for (i = v24; i != -1; i = std::string::find(&__dst, 42, i + 2))
      {
        std::string::replace(&__dst, i, 1uLL, ".*");
      }
    }

    size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    p_dst = __dst.__r_.__value_.__r.__words[0];
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    __p[0] = "^(";
    v30 = p_dst;
    v31 = size;
    v32 = 1283;
    *&v34 = __p;
    v35 = ")$";
    v36 = 770;
    llvm::Twine::str(&v34, &v28);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    __dst = v28;
    llvm::Regex::Regex();
  }

  v12 = llvm::StringMapImpl::hash(a2, a3, a3);
  result = llvm::StringMap<std::pair<llvm::GlobPattern,unsigned int>,llvm::MallocAllocator>::try_emplace_with_hash<>(a1, a2, a3, v12);
  if (v14)
  {
    v15 = *result;
    llvm::GlobPattern::create((*result + 11), **result, 0x400uLL, 1, &v34);
    if (v37 & 1) != 0 || (*(v15 + 1) = v34, llvm::SmallVectorImpl<llvm::GlobPattern::SubGlobPattern>::operator=((v15 + 3), &v35), (v37))
    {
      v16 = v34;
      *&v34 = 0;
      *a6 = v16;
      result = llvm::Expected<llvm::GlobPattern>::~Expected(&v34);
      if (*a6)
      {
        return result;
      }
    }

    else
    {
      *a6 = 0;
      result = llvm::Expected<llvm::GlobPattern>::~Expected(&v34);
      if (*a6)
      {
        return result;
      }
    }

    *(v15 + 20) = a4;
  }

  *a6 = 0;
  return result;
}

uint64_t llvm::SpecialCaseList::Matcher::match(uint64_t a1, char *a2, size_t a3)
{
  v4 = a2;
  v37 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *a1;
    if (*v5)
    {
      v8 = *v5 == -8;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      do
      {
        v10 = v7[1];
        ++v7;
        v9 = v10;
        if (v10)
        {
          v11 = v9 == -8;
        }

        else
        {
          v11 = 1;
        }
      }

      while (v11);
    }

    v31 = &v5[v6];
    if (v7 == v31)
    {
LABEL_39:
      v25 = *(a1 + 24);
      v26 = *(a1 + 32);
      if (v25 == v26)
      {
        return 0;
      }

      while ((llvm::Regex::match(*v25, v4, a3, 0, 0) & 1) == 0)
      {
        v25 += 16;
        if (v25 == v26)
        {
          return 0;
        }
      }

      return *(v25 + 8);
    }
  }

  else
  {
    v7 = *a1;
    v31 = &v5[v6];
    if (v5 == v31)
    {
      goto LABEL_39;
    }
  }

  v12 = *v7;
  while (1)
  {
    v32 = *(v12 + 8);
    v33 = v35;
    v34 = 0x100000000;
    if (*(v12 + 32))
    {
      llvm::SmallVectorImpl<llvm::GlobPattern::SubGlobPattern>::operator=(&v33, (v12 + 24));
    }

    v36 = *(v12 + 80);
    v13 = llvm::GlobPattern::match(&v32, v4, a3);
    v14 = v33;
    v30 = v36;
    if (v34)
    {
      v15 = (v33 + 40 * v34);
      do
      {
        v17 = (v15 - 3);
        v16 = *(v15 - 3);
        if (v16 != v15)
        {
          free(v16);
        }

        v18 = v15 - 5;
        v19 = *(v15 - 5);
        v20 = *(v15 - 8);
        if (v20)
        {
          v21 = &v19[80 * v20 - 72];
          v22 = -80 * v20;
          do
          {
            if (v21 + 2 != *v21)
            {
              free(*v21);
            }

            v21 -= 10;
            v22 += 80;
          }

          while (v22);
          v19 = *v18;
        }

        if (v19 != v17)
        {
          free(v19);
        }

        v15 = v18;
      }

      while (v18 != v14);
      v14 = v33;
      v4 = a2;
    }

    if (v14 != v35)
    {
      free(v14);
    }

    if (v13)
    {
      return v30;
    }

    do
    {
      v23 = v7[1];
      ++v7;
      v12 = v23;
      if (v23)
      {
        v24 = v12 == -8;
      }

      else
      {
        v24 = 1;
      }
    }

    while (v24);
    if (v7 == v31)
    {
      goto LABEL_39;
    }
  }
}

void llvm::SpecialCaseList::create()
{
  operator new();
}

{
  operator new();
}

uint64_t llvm::SpecialCaseList::createInternal(uint64_t a1, llvm::formatv_object_base **a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    return 1;
  }

  v9 = *a2;
  while (1)
  {
    v25 = 260;
    v23[0] = v9;
    llvm::vfs::FileSystem::getBufferForFile(a3, v23, -1, 1, 0, 0, &v26);
    if (v27)
    {
      v22 = v26;
      if (v26.__val_)
      {
        v14[0] = "can't open file '";
        v15 = v4;
        v16 = 1027;
        v17[0] = v14;
        v18 = "': ";
        v19 = 770;
        std::error_code::message(&v13, &v22);
        v23[0] = v17;
        v24 = &v13;
        v25 = 1026;
        llvm::Twine::str(v23, __p);
        if (*(a4 + 23) < 0)
        {
          operator delete(*a4);
        }

        *a4 = *__p;
        *(a4 + 16) = v21;
        HIBYTE(v21) = 0;
        LOBYTE(__p[0]) = 0;
        if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v13.__r_.__value_.__l.__data_);
        }

        goto LABEL_23;
      }
    }

    __p[0] = 0;
    __p[1] = 0;
    v21 = 0;
    if ((llvm::SpecialCaseList::parse(a1, *&v26.__val_, __p) & 1) == 0)
    {
      break;
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
      if ((v27 & 1) == 0)
      {
LABEL_11:
        v10 = *&v26.__val_;
        *&v26.__val_ = 0;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }
      }
    }

    else if ((v27 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = (v9 + 24);
    v4 = (v4 + 24);
    if (v9 == v5)
    {
      return 1;
    }
  }

  v14[0] = "error parsing file '";
  v15 = v4;
  v16 = 1027;
  v17[0] = v14;
  v18 = "': ";
  v19 = 770;
  v23[0] = v17;
  v24 = __p;
  v25 = 1026;
  llvm::Twine::str(v23, &v13);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
    *a4 = v13;
    if (SHIBYTE(v21) < 0)
    {
      goto LABEL_26;
    }

LABEL_23:
    if (v27)
    {
      return 0;
    }

    goto LABEL_24;
  }

  *a4 = v13;
  if ((SHIBYTE(v21) & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

LABEL_26:
  operator delete(__p[0]);
  if (v27)
  {
    return 0;
  }

LABEL_24:
  v12 = *&v26.__val_;
  *&v26.__val_ = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return 0;
}

uint64_t *std::unique_ptr<llvm::SpecialCaseList>::~unique_ptr[abi:nn200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    std::default_delete<llvm::SpecialCaseList>::operator()[abi:nn200100](result, v1);
    return v2;
  }

  return result;
}

void llvm::SpecialCaseList::createOrDie()
{
  __p = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

uint64_t llvm::SpecialCaseList::parse(uint64_t a1, const llvm::MemoryBuffer *a2, uint64_t a3)
{
  v90 = *MEMORY[0x277D85DE8];
  llvm::SpecialCaseList::addSection(a1, "*", 1, 1u, 1, &v85);
  v5 = v85.__r_.__value_.__r.__words[0];
  if ((v85.__r_.__value_.__s.__data_[8] & 1) != 0 && v85.__r_.__value_.__r.__words[0])
  {
    v81 = v85.__r_.__value_.__r.__words[0];
    llvm::toString(&v81, &v85);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v85;
    *(&v85.__r_.__value_.__s + 23) = 0;
    v85.__r_.__value_.__s.__data_[0] = 0;
    v6 = v81;
    if (!v81)
    {
      return 0;
    }

    goto LABEL_6;
  }

  v50 = a3;
  v7 = *(a2 + 1);
  if (*(a2 + 2) - v7 >= 0x17uLL)
  {
    v9 = *v7;
    v10 = v7[1];
    v11 = *(v7 + 15);
    v12 = v9 == 0x6169636570732123 && v10 == 0x6C2D657361632D6CLL;
    v8 = v12 && v11 == 0xA31762D7473696CLL;
  }

  else
  {
    v8 = 0;
  }

  llvm::line_iterator::line_iterator(&v85, a2, 1, 35);
  if (v86 != 1)
  {
    return 1;
  }

  while (1)
  {
    v14 = v87;
    first_not_of = llvm::StringRef::find_first_not_of(&v88, " \t\n\v\f\r", 6, 0);
    if (first_not_of >= v89)
    {
      v16 = v89;
    }

    else
    {
      v16 = first_not_of;
    }

    v17 = v89 - v16;
    v82.__r_.__value_.__r.__words[0] = v88 + v16;
    v82.__r_.__value_.__l.__size_ = v89 - v16;
    last_not_of = llvm::StringRef::find_last_not_of(&v82, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
    v19 = v82.__r_.__value_.__r.__words[0];
    if (last_not_of + 1 < v82.__r_.__value_.__l.__size_)
    {
      size = last_not_of + 1;
    }

    else
    {
      size = v82.__r_.__value_.__l.__size_;
    }

    v21 = v82.__r_.__value_.__l.__size_ - v17 + size;
    if (v82.__r_.__value_.__l.__size_ < v21)
    {
      v21 = v82.__r_.__value_.__l.__size_;
    }

    *&v80 = v82.__r_.__value_.__r.__words[0];
    *(&v80 + 1) = v21;
    if (!v21)
    {
      goto LABEL_21;
    }

    if (*v82.__r_.__value_.__l.__data_ != 91)
    {
      break;
    }

    if (*(v82.__r_.__value_.__r.__words[0] + v21 - 1) != 93)
    {
      v73[0] = "malformed section header on line ";
      v74 = v14;
      v76 = 2307;
      v77[0] = v73;
      *&v78 = ": ";
      v79 = 770;
      v82.__r_.__value_.__r.__words[0] = v77;
      v82.__r_.__value_.__r.__words[2] = v19;
      v83 = v21;
      v84 = 1282;
      llvm::Twine::str(&v82, &v66);
      v43 = v50;
      if (*(v50 + 23) < 0)
      {
        operator delete(*v50);
      }

      *v50 = v66;
      v44 = v67;
      goto LABEL_66;
    }

    v22 = (v21 - 1);
    v23 = (v21 - 2);
    if (v22 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    llvm::SpecialCaseList::addSection(a1, (v82.__r_.__value_.__r.__words[0] + 1), v24, v14, v8 ^ 1, &v82);
    if (v82.__r_.__value_.__s.__data_[8])
    {
      if (v82.__r_.__value_.__r.__words[0])
      {
        v72 = v82.__r_.__value_.__r.__words[0];
        llvm::toString(&v72, &v82);
        if (*(v50 + 23) < 0)
        {
          operator delete(*v50);
        }

        *v50 = v82;
        *(&v82.__r_.__value_.__s + 23) = 0;
        v82.__r_.__value_.__s.__data_[0] = 0;
        v6 = v72;
        if (!v72)
        {
          return 0;
        }

LABEL_6:
        (*(*v6 + 8))(v6);
        return 0;
      }
    }

    else
    {
      v5 = v82.__r_.__value_.__r.__words[0];
    }

LABEL_21:
    llvm::line_iterator::advance(&v85);
    if ((v86 & 1) == 0)
    {
      return 1;
    }
  }

  v25 = llvm::StringRef::find(&v80, ":", 1uLL, 0);
  if (v25 == -1)
  {
    v70 = 0;
    v71 = 0;
    v69 = v80;
LABEL_60:
    *&v66 = "malformed line ";
    v67 = v14;
    v68 = 2307;
    v73[0] = &v66;
    v74 = ": '";
    v76 = 770;
    v77[0] = v73;
    v78 = v80;
    v79 = 1282;
    v82.__r_.__value_.__r.__words[0] = v77;
    v82.__r_.__value_.__r.__words[2] = "'";
    v84 = 770;
    llvm::Twine::str(&v82, &v60);
    v43 = v50;
    if (*(v50 + 23) < 0)
    {
      operator delete(*v50);
    }

    *v50 = v60;
    v44 = v61;
LABEL_66:
    *(v43 + 16) = v44;
    return 0;
  }

  if (v25 >= *(&v80 + 1))
  {
    v26 = *(&v80 + 1);
  }

  else
  {
    v26 = v25;
  }

  if (*(&v80 + 1) >= v25 + 1)
  {
    v27 = v25 + 1;
  }

  else
  {
    v27 = *(&v80 + 1);
  }

  *&v69 = v80;
  *(&v69 + 1) = v26;
  v70 = (v80 + v27);
  v71 = *(&v80 + 1) - v27;
  if (*(&v80 + 1) <= v25 + 1)
  {
    goto LABEL_60;
  }

  v28 = llvm::StringRef::find(&v70, "=", 1uLL, 0);
  if (v28 == -1)
  {
    v33 = 0;
    v34 = 0;
    v30 = v70;
    v31 = v71;
  }

  else
  {
    v30 = v70;
    if (v28 >= v71)
    {
      v31 = v71;
    }

    else
    {
      v31 = v28;
    }

    if (v71 >= v28 + 1)
    {
      v32 = v28 + 1;
    }

    else
    {
      v32 = v71;
    }

    v33 = &v70[v32];
    v34 = v71 - v32;
  }

  v35 = v69;
  v36 = llvm::StringMapImpl::hash(v69, *(&v69 + 1), v29);
  v37 = *llvm::StringMap<llvm::StringMap<llvm::SpecialCaseList::Matcher,llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace_with_hash<>((v5 + 8), v35, *(&v35 + 1), v36);
  v39 = llvm::StringMapImpl::hash(v33, v34, v38);
  v40 = llvm::StringMap<llvm::SpecialCaseList::Matcher,llvm::MallocAllocator>::try_emplace_with_hash<>((v37 + 8), v33, v34, v39);
  llvm::SpecialCaseList::Matcher::insert((*v40 + 8), v30, v31, v14, v8 ^ 1, &v65);
  v41 = v65;
  if (!v65)
  {
    goto LABEL_21;
  }

  if (v8)
  {
    v45 = "regex";
  }

  else
  {
    v45 = "glob";
  }

  v46 = *v45;
  if (*v45)
  {
    v54[2] = v45;
    v47 = 3;
    v48 = 2;
  }

  else
  {
    v47 = 1;
    v48 = 3;
  }

  v54[0] = "malformed ";
  v55 = 3;
  v56 = v47;
  v12 = v46 == 0;
  v49 = v54;
  if (v12)
  {
    v49 = "malformed ";
  }

  v57[0] = v49;
  v57[2] = " in line ";
  v58 = v48;
  v59 = 3;
  *&v60 = v57;
  v61 = v14;
  v62 = 2306;
  v65 = 0;
  *&v66 = &v60;
  v67 = ": '";
  v68 = 770;
  v73[0] = &v66;
  v74 = v30;
  v75 = v31;
  v76 = 1282;
  v77[0] = v73;
  *&v78 = "': ";
  v79 = 770;
  v52 = v41;
  llvm::toString(&v52, &__p);
  v82.__r_.__value_.__r.__words[0] = v77;
  v82.__r_.__value_.__r.__words[2] = &__p;
  v84 = 1026;
  llvm::Twine::str(&v82, &v63);
  if (*(v50 + 23) < 0)
  {
    operator delete(*v50);
  }

  *v50 = v63;
  *(v50 + 16) = v64;
  HIBYTE(v64) = 0;
  LOBYTE(v63) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

  v6 = v65;
  if (v65)
  {
    goto LABEL_6;
  }

  return 0;
}

void *llvm::SpecialCaseList::addSection@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, const unsigned __int8 *a3@<X2>, unsigned int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v12 = llvm::StringMapImpl::hash(a2, a3, a3);
  result = llvm::StringMap<llvm::SpecialCaseList::Section,llvm::MallocAllocator>::try_emplace_with_hash<>(a1, a2, a3, v12);
  v14 = (*result + 8);
  if (v15)
  {
    result = llvm::SpecialCaseList::Matcher::insert(*v14, a2, a3, a4, a5, &v29);
    v16 = v29;
    if (v29)
    {
      std::generic_category();
      v19[0] = "malformed section at line ";
      v19[2] = a4;
      v20 = 2307;
      v21[0] = v19;
      v21[2] = ": '";
      v22 = 770;
      v23[0] = v21;
      v23[2] = a2;
      v23[3] = a3;
      v24 = 1282;
      v25[0] = v23;
      v25[2] = "': ";
      v26 = 770;
      v17 = v16;
      v29 = 0;
      llvm::toString(&v17, &__p);
      v27[0] = v25;
      v27[2] = &__p;
      v28 = 1026;
      llvm::Twine::str(v27, &v30);
      llvm::createStringError();
    }
  }

  *(a6 + 8) &= ~1u;
  *a6 = v14;
  return result;
}

void llvm::SpecialCaseList::~SpecialCaseList(llvm::SpecialCaseList *this)
{
  if (*(this + 3))
  {
    v1 = *(this + 2);
    if (v1)
    {
      v2 = 0;
      do
      {
        v3 = *(*this + v2);
        if (v3 != -8 && v3 != 0)
        {
          v5 = *v3;
          llvm::StringMap<llvm::StringMap<llvm::SpecialCaseList::Matcher,llvm::MallocAllocator>,llvm::MallocAllocator>::~StringMap(v3 + 16);
          v6 = *(v3 + 1);
          *(v3 + 1) = 0;
          if (v6)
          {
            std::default_delete<llvm::SpecialCaseList::Matcher>::operator()[abi:nn200100](v3 + 8, v6);
          }

          llvm::deallocate_buffer(v3, (v5 + 41));
        }

        v2 += 8;
      }

      while (8 * v1 != v2);
    }
  }

  free(*this);
}

{
  if (*(this + 3))
  {
    v1 = *(this + 2);
    if (v1)
    {
      v2 = 0;
      do
      {
        v3 = *(*this + v2);
        if (v3 != -8 && v3 != 0)
        {
          v5 = *v3;
          llvm::StringMap<llvm::StringMap<llvm::SpecialCaseList::Matcher,llvm::MallocAllocator>,llvm::MallocAllocator>::~StringMap(v3 + 16);
          v6 = *(v3 + 1);
          *(v3 + 1) = 0;
          if (v6)
          {
            std::default_delete<llvm::SpecialCaseList::Matcher>::operator()[abi:nn200100](v3 + 8, v6);
          }

          llvm::deallocate_buffer(v3, (v5 + 41));
        }

        v2 += 8;
      }

      while (8 * v1 != v2);
    }
  }

  free(*this);
}

uint64_t llvm::SpecialCaseList::inSectionBlame(uint64_t a1, char *a2, size_t a3, unsigned int *a4, unint64_t a5, char *a6, size_t a7, uint64_t a8, unsigned int *a9, unint64_t a10)
{
  v14 = *a1;
  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = *a1;
    if (*v14)
    {
      v17 = *v14 == -8;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      do
      {
        v19 = v16[1];
        ++v16;
        v18 = v19;
        if (v19)
        {
          v20 = v18 == -8;
        }

        else
        {
          v20 = 1;
        }
      }

      while (v20);
    }

    v21 = &v14[v15];
    if (v16 == v21)
    {
      return 0;
    }
  }

  else
  {
    v16 = *a1;
    v21 = &v14[v15];
    if (v14 == v21)
    {
      return 0;
    }
  }

  v39 = v21;
  v22 = *v16;
  while (1)
  {
    if (llvm::SpecialCaseList::Matcher::match(*(v22 + 8), a2, a3))
    {
      v24 = llvm::StringMapImpl::hash(a4, a5, v23);
      Key = llvm::StringMapImpl::FindKey((v22 + 16), a4, a5, v24);
      v27 = Key == -1 ? *(v22 + 24) : Key;
      if (v27 != *(v22 + 24))
      {
        v28 = *(v22 + 16);
        v29 = *(v28 + 8 * v27);
        v30 = llvm::StringMapImpl::hash(a9, a10, v26);
        v31 = llvm::StringMapImpl::FindKey((v29 + 8), a9, a10, v30);
        v32 = v31 == -1 ? *(v29 + 16) : v31;
        v33 = (*(v29 + 8) + 8 * v32);
        v21 = v39;
        if (v33 != (*(*(v28 + 8 * v27) + 8) + 8 * *(*(v28 + 8 * v27) + 16)))
        {
          result = llvm::SpecialCaseList::Matcher::match(*v33 + 8, a6, a7);
          if (result)
          {
            break;
          }
        }
      }
    }

    do
    {
      v35 = v16[1];
      ++v16;
      v22 = v35;
      if (v35)
      {
        v36 = v22 == -8;
      }

      else
      {
        v36 = 1;
      }
    }

    while (v36);
    if (v16 == v21)
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::SpecialCaseList::inSectionBlame(uint64_t a1, uint64_t a2, unsigned int *a3, unint64_t a4, char *a5, size_t a6, unsigned int *a7, unint64_t a8)
{
  v15 = llvm::StringMapImpl::hash(a3, a4, a3);
  Key = llvm::StringMapImpl::FindKey(a2, a3, a4, v15);
  if (Key == -1)
  {
    v18 = *(a2 + 8);
  }

  else
  {
    v18 = Key;
  }

  if (v18 == *(a2 + 8))
  {
    return 0;
  }

  v19 = *a2;
  v20 = *(v19 + 8 * v18);
  v21 = llvm::StringMapImpl::hash(a7, a8, v17);
  v22 = llvm::StringMapImpl::FindKey((v20 + 8), a7, a8, v21);
  v23 = v22 == -1 ? *(v20 + 16) : v22;
  v24 = (*(v20 + 8) + 8 * v23);
  if (v24 == (*(*(v19 + 8 * v18) + 8) + 8 * *(*(v19 + 8 * v18) + 16)))
  {
    return 0;
  }

  v25 = *v24 + 8;

  return llvm::SpecialCaseList::Matcher::match(v25, a5, a6);
}

uint64_t llvm::SmallVectorImpl<llvm::GlobPattern::SubGlobPattern>::operator=(uint64_t a1, void ***a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 2);
    v4 = *(a1 + 8);
    if (v4 < v3)
    {
      if (*(a1 + 12) < v3)
      {
        if (v4)
        {
          v5 = *a1;
          v6 = *a1 + 40 * v4;
          do
          {
            v8 = (v6 - 24);
            v7 = *(v6 - 24);
            if (v7 != v6)
            {
              free(v7);
            }

            v9 = (v6 - 40);
            v10 = *(v6 - 40);
            v11 = *(v6 - 32);
            if (v11)
            {
              v12 = &v10[80 * v11 - 72];
              v13 = -80 * v11;
              do
              {
                if (v12 + 2 != *v12)
                {
                  free(*v12);
                }

                v12 -= 10;
                v13 += 80;
              }

              while (v13);
              v10 = *v9;
            }

            if (v10 != v8)
            {
              free(v10);
            }

            v6 = v9;
          }

          while (v9 != v5);
        }

        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      v26 = *a1;
      if (v4)
      {
        v48 = *(a2 + 2);
        v49 = a2;
        v27 = 0;
        v28 = *a2;
        do
        {
          v29 = &v26[v27];
          v30 = &v28[v27];
          llvm::SmallVectorImpl<llvm::GlobPattern::SubGlobPattern::Bracket>::operator=(&v26[v27], &v28[v27]);
          if (v28 != v26)
          {
            v31 = v30[3];
            v32 = v29[3];
            if (v32 >= v31)
            {
              if (v31)
              {
                memmove(v29[2], v30[2], v30[3]);
              }
            }

            else
            {
              if (v26[v27 + 4] < v31)
              {
                v29[3] = 0;
                llvm::SmallVectorBase<unsigned long long>::grow_pod();
              }

              if (v32)
              {
                memmove(v29[2], v30[2], v29[3]);
              }

              v33 = v30[3];
              if (v33 != v32)
              {
                memcpy(v29[2] + v32, v30[2] + v32, v33 - v32);
              }
            }

            v29[3] = v31;
          }

          v27 += 5;
        }

        while (5 * v4 != v27);
        v26 = *a1;
        LODWORD(v3) = v48;
        a2 = v49;
        v41 = *(v49 + 2);
        if (v4 == v41)
        {
          goto LABEL_64;
        }

        goto LABEL_66;
      }

      v4 = 0;
      v41 = *(a2 + 2);
      if (*(a2 + 2))
      {
LABEL_66:
        v43 = *a2;
        v44 = 40 * v4;
        v45 = 40 * v41;
        do
        {
          v46 = &v26[v44 / 8];
          v47 = &v43[v44 / 8];
          *v46 = &v26[v44 / 8 + 2];
          v46[1] = 0;
          if (LODWORD(v43[v44 / 8 + 1]))
          {
            llvm::SmallVectorImpl<llvm::GlobPattern::SubGlobPattern::Bracket>::operator=(&v26[v44 / 8], &v43[v44 / 8]);
          }

          v46[3] = 0;
          v46[2] = v46 + 5;
          v46[4] = 0;
          if (v47 != v46 && v47[3])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          v43 += 5;
          v26 += 5;
          v45 -= 40;
        }

        while (v44 != v45);
      }

LABEL_64:
      *(a1 + 8) = v3;
      return a1;
    }

    if (v3)
    {
      v14 = 0;
      v15 = *a2;
      v16 = *a1;
      v17 = *(a2 + 2);
      v18 = 40 * v3;
      do
      {
        v19 = &v16[v14 / 8];
        v20 = &v15[v14 / 8];
        llvm::SmallVectorImpl<llvm::GlobPattern::SubGlobPattern::Bracket>::operator=(&v16[v14 / 8], &v15[v14 / 8]);
        if (v15 != v16)
        {
          v21 = v20[3];
          v22 = v19[3];
          if (v22 >= v21)
          {
            if (v21)
            {
              memmove(v19[2], v20[2], v20[3]);
            }
          }

          else
          {
            if (v16[v14 / 8 + 4] < v21)
            {
              v19[3] = 0;
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            if (v22)
            {
              memmove(v19[2], v20[2], v19[3]);
            }

            v23 = v20[3];
            if (v23 != v22)
            {
              memcpy(v19[2] + v22, v20[2] + v22, v23 - v22);
            }
          }

          v19[3] = v21;
        }

        v14 += 40;
      }

      while (v18 != v14);
      v24 = &v16[v14 / 8];
      LODWORD(v3) = v17;
      v25 = *a1 + 40 * *(a1 + 8);
      if (v25 == v24)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v24 = *a1;
      v25 = *a1 + 40 * v4;
      if (v25 == *a1)
      {
        goto LABEL_64;
      }
    }

    do
    {
      v35 = (v25 - 24);
      v34 = *(v25 - 24);
      if (v34 != v25)
      {
        free(v34);
      }

      v36 = (v25 - 40);
      v37 = *(v25 - 40);
      v38 = *(v25 - 32);
      if (v38)
      {
        v39 = &v37[80 * v38 - 72];
        v40 = -80 * v38;
        do
        {
          if (v39 + 2 != *v39)
          {
            free(*v39);
          }

          v39 -= 10;
          v40 += 80;
        }

        while (v40);
        v37 = *v36;
      }

      if (v37 != v35)
      {
        free(v37);
      }

      v25 = v36;
    }

    while (v36 != v24);
    goto LABEL_64;
  }

  return a1;
}

uint64_t *llvm::StringMap<std::pair<llvm::GlobPattern,unsigned int>,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 89, 8uLL);
    v11 = buffer + 88;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer(a3 + 89, 8uLL);
    v11 = buffer + 88;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  *(buffer + 24) = 0u;
  *(buffer + 8) = 0u;
  *(buffer + 56) = 0u;
  *(buffer + 9) = 0;
  *(buffer + 40) = 0u;
  *(buffer + 3) = buffer + 40;
  *(buffer + 9) = 1;
  *(buffer + 20) = 0;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

uint64_t *llvm::Expected<llvm::GlobPattern>::~Expected(uint64_t *a1)
{
  if (a1[9])
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    v3 = a1[2];
    v4 = *(a1 + 6);
    if (v4)
    {
      v5 = &v3[5 * v4];
      do
      {
        v7 = v5 - 3;
        v6 = *(v5 - 3);
        if (v6 != v5)
        {
          free(v6);
        }

        v8 = v5 - 5;
        v9 = *(v5 - 5);
        v10 = *(v5 - 8);
        if (v10)
        {
          v11 = &v9[10 * v10 - 9];
          v12 = -80 * v10;
          do
          {
            if (v11 + 2 != *v11)
            {
              free(*v11);
            }

            v11 -= 10;
            v12 += 80;
          }

          while (v12);
          v9 = *v8;
        }

        if (v9 != v7)
        {
          free(v9);
        }

        v5 = v8;
      }

      while (v8 != v3);
      v3 = a1[2];
    }

    if (v3 != (a1 + 4))
    {
      free(v3);
    }
  }

  return a1;
}

uint64_t llvm::StringMap<llvm::StringMap<llvm::SpecialCaseList::Matcher,llvm::MallocAllocator>,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        v4 = *(*a1 + 8 * i);
        if (v4 != -8 && v4 != 0)
        {
          v6 = *v4;
          if (*(v4 + 5))
          {
            v7 = *(v4 + 4);
            if (v7)
            {
              v8 = 0;
              do
              {
                v9 = *(v4[1] + v8);
                if (v9 != -8 && v9 != 0)
                {
                  llvm::StringMapEntry<llvm::SpecialCaseList::Matcher>::Destroy<llvm::MallocAllocator>(v9);
                }

                v8 += 8;
              }

              while (8 * v7 != v8);
            }
          }

          free(v4[1]);
          llvm::deallocate_buffer(v4, (v6 + 33));
        }
      }
    }
  }

  free(*a1);
  return a1;
}

void llvm::StringMapEntry<llvm::SpecialCaseList::Matcher>::Destroy<llvm::MallocAllocator>(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[5];
    v5 = a1[4];
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 2);
        v4 -= 2;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          llvm::Regex::~Regex(v6);
          MEMORY[0x259C63180]();
        }
      }

      while (v4 != v3);
      v5 = a1[4];
    }

    a1[5] = v3;
    operator delete(v5);
  }

  if (*(a1 + 5))
  {
    v8 = *(a1 + 4);
    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = *(a1[1] + v9);
        if (v10 != -8 && v10 != 0)
        {
          llvm::StringMapEntry<std::pair<llvm::GlobPattern,unsigned int>>::Destroy<llvm::MallocAllocator>(v10);
        }

        v9 += 8;
      }

      while (8 * v8 != v9);
    }
  }

  free(a1[1]);

  llvm::deallocate_buffer(a1, (v2 + 57));
}

void llvm::StringMapEntry<std::pair<llvm::GlobPattern,unsigned int>>::Destroy<llvm::MallocAllocator>(llvm *this)
{
  v2 = *this;
  v3 = *(this + 3);
  v4 = *(this + 8);
  if (v4)
  {
    v5 = &v3[5 * v4];
    do
    {
      v7 = v5 - 3;
      v6 = *(v5 - 3);
      if (v6 != v5)
      {
        free(v6);
      }

      v8 = v5 - 5;
      v9 = *(v5 - 5);
      v10 = *(v5 - 8);
      if (v10)
      {
        v11 = &v9[10 * v10 - 9];
        v12 = -80 * v10;
        do
        {
          if (v11 + 2 != *v11)
          {
            free(*v11);
          }

          v11 -= 10;
          v12 += 80;
        }

        while (v12);
        v9 = *v8;
      }

      if (v9 != v7)
      {
        free(v9);
      }

      v5 = v8;
    }

    while (v8 != v3);
    v3 = *(this + 3);
  }

  if (v3 != (this + 40))
  {
    free(v3);
  }

  llvm::deallocate_buffer(this, (v2 + 89));
}

void std::default_delete<llvm::SpecialCaseList::Matcher>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 24);
    if (v3)
    {
      v4 = *(a2 + 32);
      v5 = *(a2 + 24);
      if (v4 != v3)
      {
        do
        {
          v7 = *(v4 - 2);
          v4 -= 2;
          v6 = v7;
          *v4 = 0;
          if (v7)
          {
            llvm::Regex::~Regex(v6);
            MEMORY[0x259C63180]();
          }
        }

        while (v4 != v3);
        v5 = *(a2 + 24);
      }

      *(a2 + 32) = v3;
      operator delete(v5);
    }

    if (*(a2 + 12))
    {
      v8 = *(a2 + 8);
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *(*a2 + v9);
          if (v10 != -8 && v10 != 0)
          {
            llvm::StringMapEntry<std::pair<llvm::GlobPattern,unsigned int>>::Destroy<llvm::MallocAllocator>(v10);
          }

          v9 += 8;
        }

        while (8 * v8 != v9);
      }
    }

    free(*a2);

    JUMPOUT(0x259C63180);
  }
}

void std::default_delete<llvm::SpecialCaseList>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 12))
    {
      v2 = *(a2 + 8);
      if (v2)
      {
        v3 = 0;
        do
        {
          v4 = *(*a2 + v3);
          if (v4 != -8 && v4 != 0)
          {
            v6 = *v4;
            llvm::StringMap<llvm::StringMap<llvm::SpecialCaseList::Matcher,llvm::MallocAllocator>,llvm::MallocAllocator>::~StringMap(v4 + 16);
            v7 = *(v4 + 1);
            *(v4 + 1) = 0;
            if (v7)
            {
              std::default_delete<llvm::SpecialCaseList::Matcher>::operator()[abi:nn200100](v4 + 8, v7);
            }

            llvm::deallocate_buffer(v4, (v6 + 41));
          }

          v3 += 8;
        }

        while (8 * v2 != v3);
      }
    }

    free(*a2);

    JUMPOUT(0x259C63180);
  }
}

uint64_t *llvm::StringMap<llvm::SpecialCaseList::Section,llvm::MallocAllocator>::try_emplace_with_hash<>(uint64_t a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4));
  v8 = *v7;
  if (*v7 == -8)
  {
    --*(a1 + 16);
    buffer = llvm::allocate_buffer(a3 + 41, 8uLL);
    v10 = buffer + 5;
    if (!a3)
    {
LABEL_5:
      v10[a3] = 0;
      *buffer = a3;
      operator new();
    }

LABEL_4:
    memcpy(v10, a2, a3);
    goto LABEL_5;
  }

  if (!v8)
  {
    buffer = llvm::allocate_buffer(a3 + 41, 8uLL);
    v10 = buffer + 5;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  while (!v8 || v8 == -8)
  {
    v11 = v7[1];
    ++v7;
    v8 = v11;
  }

  return v7;
}

uint64_t *llvm::StringMap<llvm::StringMap<llvm::SpecialCaseList::Matcher,llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 33, 8uLL);
    v11 = buffer + 4;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer(a3 + 33, 8uLL);
    v11 = buffer + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[1] = 0;
  buffer[2] = 0;
  buffer[3] = 0x3800000000;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

uint64_t *llvm::StringMap<llvm::SpecialCaseList::Matcher,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 57, 8uLL);
    v11 = buffer + 7;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer(a3 + 57, 8uLL);
    v11 = buffer + 7;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  buffer[2] = 0;
  buffer[3] = 0;
  *buffer = a3;
  buffer[1] = 0;
  *(buffer + 7) = 88;
  buffer[5] = 0;
  buffer[6] = 0;
  buffer[4] = 0;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

uint64_t llvm::getStableStringHash(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0xB0EEF52375EF8302;
  v3 = 0xA0E4E32062FF891CLL;
  v4 = 0x1533771C85ACA6D4;
  v5 = 0xA257D1C9BBAB1C0;
  v6 = &a1[a2 - (a2 & 7)];
  v7 = a2 & 7;
  v8 = a2 << 56;
  if (v6 == a1)
  {
    v6 = a1;
    if ((a2 & 7u) <= 3)
    {
      goto LABEL_4;
    }

LABEL_8:
    if ((a2 & 7u) > 5)
    {
      if (v7 != 6)
      {
        v8 |= v6[6] << 48;
      }

      v8 |= v6[5] << 40;
    }

    else if (v7 == 4)
    {
      goto LABEL_17;
    }

    v8 |= v6[4] << 32;
LABEL_17:
    v8 |= v6[3] << 24;
LABEL_18:
    v8 |= v6[2] << 16;
    goto LABEL_19;
  }

  do
  {
    v9 = *a1;
    a1 += 8;
    v10 = v9 ^ v3;
    v11 = v2 + v5;
    v12 = v11 ^ __ROR8__(v2, 51);
    v13 = v10 + v4;
    v14 = __ROR8__(v10, 48);
    v15 = (v13 ^ v14) + __ROR8__(v11, 32);
    v16 = v15 ^ __ROR8__(v13 ^ v14, 43);
    v17 = v13 + v12;
    v18 = v17 ^ __ROR8__(v12, 47);
    v19 = v15 + v18;
    v20 = v19 ^ __ROR8__(v18, 51);
    v21 = v16 + __ROR8__(v17, 32);
    v22 = __ROR8__(v16, 48);
    v23 = (v21 ^ v22) + __ROR8__(v19, 32);
    v3 = v23 ^ __ROR8__(v21 ^ v22, 43);
    v24 = v20 + v21;
    v2 = v24 ^ __ROR8__(v20, 47);
    v4 = __ROR8__(v24, 32);
    v5 = v23 ^ v9;
  }

  while (a1 != v6);
  if ((a2 & 7u) > 3)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((a2 & 7u) <= 1)
  {
    if ((a2 & 7) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v7 != 2)
  {
    goto LABEL_18;
  }

LABEL_19:
  v8 |= v6[1] << 8;
LABEL_20:
  v8 |= *v6;
LABEL_21:
  v25 = v8 ^ v3;
  v26 = v5 + v2;
  v27 = (v5 + v2) ^ __ROR8__(v2, 51);
  v28 = v25 + v4;
  v29 = __ROR8__(v25, 48);
  v30 = (v28 ^ v29) + __ROR8__(v26, 32);
  v31 = v30 ^ __ROR8__(v28 ^ v29, 43);
  v32 = v28 + v27;
  v33 = v32 ^ __ROR8__(v27, 47);
  v34 = v30 + v33;
  v35 = v34 ^ __ROR8__(v33, 51);
  v36 = v31 + __ROR8__(v32, 32);
  v37 = __ROR8__(v31, 48);
  v38 = (v36 ^ v37) + __ROR8__(v34, 32);
  v39 = v38 ^ __ROR8__(v36 ^ v37, 43);
  v40 = v35 + v36;
  v41 = v40 ^ __ROR8__(v35, 47);
  v42 = (v38 ^ v8) + v41;
  v43 = v42 ^ __ROR8__(v41, 51);
  v44 = (__ROR8__(v40, 32) ^ 0xFFLL) + v39;
  v45 = __ROR8__(v39, 48);
  v46 = __ROR8__(v42, 32) + (v44 ^ v45);
  v47 = v46 ^ __ROR8__(v44 ^ v45, 43);
  v48 = v43 + v44;
  v49 = v48 ^ __ROR8__(v43, 47);
  v50 = v49 + v46;
  v51 = v50 ^ __ROR8__(v49, 51);
  v52 = __ROR8__(v48, 32) + v47;
  v53 = __ROR8__(v47, 48);
  v54 = __ROR8__(v50, 32) + (v52 ^ v53);
  v55 = v54 ^ __ROR8__(v52 ^ v53, 43);
  v56 = v51 + v52;
  v57 = v56 ^ __ROR8__(v51, 47);
  v58 = v57 + v54;
  v59 = v58 ^ __ROR8__(v57, 51);
  v60 = __ROR8__(v56, 32) + v55;
  v61 = __ROR8__(v55, 48);
  v62 = __ROR8__(v58, 32) + (v60 ^ v61);
  v63 = v62 ^ __ROR8__(v60 ^ v61, 43);
  v64 = v59 + v60;
  v65 = v64 ^ __ROR8__(v59, 47);
  v66 = (v65 + v62) ^ __ROR8__(v65, 51);
  v67 = __ROR8__(v64, 32) + v63;
  return __ROR8__(v66, 47) ^ __ROR8__(v67 ^ __ROR8__(v63, 48), 43) ^ __ROR8__(v66 + v67, 32) ^ (v66 + v67);
}

void llvm::vfs::StatCacheFileSystem::StatCacheFileSystem(uint64_t a1, uint64_t *a2, uint64_t *a3, char a4)
{
  v5 = *a3;
  *a3 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *a1 = &unk_2868A19E8;
  v6 = *a2;
  *a2 = 0;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a4;
  v7 = *(v6 + 8);
  v8 = strlen((v7 + 20));
  *(a1 + 32) = v7 + 20;
  *(a1 + 40) = v8;
  operator new();
}

{
  v5 = *a3;
  *a3 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *a1 = &unk_2868A19E8;
  v6 = *a2;
  *a2 = 0;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a4;
  v7 = *(v6 + 8);
  v8 = strlen((v7 + 20));
  *(a1 + 32) = v7 + 20;
  *(a1 + 40) = v8;
  operator new();
}

llvm *llvm::vfs::StatCacheFileSystem::create@<X0>(const llvm::MemoryBuffer **a1@<X0>, uint64_t a2@<X8>)
{
  v11 = 0;
  llvm::MemoryBufferRef::MemoryBufferRef(v8, *a1);
  result = llvm::vfs::StatCacheFileSystem::validateCacheFile(v8, &v12, &v11 + 1, &v11, &v10, __p);
  v5 = __p[0];
  if (!__p[0])
  {
    if (v11)
    {
      operator new();
    }

    llvm::inconvertibleErrorCode(result);
    v6 = (*(**a1 + 16))();
    v9 = 773;
    v8[0] = v6;
    v8[1] = v7;
    v8[2] = ": Mismatched cache file version";
    llvm::Twine::str(v8, __p);
    llvm::createStringError();
  }

  *(a2 + 8) |= 1u;
  *a2 = v5;
  return result;
}

llvm *llvm::vfs::StatCacheFileSystem::validateCacheFile@<X0>(llvm *result@<X0>, void *a2@<X1>, BOOL *a3@<X2>, BOOL *a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v7 = *(result + 1);
  if (v7 < 0x18 || (v8 = *result, **result != 1413567571) && *v8 != 1952543827 || v7 < *(v8 + 4) || (result = strnlen((v8 + 20), v7 - 20), *(result + v8 + 20)))
  {
    llvm::inconvertibleErrorCode(result);
    llvm::createStringError();
  }

  *a3 = *(v8 + 1) == 116;
  *a4 = *(v8 + 16) == 1;
  *a2 = v8 + 20;
  a2[1] = result;
  *a5 = *(v8 + 8);
  *a6 = 0;
  return result;
}

void llvm::vfs::StatCacheFileSystem::status(llvm::vfs::StatCacheFileSystem *this@<X0>, llvm::formatv_object_base **a2@<X1>, uint64_t a3@<X8>)
{
  v62[23] = *MEMORY[0x277D85DE8];
  __s1 = v62;
  v61 = xmmword_2573A0200;
  llvm::Twine::toVector(a2, &__s1);
  if (*(this + 56))
  {
    goto LABEL_19;
  }

  v6 = v61;
  if (!v61)
  {
    goto LABEL_19;
  }

  v7 = __s1;
  v8 = __s1;
  if (v61 >= 8)
  {
    if (v61 < 0x20)
    {
      v9 = 0;
LABEL_10:
      v8 = &v7[v6 & 0xFFFFFFFFFFFFFFF8];
      v16 = &v7[v9];
      v17 = v9 - (v6 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        *v16 = vadd_s8(*v16, vand_s8(vcgt_u8(0x1A1A1A1A1A1A1A1ALL, vadd_s8(*v16, 0xBFBFBFBFBFBFBFBFLL)), 0x2020202020202020));
        ++v16;
        v17 += 8;
      }

      while (v17);
      if (v6 == (v6 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v9 = v61 & 0xFFFFFFFFFFFFFFE0;
    v10 = (__s1 + 16);
    v11.i64[0] = 0xBFBFBFBFBFBFBFBFLL;
    v11.i64[1] = 0xBFBFBFBFBFBFBFBFLL;
    v12.i64[0] = 0x1A1A1A1A1A1A1A1ALL;
    v12.i64[1] = 0x1A1A1A1A1A1A1A1ALL;
    v13.i64[0] = 0x2020202020202020;
    v13.i64[1] = 0x2020202020202020;
    v14 = v61 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v15 = vaddq_s8(*v10, vandq_s8(vcgtq_u8(v12, vaddq_s8(*v10, v11)), v13));
      v10[-1] = vaddq_s8(v10[-1], vandq_s8(vcgtq_u8(v12, vaddq_s8(v10[-1], v11)), v13));
      *v10 = v15;
      v10 += 2;
      v14 -= 32;
    }

    while (v14);
    if (v6 == v9)
    {
      goto LABEL_19;
    }

    if ((v6 & 0x18) != 0)
    {
      goto LABEL_10;
    }

    v8 = &v7[v9];
  }

LABEL_15:
  v18 = &v7[v6];
  do
  {
    v19 = *v8;
    if ((v19 - 65) < 0x1A)
    {
      LOBYTE(v19) = v19 + 32;
    }

    *v8++ = v19;
  }

  while (v8 != v18);
LABEL_19:
  llvm::sys::path::remove_dots(&__s1, 0, 0);
  v20 = v61;
  v21 = *(this + 5);
  if (v61 < v21)
  {
    goto LABEL_46;
  }

  v22 = __s1;
  if (v21)
  {
    if (memcmp(__s1, *(this + 4), *(this + 5)))
    {
      goto LABEL_46;
    }
  }

  v23 = &v22[v21];
  v24 = *(this + 6);
  v25 = v20 - v21;
  v49 = a3;
  v26 = 5381;
  if (v25)
  {
    v27 = v25;
    v28 = v23;
    do
    {
      v29 = *v28++;
      v26 = 33 * v26 + v29;
      --v27;
    }

    while (v27);
  }

  v30 = *(*(v24 + 8) + 4 * ((*v24 - 1) & v26));
  if (!v30 || (v31 = (*(v24 + 16) + v30), v32 = *v31, !*v31))
  {
LABEL_38:
    llvm::sys::path::begin(v23, v25, 0, v58);
    llvm::sys::path::end(v23, v25, v57);
    v54 = v58[0];
    *v55 = v58[1];
    *&v55[16] = v58[2];
    v50 = v57[0];
    v51 = v57[1];
    v52 = v57[2];
    while (!llvm::sys::path::const_iterator::operator==(&v54, &v50))
    {
      if (*&v55[8] == 2 && **v55 == 11822)
      {
        break;
      }

      llvm::sys::path::const_iterator::operator++(&v54);
    }

    v59[0] = v54;
    v59[1] = *v55;
    v59[2] = *&v55[16];
    llvm::sys::path::end(v23, v25, &v54);
    v43 = v49;
    if (llvm::sys::path::const_iterator::operator==(v59, &v54))
    {
      goto LABEL_44;
    }

LABEL_46:
    (*(**(this + 2) + 40))(*(this + 2), a2);
    v45 = __s1;
    if (__s1 == v62)
    {
      return;
    }

    goto LABEL_47;
  }

  v33 = v31 + 1;
  while (1)
  {
    v34 = v33[2];
    v35 = v33[3];
    v36 = v33 + 4;
    v37 = *v33 == v26 && v25 == v34;
    if (v37 && (!v33[2] || !memcmp(v33 + 4, v23, v25)))
    {
      break;
    }

    v33 = (v36 + v35 + v34);
    if (!--v32)
    {
      goto LABEL_38;
    }
  }

  v38 = (v36 + v25);
  v39 = *(v36 + v25);
  v40 = *(v36 + v25 + 16);
  v41 = *(v36 + v25 + 48);
  *&v55[16] = *(v36 + v25 + 32);
  *&v55[32] = v41;
  v54 = v39;
  *v55 = v40;
  if (llvm::sys::fs::file_status::getUniqueID(&v54))
  {
    v43 = v49;
    goto LABEL_50;
  }

  v43 = v49;
  if (!v42)
  {
LABEL_44:
    *(v43 + 80) |= 1u;
    v44 = std::generic_category();
    *v43 = 2;
    *(v43 + 8) = v44;
    v45 = __s1;
    if (__s1 == v62)
    {
      return;
    }

    goto LABEL_47;
  }

LABEL_50:
  v46 = *v38;
  v47 = v38[1];
  v48 = v38[3];
  v52 = v38[2];
  v53 = v48;
  v50 = v46;
  v51 = v47;
  llvm::vfs::Status::copyWithNewName(&v50, a2, &v54);
  *(v43 + 80) &= ~1u;
  *v43 = v54;
  *(v43 + 16) = *v55;
  *&v54 = 0;
  *(v43 + 24) = *&v55[8];
  *(v43 + 40) = *&v55[24];
  *(v43 + 56) = *&v55[40];
  *(v43 + 72) = v56;
  v45 = __s1;
  if (__s1 == v62)
  {
    return;
  }

LABEL_47:
  free(v45);
}

void llvm::vfs::StatCacheFileSystem::StatCacheWriter::StatCacheWriter(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = a5;
  v16[0] = a2;
  v16[1] = a3;
  if (a5)
  {
    if (a2)
    {
      if (a3 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (a3 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v15) = a3;
      if (a3)
      {
        memmove(&__dst, a2, a3);
      }

      *(&__dst + a3) = 0;
    }

    else
    {
      __dst = 0;
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    llvm::StringRef::lower(v16, &__dst);
  }

  if (v15 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (v15 >= 0)
  {
    v11 = SHIBYTE(v15);
  }

  else
  {
    v11 = v14;
  }

  *a1 = a1 + 24;
  *(a1 + 8) = xmmword_257371870;
  if (v11 >= 0x81)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v12 = 0;
  if (v11)
  {
    memcpy(*a1, p_dst, v11);
    v12 = *(a1 + 8);
  }

  *(a1 + 8) = v12 + v11;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__dst);
  }

  *(a1 + 152) = v7;
  *(a1 + 160) = a6;
  operator new();
}

void llvm::vfs::StatCacheFileSystem::StatCacheWriter::addEntry(uint64_t a1, unsigned __int8 *a2, size_t a3)
{
  v17[16] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = v17;
  v16 = xmmword_257371870;
  if (*(a1 + 152))
  {
    v4 = a3;
    v5 = a2;
    v6 = *(a1 + 8);
    v7 = a3 - v6;
    if (a3 < v6)
    {
      goto LABEL_21;
    }
  }

  else
  {
    llvm::StringRef::lower(&v13, __p);
    if (v12 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if (v12 >= 0)
    {
      v9 = SHIBYTE(v12);
    }

    else
    {
      v9 = __p[1];
    }

    *&v16 = 0;
    if (*(&v16 + 1) < v9)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v10 = 0;
    if (v9)
    {
      memcpy(v15, v8, v9);
      v10 = v16;
    }

    v4 = v10 + v9;
    *&v16 = v4;
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
      v5 = v15;
      v4 = v16;
      v13 = v15;
      v14 = v16;
      v6 = *(a1 + 8);
      v7 = v16 - v6;
      if (v16 < v6)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v5 = v15;
      v13 = v15;
      v14 = v4;
      v6 = *(a1 + 8);
      v7 = v4 - v6;
      if (v4 < v6)
      {
        goto LABEL_21;
      }
    }
  }

  if (!v6 || !memcmp(v5, *a1, v6))
  {
    v5 += v6;
    v13 = v5;
    v14 = v7;
    v4 = v7;
  }

LABEL_21:
  if (v5)
  {
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v12) = v4;
    if (v4)
    {
      memmove(__p, v5, v4);
    }

    *(__p + v4) = 0;
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
  }

  operator new();
}

void llvm::vfs::StatCacheFileSystem::StatCacheWriter::~StatCacheWriter(llvm::vfs::StatCacheFileSystem::StatCacheWriter *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    v3 = llvm::OnDiskChainedHashTableGenerator<llvm::vfs::StatCacheFileSystem::StatCacheGenerationInfo>::~OnDiskChainedHashTableGenerator(v2);
    MEMORY[0x259C63180](v3, 0x10B0C40A77D50BBLL);
  }

  if (*(this + 24))
  {
    v4 = *(this + 23);
    v5 = *(*(this + 22) + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    *(this + 24) = 0;
    if (v4 != (this + 176))
    {
      do
      {
        v7 = *(v4 + 1);
        if (*(v4 + 39) < 0)
        {
          operator delete(*(v4 + 2));
        }

        operator delete(v4);
        v4 = v7;
      }

      while (v7 != (this + 176));
    }
  }

  if (*this != (this + 24))
  {
    free(*this);
  }
}

uint64_t llvm::vfs::StatCacheFileSystem::StatCacheWriter::writeStatCache(llvm::vfs::StatCacheFileSystem::StatCacheWriter *this, llvm::raw_fd_ostream *a2)
{
  *v9 = 1;
  if (*(this + 152))
  {
    v4 = "Stat";
  }

  else
  {
    v4 = "STAT";
  }

  llvm::raw_ostream::write(a2, v4, 4uLL);
  llvm::raw_ostream::write(a2, byte_2573A0218, 4uLL);
  llvm::raw_ostream::write(a2, this + 160, 8uLL);
  llvm::raw_ostream::write(a2, v9, 4uLL);
  v5 = *(this + 1);
  if ((v5 + 1) > *(this + 2))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*this + v5) = 0;
  llvm::raw_ostream::write(a2, *this, *(this + 1) + 1);
  *v8 = llvm::OnDiskChainedHashTableGenerator<llvm::vfs::StatCacheFileSystem::StatCacheGenerationInfo>::Emit(*(this + 21), a2);
  v6 = (*(*a2 + 80))(a2) + *(a2 + 8) - *(a2 + 4);
  llvm::raw_fd_ostream::seek(a2, 4);
  llvm::raw_ostream::write(a2, v8, 4uLL);
  return v6;
}

void llvm::vfs::StatCacheFileSystem::~StatCacheFileSystem(llvm::vfs::StatCacheFileSystem *this)
{
  *this = &unk_2868A19E8;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    MEMORY[0x259C63180](v2, 0x1050C407EF653B9);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_2868A2120;
  v4 = *(this + 2);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  llvm::vfs::FileSystem::~FileSystem(this);
}

{
  *this = &unk_2868A19E8;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    MEMORY[0x259C63180](v2, 0x1050C407EF653B9);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_2868A2120;
  v4 = *(this + 2);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  llvm::vfs::FileSystem::~FileSystem(this);

  JUMPOUT(0x259C63180);
}

uint64_t llvm::OnDiskChainedHashTableGenerator<llvm::vfs::StatCacheFileSystem::StatCacheGenerationInfo>::~OnDiskChainedHashTableGenerator(uint64_t a1)
{
  free(*(a1 + 104));
  if (*(a1 + 80))
  {
    llvm::deallocate_buffer(**(a1 + 72), *(*(a1 + 72) + 8));
  }

  *(a1 + 80) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 88) = 0;
    v3 = *(a1 + 24);
    v4 = *v3 + 4096;
    *(a1 + 8) = *v3;
    *(a1 + 16) = v4;
    if (v2 != 1)
    {
      v5 = ((v3 + 8 - *(a1 + 24)) >> 10) & 0x1FFFFFF;
      if (v5 >= 0x1E)
      {
        LOBYTE(v5) = 30;
      }

      llvm::deallocate_buffer(*(v3 + 8), (4096 << v5));
    }

    *(a1 + 32) = 1;
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(a1 + 8);
  return a1;
}

uint64_t llvm::OnDiskChainedHashTableGenerator<llvm::vfs::StatCacheFileSystem::StatCacheGenerationInfo>::insert(uint64_t a1, unsigned __int8 **a2, __int128 *a3)
{
  v6 = *a1;
  v7 = *(a1 + 4) + 1;
  *(a1 + 4) = v7;
  if (3 * v6 <= 4 * v7)
  {
    llvm::OnDiskChainedHashTableGenerator<llvm::vfs::StatCacheFileSystem::StatCacheGenerationInfo>::resize(a1, 2 * v6);
    v6 = *a1;
  }

  v10 = *(a1 + 8);
  v9 = (a1 + 8);
  v8 = v10;
  v11 = v9[12];
  v9[10] += 96;
  if (v10 && (result = (v8 + 7) & 0xFFFFFFFFFFFFFFF8, (result + 96) <= v9[1]))
  {
    *v9 = result + 96;
  }

  else
  {
    result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v9, 96, 96, 3);
  }

  *result = *a2;
  v13 = *a3;
  v14 = a3[1];
  v15 = a3[3];
  *(result + 48) = a3[2];
  *(result + 64) = v15;
  *(result + 16) = v13;
  *(result + 32) = v14;
  *(result + 80) = 0;
  v16 = a2[1];
  if (v16)
  {
    v17 = *a2;
    v18 = 5381;
    do
    {
      v19 = *v17++;
      v18 = 33 * v18 + v19;
      --v16;
    }

    while (v16);
  }

  else
  {
    v18 = 5381;
  }

  *(result + 88) = v18;
  v20 = v11 + 16 * ((v6 - 1) & v18);
  *(result + 80) = *(v20 + 8);
  ++*(v20 + 4);
  *(v20 + 8) = result;
  return result;
}

void llvm::OnDiskChainedHashTableGenerator<llvm::vfs::StatCacheFileSystem::StatCacheGenerationInfo>::resize(unsigned int *a1, size_t count)
{
  v4 = malloc_type_calloc(count, 0x10uLL, 0x17B874E6uLL);
  if (!v4 && (count || (v4 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 13);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v9 = v7[2 * i + 1];
      if (v9)
      {
        do
        {
          v10 = *(v9 + 80);
          v11 = &v5[16 * ((count - 1) & *(v9 + 88))];
          *(v9 + 80) = *(v11 + 1);
          ++*(v11 + 1);
          *(v11 + 1) = v9;
          v9 = v10;
        }

        while (v10);
      }
    }
  }

  free(v7);
  *a1 = count;
  *(a1 + 13) = v5;
}

uint64_t llvm::OnDiskChainedHashTableGenerator<llvm::vfs::StatCacheFileSystem::StatCacheGenerationInfo>::Emit(unsigned int *a1, void *a2)
{
  v4 = a1[1];
  v5 = 1 << -__clz(4 * v4 / 3);
  if (v4 >= 3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (v6 == *a1 || (llvm::OnDiskChainedHashTableGenerator<llvm::vfs::StatCacheFileSystem::StatCacheGenerationInfo>::resize(a1, v6), *a1))
  {
    v7 = 0;
    do
    {
      v8 = *(a1 + 13) + 16 * v7;
      if (*(v8 + 8))
      {
        *v8 = (*(*a2 + 80))(a2) + *(a2 + 8) - *(a2 + 4);
        *v19 = *(v8 + 4);
        llvm::raw_ostream::write(a2, v19, 2uLL);
        for (i = *(v8 + 8); i; i = *(i + 80))
        {
          *v19 = *(i + 88);
          llvm::raw_ostream::write(a2, v19, 4uLL);
          v10 = *(i + 8);
          *v19 = *(i + 8);
          llvm::raw_ostream::write(a2, v19, 2uLL);
          strcpy(v19, "@");
          llvm::raw_ostream::write(a2, v19, 2uLL);
          llvm::raw_ostream::write(a2, *i, v10);
          llvm::raw_ostream::write(a2, (i + 16), 0x40uLL);
        }
      }

      ++v7;
    }

    while (v7 < *a1);
  }

  v11 = (*(*a2 + 80))(a2) + a2[4] - a2[2];
  v12 = (v11 + 3) & 0x1FFFFFFFCLL;
  v13 = v12 - v11;
  if (v12 != v11)
  {
    v14 = v11 - v12;
    do
    {
      v19[0] = 0;
      llvm::raw_ostream::write(a2, v19, 1uLL);
    }

    while (!__CFADD__(v14++, 1));
  }

  *v19 = *a1;
  llvm::raw_ostream::write(a2, v19, 4uLL);
  *v19 = a1[1];
  llvm::raw_ostream::write(a2, v19, 4uLL);
  if (*a1)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      *v19 = *(*(a1 + 13) + v16);
      llvm::raw_ostream::write(a2, v19, 4uLL);
      ++v17;
      v16 += 16;
    }

    while (v17 < *a1);
  }

  return (v13 + v11);
}

void llvm::initStatisticOptions(llvm *this)
{
  if (atomic_load_explicit(&qword_27F8752F0, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_27F8752F8, memory_order_acquire))
    {
      return;
    }

LABEL_5:
    llvm::initStatisticOptions();
    return;
  }

  llvm::initStatisticOptions();
  if ((atomic_load_explicit(&qword_27F8752F8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_5;
  }
}

void llvm::TrackingStatistic::RegisterStatistic(llvm::TrackingStatistic *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    if (atomic_load_explicit(qword_27F875300, memory_order_acquire))
    {
      v2 = qword_27F875300[0];
      if (atomic_load_explicit(qword_27F875318, memory_order_acquire))
      {
        goto LABEL_4;
      }
    }

    else
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F875300, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
      v2 = qword_27F875300[0];
      if (atomic_load_explicit(qword_27F875318, memory_order_acquire))
      {
LABEL_4:
        v3 = qword_27F875318[0];
        std::recursive_mutex::lock(v2);
        if (*(this + 32))
        {
          goto LABEL_12;
        }

        goto LABEL_8;
      }
    }

    v3 = qword_27F875318[0];
    std::recursive_mutex::lock(v2);
    if (*(this + 32))
    {
LABEL_12:
      std::recursive_mutex::unlock(v2);
      return;
    }

LABEL_8:
    if ((_MergedGlobals_13 & 1) != 0 || byte_27F8752EA == 1)
    {
      v4 = this;
      std::vector<mlir::Operation *>::push_back[abi:nn200100](v3, &v4);
    }

    atomic_store(1u, this + 32);
    goto LABEL_12;
  }
}

uint64_t llvm::EnableStatistics(uint64_t this)
{
  byte_27F8752EA = 1;
  byte_27F8752EB = this;
  return this;
}

void llvm::PrintStatistics(llvm *this, llvm::raw_ostream *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit(qword_27F875318, memory_order_acquire))
  {
    v3 = qword_27F875318[0];
    v4 = *qword_27F875318[0];
    v5 = *(qword_27F875318[0] + 8);
    if (*qword_27F875318[0] != v5)
    {
LABEL_3:
      v22 = this;
      v6 = 0;
      v7 = 0;
      do
      {
        v9 = *v4;
        v10 = (*v4)[3];
        if (v10)
        {
          v11 = 20;
          do
          {
            v27[v11--] = (v10 % 0xA) | 0x30;
            v12 = v10 > 9;
            v10 /= 0xAuLL;
          }

          while (v12);
          v13 = v11 + 1;
          v14 = 20 - v11;
          if ((20 - v11) >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }
        }

        else
        {
          v27[20] = 48;
          v13 = 20;
          v14 = 1;
        }

        v23 = v9;
        if (v14 > 0x16)
        {
          operator new();
        }

        v26 = v14;
        if (v13 != 21)
        {
          memcpy(&__p, &v27[v13], v14);
        }

        *(&__p + v14) = 0;
        if (v26 < 0)
        {
          if (v7 <= v25)
          {
            v7 = v25;
          }

          operator delete(__p);
        }

        else if (v7 <= v26)
        {
          v7 = v26;
        }

        v8 = strlen(*v23);
        if (v6 <= v8)
        {
          v6 = v8;
        }

        ++v4;
      }

      while (v4 != v5);
      this = v22;
      v4 = *v3;
      v5 = *(v3 + 8);
      v15 = (v5 - *v3) >> 3;
      if (v15 >= 129)
      {
        goto LABEL_25;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v3 = qword_27F875318[0];
    v4 = *qword_27F875318[0];
    v5 = *(qword_27F875318[0] + 8);
    if (*qword_27F875318[0] != v5)
    {
      goto LABEL_3;
    }
  }

  v15 = v5 - v4;
  if (v15 >= 129)
  {
LABEL_25:
    v16 = MEMORY[0x277D826F0];
    v17 = v15;
    while (1)
    {
      v18 = operator new(8 * v17, v16);
      if (v18)
      {
        break;
      }

      v19 = v17 >> 1;
      v12 = v17 > 1;
      v17 >>= 1;
      if (!v12)
      {
        goto LABEL_32;
      }
    }

    v21 = v18;
    operator delete(v21);
    v20 = *(this + 4);
    if ((*(this + 3) - v20) > 2)
    {
LABEL_35:
      *(v20 + 2) = 61;
      *v20 = 15677;
      *(this + 4) += 3;
LABEL_36:
      operator new();
    }

LABEL_33:
    llvm::raw_ostream::write(this, "===", 3uLL);
    goto LABEL_36;
  }

LABEL_31:
  v19 = 0;
LABEL_32:
  v20 = *(this + 4);
  if ((*(this + 3) - v20) > 2)
  {
    goto LABEL_35;
  }

  goto LABEL_33;
}

void llvm::PrintStatisticsJSON(llvm *this, llvm::raw_ostream *a2)
{
  if (atomic_load_explicit(qword_27F875300, memory_order_acquire))
  {
    v3 = qword_27F875300[0];
    std::recursive_mutex::lock(qword_27F875300[0]);
    if (atomic_load_explicit(qword_27F875318, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F875300, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
    v3 = qword_27F875300[0];
    std::recursive_mutex::lock(qword_27F875300[0]);
    if (atomic_load_explicit(qword_27F875318, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

LABEL_3:
  v4 = qword_27F875318[0];
  v5 = *qword_27F875318[0];
  v6 = *(qword_27F875318[0] + 8);
  v7 = v6 - *qword_27F875318[0];
  v8 = v7 >> 3;
  if (v7 >> 3 < 129)
  {
    v12 = 0;
LABEL_9:
    v15 = *(this + 4);
    if (*(this + 3) - v15 > 1uLL)
    {
LABEL_20:
      *v15 = 2683;
      *(this + 4) += 2;
      v16 = *v4;
      v17 = *(v4 + 8);
      if (v16 == v17)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v9 = MEMORY[0x277D826F0];
    v10 = v7 >> 3;
    while (1)
    {
      v11 = operator new(8 * v10, v9);
      if (v11)
      {
        break;
      }

      v12 = v10 >> 1;
      v13 = v10 > 1;
      v10 >>= 1;
      if (!v13)
      {
        goto LABEL_9;
      }
    }

    v24 = v11;
    operator delete(v24);
    v15 = *(this + 4);
    if (*(this + 3) - v15 > 1uLL)
    {
      goto LABEL_20;
    }
  }

  llvm::raw_ostream::write(this, "{\n", 2uLL);
  v16 = *v4;
  v17 = *(v4 + 8);
  if (v16 == v17)
  {
LABEL_21:
    v25 = "";
    goto LABEL_59;
  }

LABEL_11:
  v18 = *v16;
  v19 = *(this + 4);
  if (*(this + 3) - v19 >= 2uLL)
  {
    *v19 = 8713;
    *(this + 4) += 2;
    v20 = this;
    v21 = *v18;
    if (!*v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v20 = llvm::raw_ostream::write(this, "\t", 2uLL);
    v21 = *v18;
    if (!*v18)
    {
      goto LABEL_24;
    }
  }

  v22 = v20;
  v23 = strlen(v21);
  v20 = v22;
  if (v23 <= *(v22 + 3) - *(v22 + 4))
  {
    if (v23)
    {
      memcpy(*(v22 + 4), v21, v23);
      v20 = v22;
      *(v22 + 4) += v23;
    }
  }

  else
  {
    v20 = llvm::raw_ostream::write(v22, v21, v23);
  }

LABEL_24:
  v26 = *(v20 + 4);
  if (v26 >= *(v20 + 3))
  {
    v20 = llvm::raw_ostream::write(v20, 46);
    v27 = *(v18 + 8);
    if (!v27)
    {
      goto LABEL_32;
    }
  }

  else
  {
    *(v20 + 4) = v26 + 1;
    *v26 = 46;
    v27 = *(v18 + 8);
    if (!v27)
    {
      goto LABEL_32;
    }
  }

  v28 = v20;
  v29 = strlen(v27);
  v20 = v28;
  if (v29 <= *(v28 + 3) - *(v28 + 4))
  {
    if (v29)
    {
      memcpy(*(v28 + 4), v27, v29);
      v20 = v28;
      *(v28 + 4) += v29;
    }
  }

  else
  {
    v20 = llvm::raw_ostream::write(v28, v27, v29);
  }

LABEL_32:
  v30 = *(v20 + 4);
  if ((*(v20 + 3) - v30) >= 3)
  {
    *(v30 + 2) = 32;
    *v30 = 14882;
    *(v20 + 4) += 3;
    llvm::raw_ostream::operator<<(v20, *(v18 + 24));
    v32 = v16 + 1;
    if (v16 + 1 != v17)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v31 = llvm::raw_ostream::write(v20, ": ", 3uLL);
    llvm::raw_ostream::operator<<(v31, *(v18 + 24));
    v32 = v16 + 1;
    if (v16 + 1 != v17)
    {
LABEL_34:
      v49 = v3;
      v25 = ",\n";
      while (1)
      {
        v33 = *v32;
        v34 = *(this + 4);
        if (*(this + 3) - v34 > 1uLL)
        {
          *v34 = 2604;
          v38 = *(this + 3);
          v35 = (*(this + 4) + 2);
          *(this + 4) = v35;
          if ((v38 - v35) > 1)
          {
LABEL_38:
            *v35 = 8713;
            *(this + 4) += 2;
            v36 = this;
            v37 = *v33;
            if (!*v33)
            {
              goto LABEL_46;
            }

            goto LABEL_42;
          }
        }

        else
        {
          llvm::raw_ostream::write(this, ",\n", 2uLL);
          v35 = *(this + 4);
          if (*(this + 3) - v35 > 1uLL)
          {
            goto LABEL_38;
          }
        }

        v36 = llvm::raw_ostream::write(this, "\t", 2uLL);
        v37 = *v33;
        if (!*v33)
        {
          goto LABEL_46;
        }

LABEL_42:
        v39 = v36;
        v40 = strlen(v37);
        v36 = v39;
        if (v40 <= *(v39 + 3) - *(v39 + 4))
        {
          if (v40)
          {
            memcpy(*(v39 + 4), v37, v40);
            v36 = v39;
            *(v39 + 4) += v40;
          }
        }

        else
        {
          v36 = llvm::raw_ostream::write(v39, v37, v40);
        }

LABEL_46:
        v41 = *(v36 + 4);
        if (v41 >= *(v36 + 3))
        {
          v36 = llvm::raw_ostream::write(v36, 46);
          v42 = *(v33 + 8);
          if (v42)
          {
LABEL_50:
            v43 = v36;
            v44 = strlen(v42);
            v36 = v43;
            if (v44 <= *(v43 + 3) - *(v43 + 4))
            {
              if (v44)
              {
                memcpy(*(v43 + 4), v42, v44);
                v36 = v43;
                *(v43 + 4) += v44;
              }
            }

            else
            {
              v36 = llvm::raw_ostream::write(v43, v42, v44);
            }
          }
        }

        else
        {
          *(v36 + 4) = v41 + 1;
          *v41 = 46;
          v42 = *(v33 + 8);
          if (v42)
          {
            goto LABEL_50;
          }
        }

        v45 = *(v36 + 4);
        if ((*(v36 + 3) - v45) > 2)
        {
          *(v45 + 2) = 32;
          *v45 = 14882;
          *(v36 + 4) += 3;
          llvm::raw_ostream::operator<<(v36, *(v33 + 24));
          if (++v32 == v17)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v46 = llvm::raw_ostream::write(v36, ": ", 3uLL);
          llvm::raw_ostream::operator<<(v46, *(v33 + 24));
          if (++v32 == v17)
          {
LABEL_56:
            v3 = v49;
            goto LABEL_59;
          }
        }
      }
    }
  }

  v25 = ",\n";
LABEL_59:
  llvm::TimerGroup::printAllJSONValues(this, v25, v14);
  v47 = *(this + 4);
  if ((*(this + 3) - v47) > 2)
  {
    *(v47 + 2) = 10;
    *v47 = 32010;
    v48 = *(this + 4) + 3;
    *(this + 4) = v48;
    if (v48 == *(this + 2))
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  llvm::raw_ostream::write(this, "\n}\n", 3uLL);
  if (*(this + 4) != *(this + 2))
  {
LABEL_63:
    llvm::raw_ostream::flush_nonempty(this);
  }

LABEL_64:

  std::recursive_mutex::unlock(v3);
}

llvm *llvm::PrintStatistics(llvm *this)
{
  if (_MergedGlobals_13 == 1)
  {
    llvm::CreateInfoOutputFile(this);
  }

  return this;
}

void llvm::GetStatistics(void *a1@<X8>)
{
  if (!atomic_load_explicit(qword_27F875300, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F875300, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v3 = qword_27F875300[0];
  std::recursive_mutex::lock(qword_27F875300[0]);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (!atomic_load_explicit(qword_27F875318, memory_order_acquire))
  {
  }

  v4 = *qword_27F875318[0];
  v5 = *(qword_27F875318[0] + 8);
  if (*qword_27F875318[0] != v5)
  {
    do
    {
      v6 = *v4++;
      v7 = *(v6 + 8);
      v8 = *(v6 + 24);
      v9 = v7;
      std::vector<std::pair<llvm::StringRef,unsigned long long>>::emplace_back<char const*,unsigned long long>(a1, &v9, &v8);
    }

    while (v4 != v5);
  }

  std::recursive_mutex::unlock(v3);
}

void *std::vector<std::pair<llvm::StringRef,unsigned long long>>::emplace_back<char const*,unsigned long long>(uint64_t a1, const char **a2, const char **a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v6 >= v5)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      if (v13 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v20 = 24 * v10;
    v14 = *a2;
    *v20 = *a2;
    if (v14)
    {
      v14 = strlen(v14);
    }

    v15 = *a3;
    *(v20 + 8) = v14;
    *(v20 + 16) = v15;
    v9 = (v20 + 24);
    v16 = *a1;
    v17 = *(a1 + 8) - *a1;
    v18 = (v20 - v17);
    memcpy(v18, *a1, v17);
    *a1 = v18;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v7 = *a2;
    *v6 = *a2;
    if (v7)
    {
      v7 = strlen(v7);
    }

    v8 = *a3;
    v6[1] = v7;
    v6[2] = v8;
    v9 = v6 + 3;
  }

  *(a1 + 8) = v9;
  return v9 - 3;
}

void llvm::ResetStatistics(llvm *this)
{
  if (atomic_load_explicit(qword_27F875318, memory_order_acquire))
  {
    v1 = qword_27F875318[0];
    if (atomic_load_explicit(qword_27F875300, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = qword_27F875318[0];
    if (atomic_load_explicit(qword_27F875300, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F875300, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
LABEL_3:
  v2 = qword_27F875300[0];
  std::recursive_mutex::lock(qword_27F875300[0]);
  v3 = *v1;
  v4 = *(v1 + 8);
  if (*v1 != v4)
  {
    do
    {
      v5 = *v3++;
      atomic_store(0, (v5 + 32));
      atomic_store(0, (v5 + 24));
    }

    while (v3 != v4);
    v3 = *v1;
  }

  *(v1 + 8) = v3;

  std::recursive_mutex::unlock(v2);
}

void std::__stable_sort<std::_ClassicAlgPolicy,anonymous namespace::StatisticInfo::sort(void)::$_0 &,std::__wrap_iter<llvm::TrackingStatistic **>>(const char ***a1, const char ***a2, unint64_t a3, const char ***a4, uint64_t a5)
{
  if (a3 < 2)
  {
    return;
  }

  v6 = a1;
  if (a3 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    v9 = strcmp(*v7, **a1);
    if (!v9)
    {
      v9 = strcmp(v7[1], v8[1]);
      if (!v9)
      {
        v9 = strcmp(v7[2], v8[2]);
      }
    }

    if (v9 < 0)
    {
      *v6 = v7;
      *(a2 - 1) = v8;
    }

    return;
  }

  if (a3 <= 128)
  {
    if (a1 == a2)
    {
      return;
    }

    v10 = a1 + 1;
    if (a1 + 1 == a2)
    {
      return;
    }

    v11 = 0;
    v12 = a1;
    while (1)
    {
      v14 = *v12;
      v12 = v10;
      v15 = *v10;
      v16 = **v10;
      v17 = strcmp(v16, *v14);
      if (v17 || (v17 = strcmp(v15[1], v14[1])) != 0)
      {
        if (v17 < 0)
        {
          goto LABEL_18;
        }
      }

      else if (strcmp(v15[2], v14[2]) < 0)
      {
LABEL_18:
        v18 = v11;
        do
        {
          *(v6 + v18 + 8) = v14;
          if (!v18)
          {
            v13 = v6;
            goto LABEL_13;
          }

          v14 = *(v6 + v18 - 8);
          v19 = strcmp(v16, *v14);
          if (!v19)
          {
            v19 = strcmp(v15[1], v14[1]);
            if (!v19)
            {
              v19 = strcmp(v15[2], v14[2]);
            }
          }

          v18 -= 8;
        }

        while (v19 < 0);
        v13 = (v6 + v18 + 8);
LABEL_13:
        *v13 = v15;
      }

      v10 = v12 + 1;
      v11 += 8;
      if (v12 + 1 == a2)
      {
        return;
      }
    }
  }

  v21 = a3 >> 1;
  v22 = a3 >> 1;
  v23 = a3 - (a3 >> 1);
  v24 = &a1[v22];
  if (a3 <= a5)
  {
    v27 = &a4[v21];
    v28 = v27;
    v29 = a4;
    v30 = v6;
    v31 = &a4[a3];
    do
    {
      if (v28 == v31)
      {
        if (v29 == v27)
        {
          return;
        }

        v39 = &a4[v22] - v29 - 8;
        if (v39 >= 0x38)
        {
          if ((v6 - v29) >= 0x20)
          {
            v49 = v30 + 2;
            v50 = (v39 >> 3) + 1;
            v51 = v50 & 0x3FFFFFFFFFFFFFFCLL;
            v40 = &v29[v51];
            v30 = (v30 + v51 * 8);
            v52 = (v29 + 2);
            v53 = v50 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v54 = *v52;
              *(v49 - 1) = *(v52 - 1);
              *v49 = v54;
              v49 += 2;
              v52 += 2;
              v53 -= 4;
            }

            while (v53);
            if (v50 == (v50 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }

          else
          {
            v40 = v29;
          }
        }

        else
        {
          v40 = v29;
        }

        do
        {
          v55 = *v40++;
          *v30++ = v55;
        }

        while (v40 != v27);
        return;
      }

      v35 = v28;
      v36 = *v28;
      v37 = *v29;
      v38 = strcmp(**v28, **v29);
      if (!v38)
      {
        v38 = strcmp(v36[1], v37[1]);
        if (!v38)
        {
          v38 = strcmp(v36[2], v37[2]);
        }
      }

      if (v38 >= 0)
      {
        v32 = v37;
      }

      else
      {
        v32 = v36;
      }

      v29 += v38 >= 0;
      v33 = v38 >> 28;
      v34 = (v38 >> 28) & 8;
      v28 = (v35 + v34);
      *v30++ = v32;
      ++v6;
    }

    while (v29 != v27);
    if (v28 != v31)
    {
      v41 = v31 - (v35 + v34) - 8;
      if (v41 <= 0x77)
      {
        goto LABEL_59;
      }

      if ((v6 - (v35 + (v33 & 8))) < 0x20)
      {
        goto LABEL_59;
      }

      v42 = v30 + 2;
      v43 = (v41 >> 3) + 1;
      v44 = 8 * (v43 & 0x3FFFFFFFFFFFFFFCLL);
      v28 = (v28 + v44);
      v30 = (v30 + v44);
      v45 = (v35 + (v33 & 8) + 16);
      v46 = v43 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v47 = *v45;
        *(v42 - 1) = *(v45 - 1);
        *v42 = v47;
        v42 += 2;
        v45 += 2;
        v46 -= 4;
      }

      while (v46);
      if (v43 != (v43 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_59:
        do
        {
          v48 = *v28++;
          *v30++ = v48;
        }

        while (v28 != v31);
      }
    }
  }

  else
  {
  }
}

const char ***std::__stable_sort_move<std::_ClassicAlgPolicy,anonymous namespace::StatisticInfo::sort(void)::$_0 &,std::__wrap_iter<llvm::TrackingStatistic **>>(const char ***result, const char ***a2, uint64_t a3, const char ***a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = result;
    if (a3 == 1)
    {
LABEL_12:
      *v4 = *v5;
      return result;
    }

    if (a3 == 2)
    {
      v7 = a2 - 1;
      v8 = *(a2 - 1);
      v9 = *result;
      result = strcmp(*v8, **result);
      if (!result)
      {
        result = strcmp(v8[1], v9[1]);
        if (!result)
        {
          result = strcmp(v8[2], v9[2]);
        }
      }

      if (result >= 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      *v4++ = v10;
      if (result >= 0)
      {
        v5 = v7;
      }

      goto LABEL_12;
    }

    if (a3 <= 8)
    {
      if (result == a2)
      {
        return result;
      }

      v11 = result + 1;
      *a4 = *result;
      if (result + 1 == a2)
      {
        return result;
      }

      v12 = 0;
      v13 = a4;
      v14 = a4;
      while (1)
      {
        while (1)
        {
          v16 = *v14++;
          v15 = v16;
          v17 = *v11;
          result = strcmp(**v11, *v16);
          if (result)
          {
            break;
          }

          result = strcmp(v17[1], v15[1]);
          if (result)
          {
            break;
          }

          result = strcmp(v17[2], v15[2]);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_22;
          }

LABEL_18:
          *v14 = v17;
          ++v11;
          v12 += 8;
          v13 = v14;
          if (v11 == a2)
          {
            return result;
          }
        }

        if ((result & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

LABEL_22:
        v13[1] = v15;
        v18 = v4;
        if (v13 != v4)
        {
          v19 = v12;
          while (1)
          {
            v20 = *v11;
            v21 = *(v4 + v19 - 8);
            result = strcmp(**v11, *v21);
            if (!result)
            {
              result = strcmp(v20[1], v21[1]);
              if (!result)
              {
                result = strcmp(v20[2], v21[2]);
              }
            }

            if ((result & 0x80000000) == 0)
            {
              break;
            }

            *(v4 + v19) = v21;
            v19 -= 8;
            if (!v19)
            {
              v18 = v4;
              goto LABEL_33;
            }
          }

          v18 = (v4 + v19);
        }

LABEL_33:
        v22 = *v11++;
        *v18 = v22;
        v12 += 8;
        v13 = v14;
        if (v11 == a2)
        {
          return result;
        }
      }
    }

    v23 = a3 >> 1;
    v24 = a3 >> 1;
    v25 = &result[v24];
    v27 = v4;
    v28 = v25;
    do
    {
      if (v28 == a2)
      {
        if (v5 == v25)
        {
          return result;
        }

        v35 = v25 - v5 - 8;
        if (v35 >= 0x38)
        {
          if ((v27 - v5) >= 0x20)
          {
            v47 = v4 + 2;
            v48 = (v35 >> 3) + 1;
            v49 = v48 & 0x3FFFFFFFFFFFFFFCLL;
            v4 = (v4 + v49 * 8);
            v36 = &v5[v49];
            v50 = (v5 + 2);
            v51 = v48 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v52 = *v50;
              *(v47 - 1) = *(v50 - 1);
              *v47 = v52;
              v50 += 2;
              v47 += 2;
              v51 -= 4;
            }

            while (v51);
            if (v48 == (v48 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v36 = v5;
          }
        }

        else
        {
          v36 = v5;
        }

        do
        {
          v53 = *v36++;
          *v4++ = v53;
        }

        while (v36 != v25);
        return result;
      }

      v32 = v28;
      v33 = *v28;
      v34 = *v5;
      result = strcmp(**v28, **v5);
      if (!result)
      {
        result = strcmp(v33[1], v34[1]);
        if (!result)
        {
          result = strcmp(v33[2], v34[2]);
        }
      }

      if (result >= 0)
      {
        v29 = v34;
      }

      else
      {
        v29 = v33;
      }

      v30 = result >> 28;
      v31 = (result >> 28) & 8;
      v28 = (v32 + v31);
      v5 += result >= 0;
      *v4++ = v29;
      ++v27;
    }

    while (v5 != v25);
    if (v28 != a2)
    {
      v37 = a2 - v32 - v31 - 8;
      if (v37 < 0x78)
      {
        goto LABEL_63;
      }

      if ((v27 - (v32 + (v30 & 8))) < 0x20)
      {
        goto LABEL_63;
      }

      v38 = 0;
      v39 = (v37 >> 3) + 1;
      v40 = v39 & 0x3FFFFFFFFFFFFFFCLL;
      v41 = &v4[v40];
      v28 = (v28 + v40 * 8);
      v42 = (v32 + (v30 & 8) + 16);
      v43 = v39 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v44 = &v4[v38];
        v45 = *v42;
        *v44 = *(v42 - 1);
        *(v44 + 1) = v45;
        v42 += 2;
        v38 += 4;
        v43 -= 4;
      }

      while (v43);
      v4 = v41;
      if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_63:
        do
        {
          v46 = *v28++;
          *v4++ = v46;
        }

        while (v28 != a2);
      }
    }
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,anonymous namespace::StatisticInfo::sort(void)::$_0 &,std::__wrap_iter<llvm::TrackingStatistic **>>(const char ***a1, const char ***a2, const char ***a3, uint64_t a4, uint64_t a5, const char ***a6, uint64_t a7)
{
  v97 = a5;
  if (!a5)
  {
    return result;
  }

  while (v97 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return result;
    }

    v12 = 0;
    v13 = *a2;
    v14 = **a2;
    v15 = -a4;
    while (1)
    {
      v16 = a1[v12 / 8];
      v17 = strcmp(v14, *v16);
      if (!v17)
      {
        v17 = strcmp(v13[1], v16[1]);
        if (!v17)
        {
          v17 = strcmp(v13[2], v16[2]);
        }
      }

      if (v17 < 0)
      {
        break;
      }

      v12 += 8;
      if (__CFADD__(v15++, 1))
      {
        return result;
      }
    }

    v20 = &a1[v12 / 8];
    __src = a6;
    v95 = a3;
    v93 = &a1[v12 / 8];
    if (-v15 >= v97)
    {
      if (v15 == -1)
      {
        a1[v12 / 8] = v13;
        *a2 = v16;
        return result;
      }

      v31 = -v15;
      v32 = -v15 / 2;
      v33 = &a1[v32];
      v22 = a2;
      if (a2 != a3)
      {
        v34 = v33[v12 / 8];
        v35 = a3 - a2;
        v36 = *v34;
        v22 = a2;
        do
        {
          v37 = &v22[v35 >> 1];
          v38 = *v37;
          v39 = strcmp(**v37, v36);
          if (!v39)
          {
            v39 = strcmp(v38[1], v34[1]);
            if (!v39)
            {
              v39 = strcmp(v38[2], v34[2]);
            }
          }

          if (v39 >= 0)
          {
            v35 >>= 1;
          }

          else
          {
            v35 += ~(v35 >> 1);
          }

          if (v39 < 0)
          {
            v22 = v37 + 1;
          }
        }

        while (v35);
        v32 = v31 / 2;
        v33 = &a1[v31 / 2];
      }

      v21 = v22 - a2;
      v23 = &v33[v12 / 8];
    }

    else
    {
      v21 = v97 / 2;
      v22 = &a2[v97 / 2];
      v23 = a2;
      v24 = a2 - a1 - v12;
      if (a2 - a1 != v12)
      {
        v92 = a1;
        v25 = *v22;
        v26 = v24 >> 3;
        v27 = **v22;
        v23 = v20;
        do
        {
          v28 = &v23[8 * (v26 >> 1)];
          v29 = *v28;
          v30 = strcmp(v27, **v28);
          if (!v30)
          {
            v30 = strcmp(v25[1], v29[1]);
            if (!v30)
            {
              v30 = strcmp(v25[2], v29[2]);
            }
          }

          if (v30 < 0)
          {
            v26 >>= 1;
          }

          else
          {
            v23 = (v28 + 1);
            v26 += ~(v26 >> 1);
          }
        }

        while (v26);
        v21 = v97 / 2;
        a1 = v92;
      }

      v32 = (v23 - a1 - v12) >> 3;
    }

    a4 = -v15 - v32;
    v40 = v97 - v21;
    v41 = a2;
    v42 = v21;
    v43 = v32;
    v44 = std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v23, v41, v22);
    v45 = v42;
    v46 = v44;
    if (v43 + v45 >= v97 - (v43 + v45) - v15)
    {
      v48 = v43;
      v49 = v45;
      a6 = __src;
      v50 = v23;
      a4 = v48;
      a3 = v46;
      a1 = v93;
      v97 = v49;
      a2 = v50;
      if (!v49)
      {
        return result;
      }
    }

    else
    {
      v47 = v43;
      a6 = __src;
      a1 = v46;
      a3 = v95;
      v97 = v40;
      a2 = v22;
      if (!v40)
      {
        return result;
      }
    }
  }

  if (a4 <= v97)
  {
    if (a2 != a1)
    {
      v60 = a2 - a1 - 8;
      v61 = a6;
      v62 = a1;
      if (v60 < 0x18)
      {
        goto LABEL_98;
      }

      v61 = a6;
      v62 = a1;
      if ((a6 - a1) <= 0x1F)
      {
        goto LABEL_98;
      }

      v63 = (v60 >> 3) + 1;
      v64 = v63 & 0x3FFFFFFFFFFFFFFCLL;
      v61 = &a6[v64];
      v62 = &a1[v64];
      v65 = (a1 + 2);
      v66 = a6 + 2;
      v67 = v63 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v68 = *v65;
        *(v66 - 1) = *(v65 - 1);
        *v66 = v68;
        v65 += 2;
        v66 += 2;
        v67 -= 4;
      }

      while (v67);
      if (v63 != (v63 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_98:
        do
        {
          v69 = *v62++;
          *v61++ = v69;
        }

        while (v62 != a2);
      }

      while (a2 != a3)
      {
        v71 = a2;
        v72 = *a2;
        v73 = *a6;
        v74 = strcmp(*v72, **a6);
        if (!v74)
        {
          v74 = strcmp(v72[1], v73[1]);
          if (!v74)
          {
            v74 = strcmp(v72[2], v73[2]);
          }
        }

        if (v74 >= 0)
        {
          v70 = v73;
        }

        else
        {
          v70 = v72;
        }

        a2 = (v71 + ((v74 >> 28) & 8));
        a6 += v74 >= 0;
        *a1++ = v70;
        if (a6 == v61)
        {
          return result;
        }
      }

      memmove(a1, a6, v61 - a6);
    }

    return result;
  }

  if (a2 == a3)
  {
    return result;
  }

  v51 = a3 - a2 - 8;
  if (v51 < 0x18)
  {
    v52 = a6;
    v53 = a2;
  }

  else
  {
    v52 = a6;
    v53 = a2;
    if ((a6 - a2) > 0x1F)
    {
      v54 = (v51 >> 3) + 1;
      v55 = v54 & 0x3FFFFFFFFFFFFFFCLL;
      v52 = &a6[v55];
      v53 = &a2[v55];
      v56 = (a2 + 2);
      v57 = (a6 + 2);
      v58 = v54 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v56[-1];
        v59 = *v56;
        v57[-1] = result;
        *v57 = v59;
        v56 += 2;
        v57 += 2;
        v58 -= 4;
      }

      while (v58);
      if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_74;
      }
    }
  }

  do
  {
    v75 = *v53++;
    *v52++ = v75;
  }

  while (v53 != a3);
LABEL_74:
  v76 = a3;
  while (a2 != a1)
  {
    v78 = a2;
    v80 = *--a2;
    v79 = v80;
    v81 = *(v52 - 1);
    v82 = strcmp(*v81, *v80);
    if (!v82)
    {
      v82 = strcmp(v81[1], v79[1]);
      if (!v82)
      {
        v82 = strcmp(v81[2], v79[2]);
      }
    }

    if (v82 >= 0)
    {
      v77 = v81;
    }

    else
    {
      v77 = v79;
    }

    if (v82 >= 0)
    {
      a2 = v78;
      --v52;
    }

    *--a3 = v77;
    --v76;
    if (v52 == a6)
    {
      return result;
    }
  }

  if (v52 != a6)
  {
    v83 = v52 - a6 - 8;
    if (v83 < 0x48 || (v52 - v76) < 0x20)
    {
      v84 = v52;
LABEL_89:
      v85 = a3 - 1;
      do
      {
        v86 = *--v84;
        *v85-- = v86;
      }

      while (v84 != a6);
      return result;
    }

    v87 = (a3 - 2);
    v88 = (v83 >> 3) + 1;
    v89 = 8 * (v88 & 0x3FFFFFFFFFFFFFFCLL);
    v84 = &v52[v89 / 0xFFFFFFFFFFFFFFF8];
    a3 = (a3 - v89);
    v90 = (v52 - 2);
    v91 = v88 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = *v90;
      v87[-1] = v90[-1];
      *v87 = result;
      v87 -= 2;
      v90 -= 2;
      v91 -= 4;
    }

    while (v91);
    if (v88 != (v88 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_89;
    }
  }

  return result;
}

uint64_t llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::opt<char [6],llvm::cl::desc,llvm::cl::LocationClass<BOOL>,llvm::cl::OptionHidden>(uint64_t a1, const char *a2, _OWORD *a3, _BYTE **a4, _WORD *a5)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v11 = *(a1 + 72);
  if (v11 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 145) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_28685B4A0;
  *a1 = &unk_2868A0408;
  *(a1 + 152) = &unk_28689F1F8;
  *(a1 + 160) = &unk_2868A04B8;
  *(a1 + 184) = a1 + 160;
  v12 = strlen(a2);
  v13 = llvm::cl::Option::setArgStr(a1, a2, v12);
  *(a1 + 32) = *a3;
  if (*(a1 + 128))
  {
    v17 = "cl::location(x) specified more than once!";
    v18 = 259;
    v14 = llvm::errs(v13);
    llvm::cl::Option::error(a1, &v17, 0, 0, v14);
  }

  else
  {
    v15 = *a4;
    *(a1 + 128) = *a4;
    *(a1 + 145) = 1;
    *(a1 + 144) = *v15;
  }

  *(a1 + 10) = (32 * (*a5 & 3)) | *(a1 + 10) & 0xFF9F;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

llvm *llvm::object_deleter<anonymous namespace::StatisticInfo>::call(llvm *result)
{
  if (result)
  {
    v1 = result;
    if ((_MergedGlobals_13 & 1) != 0 || byte_27F8752EB == 1)
    {
      llvm::PrintStatistics(result);
    }

    v2 = *v1;
    if (*v1)
    {
      *(v1 + 1) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x259C63180);
  }

  return result;
}

uint64_t llvm::StrInStrNoCase(uint64_t a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a4 > a2)
  {
    return -1;
  }

  v6 = a2 + 1 - a4;
  if (a2 + 1 == a4)
  {
    return -1;
  }

  v7 = 0;
  while (1)
  {
    v11 = a2 >= v7 ? v7 : a2;
    v12 = (a2 - v11 >= a4 ? a4 : a2 - v11);
    v13[0] = (v11 + a1);
    v13[1] = v12;
    if (a4 <= a2 - v11 && !llvm::StringRef::compare_insensitive(v13, a3, a4))
    {
      break;
    }

    if (v6 == ++v7)
    {
      return -1;
    }
  }

  return v7;
}

unint64_t llvm::getToken@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v17 = a1;
  v18 = a2;
  first_not_of = llvm::StringRef::find_first_not_of(&v17, a3, a4, 0);
  result = llvm::StringRef::find_first_of(&v17, a3, a4, first_not_of);
  v10 = v18;
  if (v18 >= first_not_of)
  {
    v11 = first_not_of;
  }

  else
  {
    v11 = v18;
  }

  if (v11 <= result)
  {
    v12 = result;
  }

  else
  {
    v12 = first_not_of;
  }

  if (v12 >= v18)
  {
    v12 = v18;
  }

  v13 = v17 + v11;
  v14 = v12 - v11;
  if (v18 >= result)
  {
    v15 = result;
  }

  else
  {
    v15 = v18;
  }

  v16 = v17 + v15;
  *a5 = v13;
  a5[1] = v14;
  a5[2] = v16;
  a5[3] = v10 - v15;
  return result;
}

unint64_t llvm::SplitString(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v23 = a1;
  v24 = a2;
  first_not_of = llvm::StringRef::find_first_not_of(&v23, a4, a5, 0);
  result = llvm::StringRef::find_first_of(&v23, a4, a5, first_not_of);
  if (v24 >= first_not_of)
  {
    v10 = first_not_of;
  }

  else
  {
    v10 = v24;
  }

  if (v10 <= result)
  {
    v11 = result;
  }

  else
  {
    v11 = first_not_of;
  }

  if (v11 >= v24)
  {
    v11 = v24;
  }

  v12 = v11 - v10;
  if (v11 != v10)
  {
    v13 = v23 + v10;
    if (v24 >= result)
    {
      v14 = result;
    }

    else
    {
      v14 = v24;
    }

    v15 = v23 + v14;
    v16 = v24 - v14;
    do
    {
      v17 = *(a3 + 8);
      if (v17 >= *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v18 = (*a3 + 16 * v17);
      *v18 = v13;
      v18[1] = v12;
      ++*(a3 + 8);
      v23 = v15;
      v24 = v16;
      v19 = llvm::StringRef::find_first_not_of(&v23, a4, a5, 0);
      result = llvm::StringRef::find_first_of(&v23, a4, a5, v19);
      if (v24 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v24;
      }

      if (v20 <= result)
      {
        v21 = result;
      }

      else
      {
        v21 = v19;
      }

      if (v21 >= v24)
      {
        v21 = v24;
      }

      v13 = v23 + v20;
      if (v24 >= result)
      {
        v22 = result;
      }

      else
      {
        v22 = v24;
      }

      v15 = v23 + v22;
      v16 = v24 - v22;
      v12 = v21 - v20;
    }

    while (v21 != v20);
  }

  return result;
}

llvm::raw_ostream *llvm::printEscapedString(llvm::raw_ostream *result, uint64_t a2, llvm::raw_ostream *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v7 = *v5;
      if (v7 == 92)
      {
        v8 = *(a3 + 4);
        if (v8 >= *(a3 + 3))
        {
          result = llvm::raw_ostream::write(a3, 92);
          v9 = *(result + 4);
          if (v9 < *(result + 3))
          {
LABEL_19:
            *(result + 4) = v9 + 1;
            *v9 = 92;
            goto LABEL_5;
          }
        }

        else
        {
          *(a3 + 4) = v8 + 1;
          *v8 = 92;
          result = a3;
          v9 = *(a3 + 4);
          if (v9 < *(a3 + 3))
          {
            goto LABEL_19;
          }
        }

        v6 = 92;
        goto LABEL_4;
      }

      v11 = *(a3 + 3);
      v10 = *(a3 + 4);
      if (v7 == 34 || (v7 - 32) > 0x5Eu)
      {
        if (v10 >= v11)
        {
          result = llvm::raw_ostream::write(a3, 92);
          v12 = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 >> 4];
          v13 = *(result + 4);
          if (v13 < *(result + 3))
          {
LABEL_21:
            *(result + 4) = v13 + 1;
            *v13 = v12;
            v6 = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 & 0xF];
            v14 = *(result + 4);
            if (v14 < *(result + 3))
            {
LABEL_22:
              *(result + 4) = v14 + 1;
              *v14 = v6;
              goto LABEL_5;
            }

            goto LABEL_4;
          }
        }

        else
        {
          *(a3 + 4) = v10 + 1;
          *v10 = 92;
          result = a3;
          v12 = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 >> 4];
          v13 = *(a3 + 4);
          if (v13 < *(a3 + 3))
          {
            goto LABEL_21;
          }
        }

        result = llvm::raw_ostream::write(result, v12);
        v6 = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 & 0xF];
        v14 = *(result + 4);
        if (v14 < *(result + 3))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v10 < v11)
        {
          *(a3 + 4) = v10 + 1;
          *v10 = v7;
          goto LABEL_5;
        }

        result = a3;
        v6 = *v5;
      }

LABEL_4:
      result = llvm::raw_ostream::write(result, v6);
LABEL_5:
      ++v5;
      --v4;
    }

    while (v4);
  }

  return result;
}

unsigned __int8 *llvm::printHTMLEscaped(unsigned __int8 *result, uint64_t a2, llvm::raw_ostream *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v9 = *v5;
      if (v9 <= 0x26)
      {
        if (v9 != 34)
        {
          if (v9 != 38)
          {
LABEL_24:
            v15 = *(a3 + 4);
            if (v15 >= *(a3 + 3))
            {
              result = llvm::raw_ostream::write(a3, v9);
            }

            else
            {
              *(a3 + 4) = v15 + 1;
              *v15 = v9;
            }

            goto LABEL_6;
          }

          v11 = *(a3 + 4);
          if ((*(a3 + 3) - v11) > 4)
          {
            *(v11 + 4) = 59;
            *v11 = 1886216486;
            *(a3 + 4) += 5;
            goto LABEL_6;
          }

          v6 = a3;
          v7 = "&amp;";
          v8 = 5;
          goto LABEL_5;
        }

        v14 = *(a3 + 4);
        if ((*(a3 + 3) - v14) > 5)
        {
          *(v14 + 4) = 15220;
          *v14 = 1869967654;
          goto LABEL_28;
        }

        v6 = a3;
        v7 = "&quot;";
      }

      else
      {
        if (v9 != 39)
        {
          if (v9 == 60)
          {
            v13 = *(a3 + 4);
            if (*(a3 + 3) - v13 > 3uLL)
            {
              *v13 = 997485606;
LABEL_30:
              *(a3 + 4) += 4;
              goto LABEL_6;
            }

            v6 = a3;
            v7 = "&lt;";
          }

          else
          {
            if (v9 != 62)
            {
              goto LABEL_24;
            }

            v10 = *(a3 + 4);
            if (*(a3 + 3) - v10 > 3uLL)
            {
              *v10 = 997484326;
              goto LABEL_30;
            }

            v6 = a3;
            v7 = "&gt;";
          }

          v8 = 4;
          goto LABEL_5;
        }

        v12 = *(a3 + 4);
        if ((*(a3 + 3) - v12) > 5)
        {
          *(v12 + 4) = 15219;
          *v12 = 1869635878;
LABEL_28:
          *(a3 + 4) += 6;
          goto LABEL_6;
        }

        v6 = a3;
        v7 = "&apos;";
      }

      v8 = 6;
LABEL_5:
      result = llvm::raw_ostream::write(v6, v7, v8);
LABEL_6:
      ++v5;
      --v4;
    }

    while (v4);
  }

  return result;
}

llvm::raw_ostream *llvm::printLowerCase(llvm::raw_ostream *result, uint64_t a2, llvm::raw_ostream *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      while (1)
      {
        v6 = *v5;
        if ((v6 - 65) < 0x1A)
        {
          LOBYTE(v6) = v6 + 32;
        }

        v7 = *(a3 + 4);
        if (v7 >= *(a3 + 3))
        {
          break;
        }

        *(a3 + 4) = v7 + 1;
        *v7 = v6;
        v5 = (v5 + 1);
        if (!--v4)
        {
          return result;
        }
      }

      result = llvm::raw_ostream::write(a3, v6);
      v5 = (v5 + 1);
      --v4;
    }

    while (v4);
  }

  return result;
}

void llvm::convertToSnakeFromCamelCase(uint64_t a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    std::string::reserve(a3, a2);
    v6 = 0;
    v7 = MEMORY[0x277D85DE0];
    while (1)
    {
      v8 = __tolower(*(a1 + v6));
      std::string::push_back(a3, v8);
      v9 = *(a1 + v6);
      if ((v9 & 0x80000000) != 0)
      {
        v12 = __maskrune(v9, 0x8000uLL);
        v10 = v6 + 1;
        if (v12)
        {
          v13 = a2 > v10;
        }

        else
        {
          v13 = 0;
        }

        if (!v13)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v10 = v6 + 1;
        if ((*(v7 + 4 * v9 + 60) & 0x8000) == 0 || a2 <= v10)
        {
          goto LABEL_32;
        }
      }

      v14 = *(a1 + v10);
      if ((v14 & 0x80000000) != 0)
      {
        v17 = __maskrune(v14, 0x8000uLL);
        v15 = v6 + 2;
        if (v17)
        {
          v18 = a2 > v15;
        }

        else
        {
          v18 = 0;
        }

        if (!v18)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v15 = v6 + 2;
        if ((*(v7 + 4 * v14 + 60) & 0x8000) == 0 || a2 <= v15)
        {
          goto LABEL_32;
        }
      }

      v19 = *(a1 + v15);
      if ((v19 & 0x80000000) == 0)
      {
        if ((*(v7 + 4 * v19 + 60) & 0x1000) == 0)
        {
          goto LABEL_32;
        }

LABEL_31:
        std::string::push_back(a3, 95);
        goto LABEL_32;
      }

      if (__maskrune(v19, 0x1000uLL))
      {
        goto LABEL_31;
      }

LABEL_32:
      v20 = *(a1 + v6);
      if ((v20 & 0x80000000) != 0)
      {
        if (__maskrune(v20, 0x1000uLL))
        {
          goto LABEL_38;
        }
      }

      else if ((*(v7 + 4 * v20 + 60) & 0x1000) != 0)
      {
        goto LABEL_38;
      }

      v21 = *(a1 + v6);
      if (v21 < 0 || (*(v7 + 4 * v21 + 60) & 0x400) == 0)
      {
        ++v6;
        goto LABEL_4;
      }

LABEL_38:
      if (a2 > ++v6)
      {
        v22 = *(a1 + v6);
        if ((v22 & 0x80000000) == 0)
        {
          if ((*(v7 + 4 * v22 + 60) & 0x8000) == 0)
          {
            goto LABEL_4;
          }

LABEL_43:
          std::string::push_back(a3, 95);
          goto LABEL_4;
        }

        if (__maskrune(v22, 0x8000uLL))
        {
          goto LABEL_43;
        }
      }

LABEL_4:
      if (v6 == a2)
      {
        return;
      }
    }
  }

  *(a3 + 23) = 0;
  *a3 = 0;
}

void llvm::convertToCamelFromSnakeCase(_BYTE *a1@<X0>, std::string::size_type a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    *(a4 + 23) = 0;
    *a4 = 0;
    return;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  std::string::reserve(a4, a2);
  v8 = *a1;
  if (a3)
  {
    if ((v8 & 0x80000000) != 0)
    {
      v13 = __maskrune(v8, 0x1000uLL);
      LOBYTE(v8) = *a1;
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    else if ((*(MEMORY[0x277D85DE0] + 4 * v8 + 60) & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    if ((v8 - 97) < 0x1Au)
    {
      LOBYTE(v8) = v8 - 32;
    }
  }

LABEL_7:
  std::string::push_back(a4, v8);
  if (a2 != 1)
  {
    v9 = 1;
    v10 = MEMORY[0x277D85DE0];
    do
    {
      v11 = a1[v9];
      if (v9 != a2 - 1 && v11 == 95)
      {
        v12 = a1[v9 + 1];
        if ((v12 & 0x80000000) != 0)
        {
          if (__maskrune(v12, 0x1000uLL))
          {
LABEL_9:
            v11 = a1[v9 + 1];
            if ((v11 - 97) < 0x1A)
            {
              LOBYTE(v11) = v11 - 32;
            }

            ++v9;
            goto LABEL_12;
          }
        }

        else if ((*(v10 + 4 * v12 + 60) & 0x1000) != 0)
        {
          goto LABEL_9;
        }

        LOBYTE(v11) = a1[v9];
      }

LABEL_12:
      std::string::push_back(a4, v11);
      ++v9;
    }

    while (v9 < a2);
  }
}

uint64_t llvm::StringMapImpl::StringMapImpl(uint64_t this, int a2, int a3)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 20) = a3;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = v4 | (v4 >> 8) | ((v4 | (v4 >> 8)) >> 16);
    v6 = this;
    *(this + 16) = 0;
    v7 = malloc_type_calloc(v5 + 2, 0xCuLL, 0x17B874E6uLL);
    if (!v7)
    {
      llvm::report_bad_alloc_error("Allocation failed", 1);
    }

    v7[(v5 + 1)] = 2;
    *v6 = v7;
    *(v6 + 8) = v5 + 1;
    return v6;
  }

  else
  {
    *this = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 20) = a3;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = v4 | (v4 >> 8) | ((v4 | (v4 >> 8)) >> 16);
    v6 = this;
    *(this + 16) = 0;
    v7 = malloc_type_calloc(v5 + 2, 0xCuLL, 0x17B874E6uLL);
    if (!v7)
    {
      llvm::report_bad_alloc_error("Allocation failed", 1);
    }

    v7[(v5 + 1)] = 2;
    *v6 = v7;
    *(v6 + 8) = v5 + 1;
    return v6;
  }

  else
  {
    *this = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  return this;
}

void *llvm::StringMapImpl::init(llvm::StringMapImpl *this, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 16;
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  result = malloc_type_calloc(v3 + 1, 0xCuLL, 0x17B874E6uLL);
  if (!result && (v3 != -1 || (result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  result[v3] = 2;
  *this = result;
  *(this + 2) = v3;
  return result;
}

void *createTable(int a1)
{
  v2 = a1 + 1;
  result = malloc_type_calloc((a1 + 1), 0xCuLL, 0x17B874E6uLL);
  if (!result && (v2 || (result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  result[a1] = 2;
  return result;
}

uint64_t llvm::StringMapImpl::LookupBucketFor(uint64_t a1, void *__s1, size_t __n, unsigned int a4)
{
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = *a1;
    v10 = v8 - 1;
    result = (v8 - 1) & a4;
    v12 = *a1 + 8 * v8 + 8;
    if (__n)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    v18 = malloc_type_calloc(0x11uLL, 0xCuLL, 0x17B874E6uLL);
    if (!v18)
    {
      llvm::report_bad_alloc_error("Allocation failed", 1);
    }

    v9 = v18;
    v18[16] = 2;
    *a1 = v18;
    *(a1 + 8) = 16;
    v10 = 15;
    result = a4 & 0xF;
    v12 = (v9 + 17);
    if (__n)
    {
LABEL_3:
      v13 = 1;
      v14 = 0xFFFFFFFFLL;
      v15 = v9[result];
      i = result;
      if (v15)
      {
        while (1)
        {
          if (v15 == -8)
          {
            if (v14 == -1)
            {
              v14 = result;
            }

            else
            {
              v14 = v14;
            }
          }

          else if (*(v12 + 4 * i) == a4 && __n == *v15)
          {
            v28 = result;
            v26 = v12;
            v27 = v9;
            v24 = v14;
            v25 = v10;
            v23 = v13;
            v21 = memcmp(__s1, v15 + *(a1 + 20), __n);
            v13 = v23;
            v10 = v25;
            v14 = v24;
            v12 = v26;
            v9 = v27;
            v22 = v21;
            result = v28;
            if (!v22)
            {
              return result;
            }
          }

          LODWORD(result) = v10 & (result + v13++);
          v15 = v9[result];
          i = result;
          if (!v15)
          {
            goto LABEL_4;
          }
        }
      }

      goto LABEL_4;
    }
  }

  v19 = 1;
  LODWORD(v14) = -1;
  v20 = v9[result];
  for (i = result; v20; i = result)
  {
    if (v20 == -8)
    {
      if (v14 == -1)
      {
        LODWORD(v14) = result;
      }
    }

    else if (*(v12 + 4 * i) == a4 && !*v20)
    {
      return result;
    }

    result = v10 & (result + v19++);
    v20 = v9[result];
  }

LABEL_4:
  v17 = v14;
  if (v14 == -1)
  {
    v17 = i;
    result = result;
  }

  else
  {
    result = v14;
  }

  *(v12 + 4 * v17) = a4;
  return result;
}

uint64_t llvm::StringMapImpl::FindKey(uint64_t *a1, const void *a2, size_t a3, unsigned int a4)
{
  v4 = *(a1 + 2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a1;
  v6 = v4 - 1;
  result = (v4 - 1) & a4;
  v8 = *v5;
  v9 = *v5 + 8 * v4 + 8;
  if (a3)
  {
    v10 = 1;
    v11 = *(v8 + 8 * result);
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }

    while (1)
    {
      if (v11 != -8 && *(v9 + 4 * result) == a4 && a3 == *v11)
      {
        v23 = a3;
        v24 = a2;
        v21 = a4;
        v22 = result;
        v18 = v5;
        v20 = v6;
        v17 = v8;
        v19 = v9;
        v16 = v10;
        v14 = memcmp(a2, v11 + *(v5 + 5), a3);
        v10 = v16;
        v5 = v18;
        v9 = v19;
        v8 = v17;
        v6 = v20;
        a4 = v21;
        a3 = v23;
        a2 = v24;
        v15 = v14;
        result = v22;
        if (!v15)
        {
          break;
        }
      }

      LODWORD(result) = (result + v10++) & v6;
      v11 = *(v8 + 8 * result);
      if (!v11)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    v12 = 1;
    v13 = *(v8 + 8 * result);
    if (!v13)
    {
      return 0xFFFFFFFFLL;
    }

    while (v13 == -8 || *(v9 + 4 * result) != a4 || *v13)
    {
      result = (result + v12++) & v6;
      v13 = *(v8 + 8 * result);
      if (!v13)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

int32x2_t llvm::StringMapImpl::RemoveKey(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3)
{
  v6 = llvm::xxh3_64bits(a2, a3, a3);
  v8 = *(a1 + 2);
  if (v8)
  {
    v9 = v8 - 1;
    v10 = (v8 - 1) & v6;
    v11 = *a1;
    v12 = *a1 + 8 * v8 + 8;
    if (a3)
    {
      v13 = 1;
      v14 = *(v11 + 8 * v10);
      if (!v14)
      {
        return result;
      }

      while (1)
      {
        if (v14 != -8 && *(v12 + 4 * v10) == v6 && a3 == *v14)
        {
          v22 = v6;
          v23 = v11;
          v24 = v10;
          v20 = v13;
          v21 = v9;
          v19 = v12;
          v15 = memcmp(a2, v14 + *(a1 + 5), a3);
          v13 = v20;
          v9 = v21;
          v12 = v19;
          v10 = v24;
          v16 = v15;
          v6 = v22;
          v11 = v23;
          if (!v16)
          {
            break;
          }
        }

        v10 = (v10 + v13++) & v9;
        v14 = *(v11 + 8 * v10);
        if (!v14)
        {
          return result;
        }
      }
    }

    else
    {
      v17 = 1;
      v18 = *(v11 + 8 * v10);
      if (!v18)
      {
        return result;
      }

      while (v18 == -8 || *(v12 + 4 * v10) != v6 || *v18)
      {
        v10 = (v10 + v17++) & v9;
        v18 = *(v11 + 8 * v10);
        if (!v18)
        {
          return result;
        }
      }

      v24 = v10;
      v23 = *a1;
    }

    if (v24 != -1)
    {
      *(v23 + 8 * v24) = -8;
      result = vadd_s32(*(a1 + 12), 0x1FFFFFFFFLL);
      *(a1 + 12) = result;
    }
  }

  return result;
}

uint64_t llvm::StringMapImpl::RehashTable(llvm::StringMapImpl *this, uint64_t a2)
{
  v2 = a2;
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (3 * v4 < 4 * v3)
  {
    v6 = this;
    v4 *= 2;
  }

  else
  {
    if (v4 - (v3 + *(this + 4)) > v4 >> 3)
    {
      return a2;
    }

    v6 = this;
  }

  Table = createTable(v4);
  v8 = *v6;
  v9 = *(v6 + 2);
  if (v9)
  {
    v10 = 0;
    v11 = v4 - 1;
    v12 = v2;
    do
    {
      v13 = v8[v10];
      if (v13 != -8 && v13 != 0)
      {
        v15 = *(&v8[v9 + 1] + v10);
        v16 = v15 & v11;
        if (Table[v16])
        {
          v17 = 1;
          do
          {
            v18 = v16 + v17++;
            v16 = v18 & v11;
          }

          while (Table[v16]);
        }

        Table[v16] = v13;
        *(&Table[v4 + 1] + v16) = v15;
        if (v10 == v12)
        {
          v2 = v16;
        }

        else
        {
          v2 = v2;
        }
      }

      ++v10;
    }

    while (v10 != v9);
  }

  free(v8);
  *v6 = Table;
  *(v6 + 2) = v4;
  *(v6 + 4) = 0;
  return v2;
}

void *llvm::StringSaver::save(void ***a1, const void *a2, size_t a3)
{
  v4 = *a1;
  v5 = a3 + 1;
  v4[10] = v4[10] + v5;
  v6 = *v4;
  v7 = *v4 + v5;
  if (*v4)
  {
    v8 = v7 > v4[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v10 = a2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v4, v5, v5, 0);
    a2 = v10;
    v6 = Slow;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v4 = v7;
  if (a3)
  {
LABEL_6:
    memcpy(v6, a2, a3);
  }

LABEL_7:
  *(v6 + a3) = 0;
  return v6;
}

void *llvm::StringSaver::save(unint64_t **this, const llvm::Twine *a2)
{
  v20[16] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_257371870;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_14;
  }

  v4 = *(a2 + 32);
  if (v4 > 4)
  {
    if (v4 - 5 < 2)
    {
      v7 = *a2;
      v8 = *(a2 + 1);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v4 == 1)
  {
LABEL_26:
    v8 = 0;
    v7 = 0;
    goto LABEL_15;
  }

  if (v4 == 3)
  {
    if (*a2)
    {
      v14 = *a2;
      v15 = strlen(*a2);
      v7 = v14;
      v8 = v15;
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  if (v4 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(a2, &v18);
    v7 = v18;
    v8 = v19;
    goto LABEL_15;
  }

  v5 = *a2;
  v6 = *(*a2 + 23);
  if (v6 >= 0)
  {
    v7 = *a2;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

LABEL_15:
  v9 = *this;
  v9[10] = (*this)[10] + v8 + 1;
  v10 = *v9;
  v11 = v8 + 1 + *v9;
  if (*v9)
  {
    v12 = v11 > v9[1];
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    *v9 = v11;
    if (!v8)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v16 = v7;
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v9, v8 + 1, v8 + 1, 0);
  v7 = v16;
  v10 = Slow;
  if (v8)
  {
LABEL_20:
    memcpy(v10, v7, v8);
  }

LABEL_21:
  *(v10 + v8) = 0;
  if (v18 != v20)
  {
    free(v18);
  }

  return v10;
}

_BYTE *llvm::UniqueStringSaver::save(unint64_t **a1, const void *a2, size_t a3)
{
  v14 = a2;
  v15 = a3;
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 1), &v14, &v16);
  v4 = v16;
  if (v17)
  {
    v5 = v14;
    v6 = v15;
    v7 = *a1;
    v8 = v15 + 1;
    v7[10] = (*a1)[10] + v15 + 1;
    result = *v7;
    v10 = v8 + *v7;
    if (*v7)
    {
      v11 = v10 > v7[1];
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v13 = v5;
      result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v7, v8, v8, 0);
      v5 = v13;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *v7 = v10;
      if (!v6)
      {
LABEL_8:
        result[v6] = 0;
        *v4 = result;
        v4[1] = v6;
        return result;
      }
    }

    v12 = result;
    memcpy(result, v5, v6);
    result = v12;
    goto LABEL_8;
  }

  return *v16;
}

_BYTE *llvm::UniqueStringSaver::save(llvm::UniqueStringSaver *this, const llvm::Twine *a2)
{
  v24[16] = *MEMORY[0x277D85DE8];
  v22 = v24;
  v23 = xmmword_257371870;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(a2 + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v6 = *a2;
      v7 = *(a2 + 1);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = strlen(*a2);
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_15;
  }

  if (v3 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(a2, &v22);
    v6 = v22;
    v7 = v23;
    goto LABEL_15;
  }

  v4 = *a2;
  v5 = *(*a2 + 23);
  if (v5 >= 0)
  {
    v6 = *a2;
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

LABEL_15:
  v18 = v6;
  v19 = v7;
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 8, &v18, &v20);
  v8 = v20;
  if (v21)
  {
    v9 = v18;
    v10 = v19;
    v11 = *this;
    v12 = v19 + 1;
    v11[10] = *(*this + 80) + v19 + 1;
    v13 = *v11;
    if (*v11 && &v13[v12] <= v11[1])
    {
      *v11 = &v13[v12];
      if (!v10)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v16 = v9;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v11, v12, v12, 0);
      v9 = v16;
      v13 = Slow;
      if (!v10)
      {
LABEL_20:
        v13[v10] = 0;
        *v8 = v13;
        v8[1] = v10;
        v14 = v22;
        if (v22 == v24)
        {
          return v13;
        }

        goto LABEL_23;
      }
    }

    memcpy(v13, v9, v10);
    goto LABEL_20;
  }

  v13 = *v20;
  v14 = v22;
  if (v22 != v24)
  {
LABEL_23:
    free(v14);
  }

  return v13;
}

uint64_t llvm::StringRef::compare_insensitive(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a1[1];
  if (a3 >= v3)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = a3;
  }

  if (v4)
  {
    v5 = *a1;
    while (1)
    {
      v7 = *v5++;
      v6 = v7;
      v8 = v7 + 32;
      v9 = v7 - 65 >= 0x1A;
      v11 = *a2++;
      v10 = v11;
      if (!v9)
      {
        v6 = v8;
      }

      if (v10 - 65 < 0x1A)
      {
        v10 += 32;
      }

      if (v6 != v10)
      {
        break;
      }

      if (!--v4)
      {
        goto LABEL_12;
      }
    }

    if (v6 < v10)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  else
  {
LABEL_12:
    v12 = v3 == a3;
    if (v3 < a3)
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

BOOL llvm::StringRef::starts_with_insensitive(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a1[1] < a3)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v4 = *a1;
  v5 = a3 - 1;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = v7 + 32;
    if ((v7 - 65) >= 0x1A)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    v11 = *a2++;
    v10 = v11;
    v12 = v11 + 32;
    if ((v11 - 65) >= 0x1A)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    v15 = v5-- != 0;
    result = v9 == v13;
  }

  while (v9 == v13 && v15);
  return result;
}

BOOL llvm::StringRef::ends_with_insensitive(void *a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < a3)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v5 = *a1 + v3;
  v6 = -a3;
  do
  {
    v7 = *(v5 + v6);
    if ((v7 - 65) < 0x1A)
    {
      v7 += 32;
    }

    v9 = *a2++;
    v8 = v9;
    v10 = v9 + 32;
    if ((v9 - 65) < 0x1A)
    {
      v8 = v10;
    }

    result = v7 == v8;
  }

  while (v7 == v8 && v6++ != -1);
  return result;
}

unint64_t llvm::StringRef::find_insensitive(llvm::StringRef *this, unsigned __int8 a2, unint64_t a3)
{
  v4 = a2;
  if (a2 - 65 < 0x1A)
  {
    v4 = a2 + 32;
  }

  v5 = *(this + 1);
  if (v5 >= a3)
  {
    result = a3;
  }

  else
  {
    result = *(this + 1);
  }

  if (v5 == result)
  {
    return -1;
  }

  v7 = *this;
  while (1)
  {
    v8 = *(v7 + result);
    if ((v8 - 65) < 0x1A)
    {
      v8 += 32;
    }

    if (v8 == v4)
    {
      break;
    }

    if (v5 == ++result)
    {
      return -1;
    }
  }

  return result;
}

uint64_t llvm::toLower(llvm *this)
{
  v1 = this;
  if (this - 65 < 0x1A)
  {
    return (this + 32);
  }

  return v1;
}

uint64_t llvm::StringRef::compare_numeric(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1[1];
  if (a3 >= v5)
  {
    v6 = a1[1];
  }

  else
  {
    v6 = a3;
  }

  if (!v6)
  {
LABEL_38:
    if (v5 < a3)
    {
      v34 = -1;
    }

    else
    {
      v34 = 1;
    }

    if (v5 == a3)
    {
      return 0;
    }

    else
    {
      return v34;
    }
  }

  v8 = 0;
  v9 = v6 + 1;
  v10 = *a1;
  v11 = -v6;
  v12 = *a1 + 1;
  while (1)
  {
    v14 = *(v10 + v8);
    v15 = *(a2 + v8);
    if (v14 - 48 <= 9 && v15 - 48 <= 9)
    {
      break;
    }

    v13 = v8;
    if (v14 != v15)
    {
      if (v14 < v15)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1;
      }
    }

LABEL_7:
    v8 = v13 + 1;
    if (v13 + 1 == v6)
    {
      goto LABEL_38;
    }
  }

  v17 = 0;
  v18 = a2 + 1;
  v19 = v12;
  do
  {
    if (!(v11 + v8 + v17))
    {
      v13 = v6;
      v30 = v9 - v8;
      if (v9 == v8)
      {
        goto LABEL_7;
      }

      goto LABEL_36;
    }

    v27 = v8 + v17 + 1;
    if (v27 >= v5)
    {
      v28 = 0;
      if (v27 >= a3)
      {
LABEL_31:
        v22 = 0;
        v24 = 5;
        v23 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      v28 = *(v19 + v8) - 48 < 0xA;
      if (v27 >= a3)
      {
        goto LABEL_31;
      }
    }

    v20 = (*(v18 + v8) - 48);
    v21 = v20 >= 0xA;
    v22 = v20 < 0xA;
    if (v21)
    {
      v23 = 1;
    }

    else
    {
      v23 = -1;
    }

    if (v21)
    {
      v24 = 5;
    }

    else
    {
      v24 = 0;
    }

LABEL_19:
    v25 = v28 == v22;
    if (v28 == v22)
    {
      v26 = v24;
    }

    else
    {
      v26 = 1;
    }

    if (v25)
    {
      v3 = v3;
    }

    else
    {
      v3 = v23;
    }

    ++v17;
    ++v19;
    ++v18;
  }

  while (!v26);
  if (v26 != 5)
  {
    return v3;
  }

  v29 = v8 + v17;
  v13 = v29 - 1;
  v30 = v29 - v8;
  if (v29 == v8)
  {
    goto LABEL_7;
  }

LABEL_36:
  v36 = v11;
  v31 = v10;
  v32 = v6;
  v33 = memcmp((v10 + v8), (a2 + v8), v30);
  v6 = v32;
  v10 = v31;
  v11 = v36;
  if (!v33)
  {
    goto LABEL_7;
  }

  return (v33 >> 31) | 1u;
}

uint64_t llvm::ComputeMappedEditDistance<char,char (*)(char)>(char *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t), int a6, unsigned int a7)
{
  v67 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v12 = a4 - a2;
    if (a2 > a4)
    {
      v12 = a2 - a4;
    }

    if (v12 > a7)
    {
      return a7 + 1;
    }
  }

  v14 = a4 + 1;
  if (a4 == -1)
  {
    if (!a2)
    {
      return v66[a4];
    }

    v15 = a7 + 1;
LABEL_16:
    v64 = a7;
    if (a6)
    {
      if (a7)
      {
        v62 = v15;
        v18 = 1;
        v63 = a2;
        while (1)
        {
          v66[0] = v18;
          v19 = v18 - 1;
          v20 = a5(a1[v18 - 1]);
          v21 = 0;
          v22 = v18;
          do
          {
            v23 = v21;
            v24 = v66[v21 + 1];
            if (v20 == a5(*(a3 + v21)))
            {
              v25 = v19;
            }

            else
            {
              v25 = v19 + 1;
            }

            v26 = v66[v23 + 1];
            if (v26 >= v66[v21])
            {
              v26 = v66[v21];
            }

            if (v26 + 1 < v25)
            {
              v25 = v26 + 1;
            }

            v66[v23 + 1] = v25;
            if (v25 < v22)
            {
              v22 = v25;
            }

            v27 = v21 + 2;
            ++v21;
            v19 = v24;
          }

          while (v27 <= a4);
          if (v22 > v64)
          {
            break;
          }

          if (++v18 > v63)
          {
            return v66[a4];
          }
        }

        return v62;
      }

      v40 = 1;
      do
      {
        v66[0] = v40;
        v41 = v40 - 1;
        v42 = a5(a1[v40 - 1]);
        v43 = 0;
        do
        {
          v44 = v43;
          v45 = v66[v43 + 1];
          if (v42 == a5(*(a3 + v43)))
          {
            v46 = v41;
          }

          else
          {
            v46 = v41 + 1;
          }

          v47 = v66[v44 + 1];
          if (v47 >= v66[v43])
          {
            v47 = v66[v43];
          }

          if (v47 + 1 < v46)
          {
            v46 = v47 + 1;
          }

          v66[v44 + 1] = v46;
          v48 = v43 + 2;
          ++v43;
          v41 = v45;
        }

        while (v48 <= a4);
        ++v40;
      }

      while (v40 <= a2);
    }

    else
    {
      if (a7)
      {
        v62 = v15;
        v28 = 1;
        while (1)
        {
          v66[0] = v28;
          v29 = v28 - 1;
          v30 = a5(a1[v28 - 1]);
          v31 = 0;
          v32 = v28;
          do
          {
            v34 = v66[v31 + 1];
            v35 = a5(*(a3 + v31));
            v36 = &v66[v31];
            if (v30 != v35)
            {
              v37 = v36[1];
              if (v37 >= *v36)
              {
                v37 = *v36;
              }

              v29 = v37 + 1;
            }

            v36[1] = v29;
            if (v29 < v32)
            {
              v32 = v29;
            }

            v33 = v31 + 2;
            ++v31;
            v29 = v34;
          }

          while (v33 <= a4);
          if (v32 > v64)
          {
            break;
          }

          if (++v28 > a2)
          {
            return v66[a4];
          }
        }

        return v62;
      }

      v49 = 1;
      do
      {
        v66[0] = v49;
        v50 = v49 - 1;
        v51 = a5(a1[v49 - 1]);
        v52 = 0;
        do
        {
          while (1)
          {
            v54 = v66[v52 + 1];
            v55 = a5(*(a3 + v52));
            v56 = &v66[v52];
            if (v51 != v55)
            {
              break;
            }

            v56[1] = v50;
            v53 = v52 + 2;
            ++v52;
            v50 = v54;
            if (v53 > a4)
            {
              goto LABEL_65;
            }
          }

          v57 = v56[1];
          if (v57 >= *v56)
          {
            v57 = *v56;
          }

          v56[1] = v57 + 1;
          v58 = v52 + 2;
          ++v52;
          v50 = v54;
        }

        while (v58 <= a4);
LABEL_65:
        ++v49;
      }

      while (v49 <= a2);
    }

    return v66[a4];
  }

  if (v14 >= 0x41)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v16 = a6;
  bzero(v66, 4 * (a4 + 1));
  a6 = v16;
  if (v14 >= 2)
  {
    v17 = 1;
    do
    {
      v66[v17] = v17;
      ++v17;
    }

    while (v14 > v17);
  }

  if (!a2)
  {
    return v66[a4];
  }

  v15 = a7 + 1;
  if (a4)
  {
    goto LABEL_16;
  }

  if (!a7)
  {
    v59 = 1;
    do
    {
      v66[0] = v59;
      v60 = *a1++;
      a5(v60);
      ++v59;
    }

    while (v59 <= a2);
    return v66[a4];
  }

  v38 = 1;
  while (1)
  {
    v66[0] = v38;
    v39 = *a1++;
    a5(v39);
    if (v38 > a7)
    {
      break;
    }

    if (++v38 > a2)
    {
      return v66[a4];
    }
  }

  return a7 + 1;
}