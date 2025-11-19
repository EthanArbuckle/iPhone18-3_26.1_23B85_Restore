void llvm::SmallVectorImpl<std::string>::append<std::string const*,void>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v4 = a2;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3);
  v7 = *(a1 + 8);
  if (v6 + v7 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  if (a2 != a3)
  {
    v8 = (*a1 + 24 * v7);
    do
    {
      while (*(v4 + 23) < 0)
      {
        v9 = *v4;
        v10 = *(v4 + 1);
        v4 = (v4 + 24);
        std::string::__init_copy_ctor_external(v8++, v9, v10);
        if (v4 == a3)
        {
          goto LABEL_8;
        }
      }

      v11 = *v4;
      v8->__r_.__value_.__r.__words[2] = *(v4 + 2);
      *&v8->__r_.__value_.__l.__data_ = v11;
      ++v8;
      v4 = (v4 + 24);
    }

    while (v4 != a3);
LABEL_8:
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + v6;
}

uint64_t llvm::SmallVectorImpl<std::string>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = a2 + 2;
    v5 = *a2;
    if (*a2 != a2 + 2)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = &v6[3 * v7 - 1] + 7;
        v9 = -24 * v7;
        v10 = v8;
        do
        {
          v11 = *v10;
          v10 -= 24;
          if (v11 < 0)
          {
            operator delete(*(v8 - 23));
          }

          v8 = v10;
          v9 += 24;
        }

        while (v9);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      v12 = a2 + 1;
      *(a1 + 8) = a2[1];
      *a2 = v4;
      *(a2 + 3) = 0;
LABEL_12:
      *v12 = 0;
      return a1;
    }

    v12 = a2 + 1;
    v14 = *(a2 + 2);
    v15 = *(a1 + 8);
    if (v15 >= v14)
    {
      v20 = *a1;
      if (v14)
      {
        v21 = (v5 + 24 * v14);
        do
        {
          if (*(v20 + 23) < 0)
          {
            operator delete(*v20);
          }

          v22 = *v5;
          v20[2] = *(v5 + 2);
          *v20 = v22;
          v20 += 3;
          *(v5 + 23) = 0;
          *v5 = 0;
          v5 = (v5 + 24);
        }

        while (v5 != v21);
        v23 = *a1;
        LODWORD(v15) = *(a1 + 8);
      }

      else
      {
        v23 = *a1;
      }

      v27 = &v23[3 * v15];
      while (v27 != v20)
      {
        v28 = *(v27 - 1);
        v27 -= 3;
        if (v28 < 0)
        {
          operator delete(*v27);
        }
      }

      *(a1 + 8) = v14;
      v29 = *(a2 + 2);
      if (v29)
      {
        v30 = *a2 + 24 * v29 - 1;
        v31 = -24 * v29;
        v32 = v30;
        do
        {
          v33 = *v32;
          v32 -= 24;
          if (v33 < 0)
          {
            operator delete(*(v30 - 23));
          }

          v30 = v32;
          v31 += 24;
        }

        while (v31);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) < v14)
    {
      if (v15)
      {
        v16 = *a1 + 24 * v15 - 1;
        v17 = -24 * v15;
        v18 = v16;
        do
        {
          v19 = *v18;
          v18 -= 24;
          if (v19 < 0)
          {
            operator delete(*(v16 - 23));
          }

          v16 = v18;
          v17 += 24;
        }

        while (v17);
      }

      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::mallocForGrow();
    }

    v24 = *a1;
    if (v15)
    {
      v25 = (v5 + 24 * v15);
      do
      {
        if (*(v24 + 23) < 0)
        {
          operator delete(*v24);
        }

        v26 = *v5;
        v24[2] = *(v5 + 2);
        *v24 = v26;
        v24 += 3;
        *(v5 + 23) = 0;
        *v5 = 0;
        v5 = (v5 + 24);
      }

      while (v5 != v25);
      v24 = *a1;
      v34 = *a2;
      v35 = *(a2 + 2);
      if (v15 == v35)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v15 = 0;
      v34 = *a2;
      LODWORD(v35) = *(a2 + 2);
      if (!v35)
      {
        goto LABEL_49;
      }
    }

    v36 = &v24[3 * v15];
    v37 = (v34 + 24 * v15);
    v38 = 24 * v35 - 24 * v15;
    do
    {
      v39 = *v37;
      v36[2] = *(v37 + 2);
      *v36 = v39;
      v36 += 3;
      *(v37 + 1) = 0;
      *(v37 + 2) = 0;
      *v37 = 0;
      v37 = (v37 + 24);
      v38 -= 24;
    }

    while (v38);
    v34 = *a2;
LABEL_49:
    *(a1 + 8) = v14;
    v40 = *v12;
    if (v40)
    {
      v41 = v34 + 24 * v40 - 1;
      v42 = -24 * v40;
      v43 = v41;
      do
      {
        v44 = *v43;
        v43 -= 24;
        if (v44 < 0)
        {
          operator delete(*(v41 - 23));
        }

        v41 = v43;
        v42 += 24;
      }

      while (v42);
    }

    goto LABEL_12;
  }

  return a1;
}

void llvm::SmallVectorImpl<std::string>::swap(uint64_t *a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = *a1;
  if (*a1 != a1 + 2 && *a2 != a2 + 2)
  {
    *a1 = *a2;
    *a2 = v4;
    v5 = *(a1 + 2);
    *(a1 + 2) = *(a2 + 2);
    *(a2 + 2) = v5;
    v6 = *(a1 + 3);
    *(a1 + 3) = *(a2 + 3);
    *(a2 + 3) = v6;
    return;
  }

  if (*(a1 + 3) < *(a2 + 2))
  {
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  v7 = *(a1 + 2);
  if (*(a2 + 3) < v7)
  {
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  v8 = *(a2 + 2);
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v26 = 0;
    do
    {
      v27 = (*a1 + v26);
      v28 = (*a2 + v26);
      v29 = *(v27 + 2);
      v30 = *v27;
      v31 = *(v28 + 2);
      *v27 = *v28;
      *(v27 + 2) = v31;
      *v28 = v30;
      *(v28 + 2) = v29;
      v26 += 24;
    }

    while (24 * v9 != v26);
    v7 = *(a1 + 2);
    v8 = *(a2 + 2);
    v10 = v7;
    v11 = v8;
    v12 = v7 - v8;
    if (v7 > v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = *(a1 + 2);
    v11 = *(a2 + 2);
    v12 = v7 - v8;
    if (v7 > v8)
    {
LABEL_12:
      v13 = *a1;
      if (v9 != v7)
      {
        v14 = (*a2 + 24 * v11);
        v15 = (v13 + 24 * v9);
        v16 = 24 * v10 - 24 * v9;
        do
        {
          while ((*(v15 + 23) & 0x80000000) == 0)
          {
            v17 = *v15;
            v14->__r_.__value_.__r.__words[2] = *(v15 + 2);
            *&v14->__r_.__value_.__l.__data_ = v17;
            ++v14;
            v15 = (v15 + 24);
            v16 -= 24;
            if (!v16)
            {
              goto LABEL_17;
            }
          }

          v18 = *v15;
          v19 = *(v15 + 1);
          v15 = (v15 + 24);
          std::string::__init_copy_ctor_external(v14++, v18, v19);
          v16 -= 24;
        }

        while (v16);
LABEL_17:
        v8 = *(a2 + 2);
        v13 = *a1;
      }

      *(a2 + 2) = v12 + v8;
      v20 = *(a1 + 2);
      if (v20 != v9)
      {
        v21 = 24 * v20;
        v22 = 24 * v20 + v13 - 1;
        v23 = 24 * v9 - v21;
        v24 = v22;
        do
        {
          v25 = *v24;
          v24 -= 24;
          if (v25 < 0)
          {
            operator delete(*(v22 - 23));
          }

          v22 = v24;
          v23 += 24;
        }

        while (v23);
      }

      *(a1 + 2) = v9;
      return;
    }
  }

  v32 = v8 - v7;
  if (v8 > v7)
  {
    v33 = *a2;
    if (v9 != v8)
    {
      v34 = (*a1 + 24 * v10);
      v35 = (v33 + 24 * v9);
      v36 = 24 * v11 - 24 * v9;
      do
      {
        while ((*(v35 + 23) & 0x80000000) == 0)
        {
          v37 = *v35;
          v34->__r_.__value_.__r.__words[2] = *(v35 + 2);
          *&v34->__r_.__value_.__l.__data_ = v37;
          ++v34;
          v35 = (v35 + 24);
          v36 -= 24;
          if (!v36)
          {
            goto LABEL_35;
          }
        }

        v38 = *v35;
        v39 = *(v35 + 1);
        v35 = (v35 + 24);
        std::string::__init_copy_ctor_external(v34++, v38, v39);
        v36 -= 24;
      }

      while (v36);
LABEL_35:
      v7 = *(a1 + 2);
      v33 = *a2;
    }

    *(a1 + 2) = v32 + v7;
    v40 = *(a2 + 2);
    if (v40 != v9)
    {
      v41 = 24 * v40;
      v42 = 24 * v40 + v33 - 1;
      v43 = 24 * v9 - v41;
      v44 = v42;
      do
      {
        v45 = *v44;
        v44 -= 24;
        if (v45 < 0)
        {
          operator delete(*(v42 - 23));
        }

        v42 = v44;
        v43 += 24;
      }

      while (v43);
    }

    *(a2 + 2) = v9;
  }
}

uint64_t llvm::SmallVectorImpl<llvm::GlobPattern::SubGlobPattern>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a2 != a2 + 16)
    {
      llvm::SmallVectorImpl<llvm::GlobPattern::SubGlobPattern>::assignRemote(a1, a2);
      return a1;
    }

    v5 = *(a2 + 8);
    v6 = *(a1 + 8);
    if (v6 < v5)
    {
      if (*(a1 + 12) < v5)
      {
        if (v6)
        {
          v7 = *a1;
          v8 = *a1 + 40 * v6;
          do
          {
            v10 = (v8 - 24);
            v9 = *(v8 - 24);
            if (v9 != v8)
            {
              free(v9);
            }

            v11 = (v8 - 40);
            v12 = *(v8 - 40);
            v13 = *(v8 - 32);
            if (v13)
            {
              v14 = &v12[80 * v13 - 72];
              v15 = -80 * v13;
              do
              {
                if (v14 + 2 != *v14)
                {
                  free(*v14);
                }

                v14 -= 10;
                v15 += 80;
              }

              while (v15);
              v12 = *v11;
            }

            if (v12 != v10)
            {
              free(v12);
            }

            v8 = v11;
          }

          while (v11 != v7);
        }

        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      v19 = *a1;
      if (v6)
      {
        v20 = 40 * v6;
        do
        {
          llvm::GlobPattern::SubGlobPattern::operator=(v19, v4);
          v4 += 5;
          v19 += 5;
          v20 -= 40;
        }

        while (v20);
        v19 = *a1;
        v21 = *a2;
        v22 = *(a2 + 8);
        if (v6 == v22)
        {
LABEL_64:
          *(a1 + 8) = v5;
          v44 = *(a2 + 8);
          if (v44)
          {
            v45 = &v21[5 * v44];
            do
            {
              v47 = v45 - 3;
              v46 = *(v45 - 3);
              if (v46 != v45)
              {
                free(v46);
              }

              v48 = v45 - 5;
              v49 = *(v45 - 5);
              v50 = *(v45 - 8);
              if (v50)
              {
                v51 = &v49[10 * v50 - 9];
                v52 = -80 * v50;
                do
                {
                  if (v51 + 2 != *v51)
                  {
                    free(*v51);
                  }

                  v51 -= 10;
                  v52 += 80;
                }

                while (v52);
                v49 = *v48;
              }

              if (v49 != v47)
              {
                free(v49);
              }

              v45 = v48;
            }

            while (v48 != v21);
          }

LABEL_77:
          *(a2 + 8) = 0;
          return a1;
        }
      }

      else
      {
        v6 = 0;
        v21 = *a2;
        v22 = *(a2 + 8);
        if (!*(a2 + 8))
        {
          goto LABEL_64;
        }
      }

      v40 = 40 * v6;
      v41 = 40 * v22;
      do
      {
        v42 = &v19[v40 / 8];
        v43 = &v19[v40 / 8 + 2];
        *v42 = v43;
        v42[1] = 0;
        if (LODWORD(v21[v40 / 8 + 1]))
        {
          llvm::SmallVectorImpl<llvm::GlobPattern::SubGlobPattern::Bracket>::operator=(&v19[v40 / 8], &v21[v40 / 8]);
        }

        *v43 = (v42 + 5);
        v42[3] = 0;
        v42[4] = 0;
        if (v21[v40 / 8 + 3])
        {
          llvm::SmallVectorImpl<char>::operator=(&v19[v40 / 8 + 2], &v21[v40 / 8 + 2]);
        }

        v21 += 5;
        v19 += 5;
        v41 -= 40;
      }

      while (v40 != v41);
      v21 = *a2;
      goto LABEL_64;
    }

    v16 = *a1;
    if (v5)
    {
      v17 = 40 * v5;
      do
      {
        llvm::GlobPattern::SubGlobPattern::operator=(v16, v4);
        v4 += 5;
        v16 += 5;
        v17 -= 40;
      }

      while (v17);
      v18 = *a1 + 40 * *(a1 + 8);
      if (v18 == v16)
      {
LABEL_43:
        *(a1 + 8) = v5;
        v30 = *(a2 + 8);
        if (v30)
        {
          v31 = *a2;
          v32 = *a2 + 40 * v30;
          do
          {
            v34 = (v32 - 24);
            v33 = *(v32 - 24);
            if (v33 != v32)
            {
              free(v33);
            }

            v35 = (v32 - 40);
            v36 = *(v32 - 40);
            v37 = *(v32 - 32);
            if (v37)
            {
              v38 = &v36[80 * v37 - 72];
              v39 = -80 * v37;
              do
              {
                if (v38 + 2 != *v38)
                {
                  free(*v38);
                }

                v38 -= 10;
                v39 += 80;
              }

              while (v39);
              v36 = *v35;
            }

            if (v36 != v34)
            {
              free(v36);
            }

            v32 = v35;
          }

          while (v35 != v31);
        }

        goto LABEL_77;
      }
    }

    else
    {
      v18 = &v16[5 * v6];
      if (v18 == v16)
      {
        goto LABEL_43;
      }
    }

    do
    {
      v24 = (v18 - 24);
      v23 = *(v18 - 24);
      if (v23 != v18)
      {
        free(v23);
      }

      v25 = (v18 - 40);
      v26 = *(v18 - 40);
      v27 = *(v18 - 32);
      if (v27)
      {
        v28 = &v26[80 * v27 - 72];
        v29 = -80 * v27;
        do
        {
          if (v28 + 2 != *v28)
          {
            free(*v28);
          }

          v28 -= 10;
          v29 += 80;
        }

        while (v29);
        v26 = *v25;
      }

      if (v26 != v24)
      {
        free(v26);
      }

      v18 = v25;
    }

    while (v25 != v16);
    goto LABEL_43;
  }

  return a1;
}

double llvm::SmallVectorImpl<llvm::GlobPattern::SubGlobPattern>::assignRemote(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = &v4[5 * v5];
    do
    {
      v8 = v6 - 3;
      v7 = *(v6 - 3);
      if (v7 != v6)
      {
        free(v7);
      }

      v9 = v6 - 5;
      v10 = *(v6 - 5);
      v11 = *(v6 - 8);
      if (v11)
      {
        v12 = &v10[10 * v11 - 9];
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

    while (v9 != v4);
    v4 = *a1;
  }

  if (v4 != (a1 + 16))
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

char **llvm::GlobPattern::SubGlobPattern::operator=(char **a1, char **a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = a2 + 1;
  v5 = *a1;
  v7 = a1 + 1;
  v6 = *(a1 + 2);
  if (*(a2 + 2))
  {
    if (v6)
    {
      v8 = &v5[80 * v6 - 72];
      v9 = -80 * v6;
      do
      {
        if (v8 + 2 != *v8)
        {
          free(*v8);
        }

        v8 -= 10;
        v9 += 80;
      }

      while (v9);
      v5 = *a1;
    }

    if (v5 != (a1 + 2))
    {
      free(v5);
    }

    *a1 = *a2;
    a1[1] = a2[1];
    *a2 = (a2 + 2);
    *(a2 + 3) = 0;
    v7 = v4;
LABEL_12:
    *v7 = 0;
    goto LABEL_13;
  }

  if (v6)
  {
    v14 = &v5[80 * v6 - 72];
    v15 = -80 * v6;
    do
    {
      if (v14 + 2 != *v14)
      {
        free(*v14);
      }

      v14 -= 10;
      v15 += 80;
    }

    while (v15);
    goto LABEL_12;
  }

LABEL_13:
  v11 = a2 + 3;
  v10 = a2[3];
  if (v10)
  {
    v12 = a1[2];
    if (v12 != a1 + 5)
    {
      free(v12);
      v10 = *v11;
    }

    a1[2] = a2[2];
    a1[3] = v10;
    a1[4] = a2[4];
    a2[2] = (a2 + 5);
    *v11 = 0;
    a2[4] = 0;
    return a1;
  }

  a1[3] = 0;
  return a1;
}

void llvm::SmallVectorTemplateBase<llvm::GlobPattern::SubGlobPattern,false>::moveElementsForGrow(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 0;
    v6 = *a1;
    v7 = 40 * v2;
    do
    {
      v8 = (a2 + v5);
      v9 = (a2 + v5 + 16);
      *v8 = v9;
      v8[1] = 0;
      if (LODWORD(v6[v5 / 8 + 1]))
      {
        llvm::SmallVectorImpl<llvm::GlobPattern::SubGlobPattern::Bracket>::operator=((a2 + v5), &v6[v5 / 8]);
      }

      *v9 = v8 + 5;
      v8[3] = 0;
      v8[4] = 0;
      if (v6[v5 / 8 + 3])
      {
        llvm::SmallVectorImpl<char>::operator=((a2 + v5 + 16), &v6[v5 / 8 + 2]);
      }

      v5 += 40;
    }

    while (v7 != v5);
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = *a1;
      v12 = &v11[5 * v10];
      do
      {
        v14 = v12 - 3;
        v13 = *(v12 - 3);
        if (v13 != v12)
        {
          free(v13);
        }

        v15 = v12 - 5;
        v16 = *(v12 - 5);
        v17 = *(v12 - 8);
        if (v17)
        {
          v18 = &v16[10 * v17 - 9];
          v19 = -80 * v17;
          do
          {
            if (v18 + 2 != *v18)
            {
              free(*v18);
            }

            v18 -= 10;
            v19 += 80;
          }

          while (v19);
          v16 = *v15;
        }

        if (v16 != v14)
        {
          free(v16);
        }

        v12 = v15;
      }

      while (v15 != v11);
    }
  }
}

char **llvm::SmallVectorImpl<llvm::GlobPattern::SubGlobPattern::Bracket>::operator=(char **a1, char **a2)
{
  if (a1 != a2)
  {
    v4 = (a2 + 2);
    v5 = *a2;
    if (*a2 != (a2 + 2))
    {
      v6 = *a1;
      v7 = *(a1 + 2);
      if (v7)
      {
        v8 = &v6[80 * v7 - 72];
        v9 = -80 * v7;
        do
        {
          if (v8 + 2 != *v8)
          {
            free(*v8);
          }

          v8 -= 10;
          v9 += 80;
        }

        while (v9);
        v6 = *a1;
      }

      if (v6 != (a1 + 2))
      {
        free(v6);
      }

      *a1 = *a2;
      v10 = a2 + 1;
      a1[1] = a2[1];
      *a2 = v4;
      *(a2 + 3) = 0;
LABEL_12:
      *v10 = 0;
      return a1;
    }

    v10 = a2 + 1;
    v12 = *(a2 + 2);
    v13 = *(a1 + 2);
    if (v13 >= v12)
    {
      v16 = *a1;
      if (v12)
      {
        v17 = &v5[10 * v12];
        do
        {
          *v16 = *v5;
          llvm::SmallVectorImpl<unsigned long>::operator=((v16 + 8), v5 + 1);
          *(v16 + 18) = *(v5 + 18);
          v16 += 80;
          v5 += 10;
        }

        while (v5 != v17);
        v18 = v16;
        v16 = *a1;
        LODWORD(v13) = *(a1 + 2);
      }

      else
      {
        v18 = *a1;
      }

      for (i = &v16[80 * v13]; i != v18; i -= 80)
      {
        v32 = *(i - 9);
        if (i - 56 != v32)
        {
          free(v32);
        }
      }

      *(a1 + 2) = v12;
      v33 = *(a2 + 2);
      if (v33)
      {
        v34 = &(*a2)[80 * v33 - 72];
        v35 = -80 * v33;
        do
        {
          if (v34 + 2 != *v34)
          {
            free(*v34);
          }

          v34 -= 10;
          v35 += 80;
        }

        while (v35);
      }

      goto LABEL_12;
    }

    if (*(a1 + 3) < v12)
    {
      if (v13)
      {
        v14 = &(*a1)[80 * v13 - 72];
        v15 = -80 * v13;
        do
        {
          if (v14 + 2 != *v14)
          {
            free(*v14);
          }

          v14 -= 10;
          v15 += 80;
        }

        while (v15);
      }

      *(a1 + 2) = 0;
      llvm::SmallVectorTemplateBase<llvm::GlobPattern::SubGlobPattern::Bracket,false>::grow();
    }

    if (v13)
    {
      v19 = &v5[10 * v13];
      v20 = *a1;
      do
      {
        *v20 = *v5;
        llvm::SmallVectorImpl<unsigned long>::operator=((v20 + 8), v5 + 1);
        *(v20 + 18) = *(v5 + 18);
        v5 += 10;
        v20 += 80;
      }

      while (v5 != v19);
      v21 = *a2;
      v22 = *(a2 + 2);
      if (v13 != v22)
      {
LABEL_31:
        v23 = &v21[80 * v22];
        v24 = *a1;
        v25 = 80 * v13;
        do
        {
          v26 = &v24[v25];
          v27 = &v21[v25];
          *v26 = *&v21[v25];
          *&v24[v25 + 8] = &v24[v25 + 24];
          *(v26 + 2) = 0x600000000;
          if (*&v21[v25 + 16])
          {
            llvm::SmallVectorImpl<unsigned long>::operator=(&v24[v25 + 8], v27 + 1);
          }

          *(v26 + 18) = *(v27 + 18);
          v24 += 80;
          v21 += 80;
        }

        while (v27 + 80 != v23);
        v21 = *a2;
      }
    }

    else
    {
      v13 = 0;
      v21 = *a2;
      LODWORD(v22) = *(a2 + 2);
      if (v22)
      {
        goto LABEL_31;
      }
    }

    *(a1 + 2) = v12;
    v28 = *v10;
    if (v28)
    {
      v29 = &v21[80 * v28 - 72];
      v30 = -80 * v28;
      do
      {
        if (v29 + 2 != *v29)
        {
          free(*v29);
        }

        v29 -= 10;
        v30 += 80;
      }

      while (v30);
    }

    goto LABEL_12;
  }

  return a1;
}

uint64_t *llvm::SmallVectorImpl<llvm::GlobPattern::SubGlobPattern::Bracket>::operator=(uint64_t *a1, uint64_t *a2)
{
  v2 = a1;
  if (a1 == a2)
  {
    return v2;
  }

  v4 = *(a2 + 2);
  v5 = *(a1 + 2);
  if (v5 >= v4)
  {
    if (!v4)
    {
      v18 = *a1;
      v19 = *a1;
LABEL_42:
      for (i = v18 + 80 * v5; i != v19; i -= 80)
      {
        v31 = *(i - 72);
        if ((i - 56) != v31)
        {
          free(v31);
        }
      }

      goto LABEL_50;
    }

    v8 = 0;
    v9 = *a2;
    v45 = *(a2 + 2);
    v10 = *a2 + 80 * v4;
    v11 = *a1;
    while (1)
    {
      v12 = v9 + v8;
      v13 = v11 + v8;
      *(v11 + v8) = *(v9 + v8);
      v14 = (v11 + v8 + 8);
      if (v11 == v9)
      {
        goto LABEL_12;
      }

      v15 = *(v12 + 16);
      v16 = *(v13 + 16);
      if (v16 >= v15)
      {
        if (v15)
        {
          memmove(*v14, *(v12 + 8), 8 * v15);
        }

        goto LABEL_11;
      }

      if (*(v11 + v8 + 20) < v15)
      {
        *(v13 + 16) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v16)
      {
        memmove(*v14, *(v12 + 8), 8 * v16);
        v17 = *(v12 + 16) - v16;
        if (v17)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = 0;
        v17 = *(v12 + 16);
        if (*(v12 + 16))
        {
LABEL_23:
          memcpy(*v14 + 8 * v16, (*(v12 + 8) + 8 * v16), 8 * v17);
        }
      }

LABEL_11:
      *(v13 + 16) = v15;
LABEL_12:
      *(v13 + 72) = *(v12 + 72);
      v8 += 80;
      if (v12 + 80 == v10)
      {
        v18 = *v2;
        LODWORD(v5) = *(v2 + 2);
        v19 = v11 + v8;
        v4 = v45;
        goto LABEL_42;
      }
    }
  }

  if (*(a1 + 3) < v4)
  {
    if (v5)
    {
      v6 = (*a1 + 80 * v5 - 72);
      v7 = -80 * v5;
      do
      {
        if (v6 + 2 != *v6)
        {
          free(*v6);
        }

        v6 -= 10;
        v7 += 80;
      }

      while (v7);
    }

    *(v2 + 2) = 0;
    llvm::SmallVectorTemplateBase<llvm::GlobPattern::SubGlobPattern::Bracket,false>::grow();
  }

  if (v5)
  {
    v46 = *(a2 + 2);
    v20 = 0;
    v21 = *a2;
    v43 = *(a1 + 2);
    v22 = *a2 + 80 * v5;
    v23 = *a1;
    while (1)
    {
      v24 = v21 + v20;
      v25 = v23 + v20;
      *(v23 + v20) = *(v21 + v20);
      v26 = (v23 + v20 + 8);
      if (v23 == v21)
      {
        goto LABEL_28;
      }

      v27 = *(v24 + 16);
      v28 = *(v25 + 16);
      if (v28 >= v27)
      {
        if (v27)
        {
          memmove(*v26, *(v24 + 8), 8 * v27);
        }

        goto LABEL_27;
      }

      if (*(v23 + v20 + 20) < v27)
      {
        *(v25 + 16) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v28)
      {
        memmove(*v26, *(v24 + 8), 8 * v28);
        v29 = *(v24 + 16) - v28;
        if (v29)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v28 = 0;
        v29 = *(v24 + 16);
        if (*(v24 + 16))
        {
LABEL_39:
          memcpy(*v26 + 8 * v28, (*(v24 + 8) + 8 * v28), 8 * v29);
        }
      }

LABEL_27:
      *(v25 + 16) = v27;
LABEL_28:
      *(v25 + 72) = *(v24 + 72);
      v20 += 80;
      if (v24 + 80 == v22)
      {
        v2 = a1;
        v4 = v46;
        v32 = v43;
        v33 = *(a2 + 2);
        if (v43 != v33)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }
    }
  }

  v32 = 0;
  v33 = *(a2 + 2);
  if (*(a2 + 2))
  {
LABEL_52:
    v35 = *a2;
    v36 = *v2;
    v37 = 80 * v32;
    v38 = 80 * v33;
    do
    {
      v39 = v36 + v37;
      v40 = v35 + v37;
      *v39 = *(v35 + v37);
      v41 = (v36 + v37 + 24);
      *(v36 + v37 + 8) = v41;
      *(v39 + 16) = 0x600000000;
      if (v35 != v36)
      {
        v42 = *(v40 + 16);
        if (*(v40 + 16))
        {
          if (v42 >= 7)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          memcpy(v41, *(v40 + 8), 8 * *(v40 + 16));
          *(v39 + 16) = v42;
        }
      }

      *(v39 + 72) = *(v40 + 72);
      v36 += 80;
      v38 -= 80;
      v35 += 80;
    }

    while (v37 != v38);
  }

LABEL_50:
  *(v2 + 2) = v4;
  return v2;
}

void llvm::DOT::EscapeString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  v3 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v4 = (a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  size = a2->__r_.__value_.__l.__size_;
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v6 = a2->__r_.__value_.__l.__size_;
  }

  if (v6)
  {
    v7 = 0;
    for (i = 0; ; ++i)
    {
      v11 = a2->__r_.__value_.__r.__words[0];
      if (!v4)
      {
        v11 = a2;
      }

      v12 = v11->__r_.__value_.__s.__data_[v7];
      if (v12 > 0x3D)
      {
        break;
      }

      if (v11->__r_.__value_.__s.__data_[v7] <= 0x21u)
      {
        if (v12 == 9)
        {
          v17.__i_ = v11 + v7;
          std::string::insert(a2, v17, 32);
          ++i;
          if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = a2;
          }

          else
          {
            v18 = a2->__r_.__value_.__r.__words[0];
          }

          v18->__r_.__value_.__s.__data_[i] = 32;
        }

        else if (v12 == 10)
        {
          v15.__i_ = v11 + v7;
          std::string::insert(a2, v15, 92);
          ++i;
          if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = a2;
          }

          else
          {
            v16 = a2->__r_.__value_.__r.__words[0];
          }

          v16->__r_.__value_.__s.__data_[i] = 110;
        }

        goto LABEL_10;
      }

      if (v12 == 34 || v12 == 60)
      {
        goto LABEL_9;
      }

LABEL_10:
      v7 = i + 1;
      v3 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      v4 = (a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
      size = a2->__r_.__value_.__l.__size_;
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v10 = a2->__r_.__value_.__l.__size_;
      }

      if (v10 == v7)
      {
        return;
      }
    }

    if (v12 - 123 >= 3 && v12 != 62)
    {
      if (v12 != 92)
      {
        goto LABEL_10;
      }

      v13 = i + 1;
      if (v4)
      {
        v3 = size;
      }

      if (v3 != v13)
      {
        v14 = v11->__r_.__value_.__s.__data_[v13];
        if ((v14 - 123) < 3)
        {
          std::string::erase(a2, v7, 1uLL);
          goto LABEL_10;
        }

        if (v14 == 108)
        {
          goto LABEL_10;
        }
      }
    }

LABEL_9:
    v9.__i_ = v11 + v7;
    std::string::insert(a2, v9, 92);
    ++i;
    goto LABEL_10;
  }
}

const char *llvm::DOT::getColorString(llvm::DOT *this)
{
  v1 = llvm::DOT::getColorString::Colors[this % 0x14];
  strlen(v1);
  return v1;
}

void llvm::createGraphFilename(llvm::formatv_object_base **this@<X0>, const llvm::Twine *a2@<X1>, _BYTE *a3@<X8>)
{
  v43[16] = *MEMORY[0x277D85DE8];
  *a2 = -1;
  __src = v43;
  *__len = xmmword_257371870;
  llvm::Twine::str(this, &v40);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0 && (v40.__r_.__value_.__l.__size_ <= 0x8C || (std::string::resize(&v40, 0x8CuLL, 0), SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)))
  {
    std::string::__init_copy_ctor_external(&v38, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    v38 = v40;
  }

  size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  v7 = &v38;
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v38.__r_.__value_.__l.__size_;
    v7 = v38.__r_.__value_.__r.__words[0];
  }

  if (!size)
  {
    goto LABEL_69;
  }

  v8 = v7;
  if (size < 8)
  {
LABEL_107:
    v34 = (v7 + size);
    do
    {
      if (v8->__r_.__value_.__s.__data_[0] == 47)
      {
        v8->__r_.__value_.__s.__data_[0] = 95;
      }

      v8 = (v8 + 1);
    }

    while (v8 != v34);
    goto LABEL_69;
  }

  if (size < 0x10)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v9 = size & 0xFFFFFFFFFFFFFFF0;
  v13 = &v7->__r_.__value_.__s.__data_[7];
  v14.i64[0] = 0x2F2F2F2F2F2F2F2FLL;
  v14.i64[1] = 0x2F2F2F2F2F2F2F2FLL;
  v15 = size & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v16 = vceqq_s8(*(v13 - 7), v14);
    if (v16.i8[0])
    {
      *(v13 - 7) = 95;
      if ((v16.i8[1] & 1) == 0)
      {
LABEL_37:
        if ((v16.i8[2] & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_54;
      }
    }

    else if ((v16.i8[1] & 1) == 0)
    {
      goto LABEL_37;
    }

    *(v13 - 6) = 95;
    if ((v16.i8[2] & 1) == 0)
    {
LABEL_38:
      if ((v16.i8[3] & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_55;
    }

LABEL_54:
    *(v13 - 5) = 95;
    if ((v16.i8[3] & 1) == 0)
    {
LABEL_39:
      if ((v16.i8[4] & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_56;
    }

LABEL_55:
    *(v13 - 4) = 95;
    if ((v16.i8[4] & 1) == 0)
    {
LABEL_40:
      if ((v16.i8[5] & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_57;
    }

LABEL_56:
    *(v13 - 3) = 95;
    if ((v16.i8[5] & 1) == 0)
    {
LABEL_41:
      if ((v16.i8[6] & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_58;
    }

LABEL_57:
    *(v13 - 2) = 95;
    if ((v16.i8[6] & 1) == 0)
    {
LABEL_42:
      if ((v16.i8[7] & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

LABEL_58:
    *(v13 - 1) = 95;
    if ((v16.i8[7] & 1) == 0)
    {
LABEL_43:
      if ((v16.i8[8] & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_60;
    }

LABEL_59:
    *v13 = 95;
    if ((v16.i8[8] & 1) == 0)
    {
LABEL_44:
      if ((v16.i8[9] & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }

LABEL_60:
    v13[1] = 95;
    if ((v16.i8[9] & 1) == 0)
    {
LABEL_45:
      if ((v16.i8[10] & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_62;
    }

LABEL_61:
    v13[2] = 95;
    if ((v16.i8[10] & 1) == 0)
    {
LABEL_46:
      if ((v16.i8[11] & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_63;
    }

LABEL_62:
    v13[3] = 95;
    if ((v16.i8[11] & 1) == 0)
    {
LABEL_47:
      if ((v16.i8[12] & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_64;
    }

LABEL_63:
    v13[4] = 95;
    if ((v16.i8[12] & 1) == 0)
    {
LABEL_48:
      if ((v16.i8[13] & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_65;
    }

LABEL_64:
    v13[5] = 95;
    if ((v16.i8[13] & 1) == 0)
    {
LABEL_49:
      if (v16.i8[14])
      {
        goto LABEL_66;
      }

      goto LABEL_50;
    }

LABEL_65:
    v13[6] = 95;
    if (v16.i8[14])
    {
LABEL_66:
      v13[7] = 95;
      if ((v16.i8[15] & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_67;
    }

LABEL_50:
    if ((v16.i8[15] & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_67:
    v13[8] = 95;
LABEL_34:
    v13 += 16;
    v15 -= 16;
  }

  while (v15);
  if (size == v9)
  {
    goto LABEL_69;
  }

  if ((size & 8) == 0)
  {
    v8 = (v7 + v9);
    goto LABEL_107;
  }

LABEL_12:
  v8 = (v7 + (size & 0xFFFFFFFFFFFFFFF8));
  v10 = v9 - (size & 0xFFFFFFFFFFFFFFF8);
  v11 = &v7->__r_.__value_.__s.__data_[v9 + 3];
  while (2)
  {
    v12 = vceq_s8(*(v11 - 3), 0x2F2F2F2F2F2F2F2FLL);
    if (v12.i8[0])
    {
      *(v11 - 3) = 95;
      if (v12.i8[1])
      {
        goto LABEL_24;
      }

LABEL_16:
      if ((v12.i8[2] & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_25:
      *(v11 - 1) = 95;
      if (v12.i8[3])
      {
        goto LABEL_26;
      }

LABEL_18:
      if ((v12.i8[4] & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_27:
      v11[1] = 95;
      if (v12.i8[5])
      {
        goto LABEL_28;
      }

LABEL_20:
      if ((v12.i8[6] & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_29:
      v11[3] = 95;
      if (v12.i8[7])
      {
LABEL_30:
        v11[4] = 95;
      }
    }

    else
    {
      if ((v12.i8[1] & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_24:
      *(v11 - 2) = 95;
      if (v12.i8[2])
      {
        goto LABEL_25;
      }

LABEL_17:
      if ((v12.i8[3] & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_26:
      *v11 = 95;
      if (v12.i8[4])
      {
        goto LABEL_27;
      }

LABEL_19:
      if ((v12.i8[5] & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_28:
      v11[2] = 95;
      if (v12.i8[6])
      {
        goto LABEL_29;
      }

LABEL_21:
      if (v12.i8[7])
      {
        goto LABEL_30;
      }
    }

    v11 += 8;
    v10 += 8;
    if (v10)
    {
      continue;
    }

    break;
  }

  if (size != (size & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_107;
  }

LABEL_69:
  __p = v38;
  memset(&v38, 0, sizeof(v38));
  v36 = 260;
  v35.__r_.__value_.__r.__words[0] = &__p;
  llvm::sys::fs::createTemporaryFile(&v35, "dot", 3, a2, &__src, 0);
  v18 = v17;
  *&v37.__val_ = v17;
  v37.__cat_ = v19;
  v20 = llvm::errs(v17);
  v21 = v20[4];
  v22 = v20[3] - v21;
  if (v18)
  {
    if (v22 > 6)
    {
      *(v21 + 3) = 540701295;
      *v21 = 1869771333;
      v23 = v20;
      v20[4] += 7;
    }

    else
    {
      v23 = llvm::raw_ostream::write(v20, "Error: ", 7uLL);
    }

    std::error_code::message(&v35, &v37);
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v35;
    }

    else
    {
      v27 = v35.__r_.__value_.__r.__words[0];
    }

    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v28 = v35.__r_.__value_.__l.__size_;
    }

    v29 = llvm::raw_ostream::write(v23, v27, v28);
    v30 = v29[4];
    if (v29[3] == v30)
    {
      llvm::raw_ostream::write(v29, "\n", 1uLL);
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_84:
        operator delete(v35.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *v30 = 10;
      ++v29[4];
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_84;
      }
    }

    a3[23] = 0;
    *a3 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_86:
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_87;
  }

  if (v22 > 8)
  {
    *(v21 + 8) = 39;
    *v21 = *"Writing '";
    v20[4] += 9;
    v25 = llvm::raw_ostream::write(v20, __src, __len[0]);
    v26 = v25[4];
    if ((v25[3] - v26) <= 4)
    {
      goto LABEL_96;
    }

LABEL_74:
    *(v26 + 4) = 32;
    *v26 = 774778407;
    v25[4] += 5;
  }

  else
  {
    v24 = llvm::raw_ostream::write(v20, "Writing '", 9uLL);
    v25 = llvm::raw_ostream::write(v24, __src, __len[0]);
    v26 = v25[4];
    if ((v25[3] - v26) > 4)
    {
      goto LABEL_74;
    }

LABEL_96:
    llvm::raw_ostream::write(v25, "'... ", 5uLL);
  }

  v32 = __len[0];
  if (__len[0] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v33 = __src;
  if (__len[0] >= 0x17)
  {
    operator new();
  }

  a3[23] = __len[0];
  if (v32)
  {
    memmove(a3, v33, v32);
    a3[v32] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_86;
    }
  }

  else
  {
    *a3 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_86;
    }
  }

LABEL_87:
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
    v31 = __src;
    if (__src != v43)
    {
LABEL_89:
      free(v31);
    }
  }

  else
  {
    v31 = __src;
    if (__src != v43)
    {
      goto LABEL_89;
    }
  }
}

uint64_t llvm::DisplayGraph(void *__src, size_t __len, uint64_t a3, int a4)
{
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_68;
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v35 = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  memset(&v30, 0, sizeof(v30));
  __p = 0;
  v28 = 0;
  v29 = 0;
  {
    operator new();
  }

  {
    operator new();
  }

  {
    operator new();
  }

  {
    v6 = 1;
  }

  {
    v6 = 3;
  }

  else
  {
    {
      memset(&v26, 0, sizeof(v26));
      goto LABEL_51;
    }

    v6 = 2;
  }

  memset(&v26, 0, sizeof(v26));
  v8 = off_27983C670[a4];
  v9 = strlen(v8);
  {
    if ((v35 & 0x80u) == 0)
    {
      v10 = v35;
    }

    else
    {
      v10 = __dst[1];
    }

    if (v6 == 1)
    {
      v11 = ".pdf";
    }

    else
    {
      v11 = ".ps";
    }

    if (v6 == 1)
    {
      v12 = 4;
    }

    else
    {
      v12 = 3;
    }

    if (v10 + v12 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v10 + v12 > 0x16)
      {
        operator new();
      }

      v24[1] = 0;
      v25 = 0;
      v24[0] = 0;
      HIBYTE(v25) = v10 + v12;
      if (v10)
      {
        if ((v35 & 0x80u) == 0)
        {
          v13 = __dst;
        }

        else
        {
          v13 = __dst[0];
        }

        memmove(v24, v13, v10);
      }

      v14 = v24 + v10;
      memcpy(v14, v11, v12);
      v15 = 3;
      if (v6 == 1)
      {
        v15 = 4;
      }

      v14[v15] = 0;
      operator new();
    }

LABEL_68:
    std::string::__throw_length_error[abi:nn200100]();
  }

LABEL_51:
  if (Program)
  {
    operator new();
  }

  v17 = llvm::errs(Program);
  v18 = *(v17 + 4);
  if (*(v17 + 3) - v18 > 0x33uLL)
  {
    qmemcpy(v18, "Error: Couldn't find a usable graph viewer program:\n", 52);
    *(v17 + 4) += 52;
  }

  else
  {
    v17 = llvm::raw_ostream::write(v17, "Error: Couldn't find a usable graph viewer program:\n", 0x34uLL);
  }

  v19 = llvm::errs(v17);
  if (v29 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v29 >= 0)
  {
    v21 = HIBYTE(v29);
  }

  else
  {
    v21 = v28;
  }

  v22 = llvm::raw_ostream::write(v19, p_p, v21);
  v23 = v22[4];
  if (v22[3] == v23)
  {
    llvm::raw_ostream::write(v22, "\n", 1uLL);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    *v23 = 10;
    ++v22[4];
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_55:
      operator delete(v26.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_17:
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_22:
      operator delete(v31);
      if ((v35 & 0x80000000) == 0)
      {
        return 1;
      }

LABEL_23:
      operator delete(__dst[0]);
      return 1;
    }
  }

  else if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v30.__r_.__value_.__l.__data_);
  if (SHIBYTE(v33) < 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  if (v35 < 0)
  {
    goto LABEL_23;
  }

  return 1;
}

uint64_t anonymous namespace::GraphSession::TryFindProgram(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  v30[16] = *MEMORY[0x277D85DE8];
  v25[0] = a2;
  v25[1] = a3;
  v18 = 0;
  v22 = 0;
  v23 = 1;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v17 = &unk_2868A3EF8;
  v24 = a1;
  llvm::raw_ostream::SetBufferAndMode(&v17, 0, 0, 0);
  v28 = v30;
  v29 = 0x800000000;
  llvm::StringRef::split(v25, &v28, 124, -1, 1);
  if (!v29)
  {
LABEL_14:
    v13 = 0;
    v14 = v28;
    if (v28 == v30)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v16 = a4;
  v5 = v28;
  v6 = (v28 + 16 * v29);
  while (1)
  {
    v8 = *v5;
    v7 = v5[1];
    llvm::sys::findProgramByName(*v5, v7, 0, 0, &__str);
    if ((v27 & 1) == 0)
    {
      break;
    }

    v9 = v21;
    if ((v20 - v21) > 8)
    {
      *(v21 + 8) = 39;
      *v9 = *"  Tried '";
      v11 = (v21 + 9);
      v21 = v11;
      v10 = &v17;
      if (v7 > v20 - v11)
      {
        goto LABEL_12;
      }

LABEL_7:
      if (v7)
      {
        v12 = v10;
        memcpy(v11, v8, v7);
        v10 = v12;
        v11 = v12[4] + v7;
        v12[4] = v11;
      }

      if ((v10[3] - v11) <= 1)
      {
        goto LABEL_13;
      }

LABEL_3:
      *v11 = 2599;
      v10[4] = v10[4] + 2;
      v5 += 2;
      if (v5 == v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v10 = llvm::raw_ostream::write(&v17, "  Tried '", 9uLL);
      v11 = v10[4];
      if (v7 <= v10[3] - v11)
      {
        goto LABEL_7;
      }

LABEL_12:
      v10 = llvm::raw_ostream::write(v10, v8, v7);
      v11 = v10[4];
      if ((v10[3] - v11) > 1)
      {
        goto LABEL_3;
      }

LABEL_13:
      llvm::raw_ostream::write(v10, "'\n", 2uLL);
      v5 += 2;
      if (v5 == v6)
      {
        goto LABEL_14;
      }
    }
  }

  std::string::operator=(v16, &__str);
  if ((v27 & 1) == 0 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v13 = 1;
  v14 = v28;
  if (v28 != v30)
  {
LABEL_15:
    free(v14);
  }

LABEL_16:
  llvm::raw_ostream::~raw_ostream(&v17);
  return v13;
}

uint64_t ExecGraphViewer(void *a1, size_t a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6, int a7, uint64_t a8)
{
  v11 = (a4 - a3) >> 4;
  if (!a7)
  {
    LOBYTE(v32) = 0;
    v33 = 0;
    v15 = llvm::sys::ExecuteNoWait(a1, a2, a3, v11, &v32, 0, 0, 0, a8, 0);
    v16 = llvm::errs(v15);
    v17 = v16[4];
    if (v16[3] - v17 > 0x1DuLL)
    {
      qmemcpy(v17, "Remember to erase graph file: ", 30);
      v21 = v16[3];
      v18 = (v16[4] + 30);
      v16[4] = v18;
      if (a6 <= v21 - v18)
      {
LABEL_7:
        if (a6)
        {
          v19 = v16;
          memcpy(v18, a5, a6);
          v16 = v19;
          v18 = (v19[4] + a6);
          v19[4] = v18;
        }

        if (v16[3] != v18)
        {
          goto LABEL_10;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v16 = llvm::raw_ostream::write(v16, "Remember to erase graph file: ", 0x1EuLL);
      v18 = v16[4];
      if (a6 <= v16[3] - v18)
      {
        goto LABEL_7;
      }
    }

    v16 = llvm::raw_ostream::write(v16, a5, a6);
    v18 = v16[4];
    if (v16[3] != v18)
    {
LABEL_10:
      *v18 = 10;
      v20 = v16[4] + 1;
      goto LABEL_29;
    }

LABEL_13:
    v22 = "\n";
    v23 = 1;
LABEL_16:
    llvm::raw_ostream::write(v16, v22, v23);
    return 0;
  }

  LOBYTE(v32) = 0;
  v33 = 0;
  v12 = llvm::sys::ExecuteAndWait(a1, a2, a3, v11, &v32, 0, 0, 0, 0, a8, 0, 0);
  if (!v12)
  {
    v34 = 261;
    *&v32 = a5;
    *(&v32 + 1) = a6;
    v24 = llvm::sys::fs::remove(&v32, 1);
    v16 = llvm::errs(v24);
    v25 = v16[4];
    if (v16[3] - v25 <= 7uLL)
    {
      v22 = " done. \n";
      v23 = 8;
      goto LABEL_16;
    }

    *v25 = 0xA202E656E6F6420;
    v20 = v16[4] + 8;
LABEL_29:
    v16[4] = v20;
    return 0;
  }

  v13 = llvm::errs(v12);
  v14 = v13[4];
  if (v13[3] - v14 > 6uLL)
  {
    *(v14 + 3) = 540701295;
    *v14 = 1869771333;
    v13[4] += 7;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "Error: ", 7uLL);
  }

  v27 = *(a8 + 23);
  if (v27 >= 0)
  {
    v28 = a8;
  }

  else
  {
    v28 = *a8;
  }

  if (v27 >= 0)
  {
    v29 = *(a8 + 23);
  }

  else
  {
    v29 = *(a8 + 8);
  }

  v30 = llvm::raw_ostream::write(v13, v28, v29);
  v31 = v30[4];
  if (v30[3] == v31)
  {
    llvm::raw_ostream::write(v30, "\n", 1uLL);
  }

  else
  {
    *v31 = 10;
    ++v30[4];
  }

  return 1;
}

uint64_t llvm::HexagonAttributeParser::handler@<X0>(uint64_t this@<X0>, BOOL *a2@<X2>, uint64_t a3@<X1>, void *a4@<X8>)
{
  *a2 = 0;
  if ((a3 - 4) > 6)
  {
    goto LABEL_7;
  }

  v5 = *(&off_27983C698 + a3 - 4);
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  v8 = (this + (v6 >> 1));
  if ((v6 & 1) == 0)
  {
    this = v7(v8);
    if (*a4)
    {
      return this;
    }

    goto LABEL_6;
  }

  this = (*(*v8 + v7))();
  if (!*a4)
  {
LABEL_6:
    *a2 = 1;
LABEL_7:
    *a4 = 0;
  }

  return this;
}

void llvm::HexagonAttributeParser::~HexagonAttributeParser(llvm::HexagonAttributeParser *this)
{
  llvm::ELFAttributeParser::~ELFAttributeParser(this);

  JUMPOUT(0x259C63180);
}

llvm::InitLLVM *llvm::InitLLVM::InitLLVM(llvm::InitLLVM *this, void (*a2)(void), const char ***a3, int a4)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = this + 32;
  *(this + 3) = 0x400000000;
  *(this + 10) = 0;
  *(this + 8) = this + 80;
  *(this + 9) = 0;
  *(this + 112) = 0;
  v7 = (this + 112);
  *(this + 11) = 1;
  *(this + 12) = this + 112;
  *(this + 152) = 0;
  *(this + 13) = 0;
  if (a4)
  {
    v8 = **a3;
    if (v8)
    {
      v9 = strlen(**a3);
    }

    else
    {
      v9 = 0;
    }

    v10 = 0;
    v11 = v9 + v8 + 1;
    do
    {
      if (v9 == v10)
      {
        v11 = v8;
        v12 = v9;
        if (v9 < 5)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }

      v12 = v10;
      v13 = *(v11 - 2);
      --v11;
      ++v10;
    }

    while (v13 != 47);
    if (v12 < 5)
    {
LABEL_9:
      if (v12 == 2 && *v11 == 28014)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

LABEL_13:
    v14 = *v11;
    v15 = *(v11 + 4);
    if (v14 == 1836477548 && v15 == 45)
    {
      goto LABEL_19;
    }

LABEL_17:
    llvm::sys::SetOneShotPipeSignalFunction(llvm::sys::DefaultOneShotPipeSignalHandler, a2);
    if (*(this + 152))
    {
      llvm::PrettyStackTraceEntry::~PrettyStackTraceEntry(v7);
      *(this + 152) = 0;
    }
  }

LABEL_19:
  v17 = *a2;
  v18 = *a3;
  v19 = llvm::PrettyStackTraceEntry::PrettyStackTraceEntry(v7, 0);
  *(this + 14) = &unk_2868A1538;
  *(this + 34) = v17;
  *(this + 18) = v18;
  llvm::EnablePrettyStackTrace(v19);
  *(this + 152) = 1;
  v20 = **a3;
  if (v20)
  {
    v21 = strlen(v20);
  }

  else
  {
    v21 = 0;
  }

  v22 = llvm::sys::PrintStackTraceOnErrorSignal(v20, v21, 0);
  llvm::install_out_of_memory_new_handler(v22);
  return this;
}

void llvm::InitLLVM::~InitLLVM(llvm::InitLLVM *this)
{
  llvm::llvm_shutdown(this);
  if (*(this + 152) == 1)
  {
    llvm::PrettyStackTraceEntry::~PrettyStackTraceEntry((this + 112));
  }

  v2 = *(this + 12);
  if (v2 != this + 112)
  {
    free(v2);
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this);
}

{
  llvm::llvm_shutdown(this);
  if (*(this + 152) == 1)
  {
    llvm::PrettyStackTraceEntry::~PrettyStackTraceEntry((this + 112));
  }

  v2 = *(this + 12);
  if (v2 != this + 112)
  {
    free(v2);
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this);
}

llvm::raw_ostream *llvm::InstructionCost::print(llvm::raw_ostream *this, llvm::raw_ostream *a2)
{
  if (!*(this + 2))
  {
    return llvm::raw_ostream::operator<<(a2, *this);
  }

  v2 = *(a2 + 4);
  if (*(a2 + 3) - v2 <= 6uLL)
  {
    return llvm::raw_ostream::write(a2, "Invalid", 7uLL);
  }

  *(v2 + 3) = 1684630625;
  *v2 = 1635151433;
  *(a2 + 4) += 7;
  return this;
}

uint64_t llvm::IntEqClasses::grow(uint64_t this, unsigned int a2)
{
  if (*(this + 12) < a2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  for (i = *(this + 8); i < a2; *(this + 8) = i)
  {
    if (i >= *(this + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*this + 4 * i) = i;
    i = *(this + 8) + 1;
  }

  return this;
}

unint64_t llvm::IntEqClasses::join(llvm::IntEqClasses *this, unsigned int a2, unsigned int a3)
{
  v3 = *this;
  result = *(*this + 4 * a2);
  v5 = *(v3 + 4 * a3);
  if (result != v5)
  {
    v6 = a2;
    v7 = a3;
    do
    {
      while (result >= v5)
      {
        *(v3 + 4 * v6) = v5;
        v6 = result;
        result = *(v3 + 4 * result);
        if (result == v5)
        {
          return result;
        }
      }

      *(v3 + 4 * v7) = result;
      v7 = v5;
      v5 = *(v3 + 4 * v5);
    }

    while (result != v5);
  }

  return result;
}

uint64_t llvm::IntEqClasses::findLeader(llvm::IntEqClasses *this, unsigned int a2)
{
  v2 = a2;
  v3 = *this;
  do
  {
    result = v2;
    v2 = *(v3 + 4 * v2);
  }

  while (result != v2);
  return result;
}

uint64_t *llvm::IntEqClasses::compress(uint64_t *this)
{
  if (!*(this + 12))
  {
    v1 = *(this + 2);
    if (v1)
    {
      v2 = 0;
      v3 = *this;
      do
      {
        while (1)
        {
          v4 = *(v3 + 4 * v2);
          if (v2 == v4)
          {
            break;
          }

          *(v3 + 4 * v2++) = *(v3 + 4 * v4);
          if (v1 == v2)
          {
            return this;
          }
        }

        v5 = *(this + 12);
        *(this + 12) = v5 + 1;
        *(v3 + 4 * v2++) = v5;
      }

      while (v1 != v2);
    }
  }

  return this;
}

void llvm::IntEqClasses::uncompress(llvm::IntEqClasses *this)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(this + 12))
  {
    v5 = 0;
    v1 = *(this + 2);
    if (v1)
    {
      for (i = 0; i != v1; ++i)
      {
        while (1)
        {
          v3 = *this;
          v4 = *(*this + 4 * i);
          if (v5 <= v4)
          {
            break;
          }

          *(v3 + 4 * i++) = v6[v4];
          if (v1 == i)
          {
            goto LABEL_10;
          }
        }

        *(v3 + 4 * i) = i;
        if (v5 >= 8uLL)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v6[v5++] = i;
      }

LABEL_10:
      *(this + 12) = 0;
    }

    else
    {
      *(this + 12) = 0;
    }
  }
}

unsigned int *llvm::IntervalMapImpl::Path::replaceRoot(unsigned int *result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *result;
  *v4 = a2;
  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v5 = *result;
  v6 = *(**result + 8 * *(*result + 12)) & 0xFFFFFFFFFFFFFFC0;
  v7 = (a4 & 0xFFFFFFFF00000000 | *(**result + 8 * *(*result + 12)) & 0x3FLL) + 1;
  v8 = result[2];
  v9 = result[3];
  if (v8 == 1)
  {
    if (v9 <= 1)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5[2] = v6;
    v5[3] = v7;
    ++result[2];
  }

  else
  {
    if (v8 >= v9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *&v5[2 * v8] = *&v5[2 * v8 - 2];
    v10 = result[2];
    v11 = *result + 16 * v10 - 16;
    if (v11 != v5 + 2)
    {
      v12 = result;
      memmove(v5 + 4, v5 + 2, v11 - (v5 + 2));
      result = v12;
      LODWORD(v10) = v12[2];
    }

    result[2] = v10 + 1;
    v5[2] = v6;
    v5[3] = v7;
  }

  return result;
}

uint64_t llvm::IntervalMapImpl::Path::getLeftSibling(llvm::IntervalMapImpl::Path *this, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *this;
  v3 = -1;
  while (1)
  {
    v4 = (a2 + v3);
    if (!(a2 + v3))
    {
      break;
    }

    --v3;
    if (*(v2 + 16 * v4 + 12))
    {
      v5 = a2 + v3 + 2;
      v2 += 16 * v4;
      v6 = *(v2 + 12);
      if (!v6)
      {
        return 0;
      }

      goto LABEL_8;
    }
  }

  v5 = 1;
  v6 = *(v2 + 12);
  if (!v6)
  {
    return 0;
  }

LABEL_8:
  result = *(*v2 + 8 * (v6 - 1));
  if (v5 != a2)
  {
    v8 = a2 - v5;
    do
    {
      result = *((result & 0xFFFFFFFFFFFFFFC0) + 8 * (result & 0x3F));
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *llvm::IntervalMapImpl::Path::moveLeft(unsigned int *this, unsigned int a2)
{
  v2 = this[2];
  if (v2 && *(*this + 12) < *(*this + 8))
  {
    v3 = a2;
    do
    {
      --v3;
    }

    while (!*(*this + 16 * v3 + 12));
  }

  else if (v2 - 1 >= a2 || (v4 = a2 + 1, v2 == v4))
  {
    v3 = 0;
  }

  else
  {
    if (v2 <= v4)
    {
      v5 = a2;
      v6 = v4 - v2;
      v7 = this;
      if (this[3] < v4)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero((*this + 16 * this[2]), 16 * (v4 - v2));
      this = v7;
      LODWORD(v4) = v7[2] + v6;
      a2 = v5;
    }

    v3 = 0;
    this[2] = v4;
  }

  v8 = *this;
  v9 = *this + 16 * v3;
  v10 = *(v9 + 12) - 1;
  *(v9 + 12) = v10;
  v11 = *(*v9 + 8 * v10);
  v12 = v3 + 1;
  if (v3 + 1 != a2)
  {
    do
    {
      v13 = *this + 16 * v12;
      *v13 = v11 & 0xFFFFFFFFFFFFFFC0;
      *(v13 + 8) = (v11 & 0x3F) + 1;
      *(v13 + 12) = v11 & 0x3F;
      v11 = *((v11 & 0xFFFFFFFFFFFFFFC0) + 8 * (v11 & 0x3F));
      ++v12;
    }

    while (a2 != v12);
    v8 = *this;
  }

  v14 = v8 + 16 * a2;
  *v14 = v11 & 0xFFFFFFFFFFFFFFC0;
  *(v14 + 8) = (v11 & 0x3F) + 1;
  *(v14 + 12) = v11 & 0x3F;
  return this;
}

uint64_t llvm::IntervalMapImpl::Path::getRightSibling(llvm::IntervalMapImpl::Path *this, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  v3 = *this;
  v4 = (*this + 16 * a2 - 4);
  while (a2 - 1 != v2)
  {
    v5 = *v4;
    v6 = *(v4 - 1) - 1;
    ++v2;
    v4 -= 4;
    if (v5 != v6)
    {
      v7 = a2 - v2;
      v8 = a2 - v2 + 1;
      result = v7;
      goto LABEL_9;
    }
  }

  result = 0;
  if (*(v3 + 12) == *(v3 + 8) - 1)
  {
    return result;
  }

  v8 = 1;
LABEL_9:
  result = *(*(v3 + 16 * result) + 8 * (*(v3 + 16 * result + 12) + 1));
  if (v8 != a2)
  {
    v10 = a2 - v8;
    do
    {
      result = *(result & 0xFFFFFFFFFFFFFFC0);
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t *llvm::IntervalMapImpl::Path::moveRight(uint64_t *this, unsigned int a2)
{
  v2 = *this;
  v3 = a2 - 1;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = v3;
    if (!v3)
    {
      break;
    }

    v8 = *(v2 + 16 * v3 + 8);
    v7 = *(v2 + 16 * v3 + 12);
    ++v4;
    --v3;
    if (v7 != v8 - 1)
    {
      v9 = v2 + 16 * v6;
      v10 = v7 + 1;
      *(v9 + 12) = v10;
      if (v10 == v8)
      {
        return this;
      }

      goto LABEL_7;
    }
  }

  v11 = *(v2 + 8);
  v9 = *this;
  v10 = *(v2 + 12) + 1;
  *(v2 + 12) = v10;
  if (v10 == v11)
  {
    return this;
  }

LABEL_7:
  v12 = *(*v9 + 8 * v10);
  if (v5 != 1)
  {
    v13 = v5 - 1;
    v14 = v6 + 1;
    do
    {
      v15 = *this + 16 * v14;
      *v15 = v12 & 0xFFFFFFFFFFFFFFC0;
      *(v15 + 8) = (v12 & 0x3F) + 1;
      *(v15 + 12) = 0;
      ++v14;
      v12 = *(v12 & 0xFFFFFFFFFFFFFFC0);
      --v13;
    }

    while (v13);
    v2 = *this;
  }

  v16 = (v2 + 16 * a2);
  *v16 = v12 & 0xFFFFFFFFFFFFFFC0;
  v16[1] = (v12 & 0x3F) + 1;
  return this;
}

unint64_t llvm::IntervalMapImpl::distribute(llvm::IntervalMapImpl *this, int a2, unsigned int a3, unsigned int a4, const unsigned int *a5, unsigned int *a6, int a7)
{
  if (!this)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  LODWORD(v9) = 0;
  v10 = this;
  v11 = (a7 + a2) / this;
  v12 = (a7 + a2) % this;
  do
  {
    if (v7 >= v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 + 1;
    }

    a5[v7] = v13;
    v14 = a6 - v8;
    v8 += v13;
    if (this == v10 && v8 > a6)
    {
      LODWORD(this) = v7;
      v9 = v14;
    }

    else
    {
      v9 = v9;
    }

    ++v7;
  }

  while (v10 != v7);
  if (a7)
  {
    --a5[this];
  }

  return this | (v9 << 32);
}

uint64_t *llvm::json::Object::operator[](uint64_t *a1, uint64_t a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::InsertIntoBucket<llvm::json::ObjectKey,decltype(nullptr)>(a1, v7, a2);
  }

  return v5 + 3;
}

uint64_t llvm::json::Object::get(uint64_t a1, void *a2, size_t a3)
{
  v4 = llvm::json::Object::find(a1, a2, a3);
  if (*a1 + 56 * *(a1 + 16) == v4)
  {
    return 0;
  }

  else
  {
    return v4 + 24;
  }
}

{
  v4 = llvm::json::Object::find(a1, a2, a3);
  if (*a1 + 56 * *(a1 + 16) == v4)
  {
    return 0;
  }

  else
  {
    return v4 + 24;
  }
}

uint64_t llvm::json::Object::find(uint64_t *a1, void *a2, size_t a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v12 = 0;
    goto LABEL_11;
  }

  v7 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(a2, a3);
  v9 = v4 - 1;
  if (a3)
  {
    if (a2 == -2)
    {
      v10 = 1;
      v11 = HashValue & v9;
      v12 = v7 + 56 * (HashValue & v9);
      v13 = *(v12 + 8);
      if (v13 == -2)
      {
        goto LABEL_11;
      }

      while (v13 != -1)
      {
        if (a3 != *(v12 + 16) || memcmp(0xFFFFFFFFFFFFFFFELL, v13, a3))
        {
          v14 = v10 + v11;
          ++v10;
          v11 = v14 & v9;
          v12 = v7 + 56 * (v14 & v9);
          v13 = *(v12 + 8);
          if (v13 != -2)
          {
            continue;
          }
        }

        goto LABEL_11;
      }
    }

    else
    {
      v20 = 1;
      v21 = HashValue & v9;
      v12 = v7 + 56 * (HashValue & v9);
      v22 = *(v12 + 8);
      if (v22 == -2)
      {
        goto LABEL_24;
      }

      while (v22 != -1)
      {
        if (a3 == *(v12 + 16))
        {
          v23 = v20;
          v24 = memcmp(a2, v22, a3);
          v20 = v23;
          if (!v24)
          {
            goto LABEL_11;
          }
        }

        do
        {
LABEL_24:
          v25 = v20 + v21;
          ++v20;
          v21 = v25 & v9;
          v12 = v7 + 56 * (v25 & v9);
          v22 = *(v12 + 8);
        }

        while (v22 == -2);
      }
    }
  }

  else if (a2 == -2)
  {
    v16 = 1;
    v17 = HashValue & v9;
    v12 = v7 + 56 * (HashValue & v9);
    v18 = *(v12 + 8);
    if (v18 == -2)
    {
      goto LABEL_11;
    }

    while (v18 != -1)
    {
      if (*(v12 + 16))
      {
        v19 = v16 + v17;
        ++v16;
        v17 = v19 & v9;
        v12 = v7 + 56 * (v19 & v9);
        v18 = *(v12 + 8);
        if (v18 != -2)
        {
          continue;
        }
      }

      goto LABEL_11;
    }
  }

  else
  {
    v26 = 1;
    v27 = HashValue & v9;
    v12 = v7 + 56 * (HashValue & v9);
    v28 = *(v12 + 8);
    if (v28 == -2)
    {
      goto LABEL_29;
    }

    while (v28 != -1)
    {
      if (!*(v12 + 16))
      {
        goto LABEL_11;
      }

      do
      {
LABEL_29:
        v29 = v26 + v27;
        ++v26;
        v27 = v29 & v9;
        v12 = v7 + 56 * (v29 & v9);
        v28 = *(v12 + 8);
      }

      while (v28 == -2);
    }
  }

  if (a2 != -1)
  {
    v12 = 0;
  }

LABEL_11:
  if (v12)
  {
    return v12;
  }

  else
  {
    return *a1 + 56 * *(a1 + 4);
  }
}

uint64_t llvm::json::Object::getNull(uint64_t a1, void *a2, size_t a3)
{
  if (*a1 + 56 * *(a1 + 16) == llvm::json::Object::find(a1, a2, a3))
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::json::Object::getNumber(uint64_t a1, void *a2, size_t a3)
{
  v4 = llvm::json::Object::find(a1, a2, a3);
  if (*a1 + 56 * *(a1 + 16) == v4)
  {
    *&result = 0.0;
  }

  else
  {
    v5 = *(v4 + 24);
    switch(v5)
    {
      case 2:
        result = *(v4 + 32);
        break;
      case 3:
        *&result = *(v4 + 32);
        break;
      case 4:
        *&result = *(v4 + 32);
        break;
      default:
        *&result = 0.0;
        break;
    }
  }

  return result;
}

unint64_t llvm::json::Object::getInteger(uint64_t a1, void *a2, size_t a3)
{
  v4 = llvm::json::Object::find(a1, a2, a3);
  if (*a1 + 56 * *(a1 + 16) == v4)
  {
    return 0;
  }

  llvm::json::Object::getInteger(v4, &v6, &v7, &v8);
  return v8;
}

uint64_t llvm::json::Object::getString@<X0>(uint64_t a1@<X0>, void *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  result = llvm::json::Object::find(a1, a2, a3);
  if (*a1 + 56 * *(a1 + 16) == result)
  {
LABEL_10:
    *a4 = 0;
    *(a4 + 16) = 0;
    return result;
  }

  v7 = *(result + 24);
  if (v7 != 6)
  {
    if (v7 == 5)
    {
      *a4 = *(result + 32);
      *(a4 + 16) = 1;
      return result;
    }

    goto LABEL_10;
  }

  v9 = *(result + 32);
  result += 32;
  v8 = v9;
  v10 = *(result + 23);
  if (v10 >= 0)
  {
    v8 = result;
  }

  if (v10 < 0)
  {
    v10 = *(result + 8);
  }

  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = 1;
  return result;
}

uint64_t llvm::json::Object::getObject(uint64_t a1, void *a2, size_t a3)
{
  v4 = llvm::json::Object::find(a1, a2, a3);
  if (*a1 + 56 * *(a1 + 16) == v4)
  {
    return 0;
  }

  if (*(v4 + 24) == 7)
  {
    return v4 + 32;
  }

  return 0;
}

{
  v4 = llvm::json::Object::find(a1, a2, a3);
  if (*a1 + 56 * *(a1 + 16) == v4)
  {
    return 0;
  }

  if (*(v4 + 24) == 7)
  {
    return v4 + 32;
  }

  return 0;
}

uint64_t llvm::json::Object::getArray(uint64_t a1, void *a2, size_t a3)
{
  v4 = llvm::json::Object::find(a1, a2, a3);
  if (*a1 + 56 * *(a1 + 16) == v4)
  {
    return 0;
  }

  if (*(v4 + 24) == 8)
  {
    return v4 + 32;
  }

  return 0;
}

{
  v4 = llvm::json::Object::find(a1, a2, a3);
  if (*a1 + 56 * *(a1 + 16) == v4)
  {
    return 0;
  }

  if (*(v4 + 24) == 8)
  {
    return v4 + 32;
  }

  return 0;
}

uint64_t llvm::json::operator==(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v4 = *(a1 + 4);
  if (v4)
  {
    v5 = 56 * v4;
    for (i = *a1; *(i + 8) >= 0xFFFFFFFFFFFFFFFELL; i += 56)
    {
      v5 -= 56;
      if (!v5)
      {
        return 1;
      }
    }
  }

  else
  {
    i = *a1;
  }

  v8 = *a1 + 56 * v4;
  if (i == v8)
  {
    return 1;
  }

  while (1)
  {
    v9 = llvm::json::Object::find(a2, *(i + 8), *(i + 16));
    if (*a2 + 56 * *(a2 + 16) == v9)
    {
      break;
    }

    result = llvm::json::operator==((i + 24), (v9 + 24));
    if (!result)
    {
      return result;
    }

    do
    {
      i += 56;
    }

    while (i != v8 && *(i + 8) >= 0xFFFFFFFFFFFFFFFELL);
    if (i == v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t *llvm::json::Array::Array(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<llvm::json::Value>::reserve(a1, a3);
  if (a3)
  {
    v6 = 32 * a3;
    v7 = a2 + 16;
    do
    {
      v10 = a1[1];
      if (v10 >= a1[2])
      {
        v11 = std::vector<llvm::json::Value>::__emplace_back_slow_path<decltype(nullptr)>(a1);
        a1[1] = v11;
        v12 = *(v7 - 16);
        *(v11 - 16) = v12;
        if (v12 <= 4)
        {
LABEL_8:
          v13 = *(v7 - 8);
          *(v11 - 1) = *(v7 + 8);
          *(v11 - 12) = v13;
          goto LABEL_5;
        }
      }

      else
      {
        *v10 = 0;
        v11 = v10 + 16;
        a1[1] = v11;
        v12 = *(v7 - 16);
        *(v11 - 16) = v12;
        if (v12 <= 4)
        {
          goto LABEL_8;
        }
      }

      if (v12 > 6)
      {
        if (v12 == 7)
        {
          *(v11 - 3) = 0;
          *(v11 - 2) = 0;
          *(v11 - 2) = 0;
          *(v11 - 3) = *(v7 - 8);
          *(v7 - 8) = 0;
          *(v11 - 4) = *v7;
          *v7 = 0;
          v8 = *(v11 - 3);
          *(v11 - 3) = *(v7 + 4);
          *(v7 + 4) = v8;
          v9 = *(v11 - 2);
          *(v11 - 2) = *(v7 + 8);
          *(v7 + 8) = v9;
        }

        else
        {
          if (v12 != 8)
          {
            goto LABEL_5;
          }

          *(v11 - 3) = 0;
          *(v11 - 2) = 0;
          *(v11 - 1) = 0;
          *(v11 - 12) = *(v7 - 8);
          *(v11 - 1) = *(v7 + 8);
          *(v7 - 8) = 0;
          *v7 = 0;
          *(v7 + 8) = 0;
        }
      }

      else
      {
        if (v12 == 5)
        {
          *(v11 - 12) = *(v7 - 8);
          goto LABEL_5;
        }

        v14 = *(v7 - 8);
        *(v11 - 1) = *(v7 + 8);
        *(v11 - 12) = v14;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 - 8) = 0;
      }

      *(v7 - 16) = 0;
LABEL_5:
      v7 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *std::vector<llvm::json::Value>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t llvm::json::Value::moveFrom(uint64_t result, unsigned __int16 *a2)
{
  v2 = *a2;
  *result = v2;
  if (v2 <= 4)
  {
    v3 = *(a2 + 4);
    *(result + 24) = *(a2 + 3);
    *(result + 8) = v3;
    return result;
  }

  if (v2 > 6)
  {
    if (v2 == 7)
    {
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 8) = *(a2 + 1);
      *(a2 + 1) = 0;
      *(result + 16) = *(a2 + 4);
      *(a2 + 4) = 0;
      v5 = *(result + 20);
      *(result + 20) = *(a2 + 5);
      *(a2 + 5) = v5;
      v6 = *(result + 24);
      *(result + 24) = *(a2 + 6);
      *(a2 + 6) = v6;
    }

    else
    {
      if (v2 != 8)
      {
        return result;
      }

      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 8) = *(a2 + 4);
      *(result + 24) = *(a2 + 3);
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *(a2 + 3) = 0;
    }
  }

  else
  {
    if (v2 == 5)
    {
      *(result + 8) = *(a2 + 4);
      return result;
    }

    v4 = *(a2 + 4);
    *(result + 24) = *(a2 + 3);
    *(result + 8) = v4;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(a2 + 1) = 0;
  }

  *a2 = 0;
  return result;
}

uint64_t llvm::json::Value::Value(uint64_t a1, uint64_t a2, unint64_t a3)
{
  llvm::json::Array::Array(&v5, a2, a3);
  *a1 = 8;
  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  return a1;
}

{
  llvm::json::Array::Array(&v5, a2, a3);
  *a1 = 8;
  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  return a1;
}

void llvm::json::Value::copyFrom(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  *a1 = v2;
  if (v2 > 4)
  {
    if (v2 > 6)
    {
      if (v2 == 7)
      {
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        v7 = a1 + 8;
        *(v7 + 16) = 0;

        llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::copyFrom(v7);
      }

      if (v2 == 8)
      {
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        v5 = *(a2 + 1);
        v6 = *(a2 + 2);
        if (v6 != v5)
        {
          if (((v6 - v5) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::string::__throw_length_error[abi:nn200100]();
        }
      }
    }

    else if (v2 == 5)
    {
      *(a1 + 8) = *(a2 + 4);
    }

    else if (*(a2 + 31) < 0)
    {
      v8 = *(a2 + 2);
      v9 = (a1 + 8);
      v10 = *(a2 + 1);

      std::string::__init_copy_ctor_external(v9, v10, v8);
    }

    else
    {
      v4 = *(a2 + 4);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 8) = v4;
    }
  }

  else
  {
    v3 = *(a2 + 4);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 8) = v3;
  }
}

void llvm::json::Value::destroy(llvm ***this)
{
  v1 = *this;
  if (v1 == 8)
  {
    std::vector<llvm::json::Value>::~vector[abi:nn200100](this + 1);
  }

  else
  {
    if (v1 == 7)
    {
      llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::~DenseMap((this + 1));
    }

    if (v1 == 6 && *(this + 31) < 0)
    {
      operator delete(this[1]);
    }
  }
}

uint64_t llvm::json::operator==(__int16 *a1, __int16 *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = dword_25739FB8C[v5];
  if (dword_25739FB8C[v4] != v6)
  {
    return 0;
  }

  __y[5] = v2;
  __y[6] = v3;
  v7 = v5;
  if (v4 <= 4u)
  {
    if (v4 - 2 < 3)
    {
      if (v4 != 3 && v5 != 3)
      {
        if (v4 == 2)
        {
          v28 = *(a1 + 1);
        }

        else if (v4 == 3)
        {
          v28 = *(a1 + 1);
        }

        else
        {
          v28 = *(a1 + 1);
        }

        switch(v5)
        {
          case 2u:
            v27 = v28 == *(a2 + 1);
            break;
          case 3u:
            v27 = v28 == *(a2 + 1);
            break;
          case 4u:
            v27 = v28 == *(a2 + 1);
            break;
          default:
            v27 = v28 == 0.0;
            break;
        }

        return v27;
      }

      if (v4 == 3)
      {
        v9 = 1;
        v10 = *(a1 + 1) & 0xFFFFFFFFFFFFFF00 | *(a1 + 1);
        if (v5 == 3)
        {
LABEL_11:
          v11 = *(a2 + 1);
          v12 = v11 & 0xFFFFFFFFFFFFFF00;
          v13 = 1;
LABEL_12:
          v14 = v9 == v13;
          v15 = v10 == (v12 | v11);
          if ((v14 & v9) != 0)
          {
            return v15;
          }

          else
          {
            return v14;
          }
        }
      }

      else
      {
        v41 = a2;
        if (v4 == 4)
        {
          v42 = *(a1 + 1);
          v43 = v42 & 0x7FFFFFFFFFFFFF00;
          v9 = v42 >= 0;
          if (v42 < 0)
          {
            LOBYTE(v42) = 0;
            v43 = 0;
          }
        }

        else
        {
          __y[0] = *(a1 + 1);
          if (modf(__y[0], __y) == 0.0 && fabs(__y[0]) <= 9.22337204e18)
          {
            v42 = __y[0];
            v43 = __y[0] & 0xFFFFFFFFFFFFFF00;
            v9 = 1;
          }

          else
          {
            v9 = 0;
            LOBYTE(v42) = 0;
            v43 = 0;
          }
        }

        a2 = v41;
        v10 = v43 | v42;
        if (v7 == 3)
        {
          goto LABEL_11;
        }
      }

      v44 = v10;
      if (v7 == 4)
      {
        v11 = *(a2 + 1);
        v12 = v11 & 0x7FFFFFFFFFFFFF00;
        v13 = v11 >= 0;
        if (v11 < 0)
        {
          LOBYTE(v11) = 0;
          v12 = 0;
        }
      }

      else if (v7 == 2 && (__y[0] = *(a2 + 1), modf(__y[0], __y) == 0.0) && fabs(__y[0]) <= 9.22337204e18)
      {
        v11 = __y[0];
        v12 = __y[0] & 0xFFFFFFFFFFFFFF00;
        v13 = 1;
      }

      else
      {
        v13 = 0;
        LOBYTE(v11) = 0;
        v12 = 0;
      }

      v10 = v44;
      goto LABEL_12;
    }

    if (v4)
    {
      v26 = *(a2 + 8);
      if (v7 != 1)
      {
        v26 = 0;
      }

      return *(a1 + 8) == v26;
    }

    return 1;
  }

  if (v4 <= 6u)
  {
    if (v4 == 5)
    {
      v18 = *(a1 + 1);
      v17 = *(a1 + 2);
      if (v5 != 6)
      {
LABEL_20:
        if (v7 == 5)
        {
          v19 = *(a2 + 1);
          if (v17 != *(a2 + 2))
          {
            return 0;
          }

LABEL_53:
          if (v17)
          {
            return memcmp(v18, v19, v17) == 0;
          }

          return 1;
        }

        v19 = 0;
        if (v17 == v6)
        {
          goto LABEL_53;
        }

        return 0;
      }
    }

    else
    {
      v30 = *(a1 + 1);
      v29 = a1 + 4;
      v18 = v30;
      v31 = *(v29 + 23);
      if (v31 >= 0)
      {
        v18 = v29;
      }

      v6 = *(v29 + 1);
      if (v31 >= 0)
      {
        v17 = *(v29 + 23);
      }

      else
      {
        v17 = *(v29 + 1);
      }

      if (v7 != 6)
      {
        goto LABEL_20;
      }
    }

    v33 = *(a2 + 1);
    v32 = a2 + 4;
    v19 = v33;
    v34 = *(v32 + 23);
    if (v34 >= 0)
    {
      v19 = v32;
    }

    if (v34 < 0)
    {
      v34 = *(v32 + 1);
    }

    if (v17 != v34)
    {
      return 0;
    }

    goto LABEL_53;
  }

  if (v4 == 7)
  {
    if (v5 == 7)
    {
      v20 = a2 + 4;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(a1 + 4);
    if (v21 == *(v20 + 2))
    {
      if (!v21)
      {
        return 1;
      }

      v22 = *(a1 + 1);
      v23 = *(a1 + 6);
      if (v23)
      {
        v24 = 56 * v23;
        v25 = *(a1 + 1);
        result = 1;
        while (*(v25 + 8) >= 0xFFFFFFFFFFFFFFFELL)
        {
          v25 += 56;
          v24 -= 56;
          if (!v24)
          {
            return result;
          }
        }
      }

      else
      {
        v25 = *(a1 + 1);
      }

      v39 = v22 + 56 * v23;
      if (v25 == v39)
      {
        return 1;
      }

      while (1)
      {
        v40 = llvm::json::Object::find(v20, *(v25 + 8), *(v25 + 16));
        if (*v20 + 56 * *(v20 + 4) == v40)
        {
          break;
        }

        result = llvm::json::operator==(v25 + 24, v40 + 24);
        if (!result)
        {
          return result;
        }

        v25 += 56;
        if (v25 == v39)
        {
          return 1;
        }

        while (*(v25 + 8) >= 0xFFFFFFFFFFFFFFFELL)
        {
          v25 += 56;
          result = 1;
          if (v25 == v39)
          {
            return result;
          }
        }

        result = 1;
        if (v25 == v39)
        {
          return result;
        }
      }
    }

    return 0;
  }

  v35 = (a2 + 4);
  if (v5 != 8)
  {
    v35 = 0;
  }

  v36 = *(a1 + 1);
  v37 = *(a1 + 2);
  v38 = *v35;
  if (v37 - v36 != v35[1] - *v35)
  {
    return 0;
  }

  if (v36 == v37)
  {
    return 1;
  }

  do
  {
    result = llvm::json::operator==(v36, v38);
    if (!result)
    {
      break;
    }

    v36 += 32;
    v38 += 32;
  }

  while (v36 != v37);
  return result;
}

__n128 llvm::json::Path::report(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  LODWORD(v4) = -1;
  v5 = a1;
  do
  {
    v6 = v5;
    v5 = *v5;
    v4 = (v4 + 1);
  }

  while (v5);
  v7 = v6[1];
  v7[2] = a2;
  v7[3] = a3;
  v9 = (v7 + 4);
  v8 = v7[4];
  v10 = (v7[5] - v8) >> 4;
  if (v4 <= v10)
  {
    if (v4 < v10)
    {
      v7[5] = &v8[v4];
    }
  }

  else
  {
    std::vector<llvm::json::Path::Segment>::__append((v7 + 4), v4 - v10);
    v8 = *v9;
  }

  while (*v3)
  {
    result = *(v3 + 1);
    *v8++ = result;
    v3 = *v3;
  }

  return result;
}

void llvm::json::Path::Root::getError(llvm::json::Path::Root *this)
{
  memset(__p, 0, sizeof(__p));
  v31 = 0;
  v35 = 0;
  v36 = 1;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v30 = &unk_2868A3EF8;
  v37 = __p;
  llvm::raw_ostream::SetBufferAndMode(&v30, 0, 0, 0);
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = v34;
    if (v2 > v33 - v34)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = "invalid JSON contents";
    v2 = 21;
    v4 = v34;
    if (v33 - v34 < 0x15)
    {
LABEL_3:
      v5 = llvm::raw_ostream::write(&v30, v3, v2);
      if (*(this + 4) != *(this + 5))
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  v5 = memcpy(v4, v3, v2);
  v34 = (v34 + v2);
  if (*(this + 4) != *(this + 5))
  {
LABEL_4:
    if (v33 - v34 > 3)
    {
      *v34++ = 544497952;
      v6 = &v30;
      v7 = *(this + 1);
      if (v7)
      {
LABEL_6:
        v8 = *this;
        v9 = v6[4];
        if (v7 > v6[3] - v9)
        {
          goto LABEL_7;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v6 = llvm::raw_ostream::write(&v30, " at ", 4uLL);
      v7 = *(this + 1);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v8 = "(root)";
    v7 = 6;
    v9 = v6[4];
    if ((v6[3] - v9) < 6)
    {
LABEL_7:
      v5 = llvm::raw_ostream::write(v6, v8, v7);
      v10 = *(this + 4);
      v11 = *(this + 5);
      if (v11 == v10)
      {
        goto LABEL_36;
      }

      goto LABEL_19;
    }

LABEL_18:
    v5 = memcpy(v9, v8, v7);
    v6[4] = v6[4] + v7;
    v10 = *(this + 4);
    v11 = *(this + 5);
    if (v11 == v10)
    {
      goto LABEL_36;
    }

LABEL_19:
    v18 = v11;
    while (1)
    {
      v19 = *(v18 - 16);
      v18 -= 16;
      v20 = v34;
      if (v19)
      {
        if (v34 >= v33)
        {
          v5 = llvm::raw_ostream::write(&v30, 46);
          v21 = *(v11 - 16);
          v22 = *(v11 - 8);
          v23 = v5[4];
          if (v5[3] - v23 >= v22)
          {
LABEL_30:
            if (v22)
            {
              v25 = v5;
              v26 = v22;
              v5 = memcpy(v23, v21, v22);
              v25[4] = v25[4] + v26;
            }

            goto LABEL_21;
          }
        }

        else
        {
          v34 = (v34 + 1);
          *v20 = 46;
          v5 = &v30;
          v21 = *(v11 - 16);
          v22 = *(v11 - 8);
          v23 = v34;
          if (v33 - v34 >= v22)
          {
            goto LABEL_30;
          }
        }

        v5 = llvm::raw_ostream::write(v5, v21, v22);
      }

      else
      {
        if (v34 >= v33)
        {
          v27 = llvm::raw_ostream::write(&v30, 91);
          v5 = llvm::raw_ostream::operator<<(v27, *(v11 - 8));
          v24 = v5[4];
          if (v24 < v5[3])
          {
LABEL_33:
            v5[4] = v24 + 1;
            *v24 = 93;
            goto LABEL_21;
          }
        }

        else
        {
          v34 = (v34 + 1);
          *v20 = 91;
          v5 = llvm::raw_ostream::operator<<(&v30, *(v11 - 8));
          v24 = v5[4];
          if (v24 < v5[3])
          {
            goto LABEL_33;
          }
        }

        v5 = llvm::raw_ostream::write(v5, 93);
      }

LABEL_21:
      v11 = v18;
      if (v18 == v10)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_11:
  if (!*(this + 1))
  {
    goto LABEL_36;
  }

  v12 = v34;
  if (v33 - v34 > 0xD)
  {
    *v34 = *" when parsing ";
    *(v12 + 6) = *"parsing ";
    v13 = (v34 + 14);
    v34 = v13;
    v5 = &v30;
    v14 = *this;
    v15 = *(this + 1);
    if (v15 <= v33 - v13)
    {
LABEL_14:
      if (v15)
      {
        v16 = v5;
        v17 = v15;
        v5 = memcpy(v13, v14, v15);
        v16[4] = v16[4] + v17;
      }

LABEL_36:
      llvm::inconvertibleErrorCode(v5);
      v29 = 260;
      v28 = __p;
      llvm::Twine::str(&v28, &v39);
      llvm::createStringError();
    }
  }

  else
  {
    v5 = llvm::raw_ostream::write(&v30, " when parsing ", 0xEuLL);
    v13 = v5[4];
    v14 = *this;
    v15 = *(this + 1);
    if (v15 <= v5[3] - v13)
    {
      goto LABEL_14;
    }
  }

  v5 = llvm::raw_ostream::write(v5, v14, v15);
  goto LABEL_36;
}

uint64_t *llvm::json::sortedElements@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  v3 = 0uLL;
  *a2 = 0u;
  if (*(a1 + 2))
  {
    v4 = *(a1 + 4);
    if (v4)
    {
      v5 = 56 * v4;
      v6 = *a1;
      while (*(v6 + 8) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v6 += 56;
        v5 -= 56;
        if (!v5)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v6 = *a1;
    }

    v7 = *a1 + 56 * v4;
    if (v6 != v7)
    {
      do
      {
        v11 = v6;
        std::vector<mlir::DialectInterface const*>::push_back[abi:nn200100](a2, &v11);
        do
        {
          v6 += 56;
        }

        while (v6 != v7 && *(v6 + 8) >= 0xFFFFFFFFFFFFFFFELL);
      }

      while (v6 != v7);
      v3 = *a2;
    }
  }

LABEL_16:
  v8 = 126 - 2 * __clz((*(&v3 + 1) - v3) >> 3);
  if (*(&v3 + 1) == v3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return std::__introsort<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,false>(v3, *(&v3 + 1), v9, 1);
}

void llvm::json::Path::Root::printErrorContext(llvm::json::Path::Root *this, const llvm::json::Value *a2, llvm::raw_ostream *a3)
{
  v5[20] = *MEMORY[0x277D85DE8];
  v5[17] = 0;
  v5[18] = a3;
  v5[19] = 2;
  v5[16] = 0;
  v3[1] = v4;
  v4[0] = v5;
  v4[1] = 0x1000000001;
  v5[0] = 0;
  v3[0] = this;
  llvm::json::Path::Root::printErrorContext(llvm::json::Value const&,llvm::raw_ostream &)const::$_0::operator()<$_0>(v3, a2, *(this + 4), (*(this + 5) - *(this + 4)) >> 4, v3);
  if (v4[0] != v5)
  {
    free(v4[0]);
  }
}

void llvm::json::Path::Root::printErrorContext(llvm::json::Value const&,llvm::raw_ostream &)const::$_0::operator()<$_0>(uint64_t *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  v34[0] = a3;
  v34[1] = a4;
  v5 = a1[1];
  v33[0] = *a1;
  v33[1] = v5;
  v33[2] = a2;
  if (a4)
  {
    v8 = a3 + 16 * a4;
    v9 = *(v8 - 16);
    if (v9)
    {
      v10 = *(v8 - 8);
      v32[0] = *(v8 - 16);
      v32[1] = v10;
      v11 = *a2;
      v12 = v11 == 7;
      if (v11 == 7)
      {
        v13 = a2 + 4;
      }

      else
      {
        v13 = 0;
      }

      v31 = v13;
      if (v12 && *(a2 + 1) + 56 * *(a2 + 6) != llvm::json::Object::find(a2 + 1, v9, v10))
      {
        v5 = a1[1];
        v30[0] = &v31;
        v30[1] = v5;
        v30[2] = v32;
        v30[3] = a5;
        v30[4] = v34;
        llvm::json::OStream::objectBegin(v5);
        _ZN4llvm12function_refIFvvEE11callback_fnIZZNKS_4json4Path4Root17printErrorContextERKNS4_5ValueERNS_11raw_ostreamEENK3__0clISC_EEDaS9_NS_8ArrayRefINS5_7SegmentEEERT_EUlvE0_EEvl(v30);
        v15 = *(v5 + 168);
        *(v5 + 172) -= v15;
        if (*(*v5 + 8 * *(v5 + 8) - 4) == 1 && v15 != 0)
        {
          llvm::raw_ostream::write(*(v5 + 160), 10);
          llvm::raw_ostream::indent(*(v5 + 160), *(v5 + 172));
        }

        v17 = *(v5 + 160);
        v18 = *(v17 + 4);
        if (v18 < *(v17 + 3))
        {
          *(v17 + 4) = v18 + 1;
          v19 = 125;
LABEL_32:
          *v18 = v19;
LABEL_36:
          --*(v5 + 8);
          return;
        }

        v29 = 125;
        goto LABEL_35;
      }
    }

    else if (*a2 == 8 && *(v8 - 8) < ((*(a2 + 2) - *(a2 + 1)) >> 5))
    {
      llvm::json::OStream::arrayBegin(v5);
      v23 = *(a2 + 1);
      v24 = *(a2 + 2);
      if (v23 != v24)
      {
        v25 = 0;
        v26 = a4 - 1;
        do
        {
          while (v25 != *(v8 - 8))
          {
            llvm::json::abbreviate(v23, v5, v22);
            v23 = (v23 + 32);
            ++v25;
            if (v23 == v24)
            {
              goto LABEL_25;
            }
          }

          llvm::json::Path::Root::printErrorContext(llvm::json::Value const&,llvm::raw_ostream &)const::$_0::operator()<$_0>(a5, v23, a3, v26, a5);
          v23 = (v23 + 32);
          ++v25;
        }

        while (v23 != v24);
      }

LABEL_25:
      v27 = *(v5 + 168);
      *(v5 + 172) -= v27;
      if (*(*v5 + 8 * *(v5 + 8) - 4) == 1 && v27 != 0)
      {
        llvm::raw_ostream::write(*(v5 + 160), 10);
        llvm::raw_ostream::indent(*(v5 + 160), *(v5 + 172));
      }

      v17 = *(v5 + 160);
      v18 = *(v17 + 4);
      if (v18 < *(v17 + 3))
      {
        *(v17 + 4) = v18 + 1;
        v19 = 93;
        goto LABEL_32;
      }

      v29 = 93;
LABEL_35:
      llvm::raw_ostream::write(v17, v29);
      goto LABEL_36;
    }
  }

  _ZZZNK4llvm4json4Path4Root17printErrorContextERKNS0_5ValueERNS_11raw_ostreamEENK3__0clIS8_EEDaS5_NS_8ArrayRefINS1_7SegmentEEERT_ENKUlvE_clEv(v33);
}

double llvm::json::parse@<D0>(const unsigned __int8 **a1@<X0>, uint64_t a2@<X1>, const unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  LOBYTE(v28) = 0;
  v29 = 0;
  v30 = a1;
  v31 = a1;
  v32 = a1 + a2;
  v34 = 0;
  if (a2)
  {
    v5 = 0;
    while ((*(a1 + v5) & 0x80000000) == 0)
    {
      if (a2 == ++v5)
      {
        goto LABEL_5;
      }
    }

    v33 = a1;
    if (!llvm::isLegalUTF8String(&v33, (a1 + a2), a3))
    {
      v23 = v33 - a1;
      v31 = (v30 + v23);
      if (v23 >= 1)
      {
        v24 = v30 + 1;
        v25 = 1;
        v26 = v23;
        do
        {
          v27 = *(v24 - 1);
          if (v27 == 10)
          {
            ++v25;
          }

          ++v24;
          --v26;
        }

        while (v26);
      }

      operator new();
    }
  }

LABEL_5:
  {
    v7 = v31;
    if (v31 != v32)
    {
      v8 = v31;
      while (1)
      {
        v9 = *v8;
        v10 = v9 > 0x20;
        v11 = (1 << v9) & 0x100002600;
        if (v10 || v11 == 0)
        {
          break;
        }

        v31 = ++v8;
        v7 = (v7 + 1);
        if (v8 == v32)
        {
          goto LABEL_13;
        }
      }

      if (v8 != v32)
      {
        if (v30 < v8)
        {
          v19 = 1;
          v20 = v30;
          do
          {
            v21 = *v20++;
            if (v21 == 10)
            {
              ++v19;
            }
          }

          while (v8 != v20);
        }

        operator new();
      }
    }

LABEL_13:
    *(a4 + 32) &= ~1u;
    v13 = v34;
    *a4 = v34;
    if (v13 <= 4)
    {
      result = *__p;
      *(a4 + 8) = *__p;
      *(a4 + 24) = v36;
      goto LABEL_16;
    }

    if (v13 <= 6)
    {
      if (v13 == 5)
      {
        result = *__p;
        *(a4 + 8) = *__p;
        goto LABEL_44;
      }

LABEL_34:
      result = *__p;
      *(a4 + 8) = *__p;
      *(a4 + 24) = v36;
      if (v29 != 1)
      {
        return result;
      }

      goto LABEL_45;
    }

    if (v13 == 7)
    {
      *(a4 + 8) = __p[0];
      result = *&__p[1];
      *(a4 + 16) = __p[1];
      __p[0] = 0;
      __p[1] = 0;
      *(a4 + 24) = v36;
      if (v29 != 1)
      {
        return result;
      }

      goto LABEL_45;
    }

    if (v13 == 8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v14 = v28;
    v28 = 0;
    *(a4 + 32) |= 1u;
    *a4 = v14;
    v13 = v34;
  }

LABEL_16:
  if (v13 != 8)
  {
    if (v13 == 7)
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::destroyAll(__p);
      llvm::deallocate_buffer(__p[0], (56 * v36));
    }

    if (v13 == 6 && SHIBYTE(v36) < 0)
    {
      v15 = __p[0];
      goto LABEL_30;
    }

LABEL_44:
    if (v29 != 1)
    {
      return result;
    }

    goto LABEL_45;
  }

  v16 = __p[0];
  if (!__p[0])
  {
    goto LABEL_44;
  }

  v17 = __p[1];
  v18 = __p[0];
  if (__p[1] != __p[0])
  {
    do
    {
      llvm::json::Value::~Value(v17 - 4);
    }

    while (v17 != v16);
    v18 = __p[0];
  }

  __p[1] = v16;
  v15 = v18;
LABEL_30:
  operator delete(v15);
  if (v29 != 1)
  {
    return result;
  }

LABEL_45:
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  return result;
}

uint64_t llvm::json::anonymous namespace::Parser::parseValue(llvm::json::_anonymous_namespace_::Parser *this, llvm::json::Value *a2)
{
  v98[3] = *MEMORY[0x277D85DE8];
  v4 = *(this + 3);
  for (i = *(this + 4); v4 != i; *(this + 3) = ++v4)
  {
    v6 = *v4;
    v7 = v6 > 0x20;
    v8 = (1 << v6) & 0x100002600;
    v9 = v7 || v8 == 0;
    if (v9)
    {
      break;
    }
  }

  if (v4 == i)
  {
    v24 = *(this + 2);
    v25 = 1;
    if (i > v24)
    {
      do
      {
        v26 = *v24++;
        if (v26 == 10)
        {
          ++v25;
        }
      }

      while (v24 != i);
    }

    operator new();
  }

  v10 = v4 + 1;
  *(this + 3) = v4 + 1;
  v11 = *v4;
  if (v11 > 0x6D)
  {
    if (v11 != 123)
    {
      if (v11 != 116)
      {
        if (v11 != 110)
        {
          goto LABEL_106;
        }

        LOWORD(__str) = 0;
        llvm::json::Value::operator=(a2, &__str);
        if (__str == 8)
        {
          if (!__str_8[0])
          {
            goto LABEL_190;
          }

          std::vector<llvm::json::Value>::clear[abi:nn200100](__str_8);
        }

        else
        {
          if (__str == 7)
          {
            llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::destroyAll(__str_8);
            llvm::deallocate_buffer(__str_8[0], (56 * LODWORD(v98[0])));
          }

          if (__str != 6 || (SHIBYTE(v98[0]) & 0x80000000) == 0)
          {
LABEL_190:
            v77 = *(this + 3);
            v78 = *(this + 4);
            if (v77 == v78)
            {
              v79 = *(this + 3);
            }

            else
            {
              v79 = v77 + 1;
              *(this + 3) = v77 + 1;
              if (*v77 == 117)
              {
                if (v79 == v78)
                {
                  v79 = v78;
                }

                else
                {
                  v79 = v77 + 2;
                  *(this + 3) = v77 + 2;
                  if (v77[1] == 108)
                  {
                    v9 = v79 == v78;
                    v79 = v78;
                    if (!v9)
                    {
                      v79 = v77 + 3;
                      *(this + 3) = v77 + 3;
                      if (v77[2] == 108)
                      {
                        goto LABEL_196;
                      }
                    }
                  }
                }
              }
            }

            v86 = *(this + 2);
            v87 = 1;
            if (v79 > v86)
            {
              do
              {
                v88 = *v86++;
                if (v88 == 10)
                {
                  ++v87;
                }
              }

              while (v86 != v79);
            }

            operator new();
          }
        }

        operator delete(__str_8[0]);
        goto LABEL_190;
      }

      LOWORD(__str) = 1;
      LOBYTE(__str_8[0]) = 1;
      llvm::json::Value::operator=(a2, &__str);
      if (__str == 8)
      {
        if (!__str_8[0])
        {
          goto LABEL_179;
        }

        std::vector<llvm::json::Value>::clear[abi:nn200100](__str_8);
      }

      else
      {
        if (__str == 7)
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::destroyAll(__str_8);
          llvm::deallocate_buffer(__str_8[0], (56 * LODWORD(v98[0])));
        }

        if (__str != 6 || (SHIBYTE(v98[0]) & 0x80000000) == 0)
        {
LABEL_179:
          v74 = *(this + 3);
          v75 = *(this + 4);
          if (v74 == v75)
          {
            v76 = *(this + 3);
          }

          else
          {
            v76 = v74 + 1;
            *(this + 3) = v74 + 1;
            if (*v74 == 114)
            {
              if (v76 == v75)
              {
                v76 = v75;
              }

              else
              {
                v76 = v74 + 2;
                *(this + 3) = v74 + 2;
                if (v74[1] == 117)
                {
                  v9 = v76 == v75;
                  v76 = v75;
                  if (!v9)
                  {
                    v76 = v74 + 3;
                    *(this + 3) = v74 + 3;
                    if (v74[2] == 101)
                    {
                      goto LABEL_196;
                    }
                  }
                }
              }
            }
          }

          v83 = *(this + 2);
          v84 = 1;
          if (v76 > v83)
          {
            do
            {
              v85 = *v83++;
              if (v85 == 10)
              {
                ++v84;
              }
            }

            while (v83 != v76);
          }

          operator new();
        }
      }

      operator delete(__str_8[0]);
      goto LABEL_179;
    }

    LOWORD(__str) = 7;
    *__str_8 = 0u;
    memset(&__p, 0, sizeof(__p));
    LODWORD(v98[0]) = 0;
    llvm::json::Value::operator=(a2, &__str);
    if (__str == 8)
    {
      if (!__str_8[0])
      {
        goto LABEL_202;
      }

      std::vector<llvm::json::Value>::clear[abi:nn200100](__str_8);
    }

    else
    {
      if (__str == 7)
      {
        llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::destroyAll(__str_8);
        llvm::deallocate_buffer(__str_8[0], (56 * LODWORD(v98[0])));
      }

      if (__str != 6 || (SHIBYTE(v98[0]) & 0x80000000) == 0)
      {
LABEL_202:
        llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::destroyAll(&__p);
        llvm::deallocate_buffer(__p.__r_.__value_.__l.__data_, (56 * LODWORD(__p.__r_.__value_.__r.__words[2])));
      }
    }

    operator delete(__str_8[0]);
    goto LABEL_202;
  }

  v12 = v11 - 43;
  if (v12 > 0x3B)
  {
    goto LABEL_71;
  }

  if (((1 << (v11 - 43)) & 0x400000004007FEDLL) != 0)
  {
    __str = v98;
    LOBYTE(v98[0]) = v11;
    *__str_8 = xmmword_25739FAD0;
    if (v10 != i)
    {
      v13 = 1;
      do
      {
        v14 = *v10;
        if ((v14 - 48) >= 0xA)
        {
          v15 = v14 - 43;
          v7 = v15 > 0x3A;
          v16 = (1 << v15) & 0x40000000400000DLL;
          if (v7 || v16 == 0)
          {
            break;
          }
        }

        *(this + 3) = v10 + 1;
        if ((v13 + 1) > __str_8[1])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        __str[v13] = *v10;
        v13 = ++__str_8[0];
        v10 = *(this + 3);
      }

      while (v10 != *(this + 4));
    }

    __endptr.__r_.__value_.__r.__words[0] = 0;
    *__error() = 0;
    if (__str_8[0] + 1 > __str_8[1])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    __str[__str_8[0]] = 0;
    v18 = strtoll(__str, &__endptr.__r_.__value_.__l.__data_, 10);
    if (__endptr.__r_.__value_.__l.__data_ == &__str[__str_8[0]] && (v19 = v18, *__error() != 34))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 3;
      __p.__r_.__value_.__l.__size_ = v19;
      llvm::json::Value::operator=(a2, &__p);
      data_low = LOWORD(__p.__r_.__value_.__l.__data_);
      if (LOWORD(__p.__r_.__value_.__l.__data_) == 8)
      {
        size = __p.__r_.__value_.__l.__size_;
        if (!__p.__r_.__value_.__l.__size_)
        {
          goto LABEL_122;
        }

        v48 = __p.__r_.__value_.__r.__words[2];
        v49 = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__r.__words[2] != __p.__r_.__value_.__l.__size_)
        {
          do
          {
            llvm::json::Value::~Value((v48 - 32));
          }

          while (v48 != size);
          v49 = __p.__r_.__value_.__l.__size_;
        }

        __p.__r_.__value_.__r.__words[2] = size;
        v42 = v49;
        goto LABEL_118;
      }

      if (LOWORD(__p.__r_.__value_.__l.__data_) == 7)
      {
        llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::destroyAll(&__p.__r_.__value_.__l.__size_);
        llvm::deallocate_buffer(__p.__r_.__value_.__l.__size_, (56 * v94));
      }
    }

    else
    {
      if (v11 == 45)
      {
        goto LABEL_29;
      }

      *__error() = 0;
      if (__str_8[0] + 1 > __str_8[1])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      __str[__str_8[0]] = 0;
      v20 = strtoull(__str, &__endptr.__r_.__value_.__l.__data_, 10);
      if (__endptr.__r_.__value_.__l.__data_ != &__str[__str_8[0]] || (v21 = v20, *__error() == 34))
      {
LABEL_29:
        if (__str_8[0] + 1 > __str_8[1])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        __str[__str_8[0]] = 0;
        v22 = strtod(__str, &__endptr.__r_.__value_.__l.__data_);
        LOWORD(__p.__r_.__value_.__l.__data_) = 2;
        *&__p.__r_.__value_.__l.__size_ = v22;
        llvm::json::Value::operator=(a2, &__p);
        if (LOWORD(__p.__r_.__value_.__l.__data_) == 8)
        {
          v28 = __p.__r_.__value_.__l.__size_;
          if (!__p.__r_.__value_.__l.__size_)
          {
            goto LABEL_58;
          }

          v29 = __p.__r_.__value_.__r.__words[2];
          v30 = __p.__r_.__value_.__l.__size_;
          if (__p.__r_.__value_.__r.__words[2] != __p.__r_.__value_.__l.__size_)
          {
            do
            {
              llvm::json::Value::~Value((v29 - 32));
            }

            while (v29 != v28);
            v30 = __p.__r_.__value_.__l.__size_;
          }

          __p.__r_.__value_.__r.__words[2] = v28;
          v23 = v30;
        }

        else
        {
          if (LOWORD(__p.__r_.__value_.__l.__data_) == 7)
          {
            llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::destroyAll(&__p.__r_.__value_.__l.__size_);
            llvm::deallocate_buffer(__p.__r_.__value_.__l.__size_, (56 * v94));
          }

          if (LOWORD(__p.__r_.__value_.__l.__data_) != 6 || (v95 & 0x80000000) == 0)
          {
            goto LABEL_58;
          }

          v23 = __p.__r_.__value_.__l.__size_;
        }

        operator delete(v23);
LABEL_58:
        if (__endptr.__r_.__value_.__l.__data_ != &__str[__str_8[0]])
        {
          v32 = *(this + 2);
          v31 = *(this + 3);
          v33 = 1;
          if (v31 > v32)
          {
            do
            {
              v34 = *v32++;
              if (v34 == 10)
              {
                ++v33;
              }
            }

            while (v32 != v31);
          }

          operator new();
        }

        goto LABEL_122;
      }

      LOWORD(__p.__r_.__value_.__l.__data_) = 4;
      __p.__r_.__value_.__l.__size_ = v21;
      llvm::json::Value::operator=(a2, &__p);
      data_low = LOWORD(__p.__r_.__value_.__l.__data_);
      if (LOWORD(__p.__r_.__value_.__l.__data_) == 8)
      {
        llvm::json::Array::~Array(&__p.__r_.__value_.__r.__words[1]);
        goto LABEL_122;
      }

      if (LOWORD(__p.__r_.__value_.__l.__data_) == 7)
      {
        llvm::json::Object::~Object(&__p.__r_.__value_.__l.__size_);
      }
    }

    if (data_low == 6 && v95 < 0)
    {
      v42 = __p.__r_.__value_.__l.__size_;
LABEL_118:
      operator delete(v42);
    }

LABEL_122:
    v37 = 1;
    if (__str != v98)
    {
      free(__str);
    }

    return v37 & 1;
  }

  if (v12 != 48)
  {
    if (v12 == 59)
    {
      LOWORD(__str) = 1;
      LOBYTE(__str_8[0]) = 0;
      llvm::json::Value::operator=(a2, &__str);
      if (__str == 8)
      {
        if (!__str_8[0])
        {
LABEL_130:
          v51 = *(this + 3);
          v52 = *(this + 4);
          if (v51 == v52)
          {
            v53 = *(this + 3);
            goto LABEL_204;
          }

          v53 = v51 + 1;
          *(this + 3) = v51 + 1;
          if (*v51 != 97)
          {
            goto LABEL_204;
          }

          if (v53 == v52)
          {
            goto LABEL_203;
          }

          v53 = v51 + 2;
          *(this + 3) = v51 + 2;
          if (v51[1] != 108)
          {
            goto LABEL_204;
          }

          if (v53 == v52)
          {
LABEL_203:
            v53 = v52;
            goto LABEL_204;
          }

          v53 = v51 + 3;
          *(this + 3) = v51 + 3;
          if (v51[2] != 115 || (v9 = v53 == v52, v53 = v52, v9) || (v53 = v51 + 4, *(this + 3) = v51 + 4, v51[3] != 101))
          {
LABEL_204:
            v80 = *(this + 2);
            v81 = 1;
            if (v53 > v80)
            {
              do
              {
                v82 = *v80++;
                if (v82 == 10)
                {
                  ++v81;
                }
              }

              while (v80 != v53);
            }

            operator new();
          }

LABEL_196:
          v37 = 1;
          return v37 & 1;
        }

        std::vector<llvm::json::Value>::clear[abi:nn200100](__str_8);
      }

      else
      {
        if (__str == 7)
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::destroyAll(__str_8);
          llvm::deallocate_buffer(__str_8[0], (56 * LODWORD(v98[0])));
        }

        if (__str != 6 || (SHIBYTE(v98[0]) & 0x80000000) == 0)
        {
          goto LABEL_130;
        }
      }

      operator delete(__str_8[0]);
      goto LABEL_130;
    }

LABEL_71:
    if (v11 == 34)
    {
      memset(&__endptr, 0, sizeof(__endptr));
      v37 = v35;
      if (v35)
      {
        v91 = __endptr;
        LOWORD(__str) = 6;
        v38 = SHIBYTE(__endptr.__r_.__value_.__r.__words[2]);
        v39 = &v91;
        v40 = __endptr.__r_.__value_.__l.__size_;
        if ((__endptr.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v39 = __endptr.__r_.__value_.__r.__words[0];
        }

        memset(&__endptr, 0, sizeof(__endptr));
        if ((v38 & 0x80000000) != 0)
        {
          v38 = v40;
        }

        if (v38)
        {
          v41 = 0;
          while ((v39->__r_.__value_.__s.__data_[v41] & 0x80000000) == 0)
          {
            if (v38 == ++v41)
            {
              goto LABEL_81;
            }
          }

          __p.__r_.__value_.__r.__words[0] = v39;
          if (!llvm::isLegalUTF8String(&__p, (v39 + v38), v36))
          {
            if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v89 = &v91;
            }

            else
            {
              v89 = v91.__r_.__value_.__r.__words[0];
            }

            if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v90 = SHIBYTE(v91.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v90 = v91.__r_.__value_.__l.__size_;
            }

            llvm::json::fixUTF8(v89, v90, &__p);
            if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v91.__r_.__value_.__l.__data_);
            }

            v91 = __p;
          }
        }

LABEL_81:
        *__str_8 = *&v91.__r_.__value_.__l.__data_;
        v98[0] = *(&v91.__r_.__value_.__l + 2);
        memset(&v91, 0, sizeof(v91));
        llvm::json::Value::operator=(a2, &__str);
        if (__str == 8)
        {
          llvm::json::Array::~Array(__str_8);
        }

        else
        {
          if (__str == 7)
          {
            llvm::json::Object::~Object(__str_8);
          }

          if (__str == 6 && SHIBYTE(v98[0]) < 0)
          {
            operator delete(__str_8[0]);
          }
        }

        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(__endptr.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__endptr.__r_.__value_.__l.__data_);
      }

      return v37 & 1;
    }

LABEL_106:
    v43 = *(this + 2);
    v44 = 1;
    if (v10 > v43)
    {
      v45 = *(this + 2);
      do
      {
        v46 = *v45++;
        if (v46 == 10)
        {
          ++v44;
        }

        v9 = v43 == v4;
        v43 = v45;
      }

      while (!v9);
    }

    operator new();
  }

  LOWORD(__str) = 8;
  v98[0] = 0;
  *__str_8 = 0uLL;
  llvm::json::Value::operator=(a2, &__str);
  if (__str == 8)
  {
    if (!__str_8[0])
    {
      goto LABEL_143;
    }

    std::vector<llvm::json::Value>::clear[abi:nn200100](__str_8);
    goto LABEL_142;
  }

  if (__str == 7)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::destroyAll(__str_8);
    llvm::deallocate_buffer(__str_8[0], (56 * LODWORD(v98[0])));
  }

  if (__str == 6 && SHIBYTE(v98[0]) < 0)
  {
LABEL_142:
    operator delete(__str_8[0]);
  }

LABEL_143:
  v55 = *a2;
  v54 = (a2 + 8);
  if (v55 != 8)
  {
    v54 = 0;
  }

  v56 = *(this + 3);
  for (j = *(this + 4); v56 != j; *(this + 3) = v56)
  {
    v58 = *v56;
    v7 = v58 > 0x20;
    v59 = (1 << v58) & 0x100002600;
    if (v7 || v59 == 0)
    {
      break;
    }

    ++v56;
  }

  if (v56 == j || *v56 != 93)
  {
    while (1)
    {
      __str = 0;
      v65 = v54[1];
      if (v65 >= v54[2])
      {
        v66 = std::vector<llvm::json::Value>::__emplace_back_slow_path<decltype(nullptr)>(v54);
      }

      else
      {
        *v65 = 0;
        v66 = v65 + 16;
      }

      v54[1] = v66;
      v37 = v67;
      if (!v67)
      {
        break;
      }

      v69 = *(this + 3);
      for (k = *(this + 4); v69 != k; *(this + 3) = v69)
      {
        v70 = *v69;
        v7 = v70 > 0x20;
        v71 = (1 << v70) & 0x100002600;
        if (v7 || v71 == 0)
        {
          break;
        }

        ++v69;
      }

      if (v69 == k)
      {
        goto LABEL_173;
      }

      v64 = v69 + 1;
      *(this + 3) = v69 + 1;
      v73 = *v69;
      if (v73 != 44)
      {
        if (v73 != 93)
        {
LABEL_173:
        }

        return v37 & 1;
      }

      for (; v64 != k; *(this + 3) = v64)
      {
        v61 = *v64;
        v7 = v61 > 0x20;
        v62 = (1 << v61) & 0x100002600;
        if (v7 || v62 == 0)
        {
          break;
        }

        ++v64;
      }
    }
  }

  else
  {
    *(this + 3) = v56 + 1;
    v37 = 1;
  }

  return v37 & 1;
}

void llvm::json::Value::~Value(llvm **this)
{
  v1 = *this;
  if (v1 == 8)
  {
    llvm::json::Array::~Array((this + 1));
  }

  else
  {
    if (v1 == 7)
    {
      llvm::json::Object::~Object(this + 1);
    }

    if (v1 == 6 && *(this + 31) < 0)
    {
      operator delete(this[1]);
    }
  }
}

BOOL llvm::json::isUTF8(const unsigned __int8 **a1, uint64_t a2, unsigned __int8 *a3)
{
  if (!a2)
  {
    return 1;
  }

  v3 = 0;
  while ((*(a1 + v3) & 0x80000000) == 0)
  {
    if (a2 == ++v3)
    {
      return 1;
    }
  }

  v8 = a1;
  isLegalUTF8String = llvm::isLegalUTF8String(&v8, (a1 + a2), a3);
  result = isLegalUTF8String != 0;
  if (!isLegalUTF8String)
  {
    if (a3)
    {
      *a3 = v8 - a1;
    }
  }

  return result;
}

void llvm::json::fixUTF8(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
{
  memset(&v18, 0, sizeof(v18));
  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v16 = 0;
  v17 = a1;
  llvm::ConvertUTF8toUTF32(&v17, a1, &v16, 0, 1);
  begin = v18.__begin_;
  end = v18.__end_;
  v6 = v16 - v18.__begin_;
  v7 = v18.__end_ - v18.__begin_;
  if (v6 <= v7)
  {
    if (v6 < v7)
    {
      end = v16;
      v18.__end_ = v16;
    }
  }

  else
  {
    std::vector<unsigned int>::__append(&v18, v6 - v7);
    begin = v18.__begin_;
    end = v18.__end_;
  }

  v8 = end - begin;
  if ((end - begin) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&a3->__r_.__value_.__s + 23) = v8;
  if (end == begin)
  {
    a3->__r_.__value_.__s.__data_[v8] = 0;
    v9 = v18.__begin_;
    v15 = v18.__begin_;
    size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) == 0)
    {
LABEL_12:
      v11 = (v18.__end_ - v9);
      v12 = a3;
      goto LABEL_16;
    }
  }

  else
  {
    bzero(a3, v8);
    a3->__r_.__value_.__s.__data_[v8] = 0;
    v9 = v18.__begin_;
    v15 = v18.__begin_;
    size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }
  }

  v11 = (v18.__end_ - v9);
  v12 = a3->__r_.__value_.__r.__words[0];
  size = a3->__r_.__value_.__l.__size_;
LABEL_16:
  v14 = v12;
  llvm::ConvertUTF32toUTF8(&v15, &v11[v9], &v14, v12 + size, 0);
  if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = a3->__r_.__value_.__r.__words[0];
  }

  std::string::resize(a3, v14 - v13, 0);
  if (v18.__begin_)
  {
    v18.__end_ = v18.__begin_;
    operator delete(v18.__begin_);
  }
}

llvm::raw_ostream *llvm::json::OStream::value(llvm::json::OStream *this, const llvm::json::Value *a2)
{
  v4 = *a2;
  if (v4 <= 4)
  {
    if (v4 - 2 >= 3)
    {
      if (*a2)
      {
        if (*(*this + 8 * *(this + 2) - 4) == 1)
        {
          v23 = *(this + 20);
          v24 = *(v23 + 4);
          if (v24 >= *(v23 + 3))
          {
            llvm::raw_ostream::write(v23, 44);
          }

          else
          {
            *(v23 + 4) = v24 + 1;
            *v24 = 44;
          }
        }

        if (*(*this + 8 * *(this + 2) - 8) == 1 && *(this + 42))
        {
          llvm::raw_ostream::write(*(this + 20), 10);
          llvm::raw_ostream::indent(*(this + 20), *(this + 43));
        }

        llvm::json::OStream::flushComment(this);
        *(*this + 8 * *(this + 2) - 4) = 1;
        v42 = *(this + 20);
        v43 = *a2 == 1;
        v44 = *(a2 + 8);
        if ((v43 & v44) != 0)
        {
          v40 = "true";
        }

        else
        {
          v40 = "false";
        }

        if ((v43 & v44) != 0)
        {
          v45 = 4;
        }

        else
        {
          v45 = 5;
        }

        v46 = *(v42 + 4);
        if (v45 <= *(v42 + 3) - v46)
        {
          result = memcpy(v46, v40, v45);
          *(v42 + 4) += v45;
          return result;
        }

        result = v42;
        v41 = v45;
      }

      else
      {
        if (*(*this + 8 * *(this + 2) - 4) == 1)
        {
          v14 = *(this + 20);
          v15 = *(v14 + 4);
          if (v15 >= *(v14 + 3))
          {
            llvm::raw_ostream::write(v14, 44);
          }

          else
          {
            *(v14 + 4) = v15 + 1;
            *v15 = 44;
          }
        }

        if (*(*this + 8 * *(this + 2) - 8) == 1 && *(this + 42))
        {
          llvm::raw_ostream::write(*(this + 20), 10);
          llvm::raw_ostream::indent(*(this + 20), *(this + 43));
        }

        llvm::json::OStream::flushComment(this);
        *(*this + 8 * *(this + 2) - 4) = 1;
        result = *(this + 20);
        v39 = *(result + 4);
        if (*(result + 3) - v39 > 3uLL)
        {
          *v39 = 1819047278;
          *(result + 4) += 4;
          return result;
        }

        v40 = "null";
        v41 = 4;
      }

      return llvm::raw_ostream::write(result, v40, v41);
    }

    if (*(*this + 8 * *(this + 2) - 4) == 1)
    {
      v5 = *(this + 20);
      v6 = *(v5 + 4);
      if (v6 >= *(v5 + 3))
      {
        llvm::raw_ostream::write(v5, 44);
        if (*(*this + 8 * *(this + 2) - 8) == 1)
        {
LABEL_7:
          if (*(this + 42))
          {
            llvm::raw_ostream::write(*(this + 20), 10);
            llvm::raw_ostream::indent(*(this + 20), *(this + 43));
          }
        }

LABEL_45:
        llvm::json::OStream::flushComment(this);
        *(*this + 8 * *(this + 2) - 4) = 1;
        v25 = *a2;
        v26 = *(this + 20);
        if (v25 == 4)
        {
          v28 = *(a2 + 1);

          return llvm::raw_ostream::operator<<(v26, v28);
        }

        else if (v25 == 3)
        {
          v27 = *(a2 + 1);

          return llvm::raw_ostream::operator<<(v26, v27);
        }

        else
        {
          v29 = *(a2 + 1);
          if (v25 != 2)
          {
            v29 = 0.0;
          }

          v47 = &unk_2868A0DE8;
          v48 = "%.*g";
          v49 = 17;
          v50 = v29;
          return llvm::raw_ostream::operator<<(v26, &v47);
        }
      }

      *(v5 + 4) = v6 + 1;
      *v6 = 44;
    }

    if (*(*this + 8 * *(this + 2) - 8) == 1)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

  if (v4 - 5 >= 2)
  {
    if (v4 == 7)
    {
      v47 = a2;
      v48 = this;
      llvm::json::OStream::objectBegin(this);
      llvm::json::OStream::value(llvm::json::Value const&)::$_1::operator()(&v47);
      v9 = *(this + 42);
      *(this + 43) -= v9;
      if (*(*this + 8 * *(this + 2) - 4) == 1 && v9 != 0)
      {
        llvm::raw_ostream::write(*(this + 20), 10);
        llvm::raw_ostream::indent(*(this + 20), *(this + 43));
      }

      result = *(this + 20);
      v12 = *(result + 4);
      if (v12 < *(result + 3))
      {
        *(result + 4) = v12 + 1;
        v13 = 125;
LABEL_40:
        *v12 = v13;
LABEL_74:
        --*(this + 2);
        return result;
      }

      v38 = 125;
    }

    else
    {
      llvm::json::OStream::arrayBegin(this);
      v17 = *a2;
      v16 = a2 + 8;
      if (v17 == 8)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      v19 = *v18;
      v20 = *(v18 + 1);
      if (*v18 != v20)
      {
        do
        {
          llvm::json::OStream::value(this, v19);
          v19 = (v19 + 32);
        }

        while (v19 != v20);
      }

      v21 = *(this + 42);
      *(this + 43) -= v21;
      if (*(*this + 8 * *(this + 2) - 4) == 1 && v21 != 0)
      {
        llvm::raw_ostream::write(*(this + 20), 10);
        llvm::raw_ostream::indent(*(this + 20), *(this + 43));
      }

      result = *(this + 20);
      v12 = *(result + 4);
      if (v12 < *(result + 3))
      {
        *(result + 4) = v12 + 1;
        v13 = 93;
        goto LABEL_40;
      }

      v38 = 93;
    }

    result = llvm::raw_ostream::write(result, v38);
    goto LABEL_74;
  }

  if (*(*this + 8 * *(this + 2) - 4) != 1)
  {
    goto LABEL_13;
  }

  v7 = *(this + 20);
  v8 = *(v7 + 4);
  if (v8 < *(v7 + 3))
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 44;
LABEL_13:
    if (*(*this + 8 * *(this + 2) - 8) == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

  llvm::raw_ostream::write(v7, 44);
  if (*(*this + 8 * *(this + 2) - 8) == 1)
  {
LABEL_14:
    if (*(this + 42))
    {
      llvm::raw_ostream::write(*(this + 20), 10);
      llvm::raw_ostream::indent(*(this + 20), *(this + 43));
    }
  }

LABEL_57:
  llvm::json::OStream::flushComment(this);
  *(*this + 8 * *(this + 2) - 4) = 1;
  v31 = *(this + 20);
  v32 = *a2;
  if (v32 == 6)
  {
    v35 = *(a2 + 1);
    v34 = a2 + 8;
    v33 = v35;
    v36 = v34[23];
    if (v36 >= 0)
    {
      v37 = v34;
    }

    else
    {
      v37 = v33;
    }

    if (v36 >= 0)
    {
      v30 = v34[23];
    }

    else
    {
      v30 = *(v34 + 1);
    }
  }

  else if (v32 == 5)
  {
    v37 = *(a2 + 1);
    v30 = *(a2 + 2);
  }

  else
  {
    v37 = 0;
  }

  return llvm::json::quote(v31, v37, v30);
}

llvm::raw_ostream *llvm::json::OStream::valueBegin(llvm::json::OStream *this)
{
  if (*(*this + 8 * *(this + 2) - 4) != 1)
  {
LABEL_4:
    if (*(*this + 8 * *(this + 2) - 8) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v2 = *(this + 20);
  v3 = *(v2 + 4);
  if (v3 < *(v2 + 3))
  {
    *(v2 + 4) = v3 + 1;
    *v3 = 44;
    goto LABEL_4;
  }

  llvm::raw_ostream::write(v2, 44);
  if (*(*this + 8 * *(this + 2) - 8) != 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (*(this + 42))
  {
    llvm::raw_ostream::write(*(this + 20), 10);
    llvm::raw_ostream::indent(*(this + 20), *(this + 43));
  }

LABEL_8:
  result = llvm::json::OStream::flushComment(this);
  *(*this + 8 * *(this + 2) - 4) = 1;
  return result;
}

llvm::raw_ostream *llvm::json::quote(llvm::raw_ostream *result, unsigned __int8 *a2, uint64_t a3)
{
  v4 = a3;
  v6 = result;
  v7 = *(result + 4);
  if (v7 < *(result + 3))
  {
    *(result + 4) = v7 + 1;
    *v7 = 34;
    if (!a3)
    {
      goto LABEL_35;
    }

    while (1)
    {
LABEL_8:
      v8 = *a2;
      if (v8 == 92 || v8 == 34)
      {
        v9 = *(v6 + 4);
        if (v9 >= *(v6 + 3))
        {
          result = llvm::raw_ostream::write(v6, 92);
        }

        else
        {
          *(v6 + 4) = v9 + 1;
          *v9 = 92;
        }
      }

      else if (v8 < 0x20)
      {
        v13 = *(v6 + 4);
        if (v13 >= *(v6 + 3))
        {
          result = llvm::raw_ostream::write(v6, 92);
          v15 = *(v6 + 3);
          v14 = *(v6 + 4);
          if (v8 != 13)
          {
LABEL_19:
            if (v8 == 10)
            {
              if (v14 < v15)
              {
                *(v6 + 4) = v14 + 1;
                *v14 = 110;
                goto LABEL_7;
              }

              v11 = v6;
              v12 = 110;
            }

            else
            {
              if (v8 != 9)
              {
                if (v14 >= v15)
                {
                  llvm::raw_ostream::write(v6, 117);
                }

                else
                {
                  *(v6 + 4) = v14 + 1;
                  *v14 = 117;
                }

                v3 = v3 & 0xFFFFFFFFFFFFFF00 | 1;
                result = llvm::write_hex(v6, v8, 1, 4uLL, v3);
                goto LABEL_7;
              }

              if (v14 < v15)
              {
                *(v6 + 4) = v14 + 1;
                *v14 = 116;
                goto LABEL_7;
              }

              v11 = v6;
              v12 = 116;
            }

            goto LABEL_16;
          }
        }

        else
        {
          *(v6 + 4) = v13 + 1;
          *v13 = 92;
          v15 = *(v6 + 3);
          v14 = *(v6 + 4);
          if (v8 != 13)
          {
            goto LABEL_19;
          }
        }

        if (v14 < v15)
        {
          *(v6 + 4) = v14 + 1;
          *v14 = 114;
          goto LABEL_7;
        }

        v11 = v6;
        v12 = 114;
        goto LABEL_16;
      }

      v10 = *(v6 + 4);
      if (v10 >= *(v6 + 3))
      {
        v11 = v6;
        v12 = v8;
LABEL_16:
        result = llvm::raw_ostream::write(v11, v12);
        goto LABEL_7;
      }

      *(v6 + 4) = v10 + 1;
      *v10 = v8;
LABEL_7:
      ++a2;
      if (!--v4)
      {
        goto LABEL_35;
      }
    }
  }

  result = llvm::raw_ostream::write(result, 34);
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_35:
  v16 = *(v6 + 4);
  if (v16 >= *(v6 + 3))
  {

    return llvm::raw_ostream::write(v6, 34);
  }

  else
  {
    *(v6 + 4) = v16 + 1;
    *v16 = 34;
  }

  return result;
}

void *llvm::json::OStream::newline(void *this)
{
  if (*(this + 42))
  {
    v1 = this;
    llvm::raw_ostream::write(this[20], 10);
    v2 = v1[20];
    v3 = *(v1 + 43);

    return llvm::raw_ostream::indent(v2, v3);
  }

  return this;
}

llvm::raw_ostream *llvm::json::OStream::flushComment(llvm::raw_ostream *this)
{
  if (!*(this + 19))
  {
    return this;
  }

  v1 = this;
  v2 = *(this + 20);
  v3 = *(this + 42);
  if (v3)
  {
      v10 = *(v1 + 20);
      if (v9 == -1)
      {
        v16 = *(v1 + 18);
        v17 = *(v1 + 19);
        if (v17 <= v10[3] - v10[4])
        {
          if (v17)
          {
            v18 = *(v1 + 20);
            v19 = *(v1 + 19);
            memcpy(v10[4], v16, v17);
            *(v18 + 32) += v19;
          }
        }

        else
        {
          llvm::raw_ostream::write(v10, v16, v17);
        }

        *(v1 + 18) = "";
        *(v1 + 19) = 0;
        goto LABEL_33;
      }

      v11 = *(v1 + 19);
      if (v11 <= v9)
      {
        v12 = *(v1 + 18);
        v13 = v10[4];
        if (v11 > v10[3] - v13)
        {
LABEL_26:
          v10 = llvm::raw_ostream::write(v10, v12, v11);
          v13 = v10[4];
          if (v10[3] - v13 <= 2uLL)
          {
            goto LABEL_27;
          }

          goto LABEL_13;
        }
      }

      else
      {
        v12 = *(v1 + 18);
        v11 = v9;
        v13 = v10[4];
        if (v9 > v10[3] - v13)
        {
          goto LABEL_26;
        }
      }

      if (v11)
      {
        v14 = *(v1 + 20);
        v15 = v11;
        memcpy(v13, v12, v11);
        v10 = v14;
        v13 = (v14[4] + v15);
        v14[4] = v13;
      }

      if (v10[3] - v13 <= 2uLL)
      {
LABEL_27:
        llvm::raw_ostream::write(v10, "* /", 3uLL);
        goto LABEL_14;
      }

LABEL_13:
      v13[2] = 47;
      *v13 = 8234;
      v10[4] += 3;
LABEL_14:
      v7 = *(v1 + 19);
      if (v7 >= v9 + 2)
      {
        v8 = v9 + 2;
      }

      else
      {
        v8 = *(v1 + 19);
      }

      *(v1 + 18) += v8;
      *(v1 + 19) = v7 - v8;
      if (v7 <= v9 + 2)
      {
        goto LABEL_33;
      }
    }
  }

  llvm::raw_ostream::write(v2, v4, v5);
  if (*(v1 + 19))
  {
    goto LABEL_18;
  }

LABEL_33:
  v20 = *(v1 + 20);
  v21 = *(v1 + 42);
  if (v21)
  {
    v22 = " */";
  }

  else
  {
    v22 = "*/";
  }

  if (v21)
  {
    v23 = 3;
  }

  else
  {
    v23 = 2;
  }

  v24 = *(v20 + 32);
  if (v23 <= *(v20 + 24) - v24)
  {
    this = memcpy(v24, v22, v23);
    *(v20 + 32) += v23;
    v25 = *(v1 + 2);
    if (v25 < 2)
    {
      goto LABEL_44;
    }
  }

  else
  {
    this = llvm::raw_ostream::write(*(v1 + 20), v22, v23);
    v25 = *(v1 + 2);
    if (v25 < 2)
    {
LABEL_44:
      if (*(v1 + 42))
      {
        llvm::raw_ostream::write(*(v1 + 20), 10);
        v26 = *(v1 + 20);
        v27 = *(v1 + 43);

        return llvm::raw_ostream::indent(v26, v27);
      }

      return this;
    }
  }

  if (*(*v1 + 8 * v25 - 8))
  {
    goto LABEL_44;
  }

  if (*(v1 + 42))
  {
    this = *(v1 + 20);
    v28 = *(this + 4);
    if (v28 >= *(this + 3))
    {

      return llvm::raw_ostream::write(this, 32);
    }

    else
    {
      *(this + 4) = v28 + 1;
      *v28 = 32;
    }
  }

  return this;
}

uint64_t llvm::json::OStream::comment(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 144) = a2;
  *(result + 152) = a3;
  return result;
}

llvm::raw_ostream *llvm::json::OStream::arrayBegin(llvm::json::OStream *this)
{
  if (*(*this + 8 * *(this + 2) - 4) == 1)
  {
    v2 = *(this + 20);
    v3 = *(v2 + 4);
    if (v3 >= *(v2 + 3))
    {
      llvm::raw_ostream::write(v2, 44);
      if (*(*this + 8 * *(this + 2) - 8) != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }

    *(v2 + 4) = v3 + 1;
    *v3 = 44;
  }

  if (*(*this + 8 * *(this + 2) - 8) != 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (*(this + 42))
  {
    llvm::raw_ostream::write(*(this + 20), 10);
    llvm::raw_ostream::indent(*(this + 20), *(this + 43));
  }

LABEL_8:
  llvm::json::OStream::flushComment(this);
  v4 = *(this + 2);
  v5 = *(this + 3);
  v6 = (*this + 8 * v4);
  *(v6 - 4) = 1;
  if (v4 >= v5)
  {
    llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::growAndEmplaceBack<>(this);
    v7 = *(this + 2);
  }

  else
  {
    *v6 = 0;
    v7 = *(this + 2) + 1;
    *(this + 2) = v7;
  }

  *(*this + 8 * v7 - 8) = 1;
  *(this + 43) += *(this + 42);
  result = *(this + 20);
  v9 = *(result + 4);
  if (v9 >= *(result + 3))
  {

    return llvm::raw_ostream::write(result, 91);
  }

  else
  {
    *(result + 4) = v9 + 1;
    *v9 = 91;
  }

  return result;
}

llvm::raw_ostream *llvm::json::OStream::arrayEnd(llvm::json::OStream *this)
{
  v2 = *(this + 42);
  *(this + 43) -= v2;
  if (*(*this + 8 * *(this + 2) - 4) == 1 && v2 != 0)
  {
    llvm::raw_ostream::write(*(this + 20), 10);
    llvm::raw_ostream::indent(*(this + 20), *(this + 43));
  }

  result = *(this + 20);
  v5 = *(result + 4);
  if (v5 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 93);
  }

  else
  {
    *(result + 4) = v5 + 1;
    *v5 = 93;
  }

  --*(this + 2);
  return result;
}

llvm::raw_ostream *llvm::json::OStream::objectBegin(llvm::json::OStream *this)
{
  if (*(*this + 8 * *(this + 2) - 4) == 1)
  {
    v2 = *(this + 20);
    v3 = *(v2 + 4);
    if (v3 >= *(v2 + 3))
    {
      llvm::raw_ostream::write(v2, 44);
      if (*(*this + 8 * *(this + 2) - 8) != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }

    *(v2 + 4) = v3 + 1;
    *v3 = 44;
  }

  if (*(*this + 8 * *(this + 2) - 8) != 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (*(this + 42))
  {
    llvm::raw_ostream::write(*(this + 20), 10);
    llvm::raw_ostream::indent(*(this + 20), *(this + 43));
  }

LABEL_8:
  llvm::json::OStream::flushComment(this);
  v4 = *(this + 2);
  v5 = *(this + 3);
  v6 = (*this + 8 * v4);
  *(v6 - 4) = 1;
  if (v4 >= v5)
  {
    llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::growAndEmplaceBack<>(this);
    v7 = *(this + 2);
  }

  else
  {
    *v6 = 0;
    v7 = *(this + 2) + 1;
    *(this + 2) = v7;
  }

  *(*this + 8 * v7 - 8) = 2;
  *(this + 43) += *(this + 42);
  result = *(this + 20);
  v9 = *(result + 4);
  if (v9 >= *(result + 3))
  {

    return llvm::raw_ostream::write(result, 123);
  }

  else
  {
    *(result + 4) = v9 + 1;
    *v9 = 123;
  }

  return result;
}

llvm::raw_ostream *llvm::json::OStream::objectEnd(llvm::json::OStream *this)
{
  v2 = *(this + 42);
  *(this + 43) -= v2;
  if (*(*this + 8 * *(this + 2) - 4) == 1 && v2 != 0)
  {
    llvm::raw_ostream::write(*(this + 20), 10);
    llvm::raw_ostream::indent(*(this + 20), *(this + 43));
  }

  result = *(this + 20);
  v5 = *(result + 4);
  if (v5 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 125);
  }

  else
  {
    *(result + 4) = v5 + 1;
    *v5 = 125;
  }

  --*(this + 2);
  return result;
}

llvm::raw_ostream *llvm::json::OStream::attributeBegin(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  if (*(*a1 + 8 * *(a1 + 8) - 4) != 1)
  {
LABEL_4:
    if (!*(a1 + 168))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = *(a1 + 160);
  v7 = *(v6 + 4);
  if (v7 < *(v6 + 3))
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 44;
    goto LABEL_4;
  }

  llvm::raw_ostream::write(v6, 44);
  if (*(a1 + 168))
  {
LABEL_5:
    llvm::raw_ostream::write(*(a1 + 160), 10);
    llvm::raw_ostream::indent(*(a1 + 160), *(a1 + 172));
  }

LABEL_6:
  llvm::json::OStream::flushComment(a1);
  v9 = *(a1 + 8);
  v10 = (*a1 + 8 * v9);
  *(v10 - 4) = 1;
  if (v9 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::growAndEmplaceBack<>(a1);
    *(*a1 + 8 * *(a1 + 8) - 8) = 0;
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_11:
    llvm::json::quote(*(a1 + 160), a2, a3);
    goto LABEL_12;
  }

  *v10 = 0;
  v11 = *(a1 + 8) + 1;
  *(a1 + 8) = v11;
  *(*a1 + 8 * v11 - 8) = 0;
  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_8:
  v12 = 0;
  while ((a2[v12] & 0x80000000) == 0)
  {
    if (a3 == ++v12)
    {
      goto LABEL_11;
    }
  }

  __p.__r_.__value_.__r.__words[0] = a2;
  if (llvm::isLegalUTF8String(&__p, &a2[a3], v8))
  {
    goto LABEL_11;
  }

  v14 = *(a1 + 160);
  llvm::json::fixUTF8(a2, a3, &__p);
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
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  llvm::json::quote(v14, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_12:
  result = llvm::raw_ostream::write(*(a1 + 160), 58);
  if (*(a1 + 168))
  {
    return llvm::raw_ostream::write(*(a1 + 160), 32);
  }

  return result;
}

uint64_t llvm::json::OStream::rawValueBegin(llvm::json::OStream *this)
{
  if (*(*this + 8 * *(this + 2) - 4) == 1)
  {
    v2 = *(this + 20);
    v3 = *(v2 + 4);
    if (v3 >= *(v2 + 3))
    {
      llvm::raw_ostream::write(v2, 44);
      if (*(*this + 8 * *(this + 2) - 8) != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }

    *(v2 + 4) = v3 + 1;
    *v3 = 44;
  }

  if (*(*this + 8 * *(this + 2) - 8) != 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (*(this + 42))
  {
    llvm::raw_ostream::write(*(this + 20), 10);
    llvm::raw_ostream::indent(*(this + 20), *(this + 43));
  }

LABEL_8:
  llvm::json::OStream::flushComment(this);
  v4 = *(this + 2);
  v5 = *(this + 3);
  v6 = (*this + 8 * v4);
  *(v6 - 4) = 1;
  if (v4 >= v5)
  {
    llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::growAndEmplaceBack<>(this);
    v7 = *(this + 2);
  }

  else
  {
    *v6 = 0;
    v7 = *(this + 2) + 1;
    *(this + 2) = v7;
  }

  *(*this + 8 * v7 - 8) = 3;
  return *(this + 20);
}

void llvm::format_provider<llvm::json::Value,void>::format(llvm::json::Value *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7[0] = 0;
    llvm::getAsUnsignedInteger(a3, a4, 0xA, v7);
    v4 = v7[0];
  }

  v8[17] = 0;
  v8[18] = a2;
  v9 = v4;
  v10 = 0;
  v8[16] = 0;
  v7[0] = v8;
  v7[1] = 0x1000000001;
  v8[0] = 0;
  llvm::json::OStream::value(v7, a1);
  if (v7[0] != v8)
  {
    free(v7[0]);
  }
}

void llvm::json::Array::~Array(llvm::json::Array *this)
{
  if (*this)
  {
    std::vector<llvm::json::Value>::clear[abi:nn200100](this);
    operator delete(*this);
  }
}

llvm ***std::vector<llvm::json::Value>::~vector[abi:nn200100](llvm ***a1)
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
        v3 -= 4;
        std::allocator_traits<std::allocator<llvm::json::Value>>::destroy[abi:nn200100]<llvm::json::Value,0>(a1, v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::vector<llvm::json::Value>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = a1[1];
  v3 = *a1;
  while (v2 != v3)
  {
    llvm::json::Value::~Value((v2 - 32));
  }

  a1[1] = v3;
}

void std::allocator_traits<std::allocator<llvm::json::Value>>::destroy[abi:nn200100]<llvm::json::Value,0>(uint64_t a1, llvm **a2)
{
  v2 = *a2;
  if (v2 == 8)
  {
    llvm::json::Array::~Array((a2 + 1));
  }

  else
  {
    if (v2 == 7)
    {
      llvm::json::Object::~Object(a2 + 1);
    }

    if (v2 == 6 && *(a2 + 31) < 0)
    {
      operator delete(a2[1]);
    }
  }
}

void llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::~DenseMap(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = 56 * v2;
    v5 = (v3 + 24);
    do
    {
      if (*(v5 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        llvm::json::Value::destroy(v5);
      }

      v6 = *(v5 - 3);
      *(v5 - 3) = 0;
      if (v6)
      {
        if (*(v6 + 23) < 0)
        {
          operator delete(*v6);
        }

        MEMORY[0x259C63180]();
      }

      v5 = (v5 + 56);
      v4 -= 56;
    }

    while (v4);
    v3 = *a1;
    v7 = 56 * *(a1 + 16);
  }

  else
  {
    v7 = 0;
  }

  llvm::deallocate_buffer(v3, v7);
}

void _ZZZNK4llvm4json4Path4Root17printErrorContextERKNS0_5ValueERNS_11raw_ostreamEENK3__0clIS8_EEDaS5_NS_8ArrayRefINS1_7SegmentEEERT_ENKUlvE_clEv(uint64_t *a1)
{
  v2 = *a1;
  *(&v23.__r_.__value_.__s + 23) = 7;
  strcpy(&v23, "error: ");
  std::string::append(&v23, *(v2 + 16), *(v2 + 24));
  size = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
  v4 = v23.__r_.__value_.__r.__words[0];
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v23;
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  v6 = a1[1];
  v5 = a1[2];
  *(v6 + 144) = v4;
  *(v6 + 152) = size;
  v7 = *v5;
  if (v7 < 7)
  {
    llvm::json::OStream::value(v6, v5);
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_34:
    operator delete(v23.__r_.__value_.__l.__data_);
    return;
  }

  if (v7 == 7)
  {
    v24[0] = v5;
    v24[1] = v6;
    llvm::json::OStream::objectBegin(v6);
    llvm::function_ref<void ()(void)>::callback_fn<llvm::json::abbreviateChildren(llvm::json::Value const&,llvm::json::OStream &)::$_1>(v24);
    v8 = *(v6 + 168);
    *(v6 + 172) -= v8;
    if (*(*v6 + 8 * *(v6 + 8) - 4) == 1 && v8 != 0)
    {
      llvm::raw_ostream::write(*(v6 + 160), 10);
      llvm::raw_ostream::indent(*(v6 + 160), *(v6 + 172));
    }

    v10 = *(v6 + 160);
    v11 = *(v10 + 4);
    if (v11 >= *(v10 + 3))
    {
      llvm::raw_ostream::write(v10, 125);
      --*(v6 + 8);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_34;
      }

      return;
    }

    *(v10 + 4) = v11 + 1;
    v12 = 125;
    goto LABEL_29;
  }

  v13 = v5;
  llvm::json::OStream::arrayBegin(v6);
  v16 = *v13;
  v15 = (v13 + 8);
  if (v16 == 8)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = *v17;
  v19 = v17[1];
  if (*v17 != v19)
  {
    do
    {
      llvm::json::abbreviate(v18, v6, v14);
      v18 = (v18 + 32);
    }

    while (v18 != v19);
  }

  v20 = *(v6 + 168);
  *(v6 + 172) -= v20;
  if (*(*v6 + 8 * *(v6 + 8) - 4) == 1 && v20 != 0)
  {
    llvm::raw_ostream::write(*(v6 + 160), 10);
    llvm::raw_ostream::indent(*(v6 + 160), *(v6 + 172));
  }

  v22 = *(v6 + 160);
  v11 = *(v22 + 4);
  if (v11 < *(v22 + 3))
  {
    *(v22 + 4) = v11 + 1;
    v12 = 93;
LABEL_29:
    *v11 = v12;
    --*(v6 + 8);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_34;
    }

    return;
  }

  llvm::raw_ostream::write(v22, 93);
  --*(v6 + 8);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_34;
  }
}

void llvm::json::abbreviate(llvm::json *this, const llvm::json::Value *a2, llvm::json::OStream *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (v5 <= 4)
  {
LABEL_2:

    llvm::json::OStream::value(a2, this);
    return;
  }

  if (*this <= 6u)
  {
    if (v5 == 5)
    {
      v6 = *(this + 1);
      if (*(this + 2) <= 0x27uLL)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v10 = *(this + 31);
      if (v10 >= 0)
      {
        v6 = this + 8;
      }

      else
      {
        v6 = *(this + 1);
      }

      v11 = *(this + 2);
      if (v10 >= 0)
      {
        v11 = *(this + 31);
      }

      if (v11 <= 0x27)
      {
        goto LABEL_2;
      }
    }

    llvm::json::fixUTF8(v6, 0x25uLL, &v23);
    std::string::append(&v23, "...");
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = v23;
    }

    v25 = 6;
    size = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
    v18 = &v22;
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v19 = 0;
      while ((v18->__r_.__value_.__s.__data_[v19] & 0x80000000) == 0)
      {
        if (size == ++v19)
        {
          goto LABEL_39;
        }
      }

      v24.__r_.__value_.__r.__words[0] = v18;
      if (!llvm::isLegalUTF8String(&v24, (v18 + size), v12))
      {
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v22;
        }

        else
        {
          v20 = v22.__r_.__value_.__r.__words[0];
        }

        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = v22.__r_.__value_.__l.__size_;
        }

        llvm::json::fixUTF8(v20, v21, &v24);
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        v22 = v24;
      }
    }

LABEL_39:
    __p = v22;
    memset(&v22, 0, sizeof(v22));
    llvm::json::OStream::value(a2, &v25);
    if (v25 == 8)
    {
      if (!__p.__r_.__value_.__r.__words[0])
      {
        goto LABEL_48;
      }

      std::vector<llvm::json::Value>::clear[abi:nn200100](&__p);
    }

    else
    {
      if (v25 == 7)
      {
        llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::destroyAll(&__p);
        llvm::deallocate_buffer(__p.__r_.__value_.__l.__data_, (56 * LODWORD(__p.__r_.__value_.__r.__words[2])));
      }

      if (v25 != 6 || (SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_48:
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            return;
          }
        }

        else if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        operator delete(v23.__r_.__value_.__l.__data_);
        return;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_48;
  }

  if (v5 == 7)
  {
    v7 = "{ ... }";
    v8 = "{}";
    v9 = *(this + 4) == 0;
  }

  else
  {
    v7 = "[ ... ]";
    v8 = "[]";
    v9 = *(this + 1) == *(this + 2);
  }

  if (v9)
  {
    v13 = v8;
  }

  else
  {
    v13 = v7;
  }

  if (v9)
  {
    v14 = 2;
  }

  else
  {
    v14 = 7;
  }

  llvm::json::OStream::rawValueBegin(a2);
  v15 = *(a2 + 20);
  v16 = *(v15 + 32);
  if (v14 <= *(v15 + 24) - v16)
  {
    memcpy(v16, v13, v14);
    *(v15 + 32) += v14;
  }

  else
  {
    llvm::raw_ostream::write(*(a2 + 20), v13, v14);
  }

  --*(a2 + 2);
}

void llvm::function_ref<void ()(void)>::callback_fn<llvm::json::abbreviateChildren(llvm::json::Value const&,llvm::json::OStream &)::$_1>(void *a1)
{
  if (**a1 == 7)
  {
    v1 = *a1 + 8;
  }

  else
  {
    v1 = 0;
  }

  if (*(v1 + 8))
  {
    v2 = *v1;
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = 56 * v3;
      v5 = v2;
      while (*(v5 + 8) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v5 += 56;
        v4 -= 56;
        if (!v4)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v5 = v2;
    }

    v6 = v2 + 56 * v3;
    if (v5 != v6)
    {
      operator new();
    }
  }

LABEL_13:
  std::__introsort<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,false>(0, 0, 0, 1);
}

void _ZN4llvm12function_refIFvvEE11callback_fnIZZNKS_4json4Path4Root17printErrorContextERKNS4_5ValueERNS_11raw_ostreamEENK3__0clISC_EEDaS9_NS_8ArrayRefINS5_7SegmentEEERT_EUlvE0_EEvl(uint64_t ***a1)
{
  v1 = **a1;
  if (*(v1 + 2))
  {
    v2 = *v1;
    v3 = *(v1 + 4);
    if (v3)
    {
      v4 = 56 * v3;
      v5 = v2;
      while (*(v5 + 8) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v5 += 56;
        v4 -= 56;
        if (!v4)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v5 = v2;
    }

    v6 = v2 + 56 * v3;
    if (v5 != v6)
    {
      operator new();
    }
  }

LABEL_10:
  std::__introsort<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,false>(0, 0, 0, 1);
}

void llvm::json::anonymous namespace::Parser::parseError(llvm::json::_anonymous_namespace_::Parser *this, const char *a2)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  v4 = 1;
  if (v2 > v3)
  {
    do
    {
      v5 = *v3++;
      if (v5 == 10)
      {
        ++v4;
      }
    }

    while (v3 != v2);
  }

  operator new();
}

llvm::raw_ostream *llvm::json::ParseError::log(llvm::json::ParseError *this, llvm::raw_ostream *a2)
{
  v3[0] = "[{0}:{1}, byte={2}]: {3}";
  v3[1] = 24;
  v3[2] = v9;
  v3[3] = 4;
  v4 = 1;
  v5[0] = &unk_28689E5A0;
  v5[1] = this + 16;
  v6[0] = &unk_28689E5A0;
  v6[1] = this + 20;
  v7[0] = &unk_28689E5A0;
  v7[1] = this + 24;
  v8[0] = &unk_2868A0DA0;
  v8[1] = this + 8;
  v9[0] = v5;
  v9[1] = v6;
  v9[2] = v7;
  v9[3] = v8;
  return llvm::raw_ostream::operator<<(a2, v3);
}

void *llvm::support::detail::provider_format_adapter<char const* const&>::format(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (!a4)
  {
    v6 = -1;
    v7 = *v5;
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_13:
    v9 = 0;
    result = a2[4];
    goto LABEL_14;
  }

  v13 = 0;
  if (llvm::getAsUnsignedInteger(a3, a4, 0xA, &v13))
  {
    v6 = -1;
  }

  else
  {
    v6 = v13;
  }

  v7 = *v5;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  v8 = strlen(v7);
  if (v8 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  result = a2[4];
  if (v9 > a2[3] - result)
  {
    return llvm::raw_ostream::write(a2, v7, v9);
  }

LABEL_14:
  if (v9)
  {
    v11 = v7;
    v12 = v9;
    result = memcpy(result, v11, v9);
    a2[4] += v12;
  }

  return result;
}

unsigned __int16 *llvm::json::Value::operator=(unsigned __int16 *result, unsigned __int16 *a2)
{
  v3 = *result;
  if (v3 == 8)
  {
    v5 = (result + 4);
    v6 = *(result + 1);
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = *(result + 2);
    v4 = *(result + 1);
    if (v7 != v6)
    {
      v8 = result;
      do
      {
        v7 -= 4;
        std::allocator_traits<std::allocator<llvm::json::Value>>::destroy[abi:nn200100]<llvm::json::Value,0>(v5, v7);
      }

      while (v7 != v6);
      v4 = *v5;
      result = v8;
    }

    *(result + 2) = v6;
    goto LABEL_13;
  }

  if (v3 == 7)
  {
    llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::~DenseMap((result + 4));
  }

  if (v3 == 6 && *(result + 31) < 0)
  {
    v4 = *(result + 1);
LABEL_13:
    v9 = result;
    operator delete(v4);
    result = v9;
  }

LABEL_14:
  v10 = *a2;
  *result = v10;
  if (v10 > 4)
  {
    if (v10 > 6)
    {
      if (v10 == 7)
      {
        *(result + 1) = 0;
        *(result + 2) = 0;
        *(result + 6) = 0;
        *(result + 1) = *(a2 + 1);
        *(a2 + 1) = 0;
        *(result + 4) = *(a2 + 4);
        *(a2 + 4) = 0;
        v13 = *(result + 5);
        *(result + 5) = *(a2 + 5);
        *(a2 + 5) = v13;
        v14 = *(result + 6);
        *(result + 6) = *(a2 + 6);
        *(a2 + 6) = v14;
        *a2 = 0;
      }

      else if (v10 == 8)
      {
        *(result + 1) = 0;
        *(result + 2) = 0;
        *(result + 3) = 0;
        *(result + 4) = *(a2 + 4);
        *(result + 3) = *(a2 + 3);
        *(a2 + 1) = 0;
        *(a2 + 2) = 0;
        *(a2 + 3) = 0;
        *a2 = 0;
      }
    }

    else if (v10 == 5)
    {
      *(result + 4) = *(a2 + 4);
    }

    else
    {
      v12 = *(a2 + 4);
      *(result + 3) = *(a2 + 3);
      *(result + 4) = v12;
      *(a2 + 2) = 0;
      *(a2 + 3) = 0;
      *(a2 + 1) = 0;
      *a2 = 0;
    }
  }

  else
  {
    v11 = *(a2 + 4);
    *(result + 3) = *(a2 + 3);
    *(result + 4) = v11;
  }

  return result;
}

uint64_t llvm::json::anonymous namespace::Parser::parseString(llvm::json::_anonymous_namespace_::Parser *this, std::string *a2)
{
  v4 = *(this + 3);
  v5 = *(this + 4);
  if (v4 == v5)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    *(this + 3) = v4 + 1;
    v6 = *v4;
    if (v6 == 34)
    {
      return 1;
    }

    ++v4;
  }

  v8 = "Invalid escape sequence";
  while (1)
  {
    if (v4 == v5)
    {
      v8 = "Unterminated string";
      goto LABEL_34;
    }

    if (v6 < 0x20u)
    {
      v8 = "Control character in string";
LABEL_34:
    }

    if (v6 != 92)
    {
      goto LABEL_11;
    }

    *(this + 3) = v4 + 1;
    v6 = *v4;
    if (v6 <= 0x65)
    {
      if (v6 - 34 > 0x3A || ((1 << (v6 - 34)) & 0x400000000002001) == 0)
      {
        if (v6 != 98)
        {
          goto LABEL_34;
        }

        LOBYTE(v6) = 8;
      }

      goto LABEL_11;
    }

    if (*v4 <= 0x71u)
    {
      if (v6 == 102)
      {
        LOBYTE(v6) = 12;
      }

      else
      {
        if (v6 != 110)
        {
          goto LABEL_34;
        }

        LOBYTE(v6) = 10;
      }

      goto LABEL_11;
    }

    if (v6 == 114)
    {
      LOBYTE(v6) = 13;
      goto LABEL_11;
    }

    if (v6 == 116)
    {
      LOBYTE(v6) = 9;
LABEL_11:
      std::string::push_back(a2, v6);
      goto LABEL_12;
    }

    if (v6 != 117)
    {
      goto LABEL_34;
    }

    {
      return 0;
    }

LABEL_12:
    v4 = *(this + 3);
    v5 = *(this + 4);
    if (v4 == v5)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      *(this + 3) = v4 + 1;
      v6 = *v4++;
      if (v6 == 34)
      {
        return 1;
      }
    }
  }
}

uint64_t llvm::json::anonymous namespace::Parser::parseUnicode(void *a1, std::string *a2)
{
  v12 = 0;
  result = 0;
  if (v4)
  {
    LOWORD(v6) = v12;
    if (((v12 + 0x2000) >> 11) >= 0x1Fu)
    {
      while ((v6 >> 10) < 0x37u)
      {
        v9 = a1[3];
        if ((v9 + 2) > a1[4] || *v9 != 92 || v9[1] != 117)
        {
          return 1;
        }

        a1[3] = v9 + 2;
        v11 = 0;
        if (!result)
        {
          return result;
        }

        if (((v11 + 0x2000) >> 10) >= 0x3Fu)
        {
          v10 = result;
          llvm::json::encodeUtf8(((v6 << 10) | 0x10000) - 56679424 + v11, a2);
          return v10;
        }

        *__s = -16401;
        v16 = -67;
        v6 = v11;
        v8 = v11 + 0x2000;
        std::string::append(a2, __s, 3uLL);
        v7 = v6;
        if ((v8 >> 11) < 0x1Fu)
        {
          goto LABEL_4;
        }
      }

      v13 = -16401;
      v14 = -67;
      std::string::append(a2, &v13, 3uLL);
      return 1;
    }

    else
    {
      v7 = v12;
LABEL_4:
      llvm::json::encodeUtf8(v7, a2);
      return 1;
    }
  }

  return result;
}

uint64_t llvm::json::anonymous namespace::Parser::parseUnicode(std::string &)::$_1::operator()(void *a1, _WORD *a2)
{
  *a2 = 0;
  v3 = a1[3];
  v2 = a1[4];
  if (v3 == v2)
  {
    v4 = 0;
  }

  else
  {
    a1[3] = v3 + 1;
    v4 = *v3++;
    if (v3 != v2)
    {
      a1[3] = v3 + 1;
      v5 = *v3++;
      if (v3 != v2)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v5 = 0;
  if (v3 != v2)
  {
LABEL_4:
    a1[3] = v3 + 1;
    v6 = *v3++;
    if (v3 != v2)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    v8 = MEMORY[0x277D85DE0];
    if ((*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

LABEL_9:
  v6 = 0;
  if (v3 == v2)
  {
    goto LABEL_10;
  }

LABEL_5:
  v2 = v3 + 1;
  a1[3] = v3 + 1;
  v7 = *v3;
  v8 = MEMORY[0x277D85DE0];
  if ((*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x10000) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (v4 <= 0x39)
  {
    v9 = v4 - 48;
  }

  else
  {
    v9 = (v4 & 0xFFDF) - 55;
  }

  *a2 = v9;
  if ((*(v8 + 4 * v5 + 60) & 0x10000) == 0)
  {
    goto LABEL_22;
  }

  v10 = v5 <= 0x39 ? v5 - 48 : (v5 & 0xFFDF) - 55;
  v11 = v10 | (16 * v9);
  *a2 = v11;
  if ((*(v8 + 4 * v6 + 60) & 0x10000) == 0)
  {
    goto LABEL_22;
  }

  v12 = v6 - 48;
  if (v6 > 0x39)
  {
    v12 = (v6 & 0xFFDF) - 55;
  }

  v13 = v12 | (16 * v11);
  *a2 = v13;
  if ((*(v8 + 4 * v7 + 60) & 0x10000) == 0)
  {
LABEL_22:
    v14 = a1[2];
    v15 = 1;
    if (v2 > v14)
    {
      do
      {
        v16 = *v14++;
        if (v16 == 10)
        {
          ++v15;
        }
      }

      while (v14 != v2);
    }

    operator new();
  }

  v17 = v7 - 48;
  if (v7 > 0x39)
  {
    v17 = (v7 & 0xFFDF) - 55;
  }

  *a2 = v17 | (16 * v13);
  return 1;
}

void llvm::json::encodeUtf8(unsigned int a1, std::string *this)
{
  if (a1 > 0x7F)
  {
    if (a1 > 0x7FF)
    {
      if (HIWORD(a1))
      {
        v6 = (a1 >> 12) & 0x3F | 0xFFFFFF80;
        v7 = (a1 >> 6) & 0x3F | 0xFFFFFF80;
        v8 = a1 & 0x3F | 0x80;
        std::string::push_back(this, (a1 >> 18) | 0xF0);
        std::string::push_back(this, v6);
        std::string::push_back(this, v7);
        LOBYTE(a1) = v8;
      }

      else
      {
        v4 = (a1 >> 6) & 0x3F | 0xFFFFFF80;
        v5 = a1 & 0x3F | 0x80;
        std::string::push_back(this, (a1 >> 12) | 0xE0);
        std::string::push_back(this, v4);
        LOBYTE(a1) = v5;
      }
    }

    else
    {
      v3 = a1 & 0x3F | 0x80;
      std::string::push_back(this, (a1 >> 6) | 0xC0);
      LOBYTE(a1) = v3;
    }
  }

  std::string::push_back(this, a1);
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::json::Value>,llvm::json::Value*>(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v4 = (a4 + 24);
    for (i = a2; i != a3; i += 16)
    {
      v8 = *i;
      *(v4 - 12) = v8;
      if (v8 > 4)
      {
        if (v8 > 6)
        {
          if (v8 == 7)
          {
            *(v4 - 2) = 0;
            *(v4 - 1) = 0;
            *v4 = 0;
            *(v4 - 2) = *(i + 1);
            *(i + 1) = 0;
            *(v4 - 2) = *(i + 4);
            *(i + 4) = 0;
            v6 = *(v4 - 1);
            *(v4 - 1) = *(i + 5);
            *(i + 5) = v6;
            v7 = *v4;
            *v4 = *(i + 6);
            *(i + 6) = v7;
          }

          else
          {
            if (v8 != 8)
            {
              goto LABEL_5;
            }

            *(v4 - 2) = 0;
            *(v4 - 1) = 0;
            *v4 = 0;
            *(v4 - 1) = *(i + 4);
            *v4 = *(i + 3);
            *(i + 1) = 0;
            *(i + 2) = 0;
            *(i + 3) = 0;
          }
        }

        else
        {
          if (v8 == 5)
          {
            *(v4 - 1) = *(i + 4);
            goto LABEL_5;
          }

          v10 = *(i + 4);
          *v4 = *(i + 3);
          *(v4 - 1) = v10;
          *(i + 2) = 0;
          *(i + 3) = 0;
          *(i + 1) = 0;
        }

        *i = 0;
      }

      else
      {
        v9 = *(i + 4);
        *v4 = *(i + 3);
        *(v4 - 1) = v9;
      }

LABEL_5:
      v4 += 8;
    }
  }

  std::__allocator_destroy[abi:nn200100]<std::allocator<llvm::json::Value>,llvm::json::Value*,llvm::json::Value*>(a1, a2, a3);
}

void std::__allocator_destroy[abi:nn200100]<std::allocator<llvm::json::Value>,llvm::json::Value*,llvm::json::Value*>(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    while (1)
    {
      v5 = *v4;
      if (v5 != 8)
      {
        break;
      }

      v7 = *(v4 + 1);
      if (v7)
      {
        v8 = *(v4 + 2);
        v9 = *(v4 + 1);
        if (v8 != v7)
        {
          do
          {
            llvm::json::Value::~Value((v8 - 32));
          }

          while (v8 != v7);
          v9 = *(v4 + 1);
        }

        *(v4 + 2) = v7;
        v6 = v9;
LABEL_15:
        operator delete(v6);
      }

LABEL_4:
      v4 += 16;
      if (v4 == a3)
      {
        return;
      }
    }

    if (v5 == 7)
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::destroyAll((v4 + 4));
      llvm::deallocate_buffer(*(v4 + 1), (56 * *(v4 + 6)));
    }

    if (v5 != 6 || (*(v4 + 31) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    v6 = *(v4 + 1);
    goto LABEL_15;
  }
}

void std::__split_buffer<llvm::json::Value>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    while (1)
    {
      v5 = *(v2 - 32);
      *(a1 + 16) = v2 - 32;
      if (v5 != 8)
      {
        break;
      }

      v7 = *(v2 - 24);
      if (v7)
      {
        v8 = *(v2 - 16);
        v9 = *(v2 - 24);
        if (v8 != v7)
        {
          do
          {
            llvm::json::Value::~Value((v8 - 32));
          }

          while (v8 != v7);
          v9 = *(v2 - 24);
        }

        *(v2 - 16) = v7;
        v6 = v9;
LABEL_15:
        operator delete(v6);
      }

LABEL_4:
      v2 = *(a1 + 16);
      if (v2 == a2)
      {
        return;
      }
    }

    if (v5 == 7)
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::destroyAll(v2 - 24);
      llvm::deallocate_buffer(*(v2 - 24), (56 * *(v2 - 8)));
    }

    if (v5 != 6 || (*(v2 - 1) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    v6 = *(v2 - 24);
    goto LABEL_15;
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::try_emplace<decltype(nullptr)>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>(a1, a2, &v12);
  v7 = v12;
  if (!v6)
  {
    v13 = v12;
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    if (4 * v9 + 4 >= 3 * v10)
    {
      v10 *= 2;
    }

    else if (v10 + ~v9 - *(a1 + 12) > v10 >> 3)
    {
      *(a1 + 8) = v9 + 1;
      if (*(v7 + 8) == -1)
      {
LABEL_7:
        llvm::json::ObjectKey::operator=(v7, a2);
        *(v7 + 24) = 0;
        v8 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::grow(a1, v10);
    llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>(a1, a2, &v13);
    v7 = v13;
    ++*(a1 + 8);
    if (*(v7 + 8) == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:
  v11 = *a1 + 56 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v11;
  *(a3 + 16) = v8;
}

void llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer(56 * v8, 8uLL);
  *a1 = buffer;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::moveFromOldBuckets(a1, v4, v4 + 56 * v3);

    llvm::deallocate_buffer(v4, (56 * v3));
  }

  *(a1 + 8) = 0;
  v15 = 0;
  v16 = xmmword_25736B6D0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = buffer;
    v12 = 56 * v10;
    do
    {
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      v13 = llvm::json::ObjectKey::operator=(v11, &v15);
      v11 += 7;
      v12 -= 56;
    }

    while (v12);
    v14 = v15;
    v15 = 0;
    if (v14)
    {
      if (*(v14 + 23) < 0)
      {
        operator delete(*v14);
      }

      MEMORY[0x259C63180](v14, 0x1012C40EC159624, v13);
    }
  }
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::InsertIntoBucket<llvm::json::ObjectKey,decltype(nullptr)>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v13 = a2;
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
  {
    *(a1 + 2) = v5 + 1;
    v7 = v4 + 1;
    if (v4[1] == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v11 = a1;
  llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>(v11, a3, &v13);
  a1 = v11;
  v12 = *(v11 + 2);
  v4 = v13;
  *(a1 + 2) = v12 + 1;
  v7 = v4 + 1;
  if (v4[1] != -1)
  {
LABEL_4:
    --*(a1 + 3);
  }

LABEL_5:
  v8 = *a3;
  *a3 = 0;
  v9 = *v4;
  *v4 = v8;
  if (v9)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    MEMORY[0x259C63180](v9, 0x1012C40EC159624);
  }

  *v7 = *(a3 + 8);
  *(v4 + 12) = 0;
  return v4;
}

_WORD *std::vector<llvm::json::Value>::__emplace_back_slow_path<decltype(nullptr)>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = (v2 - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = a1[2] - v1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  __p[4] = a1;
  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v3;
  v9 = (32 * v3);
  v10 = &v9[-16 * v8];
  *v9 = 0;
  v11 = v9 + 16;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::json::Value>,llvm::json::Value*>(a1, v1, v2, v10);
  v12 = *a1;
  *a1 = v10;
  a1[1] = v11;
  v13 = a1[2];
  a1[2] = 0;
  __p[2] = v12;
  __p[3] = v13;
  __p[0] = v12;
  __p[1] = v12;
  std::__split_buffer<llvm::json::Value>::__destruct_at_end[abi:nn200100](__p, v12);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v11;
}

void llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::copyFrom(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = 56 * v2;
    for (i = (v3 + 24); ; i += 7)
    {
      if (*(i - 2) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        llvm::json::Value::destroy(i);
      }

      v6 = *(i - 3);
      *(i - 3) = 0;
      if (v6)
      {
        if (*(v6 + 23) < 0)
        {
          operator delete(*v6);
        }

        MEMORY[0x259C63180]();
      }

      v4 -= 56;
      if (!v4)
      {
        llvm::deallocate_buffer(*a1, (56 * *(a1 + 16)));
      }
    }
  }

  llvm::deallocate_buffer(v3, 0);
}

void std::vector<llvm::json::Path::Segment>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t *std::__introsort<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,false>(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v160 = a2 - 1;
  v163 = a2;
  v155 = a2 - 3;
  v156 = a2 - 2;
  v7 = v6;
  while (1)
  {
    v6 = v7;
    v8 = a2 - v7;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,0>(v7, v7 + 1, v160);
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,0>(v7, v7 + 1, v7 + 2, v160);
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,0>(v7, v7 + 1, v7 + 2, v7 + 3, v160);
      }

      goto LABEL_10;
    }

    if (v8 < 2)
    {
      return result;
    }

    if (v8 == 2)
    {
      break;
    }

LABEL_10:
    if (v8 <= 23)
    {
      v78 = v7 + 1;
      v80 = v7 == a2 || v78 == a2;
      if ((a4 & 1) == 0)
      {
        if (!v80)
        {
          do
          {
            v145 = v6;
            v6 = v78;
            v147 = *v145;
            v146 = v145[1];
            v148 = *(v146 + 16);
            v149 = *(*v145 + 16);
            if (v149 >= v148)
            {
              v150 = *(v146 + 16);
            }

            else
            {
              v150 = *(*v145 + 16);
            }

            if (v150 && (result = memcmp(*(v146 + 8), *(v147 + 8), v150), result))
            {
              if ((result & 0x80000000) != 0)
              {
                do
                {
LABEL_308:
                  while (1)
                  {
                    v151 = v145;
                    v152 = *--v145;
                    v145[2] = v147;
                    v147 = v152;
                    v153 = *(v152 + 16);
                    v154 = v153 >= v148 ? v148 : v153;
                    if (!v154)
                    {
                      break;
                    }

                    result = memcmp(*(v146 + 8), *(v147 + 8), v154);
                    if (!result)
                    {
                      break;
                    }

                    if (((result >> 31) & 0x80000000) == 0)
                    {
                      goto LABEL_296;
                    }
                  }
                }

                while (v148 < v153);
LABEL_296:
                *v151 = v146;
              }
            }

            else if (v148 < v149)
            {
              goto LABEL_308;
            }

            v78 = v6 + 1;
          }

          while (v6 + 1 != v163);
        }

        return result;
      }

      if (v80)
      {
        return result;
      }

      v81 = 0;
      v82 = v7;
      while (1)
      {
        v84 = v82;
        v82 = v78;
        v86 = *v84;
        v85 = v84[1];
        v87 = *(v85 + 16);
        v88 = *(*v84 + 16);
        if (v88 >= v87)
        {
          v89 = *(v85 + 16);
        }

        else
        {
          v89 = *(*v84 + 16);
        }

        if (v89 && (result = memcmp(*(v85 + 8), *(v86 + 8), v89), result))
        {
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_198;
          }
        }

        else if (v87 < v88)
        {
LABEL_198:
          for (i = v81; ; i -= 8)
          {
            while (1)
            {
              *(v6 + i + 8) = v86;
              if (!i)
              {
                v83 = v6;
                goto LABEL_188;
              }

              v83 = v84;
              v86 = *(v6 + i - 8);
              v91 = *(v86 + 16);
              v92 = v91 >= v87 ? v87 : *(v86 + 16);
              if (!v92)
              {
                break;
              }

              result = memcmp(*(v85 + 8), *(v86 + 8), v92);
              if (!result)
              {
                break;
              }

              v84 = v83 - 1;
              i -= 8;
              if (((result >> 31) & 0x80000000) == 0)
              {
                goto LABEL_188;
              }
            }

            if (v87 >= v91)
            {
              break;
            }

            v84 = v83 - 1;
          }

          v83 = (v6 + i);
LABEL_188:
          *v83 = v85;
        }

        v78 = v82 + 1;
        v81 += 8;
        if (v82 + 1 == v163)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        return result;
      }

      v93 = (v8 - 2) >> 1;
      v94 = v93;
      while (1)
      {
        v95 = v94;
        if (v93 < v94)
        {
          goto LABEL_212;
        }

        v158 = v94;
        v96 = (2 * v94) | 1;
        v97 = &v6[v96];
        if (2 * v94 + 2 < v8)
        {
          v98 = v97[1];
          v99 = *(*v97 + 16);
          v100 = *(v98 + 16);
          if (v100 >= v99)
          {
            v101 = *(*v97 + 16);
          }

          else
          {
            v101 = *(v98 + 16);
          }

          if (v101 && (result = memcmp(*(*v97 + 8), *(v98 + 8), v101), result))
          {
            v93 = (v8 - 2) >> 1;
            if ((result & 0x80000000) == 0)
            {
              goto LABEL_224;
            }
          }

          else
          {
            v47 = v99 >= v100;
            v93 = (v8 - 2) >> 1;
            if (v47)
            {
              goto LABEL_224;
            }
          }

          ++v97;
          v96 = 2 * v95 + 2;
        }

LABEL_224:
        v102 = &v6[v95];
        v103 = *v97;
        v104 = *(*v97 + 16);
        v105 = *(*v102 + 16);
        if (v105 >= v104)
        {
          v106 = *(*v97 + 16);
        }

        else
        {
          v106 = *(*v102 + 16);
        }

        v161 = *v102;
        if (v106)
        {
          result = memcmp(*(v103 + 8), *(*v102 + 8), v106);
          if (result)
          {
            if ((result & 0x80000000) == 0)
            {
              goto LABEL_235;
            }

            goto LABEL_212;
          }
        }

        if (v104 >= v105)
        {
          while (1)
          {
LABEL_235:
            v108 = v97;
            *v102 = v103;
            if (v93 < v96)
            {
LABEL_211:
              *v108 = v161;
              v95 = v158;
              break;
            }

            v109 = 2 * v96;
            v96 = (2 * v96) | 1;
            v97 = &v6[v96];
            v110 = v109 + 2;
            if (v109 + 2 < v8)
            {
              v111 = v97[1];
              v112 = *(*v97 + 16);
              v113 = *(v111 + 16);
              if (v113 >= v112)
              {
                v114 = *(*v97 + 16);
              }

              else
              {
                v114 = *(v111 + 16);
              }

              if (v114 && (result = memcmp(*(*v97 + 8), *(v111 + 8), v114), result))
              {
                v93 = (v8 - 2) >> 1;
                if ((result & 0x80000000) == 0)
                {
                  goto LABEL_246;
                }
              }

              else
              {
                v47 = v112 >= v113;
                v93 = (v8 - 2) >> 1;
                if (v47)
                {
                  goto LABEL_246;
                }
              }

              ++v97;
              v96 = v110;
            }

LABEL_246:
            v103 = *v97;
            v115 = *(*v97 + 16);
            if (v105 >= v115)
            {
              v116 = *(*v97 + 16);
            }

            else
            {
              v116 = v105;
            }

            if (v116 && (result = memcmp(*(v103 + 8), *(v161 + 8), v116), result))
            {
              v107 = (result >> 31) | 1;
            }

            else if (v115 == v105)
            {
              v107 = 0;
            }

            else
            {
              if (v115 < v105)
              {
                goto LABEL_211;
              }

              v107 = 1;
            }

            v102 = v108;
            if (v107 < 0)
            {
              goto LABEL_211;
            }
          }
        }

LABEL_212:
        v94 = v95 - 1;
        if (!v95)
        {
          v117 = v163;
          while (1)
          {
            v119 = 0;
            v162 = *v6;
            v164 = v117;
            v120 = v6;
            do
            {
              v121 = v120;
              v122 = &v120[v119];
              v120 = v122 + 1;
              v123 = 2 * v119;
              v119 = (2 * v119) | 1;
              v124 = v123 + 2;
              if (v123 + 2 < v8)
              {
                v127 = v122[2];
                v126 = v122 + 2;
                v125 = v127;
                v128 = *(v126 - 1);
                v129 = *(v128 + 16);
                v130 = *(v127 + 16);
                if (v130 >= v129)
                {
                  v131 = *(v128 + 16);
                }

                else
                {
                  v131 = v130;
                }

                if (v131 && (result = memcmp(*(v128 + 8), *(v125 + 8), v131), result))
                {
                  if ((result & 0x80000000) != 0)
                  {
                    goto LABEL_261;
                  }
                }

                else if (v129 < v130)
                {
LABEL_261:
                  v120 = v126;
                  v119 = v124;
                }
              }

              *v121 = *v120;
            }

            while (v119 <= ((v8 - 2) >> 1));
            v132 = v164 - 1;
            if (v120 == v164 - 1)
            {
              v117 = v164 - 1;
              *v120 = v162;
            }

            else
            {
              *v120 = *v132;
              v117 = v164 - 1;
              *v132 = v162;
              v133 = (v120 - v6 + 8) >> 3;
              v118 = v133 < 2;
              v134 = v133 - 2;
              if (!v118)
              {
                v135 = v134 >> 1;
                v136 = &v6[v134 >> 1];
                v137 = *v136;
                v138 = *v120;
                v139 = *(*v136 + 16);
                v140 = *(*v120 + 16);
                if (v140 >= v139)
                {
                  v141 = *(*v136 + 16);
                }

                else
                {
                  v141 = *(*v120 + 16);
                }

                if (v141 && (result = memcmp(*(v137 + 8), *(v138 + 8), v141), result))
                {
                  if ((result & 0x80000000) != 0)
                  {
LABEL_285:
                    while (1)
                    {
                      v142 = v136;
                      *v120 = v137;
                      if (!v135)
                      {
                        break;
                      }

                      v135 = (v135 - 1) >> 1;
                      v136 = &v6[v135];
                      v137 = *v136;
                      v143 = *(*v136 + 16);
                      if (v140 >= v143)
                      {
                        v144 = *(*v136 + 16);
                      }

                      else
                      {
                        v144 = v140;
                      }

                      if (v144 && (result = memcmp(*(v137 + 8), *(v138 + 8), v144), result))
                      {
                        v120 = v142;
                        if (((result >> 31) & 0x80000000) == 0)
                        {
                          break;
                        }
                      }

                      else
                      {
                        if (v143 >= v140)
                        {
                          break;
                        }

                        v120 = v142;
                      }
                    }

                    *v142 = v138;
                  }
                }

                else if (v139 < v140)
                {
                  goto LABEL_285;
                }
              }
            }

            v118 = v8-- <= 2;
            if (v118)
            {
              return result;
            }
          }
        }
      }
    }

    if (v8 < 0x81)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,0>(&v7[v8 >> 1], v7, v160);
      --a3;
      v11 = *v7;
      if (a4)
      {
LABEL_22:
        v14 = *(v11 + 16);
        goto LABEL_24;
      }
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,0>(v7, &v7[v8 >> 1], v160);
      v9 = v8 >> 1;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,0>(v7 + 1, &v7[v9 - 1], v156);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,0>(v7 + 2, &v7[v9 + 1], v155);
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,0>(&v7[v9 - 1], &v7[v9], &v7[v9 + 1]);
      v10 = *v7;
      *v7 = v7[v9];
      v7[v9] = v10;
      --a3;
      v11 = *v7;
      if (a4)
      {
        goto LABEL_22;
      }
    }

    v12 = *(v7 - 1);
    v13 = *(v12 + 16);
    v14 = *(v11 + 16);
    if (v14 >= v13)
    {
      v15 = *(v12 + 16);
    }

    else
    {
      v15 = *(v11 + 16);
    }

    if (!v15 || (result = memcmp(*(v12 + 8), *(v11 + 8), v15), !result))
    {
      if (v13 >= v14)
      {
        goto LABEL_91;
      }

      goto LABEL_24;
    }

    if ((result & 0x80000000) != 0)
    {
LABEL_24:
      for (j = 0; ; j = v17 + 8)
      {
        while (1)
        {
          v17 = j;
          v18 = *(v6 + j + 8);
          v19 = *(v18 + 16);
          v20 = v14 >= v19 ? *(v18 + 16) : v14;
          if (!v20)
          {
            break;
          }

          v21 = memcmp(*(v18 + 8), *(v11 + 8), v20);
          if (!v21)
          {
            break;
          }

          j = v17 + 8;
          if (((v21 >> 31) & 0x80000000) == 0)
          {
            goto LABEL_33;
          }
        }

        if (v19 >= v14)
        {
          break;
        }
      }

LABEL_33:
      v22 = (v6 + v17);
      v23 = v6 + v17 + 8;
      v24 = v160;
      if (v17)
      {
        while (1)
        {
          v27 = v24;
          v28 = *(*v24 + 16);
          if (v14 >= v28)
          {
            v29 = *(*v24 + 16);
          }

          else
          {
            v29 = v14;
          }

          if (v29 && (v30 = memcmp(*(*v24 + 8), *(v11 + 8), v29)) != 0)
          {
            v26 = (v30 >> 31) | 1;
          }

          else if (v28 == v14)
          {
            v26 = 0;
          }

          else
          {
            if (v28 < v14)
            {
              goto LABEL_59;
            }

            v26 = 1;
          }

          v24 = v27 - 1;
          if (v26 < 0)
          {
            goto LABEL_59;
          }
        }
      }

      v25 = v160;
      while (v23 < (v25 + 1))
      {
        v27 = v25;
        v32 = *(*v25 + 16);
        if (v14 >= v32)
        {
          v33 = *(*v25 + 16);
        }

        else
        {
          v33 = v14;
        }

        if (v33 && (v34 = memcmp(*(*v25 + 8), *(v11 + 8), v33)) != 0)
        {
          v31 = (v34 >> 31) | 1;
        }

        else if (v32 == v14)
        {
          v31 = 0;
        }

        else
        {
          if (v32 < v14)
          {
            goto LABEL_59;
          }

          v31 = 1;
        }

        v25 = v27 - 1;
        if (v31 < 0)
        {
          goto LABEL_59;
        }
      }

      v27 = v25 + 1;
LABEL_59:
      if (v23 >= v27)
      {
        goto LABEL_84;
      }

      v157 = a3;
      v35 = *v27;
      v36 = v23;
      v37 = v27;
      while (2)
      {
        *v36 = v35;
        *v37 = v18;
        for (k = v36 + 1; ; k = v36 + 1)
        {
          while (1)
          {
            v36 = k;
            v18 = *k;
            v39 = *(*k + 16);
            v40 = v14 >= v39 ? *(*k + 16) : v14;
            if (!v40)
            {
              break;
            }

            v41 = memcmp(*(v18 + 8), *(v11 + 8), v40);
            if (!v41)
            {
              break;
            }

            k = v36 + 1;
            if (((v41 >> 31) & 0x80000000) == 0)
            {
              goto LABEL_71;
            }
          }

          if (v39 >= v14)
          {
            break;
          }
        }

LABEL_71:
        v42 = v37 - 1;
        while (1)
        {
          v37 = v42;
          v35 = *v42;
          v44 = *(*v42 + 16);
          if (v14 >= v44)
          {
            v45 = *(*v42 + 16);
          }

          else
          {
            v45 = v14;
          }

          if (v45)
          {
            v46 = memcmp(*(v35 + 8), *(v11 + 8), v45);
            if (v46)
            {
              v43 = (v46 >> 31) | 1;
              goto LABEL_73;
            }
          }

          if (v44 != v14)
          {
            break;
          }

          v43 = 0;
LABEL_73:
          v42 = v37 - 1;
          if (v43 < 0)
          {
            goto LABEL_61;
          }
        }

        if (v44 >= v14)
        {
          v43 = 1;
          goto LABEL_73;
        }

LABEL_61:
        if (v36 < v37)
        {
          continue;
        }

        break;
      }

      v22 = v36 - 1;
      a3 = v157;
LABEL_84:
      if (v22 != v6)
      {
        *v6 = *v22;
      }

      *v22 = v11;
      v47 = v23 >= v27;
      a2 = v163;
      if (v47)
      {
        v48 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**>(v6, v22);
        v7 = v22 + 1;
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**>(v22 + 1, v163);
        if (result)
        {
          a2 = v22;
          if (v48)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v48)
        {
          goto LABEL_90;
        }
      }

      else
      {
LABEL_90:
        result = std::__introsort<std::_ClassicAlgPolicy,llvm::json::sortedElements(llvm::json::Object const&)::$_0 &,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value> const**,false>(v6, v22, a3, a4 & 1);
        a4 = 0;
        v7 = v22 + 1;
      }
    }

    else
    {
LABEL_91:
      v49 = *(*v160 + 16);
      if (v49 >= v14)
      {
        v50 = v14;
      }

      else
      {
        v50 = *(*v160 + 16);
      }

      if (v50 && (result = memcmp(*(v11 + 8), *(*v160 + 8), v50), result))
      {
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_111;
        }
      }

      else if (v14 < v49)
      {
LABEL_111:
        v55 = v7 + 1;
        while (1)
        {
          v7 = v55;
          v57 = *(*v55 + 16);
          if (v57 >= v14)
          {
            v58 = v14;
          }

          else
          {
            v58 = *(*v55 + 16);
          }

          if (v58 && (result = memcmp(*(v11 + 8), *(*v55 + 8), v58), result))
          {
            v56 = (result >> 31) | 1;
          }

          else if (v14 == v57)
          {
            v56 = 0;
          }

          else
          {
            if (v14 < v57)
            {
              goto LABEL_123;
            }

            v56 = 1;
          }

          v55 = v7 + 1;
          if (v56 < 0)
          {
            goto LABEL_123;
          }
        }
      }

      v51 = v7 + 1;
      do
      {
        v7 = v51;
        if (v51 >= a2)
        {
          break;
        }

        v53 = *(*v51 + 16);
        if (v53 >= v14)
        {
          v54 = v14;
        }

        else
        {
          v54 = *(*v51 + 16);
        }

        if (v54 && (result = memcmp(*(v11 + 8), *(*v51 + 8), v54), result))
        {
          v52 = (result >> 31) | 1;
        }

        else if (v14 == v53)
        {
          v52 = 0;
        }

        else
        {
          if (v14 < v53)
          {
            break;
          }

          v52 = 1;
        }

        v51 = v7 + 1;
      }

      while ((v52 & 0x80000000) == 0);
LABEL_123:
      if (v7 < a2)
      {
        for (m = v160; ; m = a2 - 1)
        {
          while (1)
          {
            a2 = m;
            v60 = *(*m + 16);
            v61 = v60 >= v14 ? v14 : *(*m + 16);
            if (!v61)
            {
              break;
            }

            result = memcmp(*(v11 + 8), *(*m + 8), v61);
            if (!result)
            {
              break;
            }

            m = a2 - 1;
            if (((result >> 31) & 0x80000000) == 0)
            {
              goto LABEL_133;
            }
          }

          if (v14 >= v60)
          {
            break;
          }
        }
      }

LABEL_133:
      v62 = a3;
      if (v7 < a2)
      {
        v63 = *v7;
        v64 = *a2;
        do
        {
          *v7 = v64;
          *a2 = v63;
          v65 = v7 + 1;
          while (1)
          {
            v7 = v65;
            v63 = *v65;
            v67 = *(*v65 + 16);
            if (v67 >= v14)
            {
              v68 = v14;
            }

            else
            {
              v68 = *(*v65 + 16);
            }

            if (v68)
            {
              result = memcmp(*(v11 + 8), *(v63 + 8), v68);
              if (result)
              {
                v66 = (result >> 31) | 1;
                goto LABEL_138;
              }
            }

            if (v14 != v67)
            {
              break;
            }

            v66 = 0;
LABEL_138:
            v65 = v7 + 1;
            if (v66 < 0)
            {
              goto LABEL_148;
            }
          }

          if (v14 >= v67)
          {
            v66 = 1;
            goto LABEL_138;
          }

LABEL_148:
          for (n = a2 - 1; ; n = a2 - 1)
          {
            while (1)
            {
              a2 = n;
              v64 = *n;
              v70 = *(*n + 16);
              v71 = v70 >= v14 ? v14 : *(*n + 16);
              if (!v71)
              {
                break;
              }

              result = memcmp(*(v11 + 8), *(v64 + 8), v71);
              if (!result)
              {
                break;
              }

              n = a2 - 1;
              if (((result >> 31) & 0x80000000) == 0)
              {
                goto LABEL_135;
              }
            }

            if (v14 >= v70)
            {
              break;
            }
          }

LABEL_135:
          ;
        }

        while (v7 < a2);
      }

      v72 = v7 - 1;
      if (v7 - 1 != v6)
      {
        *v6 = *v72;
      }

      a4 = 0;
      *v72 = v11;
      a2 = v163;
      a3 = v62;
    }
  }

  v73 = *(a2 - 1);
  v74 = *v7;
  v75 = *(v73 + 16);
  v76 = *(*v7 + 16);
  if (v76 >= v75)
  {
    v77 = *(v73 + 16);
  }

  else
  {
    v77 = *(*v7 + 16);
  }

  if (v77 && (result = memcmp(*(v73 + 8), *(v74 + 8), v77), result))
  {
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_256;
    }
  }

  else if (v75 < v76)
  {
LABEL_256:
    *v7 = v73;
    *(a2 - 1) = v74;
  }

  return result;
}