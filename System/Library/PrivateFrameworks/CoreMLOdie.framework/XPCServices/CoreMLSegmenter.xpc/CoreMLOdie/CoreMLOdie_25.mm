uint64_t sub_1001432F4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  result = sub_10009E84C(a1, a2, &v14);
  v9 = v14;
  if (!result)
  {
    v15 = v14;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(a1 + 12) > v12 >> 3)
    {
      *(a1 + 8) = v11 + 1;
      if (*v9 == -1)
      {
LABEL_7:
        *v9 = *a2;
        v9[2] = *a3;
        v10 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    sub_1000D11C8(a1, v12);
    result = sub_10009E84C(a1, a2, &v15);
    v9 = v15;
    ++*(a1 + 8);
    if (*v9 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 0;
LABEL_8:
  v13 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v13;
  *(a4 + 16) = v10;
  return result;
}

uint64_t *sub_10014340C(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4, uint64_t *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
    v13 = buffer + 2;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v19 = v10[1];
        ++v10;
        v11 = v19;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
    v13 = buffer + 2;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  v14 = *a5;
  *a5 = 0;
  *buffer = a3;
  buffer[1] = v14;
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v15 = *v10 == -8;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    do
    {
      v17 = v10[1];
      ++v10;
      v16 = v17;
      if (v17)
      {
        v18 = v16 == -8;
      }

      else
      {
        v18 = 1;
      }
    }

    while (v18);
  }

  return v10;
}

BOOL sub_100143534(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2 & 0x3FFFFFFF;
  v4 = v2 >> 30;
  return v3 == **a1 && v4 == *(*a1 + 4);
}

unint64_t sub_100143558(unint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    v3 = sub_10003E4AC(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *v3 = 0;
  *(v3 + 8) = (v2 >> 2) & 0xC0000000 | v2 & 0x3FFFFFFF;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v3);
  }

  return v3;
}

uint64_t sub_100143600(uint64_t result, void *a2)
{
  v2 = ***(result + 8);
  v3 = *(v2 + 376);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v2 + 360);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((*result >> 4) ^ (*result >> 9));
  v7 = *(v4 + 16 * (v5 & ((*result >> 4) ^ (*result >> 9))));
  if (v7 != *result)
  {
    v9 = 1;
    while (v7 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & v5;
      v7 = *(v4 + 16 * v6);
      if (v7 == *result)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create a Type that was not registered in this MLIRContext.", 1);
  }

LABEL_3:
  v8 = *(v4 + 16 * v6 + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_10014369C(uint64_t *a1, uint64_t a2, char ***a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v13 = 0;
    result = 0;
    goto LABEL_44;
  }

  v5 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
  v8 = v4 - 1;
  v9 = *a2;
  v10 = *(a2 + 8);
  if (!v10)
  {
    if (v9 != -2)
    {
      v21 = 0;
      v30 = 1;
      v31 = HashValue & v8;
      v13 = (v5 + 80 * (HashValue & v8));
      v32 = *v13;
      if (*v13 != -2)
      {
        goto LABEL_41;
      }

      while (1)
      {
        do
        {
          if (v21)
          {
            v33 = 0;
          }

          else
          {
            v33 = v32 + 2 == 0;
          }

          if (v33)
          {
            v21 = v13;
          }

          v34 = v30 + v31;
          ++v30;
          v31 = v34 & v8;
          v13 = (v5 + 80 * (v34 & v8));
          v32 = *v13;
        }

        while (*v13 == -2);
LABEL_41:
        if (v32 == -1)
        {
          goto LABEL_18;
        }

        if (!v13[1])
        {
          goto LABEL_43;
        }
      }
    }

    v17 = 1;
    v18 = HashValue & v8;
    v13 = (v5 + 80 * (HashValue & v8));
    v19 = *v13;
    if (*v13 != -2)
    {
      while (v19 != -1)
      {
        if (v13[1])
        {
          v20 = v17 + v18;
          ++v17;
          v18 = v20 & v8;
          v13 = (v5 + 80 * (v20 & v8));
          v19 = *v13;
          if (*v13 != -2)
          {
            continue;
          }
        }

        goto LABEL_43;
      }

      goto LABEL_17;
    }

LABEL_43:
    result = 1;
    goto LABEL_44;
  }

  if (v9 != -2)
  {
    v21 = 0;
    v22 = 1;
    v23 = HashValue & v8;
    v13 = (v5 + 80 * (HashValue & v8));
    v24 = *v13;
    if (*v13 != -2)
    {
      goto LABEL_30;
    }

    while (1)
    {
      do
      {
        if (v21)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24 + 2 == 0;
        }

        if (v25)
        {
          v21 = v13;
        }

        v26 = v22 + v23;
        ++v22;
        v23 = v26 & v8;
        v13 = (v5 + 80 * (v26 & v8));
        v24 = *v13;
      }

      while (*v13 == -2);
LABEL_30:
      if (v24 == -1)
      {
        goto LABEL_18;
      }

      if (v10 == v13[1])
      {
        v35 = v24;
        v27 = v21;
        v28 = v22;
        v29 = memcmp(v9, v24, v10);
        v22 = v28;
        v21 = v27;
        v24 = v35;
        if (!v29)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v11 = 1;
  v12 = HashValue & v8;
  v13 = (v5 + 80 * (HashValue & v8));
  v14 = *v13;
  if (*v13 == -2)
  {
    goto LABEL_43;
  }

  while (v14 != -1)
  {
    if (v10 != v13[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v14, v10))
    {
      v15 = v11 + v12;
      ++v11;
      v12 = v15 & v8;
      v13 = (v5 + 80 * (v15 & v8));
      v14 = *v13;
      if (*v13 != -2)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

LABEL_17:
  v21 = 0;
LABEL_18:
  if (!v21)
  {
    v21 = v13;
  }

  if (v9 == -1)
  {
    result = 1;
  }

  else
  {
    v13 = v21;
    result = 0;
  }

LABEL_44:
  *a3 = v13;
  return result;
}

void sub_1001438E4(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((80 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v13 = *(a1 + 16);
    if (!v13)
    {
      return;
    }

    v14 = 80 * v13 - 80;
    if (v14 >= 0x50)
    {
      v26 = v14 / 0x50 + 1;
      v15 = &buffer[5 * (v26 & 0x7FFFFFFFFFFFFFELL)];
      v27 = buffer;
      v28 = v26 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        *v27 = xmmword_1002B02F0;
        v27[5] = xmmword_1002B02F0;
        v27 += 10;
        v28 -= 2;
      }

      while (v28);
      if (v26 == (v26 & 0x7FFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v15 = buffer;
    }

    v29 = &buffer[5 * v13];
    do
    {
      *v15 = xmmword_1002B02F0;
      v15 += 5;
    }

    while (v15 != v29);
    return;
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 80 * v10 - 80;
    if (v11 >= 0x50)
    {
      v16 = v11 / 0x50 + 1;
      v12 = &buffer[5 * (v16 & 0x7FFFFFFFFFFFFFELL)];
      v17 = buffer;
      v18 = v16 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_1002B02F0;
        v17[5] = xmmword_1002B02F0;
        v17 += 10;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x7FFFFFFFFFFFFFELL))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = buffer;
    }

    v19 = &buffer[5 * v10];
    do
    {
      *v12 = xmmword_1002B02F0;
      v12 += 5;
    }

    while (v12 != v19);
  }

LABEL_16:
  v20 = 5 * v3;
  if (v3)
  {
    v21 = 80 * v3;
    v22 = v4;
    do
    {
      if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v30 = 0;
        sub_10014369C(a1, v22, &v30);
        v23 = v30;
        *v30 = *v22;
        v23[3] = 0x600000000;
        v23[2] = (v23 + 4);
        v24 = (v23 + 2);
        if (*(v22 + 24))
        {
          sub_10005F9E8(v24, (v22 + 16));
        }

        ++*(a1 + 8);
        v25 = *(v22 + 16);
        if ((v22 + 32) != v25)
        {
          free(v25);
        }
      }

      v22 += 80;
      v21 -= 80;
    }

    while (v21);
  }

  llvm::deallocate_buffer(v4, (16 * v20), 8uLL);
}

unint64_t sub_100143B38(void *a1, void *a2)
{
  if (a1 == a2)
  {
    v95 = 0;
  }

  else
  {
    v2 = HIDWORD(*a1);
    v3 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v2);
    v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
    *&v102 = v4;
    if (a1 + 1 == a2)
    {
      v95 = 8;
    }

    else
    {
      v5 = HIDWORD(a1[1]);
      v6 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v5);
      v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
      *(&v102 + 1) = v7;
      if (a1 + 2 == a2)
      {
        v95 = 16;
      }

      else
      {
        v8 = HIDWORD(a1[2]);
        v9 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v8);
        v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47));
        *&v103 = v10;
        if (a1 + 3 == a2)
        {
          v95 = 24;
        }

        else
        {
          v11 = HIDWORD(a1[3]);
          v12 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v11);
          v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
          *(&v103 + 1) = v13;
          if (a1 + 4 == a2)
          {
            v95 = 32;
          }

          else
          {
            v14 = HIDWORD(a1[4]);
            v15 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v14);
            v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
            *&v104 = v16;
            if (a1 + 5 == a2)
            {
              v95 = 40;
            }

            else
            {
              v17 = HIDWORD(a1[5]);
              v18 = 0x9DDFEA08EB382D69 * ((8 * a1[5] - 0xAE502812AA7333) ^ v17);
              v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) ^ ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 47));
              *(&v104 + 1) = v19;
              if (a1 + 6 == a2)
              {
                v95 = 48;
              }

              else
              {
                v20 = HIDWORD(a1[6]);
                v21 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v20);
                v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) ^ ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 47));
                *&v105 = v22;
                if (a1 + 7 == a2)
                {
                  v95 = 56;
                }

                else
                {
                  v23 = HIDWORD(a1[7]);
                  v24 = 0x9DDFEA08EB382D69 * ((8 * a1[7] - 0xAE502812AA7333) ^ v23);
                  *(&v105 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) ^ ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 47));
                  v25 = a1 + 8;
                  if (a1 + 8 != a2)
                  {
                    v101 = &v103;
                    v26 = v16 + 0x4BF62CB950C3753ALL;
                    v27 = v19 + v22 + v16 + 0x4BF62CB950C3753ALL;
                    v28 = v27 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) ^ ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 47));
                    v29 = v19 - 0x4B6D499041670D8DLL * __ROR8__(v22 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
                    v30 = __ROR8__(v27, 44) + v26 + __ROR8__(v29 + v10 + v26 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) ^ ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 47)), 21);
                    v31 = v4 + 0x298DF016A9F64655 + v7 + v10 + v13;
                    v32 = (0xB492B66FBE98F273 * __ROR8__(v7 - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
                    v33 = __ROR8__(v4 + 0x298DF016A9F64655 + v7 + v10, 44) + v4 + 0x298DF016A9F64655 + __ROR8__(v32 + v4 + 0x298DF016A9F64655 + v13 - 0xAE502812AB8D92, 21);
                    v34 = 0x544962662A7EE1A4;
                    v35 = 64;
                    while (1)
                    {
                      v45 = v25 + 1;
                      v46 = HIDWORD(*v25);
                      v47 = 0x9DDFEA08EB382D69 * ((8 * *v25 - 0xAE502812AA7333) ^ v46);
                      *&v102 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v46 ^ (v47 >> 47) ^ v47)) ^ ((0x9DDFEA08EB382D69 * (v46 ^ (v47 >> 47) ^ v47)) >> 47));
                      v48 = v25 + 1 == a2;
                      if (v25 + 1 == a2)
                      {
                        v63 = 0;
                        v64 = &v102 + 8;
                        v65 = 8;
                      }

                      else
                      {
                        v49 = HIDWORD(v25[1]);
                        v50 = 0x9DDFEA08EB382D69 * ((8 * v25[1] - 0xAE502812AA7333) ^ v49);
                        *(&v102 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v49 ^ (v50 >> 47) ^ v50)) ^ ((0x9DDFEA08EB382D69 * (v49 ^ (v50 >> 47) ^ v50)) >> 47));
                        v45 = v25 + 2;
                        v48 = v25 + 2 == a2;
                        if (v25 + 2 == a2)
                        {
                          v63 = 8;
                          v64 = v101;
                          v65 = 16;
                        }

                        else
                        {
                          v51 = HIDWORD(v25[2]);
                          v52 = 0x9DDFEA08EB382D69 * ((8 * v25[2] - 0xAE502812AA7333) ^ v51);
                          *&v103 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v51 ^ (v52 >> 47) ^ v52)) ^ ((0x9DDFEA08EB382D69 * (v51 ^ (v52 >> 47) ^ v52)) >> 47));
                          v45 = v25 + 3;
                          v48 = v25 + 3 == a2;
                          if (v25 + 3 == a2)
                          {
                            v63 = 16;
                            v64 = &v103 + 8;
                            v65 = 24;
                          }

                          else
                          {
                            v53 = HIDWORD(v25[3]);
                            v54 = 0x9DDFEA08EB382D69 * ((8 * v25[3] - 0xAE502812AA7333) ^ v53);
                            *(&v103 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) ^ ((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) >> 47));
                            v45 = v25 + 4;
                            v48 = v25 + 4 == a2;
                            if (v25 + 4 == a2)
                            {
                              v63 = 24;
                              v64 = &v104;
                              v65 = 32;
                            }

                            else
                            {
                              v55 = HIDWORD(v25[4]);
                              v56 = 0x9DDFEA08EB382D69 * ((8 * v25[4] - 0xAE502812AA7333) ^ v55);
                              *&v104 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v55 ^ (v56 >> 47) ^ v56)) ^ ((0x9DDFEA08EB382D69 * (v55 ^ (v56 >> 47) ^ v56)) >> 47));
                              v45 = v25 + 5;
                              v48 = v25 + 5 == a2;
                              if (v25 + 5 == a2)
                              {
                                v63 = 32;
                                v64 = &v104 + 8;
                                v65 = 40;
                              }

                              else
                              {
                                v57 = HIDWORD(v25[5]);
                                v58 = 0x9DDFEA08EB382D69 * ((8 * v25[5] - 0xAE502812AA7333) ^ v57);
                                *(&v104 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v57 ^ (v58 >> 47) ^ v58)) ^ ((0x9DDFEA08EB382D69 * (v57 ^ (v58 >> 47) ^ v58)) >> 47));
                                v45 = v25 + 6;
                                v48 = v25 + 6 == a2;
                                if (v25 + 6 == a2)
                                {
                                  v63 = 40;
                                  v64 = &v105;
                                  v65 = 48;
                                }

                                else
                                {
                                  v59 = HIDWORD(v25[6]);
                                  v60 = 0x9DDFEA08EB382D69 * ((8 * v25[6] - 0xAE502812AA7333) ^ v59);
                                  *&v105 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v59 ^ (v60 >> 47) ^ v60)) ^ ((0x9DDFEA08EB382D69 * (v59 ^ (v60 >> 47) ^ v60)) >> 47));
                                  v45 = v25 + 7;
                                  v48 = v25 + 7 == a2;
                                  if (v25 + 7 != a2)
                                  {
                                    v61 = HIDWORD(v25[7]);
                                    v62 = 0x9DDFEA08EB382D69 * ((8 * v25[7] - 0xAE502812AA7333) ^ v61);
                                    *(&v105 + 1) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ (v62 >> 47) ^ v62)) ^ ((0x9DDFEA08EB382D69 * (v61 ^ (v62 >> 47) ^ v62)) >> 47));
                                    v25 += 8;
                                    v48 = v25 == a2;
                                    v63 = 56;
                                    v64 = &v106;
                                    v65 = 64;
                                    goto LABEL_28;
                                  }

                                  v63 = 48;
                                  v64 = &v105 + 8;
                                  v65 = 56;
                                }
                              }
                            }
                          }
                        }
                      }

                      v25 = v45;
LABEL_28:
                      if ((v65 & 0x38) != 0)
                      {
                        v66 = 56 - v63;
                        v67 = v65;
                        if (v65 != 56 - v63)
                        {
                          do
                          {
                            v74 = v67;
                            v67 = v66;
                            v66 = v74 % v66;
                          }

                          while (v66);
                          v75 = (&v102 + v67);
                          do
                          {
                            v77 = *(v75 - 1);
                            v75 = (v75 - 1);
                            v76 = v77;
                            v78 = (v75 + v65);
                            v79 = v75;
                            do
                            {
                              v80 = v79;
                              v79 = v78;
                              *v80 = *v78;
                              v81 = v65 < &v106 - v78;
                              v82 = &v102 + v65 - (&v106 - v78);
                              v78 = (v78 + v65);
                              if (!v81)
                              {
                                v78 = v82;
                              }
                            }

                            while (v78 != v75);
                            *v79 = v76;
                          }

                          while (v75 != &v102);
                          goto LABEL_11;
                        }

                        v68 = v63 | 7;
                        if (55 - v63 < (v63 | 7uLL))
                        {
                          v68 = 55 - v63;
                        }

                        v69 = &v102;
                        if (&v102 < (&v102 | 9) + v63 + v68)
                        {
                          v70 = v65;
                          if (v64 < &v102 + v68 + 1)
                          {
                            goto LABEL_34;
                          }
                        }

                        if (v68 >= 0x1F)
                        {
                          v84 = v68 + 1;
                          v83 = (v68 + 1) & 0x60;
                          v85 = v102;
                          v86 = v103;
                          v87 = *(v64 + 1);
                          v102 = *(&v102 + v65);
                          v103 = v87;
                          *(&v102 + v65) = v85;
                          *(v64 + 1) = v86;
                          if (v83 != 32)
                          {
                            v88 = v104;
                            v89 = v105;
                            v90 = *(v64 + 3);
                            v104 = *(v64 + 2);
                            v105 = v90;
                            *(v64 + 2) = v88;
                            *(v64 + 3) = v89;
                          }

                          if (v84 == v83)
                          {
                            goto LABEL_11;
                          }

                          if ((v84 & 0x18) == 0)
                          {
                            v69 = &v102 + v83;
                            v70 = v65 + v83;
LABEL_34:
                            v71 = v69 + 1;
                            do
                            {
                              v72 = *(v71 - 1);
                              *(v71 - 1) = *(&v102 + v70);
                              *(&v102 + v70) = v72;
                              if (v71 == v64)
                              {
                                break;
                              }

                              ++v71;
                            }

                            while (v70++ != 63);
                            goto LABEL_11;
                          }
                        }

                        else
                        {
                          v83 = 0;
                        }

                        v91 = &v64[v83];
                        v92 = (&v102 + v83);
                        v93 = v68 - v83 + 1;
                        do
                        {
                          v94 = *v92;
                          *v92++ = *v91;
                          *v91 = v94;
                          v91 += 8;
                          v93 -= 8;
                        }

                        while (v93);
                      }

LABEL_11:
                      v36 = v29 + v31 + v34 + *(&v102 + 1);
                      v29 = *(&v104 + 1) + v31 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v33 + v105, 42);
                      v37 = v32 + v28;
                      v38 = v102 - 0x4B6D499041670D8DLL * v33;
                      v39 = v28 + v38;
                      v40 = v38 + *(&v102 + 1) + v103;
                      v41 = __ROR8__(v40, 44) + v38;
                      v42 = __ROR8__(v37, 33);
                      v43 = (0xB492B66FBE98F273 * __ROR8__(v36, 37)) ^ v30;
                      v33 = v41 + __ROR8__(v43 + v39 + *(&v103 + 1), 21);
                      v34 = 0xB492B66FBE98F273 * v42;
                      v44 = 0xB492B66FBE98F273 * v42 + v30 + v104;
                      v31 = v40 + *(&v103 + 1);
                      v30 = __ROR8__(v29 + v103 + v44 + *(&v105 + 1), 21) + v44 + __ROR8__(*(&v104 + 1) + v105 + v44, 44);
                      v28 = *(&v104 + 1) + v105 + v44 + *(&v105 + 1);
                      v35 += v65;
                      v32 = v43;
                      if (v48)
                      {
                        v96 = 0x9DDFEA08EB382D69 * (v28 ^ ((0x9DDFEA08EB382D69 * (v31 ^ v28)) >> 47) ^ (0x9DDFEA08EB382D69 * (v31 ^ v28)));
                        v97 = 0x9DDFEA08EB382D69 * (v30 ^ ((0x9DDFEA08EB382D69 * (v33 ^ v30)) >> 47) ^ (0x9DDFEA08EB382D69 * (v33 ^ v30)));
                        v98 = 0x9DDFEA08EB382D69 * (v97 ^ (v97 >> 47)) - 0x4B6D499041670D8DLL * ((v35 ^ (v35 >> 47)) + v42);
                        v99 = 0x9DDFEA08EB382D69 * (v98 ^ (v43 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * (v96 ^ (v96 >> 47))));
                        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v98 ^ (v99 >> 47) ^ v99)) ^ ((0x9DDFEA08EB382D69 * (v98 ^ (v99 >> 47) ^ v99)) >> 47));
                      }
                    }
                  }

                  v95 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  return sub_10002D6F8(&v102, v95, 0xFF51AFD7ED558CCDLL);
}

BOOL sub_10014445C(void *a1, _DWORD *a2)
{
  v2 = *a1;
  if (**a1 != *a2)
  {
    return 0;
  }

  if (v2[1] != a2[1])
  {
    return 0;
  }

  v3 = *(v2 + 2);
  if (v3 != a2[2])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = *(v2 + 1);
  v5 = (a2 + 6);
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

unint64_t sub_1001444D4(void *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  v5 = 8 * v4;
  v6 = 8 * v4 + 24;
  a2[10] += v6;
  v7 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + v6;
  if (*a2)
  {
    v9 = v8 > a2[1];
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v21 = a1;
    v7 = sub_10003E4AC(a2, 8 * v4 + 24, v6, 3);
    a1 = v21;
  }

  else
  {
    *a2 = v8;
  }

  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *v2;
  *(v7 + 4) = v2[1];
  *(v7 + 8) = v4;
  if (v4)
  {
    v10 = (v7 + 24);
    if ((v5 - 8) < 0x28)
    {
      v11 = v3;
      do
      {
LABEL_13:
        v18 = *v11++;
        *v10++ = v18;
      }

      while (v11 != (v3 + 8 * v4));
      goto LABEL_14;
    }

    v11 = v3;
    if (v7 - v3 + 24 < 0x20)
    {
      goto LABEL_13;
    }

    v12 = ((v5 - 8) >> 3) + 1;
    v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
    v10 = (v10 + v13);
    v11 = (v3 + v13);
    v14 = (v3 + 16);
    v15 = (v7 + 40);
    v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v17 = *v14;
      *(v15 - 1) = *(v14 - 1);
      *v15 = v17;
      v14 += 2;
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  v19 = a1[1];
  if (*v19)
  {
    (*v19)(*(v19 + 8), v7);
  }

  return v7;
}

BOOL sub_100144628(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (**a1 == *a2 && v2[1] == *(a2 + 4))
  {
    v3 = *(v2 + 2);
    if (v3 == *(a2 + 16))
    {
      if (v3)
      {
        v4 = *(v2 + 1);
        v5 = *(a2 + 8);
        v6 = 8 * v3;
        while (*v4 == *v5)
        {
          ++v4;
          ++v5;
          v6 -= 8;
          if (!v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v7 = *(v2 + 4);
        if (v7 == *(a2 + 32))
        {
          return memcmp(*(v2 + 3), *(a2 + 24), v7) == 0;
        }
      }
    }
  }

  return 0;
}

unint64_t sub_1001446D0(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100144720(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t sub_100144720(uint64_t *a1, uint64_t a2)
{
  a1[10] += 40;
  v3 = *a1;
  v4 = a1[1];
  result = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = result + 40;
  if (v3)
  {
    v7 = v6 > v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v21 = a2;
    result = sub_10003E4AC(a1, 40, 40, 3);
    a2 = v21;
  }

  else
  {
    *a1 = v6;
  }

  *(result + 32) = 0;
  *result = 0u;
  *(result + 16) = 0u;
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  v8 = *(a2 + 16);
  if (!v8)
  {
    v11 = 0;
    goto LABEL_20;
  }

  v9 = *(a2 + 8);
  v10 = 8 * v8;
  a1[10] += 8 * v8;
  if (!*a1 || (v11 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8, v11 + v10 > a1[1]))
  {
    v22 = result;
    v23 = a2;
    v24 = sub_10003E4AC(a1, 8 * v8, 8 * v8, 3);
    a2 = v23;
    v11 = v24;
    result = v22;
    v12 = v10 - 8;
    if ((v10 - 8) >= 0x18)
    {
      goto LABEL_10;
    }

LABEL_18:
    v13 = v11;
    v14 = v9;
    do
    {
LABEL_19:
      v25 = *v14++;
      *v13++ = v25;
    }

    while (v14 != (v9 + 8 * v8));
    goto LABEL_20;
  }

  *a1 = v11 + v10;
  v12 = v10 - 8;
  if ((v10 - 8) < 0x18)
  {
    goto LABEL_18;
  }

LABEL_10:
  v13 = v11;
  v14 = v9;
  if (v11 - v9 < 0x20)
  {
    goto LABEL_19;
  }

  v15 = (v12 >> 3) + 1;
  v16 = 8 * (v15 & 0x3FFFFFFFFFFFFFFCLL);
  v13 = (v11 + v16);
  v14 = (v9 + v16);
  v17 = (v9 + 16);
  v18 = (v11 + 16);
  v19 = v15 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v20 = *v17;
    *(v18 - 1) = *(v17 - 1);
    *v18 = v20;
    v17 += 2;
    v18 += 2;
    v19 -= 4;
  }

  while (v19);
  if (v15 != (v15 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_19;
  }

LABEL_20:
  *(result + 8) = v11;
  *(result + 16) = v8;
  v26 = *(a2 + 32);
  if (!v26)
  {
    *(result + 24) = 0;
    *(result + 32) = 0;
    return result;
  }

  v27 = *(a2 + 24);
  a1[10] += v26;
  v28 = *a1;
  if (*a1 && v26 + v28 <= a1[1])
  {
    *a1 = v26 + v28;
    if (v26 >= 8)
    {
      goto LABEL_24;
    }

LABEL_38:
    v29 = v28;
    v30 = v27;
    goto LABEL_39;
  }

  v40 = result;
  v28 = sub_10003E4AC(a1, v26, v26, 0);
  result = v40;
  if (v26 < 8)
  {
    goto LABEL_38;
  }

LABEL_24:
  v29 = v28;
  v30 = v27;
  if ((v28 - v27) >= 0x20)
  {
    if (v26 < 0x20)
    {
      v31 = 0;
      goto LABEL_32;
    }

    v31 = v26 & 0xFFFFFFFFFFFFFFE0;
    v32 = (v27 + 16);
    v33 = (v28 + 16);
    v34 = v26 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v35 = *v32;
      *(v33 - 1) = *(v32 - 1);
      *v33 = v35;
      v32 += 2;
      v33 += 2;
      v34 -= 32;
    }

    while (v34);
    if (v26 == v31)
    {
      goto LABEL_35;
    }

    if ((v26 & 0x18) != 0)
    {
LABEL_32:
      v29 = (v28 + (v26 & 0xFFFFFFFFFFFFFFF8));
      v30 = (v27 + (v26 & 0xFFFFFFFFFFFFFFF8));
      v36 = (v27 + v31);
      v37 = (v28 + v31);
      v38 = v31 - (v26 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v39 = *v36++;
        *v37++ = v39;
        v38 += 8;
      }

      while (v38);
      if (v26 == (v26 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_35;
      }

      goto LABEL_39;
    }

    v30 = (v27 + v31);
    v29 = (v28 + v31);
  }

  do
  {
LABEL_39:
    v41 = *v30++;
    *v29++ = v41;
  }

  while (v30 != (v27 + v26));
LABEL_35:
  *(result + 24) = v28;
  *(result + 32) = v26;
  return result;
}

uint64_t mlir::Operation::create(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  mlir::TypeRange::TypeRange(v17, *(a1 + 64), *(a1 + 72));
  mlir::ValueRange::ValueRange(v16, *(a1 + 16), *(a1 + 24));
  Context = mlir::Attribute::getContext(a1);
  Dictionary = mlir::NamedAttrList::getDictionary((a1 + 112), Context);
  mlir::NamedAttrList::NamedAttrList(v14, Dictionary);
  v6 = *(a1 + 256);
  mlir::BlockRange::BlockRange(v13, *(a1 + 200), *(a1 + 208));
  mlir::RegionRange::RegionRange(v12, *(a1 + 224), *(a1 + 232));
  result = mlir::Operation::create(v2, v3, v17[0], v17[1], v16[0], v16[1], v14, v6, v13[0], v13[1], v12[0], v12[1]);
  if (v14[0] != &v15)
  {
    v9 = result;
    free(v14[0]);
    result = v9;
  }

  v10 = *(a1 + 248);
  if (v10)
  {
    v11 = result;
    mlir::Operation::setPropertiesFromAttribute(result, v10, 0, v8);
    return v11;
  }

  return result;
}

uint64_t mlir::Operation::create(uint64_t a1, uint64_t a2, uint64_t a3, mlir::OpResult *a4, int a5, uint64_t a6, mlir::NamedAttrList *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29[0] = a11;
  v29[1] = a12;
  v27 = a2;
  v28 = a1;
  (*(*a2 + 48))(a2, &v27, a7);
  v18 = v27;
  Context = mlir::Attribute::getContext(&v28);
  Dictionary = mlir::NamedAttrList::getDictionary(a7, Context);
  v21 = mlir::Operation::create(a1, v18, a3, a4, a5, a6, Dictionary, a8, a9, a10, a12);
  if (a12)
  {
    v22 = 0;
    do
    {
      if (mlir::RegionRange::dereference_iterator(v29, v22))
      {
        v23 = (((v21 + 64 + 16 * ((*(v21 + 44) >> 23) & 1) + ((*(v21 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v21 + 40) + 24 * v22);
        v24 = mlir::RegionRange::dereference_iterator(v29, v22);
        sub_1000B123C(v23, v24);
      }

      ++v22;
    }

    while (v22 != a12);
  }

  return v21;
}

uint64_t mlir::Operation::setPropertiesFromAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 44);
  v7 = (a1 + 16 * ((v6 >> 23) & 1) + 64);
  if (v5[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    if (!BYTE3(v6))
    {
      v7 = 0;
    }

    *v7 = a2;
    return 1;
  }

  else
  {
    if (BYTE3(v6))
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    return (*(*v5 + 18))(v5, v5, v9, a2, a3, a4);
  }
}

uint64_t mlir::Operation::create(uint64_t a1, uint64_t a2, uint64_t a3, mlir::OpResult *a4, int a5, uint64_t a6, mlir::NamedAttrList *a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v22 = a2;
  v23 = a1;
  (*(*a2 + 48))(a2, &v22, a7);
  v17 = v22;
  Context = mlir::Attribute::getContext(&v23);
  Dictionary = mlir::NamedAttrList::getDictionary(a7, Context);
  return mlir::Operation::create(a1, v17, a3, a4, a5, a6, Dictionary, a8, a9, a10, a11);
}

uint64_t mlir::Operation::create(uint64_t a1, uint64_t a2, uint64_t a3, mlir::OpResult *this, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v17 = a11;
  NumTrailing = mlir::OpResult::getNumTrailing(this);
  NumInline = mlir::OpResult::getNumInline(this);
  v20 = (*(*a2 + 112))(a2);
  v55 = v20 - (v20 != 0) + 8 * (v20 != 0);
  v59 = a7;
  v60 = v55 & 0xFFFFFFF8;
  v54 = a8;
  if (a6)
  {
    v21 = (v55 & 0xFFFFFFF8);
    v22 = a10;
    v23 = a6;
  }

  else
  {
    {
      sub_10029E44C();
    }

    v24 = (*(*a2 + 32))(a2, mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id);
    v23 = 0;
    v21 = v60;
    v22 = a10;
    if (v24)
    {
      v25 = 0;
      v26 = 0;
      goto LABEL_8;
    }
  }

  v25 = 1;
  v26 = 16;
LABEL_8:
  v27 = 32 * (v22 + v23) + 24 * a11;
  v58 = NumTrailing;
  v28 = 16 * NumInline + 24 * NumTrailing;
  v29 = (v28 - (v28 != 0) + 8 * (v28 != 0)) & 0xFFFFFFFFFFFFFFF8;
  v30 = malloc_type_malloc(v27 + v29 + ((v26 + v21 - (v26 + v21 != 0) + 8 * (v26 + v21 != 0)) & 0xFFFFFFFFFFFFFFF8) + 64, 0x100004077774924uLL);
  v31 = &v30[v29];
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 24) = a1;
  *(v31 + 32) = 0;
  *(v31 + 36) = this;
  v57 = v25;
  if (v25)
  {
    v32 = 0x800000;
  }

  else
  {
    v32 = 0;
  }

  v33 = v55 | 7;
  if (v55 < 0)
  {
    v33 = (v55 | 7) + 7;
  }

  *(v31 + 40) = a10;
  *(v31 + 44) = a11 & 0x7FFFFF | ((v33 >> 3) << 24) | v32;
  *(v31 + 48) = a2;
  *(v31 + 56) = 0;
  if (v60)
  {
    v34 = v31 + 16 * (v32 >> 23) + 64;
    if (((v33 << 21) & 0xFF000000) != 0)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    (*(*a2 + 120))(a2, a2, v35, v54);
  }

  if (NumInline)
  {
    v36 = 0;
    v37 = 0;
    v38 = &v30[v29 - 8];
    do
    {
      v39 = v37 + 1;
      v40 = mlir::TypeRange::dereference_iterator(a3, v37);
      *(v38 - 1) = 0;
      *v38 = v40 & 0xFFFFFFFFFFFFFFF8 | (v36 >> 32);
      v36 += &_mh_execute_header;
      v38 -= 2;
      v37 = v39;
    }

    while (NumInline != v39);
  }

  if (v58)
  {
    v41 = 0;
    v42 = &v30[v29 - 120];
    do
    {
      v43 = mlir::TypeRange::dereference_iterator(a3, NumInline + v41);
      *v42 = 0;
      *(v42 + 1) = v43 & 0xFFFFFFFFFFFFFFF8 | 6;
      *(v42 + 2) = v41;
      v42 -= 24;
      ++v41;
    }

    while (v58 != v41);
  }

  if (a11)
  {
    v44 = 0;
    do
    {
      mlir::Region::Region((((v31 + 64 + 16 * ((*(v31 + 44) >> 23) & 1) + ((*(v31 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v31 + 40) + v44), v31);
      v44 += 24;
      --v17;
    }

    while (v17);
  }

  v45 = *(v31 + 44);
  if (v57)
  {
    v46 = ((v31 + 64 + 16 * ((v45 >> 23) & 1) + ((v45 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v31 + 40);
    mlir::detail::OperandStorage::OperandStorage();
    LODWORD(v45) = *(v31 + 44);
  }

  if (a10)
  {
    v47 = 0;
    v48 = ((v31 + 16 * ((v45 >> 23) & 1) + ((v45 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v49 = mlir::BlockRange::dereference_iterator(a9, v47);
      *v48 = 0;
      v48[1] = 0;
      v48[2] = v31;
      v48[3] = v49;
      UseList = mlir::BlockOperand::getUseList(v49, v50);
      v52 = *UseList;
      *v48 = *UseList;
      v48[1] = UseList;
      if (v52)
      {
        *(v52 + 8) = v48;
      }

      *UseList = v48;
      ++v47;
      v48 += 4;
    }

    while (a10 != v47);
  }

  mlir::Operation::setAttrs(v31, v59);
  return v31;
}

void mlir::Operation::setAttrs(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  if (*(a1 + 47))
  {
    v19 = v21;
    v20 = 0x300000000;
    v3 = mlir::DictionaryAttr::size(&v18);
    if (v3 > HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v3, 16);
    }

    v4 = mlir::DictionaryAttr::begin(&v18);
    v5 = mlir::DictionaryAttr::end(&v18);
    if (v4 != v5)
    {
      v6 = v5;
      do
      {
        while (1)
        {
          v17 = *v4;
          Name = mlir::NamedAttribute::getName(&v17);
          Value = mlir::StringAttr::getValue(&Name);
          (*(**(a1 + 48) + 80))(*(a1 + 48), a1, Value, v9);
          if ((v10 & 1) == 0)
          {
            break;
          }

          v7 = mlir::NamedAttribute::getName(&v17);
          (*(**(a1 + 48) + 88))(*(a1 + 48), a1, v7, *(&v17 + 1));
          if (++v4 == v6)
          {
            goto LABEL_11;
          }
        }

        v11 = v17;
        v12 = v20;
        if (v20 >= HIDWORD(v20))
        {
          v15 = v17;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v20 + 1, 16);
          v11 = v15;
          v12 = v20;
        }

        *(v19 + v12) = v11;
        LODWORD(v20) = v20 + 1;
        ++v4;
      }

      while (v4 != v6);
    }

LABEL_11:
    v13 = v20;
    if (mlir::DictionaryAttr::size(&v18) != v13)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      v18 = mlir::DictionaryAttr::get(Context, v19, v20);
    }

    if (v19 != v21)
    {
      free(v19);
    }

    a2 = v18;
  }

  *(a1 + 56) = a2;
}

void mlir::Operation::~Operation(mlir::Operation *this)
{
  v2 = *(this + 11);
  if ((v2 & 0x800000) != 0)
  {
    mlir::detail::OperandStorage::~OperandStorage((this + 64));
    v2 = *(this + 11);
  }

  v3 = this + 64;
  v4 = *(this + 10);
  if (v4)
  {
    v5 = &v3[16 * ((v2 >> 23) & 1) + 7 + ((v2 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8;
    v6 = 32 * v4;
    v7 = (v5 + 8);
    do
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = *(v7 - 1);
        *v8 = v9;
        if (v9)
        {
          *(v9 + 8) = v8;
        }
      }

      v7 += 4;
      v6 -= 32;
    }

    while (v6);
    v2 = *(this + 11);
  }

  if ((v2 & 0x7FFFFF) != 0)
  {
    v10 = ((&v3[16 * ((v2 >> 23) & 1) + 7 + ((v2 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * v4);
    v11 = 24 * (v2 & 0x7FFFFF);
    do
    {
      mlir::Region::~Region(v10);
      v10 = (v12 + 24);
      v11 -= 24;
    }

    while (v11);
    v2 = *(this + 11);
  }

  if (HIBYTE(v2))
  {
    (*(**(this + 6) + 128))(*(this + 6), &v3[16 * ((v2 >> 23) & 1)]);
  }
}

void mlir::Operation::destroy(mlir::Operation *this)
{
  v2 = *(this + 9);
  NumTrailing = mlir::OpResult::getNumTrailing(v2);
  v4 = 16 * mlir::OpResult::getNumInline(v2) + 24 * NumTrailing;
  v5 = this - ((v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8);
  mlir::Operation::~Operation(this);

  free(v5);
}

mlir::Block *mlir::Operation::isProperAncestor(mlir::Operation *this, Operation *ParentOp)
{
  do
  {
    result = *(ParentOp + 2);
    if (!result)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(result);
    result = (ParentOp != 0);
  }

  while (ParentOp != this && ParentOp != 0);
  return result;
}

uint64_t *mlir::Operation::emitError@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::Operation *this@<X0>, const llvm::Twine *a3@<X1>)
{
  v4 = (this + 24);
  mlir::emitError(*(this + 3), a3, a1);
  Context = mlir::Attribute::getContext(v4);
  result = mlir::MLIRContext::shouldPrintOpOnDiagnostic(Context);
  if (result)
  {
    mlir::Diagnostic::attachNote(a1 + 1, *v4, 1);
  }

  return result;
}

unint64_t mlir::Operation::getAttrDictionary(mlir::Operation *this)
{
  if (!*(this + 47))
  {
    return *(this + 7);
  }

  mlir::NamedAttrList::NamedAttrList(v5, *(this + 7));
  (*(**(this + 6) + 96))(*(this + 6), this, v5);
  Context = mlir::Attribute::getContext((this + 24));
  result = mlir::NamedAttrList::getDictionary(v5, Context);
  if (v5[0] != &v6)
  {
    v4 = result;
    free(v5[0]);
    return v4;
  }

  return result;
}

uint64_t mlir::Operation::getPropertiesAsAttribute(mlir::Operation *this)
{
  v2 = *(this + 6);
  if (v2[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return *(this + 2 * ((*(this + 11) >> 23) & 1) + 8);
  }

  else
  {
    return (*(*v2 + 19))(v2, this);
  }
}

uint64_t mlir::Operation::hashProperties(mlir::Operation *this)
{
  if (HIBYTE(*(this + 11)))
  {
    v1 = this + 16 * ((*(this + 11) >> 23) & 1) + 64;
  }

  else
  {
    v1 = 0;
  }

  return (*(**(this + 6) + 176))(*(this + 6), v1);
}

BOOL mlir::Operation::isBeforeInBlock(mlir::Operation *this, mlir::Operation *a2)
{
  if (mlir::Block::isOpOrderValid(*(this + 2)))
  {
    mlir::Operation::updateOrderIfNecessary(this);
    mlir::Operation::updateOrderIfNecessary(a2);
  }

  else
  {
    mlir::Block::recomputeOpOrder(*(this + 2));
  }

  return *(this + 8) < *(a2 + 8);
}

uint64_t *mlir::Operation::updateOrderIfNecessary(uint64_t *this)
{
  if (*(this + 8) == -1)
  {
    v1 = this[2];
    v2 = *(v1 + 40);
    v3 = (v1 + 32);
    if (v2 == v1 + 32 || *(v2 + 8) != v3)
    {
      if (*v3 == this)
      {
        v7 = *this;
        if (v2 == this)
        {
          v7 = 0;
        }

        v8 = *(v7 + 32);
        if (v8 != -1)
        {
          *(this + 8) = v8 + 5;
          return this;
        }

        return mlir::Block::recomputeOpOrder(this[2]);
      }

      if (v2 != this)
      {
        v4 = *(*this + 32);
        if (v4 != -1)
        {
          v5 = this[1] == v3 ? 0 : this[1];
          v6 = *(v5 + 32);
          if (v6 != -1 && v4 + 1 != v6)
          {
            *(this + 8) = v4 + ((v6 - v4) >> 1);
            return this;
          }
        }

        return mlir::Block::recomputeOpOrder(this[2]);
      }

      if (this[1] == v3)
      {
        v9 = 0;
      }

      else
      {
        v9 = this[1];
      }

      v10 = *(v9 + 32);
      if (!v10 || v10 == -1)
      {
        return mlir::Block::recomputeOpOrder(this[2]);
      }

      if (v10 > 5)
      {
        *(this + 8) = 5;
      }

      else
      {
        *(this + 8) = v10 >> 1;
      }
    }
  }

  return this;
}

void llvm::ilist_traits<mlir::Operation>::deleteNode(unsigned int *a1)
{
  v2 = a1[9];
  NumTrailing = mlir::OpResult::getNumTrailing(v2);
  v4 = 16 * mlir::OpResult::getNumInline(v2) + 24 * NumTrailing;
  v5 = a1 - ((v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8);
  mlir::Operation::~Operation(a1);

  free(v5);
}

uint64_t llvm::ilist_traits<mlir::Operation>::addNodeToList(uint64_t result, uint64_t a2)
{
  *(a2 + 16) = result - 32;
  *(a2 + 32) = -1;
  return result;
}

uint64_t llvm::ilist_traits<mlir::Operation>::transferNodesFromList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 - 32;
  result = mlir::Block::invalidateOpOrder(a1 - 32);
  if (a1 != a2)
  {
    while (a3 != a4)
    {
      *(a3 + 16) = v8;
      a3 = *(a3 + 8);
    }
  }

  return result;
}

void mlir::Operation::erase(mlir::Operation *this)
{
  if (*(this + 2))
  {
    *(this + 2) = 0;
    v3 = *this;
    v2 = *(this + 1);
    *v2 = *this;
    *(v3 + 8) = v2;
    *this = 0;
    *(this + 1) = 0;
  }

  v4 = *(this + 9);
  NumTrailing = mlir::OpResult::getNumTrailing(v4);
  v6 = 16 * mlir::OpResult::getNumInline(v4) + 24 * NumTrailing;
  v7 = this - ((v6 - (v6 != 0) + 8 * (v6 != 0)) & 0xFFFFFFFFFFFFFFF8);
  mlir::Operation::~Operation(this);

  free(v7);
}

uint64_t *mlir::Operation::remove(uint64_t *this)
{
  if (this[2])
  {
    this[2] = 0;
    v2 = *this;
    v1 = this[1];
    *v1 = *this;
    *(v2 + 8) = v1;
    *this = 0;
    this[1] = 0;
  }

  return this;
}

uint64_t mlir::Operation::moveBefore(uint64_t result, mlir::Block *this, uint64_t *a3)
{
  if (result != a3)
  {
    v4 = result;
    v5 = *(result + 8);
    if (v5 != a3)
    {
      v7 = *(result + 16);
      result = mlir::Block::invalidateOpOrder(this);
      if (v7 != this && v5 != v4)
      {
        v9 = v4;
        do
        {
          v9[2] = this;
          v9 = v9[1];
        }

        while (v9 != v5);
      }

      if (v5 != v4)
      {
        v10 = *v5;
        v11 = *v4;
        *(v11 + 8) = v5;
        *v5 = v11;
        v12 = *a3;
        *(v10 + 8) = a3;
        *v4 = v12;
        *(v12 + 8) = v4;
        *a3 = v10;
      }
    }
  }

  return result;
}

uint64_t mlir::Operation::dropAllDefinedValueUses(uint64_t this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2)
  {
    v3 = this - 16;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      this = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, i);
      while (1)
      {
        v5 = *this;
        if (!*this)
        {
          break;
        }

        v6 = v5[1];
        if (v6)
        {
          v7 = *v5;
          *v6 = *v5;
          if (v7)
          {
            *(v7 + 8) = v6;
          }
        }

        *v5 = 0;
        v5[1] = 0;
        v5[3] = 0;
      }
    }
  }

  v8 = *(v1 + 44);
  if ((v8 & 0x7FFFFF) != 0)
  {
    v9 = ((v1 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 40);
    v10 = v9 + 24 * (v8 & 0x7FFFFF);
    j = *(v9 + 8);
    if (j != v9)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v9 += 24;
      if (v9 == v10)
      {
        break;
      }

      for (j = *(v9 + 8); j != v9; j = *(j + 8))
      {
LABEL_17:
        if (j)
        {
          v12 = (j - 8);
        }

        else
        {
          v12 = 0;
        }

        this = mlir::Block::dropAllDefinedValueUses(v12);
      }
    }
  }

  return this;
}

uint64_t mlir::Operation::fold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(**(a1 + 48) + 16))(*(a1 + 48), a1, a2, a3, a4))
  {
    return 1;
  }

  v9 = *(a1 + 48);
  if (*(v9 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    ReferencedDialect = *(v9 + 24);
    if (ReferencedDialect)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v12 = *(v9 + 8);
  ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v12);
  if (!ReferencedDialect)
  {
    return 0;
  }

LABEL_6:
  result = sub_1001490C0(ReferencedDialect);
  if (result)
  {
    v11 = sub_1001490C0(ReferencedDialect);
    return (*(*v11 + 16))(v11, a1, a2, a3, a4);
  }

  return result;
}

void mlir::Operation::emitOpError(uint64_t *__return_ptr a1@<X8>, mlir::Operation *this@<X0>, void ***a3@<X1>)
{
  v24 = 257;
  mlir::Operation::emitError(&v28, this, v23);
  if (v28)
  {
    v25 = 3;
    v26 = "'";
    v27 = 1;
    v6 = &v25;
    v7 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v25 && v30 + 24 * v31 > &v25)
      {
        v21 = &v25 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v7 = v30;
        v6 = (v30 + v21);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v6 = &v25;
        v7 = v30;
      }
    }

    v8 = &v7[24 * v31];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v31;
    if (v28)
    {
      mlir::Diagnostic::operator<<(v29, *(this + 6));
      if (v28)
      {
        v25 = 3;
        v26 = "' op ";
        v27 = 5;
        v10 = &v25;
        v11 = v30;
        if (v31 >= v32)
        {
          if (v30 <= &v25 && v30 + 24 * v31 > &v25)
          {
            v22 = &v25 - v30;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
            v11 = v30;
            v10 = (v30 + v22);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
            v10 = &v25;
            v11 = v30;
          }
        }

        v12 = &v11[24 * v31];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v31;
        if (v28)
        {
          mlir::Diagnostic::operator<<(v29, a3);
        }
      }
    }
  }

  sub_10006BAFC(a1, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = sub_10005BEF4(v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
      {
        do
        {
          v20 = *--v18;
          *v18 = 0;
          if (v20)
          {
            operator delete[]();
          }
        }

        while (v18 != v17);
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

_BYTE *mlir::Operation::CloneOptions::cloneOperands(_BYTE *this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *this = *this & 0xFD | v2;
  return this;
}

uint64_t mlir::OpState::parse(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(v4 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v18[0] = *(v4 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(v18);
    v4 = *(a2 + 8);
  }

  else
  {
    ReferencedDialect = *(v4 + 24);
  }

  v18[0] = *(v4 + 8);
  Value = mlir::StringAttr::getValue(v18);
  (*(*ReferencedDialect + 64))(v20, ReferencedDialect, Value, v7);
  if (v21 == 1)
  {
    return (v20[0])(v20[1], a1, a2);
  }

  v9 = (*(*a1 + 16))(a1);
  v18[0] = "has no custom assembly form";
  v19 = 259;
  (*(*a1 + 24))(v20, a1, v9, v18);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = sub_10005BEF4(v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
      {
        do
        {
          v16 = *--v14;
          *v14 = 0;
          if (v16)
          {
            operator delete[]();
          }
        }

        while (v14 != v13);
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v8;
}

void mlir::OpState::print(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 48);
  if (*(v8 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v13[0] = *(v8 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(v13);
  }

  else
  {
    ReferencedDialect = *(v8 + 24);
  }

  (*(*ReferencedDialect + 72))(v13);
  if (v14 < 8)
  {
    (*(*a2 + 216))(a2, a1, 1);
    v11 = v14;
    if (v14 < 8)
    {
      return;
    }
  }

  else
  {
    mlir::OpState::printOpName(a1, a2, a3, a4);
    if ((v14 & 2) != 0)
    {
      v10 = v13;
    }

    else
    {
      v10 = v13[0];
    }

    (*(v14 & 0xFFFFFFFFFFFFFFF8))(v10, a1, a2);
    v11 = v14;
    if (v14 < 8)
    {
      return;
    }
  }

  if ((v11 & 4) != 0)
  {
    if ((v11 & 2) != 0)
    {
      v12 = v13;
    }

    else
    {
      v12 = v13[0];
    }

    (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v12);
  }

  if ((v11 & 2) == 0)
  {
    llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
  }
}

void *mlir::OpState::printOpName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78[0] = *(*(a1 + 48) + 8);
  Value = mlir::StringAttr::getValue(v78);
  v9 = v8;
  v79 = 773;
  v78[0] = a3;
  v78[1] = a4;
  v78[2] = ".";
  llvm::Twine::str(v78, v80);
  v10 = v81;
  v11 = v80[0];
  if (v81 >= 0)
  {
    v12 = v80;
  }

  else
  {
    v12 = v80[0];
  }

  if (v81 >= 0)
  {
    v13 = v81;
  }

  else
  {
    v13 = v80[1];
  }

  if (v9 < v13 || v13 && memcmp(Value, v12, v13))
  {
    if (v10 < 0)
    {
      operator delete(v11);
    }

    goto LABEL_37;
  }

  if (v9)
  {
    if (v9 < 8)
    {
      v14 = 0;
      v15 = 0;
      goto LABEL_26;
    }

    if (v9 >= 0x20)
    {
      v17 = 0uLL;
      v18.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
      v18.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
      v19 = vdupq_n_s64(1uLL);
      v14 = v9 & 0xFFFFFFFFFFFFFFE0;
      v20 = 0uLL;
      v21 = Value + 1;
      v22 = 0uLL;
      v23 = v9 & 0xFFFFFFFFFFFFFFE0;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
      do
      {
        v37 = vceqq_s8(v21[-1], v18);
        v38 = vmovl_u8(*v37.i8);
        v39 = vmovl_high_u8(v37);
        v40 = vmovl_high_u16(v39);
        v41.i64[0] = v40.u32[2];
        v41.i64[1] = v40.u32[3];
        v28 = vaddq_s64(v28, vandq_s8(v41, v19));
        v42 = vmovl_high_u16(v38);
        v43 = vmovl_u16(*v39.i8);
        v41.i64[0] = v40.u32[0];
        v41.i64[1] = v40.u32[1];
        v27 = vaddq_s64(v27, vandq_s8(v41, v19));
        v41.i64[0] = v43.u32[2];
        v41.i64[1] = v43.u32[3];
        v26 = vaddq_s64(v26, vandq_s8(v41, v19));
        v41.i64[0] = v42.u32[2];
        v41.i64[1] = v42.u32[3];
        v24 = vaddq_s64(v24, vandq_s8(v41, v19));
        v44 = vmovl_u16(*v38.i8);
        v41.i64[0] = v43.u32[0];
        v41.i64[1] = v43.u32[1];
        v25 = vaddq_s64(v25, vandq_s8(v41, v19));
        v41.i64[0] = v44.u32[0];
        v41.i64[1] = v44.u32[1];
        v45 = vandq_s8(v41, v19);
        v41.i64[0] = v44.u32[2];
        v41.i64[1] = v44.u32[3];
        v46 = vandq_s8(v41, v19);
        v41.i64[0] = v42.u32[0];
        v41.i64[1] = v42.u32[1];
        v47 = vceqq_s8(*v21, v18);
        v22 = vaddq_s64(v22, vandq_s8(v41, v19));
        v48 = vmovl_u8(*v47.i8);
        v49 = vmovl_high_u8(v47);
        v20 = vaddq_s64(v20, v46);
        v50 = vmovl_high_u16(v49);
        v17 = vaddq_s64(v17, v45);
        v41.i64[0] = v50.u32[2];
        v41.i64[1] = v50.u32[3];
        v36 = vaddq_s64(v36, vandq_s8(v41, v19));
        v51 = vmovl_high_u16(v48);
        v52 = vmovl_u16(*v49.i8);
        v41.i64[0] = v50.u32[0];
        v41.i64[1] = v50.u32[1];
        v35 = vaddq_s64(v35, vandq_s8(v41, v19));
        v41.i64[0] = v52.u32[2];
        v41.i64[1] = v52.u32[3];
        v34 = vaddq_s64(v34, vandq_s8(v41, v19));
        v41.i64[0] = v51.u32[2];
        v41.i64[1] = v51.u32[3];
        v32 = vaddq_s64(v32, vandq_s8(v41, v19));
        v41.i64[0] = v52.u32[0];
        v41.i64[1] = v52.u32[1];
        v33 = vaddq_s64(v33, vandq_s8(v41, v19));
        v53 = vmovl_u16(*v48.i8);
        v41.i64[0] = v51.u32[0];
        v41.i64[1] = v51.u32[1];
        v31 = vaddq_s64(v31, vandq_s8(v41, v19));
        v41.i64[0] = v53.u32[2];
        v41.i64[1] = v53.u32[3];
        v30 = vaddq_s64(v30, vandq_s8(v41, v19));
        v41.i64[0] = v53.u32[0];
        v41.i64[1] = v53.u32[1];
        v29 = vaddq_s64(v29, vandq_s8(v41, v19));
        v21 += 2;
        v23 -= 32;
      }

      while (v23);
      v15 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v29, v17), vaddq_s64(v33, v25)), vaddq_s64(vaddq_s64(v31, v22), vaddq_s64(v35, v27))), vaddq_s64(vaddq_s64(vaddq_s64(v30, v20), vaddq_s64(v34, v26)), vaddq_s64(vaddq_s64(v32, v24), vaddq_s64(v36, v28)))));
      if (v9 == v14)
      {
        goto LABEL_30;
      }

      if ((v9 & 0x18) == 0)
      {
LABEL_26:
        v70 = v9 - v14;
        v71 = &Value->u8[v14];
        do
        {
          v72 = *v71++;
          if (v72 == 46)
          {
            ++v15;
          }

          --v70;
        }

        while (v70);
LABEL_30:
        v16 = v15 == 1;
        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v54 = v14;
    v14 = v9 & 0xFFFFFFFFFFFFFFF8;
    v55 = 0uLL;
    v56 = v15;
    v57 = &Value->i8[v54];
    v58 = v54 - (v9 & 0xFFFFFFFFFFFFFFF8);
    v59 = vdupq_n_s64(1uLL);
    v60 = 0uLL;
    v61 = 0uLL;
    do
    {
      v62 = *v57++;
      v63 = vmovl_u8(vceq_s8(v62, 0x2E2E2E2E2E2E2E2ELL));
      v64 = vmovl_u16(*v63.i8);
      v65.i64[0] = v64.u32[0];
      v65.i64[1] = v64.u32[1];
      v66 = vandq_s8(v65, v59);
      v65.i64[0] = v64.u32[2];
      v65.i64[1] = v64.u32[3];
      v67 = vandq_s8(v65, v59);
      v68 = vmovl_high_u16(v63);
      v65.i64[0] = v68.u32[0];
      v65.i64[1] = v68.u32[1];
      v69 = vandq_s8(v65, v59);
      v65.i64[0] = v68.u32[2];
      v65.i64[1] = v68.u32[3];
      v61 = vaddq_s64(v61, vandq_s8(v65, v59));
      v60 = vaddq_s64(v60, v69);
      v55 = vaddq_s64(v55, v67);
      v56 = vaddq_s64(v56, v66);
      v58 += 8;
    }

    while (v58);
    v15 = vaddvq_s64(vaddq_s64(vaddq_s64(v56, v60), vaddq_s64(v55, v61)));
    if (v9 == v14)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v16 = 0;
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_31:
  operator delete(v11);
LABEL_32:
  if (v9 >= a4 + 1)
  {
    v73 = a4 + 1;
  }

  else
  {
    v73 = v9;
  }

  v74 = (Value + v73);
  v75 = v9 - v73;
  if (v16)
  {
    Value = v74;
    v9 = v75;
  }

LABEL_37:
  result = (*(*a2 + 16))(a2);
  if (v9 > result[3] - result[4])
  {
    return llvm::raw_ostream::write(result, Value->i8, v9);
  }

  if (v9)
  {
    v77 = result;
    result = memcpy(result[4], Value, v9);
    v77[4] += v9;
  }

  return result;
}

BOOL mlir::OpTrait::impl::verifyOneOperand(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if ((*(this + 46) & 0x80) != 0 && *(this + 17) == 1)
  {
    return 1;
  }

  v17 = 257;
  mlir::Operation::emitOpError(v21, this, &v16);
  if (v21[0])
  {
    v18 = 3;
    v19 = "requires a single operand";
    v20 = 25;
    v3 = &v18;
    v4 = v22;
    if (v23 >= v24)
    {
      if (v22 <= &v18 && v22 + 24 * v23 > &v18)
      {
        v15 = &v18 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v4 = v22;
        v3 = (v22 + v15);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v3 = &v18;
        v4 = v22;
      }
    }

    v5 = &v4[24 * v23];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    ++v23;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v29;
      v9 = __p;
      if (v29 != __p)
      {
        do
        {
          v8 = sub_10005BEF4(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v29 = v7;
      operator delete(v9);
    }

    v10 = v26;
    if (v26)
    {
      v11 = v27;
      v12 = v26;
      if (v27 != v26)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v26;
      }

      v27 = v10;
      operator delete(v12);
    }

    if (v22 != v25)
    {
      free(v22);
    }
  }

  return v2;
}

BOOL mlir::OpTrait::impl::verifyZeroRegions(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if ((*(this + 11) & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v17 = 257;
  mlir::Operation::emitOpError(v21, this, &v16);
  if (v21[0])
  {
    v18 = 3;
    v19 = "requires zero regions";
    v20 = 21;
    v2 = &v18;
    v3 = v22;
    if (v23 >= v24)
    {
      if (v22 <= &v18 && v22 + 24 * v23 > &v18)
      {
        v15 = &v18 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v3 = v22;
        v2 = (v22 + v15);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v2 = &v18;
        v3 = v22;
      }
    }

    v4 = &v3[24 * v23];
    v5 = *v2;
    *(v4 + 2) = *(v2 + 2);
    *v4 = v5;
    ++v23;
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v29;
      v9 = __p;
      if (v29 != __p)
      {
        do
        {
          v8 = sub_10005BEF4(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v29 = v7;
      operator delete(v9);
    }

    v10 = v26;
    if (v26)
    {
      v11 = v27;
      v12 = v26;
      if (v27 != v26)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v26;
      }

      v27 = v10;
      operator delete(v12);
    }

    if (v22 != v25)
    {
      free(v22);
    }
  }

  return v6;
}

BOOL mlir::OpTrait::impl::verifyOneRegion(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if ((*(this + 11) & 0x7FFFFF) == 1)
  {
    return 1;
  }

  v17 = 257;
  mlir::Operation::emitOpError(v21, this, &v16);
  if (v21[0])
  {
    v18 = 3;
    v19 = "requires one region";
    v20 = 19;
    v3 = &v18;
    v4 = v22;
    if (v23 >= v24)
    {
      if (v22 <= &v18 && v22 + 24 * v23 > &v18)
      {
        v15 = &v18 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v4 = v22;
        v3 = (v22 + v15);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v3 = &v18;
        v4 = v22;
      }
    }

    v5 = &v4[24 * v23];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    ++v23;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v29;
      v9 = __p;
      if (v29 != __p)
      {
        do
        {
          v8 = sub_10005BEF4(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v29 = v7;
      operator delete(v9);
    }

    v10 = v26;
    if (v26)
    {
      v11 = v27;
      v12 = v26;
      if (v27 != v26)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v26;
      }

      v27 = v10;
      operator delete(v12);
    }

    if (v22 != v25)
    {
      free(v22);
    }
  }

  return v2;
}

BOOL mlir::OpTrait::impl::verifyNRegions(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if ((*(this + 11) & 0x7FFFFF) == a2)
  {
    return 1;
  }

  v3 = a2;
  v30 = 257;
  mlir::Operation::emitOpError(v34, this, &v29);
  if (v34[0])
  {
    v31 = 3;
    v32 = "expected ";
    v33 = 9;
    v4 = &v31;
    v5 = v35;
    if (v36 >= v37)
    {
      if (v35 <= &v31 && v35 + 24 * v36 > &v31)
      {
        v26 = &v31 - v35;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v5 = v35;
        v4 = (v35 + v26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v4 = &v31;
        v5 = v35;
      }
    }

    v6 = &v5[24 * v36];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    v8 = ++v36;
    if (v34[0])
    {
      v31 = 5;
      v32 = v3;
      v9 = &v31;
      v10 = v35;
      if (v8 >= v37)
      {
        if (v35 <= &v31 && v35 + 24 * v8 > &v31)
        {
          v27 = &v31 - v35;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v8 + 1, 24);
          v10 = v35;
          v9 = (v35 + v27);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v8 + 1, 24);
          v9 = &v31;
          v10 = v35;
        }
      }

      v11 = &v10[24 * v36];
      v12 = *v9;
      *(v11 + 2) = *(v9 + 2);
      *v11 = v12;
      v13 = ++v36;
      if (v34[0])
      {
        v31 = 3;
        v32 = " regions";
        v33 = 8;
        v14 = &v31;
        v15 = v35;
        if (v13 >= v37)
        {
          if (v35 <= &v31 && v35 + 24 * v13 > &v31)
          {
            v28 = &v31 - v35;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v13 + 1, 24);
            v15 = v35;
            v14 = (v35 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v13 + 1, 24);
            v14 = &v31;
            v15 = v35;
          }
        }

        v16 = &v15[24 * v36];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v36;
      }
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v42;
      v20 = __p;
      if (v42 != __p)
      {
        do
        {
          v19 = sub_10005BEF4(v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v42 = v18;
      operator delete(v20);
    }

    v21 = v39;
    if (v39)
    {
      v22 = v40;
      v23 = v39;
      if (v40 != v39)
      {
        do
        {
          v24 = *--v22;
          *v22 = 0;
          if (v24)
          {
            operator delete[]();
          }
        }

        while (v22 != v21);
        v23 = v39;
      }

      v40 = v21;
      operator delete(v23);
    }

    if (v35 != v38)
    {
      free(v35);
    }
  }

  return v2;
}

BOOL mlir::OpTrait::impl::verifyZeroResults(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if (!*(this + 9))
  {
    return 1;
  }

  v17 = 257;
  mlir::Operation::emitOpError(v21, this, &v16);
  if (v21[0])
  {
    v18 = 3;
    v19 = "requires zero results";
    v20 = 21;
    v2 = &v18;
    v3 = v22;
    if (v23 >= v24)
    {
      if (v22 <= &v18 && v22 + 24 * v23 > &v18)
      {
        v15 = &v18 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v3 = v22;
        v2 = (v22 + v15);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v2 = &v18;
        v3 = v22;
      }
    }

    v4 = &v3[24 * v23];
    v5 = *v2;
    *(v4 + 2) = *(v2 + 2);
    *v4 = v5;
    ++v23;
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v29;
      v9 = __p;
      if (v29 != __p)
      {
        do
        {
          v8 = sub_10005BEF4(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v29 = v7;
      operator delete(v9);
    }

    v10 = v26;
    if (v26)
    {
      v11 = v27;
      v12 = v26;
      if (v27 != v26)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v26;
      }

      v27 = v10;
      operator delete(v12);
    }

    if (v22 != v25)
    {
      free(v22);
    }
  }

  return v6;
}

BOOL mlir::OpTrait::impl::verifyOneResult(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if (*(this + 9) == 1)
  {
    return 1;
  }

  v17 = 257;
  mlir::Operation::emitOpError(v21, this, &v16);
  if (v21[0])
  {
    v18 = 3;
    v19 = "requires one result";
    v20 = 19;
    v3 = &v18;
    v4 = v22;
    if (v23 >= v24)
    {
      if (v22 <= &v18 && v22 + 24 * v23 > &v18)
      {
        v15 = &v18 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v4 = v22;
        v3 = (v22 + v15);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v3 = &v18;
        v4 = v22;
      }
    }

    v5 = &v4[24 * v23];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    ++v23;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v29;
      v9 = __p;
      if (v29 != __p)
      {
        do
        {
          v8 = sub_10005BEF4(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v29 = v7;
      operator delete(v9);
    }

    v10 = v26;
    if (v26)
    {
      v11 = v27;
      v12 = v26;
      if (v27 != v26)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v26;
      }

      v27 = v10;
      operator delete(v12);
    }

    if (v22 != v25)
    {
      free(v22);
    }
  }

  return v2;
}

BOOL mlir::OpTrait::impl::verifyNResults(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if (*(this + 9) == a2)
  {
    return 1;
  }

  v3 = a2;
  v30 = 257;
  mlir::Operation::emitOpError(v34, this, &v29);
  if (v34[0])
  {
    v31 = 3;
    v32 = "expected ";
    v33 = 9;
    v4 = &v31;
    v5 = v35;
    if (v36 >= v37)
    {
      if (v35 <= &v31 && v35 + 24 * v36 > &v31)
      {
        v26 = &v31 - v35;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v5 = v35;
        v4 = (v35 + v26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v4 = &v31;
        v5 = v35;
      }
    }

    v6 = &v5[24 * v36];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    v8 = ++v36;
    if (v34[0])
    {
      v31 = 5;
      v32 = v3;
      v9 = &v31;
      v10 = v35;
      if (v8 >= v37)
      {
        if (v35 <= &v31 && v35 + 24 * v8 > &v31)
        {
          v27 = &v31 - v35;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v8 + 1, 24);
          v10 = v35;
          v9 = (v35 + v27);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v8 + 1, 24);
          v9 = &v31;
          v10 = v35;
        }
      }

      v11 = &v10[24 * v36];
      v12 = *v9;
      *(v11 + 2) = *(v9 + 2);
      *v11 = v12;
      v13 = ++v36;
      if (v34[0])
      {
        v31 = 3;
        v32 = " results";
        v33 = 8;
        v14 = &v31;
        v15 = v35;
        if (v13 >= v37)
        {
          if (v35 <= &v31 && v35 + 24 * v13 > &v31)
          {
            v28 = &v31 - v35;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v13 + 1, 24);
            v15 = v35;
            v14 = (v35 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v13 + 1, 24);
            v14 = &v31;
            v15 = v35;
          }
        }

        v16 = &v15[24 * v36];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v36;
      }
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v42;
      v20 = __p;
      if (v42 != __p)
      {
        do
        {
          v19 = sub_10005BEF4(v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v42 = v18;
      operator delete(v20);
    }

    v21 = v39;
    if (v39)
    {
      v22 = v40;
      v23 = v39;
      if (v40 != v39)
      {
        do
        {
          v24 = *--v22;
          *v22 = 0;
          if (v24)
          {
            operator delete[]();
          }
        }

        while (v22 != v21);
        v23 = v39;
      }

      v40 = v21;
      operator delete(v23);
    }

    if (v35 != v38)
    {
      free(v35);
    }
  }

  return v2;
}

BOOL mlir::OpTrait::impl::verifyAtLeastNResults(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if (*(this + 9) >= a2)
  {
    return 1;
  }

  v2 = a2;
  v30 = 257;
  mlir::Operation::emitOpError(v34, this, &v29);
  if (v34[0])
  {
    v31 = 3;
    v32 = "expected ";
    v33 = 9;
    v3 = &v31;
    v4 = v35;
    if (v36 >= v37)
    {
      if (v35 <= &v31 && v35 + 24 * v36 > &v31)
      {
        v26 = &v31 - v35;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v4 = v35;
        v3 = (v35 + v26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v3 = &v31;
        v4 = v35;
      }
    }

    v5 = &v4[24 * v36];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    v7 = ++v36;
    if (v34[0])
    {
      v31 = 5;
      v32 = v2;
      v8 = &v31;
      v9 = v35;
      if (v7 >= v37)
      {
        if (v35 <= &v31 && v35 + 24 * v7 > &v31)
        {
          v27 = &v31 - v35;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v7 + 1, 24);
          v9 = v35;
          v8 = (v35 + v27);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v7 + 1, 24);
          v8 = &v31;
          v9 = v35;
        }
      }

      v10 = &v9[24 * v36];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      v12 = ++v36;
      if (v34[0])
      {
        v31 = 3;
        v32 = " or more results";
        v33 = 16;
        v13 = &v31;
        v14 = v35;
        if (v12 >= v37)
        {
          if (v35 <= &v31 && v35 + 24 * v12 > &v31)
          {
            v28 = &v31 - v35;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v12 + 1, 24);
            v14 = v35;
            v13 = (v35 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v12 + 1, 24);
            v13 = &v31;
            v14 = v35;
          }
        }

        v15 = &v14[24 * v36];
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        ++v36;
      }
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v42;
      v20 = __p;
      if (v42 != __p)
      {
        do
        {
          v19 = sub_10005BEF4(v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v42 = v18;
      operator delete(v20);
    }

    v21 = v39;
    if (v39)
    {
      v22 = v40;
      v23 = v39;
      if (v40 != v39)
      {
        do
        {
          v24 = *--v22;
          *v22 = 0;
          if (v24)
          {
            operator delete[]();
          }
        }

        while (v22 != v21);
        v23 = v39;
      }

      v40 = v21;
      operator delete(v23);
    }

    if (v35 != v38)
    {
      free(v35);
    }
  }

  return v17;
}

BOOL mlir::OpTrait::impl::verifyIsTerminator(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v2 = *(this + 2);
  if (v2 && *(v2 + 32) == this)
  {
    return 1;
  }

  v12 = "must be the last operation in the parent block";
  v13 = 259;
  mlir::Operation::emitOpError(v14, this, &v12);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v4 = __p;
    if (__p)
    {
      v5 = v20;
      v6 = __p;
      if (v20 != __p)
      {
        do
        {
          v5 = sub_10005BEF4(v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v20 = v4;
      operator delete(v6);
    }

    v7 = v17;
    if (v17)
    {
      v8 = v18;
      v9 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v8;
          *v8 = 0;
          if (v10)
          {
            operator delete[]();
          }
        }

        while (v8 != v7);
        v9 = v17;
      }

      v18 = v7;
      operator delete(v9);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v3;
}

BOOL mlir::OpTrait::impl::verifyZeroSuccessors(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if (!*(this + 10))
  {
    return 1;
  }

  v18 = "requires 0 successors but found ";
  v19 = 259;
  mlir::Operation::emitOpError(v22, this, &v18);
  if (v22[0])
  {
    v3 = *(this + 10);
    v20 = 5;
    v21 = v3;
    v4 = &v20;
    v5 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v20 && v23 + 24 * v24 > &v20)
      {
        v17 = &v20 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v5 = v23;
        v4 = (v23 + v17);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v4 = &v20;
        v5 = v23;
      }
    }

    v6 = &v5[24 * v24];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v24;
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v30;
      v11 = __p;
      if (v30 != __p)
      {
        do
        {
          v10 = sub_10005BEF4(v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v30 = v9;
      operator delete(v11);
    }

    v12 = v27;
    if (v27)
    {
      v13 = v28;
      v14 = v27;
      if (v28 != v27)
      {
        do
        {
          v15 = *--v13;
          *v13 = 0;
          if (v15)
          {
            operator delete[]();
          }
        }

        while (v13 != v12);
        v14 = v27;
      }

      v28 = v12;
      operator delete(v14);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v8;
}

BOOL mlir::OpTrait::impl::verifyNoRegionArguments(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v3 = (((this + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
  v4 = 24 * (v2 & 0x7FFFFF);
  while (1)
  {
    if (v3 != *v3)
    {
      v5 = v3[1];
      v6 = v5 ? v5 - 8 : 0;
      if (((*(v6 + 56) - *(v6 + 48)) & 0x7FFFFFFF8) != 0)
      {
        break;
      }
    }

    v3 += 3;
    v4 -= 24;
    if (!v4)
    {
      return 1;
    }
  }

  if ((v2 & 0x7FFFFE) != 0)
  {
    v33[0] = "region #";
    v34 = 259;
    mlir::Operation::emitOpError(v38, this, v33);
    RegionNumber = mlir::Region::getRegionNumber(v3);
    if (v38[0])
    {
      v35 = 5;
      v36 = RegionNumber;
      v8 = &v35;
      v9 = v39;
      if (v40 >= v41)
      {
        if (v39 <= &v35 && v39 + 24 * v40 > &v35)
        {
          v31 = &v35 - v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v9 = v39;
          v8 = (v39 + v31);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v8 = &v35;
          v9 = v39;
        }
      }

      v10 = &v9[24 * v40];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      v12 = ++v40;
      if (v38[0])
      {
        v35 = 3;
        v36 = " should have no arguments";
        v37 = 25;
        v13 = &v35;
        v14 = v39;
        if (v12 >= v41)
        {
          if (v39 <= &v35 && v39 + 24 * v12 > &v35)
          {
            v32 = &v35 - v39;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v12 + 1, 24);
            v14 = v39;
            v13 = (v39 + v32);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v12 + 1, 24);
            v13 = &v35;
            v14 = v39;
          }
        }

        v15 = &v14[24 * v40];
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        ++v40;
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    v18 = result;
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
      result = v18;
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
        result = v18;
      }

      v19 = __p;
      if (__p)
      {
        v20 = v46;
        v21 = __p;
        if (v46 != __p)
        {
          do
          {
            v20 = sub_10005BEF4(v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v46 = v19;
        operator delete(v21);
        result = v18;
      }

      v22 = v43;
      if (!v43)
      {
        goto LABEL_51;
      }

      v23 = v44;
      v24 = v43;
      if (v44 == v43)
      {
LABEL_50:
        v44 = v22;
        operator delete(v24);
        result = v18;
LABEL_51:
        if (v39 != v42)
        {
          free(v39);
          return v18;
        }

        return result;
      }

      do
      {
        v25 = *--v23;
        *v23 = 0;
        if (v25)
        {
          operator delete[]();
        }
      }

      while (v23 != v22);
LABEL_49:
      v24 = v43;
      goto LABEL_50;
    }
  }

  else
  {
    v33[0] = "region should have no arguments";
    v34 = 259;
    mlir::Operation::emitOpError(v38, this, v33);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    v18 = result;
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
      result = v18;
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
        result = v18;
      }

      v26 = __p;
      if (__p)
      {
        v27 = v46;
        v28 = __p;
        if (v46 != __p)
        {
          do
          {
            v27 = sub_10005BEF4(v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v46 = v26;
        operator delete(v28);
        result = v18;
      }

      v22 = v43;
      if (!v43)
      {
        goto LABEL_51;
      }

      v29 = v44;
      v24 = v43;
      if (v44 == v43)
      {
        goto LABEL_50;
      }

      do
      {
        v30 = *--v29;
        *v29 = 0;
        if (v30)
        {
          operator delete[]();
        }
      }

      while (v29 != v22);
      goto LABEL_49;
    }
  }

  return result;
}

BOOL mlir::OpTrait::impl::verifyIsIsolatedFromAbove(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v51 = v53;
  v52 = 0x800000000;
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) == 0)
  {
LABEL_31:
    v20 = 1;
    goto LABEL_54;
  }

  v4 = (((this + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
  v5 = (v4 + 24 * (v2 & 0x7FFFFF));
  while (1)
  {
    if (HIDWORD(v52))
    {
      *v51 = v4;
      v6 = __CFADD__(v52, 1);
      v7 = v52 + 1;
      LODWORD(v52) = v52 + 1;
      if (!v6)
      {
        break;
      }

      goto LABEL_26;
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v53, 1uLL, 8);
    v51[v52] = v4;
    v6 = __CFADD__(v52, 1);
    v7 = v52 + 1;
    LODWORD(v52) = v52 + 1;
    if (!v6)
    {
      break;
    }

LABEL_26:
    v4 = (v4 + 24);
    if (v4 == v5)
    {
      goto LABEL_31;
    }
  }

  while (1)
  {
    v8 = v51[v7 - 1];
    LODWORD(v52) = v7 - 1;
    mlir::Region::OpIterator::OpIterator(&v41, v8, 0);
    mlir::Region::OpIterator::OpIterator(&v37, v8, 1);
    v9 = v42;
    v36 = v42;
    v35 = v41;
    v33 = v41;
    v34 = v42;
    v10 = v38;
    if (v42 != v38)
    {
      break;
    }

LABEL_25:
    v7 = v52;
    if (!v52)
    {
      goto LABEL_26;
    }
  }

  while (1)
  {
    v11 = *(v9 + 44);
    if ((v11 & 0x800000) != 0)
    {
      v12 = *(v9 + 68);
      if (v12)
      {
        break;
      }
    }

LABEL_15:
    if ((v11 & 0x7FFFFF) != 0)
    {
      {
        sub_100299674();
      }

      if (((*(**(v9 + 48) + 32))(*(v9 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
      {
        v15 = *(v9 + 44);
        v16 = v15 & 0x7FFFFF;
        if ((v15 & 0x7FFFFF) != 0)
        {
          v17 = ((v9 + 16 * ((v15 >> 23) & 1) + ((v15 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v9 + 40);
          v18 = v52;
          v19 = 24 * v16;
          do
          {
            if (v18 >= HIDWORD(v52))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v53, v18 + 1, 8);
              v18 = v52;
            }

            v51[v18] = v17;
            v18 = v52 + 1;
            LODWORD(v52) = v52 + 1;
            v17 += 24;
            v19 -= 24;
          }

          while (v19);
        }
      }
    }

    mlir::Region::OpIterator::operator++(&v33);
    v9 = v34;
    if (v34 == v10)
    {
      goto LABEL_25;
    }
  }

  v13 = (*(v9 + 72) + 24);
  while (1)
  {
    v32 = *v13;
    ParentRegion = mlir::Value::getParentRegion(&v32);
    if (!ParentRegion)
    {
      break;
    }

    if (v4 != ParentRegion && (mlir::Region::isProperAncestor(v4, ParentRegion) & 1) == 0)
    {
      v39 = "using value defined outside the region";
      v40 = 259;
      mlir::Operation::emitOpError(&v41, v9, &v39);
      mlir::Diagnostic::attachNote(&v41 + 1, *(this + 3), 1);
    }

    v13 += 4;
    if (!--v12)
    {
      v11 = *(v9 + 44);
      goto LABEL_15;
    }
  }

  v30 = "operation's operand is unlinked";
  v31 = 259;
  mlir::emitError(*(v9 + 24), &v30, &v41);
  Context = mlir::Attribute::getContext((v9 + 24));
  if (mlir::MLIRContext::shouldPrintOpOnDiagnostic(Context))
  {
    mlir::Diagnostic::attachNote(&v41 + 1, *(v9 + 24), 1);
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v50 == 1)
  {
    if (v49 != &v50)
    {
      free(v49);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v48;
      v24 = __p;
      if (v48 != __p)
      {
        do
        {
          v23 = sub_10005BEF4(v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v48 = v22;
      operator delete(v24);
    }

    v25 = v45;
    if (v45)
    {
      v26 = v46;
      v27 = v45;
      if (v46 != v45)
      {
        do
        {
          v28 = *--v26;
          *v26 = 0;
          if (v28)
          {
            operator delete[]();
          }
        }

        while (v26 != v25);
        v27 = v45;
      }

      v46 = v25;
      operator delete(v27);
    }

    if (v43 != &v44)
    {
      free(v43);
    }
  }

LABEL_54:
  if (v51 != v53)
  {
    free(v51);
  }

  return v20;
}

uint64_t sub_1001490C0(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0DE0, memory_order_acquire))
  {
    v1 = *(a1 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    v8 = a1;
    sub_1002A22EC();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((qword_1002E0DD8 >> 4) ^ (qword_1002E0DD8 >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != qword_1002E0DD8)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == qword_1002E0DD8)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if (v3 == v1)
  {
    return 0;
  }

  return *(v2 + 16 * v3 + 8);
}

uint64_t sub_100149184()
{
  if ((atomic_load_explicit(&qword_1002E0DF8, memory_order_acquire) & 1) == 0)
  {
    sub_1002A2340();
  }

  return qword_1002E0DE8;
}

const char *sub_1001491CC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DialectFoldInterface]";
  v6 = 88;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *sub_10014924C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 16 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    sub_1001493B8(a1, v2);
    sub_1000414FC(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

void sub_1001493B8(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((16 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = buffer + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &buffer[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = ((v24 >> 4) ^ (v24 >> 9)) & v16;
          v23 = &buffer[2 * v25];
          v26 = *v23;
          if (v24 != *v23)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -4096)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -8192;
              }

              if (v29)
              {
                v27 = v23;
              }

              v30 = v25 + v28++;
              v25 = v30 & v16;
              v23 = &buffer[2 * (v30 & v16)];
              v26 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v27)
            {
              v23 = v27;
            }
          }

LABEL_23:
          *v23 = v24;
          v23[1] = *(v17 + 1);
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v18 = *(a1 + 16);
    if (v18)
    {
      if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_18;
      }

      v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
      v20 = buffer + 2;
      v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v20 - 2) = -4096;
        *v20 = -4096;
        v20 += 4;
        v21 -= 2;
      }

      while (v21);
      if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_18:
        v22 = &buffer[2 * v18];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v22);
      }
    }
  }
}

void *sub_1001495C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = (*a1 + 16 * (v14 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    sub_100149778(a1, v2);
    sub_100083518(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v7 = *a2;
  v7[1] = 0;
  return v7 + 1;
}

void sub_100149778(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((16 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = buffer + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &buffer[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0x9DDFEA08EB382D69 * ((8 * *v17 - 0xAE502812AA7333) ^ HIDWORD(*v17));
          v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v24) ^ (v25 >> 47) ^ v25);
          v27 = (-348639895 * ((v26 >> 47) ^ v26)) & v16;
          v23 = &buffer[2 * v27];
          v28 = *v23;
          if (v24 != *v23)
          {
            v29 = 0;
            v30 = 1;
            while (v28 != -4096)
            {
              if (v29)
              {
                v31 = 0;
              }

              else
              {
                v31 = v28 == -8192;
              }

              if (v31)
              {
                v29 = v23;
              }

              v32 = v27 + v30++;
              v27 = v32 & v16;
              v23 = &buffer[2 * (v32 & v16)];
              v28 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v29)
            {
              v23 = v29;
            }
          }

LABEL_23:
          *v23 = v24;
          v23[1] = *(v17 + 1);
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v18 = *(a1 + 16);
    if (v18)
    {
      if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_18;
      }

      v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
      v20 = buffer + 2;
      v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v20 - 2) = -4096;
        *v20 = -4096;
        v20 += 4;
        v21 -= 2;
      }

      while (v21);
      if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_18:
        v22 = &buffer[2 * v18];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v22);
      }
    }
  }
}

void sub_1001499CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  v6 = *(a3 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v18 = *a2;
    v19 = a2[3];
    do
    {
      v20 = v5 + 1;
      v5 = v19;
      if (v20 != v19)
      {
        v5 = v20;
        while (1)
        {
          v21 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v18, v5) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v22 = v21 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v22 || v21 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            break;
          }

          if (v19 == ++v5)
          {
            v5 = v19;
            break;
          }
        }
      }

      ++v7;
    }

    while (v5 != v6);
  }

  v8 = *(a1 + 8);
  if (v7 + v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v7 + v8, 8);
    v8 = *(a1 + 8);
  }

  v9 = a2[1];
  v10 = *(a3 + 8);
  if (v9 != v10)
  {
    v11 = *a2;
    v12 = a2[3];
    v13 = (*a1 + 8 * v8);
    do
    {
      *v13 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, v9) + 8) & 0xFFFFFFFFFFFFFFF8;
      v14 = v9 + 1;
      v9 = v12;
      if (v14 != v12)
      {
        v9 = v14;
        while (1)
        {
          v15 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, v9) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v16 = v15 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v16 || v15 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            break;
          }

          if (v12 == ++v9)
          {
            v9 = v12;
            break;
          }
        }
      }

      ++v13;
    }

    while (v9 != v10);
    LODWORD(v8) = *(a1 + 8);
  }

  *(a1 + 8) = v8 + v7;
}

void sub_100149B88(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v9 = *(a3 + 8);
  if (v7 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v19 = a2[1];
    do
    {
      v20 = v19 + 1;
      v21 = a2[3];
      if (v19 + 1 != v8)
      {
        v22 = v6 + 56 + 32 * v19;
        v21 = v20;
        while (1)
        {
          v23 = *(*(*(*v22 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v24 = v23 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v24 || v23 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            break;
          }

          ++v21;
          v22 += 32;
          if (v8 == v21)
          {
            v21 = a2[3];
            break;
          }
        }
      }

      ++v10;
      v19 = v21;
    }

    while (v21 != v9);
  }

  v11 = *(a1 + 8);
  if (v10 + v11 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v10 + v11, 8);
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v9 = *(a3 + 8);
    v11 = *(a1 + 8);
  }

  if (v7 != v9)
  {
    v12 = (*a1 + 8 * v11);
    do
    {
      *v12 = *(*(v6 + 32 * v7 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v13 = v7 + 1;
      v14 = v8;
      if (v7 + 1 != v8)
      {
        v15 = v6 + 56 + 32 * v7;
        v14 = v13;
        while (1)
        {
          v16 = *(*(*(*v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v17 = v16 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v17 || v16 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            break;
          }

          ++v14;
          v15 += 32;
          if (v8 == v14)
          {
            v14 = v8;
            break;
          }
        }
      }

      ++v12;
      v7 = v14;
    }

    while (v14 != v9);
    LODWORD(v11) = *(a1 + 8);
  }

  *(a1 + 8) = v11 + v10;
}

uint64_t sub_100149D38(unint64_t **a1, uint64_t a2)
{
  {
    sub_1002A2394();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v12[0] = &v13;
    v12[1] = &_mh_execute_header;
    if ((*(**(a2 + 48) + 16))(*(a2 + 48), a2, 0, 0, v12))
    {
      goto LABEL_11;
    }

    v5 = *(a2 + 48);
    if (*(v5 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v11 = *(v5 + 8);
      ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v11);
      if (!ReferencedDialect)
      {
        goto LABEL_11;
      }
    }

    else
    {
      ReferencedDialect = *(v5 + 24);
      if (!ReferencedDialect)
      {
LABEL_11:
        v8 = v12[0];
        v9 = *v12[0] & 0xFFFFFFFFFFFFFFF8;
        result = v9 != 0;
        if (v9 && *a1)
        {
          **a1 = v9;
        }

        if (v8 != &v13)
        {
          v10 = v9 != 0;
          free(v8);
          return v10;
        }

        return result;
      }
    }

    if (sub_1001490C0(ReferencedDialect))
    {
      v7 = sub_1001490C0(ReferencedDialect);
      (*(*v7 + 16))(v7, a2, 0, 0, v12);
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t *sub_100149EF4(uint64_t *a1, uint64_t *a2, uint64_t **a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6 = a2;
  if (a4 == 3)
  {
    v8 = a1 + 4;
    if (*(**a3 + ((a1 - *a3[1] + 32) >> 2)))
    {
      v17 = a1;
      sub_10014A494(a1 + 4, a2);
      sub_10014A494(v17, v8);
      return v8;
    }

    sub_10014A494(a1, a1 + 4);
    a1 = v8;
LABEL_50:
    sub_10014A494(a1, v6);
    return v6;
  }

  if (a4 == 2)
  {
    goto LABEL_50;
  }

  if (a6 < a4)
  {
    v7 = a4 / 2;
    v8 = &a1[4 * (a4 / 2)];
    v9 = **a3;
    v10 = *a3[1];
    v11 = v8 - 4;
    if (*(v9 + ((v8 - v10 - 32) >> 2)))
    {
      v12 = 32 - 32 * v7;
      v13 = &a1[4 * v7 - 8] - v10;
      v14 = a4 / 2;
      while (v12)
      {
        --v14;
        v15 = *(v9 + (v13 >> 2));
        v12 += 32;
        v13 -= 32;
        if (!v15)
        {
          v16 = a4;
          v11 = (a1 - v12);
          goto LABEL_53;
        }
      }

      v46 = a1;
      v47 = a4 - v7;
      v48 = v8 - v10;
      if (!*(v9 + ((v8 - v10) >> 2)))
      {
LABEL_86:
        v66 = (v6 + 4);
        v67 = v48 + 32;
        v49 = v8;
        while (1)
        {
          v49 += 4;
          if (v49 == v6)
          {
            goto LABEL_90;
          }

          --v47;
          v68 = *(v9 + (v67 >> 2));
          v67 += 32;
          if (v68)
          {
            goto LABEL_89;
          }
        }
      }
    }

    else
    {
      v16 = a4;
LABEL_53:
      v44 = sub_100149EF4(a1, v11);
      v9 = **a3;
      v45 = v16;
      v46 = v44;
      v47 = v45 - v7;
      v48 = v8 - *a3[1];
      if (!*(v9 + (v48 >> 2)))
      {
        goto LABEL_86;
      }
    }

    v49 = v8;
LABEL_89:
    v66 = sub_100149EF4(v49, v6);
LABEL_90:
    if (v46 == v8)
    {
      return v66;
    }

    if (v8 == v66)
    {
      return v46;
    }

    sub_10014A494(v46, v8);
    v6 = v46 + 4;
    for (i = v8 + 4; i != v66; i += 4)
    {
      if (v6 == v8)
      {
        v8 = i;
      }

      sub_10014A494(v6, i);
      v6 += 4;
    }

    if (v6 != v8)
    {
      v70 = v6;
      v71 = v8;
      while (1)
      {
        sub_10014A494(v70, v8);
        v8 += 4;
        v72 = v70 + 4 == v71;
        if (v8 == v66)
        {
          if (v70 + 4 == v71)
          {
            return v6;
          }

          v8 = v71 + 4;
          for (v70 += 8; ; v70 += 4)
          {
            sub_10014A494(v70 - 4, v71);
            v72 = v70 == v71;
            if (v8 != v66)
            {
              break;
            }

            if (v70 == v71)
            {
              return v6;
            }
          }
        }

        else
        {
          v70 += 4;
        }

        if (v72)
        {
          v71 = v8;
        }
      }
    }

    return v8;
  }

  *a5 = 0;
  a5[1] = 0;
  v18 = a1[1];
  a5[2] = a1[2];
  if (v18)
  {
    v19 = *a1;
    *v18 = *a1;
    if (v19)
    {
      *(v19 + 8) = v18;
    }
  }

  a1[1] = 0;
  *a5 = 0;
  a5[1] = 0;
  a5[3] = 0;
  v20 = a1[1];
  if (v20)
  {
    v21 = *a1;
    *v20 = *a1;
    if (v21)
    {
      *(v21 + 8) = v20;
    }
  }

  a1[1] = 0;
  *a5 = 0;
  a5[1] = 0;
  a5[3] = a1[3];
  a1[3] = 0;
  v22 = a5[3];
  if (v22)
  {
    v23 = *v22;
    *a5 = *v22;
    a5[1] = v22;
    if (v23)
    {
      *(v23 + 8) = a5;
    }

    *v22 = a5;
  }

  v24 = a5 + 4;
  v25 = a1 + 4;
  v26 = 1;
  if (a1 + 4 != a2)
  {
    v27 = a1 + 4;
    do
    {
      while (*(**a3 + ((v27 - *a3[1]) >> 2)))
      {
        *v24 = 0;
        v24[1] = 0;
        v28 = v25[1];
        v24[2] = v25[2];
        if (v28)
        {
          v29 = *v25;
          *v28 = *v25;
          if (v29)
          {
            *(v29 + 8) = v28;
          }
        }

        v25[1] = 0;
        *v24 = 0;
        v24[1] = 0;
        v24[3] = 0;
        v30 = v25[1];
        if (v30)
        {
          v31 = *v25;
          *v30 = *v25;
          if (v31)
          {
            *(v31 + 8) = v30;
          }
        }

        v25[1] = 0;
        *v24 = 0;
        v24[1] = 0;
        v24[3] = v25[3];
        v25[3] = 0;
        v32 = v24[3];
        if (v32)
        {
          v33 = *v32;
          *v24 = *v32;
          v24[1] = v32;
          if (v33)
          {
            *(v33 + 8) = v24;
          }

          *v32 = v24;
        }

        ++v26;
        v24 += 4;
        v25 += 4;
        v27 += 4;
        if (v25 == a2)
        {
          goto LABEL_47;
        }
      }

      v34 = a1[1];
      if (v34)
      {
        v35 = *a1;
        *v34 = *a1;
        if (v35)
        {
          *(v35 + 8) = v34;
        }
      }

      v36 = v25[1];
      if (v36)
      {
        v37 = *v25;
        *v36 = *v25;
        if (v37)
        {
          *(v37 + 8) = v36;
        }
      }

      v25[1] = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[3] = v25[3];
      v25[3] = 0;
      v38 = a1[3];
      if (v38)
      {
        v39 = *v38;
        *a1 = *v38;
        a1[1] = v38;
        if (v39)
        {
          *(v39 + 8) = a1;
        }

        *v38 = a1;
      }

      a1 += 4;
      v25 += 4;
      v27 += 4;
    }

    while (v25 != a2);
LABEL_47:
    v40 = v25 - 4;
    v41 = a1[1];
    if (!v41)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  v40 = a1;
  v41 = a1[1];
  if (v41)
  {
LABEL_56:
    v50 = *a1;
    *v41 = *a1;
    if (v50)
    {
      *(v50 + 8) = v41;
    }
  }

LABEL_58:
  v51 = v40[5];
  if (v51)
  {
    v52 = *v25;
    *v51 = v52;
    if (v52)
    {
      *(v52 + 8) = v51;
    }
  }

  v40[5] = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[3] = v40[7];
  v40[7] = 0;
  v53 = a1[3];
  if (v53)
  {
    v54 = *v53;
    *a1 = *v53;
    a1[1] = v53;
    if (v54)
    {
      *(v54 + 8) = a1;
    }

    *v53 = a1;
  }

  v6 = a1 + 4;
  if (v24 > a5)
  {
    v55 = a5;
    v56 = a1 + 4;
    do
    {
      v57 = v56[1];
      if (v57)
      {
        v58 = *v56;
        *v57 = *v56;
        if (v58)
        {
          *(v58 + 8) = v57;
        }
      }

      v59 = v55[1];
      if (v59)
      {
        v60 = *v55;
        *v59 = *v55;
        if (v60)
        {
          *(v60 + 8) = v59;
        }
      }

      v55[1] = 0;
      *v56 = 0;
      v56[1] = 0;
      v56[3] = v55[3];
      v55[3] = 0;
      v61 = v56[3];
      if (v61)
      {
        v62 = *v61;
        *v56 = *v61;
        v56[1] = v61;
        if (v62)
        {
          *(v62 + 8) = v56;
        }

        *v61 = v56;
      }

      v55 += 4;
      v56 += 4;
    }

    while (v55 < v24);
  }

  if (a5 && v26)
  {
    v63 = (a5 + 1);
    do
    {
      v64 = *v63;
      if (*v63)
      {
        v65 = *(v63 - 1);
        *v64 = v65;
        if (v65)
        {
          *(v65 + 8) = v64;
        }
      }

      v63 += 4;
      --v26;
    }

    while (v26);
  }

  return v6;
}

uint64_t *sub_10014A494(uint64_t *result, uint64_t *a2)
{
  v2 = result[1];
  if (v2)
  {
    v3 = *result;
    *v2 = *result;
    if (v3)
    {
      *(v3 + 8) = v2;
    }
  }

  result[1] = 0;
  v4 = result[3];
  result[3] = 0;
  if (v4)
  {
    v5 = *v4;
    v19 = v5;
    v20 = v4;
    if (v5)
    {
      v5[1] = &v19;
      v6 = result[1];
      *v4 = &v19;
      if (v6)
      {
        v7 = *result;
        *v6 = *result;
        if (v7)
        {
          *(v7 + 8) = v6;
        }
      }
    }

    else
    {
      *v4 = &v19;
    }
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *a2;
    *v8 = *a2;
    if (v9)
    {
      *(v9 + 8) = v8;
    }
  }

  a2[1] = 0;
  *result = 0;
  result[1] = 0;
  result[3] = a2[3];
  a2[3] = 0;
  v10 = result[3];
  if (v10)
  {
    v11 = *v10;
    *result = *v10;
    result[1] = v10;
    if (v11)
    {
      *(v11 + 8) = result;
    }

    *v10 = result;
  }

  v12 = a2[1];
  if (v12)
  {
    v13 = *a2;
    *v12 = *a2;
    if (v13)
    {
      *(v13 + 8) = v12;
    }
  }

  v14 = v20;
  if (v20)
  {
    v15 = v19;
    *v20 = v19;
    if (v15)
    {
      v15[1] = v14;
    }
  }

  v20 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[3] = v4;
  if (v4)
  {
    v16 = *v4;
    *a2 = *v4;
    a2[1] = v4;
    if (v16)
    {
      v16[1] = a2;
      v17 = v20;
      *v4 = a2;
      if (v17)
      {
        v18 = v19;
        *v17 = v19;
        if (v18)
        {
          v18[1] = v17;
        }
      }
    }

    else
    {
      *v4 = a2;
    }
  }

  return result;
}

void *sub_10014A5C4(void *result)
{
  v1 = *result;
  {
    v22 = v1;
    v24 = result;
    sub_10029F6C0();
    result = v24;
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v22 + 8);
    v4 = *(v22 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (result)
  {
    v11 = *result;
    {
      v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      if (!v14)
      {
        return result;
      }
    }

    else
    {
      v23 = v11;
      v25 = result;
      sub_10029F6C0();
      result = v25;
      v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v13 = *(v23 + 8);
      v14 = *(v23 + 16);
      if (!v14)
      {
        return result;
      }
    }

    v15 = v13;
    v16 = v14;
    do
    {
      v17 = v16 >> 1;
      v18 = &v15[2 * (v16 >> 1)];
      v20 = *v18;
      v19 = v18 + 2;
      v16 += ~(v16 >> 1);
      if (v20 < v12)
      {
        v15 = v19;
      }

      else
      {
        v16 = v17;
      }
    }

    while (v16);
    if (v15 != &v13[2 * v14] && *v15 == v12)
    {
      v21 = v15[1];
    }
  }

  return result;
}

void sub_10014A758(uint64_t a1, int64x2_t *a2, int64x2_t *a3)
{
  v6 = a2->i64[0];
  v7 = a2->i64[1];
  v8 = a3->i64[0];
  v9 = a3->i64[1];
  v10 = 0;
  if (a2->i64[0] != a3->i64[0] || v7 != v9)
  {
    do
    {
      if (v6 == a2[1].i64[0])
      {
        v7 += 8;
      }

      else
      {
        v6 += 8;
      }

      ++v10;
    }

    while (v6 != v8 || v7 != v9);
  }

  v12 = *(a1 + 8);
  if (v10 + v12 <= *(a1 + 12))
  {
    v21 = a3[1];
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v10 + v12, 8);
    v8 = a3->i64[0];
    v9 = a3->i64[1];
    v21 = a3[1];
    v12 = *(a1 + 8);
  }

  v13 = a2[1];
  v22 = *a2;
  v23 = v13;
  v14 = (*a1 + 8 * v12);
  if (v22.i64[0] == v8)
  {
    goto LABEL_16;
  }

  while (1)
  {
    do
    {
      while (1)
      {
        v16 = &unk_1002D7C80;
        do
        {
          while (1)
          {
            v18 = *(v16 - 1);
            v19 = (v22.i64 + (*v16 >> 1));
            if (*v16)
            {
              break;
            }

            v16 += 2;
            v17 = v18(v19);
            if (v17)
            {
              goto LABEL_22;
            }
          }

          v16 += 2;
          v17 = (*(*v19 + v18))();
        }

        while (!v17);
LABEL_22:
        *v14 = *v17;
        v20 = v22.i64[0];
        if (v22.i64[0] == v23.i64[0])
        {
          break;
        }

        v22.i64[0] += 8;
        ++v14;
        if (v20 + 8 == v8)
        {
          goto LABEL_16;
        }
      }

      if (v22.i64[1] != v23.i64[1])
      {
        v22.i64[1] += 8;
      }

      ++v14;
    }

    while (v22.i64[0] != v8);
LABEL_16:
    if (v22.i64[1] == v9)
    {
      v15 = vmovn_s64(vmvnq_s8(vceqq_s64(v23, v21)));
      if (((v15.i32[0] | v15.i32[1]) & 1) == 0)
      {
        break;
      }
    }
  }

  *(a1 + 8) += v10;
}

uint64_t sub_10014A918(void *a1)
{
  if (*a1 == a1[2])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_10014A92C(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 24))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t sub_10014A940()
{
  {
    sub_1002A23E8();
  }

  return llvm::getTypeName<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>>(void)::Name;
}

const char *sub_10014A988()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::Elementwise<Empty>]";
  v6 = 95;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

__n128 sub_10014AA08@<Q0>(uint64_t a1@<X8>)
{
  v3 = (a1 + 24 * v2);
  result = *v1;
  v3[1].n128_u64[0] = v1[1].n128_u64[0];
  *v3 = result;
  return result;
}

__n128 sub_10014AA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22)
{
  v24 = (v22 + 24 * a22);
  result = *v23;
  v24[1].n128_u64[0] = v23[1].n128_u64[0];
  *v24 = result;
  return result;
}

void sub_10014AA9C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, va, a1 + 1, 24);
}

void sub_10014AAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, va, v14 + 1, 24);
}

void sub_10014AB08(uint64_t a1@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, (a1 + 40), v1 + 1, 24);
}

void sub_10014AB28(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a2 + 40), v2 + 1, 24);
}

void sub_10014AB94(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, uint64_t a15, uint64_t a16)
{
  a10 = a1;
  a14 = 259;

  mlir::Operation::emitOpError(&a16, v16, &a10);
}

void sub_10014ABF0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, int a7, uint64_t a8)
{
  a2 = a1;
  a6 = 259;

  mlir::Operation::emitOpError(&a8, v8, &a2);
}

uint64_t sub_10014AC18()
{
  result = *(v0 - 8);
  *(v0 - 8) = 0;
  return result;
}

void *sub_10014AC64@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a8 = a1;

  return sub_1001495C0(v8, &a8);
}

void sub_10014ACC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a11, v11 + 1, 24);
}

void sub_10014ACDC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{

  mlir::Operation::emitOpError(&a25, v25, &a17);
}

uint64_t sub_10014AD40()
{
  result = *(v0 - 8);
  *(v0 - 8) = 0;
  return result;
}

void sub_10014AD94(llvm *a1@<X0>, uint64_t a2@<X8>)
{

  llvm::deallocate_buffer(a1, (16 * a2), 8uLL);
}

uint64_t sub_10014ADCC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 56) = a2;
  v3 = *(result + 46);
  return result;
}

void sub_10014ADE4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[3] = 0;
}

void sub_10014AE6C(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{

  operator delete(a1);
}

void *mlir::NamedAttrList::NamedAttrList(void *a1, uint64_t a2)
{
  v5 = a2;
  if (a2)
  {
    Value = mlir::DictionaryAttr::getValue(&v5);
  }

  else
  {
    Value = 0;
  }

  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  a1[10] = 0;
  mlir::DictionaryAttr::sort(Value);
  a1[10] = v5 | 4;
  return a1;
}

void mlir::NamedAttrList::findDuplicate(uint64_t **this@<X0>, _BYTE *a2@<X8>)
{
  mlir::DictionaryAttr::findDuplicate(this, (this[10] & 4) != 0, a2);
  if ((this[10] & 4) == 0)
  {
    this[10] = 4;
  }
}

unint64_t mlir::NamedAttrList::getDictionary(mlir::NamedAttrList *this, mlir::MLIRContext *a2)
{
  v4 = *(this + 10);
  if ((v4 & 4) == 0)
  {
    mlir::DictionaryAttr::sortInPlace(this);
    *(this + 10) = 4;
LABEL_4:
    v4 = *(this + 10) & 7 | mlir::DictionaryAttr::getWithSorted(a2, *this, *(this + 2));
    *(this + 10) = v4;
    return v4 & 0xFFFFFFFFFFFFFFF8;
  }

  if (v4 <= 7)
  {
    goto LABEL_4;
  }

  return v4 & 0xFFFFFFFFFFFFFFF8;
}

uint64_t mlir::NamedAttrList::push_back(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  v15 = a3;
  v3 = *(result + 80);
  if ((v3 & 4) != 0)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = result;
      v6 = mlir::NamedAttribute::operator<((*result + 16 * v4 - 16), &v14);
      result = v5;
      v7 = *(v5 + 80) & 0xFFFFFFFFFFFFFFFBLL;
      if (!v6)
      {
        v8 = 0;
LABEL_7:
        LOBYTE(v3) = v8 | v7;
        a2 = v14;
        a3 = v15;
        goto LABEL_8;
      }
    }

    else
    {
      LOBYTE(v7) = v3 & 0xFB;
    }

    v8 = 4;
    goto LABEL_7;
  }

LABEL_8:
  *(result + 80) = v3 & 7;
  v9 = *(result + 8);
  if (v9 >= *(result + 12))
  {
    v11 = a2;
    v12 = a3;
    v13 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v9 + 1, 16);
    a2 = v11;
    a3 = v12;
    result = v13;
    LODWORD(v9) = *(v13 + 8);
  }

  v10 = (*result + 16 * v9);
  *v10 = a2;
  v10[1] = a3;
  ++*(result + 8);
  return result;
}

uint64_t mlir::NamedAttrList::get(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if ((*(a1 + 80) & 4) != 0)
  {
    v3 = sub_10014CA6C(*a1, (*a1 + 16 * v4), a2);
    v6 = v7;
  }

  else
  {
    if (!v4)
    {
      return 0;
    }

    v5 = 16 * v4;
    v6 = 1;
    while (mlir::NamedAttribute::getName(v3) != a2)
    {
      v3 = (v3 + 16);
      v5 -= 16;
      if (!v5)
      {
        return 0;
      }
    }
  }

  if (v6)
  {
    return *(v3 + 1);
  }

  return 0;
}

uint64_t mlir::NamedAttrList::set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v27 = a2;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = (*a1 + 16 * v7);
  if ((*(a1 + 80) & 4) != 0)
  {
    v6 = sub_10014CA6C(*a1, v8, a2);
    v10 = v11;
  }

  else
  {
    if (!v7)
    {
LABEL_11:
      if ((*(a1 + 80) & 4) != 0)
      {
        Value = mlir::StringAttr::getValue(&v27);
        v6 = sub_10014B348(a1, Value, v14);
        v4 = v27;
      }

      mlir::NamedAttribute::NamedAttribute(&v26, v4, a3);
      v15 = v26;
      v16 = *a1;
      v17 = *(a1 + 8);
      v18 = *(a1 + 12);
      if ((*a1 + 16 * v17) == v6)
      {
        if (v17 >= v18)
        {
          v25 = v26;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v17 + 1, 16);
          v15 = v25;
          v17 = *(a1 + 8);
          v16 = *a1;
        }

        *(v16 + v17) = v15;
        ++*(a1 + 8);
      }

      else
      {
        v19 = v6 - v16;
        if (v17 >= v18)
        {
          v24 = v26;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v17 + 1, 16);
          v15 = v24;
          v16 = *a1;
          v17 = *(a1 + 8);
        }

        v20 = (v16 + v19);
        *(v16 + v17) = *(v16 + v17 - 1);
        v21 = *(a1 + 8);
        v22 = *a1 + 16 * v21 - 16;
        if (v22 != v20)
        {
          v23 = v15;
          memmove(v20 + 1, v20, v22 - v20);
          v15 = v23;
          LODWORD(v21) = *(a1 + 8);
        }

        *(a1 + 8) = v21 + 1;
        *v20 = v15;
      }

      result = 0;
      goto LABEL_23;
    }

    v9 = 16 * v7;
    v10 = 1;
    while (mlir::NamedAttribute::getName(v6) != v4)
    {
      v6 = (v6 + 16);
      v9 -= 16;
      if (!v9)
      {
        v6 = v8;
        goto LABEL_11;
      }
    }
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  result = *(v6 + 1);
  if (result == a3)
  {
    return result;
  }

  *(v6 + 1) = a3;
LABEL_23:
  *(a1 + 80) &= 7uLL;
  return result;
}

mlir::NamedAttribute *sub_10014B348(uint64_t a1, const void *a2, size_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if ((*(a1 + 80) & 4) != 0)
  {
    if (!v6)
    {
      return v5;
    }

    while (1)
    {
      v11 = v6 >> 1;
      v7 = (v5 + 16 * (v6 >> 1));
      Name = mlir::NamedAttribute::getName(v7);
      Value = mlir::StringAttr::getValue(&Name);
      v14 = v13;
      v15 = a3 >= v13 ? v13 : a3;
      if (v15)
      {
        v16 = memcmp(Value, a2, v15);
        if (v16)
        {
          break;
        }
      }

      if (v14 == a3)
      {
        return v7;
      }

      if (v14 < a3)
      {
        goto LABEL_11;
      }

LABEL_12:
      v6 = v11;
      if (v11 <= 0)
      {
        return v5;
      }
    }

    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v5 = (v7 + 16);
    v11 = v6 + ~v11;
    goto LABEL_12;
  }

  if (v6)
  {
    v7 = (v5 + 16 * v6);
    if (a3)
    {
      v8 = 16 * v6;
      while (1)
      {
        Name = mlir::NamedAttribute::getName(v5);
        v9 = mlir::StringAttr::getValue(&Name);
        if (v10 == a3 && !memcmp(v9, a2, a3))
        {
          break;
        }

        v5 = (v5 + 16);
        v8 -= 16;
        if (!v8)
        {
          return v7;
        }
      }
    }

    else
    {
      v17 = 16 * v6;
      while (1)
      {
        Name = mlir::NamedAttribute::getName(v5);
        mlir::StringAttr::getValue(&Name);
        if (!v18)
        {
          break;
        }

        v5 = (v5 + 16);
        v17 -= 16;
        if (!v17)
        {
          return v7;
        }
      }
    }
  }

  return v5;
}

uint64_t mlir::NamedAttrList::erase(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if ((*(a1 + 80) & 4) != 0)
  {
    v4 = sub_10014CA6C(*a1, (*a1 + 16 * v5), a2);
    v7 = v8;
  }

  else
  {
    if (!v5)
    {
      return 0;
    }

    v6 = 16 * v5;
    v7 = 1;
    while (mlir::NamedAttribute::getName(v4) != a2)
    {
      v4 = (v4 + 16);
      v6 -= 16;
      if (!v6)
      {
        return 0;
      }
    }
  }

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  result = *(v4 + 1);
  v10 = *(a1 + 8);
  v11 = *a1 + 16 * v10;
  if (v11 != (v4 + 16))
  {
    v12 = *(v4 + 1);
    memmove(v4, v4 + 16, v11 - (v4 + 16));
    result = v12;
    LODWORD(v10) = *(a1 + 8);
  }

  *(a1 + 8) = v10 - 1;
  *(a1 + 80) &= 7uLL;
  return result;
}

void *mlir::OperationState::OperationState(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  *a1 = a2;
  Context = mlir::Attribute::getContext(&v9);
  mlir::OperationName::OperationName(a1 + 1, a3, a4, Context);
  a1[2] = a1 + 4;
  a1[3] = 0x400000000;
  a1[8] = a1 + 10;
  a1[9] = 0x400000000;
  a1[14] = a1 + 16;
  a1[15] = 0x400000000;
  a1[24] = 4;
  a1[25] = a1 + 27;
  a1[26] = &_mh_execute_header;
  a1[28] = a1 + 30;
  a1[29] = &_mh_execute_header;
  a1[31] = 0;
  a1[32] = 0;
  a1[33] = &mlir::detail::TypeIDResolver<void,void>::id;
  a1[34] = 0;
  a1[36] = 0;
  return a1;
}

double mlir::OperationState::OperationState(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a1 + 4;
  a1[3] = 0x400000000;
  a1[8] = a1 + 10;
  a1[9] = 0x400000000;
  a1[14] = a1 + 16;
  a1[15] = 0x400000000;
  a1[24] = 4;
  a1[25] = a1 + 27;
  result = COERCE_DOUBLE(&_mh_execute_header);
  a1[26] = &_mh_execute_header;
  a1[28] = a1 + 30;
  a1[29] = &_mh_execute_header;
  a1[31] = 0;
  a1[32] = 0;
  a1[33] = &mlir::detail::TypeIDResolver<void,void>::id;
  a1[34] = 0;
  a1[36] = 0;
  return result;
}

uint64_t mlir::OperationState::OperationState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void *a13, uint64_t a14)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v19 = (a1 + 32);
  *(a1 + 16) = a1 + 32;
  v20 = a1 + 16;
  *(a1 + 24) = 0x400000000;
  if (a5 < 5)
  {
    if (!a5)
    {
      goto LABEL_32;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v20, v19, a5, 8);
    v19 = (*(a1 + 16) + 8 * *(a1 + 24));
  }

  v21 = a4 & 0xFFFFFFFFFFFFFFF8;
  if ((a4 & 6) == 0 && v21)
  {
    v22 = 0;
    if (a5 < 4 || v19 - v21 <= 0x1F)
    {
      v23 = v19;
    }

    else
    {
      v22 = a5 & 0xFFFFFFFFFFFFFFFCLL;
      v23 = &v19[a5 & 0xFFFFFFFFFFFFFFFCLL];
      v24 = (v21 + 16);
      v25 = v19 + 2;
      v26 = a5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v27 = *v24;
        *(v25 - 1) = *(v24 - 1);
        *v25 = v27;
        v24 += 2;
        v25 += 2;
        v26 -= 4;
      }

      while (v26);
      if (a5 == v22)
      {
        goto LABEL_32;
      }
    }

    v30 = a5 - v22;
    v31 = (v21 + 8 * v22);
    do
    {
      v32 = *v31++;
      *v23++ = v32;
      --v30;
    }

    while (v30);
    goto LABEL_32;
  }

  if ((a4 & 6) == 2 && v21)
  {
    if (a5 > 0xA && (v19 >= v21 + 32 * a5 || v21 + 24 >= &v19[a5]))
    {
      v33 = a5 & 3;
      if ((a5 & 3) == 0)
      {
        v33 = 4;
      }

      v28 = a5 - v33;
      v34 = (v21 + 88);
      v35 = (v19 + 2);
      v36 = v28;
      do
      {
        v37 = v34 - 8;
        v38 = vld4q_f64(v37);
        v39 = vld4q_f64(v34);
        *(v35 - 1) = v38;
        *v35 = v39;
        v34 += 16;
        v35 += 2;
        v36 -= 4;
      }

      while (v36);
      v19 += v28;
    }

    else
    {
      v28 = 0;
    }

    v40 = a5 - v28;
    v41 = (v21 + 32 * v28 + 24);
    do
    {
      v42 = *v41;
      v41 += 4;
      *v19++ = v42;
      --v40;
    }

    while (v40);
  }

  else
  {
    v29 = 0;
    do
    {
      v19[v29] = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, v29);
      ++v29;
    }

    while (a5 != v29);
  }

LABEL_32:
  *(a1 + 64) = a1 + 80;
  *(a1 + 24) += a5;
  *(a1 + 72) = 0x400000000;
  if (a7 < 5)
  {
    if (!a7)
    {
      v46 = 0;
      goto LABEL_39;
    }

    v43 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 64, (a1 + 80), a7, 8);
    v43 = *(a1 + 72);
  }

  v44 = 0;
  v45 = *(a1 + 64) + 8 * v43;
  do
  {
    *(v45 + 8 * v44) = mlir::TypeRange::dereference_iterator(a6, v44);
    ++v44;
  }

  while (a7 != v44);
  v46 = *(a1 + 72);
LABEL_39:
  *(a1 + 72) = v46 + a7;
  *(a1 + 112) = a1 + 128;
  *(a1 + 120) = 0x400000000;
  *(a1 + 192) = 0;
  mlir::DictionaryAttr::sort(a9);
  *(a1 + 192) = 4;
  *(a1 + 200) = a1 + 216;
  *(a1 + 208) = &_mh_execute_header;
  if (a12 < 2)
  {
    if (!a12)
    {
      v50 = 0;
      goto LABEL_46;
    }

    v47 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 200, (a1 + 216), a12, 8);
    v47 = *(a1 + 208);
  }

  v48 = 0;
  v49 = *(a1 + 200) + 8 * v47;
  do
  {
    *(v49 + 8 * v48) = mlir::BlockRange::dereference_iterator(a11, v48);
    ++v48;
  }

  while (a12 != v48);
  v50 = *(a1 + 208);
LABEL_46:
  v51 = a1 + 240;
  *(a1 + 224) = a1 + 240;
  v52 = (a1 + 224);
  *(a1 + 208) = v50 + a12;
  *(a1 + 232) = &_mh_execute_header;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = &mlir::detail::TypeIDResolver<void,void>::id;
  *(a1 + 272) = 0;
  *(a1 + 288) = 0;
  if (a14)
  {
    v53 = 0;
    v54 = a13;
    v55 = 8 * a14;
    v56 = a13;
    do
    {
      if (v53 >= *(a1 + 236))
      {
        if (v51 <= v56 && v51 + 8 * v53 > v56)
        {
          sub_1000AE680(a1 + 224, v53 + 1);
          v57 = (v54 + *v52 - v51);
          v51 = *v52;
          goto LABEL_50;
        }

        sub_1000AE680(a1 + 224, v53 + 1);
        v51 = *v52;
      }

      v57 = v56;
LABEL_50:
      v58 = *(a1 + 232);
      v59 = *v57;
      *v57 = 0;
      *(v51 + 8 * v58) = v59;
      v53 = v58 + 1;
      *(a1 + 232) = v58 + 1;
      ++v56;
      ++v54;
      v55 -= 8;
    }

    while (v55);
  }

  return a1;
}

uint64_t mlir::OperationState::OperationState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void *a13, uint64_t a14)
{
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  mlir::OperationName::OperationName(&v25, a3, a4, Context);
  return mlir::OperationState::OperationState(a1, a2, v25, a5, a6, a7, a8, v21, a9, a10, a11, a12, a13, a14);
}

void mlir::OperationState::~OperationState(mlir::OperationState *this)
{
  if (*(this + 32))
  {
    (*(this + 34))(*(this + 35));
  }

  v2 = *(this + 28);
  v3 = *(this + 58);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2 - 8;
    do
    {
      v6 = *&v5[v4];
      *&v5[v4] = 0;
      if (v6)
      {
        mlir::Region::~Region(v6);
        operator delete();
      }

      v4 -= 8;
    }

    while (v4);
    v2 = *(this + 28);
  }

  if (v2 != this + 240)
  {
    free(v2);
  }

  v7 = *(this + 25);
  if (v7 != this + 216)
  {
    free(v7);
  }

  v8 = *(this + 14);
  if (v8 != this + 128)
  {
    free(v8);
  }

  v9 = *(this + 8);
  if (v9 != this + 80)
  {
    free(v9);
  }

  v10 = *(this + 2);
  if (v10 != this + 32)
  {
    free(v10);
  }
}

void mlir::OperationState::addOperands(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = a3 + v6;
  if (v7 > *(a1 + 28))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v7, 8);
    v6 = *(a1 + 24);
  }

  if (a3)
  {
    v8 = *(a1 + 16);
    v9 = (v8 + 8 * v6);
    v10 = a2 & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 6) != 0 || !v10)
    {
      if ((a2 & 6) == 2 && v10)
      {
        if (a3 > 0xC && (v9 >= v10 + 32 * a3 || v10 + 24 >= v8 + 8 * (a3 + v6)))
        {
          v22 = a3 & 3;
          if ((a3 & 3) == 0)
          {
            v22 = 4;
          }

          v16 = a3 - v22;
          v23 = (v10 + 88);
          v24 = (v9 + 2);
          v25 = v16;
          do
          {
            v26 = v23 - 8;
            v27 = vld4q_f64(v26);
            v28 = vld4q_f64(v23);
            *(v24 - 1) = v27;
            *v24 = v28;
            v23 += 16;
            v24 += 2;
            v25 -= 4;
          }

          while (v25);
          v9 += v16;
        }

        else
        {
          v16 = 0;
        }

        v29 = a3 - v16;
        v30 = (v10 + 32 * v16 + 24);
        do
        {
          v31 = *v30;
          v30 += 4;
          *v9++ = v31;
          --v29;
        }

        while (v29);
      }

      else
      {
        v17 = 0;
        do
        {
          v9[v17] = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, v17);
          ++v17;
        }

        while (a3 != v17);
      }
    }

    else
    {
      if (a3 <= 7 || (v11 = 8 * v6 + v8, v11 - v10 < 0x20))
      {
        v12 = 0;
LABEL_9:
        v13 = a3 - v12;
        v14 = (v10 + 8 * v12);
        do
        {
          v15 = *v14++;
          *v9++ = v15;
          --v13;
        }

        while (v13);
        goto LABEL_32;
      }

      v12 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v9 += a3 & 0xFFFFFFFFFFFFFFFCLL;
      v18 = (v10 + 16);
      v19 = (v11 + 16);
      v20 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 4;
      }

      while (v20);
      if (a3 != v12)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_32:
  *(a1 + 24) += a3;
}

void mlir::OperationState::addSuccessors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 208);
  v7 = a3 + v6;
  if (v7 > *(a1 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 200, (a1 + 216), v7, 8);
    v6 = *(a1 + 208);
  }

  if (a3)
  {
    v8 = 0;
    v9 = *(a1 + 200) + 8 * v6;
    do
    {
      *(v9 + 8 * v8) = mlir::BlockRange::dereference_iterator(a2, v8);
      ++v8;
    }

    while (a3 != v8);
    LODWORD(v6) = *(a1 + 208);
  }

  *(a1 + 208) = v6 + a3;
}

uint64_t mlir::OperationState::addRegion(uint64_t result, char *a2)
{
  v3 = (result + 224);
  v2 = *(result + 224);
  v4 = *(result + 232);
  if (v4 >= *(result + 236))
  {
    v7 = result;
    v8 = a2;
    if (v2 <= a2 && v2 + 8 * v4 > a2)
    {
      v10 = &a2[-v2];
      sub_1000AE680(result + 224, v4 + 1);
      v2 = *v3;
      a2 = &v10[*v3];
      result = v7;
    }

    else
    {
      sub_1000AE680(result + 224, v4 + 1);
      v2 = *v3;
      result = v7;
      a2 = v8;
    }
  }

  v5 = *(result + 232);
  v6 = *a2;
  *a2 = 0;
  *(v2 + 8 * v5) = v6;
  *(result + 232) = v5 + 1;
  return result;
}

uint64_t mlir::OperationState::addRegions(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = (result + 224);
    v3 = *(result + 224);
    v5 = *(result + 232);
    v6 = 8 * a3;
    v7 = a2;
    do
    {
      if (v5 >= *(result + 236))
      {
        v11 = result;
        v12 = a2;
        if (v3 <= v7 && v3 + 8 * v5 > v7)
        {
          v13 = v3;
          sub_1000AE680(v4, v5 + 1);
          v3 = *v4;
          a2 = v12;
          v8 = (v12 + *v4 - v13);
        }

        else
        {
          sub_1000AE680(v4, v5 + 1);
          v3 = *v4;
          v8 = v7;
          a2 = v12;
        }

        result = v11;
      }

      else
      {
        v8 = v7;
      }

      v9 = *(result + 232);
      v10 = *v8;
      *v8 = 0;
      *(v3 + 8 * v9) = v10;
      v5 = v9 + 1;
      *(result + 232) = v9 + 1;
      ++v7;
      ++a2;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t mlir::detail::OperandStorage::OperandStorage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a1 + 8) = a3;
  *a1 = a5 & 0x7FFFFFFF;
  *(a1 + 4) = a5 & 0x7FFFFFFF;
  if ((a5 & 0x7FFFFFFF) != 0)
  {
    v7 = a4 & 0xFFFFFFFFFFFFFFF8;
    if ((a4 & 6) != 0 || !v7)
    {
      if ((a4 & 6) == 2 && v7)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = (*(a1 + 8) + v13);
          v16 = *(v7 + 24 + v13);
          v15[2] = a2;
          v15[3] = v16;
          *v15 = 0;
          v15[1] = v16;
          v17 = *v16;
          *v15 = *v16;
          if (v17)
          {
            *(v17 + 8) = v15;
          }

          *v16 = v15;
          ++v14;
          v13 += 32;
        }

        while (v14 < *(a1 + 4));
      }

      else
      {
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = (*(a1 + 8) + v18);
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, v19);
          v20[2] = a2;
          v20[3] = NextResultAtOffset;
          *v20 = 0;
          v20[1] = NextResultAtOffset;
          v22 = *NextResultAtOffset;
          *v20 = *NextResultAtOffset;
          if (v22)
          {
            *(v22 + 8) = v20;
          }

          *NextResultAtOffset = v20;
          ++v19;
          v18 += 32;
        }

        while (v19 < *(a1 + 4));
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = (*(a1 + 8) + v8);
        v11 = *(v7 + 8 * v9);
        v10[2] = a2;
        v10[3] = v11;
        *v10 = 0;
        v10[1] = v11;
        v12 = *v11;
        *v10 = *v11;
        if (v12)
        {
          *(v12 + 8) = v10;
        }

        *v11 = v10;
        ++v9;
        v8 += 32;
      }

      while (v9 < *(a1 + 4));
    }
  }

  return a1;
}

void mlir::detail::OperandStorage::~OperandStorage(mlir::detail::OperandStorage *this)
{
  v1 = *(this + 1);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = 32 * v2;
    v4 = v1 + 1;
    do
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = *(v4 - 1);
        *v5 = v6;
        if (v6)
        {
          *(v6 + 8) = v5;
        }
      }

      v4 += 4;
      v3 -= 32;
    }

    while (v3);
  }

  if ((*this & 0x80000000) != 0)
  {
    free(v1);
  }
}

uint64_t *mlir::detail::OperandStorage::setOperands(mlir::detail::OperandStorage *a1, mlir::Operation *a2, uint64_t a3, unsigned int a4)
{
  result = mlir::detail::OperandStorage::resize(a1, a2, a4);
  if (a4)
  {
    v7 = result;
    v8 = (a3 & 0xFFFFFFFFFFFFFFF8);
    v9 = a3 & 6;
    if ((a3 & 6) != 0 || !v8)
    {
      v16 = a4;
      if (v9 == 2 && v8)
      {
        v17 = v8 + 3;
        do
        {
          v18 = *v17;
          v19 = v7[1];
          if (v19)
          {
            v20 = *v7;
            *v19 = *v7;
            if (v20)
            {
              *(v20 + 8) = v19;
            }
          }

          v7[3] = v18;
          v21 = *v18;
          *v7 = *v18;
          v7[1] = v18;
          if (v21)
          {
            *(v21 + 8) = v7;
          }

          *v18 = v7;
          v7 += 4;
          v17 += 4;
          --v16;
        }

        while (v16);
      }

      else
      {
        for (i = 0; i != v16; ++i)
        {
          result = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i);
          v23 = v7[1];
          if (v23)
          {
            v24 = *v7;
            *v23 = *v7;
            if (v24)
            {
              *(v24 + 8) = v23;
            }
          }

          v7[3] = result;
          v25 = *result;
          *v7 = *result;
          v7[1] = result;
          if (v25)
          {
            *(v25 + 8) = v7;
          }

          *result = v7;
          v7 += 4;
        }
      }
    }

    else
    {
      v10 = a4;
      do
      {
        v12 = *v8++;
        v11 = v12;
        v13 = v7[1];
        if (v13)
        {
          v14 = *v7;
          *v13 = *v7;
          if (v14)
          {
            *(v14 + 8) = v13;
          }
        }

        v7[3] = v11;
        v15 = *v11;
        *v7 = *v11;
        v7[1] = v11;
        if (v15)
        {
          *(v15 + 8) = v7;
        }

        *v11 = v7;
        v7 += 4;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t *mlir::detail::OperandStorage::resize(mlir::detail::OperandStorage *this, mlir::Operation *a2, unsigned int a3)
{
  v4 = *(this + 1);
  result = v4;
  v6 = *(this + 1);
  if (v6 >= a3)
  {
    if (v6 != a3)
    {
      v27 = a3;
      do
      {
        v28 = &v4[32 * v27];
        v29 = *(v28 + 1);
        if (v29)
        {
          v30 = *v28;
          *v29 = v30;
          if (v30)
          {
            *(v30 + 8) = v29;
          }
        }

        ++v27;
      }

      while (v6 != v27);
    }

    *(this + 1) = a3;
  }

  else
  {
    v7 = *this & 0x7FFFFFFF;
    if (v7 >= a3)
    {
      do
      {
        v20 = &v4[32 * v6];
        *v20 = 0;
        *(v20 + 1) = 0;
        *(v20 + 2) = a2;
        *(v20 + 3) = 0;
        LODWORD(v6) = *(this + 1) + 1;
        *(this + 1) = v6;
      }

      while (v6 != a3);
    }

    else
    {
      v8 = (v7 + 2) | ((v7 + 2) >> 1) | (((v7 + 2) | ((v7 + 2) >> 1)) >> 2);
      v9 = v8 | (v8 >> 4) | ((v8 | (v8 >> 4)) >> 8);
      v10 = (v9 >> 16) | v9;
      if (v10 + 1 > a3)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = a3;
      }

      v13 = this;
      result = malloc_type_malloc(32 * v12, 0xE004003D73A93uLL);
      v15 = v13;
      if (v6)
      {
        v16 = (v4 + 24);
        v17 = 32 * v6;
        v18 = 32 * v6;
        v19 = result;
        do
        {
          *v19 = 0;
          v19[1] = 0;
          v21 = *(v16 - 2);
          v19[2] = *(v16 - 1);
          if (v21)
          {
            v22 = *(v16 - 3);
            *v21 = v22;
            if (v22)
            {
              *(v22 + 8) = v21;
            }
          }

          *(v16 - 2) = 0;
          *v19 = 0;
          v19[1] = 0;
          v19[3] = 0;
          v23 = *(v16 - 2);
          if (v23)
          {
            v24 = *(v16 - 3);
            *v23 = v24;
            if (v24)
            {
              *(v24 + 8) = v23;
            }
          }

          *(v16 - 2) = 0;
          *v19 = 0;
          v19[1] = 0;
          v19[3] = *v16;
          *v16 = 0;
          v25 = v19[3];
          if (v25)
          {
            v26 = *v25;
            *v19 = *v25;
            v19[1] = v25;
            if (v26)
            {
              *(v26 + 8) = v19;
            }

            *v25 = v19;
          }

          v19 += 4;
          v16 += 4;
          v18 -= 32;
        }

        while (v18);
        v31 = (v4 + 8);
        do
        {
          v32 = *v31;
          if (*v31)
          {
            v33 = *(v31 - 1);
            *v32 = v33;
            if (v33)
            {
              *(v33 + 8) = v32;
            }
          }

          v31 += 4;
          v17 -= 32;
        }

        while (v17);
      }

      for (i = *(v13 + 1); i != a3; *(v13 + 1) = i)
      {
        v35 = &result[4 * i];
        *v35 = 0;
        v35[1] = 0;
        v35[2] = a2;
        v35[3] = 0;
        i = *(v13 + 1) + 1;
      }

      if ((*v13 & 0x80000000) != 0)
      {
        v36 = result;
        free(*(v13 + 1));
        result = v36;
        v15 = v13;
      }

      *(v15 + 1) = result;
      *v15 = v12 | 0x80000000;
    }
  }

  return result;
}

uint64_t mlir::MutableOperandRange::MutableOperandRange(uint64_t a1, uint64_t a2, int a3, int a4, const void *a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  v9 = (a1 + 32);
  *(a1 + 16) = a1 + 32;
  v10 = a1 + 16;
  *(a1 + 24) = &_mh_execute_header;
  v11 = 3 * a6;
  v12 = (24 * a6) >> 3;
  v13 = -1431655765 * v12;
  if (0xAAAAAAAAAAAAAAABLL * v12 >= 2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v10, v9, 0xAAAAAAAAAAAAAAABLL * v12, 24);
    v14 = *(a1 + 24);
    if (!a6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = 0;
  if (a6)
  {
LABEL_5:
    memcpy((*(a1 + 16) + 24 * v14), a5, 8 * v11);
    v14 = *(a1 + 24);
  }

LABEL_6:
  *(a1 + 24) = v14 + v13;
  return a1;
}

uint64_t *mlir::ResultRange::use_begin@<X0>(uint64_t *this@<X0>, uint64_t *a2@<X8>)
{
  v2 = *this;
  v3 = this[1];
  *a2 = *this;
  a2[1] = 0;
  a2[2] = v2;
  a2[3] = v3;
  a2[4] = 0;
  if (v3)
  {
    v5 = 0;
    while (1)
    {
      this = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, v5);
      if (*this)
      {
        break;
      }

      if (v3 == ++v5)
      {
        v6 = 0;
        a2[1] = v3;
        goto LABEL_9;
      }
    }

    a2[1] = v5;
    if (v3 == v5)
    {
      v6 = 0;
    }

    else
    {
      this = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, v5);
      v6 = *this;
    }

LABEL_9:
    a2[4] = v6;
  }

  return this;
}

__n128 mlir::ResultRange::use_end@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = *this;
  *a2 = *this;
  a2[1] = result;
  a2[2].n128_u64[0] = 0;
  return result;
}

uint64_t *mlir::ResultRange::UseIterator::operator++(uint64_t *a1)
{
  mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, a1[1]);
  v2 = a1[4];
  if (v2)
  {
    a1[4] = *v2;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, a1[1]);
  if (a1[4])
  {
    return a1;
  }

  v4 = a1[1] + 1;
  a1[1] = v4;
  if (v4 == a1[3])
  {
    a1[4] = 0;
    return a1;
  }

  else
  {
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, v4);
      v6 = a1[1];
      v7 = a1[3];
      if (*NextResultAtOffset)
      {
        break;
      }

      v4 = v6 + 1;
      a1[1] = v4;
      if (v4 == v7)
      {
        a1[4] = 0;
        return a1;
      }
    }

    if (v6 == v7)
    {
      a1[4] = 0;
    }

    else
    {
      a1[4] = *mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, v6);
    }

    return a1;
  }
}

unint64_t *mlir::ValueRange::ValueRange(unint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2 & 0xFFFFFFFFFFFFFFF9;
  result[1] = a3;
  return result;
}

{
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 2;
  result[1] = a3;
  return result;
}

{
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 4;
  result[1] = a3;
  return result;
}

unint64_t mlir::ValueRange::offset_base(void *a1, uint64_t a2)
{
  v2 = *a1 & 6;
  v3 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    return v3 + 8 * a2;
  }

  if (v2 != 2 || v3 == 0)
  {
    return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, a2) & 0xFFFFFFFFFFFFFFF9 | 4;
  }

  else
  {
    return (v3 + 32 * a2) | 2;
  }
}

uint64_t mlir::ValueRange::dereference_iterator(void *a1, uint64_t a2)
{
  v2 = *a1 & 6;
  v3 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    return *(v3 + 8 * a2);
  }

  if (v2 != 2 || v3 == 0)
  {
    return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, a2);
  }

  else
  {
    return *(v3 + 32 * a2 + 24);
  }
}

mlir::OperationFingerPrint *mlir::OperationFingerPrint::OperationFingerPrint(mlir::OperationFingerPrint *this, mlir::Operation *a2, int a3)
{
  v9 = a2;
  llvm::SHA1::init(v8);
  v7[0] = v8;
  v7[1] = &v9;
  if (a3)
  {
    sub_1000B05C8(a2, sub_1002A2674, v7, 1);
  }

  else
  {
    sub_1002A2458(v7, a2);
  }

  llvm::SHA1::result(v8, &v10);
  *this = v10;
  *(this + 4) = v11;
  return this;
}

mlir::NamedAttribute *sub_10014CA6C(mlir::NamedAttribute *this, mlir::NamedAttribute *a2, uint64_t a3)
{
  v3 = this;
  v17 = a3;
  v4 = (a2 - this) >> 4;
  if (v4 >= 17)
  {
    Value = mlir::StringAttr::getValue(&v17);
    v7 = v6;
    while (1)
    {
      v8 = v4 >> 1;
      Name = mlir::NamedAttribute::getName((v3 + 16 * (v4 >> 1)));
      v9 = mlir::StringAttr::getValue(&Name);
      v11 = v10;
      v12 = v7 >= v10 ? v10 : v7;
      if (v12)
      {
        v13 = memcmp(v9, Value, v12);
        if (v13)
        {
          break;
        }
      }

      if (v11 == v7)
      {
        return (v3 + 16 * (v4 >> 1));
      }

      if (v11 < v7)
      {
        goto LABEL_3;
      }

LABEL_4:
      v4 = v8;
      if (v8 <= 0)
      {
        return v3;
      }
    }

    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    v3 = (v3 + 16 * (v4 >> 1) + 16);
    v8 = v4 + ~v8;
    goto LABEL_4;
  }

  if (this == a2)
  {
    return a2;
  }

  while (mlir::NamedAttribute::getName(v3) != a3)
  {
    v3 = (v3 + 16);
    if (v3 == a2)
    {
      return a2;
    }
  }

  return v3;
}

uint64_t sub_10014CB90()
{
  {
    sub_1002A2678();
  }

  return llvm::getTypeName<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>>(void)::Name;
}

const char *sub_10014CBD8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::IsCommutative<Empty>]";
  v6 = 97;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

_DWORD *sub_10014CC64@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4)
{
  a4 = a2;

  return llvm::SHA1::update(a1, &a4, 8uLL);
}

_DWORD *sub_10014CC80(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = a1;

  return llvm::SHA1::update(v10, &a10, 8uLL);
}

_DWORD *sub_10014CCA0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{
  a3 = a1;
  v5 = *v3;

  return llvm::SHA1::update(v5, &a3, 8uLL);
}

uint64_t mlir::Pattern::Pattern(uint64_t a1, uint64_t a2, int a3, void *a4, unint64_t a5, __int16 a6, uint64_t a7)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a6;
  *(a1 + 16) = a7 & 0xFFFFFFFFFFFFFFFBLL;
  v8 = (a1 + 40);
  *(a1 + 24) = a1 + 40;
  v9 = a1 + 24;
  *(a1 + 32) = 0x200000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a1 + 88;
  *(a1 + 80) = 0;
  if (a5)
  {
    if (a5 >= 3)
    {
      v12 = a5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, v8, a5, 8);
      a5 = v12;
    }

    v13 = &a4[2 * a5];
    do
    {
      mlir::OperationName::OperationName(&v17, *a4, a4[1], a7);
      v14 = v17;
      v15 = *(a1 + 32);
      if (v15 >= *(a1 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v15 + 1, 8);
        v15 = *(a1 + 32);
      }

      *(*(a1 + 24) + 8 * v15) = v14;
      ++*(a1 + 32);
      a4 += 2;
    }

    while (a4 != v13);
  }

  return a1;
}

uint64_t sub_10014CE64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a2;
  v20 = 0;
  v21 = a4;
  v22 = 0;
  if (a3 && a5)
  {
    v7 = result;
    v8 = 0;
    do
    {
      v11 = mlir::ValueRange::dereference_iterator(&v19, v8);
      result = mlir::ValueRange::dereference_iterator(&v21, v22);
      v12 = *v11;
      if (*v11)
      {
        v13 = result;
        do
        {
          v14 = *v12;
          v15 = v12[2];
          (*(*v7 + 40))(v7, v15);
          v16 = v12[1];
          if (v16)
          {
            v17 = *v12;
            *v16 = *v12;
            if (v17)
            {
              v17[1] = v16;
            }
          }

          v12[3] = v13;
          v18 = *v13;
          *v12 = *v13;
          v12[1] = v13;
          if (v18)
          {
            *(v18 + 8) = v12;
          }

          *v13 = v12;
          result = (*(*v7 + 48))(v7, v15);
          v12 = v14;
        }

        while (v14);
      }

      v8 = v20 + 1;
      v9 = v22 + 1;
      v20 = v8;
      ++v22;
    }

    while (v8 != a3 && v9 != a5);
  }

  return result;
}

uint64_t mlir::RewriterBase::replaceOp(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[2];
  if (v8 && v8[2] == 1)
  {
    (*(*v8 + 56))(v8, a2, a3, a4);
  }

  v9 = *(a2 + 36);
  if (v9)
  {
    v10 = a2 - 16;
  }

  else
  {
    v10 = 0;
  }

  mlir::ValueRange::ValueRange(v12, v10, v9);
  sub_10014CE64(a1, v12[0], v12[1], a3, a4);
  return (*(*a1 + 16))(a1, a2);
}

uint64_t mlir::RewriterBase::replaceOp(mlir::RewriterBase *this, mlir::Operation *a2, mlir::Operation *a3)
{
  if (*(a3 + 9))
  {
    v5 = a3 - 16;
  }

  else
  {
    v5 = 0;
  }

  mlir::ValueRange::ValueRange(&v12, v5, *(a3 + 9));
  v6 = v12;
  v7 = v13;
  v8 = *(this + 2);
  if (v8 && v8[2] == 1)
  {
    (*(*v8 + 56))(v8, a2, v12, v13);
  }

  v9 = *(a2 + 9);
  if (v9)
  {
    v10 = a2 - 16;
  }

  else
  {
    v10 = 0;
  }

  mlir::ValueRange::ValueRange(v14, v10, v9);
  sub_10014CE64(this, v14[0], v14[1], v6, v7);
  return (*(*this + 16))(this, a2);
}

void mlir::RewriterBase::eraseOp(mlir::RewriterBase *this, mlir::Operation *a2)
{
  v2 = *(this + 2);
  if (v2 && *(v2 + 8) == 1)
  {
    v3 = *(this + 2);
    operator new();
  }

  mlir::Operation::erase(a2);
}

void mlir::RewriterBase::eraseBlock(mlir::RewriterBase *this, mlir::Block *a2)
{
  v5 = a2 + 32;
  v4 = *(a2 + 4);
  if (v4 != (a2 + 32))
  {
    do
    {
      v6 = *v4;
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v4);
      (*(*this + 16))(this, ValuePtr);
      v4 = v6;
    }

    while (v6 != v5);
  }

  v8 = *(this + 2);
  if (v8 && v8[2] == 1)
  {
    (*(*v8 + 32))(v8, a2);
  }

  mlir::Block::erase(a2);
}

_DWORD *mlir::RewriterBase::finalizeOpModification(mlir::RewriterBase *this, mlir::Operation *a2)
{
  result = *(this + 2);
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 40))(result, a2);
    }
  }

  return result;
}

uint64_t mlir::RewriterBase::replaceUsesWithIf(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t *), uint64_t a7, char *a8)
{
  v25 = a2;
  v26 = 0;
  v27 = a4;
  v28 = 0;
  if (a3)
  {
    v10 = result;
    v11 = 0;
    v12 = 1;
    do
    {
      v14 = mlir::ValueRange::dereference_iterator(&v25, v11);
      result = mlir::ValueRange::dereference_iterator(&v27, v28);
      v15 = *v14;
      if (v15)
      {
        v16 = result;
        v13 = 1;
        do
        {
          v17 = *v15;
          result = a6(a7, v15);
          v18 = result;
          if (result)
          {
            v19 = v15[2];
            (*(*v10 + 40))(v10, v19);
            v20 = v15[1];
            if (v20)
            {
              v21 = *v15;
              *v20 = *v15;
              if (v21)
              {
                v21[1] = v20;
              }
            }

            v15[3] = v16;
            v22 = *v16;
            *v15 = *v16;
            v15[1] = v16;
            if (v22)
            {
              *(v22 + 8) = v15;
            }

            *v16 = v15;
            result = (*(*v10 + 48))(v10, v19);
          }

          v13 &= v18;
          v15 = v17;
        }

        while (v17);
      }

      else
      {
        v13 = 1;
      }

      v12 &= v13;
      v11 = v26 + 1;
      v26 = v11;
      ++v28;
    }

    while (v11 != a3);
  }

  else
  {
    v12 = 1;
  }

  if (a8)
  {
    *a8 = v12;
  }

  return result;
}

uint64_t mlir::RewriterBase::inlineBlockBefore(void *a1, void *a2, mlir::Block *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = a2[6];
  v10 = a2[7];
  v35 = v9;
  v36 = a5;
  v37 = 0;
  if (v9 != v10 && a6 != 0)
  {
    v19 = 0;
    do
    {
      v21 = mlir::ValueRange::dereference_iterator(&v36, v19);
      v22 = **v9;
      if (v22)
      {
        v23 = v21;
        do
        {
          v24 = *v22;
          v25 = v22[2];
          (*(*a1 + 40))(a1, v25);
          v26 = v22[1];
          if (v26)
          {
            v27 = *v22;
            *v26 = *v22;
            if (v27)
            {
              v27[1] = v26;
            }
          }

          v22[3] = v23;
          v28 = *v23;
          *v22 = *v23;
          v22[1] = v23;
          if (v28)
          {
            *(v28 + 8) = v22;
          }

          *v23 = v22;
          (*(*a1 + 48))(a1, v25);
          v22 = v24;
        }

        while (v24);
      }

      v9 = v35 + 1;
      v19 = v37 + 1;
      v35 = v9;
      ++v37;
    }

    while (v9 != v10 && v19 != a6);
  }

  v13 = a2 + 4;
  v12 = a2[4];
  if (a1[2])
  {
    if (v12 != a2 + 4)
    {
      do
      {
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(a2[5]);
        v16 = *(ValuePtr + 8);
        v15 = *(ValuePtr + 16);
        mlir::Operation::moveBefore(ValuePtr, a3, a4);
        v17 = a1[2];
        if (v17)
        {
          (*(*v17 + 16))(v17, ValuePtr, v15, v16);
        }
      }

      while (*v13 != v13);
    }
  }

  else if (v12 != a2 + 4 && v13 != a4)
  {
    v29 = a2[5];
    llvm::ilist_traits<mlir::Operation>::transferNodesFromList(a3 + 32, (a2 + 4), v29, (a2 + 4));
    if (v29 != v13)
    {
      v30 = *v13;
      v31 = *v29;
      *(v31 + 8) = v13;
      *v13 = v31;
      v32 = *a4;
      v30[1] = a4;
      *v29 = v32;
      *(v32 + 8) = v29;
      *a4 = v30;
    }
  }

  return (*(*a1 + 24))(a1, a2);
}

uint64_t mlir::RewriterBase::moveOpBefore(uint64_t a1, uint64_t a2, mlir::Block *this, uint64_t *a4)
{
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  mlir::Operation::moveBefore(a2, this, a4);
  result = *(a1 + 16);
  if (result)
  {
    v8 = *(*result + 16);

    return v8();
  }

  return result;
}

uint64_t mlir::RewriterBase::moveBlockBefore(uint64_t a1, mlir::Block *this, uint64_t a3, uint64_t *a4)
{
  mlir::Block::getParent(this);
  v8 = *(this + 2);
  mlir::Block::moveBefore(this, a3, a4);
  result = *(a1 + 16);
  if (result)
  {
    v10 = *(*result + 24);

    return v10();
  }

  return result;
}

__n128 sub_10014DA7C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D7CA8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10014DAB4(uint64_t a1, unsigned int **a2)
{
  v103 = *a2;
  v3 = (*a2)[11];
  if ((v3 & 0x7FFFFF) != 0)
  {
    v4 = *(a1 + 16);
    v104 = ((&v103[4 * ((v3 >> 23) & 1) + 17] + ((v3 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v103[10];
    v5 = (v104 + 24 * (v3 & 0x7FFFFF));
    while (1)
    {
      v106 = v5;
      v6 = *(v5 - 3);
      v5 -= 3;
      if (v6 != v5)
      {
        break;
      }

LABEL_3:
      if (v5 == v104)
      {
        goto LABEL_165;
      }
    }

    v105 = v5;
LABEL_7:
    v120 = v122;
    v121 = 0x600000000;
    v107 = v111;
    v108 = 0x100000004;
    v109 = 0;
    v110 = 1;
    v111[0] = 0;
    v7 = *(v106 - 2);
    v135 = &v107;
    __src = v138;
    v137 = 0x800000000;
    if (!v7)
    {
      v14 = 0;
      v127 = &v107;
      __dst = v130;
      v129 = 0x800000000;
      goto LABEL_34;
    }

    v8 = (v7 - 8);
    HIDWORD(v108) = 2;
    v111[1] = v7 - 8;
    mlir::SuccessorRange::SuccessorRange(&v131, (v7 - 8));
    v9 = v131;
    mlir::SuccessorRange::SuccessorRange(&v131, v8);
    v10 = v131;
    v11 = v132;
    v12 = v137;
    if (v137 >= HIDWORD(v137))
    {
      v131 = v8;
      v132 = v9;
LABEL_160:
      v133 = 0;
      v134[0] = v10;
      v134[1] = v11;
      if (__src <= &v131 && __src + 40 * v12 > &v131)
      {
        v95 = &v131 - __src;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v138, v12 + 1, 40);
        v91 = __src;
        v90 = (__src + v95);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v138, v12 + 1, 40);
        v90 = &v131;
        v91 = __src;
      }

      v92 = &v91[40 * v137];
      v93 = *v90;
      v94 = *(v90 + 1);
      *(v92 + 4) = v90[4];
      *v92 = v93;
      *(v92 + 1) = v94;
    }

    else
    {
      v13 = __src + 40 * v137;
      *v13 = v8;
      v13[1] = v9;
LABEL_12:
      v13[2] = 0;
      v13[3] = v10;
      v13[4] = v11;
    }

    v14 = v137 + 1;
    LODWORD(v137) = v137 + 1;
    while (1)
    {
      while (1)
      {
        v15 = __src;
        v16 = __src + 40 * v14;
        v17 = *(v16 - 3);
        if (v17 == *(v16 - 1))
        {
          v127 = v135;
          __dst = v130;
          v129 = 0x800000000;
          if (v14)
          {
            v26 = v130;
            v27 = v14;
            if (v14 < 9)
            {
              goto LABEL_30;
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v130, v14, 40);
            v27 = v137;
            if (v137)
            {
              v26 = __dst;
              v15 = __src;
LABEL_30:
              memcpy(v26, v15, 40 * v27);
            }

            LODWORD(v129) = v14;
            v15 = __src;
          }

          if (v15 != v138)
          {
            free(v15);
            v14 = v129;
          }

LABEL_34:
          v123 = &v107;
          v124 = v126;
          v125 = 0x800000000;
          v28 = v127;
          v135 = v127;
          __src = v138;
          v137 = 0x800000000;
          if (!v14)
          {
            v30 = 0;
            v131 = &v107;
            v132 = v134;
            v133 = 0x800000000;
            v112 = v127;
            v113 = v115;
            v114 = 0x800000000;
            goto LABEL_56;
          }

          v29 = __dst;
          if (__dst != v130)
          {
            __src = __dst;
            v137 = __PAIR64__(HIDWORD(v129), v14);
            __dst = v130;
            v129 = 0;
            v131 = &v107;
            v132 = v134;
            v133 = 0x800000000;
            goto LABEL_37;
          }

          v32 = v14;
          if (v14 < 9)
          {
            v33 = v138;
LABEL_48:
            memcpy(v33, v29, 40 * v32);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v138, v14, 40);
            v32 = v129;
            if (v129)
            {
              v29 = __dst;
              v33 = __src;
              goto LABEL_48;
            }
          }

          LODWORD(v137) = v14;
          v30 = v125;
          LODWORD(v129) = 0;
          v131 = v123;
          v132 = v134;
          v133 = 0x800000000;
          if (!v125)
          {
            v28 = v135;
LABEL_37:
            v30 = 0;
            v112 = v28;
            v113 = v115;
            v114 = 0x800000000;
LABEL_38:
            v31 = __src;
            if (__src != v138)
            {
              v113 = __src;
              v114 = __PAIR64__(HIDWORD(v137), v14);
              __src = v138;
              HIDWORD(v137) = 0;
LABEL_55:
              LODWORD(v137) = 0;
              goto LABEL_56;
            }

            v34 = v14;
            if (v14 < 9)
            {
              v35 = v115;
LABEL_53:
              memcpy(v35, v31, 40 * v34);
            }

            else
            {
              LODWORD(v114) = 0;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v113, v115, v14, 40);
              v34 = v137;
              if (v137)
              {
                v31 = __src;
                v35 = v113;
                goto LABEL_53;
              }
            }

            LODWORD(v114) = v14;
            v30 = v133;
            goto LABEL_55;
          }

          v36 = v124;
          if (v124 != v126)
          {
            v132 = v124;
            v133 = v125;
            v124 = v126;
            v125 = 0;
            v112 = v135;
            v113 = v115;
            v114 = 0x800000000;
            goto LABEL_38;
          }

          if (v125 < 9uLL)
          {
            v89 = v134;
            v88 = v125;
LABEL_156:
            memcpy(v89, v36, 40 * v88);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v134, v125, 40);
            v88 = v125;
            if (v125)
            {
              v36 = v124;
              v89 = v132;
              goto LABEL_156;
            }
          }

          LODWORD(v133) = v30;
          v14 = v137;
          LODWORD(v125) = 0;
          v112 = v135;
          v113 = v115;
          v114 = 0x800000000;
          if (v137)
          {
            goto LABEL_38;
          }

LABEL_56:
          v37 = v132;
          v116 = v131;
          v117 = v119;
          v118 = 0x800000000;
          if (v30)
          {
            if (v132 != v134)
            {
              v117 = v132;
              v118 = __PAIR64__(HIDWORD(v133), v30);
              v132 = v134;
              HIDWORD(v133) = 0;
              v37 = v134;
              goto LABEL_64;
            }

            v38 = v119;
            v39 = v30;
            if (v30 < 9)
            {
LABEL_62:
              memcpy(v38, v37, 40 * v39);
              v37 = v132;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v119, v30, 40);
              v39 = v133;
              v37 = v132;
              if (v133)
              {
                v38 = v117;
                goto LABEL_62;
              }
            }

            LODWORD(v118) = v30;
LABEL_64:
            LODWORD(v133) = 0;
          }

          if (v37 != v134)
          {
            free(v37);
          }

          if (__src != v138)
          {
            free(__src);
          }

          if (v124 != v126)
          {
            free(v124);
          }

          if (__dst != v130)
          {
            free(__dst);
          }

          v135 = v112;
          __src = v138;
          v137 = 0x800000000;
          v40 = v114;
          if (v114)
          {
            v41 = v138;
            v42 = v114;
            if (v114 < 9)
            {
              goto LABEL_77;
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v138, v114, 40);
            v42 = v114;
            if (v114)
            {
              v41 = __src;
LABEL_77:
              memcpy(v41, v113, 40 * v42);
            }

            LODWORD(v137) = v40;
          }

          v131 = v116;
          v132 = v134;
          v133 = 0x800000000;
          v43 = v118;
          if (!v118)
          {
            goto LABEL_86;
          }

          v44 = v134;
          v45 = v118;
          if (v118 < 9)
          {
LABEL_83:
            memcpy(v44, v117, 40 * v45);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v134, v118, 40);
            v45 = v118;
            if (v118)
            {
              v44 = v132;
              goto LABEL_83;
            }
          }

          LODWORD(v133) = v43;
          v40 = v137;
LABEL_86:
          while (2)
          {
            v46 = __src;
            if (v40 != v43)
            {
LABEL_97:
              v50 = *(__src + 5 * v40 - 5);
              v51 = *(v50 + 32);
              if (v51 != (v50 + 32))
              {
                do
                {
                  v52 = *v51;
                  ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v51);
                  v54 = *(a1 + 8);
                  v127 = ValuePtr;
                  v55 = *(v54 + 24);
                  if (!v55)
                  {
                    sub_10000520C();
                  }

                  (*(*v55 + 48))(v55, &v127);
                  v51 = v52;
                }

                while (v52 != (v50 + 32));
              }

              v56 = v121;
              if (v121 >= HIDWORD(v121))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v120, v122, v121 + 1, 8);
                v56 = v121;
              }

              *(v120 + v56) = v50;
              LODWORD(v121) = v121 + 1;
              v40 = v137 - 1;
              LODWORD(v137) = v137 - 1;
              if (!v137)
              {
LABEL_85:
                v43 = v133;
                continue;
              }

              while (1)
              {
LABEL_105:
                v57 = __src + 40 * v40;
                v58 = *(v57 - 3);
                if (v58 == *(v57 - 1))
                {
                  goto LABEL_85;
                }

                v59 = *(v57 - 4);
                *(v57 - 3) = v58 + 1;
                v60 = *(v59 + 32 * v58 + 24);
                if (*(v135 + 20) != 1)
                {
                  goto LABEL_113;
                }

                v61 = *v135;
                v62 = *(v135 + 3);
                if (!v62)
                {
                  break;
                }

                v63 = 8 * v62;
                v64 = *v135;
                while (*v64 != v60)
                {
                  ++v64;
                  v63 -= 8;
                  if (!v63)
                  {
                    goto LABEL_111;
                  }
                }
              }

LABEL_111:
              if (v62 >= *(v135 + 2))
              {
LABEL_113:
                llvm::SmallPtrSetImplBase::insert_imp_big(v135, v60);
                if ((v65 & 1) == 0)
                {
                  v40 = v137;
                  goto LABEL_105;
                }
              }

              else
              {
                *(v135 + 3) = v62 + 1;
                v61[v62] = v60;
              }

              mlir::SuccessorRange::SuccessorRange(&v127, v60);
              v66 = v127;
              mlir::SuccessorRange::SuccessorRange(&v127, v60);
              v67 = v127;
              v68 = __dst;
              if (v137 >= HIDWORD(v137))
              {
                v127 = v60;
                __dst = v66;
                v129 = 0;
                v130[0] = v67;
                v130[1] = v68;
                if (__src <= &v127 && __src + 40 * v137 > &v127)
                {
                  v75 = &v127 - __src;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v138, v137 + 1, 40);
                  v71 = __src;
                  v70 = (__src + v75);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v138, v137 + 1, 40);
                  v70 = &v127;
                  v71 = __src;
                }

                v72 = &v71[40 * v137];
                v73 = *v70;
                v74 = *(v70 + 1);
                *(v72 + 4) = v70[4];
                *v72 = v73;
                *(v72 + 1) = v74;
              }

              else
              {
                v69 = (__src + 40 * v137);
                *v69 = v60;
                v69[1] = v66;
                v69[2] = 0;
                v69[3] = v67;
                v69[4] = v68;
              }

              v40 = v137 + 1;
              LODWORD(v137) = v137 + 1;
              goto LABEL_105;
            }

            break;
          }

          if (v43)
          {
            v47 = v132;
            v48 = __src;
            do
            {
              v49 = *v48 == *v47 && v48[2] == v47[2];
              if (!v49 || v48[4] != v47[4])
              {
                goto LABEL_97;
              }

              v48 += 5;
              v47 += 5;
            }

            while (v48 != (__src + 40 * v43));
          }

          if (v132 != v134)
          {
            free(v132);
            v46 = __src;
          }

          if (v46 != v138)
          {
            free(v46);
          }

          if (v117 != v119)
          {
            free(v117);
          }

          if (v113 != v115)
          {
            free(v113);
          }

          if (v121)
          {
            v76 = v120;
            v77 = v120 + 8 * v121;
            do
            {
              v78 = *v76;
              v79 = *(*v76 + 48);
              v80 = *(*v76 + 56);
              while (v79 != v80)
              {
                v81 = *v79;
                while (1)
                {
                  v82 = *v81;
                  if (!*v81)
                  {
                    break;
                  }

                  v83 = v82[1];
                  if (v83)
                  {
                    v84 = *v82;
                    *v83 = *v82;
                    if (v84)
                    {
                      *(v84 + 8) = v83;
                    }
                  }

                  *v82 = 0;
                  v82[1] = 0;
                  v82[3] = 0;
                }

                ++v79;
              }

              while (1)
              {
                v85 = *v78;
                if (!*v78)
                {
                  break;
                }

                v86 = v85[1];
                if (v86)
                {
                  v87 = *v85;
                  *v86 = *v85;
                  if (v87)
                  {
                    *(v87 + 8) = v86;
                  }
                }

                *v85 = 0;
                v85[1] = 0;
                v85[3] = 0;
              }

              (*(*v4 + 24))(v4);
              v76 += 8;
            }

            while (v76 != v77);
          }

          if ((v110 & 1) == 0)
          {
            free(v107);
          }

          if (v120 != v122)
          {
            free(v120);
          }

          v5 = v105;
          if (*v105 == v105)
          {
            goto LABEL_3;
          }

          goto LABEL_7;
        }

        v18 = *(v16 - 4);
        *(v16 - 3) = v17 + 1;
        v19 = *(v18 + 32 * v17 + 24);
        if (*(v135 + 20) == 1)
        {
          break;
        }

LABEL_21:
        llvm::SmallPtrSetImplBase::insert_imp_big(v135, v19);
        if (v24)
        {
          goto LABEL_24;
        }

        v14 = v137;
      }

      v20 = *v135;
      v21 = *(v135 + 3);
      if (!v21)
      {
LABEL_20:
        if (v21 < *(v135 + 2))
        {
          *(v135 + 3) = v21 + 1;
          v20[v21] = v19;
LABEL_24:
          mlir::SuccessorRange::SuccessorRange(&v131, v19);
          v25 = v131;
          mlir::SuccessorRange::SuccessorRange(&v131, v19);
          v10 = v131;
          v11 = v132;
          v12 = v137;
          if (v137 < HIDWORD(v137))
          {
            v13 = __src + 40 * v137;
            *v13 = v19;
            v13[1] = v25;
            goto LABEL_12;
          }

          v131 = v19;
          v132 = v25;
          goto LABEL_160;
        }

        goto LABEL_21;
      }

      v22 = 8 * v21;
      v23 = *v135;
      while (*v23 != v19)
      {
        ++v23;
        v22 -= 8;
        if (!v22)
        {
          goto LABEL_20;
        }
      }
    }
  }

LABEL_165:
  (*(****(a1 + 24) + 64))(***(a1 + 24), v103);
  v96 = v103[9];
  if (v96)
  {
    v97 = (v103 - 4);
  }

  else
  {
    v97 = 0;
  }

  if (v96)
  {
    for (i = 0; i != v96; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v97, i);
      while (1)
      {
        v100 = *NextResultAtOffset;
        if (!*NextResultAtOffset)
        {
          break;
        }

        v101 = v100[1];
        if (v101)
        {
          v102 = *v100;
          *v101 = *v100;
          if (v102)
          {
            *(v102 + 8) = v101;
          }
        }

        *v100 = 0;
        v100[1] = 0;
        v100[3] = 0;
      }
    }
  }

  mlir::Operation::erase(v103);
}

void *mlir::Region::Region(void *this, mlir::Operation *a2)
{
  *this = this;
  this[1] = this;
  this[2] = a2;
  return this;
}

void mlir::Region::dropAllReferences(mlir::Region *this)
{
  for (i = *(this + 1); i != this; i = *(i + 1))
  {
    if (i)
    {
      v3 = (i - 8);
    }

    else
    {
      v3 = 0;
    }

    mlir::Block::dropAllReferences(v3);
  }
}

void mlir::Region::~Region(mlir::Region *this)
{
  v2 = *(this + 1);
  if (v2 != this)
  {
    do
    {
      if (v2)
      {
        v3 = (v2 - 8);
      }

      else
      {
        v3 = 0;
      }

      mlir::Block::dropAllReferences(v3);
      v2 = *(v2 + 1);
    }

    while (v2 != this);
    v2 = *(this + 1);
  }

  if (v2 != this)
  {
    v4 = *(v2 + 1);
    if (v2)
    {
      v5 = (v2 - 8);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5[2];
    v5[3] &= 7uLL;
    v7 = v5[1];
    *v6 = v7;
    *(v7 + 8) = v6;
    v5[1] = 0;
    v5[2] = 0;
    mlir::Block::~Block((v2 - 8));
    operator delete();
  }
}

unint64_t mlir::Region::isProperAncestor(mlir::Region *this, mlir::Region *a2)
{
  if (this == a2)
  {
    return 0;
  }

  while (1)
  {
    result = *(*(a2 + 2) + 16);
    if (!result)
    {
      break;
    }

    result = mlir::Block::getParent(result);
    if (!result)
    {
      break;
    }

    a2 = result;
    if (result == this)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::Region::getRegionNumber(unint64_t this)
{
  v1 = *(this + 16);
  v2 = *(v1 + 44);
  if ((v2 & 0x7FFFFF) != 0)
  {
    return -1431655765 * ((this - (((v1 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 40))) >> 3);
  }

  else
  {
    return -1431655765 * (this >> 3);
  }
}

void mlir::Region::cloneInto(mlir::Operation::CloneOptions *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*a1 == a1)
  {
    return;
  }

  v5 = a1;
  v6 = *(a1 + 1);
  if (v6 != a1)
  {
    operator new();
  }

  if (v6)
  {
    v7 = (v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a4 + 10);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = a4[3];
  v10 = ((v7 >> 4) ^ (v7 >> 9)) & (v8 - 1);
  v11 = *(v9 + 16 * v10);
  if (v11 != v7)
  {
    v81 = 1;
    while (v11 != -4096)
    {
      v82 = v10 + v81++;
      v10 = v82 & (v8 - 1);
      v11 = *(v9 + 16 * v10);
      if (v11 == v7)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_10;
  }

LABEL_9:
  if (v10 == v8)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_12;
  }

  v12 = *(v9 + 16 * v10 + 8);
LABEL_12:
  if (v12)
  {
    v13 = v12 + 8;
  }

  else
  {
    v13 = 0;
  }

  LOBYTE(v92) = mlir::Operation::CloneOptions::all(a1);
  v14 = mlir::Operation::CloneOptions::cloneRegions(&v92, 0);
  v15 = mlir::Operation::CloneOptions::cloneOperands(v14, 0);
  v16 = *(v5 + 1);
  if (v16 != v5 && v13 != a3)
  {
    v18 = *v15;
    v19 = v13;
    do
    {
      v21 = (v16 - 8);
      v86 = v16;
      if (!v16)
      {
        v21 = 0;
      }

      v22 = v21 + 4;
      v23 = v21[5];
      if (v23 != v21 + 4)
      {
        v24 = v19 - 8;
        if (!v19)
        {
          v24 = 0;
        }

        v25 = (v24 + 32);
        do
        {
          ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v23);
          v27 = mlir::Operation::clone(ValuePtr);
          llvm::ilist_traits<mlir::Operation>::addNodeToList(v25, v27);
          NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v27);
          v29 = *v25;
          *NodePtr = *v25;
          NodePtr[1] = v25;
          *(v29 + 8) = NodePtr;
          *v25 = NodePtr;
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v27);
          v23 = v23[1];
        }

        while (v23 != v22);
      }

      v19 = *(v19 + 8);
      v16 = *(v86 + 1);
      v5 = a1;
    }

    while (v16 != a1 && v19 != a3);
    v16 = *(a1 + 1);
  }

  v92 = v94;
  v93 = 0x600000000;
  if (v16 != v5 && v13 != a3)
  {
    while (1)
    {
      v31 = (v16 - 8);
      v87 = v16;
      if (!v16)
      {
        v31 = 0;
      }

      v32 = v13 - 8;
      v83 = v13;
      if (!v13)
      {
        v32 = 0;
      }

      v33 = *(v32 + 40);
      v34 = v31[5];
      v88 = v32 + 32;
      v89 = v31 + 4;
      if (v34 != v31 + 4 && v33 != v32 + 32)
      {
        break;
      }

LABEL_36:
      v13 = *(v83 + 8);
      v16 = *(v87 + 1);
      if (v16 == a1 || v13 == a3)
      {
        if (v92 != v94)
        {
          free(v92);
        }

        return;
      }
    }

    while (1)
    {
      v37 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v34);
      v38 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v33);
      v39 = *(v37 + 44);
      if ((v39 & 0x800000) != 0)
      {
        v40 = *(v37 + 68);
      }

      else
      {
        v40 = 0;
      }

      v41 = v93;
      if (v93 != v40)
      {
        if (v93 <= v40)
        {
          if (HIDWORD(v93) < v40)
          {
            v42 = v40;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v94, v40, 8);
            v40 = v42;
            v41 = v93;
          }

          if (v40 != v41)
          {
            v43 = v40;
            bzero(v92 + 8 * v41, 8 * (v40 - v41));
            v40 = v43;
          }
        }

        LODWORD(v93) = v40;
        v39 = *(v37 + 44);
      }

      if ((v39 & 0x800000) != 0)
      {
        v44 = *(v37 + 68);
        v45 = v92;
        if (v44)
        {
          v46 = *(v37 + 72);
          v47 = *(a4 + 4);
          if (v47)
          {
            v48 = 0;
            v49 = *a4;
            v50 = v47 - 1;
            v51 = v92;
            do
            {
              v52 = *(v46 + 32 * v48 + 24);
              v53 = 0x9DDFEA08EB382D69 * ((8 * v52 - 0xAE502812AA7333) ^ HIDWORD(v52));
              v54 = 0x9DDFEA08EB382D69 * (HIDWORD(v52) ^ (v53 >> 47) ^ v53);
              v55 = (-348639895 * ((v54 >> 47) ^ v54)) & v50;
              v56 = *(v49 + 16 * v55);
              if (v56 == v52)
              {
LABEL_69:
                if (v55 != v47)
                {
                  v52 = *(v49 + 16 * v55 + 8);
                }
              }

              else
              {
                v57 = 1;
                while (v56 != -4096)
                {
                  v58 = v55 + v57++;
                  v55 = v58 & v50;
                  v56 = *(v49 + 16 * v55);
                  if (v56 == v52)
                  {
                    goto LABEL_69;
                  }
                }
              }

              *v51++ = v52;
              ++v48;
            }

            while (v48 != v44);
          }

          else
          {
            if (v44 >= 5 && (v92 >= v46 + 32 * v44 || v46 + 24 >= v92 + 8 * v44))
            {
              v61 = v44 & 3;
              if ((v44 & 3) == 0)
              {
                v61 = 4;
              }

              v59 = v44 - v61;
              v60 = v92 + 8 * (v44 - v61);
              v62 = (v46 + 88);
              v63 = (v92 + 16);
              v64 = v59;
              do
              {
                v65 = v62 - 8;
                v66 = vld4q_f64(v65);
                v67 = vld4q_f64(v62);
                *(v63 - 1) = v66;
                *v63 = v67;
                v62 += 16;
                v63 += 2;
                v64 -= 4;
              }

              while (v64);
            }

            else
            {
              v59 = 0;
              v60 = v92;
            }

            v68 = v44 - v59;
            v69 = (v46 + 32 * v59 + 24);
            do
            {
              v70 = *v69;
              v69 += 4;
              *v60++ = v70;
              --v68;
            }

            while (v68);
          }
        }
      }

      else
      {
        v45 = v92;
      }

      mlir::ValueRange::ValueRange(&v90, v45, v40);
      mlir::Operation::setOperands(v38, v90, v91);
      v71 = *(v37 + 44);
      v72 = v71 & 0x7FFFFF;
      if ((v71 & 0x7FFFFF) != 0)
      {
        v73 = v37 + 16 * ((v71 >> 23) & 1) + ((v71 >> 21) & 0x7F8) + 32 * *(v37 + 40) + 64;
        v74 = *(v38 + 44);
        v75 = v74 & 0x7FFFFF;
        if ((v74 & 0x7FFFFF) != 0)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v73 = 0;
        v72 = 0;
        v74 = *(v38 + 44);
        v75 = v74 & 0x7FFFFF;
        if ((v74 & 0x7FFFFF) != 0)
        {
LABEL_89:
          if (v72)
          {
            v76 = v38 + 16 * ((v74 >> 23) & 1) + ((v74 >> 21) & 0x7F8) + 32 * *(v38 + 40) + 64;
            v77 = 24 * v72 - 24;
            v78 = 24 * v75 - 24;
            v79 = v76;
            do
            {
              mlir::Region::cloneInto(v73, v79, v76, a4);
              if (!v77)
              {
                break;
              }

              v73 += 24;
              v79 += 24;
              v77 -= 24;
              v76 += 24;
              v80 = v78;
              v78 -= 24;
            }

            while (v80);
          }
        }
      }

      v33 = *(v33 + 8);
      v34 = v34[1];
      if (v34 == v89 || v33 == v88)
      {
        goto LABEL_36;
      }
    }
  }
}