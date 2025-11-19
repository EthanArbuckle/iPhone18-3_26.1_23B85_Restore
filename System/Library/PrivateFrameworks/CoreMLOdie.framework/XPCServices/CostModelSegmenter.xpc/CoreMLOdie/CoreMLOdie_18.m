BOOL sub_1000D6E4C(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v3++;
    result = v8 == v6;
    v10 = v8 != v6 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *sub_1000D6EA4(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1000D6EF4(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *sub_1000D6EF4(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a1;
  if (!v2)
  {
    v6 = 0;
    goto LABEL_17;
  }

  v4 = *a2;
  v5 = 8 * v2;
  a1[10] += 8 * v2;
  v6 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 8 * v2;
  if (v3)
  {
    v8 = v7 > a1[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v18 = a1;
    v6 = sub_10003A984(a1, 8 * v2, 8 * v2, 3);
    a1 = v18;
    v9 = v5 - 8;
    if ((v5 - 8) >= 0x18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *a1 = v7;
    v9 = v5 - 8;
    if ((v5 - 8) >= 0x18)
    {
LABEL_7:
      v10 = v6;
      v11 = v4;
      if (v6 - v4 >= 0x20)
      {
        v12 = (v9 >> 3) + 1;
        v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
        v10 = (v6 + v13);
        v11 = (v4 + v13);
        v14 = (v4 + 16);
        v15 = (v6 + 16);
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
        if (v12 == (v12 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }
  }

  v10 = v6;
  v11 = v4;
  do
  {
LABEL_15:
    v19 = *v11++;
    *v10++ = v19;
  }

  while (v11 != (v4 + 8 * v2));
LABEL_16:
  v3 = *a1;
LABEL_17:
  a1[10] += 24;
  v20 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20 + 3;
  if (v3)
  {
    v22 = v21 > a1[1];
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v20 = sub_10003A984(a1, 24, 24, 3);
  }

  else
  {
    *a1 = v21;
  }

  *v20 = 0;
  v20[1] = v6;
  v20[2] = v2;
  return v20;
}

void *sub_1000D7078(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  if (!v4)
  {
    goto LABEL_23;
  }

  a1[10] += v4;
  v6 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + v4;
  if (*a1)
  {
    v8 = v7 > a1[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v17 = a1;
    v6 = sub_10003A984(a1, v4, v4, 3);
    a1 = v17;
    if (v4 < 8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *a1 = v7;
    if (v4 < 8)
    {
LABEL_20:
      v15 = v6;
      v16 = v5;
      goto LABEL_21;
    }
  }

  if (v6 - v5 < 0x20)
  {
    goto LABEL_20;
  }

  if (v4 < 0x20)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v9 = v4 & 0xFFFFFFFFFFFFFFE0;
  v10 = (v5 + 16);
  v11 = (v6 + 16);
  v12 = v4 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v13 = *v10;
    *(v11 - 1) = *(v10 - 1);
    *v11 = v13;
    v10 += 2;
    v11 += 2;
    v12 -= 32;
  }

  while (v12);
  if (v4 == v9)
  {
    goto LABEL_22;
  }

  if ((v4 & 0x18) != 0)
  {
LABEL_14:
    v14 = v4 & 0xFFFFFFFFFFFFFFF8;
    v15 = (v6 + (v4 & 0xFFFFFFFFFFFFFFF8));
    v16 = (v5 + (v4 & 0xFFFFFFFFFFFFFFF8));
    do
    {
      *(v6 + v9) = *(v5 + v9);
      v9 += 8;
    }

    while (v14 != v9);
    if (v4 == v14)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v16 = (v5 + v9);
  v15 = (v6 + v9);
  do
  {
LABEL_21:
    v18 = *v16++;
    *v15++ = v18;
  }

  while (v16 != (v5 + v4));
LABEL_22:
  v5 = v6;
LABEL_23:
  a1[10] += 40;
  v19 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = v19 + 5;
  if (*a1)
  {
    v21 = v20 > a1[1];
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v19 = sub_10003A984(a1, 40, 40, 3);
  }

  else
  {
    *a1 = v20;
  }

  *v19 = 0;
  v19[1] = v2;
  v19[2] = v3;
  v19[3] = v5;
  v19[4] = v4;
  return v19;
}

BOOL sub_1000D7208(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && *(a2 + 16) == v2[1] && (v3 = *(a2 + 32), v3 == v2[3]))
  {
    return memcmp(*(a2 + 24), v2[2], v3) == 0;
  }

  else
  {
    return 0;
  }
}

void *sub_1000D7274(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1000D7078(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t sub_1000D72D4@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v8 = result;
  if (a4)
  {
    result = llvm::hash_value(*a3, *(a3 + 8));
    v12 = result;
    if (a5)
    {
      *a6 = v8;
      *(a6 + 8) = a2;
      *(a6 + 16) = a3;
      *(a6 + 24) = a4;
      *(a6 + 32) = result;
      *(a6 + 40) = 1;
      return result;
    }

    v13 = a4 - 1;
    if (a4 == 1)
    {
LABEL_6:
      *a6 = v8;
      *(a6 + 8) = a2;
      *(a6 + 16) = a3;
      *(a6 + 24) = 1;
      *(a6 + 32) = v12;
      *(a6 + 40) = 1;
      return result;
    }

    v14 = *(a3 + 8);
    if (v14)
    {
      v15 = *a3;
      v16 = a3 + 16;
      while (v14 == *(v16 + 8))
      {
        result = memcmp(v15, *v16, v14);
        if (result)
        {
          break;
        }

        v16 += 16;
        if (!--v13)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v16 = a3 + 16;
      while (!*(v16 + 8))
      {
        v16 += 16;
        if (!--v13)
        {
          goto LABEL_6;
        }
      }
    }

    memset(v19, 0, sizeof(v19));
    memset(v18, 0, sizeof(v18));
    v20 = 0;
    v21 = 0xFF51AFD7ED558CCDLL;
    __src[0] = v12;
    __src[1] = sub_1000D7480(v16, a3 + 16 * a4);
    result = sub_10002C12C(__src, 0, v18, v19);
    *a6 = v8;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = result;
  }

  else
  {
    *a6 = result;
    *(a6 + 8) = a2;
    *(a6 + 24) = 0;
    *(a6 + 32) = 0;
    *(a6 + 16) = a3;
  }

  *(a6 + 40) = 0;
  return result;
}

unint64_t sub_1000D7480(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v30 = 0;
  }

  else
  {
    v4 = llvm::hash_value(*a1, *(a1 + 8));
    v89 = v4;
    if (a1 + 16 == a2)
    {
      v30 = 8;
    }

    else
    {
      v5 = v4;
      v6 = llvm::hash_value(*(a1 + 16), *(a1 + 24));
      v90 = v6;
      if (a1 + 32 == a2)
      {
        v30 = 16;
      }

      else
      {
        v7 = v6;
        v8 = llvm::hash_value(*(a1 + 32), *(a1 + 40));
        v91 = v8;
        if (a1 + 48 == a2)
        {
          v30 = 24;
        }

        else
        {
          v9 = v8;
          v10 = llvm::hash_value(*(a1 + 48), *(a1 + 56));
          v92 = v10;
          if (a1 + 64 == a2)
          {
            v30 = 32;
          }

          else
          {
            v87 = v10;
            v11 = llvm::hash_value(*(a1 + 64), *(a1 + 72));
            v93 = v11;
            if (a1 + 80 == a2)
            {
              v30 = 40;
            }

            else
            {
              v12 = v11;
              v13 = llvm::hash_value(*(a1 + 80), *(a1 + 88));
              v94 = v13;
              if (a1 + 96 == a2)
              {
                v30 = 48;
              }

              else
              {
                v14 = v13;
                v15 = llvm::hash_value(*(a1 + 96), *(a1 + 104));
                v95 = v15;
                if (a1 + 112 == a2)
                {
                  v30 = 56;
                }

                else
                {
                  v16 = v15;
                  v17 = llvm::hash_value(*(a1 + 112), *(a1 + 120));
                  v96 = v17;
                  v18 = a1 + 128;
                  if (a1 + 128 != a2)
                  {
                    v84 = v17;
                    llvm::hash_value(*(a1 + 128), *(a1 + 136));
                    v19 = v14 + v16 + v12 + 0x4BF62CB950C3753ALL + v84;
                    v20 = __ROR8__(v14 + v16 + v12 + 0x4BF62CB950C3753ALL, 44) + v12 + 0x4BF62CB950C3753ALL;
                    v21 = v14 - 0x4B6D499041670D8DLL * __ROR8__(v16 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
                    v22 = v20 + __ROR8__(v21 + v9 + v12 + 0x4BF62CB950C3753ALL + v84, 21);
                    v23 = v5 + 0x298DF016A9F64655;
                    v24 = v5 + 0x298DF016A9F64655 + v7 + v9;
                    v25 = v24 + v87;
                    v26 = (0xB492B66FBE98F273 * __ROR8__(v7 - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
                    v27 = __ROR8__(v24, 44) + v23 + __ROR8__(v26 + v23 + v87 - 0xAE502812AB8D92, 21);
                    v83 = ~&v89;
                    v28 = 0x544962662A7EE1A4;
                    v29 = 64;
                    while (1)
                    {
                      v85 = v26;
                      v86 = v19;
                      v88 = v22;
                      v89 = llvm::hash_value(*v18, *(v18 + 8));
                      v38 = v18 + 16;
                      if (v18 + 16 == a2)
                      {
                        v39 = &v90;
                        v40 = &v90;
                        v31 = 8;
                      }

                      else
                      {
                        v90 = llvm::hash_value(*(v18 + 16), *(v18 + 24));
                        v38 = v18 + 32;
                        if (v18 + 32 == a2)
                        {
                          v39 = &v91;
                          v40 = &v91;
                          v31 = 16;
                        }

                        else
                        {
                          v91 = llvm::hash_value(*(v18 + 32), *(v18 + 40));
                          v38 = v18 + 48;
                          if (v18 + 48 == a2)
                          {
                            v39 = &v92;
                            v40 = &v92;
                            v31 = 24;
                          }

                          else
                          {
                            v92 = llvm::hash_value(*(v18 + 48), *(v18 + 56));
                            v38 = v18 + 64;
                            if (v18 + 64 == a2)
                            {
                              v39 = &v93;
                              v40 = &v93;
                              v31 = 32;
                            }

                            else
                            {
                              v93 = llvm::hash_value(*(v18 + 64), *(v18 + 72));
                              v38 = v18 + 80;
                              if (v18 + 80 == a2)
                              {
                                v39 = &v94;
                                v40 = &v94;
                                v31 = 40;
                              }

                              else
                              {
                                v94 = llvm::hash_value(*(v18 + 80), *(v18 + 88));
                                v38 = v18 + 96;
                                if (v18 + 96 == a2)
                                {
                                  v39 = &v95;
                                  v40 = &v95;
                                  v31 = 48;
                                }

                                else
                                {
                                  v95 = llvm::hash_value(*(v18 + 96), *(v18 + 104));
                                  v38 = v18 + 112;
                                  if (v18 + 112 != a2)
                                  {
                                    v96 = llvm::hash_value(*(v18 + 112), *(v18 + 120));
                                    v38 = v18 + 128;
                                    if (v18 + 128 != a2)
                                    {
                                      llvm::hash_value(*(v18 + 128), *(v18 + 136));
                                    }

                                    v31 = 64;
                                    goto LABEL_19;
                                  }

                                  v39 = &v96;
                                  v40 = &v96;
                                  v31 = 56;
                                }
                              }
                            }
                          }
                        }
                      }

                      v41 = 64 - v31;
                      v42 = v31;
                      if (v31 != 64 - v31)
                      {
                        do
                        {
                          v49 = v42;
                          v42 = v41;
                          v41 = v49 % v41;
                        }

                        while (v41);
                        v50 = (&v89 + v42);
                        do
                        {
                          v52 = *(v50 - 1);
                          v50 = (v50 - 1);
                          v51 = v52;
                          v53 = &v50[v31 / 8];
                          v54 = v50;
                          do
                          {
                            v55 = v54;
                            v54 = v53;
                            *v55 = *v53;
                            v56 = (&v97 - v53);
                            v57 = __OFSUB__(v31, v56);
                            v59 = v31 - v56;
                            v58 = (v59 < 0) ^ v57;
                            v53 = (&v89 + v59);
                            if (v58)
                            {
                              v53 = &v54[v31 / 8];
                            }
                          }

                          while (v53 != v50);
                          *v54 = v51;
                        }

                        while (v50 != &v89);
                        goto LABEL_19;
                      }

                      v43 = v31 ^ 0x3F;
                      if (v39 + v83 < (v31 ^ 0x3FuLL))
                      {
                        v43 = v39 + v83;
                      }

                      v44 = &v89;
                      if (v43 < 3 || &v89 < (&v89 + v43 + v31 + 1) && v40 < (&v89 + v43 + 1))
                      {
                        v45 = v31;
                        goto LABEL_43;
                      }

                      v60 = v43 + 1;
                      if (v43 >= 0xF)
                      {
                        v61 = v60 & 0x70;
                        v62 = v89;
                        v63 = v90;
                        v64 = v40[1];
                        v89 = *(&v89 + v31);
                        v90 = v64;
                        *(&v89 + v31) = v62;
                        v40[1] = v63;
                        if (v61 != 16)
                        {
                          v65 = v91;
                          v66 = v92;
                          v67 = v40[3];
                          v91 = v40[2];
                          v92 = v67;
                          v40[2] = v65;
                          v40[3] = v66;
                          if (v61 != 32)
                          {
                            v68 = v93;
                            v69 = v94;
                            v70 = v40[5];
                            v93 = v40[4];
                            v94 = v70;
                            v40[4] = v68;
                            v40[5] = v69;
                            if (v61 != 48)
                            {
                              v71 = v95;
                              v72 = v96;
                              v73 = v40[7];
                              v95 = v40[6];
                              v96 = v73;
                              v40[6] = v71;
                              v40[7] = v72;
                            }
                          }
                        }

                        if (v60 == v61)
                        {
                          goto LABEL_19;
                        }

                        if ((v60 & 0xC) == 0)
                        {
                          v44 = (&v89 + v61);
                          v45 = v31 + v61;
LABEL_43:
                          v46 = (v44 + 1);
                          do
                          {
                            v47 = *(v46 - 1);
                            *(v46 - 1) = *(&v89 + v45);
                            *(&v89 + v45) = v47;
                            if (v46 == v39)
                            {
                              break;
                            }

                            v46 = (v46 + 1);
                          }

                          while (v45++ != 63);
                          goto LABEL_19;
                        }
                      }

                      else
                      {
                        v61 = 0;
                      }

                      v45 = v31 + (v60 & 0x7C);
                      v44 = (&v89 + (v60 & 0x7C));
                      v74 = (v40 + v61);
                      v75 = (&v89 + v61);
                      v76 = v61 - (v60 & 0x7C);
                      do
                      {
                        v77 = *v75;
                        *v75++ = *v74;
                        *v74++ = v77;
                        v76 += 4;
                      }

                      while (v76);
                      if (v60 != (v60 & 0x7C))
                      {
                        goto LABEL_43;
                      }

LABEL_19:
                      v32 = __ROR8__(v21 + v25 + v28 + v90, 37);
                      v21 = v94 + v25 - 0x4B6D499041670D8DLL * __ROR8__(v21 + v27 + v95, 42);
                      v33 = v89 - 0x4B6D499041670D8DLL * v27;
                      v34 = v33 + v90 + v91;
                      v35 = (0xB492B66FBE98F273 * v32) ^ v88;
                      v36 = __ROR8__(v85 + v86, 33);
                      v27 = __ROR8__(v34, 44) + v33 + __ROR8__(v35 + v86 + v33 + v92, 21);
                      v28 = 0xB492B66FBE98F273 * v36;
                      v37 = 0xB492B66FBE98F273 * v36 + v88 + v93;
                      v25 = v34 + v92;
                      v22 = __ROR8__(v21 + v91 + v37 + v96, 21) + v37 + __ROR8__(v94 + v95 + v37, 44);
                      v19 = v94 + v95 + v37 + v96;
                      v29 += v31;
                      v18 = v38;
                      v26 = v35;
                      if (v38 == a2)
                      {
                        v78 = 0x9DDFEA08EB382D69 * (v19 ^ ((0x9DDFEA08EB382D69 * (v25 ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ v19)));
                        v79 = v35 - 0x4B6D499041670D8DLL * (v21 ^ (v21 >> 47)) - 0x622015F714C7D297 * (v78 ^ (v78 >> 47));
                        v80 = 0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v27 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v27 ^ v22)));
                        v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v80 >> 47)) - 0x4B6D499041670D8DLL * ((v29 ^ (v29 >> 47)) + v36);
                        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v81 ^ ((0x9DDFEA08EB382D69 * (v81 ^ v79)) >> 47) ^ (0x9DDFEA08EB382D69 * (v81 ^ v79)))) ^ ((0x9DDFEA08EB382D69 * (v81 ^ ((0x9DDFEA08EB382D69 * (v81 ^ v79)) >> 47) ^ (0x9DDFEA08EB382D69 * (v81 ^ v79)))) >> 47));
                      }
                    }
                  }

                  v30 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  return sub_10002C4F4(&v89, v30, 0xFF51AFD7ED558CCDLL);
}

uint64_t sub_1000D7C30(void *a1, void *a2)
{
  v2 = *a1;
  if (**a1 != a2[1])
  {
    return 0;
  }

  v3 = v2[3];
  if (v3 != a2[5])
  {
    return 0;
  }

  if (v3)
  {
    v4 = v2[2];
    v5 = a2[4];
    v6 = v4 + 16 * v3;
    while (1)
    {
      v7 = *(v4 + 8);
      if (v7 != *(v5 + 8) || v7 && memcmp(*v4, *v5, v7))
      {
        break;
      }

      v4 += 16;
      v5 += 16;
      if (v4 == v6)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000D7CD8(__n128 **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[2];
  v10[1] = (*a1)[1];
  v10[2] = v4;
  v10[0] = v3;
  v6 = sub_1000D7D44(a2, v10);
  v7 = v5;
  v8 = a1[1];
  if (v8->n128_u64[0])
  {
    (v8->n128_u64[0])(v8->n128_u64[1], v5, v6);
  }

  return v7;
}

__n128 sub_1000D7D44(unint64_t *a1, __n128 *a2)
{
  v4 = a2[1].n128_u64[1];
  if (!v4)
  {
    a1[10] += 48;
    v10 = a1[1];
    v11 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = v11 + 48;
    if (*a1)
    {
      v13 = v12 > v10;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v11 = sub_10003A984(a1, 48, 48, 3);
    }

    else
    {
      *a1 = v12;
    }

    v14 = a2[2].n128_u8[8];
    result = *a2;
    *v11 = 0;
    *(v11 + 8) = result;
    *(v11 + 24) = v14;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    return result;
  }

  v5 = a2[1].n128_u64[0];
  if (a2[2].n128_u8[8])
  {
    LODWORD(v4) = 1;
  }

  v6 = v4;
  v7 = 16 * v4;
  if (v4 < 1)
  {
    v9 = 16 * v4;
  }

  else
  {
    if (v4 > 4)
    {
      v16 = v4 & 3;
      if ((v6 & 3) == 0)
      {
        v16 = 4;
      }

      v8 = v6 - v16;
      v17 = 0uLL;
      v18 = v7;
      v19 = (v5 + 40);
      v20 = v8;
      do
      {
        v21 = v19 - 4;
        v22 = vld2q_f64(v21);
        v23 = vld2q_f64(v19);
        v18 = vaddq_s64(v22, v18);
        v17 = vaddq_s64(v23, v17);
        v19 += 8;
        v20 -= 4;
      }

      while (v20);
      v9 = vaddvq_s64(vaddq_s64(v17, v18));
    }

    else
    {
      v8 = 0;
      v9 = v7;
    }

    v24 = (v5 + 16 * v8 + 8);
    v25 = v6 - v8;
    do
    {
      v26 = *v24;
      v24 += 2;
      v9 += v26;
      --v25;
    }

    while (v25);
  }

  a1[10] += v9;
  v27 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = v27 + v9;
  if (*a1)
  {
    v29 = v28 > a1[1];
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v27 = sub_10003A984(a1, v9, v9, 3);
    if (v6 >= 1)
    {
LABEL_26:
      v30 = (v27 + v7);
      v31 = (v5 + 8);
      v32 = (v27 + 8);
      v33 = v6;
      do
      {
        memcpy(v30, *(v31 - 1), *v31);
        v34 = *v31;
        v31 += 2;
        *(v32 - 1) = v30;
        *v32 = v34;
        v30 += v34;
        v32 += 2;
        --v33;
      }

      while (v33);
    }
  }

  else
  {
    *a1 = v28;
    if (v6 >= 1)
    {
      goto LABEL_26;
    }
  }

  a1[10] += 48;
  if (*a1 && (v35 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8, v35 + 48 <= a1[1]))
  {
    *a1 = v35 + 48;
  }

  else
  {
    v35 = sub_10003A984(a1, 48, 48, 3);
  }

  v36 = a2[2].n128_u8[8];
  result = *a2;
  *v35 = 0;
  *(v35 + 8) = result;
  *(v35 + 24) = v36;
  *(v35 + 32) = v27;
  *(v35 + 40) = v6;
  return result;
}

uint64_t sub_1000D7F9C(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, const llvm::detail::IEEEFloat *a6)
{
  v19[0] = a2;
  v19[1] = a3;
  v20 = *a5;
  v9 = *a6;
  v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v10 == v9)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v21, a6);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v21, a6);
  }

  v12 = llvm::hash_value(v21, v11);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))));
  v17[0] = &v20;
  v17[1] = v19;
  v18 = &v20;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, sub_1000D8130, &v18, sub_1000D81DC, v17);
  if (v10 == v21[0])
  {
    sub_100029F40(v21);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v21);
  }

  return ParametricStorageTypeImpl;
}

uint64_t sub_1000D8130(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v3 = (a2 + 16);
  v4 = v5;
  v7 = v2[1];
  v6 = (v2 + 1);
  if (v4 != v7)
  {
    return 0;
  }

  v9 = v3;
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v4)
  {

    return llvm::detail::DoubleAPFloat::bitwiseIsEqual(v9, v6);
  }

  else
  {

    return llvm::detail::IEEEFloat::bitwiseIsEqual(v9, v6);
  }
}

__n128 *sub_1000D81DC(uint64_t a1, llvm::APFloatBase *a2)
{
  v3 = sub_1000D822C(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

__n128 *sub_1000D822C(llvm::APFloatBase *a1, void *a2)
{
  v3 = *a2;
  v4 = (a2 + 1);
  v5 = a2[1];
  v6 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v6 == v5)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v12, v4);
    *(a1 + 10) += 40;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v12, v4);
    *(a1 + 10) += 40;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_12;
    }
  }

  v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (&v8[2].n128_u64[1] <= *(a1 + 1))
  {
    *a1 = v8 + 40;
    if (v6 == v12.n128_u64[0])
    {
      goto LABEL_13;
    }

LABEL_7:
    llvm::detail::IEEEFloat::IEEEFloat(&v11, &v12);
    v8->n128_u64[0] = 0;
    v8->n128_u64[1] = v3;
    v9 = v8 + 1;
    if (v6 == v11.n128_u64[0])
    {
      goto LABEL_14;
    }

LABEL_8:
    llvm::detail::IEEEFloat::IEEEFloat(v9, &v11);
    if (v6 == v11.n128_u64[0])
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_12:
  v8 = sub_10003A984(a1, 40, 40, 3);
  if (v6 != v12.n128_u64[0])
  {
    goto LABEL_7;
  }

LABEL_13:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v11, &v12);
  v8->n128_u64[0] = 0;
  v8->n128_u64[1] = v3;
  v9 = v8 + 1;
  if (v6 != v11.n128_u64[0])
  {
    goto LABEL_8;
  }

LABEL_14:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, &v11);
  if (v6 == v11.n128_u64[0])
  {
LABEL_15:
    sub_100029F40(&v11);
    if (v6 == v12.n128_u64[0])
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

LABEL_9:
  llvm::detail::IEEEFloat::~IEEEFloat(&v11);
  if (v6 == v12.n128_u64[0])
  {
LABEL_16:
    sub_100029F40(&v12);
    return v8;
  }

LABEL_10:
  llvm::detail::IEEEFloat::~IEEEFloat(&v12);
  return v8;
}

uint64_t sub_1000D8408(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, const llvm::detail::IEEEFloat *a6)
{
  v19[0] = a2;
  v19[1] = a3;
  v20 = *a5;
  v9 = *a6;
  v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v10 == v9)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v21, a6);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v21, a6);
  }

  v12 = llvm::hash_value(v21, v11);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))));
  v17[0] = &v20;
  v17[1] = v19;
  v18 = &v20;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, sub_1000D859C, &v18, sub_1000D8648, v17);
  if (v10 == v21[0])
  {
    sub_100029F40(v21);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v21);
  }

  return ParametricStorageTypeImpl;
}

uint64_t sub_1000D859C(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v3 = (a2 + 16);
  v4 = v5;
  v7 = v2[1];
  v6 = (v2 + 1);
  if (v4 != v7)
  {
    return 0;
  }

  v9 = v3;
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v4)
  {

    return llvm::detail::DoubleAPFloat::bitwiseIsEqual(v9, v6);
  }

  else
  {

    return llvm::detail::IEEEFloat::bitwiseIsEqual(v9, v6);
  }
}

__n128 *sub_1000D8648(uint64_t a1, llvm::APFloatBase *a2)
{
  v3 = sub_1000D822C(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t sub_1000D86A8(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, __n128 *a6)
{
  v19[0] = a2;
  v19[1] = a3;
  v20 = *a5;
  v9 = a6->n128_u64[0];
  v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v10 == v9)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v21, a6);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v21, a6);
  }

  v12 = llvm::hash_value(&v21, v11);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))));
  v17[0] = &v20;
  v17[1] = v19;
  v18 = &v20;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, sub_1000D883C, &v18, sub_1000D88E8, v17);
  if (v10 == v21.n128_u64[0])
  {
    sub_100029F40(&v21);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v21);
  }

  return ParametricStorageTypeImpl;
}

uint64_t sub_1000D883C(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v3 = (a2 + 16);
  v4 = v5;
  v7 = v2[1];
  v6 = (v2 + 1);
  if (v4 != v7)
  {
    return 0;
  }

  v9 = v3;
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v4)
  {

    return llvm::detail::DoubleAPFloat::bitwiseIsEqual(v9, v6);
  }

  else
  {

    return llvm::detail::IEEEFloat::bitwiseIsEqual(v9, v6);
  }
}

__n128 *sub_1000D88E8(uint64_t a1, llvm::APFloatBase *a2)
{
  v3 = sub_1000D822C(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t sub_1000D8948(uint64_t *a1, const llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t *a5, llvm::APInt *a6)
{
  v19[0] = a2;
  v19[1] = a3;
  v8 = *a5;
  v16 = *a5;
  v18 = *(a6 + 2);
  if (v18 > 0x40)
  {
    llvm::APInt::initSlowCase(&v17, a6);
  }

  v17 = *a6;
  v9 = (v8 >> 4) ^ (v8 >> 9);
  v10 = llvm::hash_value(&v17, a2);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)));
  v14[0] = &v16;
  v14[1] = v19;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, sub_1000D8A98, &v15, sub_1000D8AE0, v14);
  if (v18 >= 0x41)
  {
    if (v17)
    {
      operator delete[]();
    }
  }

  return result;
}

BOOL sub_1000D8A98(const void ***a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  if (*(a2 + 24) > 0x40u)
  {
    return llvm::APInt::equalSlowCase((a2 + 16), v2 + 1);
  }

  return *(a2 + 16) == v2[1];
}

unint64_t sub_1000D8AE0(uint64_t **a1, void *a2)
{
  v2 = *(*a1 + 4);
  v4 = **a1;
  v3 = (*a1)[1];
  *(*a1 + 4) = 0;
  a2[10] += 32;
  if (!*a2 || (v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, v5 + 32 > a2[1]))
  {
    v5 = sub_10003A984(a2, 32, 32, 3);
    *v5 = 0;
    *(v5 + 8) = v4;
    *(v5 + 24) = v2;
    *(v5 + 16) = v3;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *a2 = v5 + 32;
  *v5 = 0;
  *(v5 + 8) = v4;
  *(v5 + 24) = v2;
  *(v5 + 16) = v3;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_4:
    v7(v6[1], v5);
  }

  return v5;
}

uint64_t sub_1000D8BBC(uint64_t *a1, const llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t *a5, llvm::APInt *a6)
{
  v19[0] = a2;
  v19[1] = a3;
  v8 = *a5;
  v16 = *a5;
  v18 = *(a6 + 2);
  if (v18 > 0x40)
  {
    llvm::APInt::initSlowCase(&v17, a6);
  }

  v17 = *a6;
  v9 = (v8 >> 4) ^ (v8 >> 9);
  v10 = llvm::hash_value(&v17, a2);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)));
  v14[0] = &v16;
  v14[1] = v19;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, sub_1000D8D0C, &v15, sub_1000D8D54, v14);
  if (v18 >= 0x41)
  {
    if (v17)
    {
      operator delete[]();
    }
  }

  return result;
}

BOOL sub_1000D8D0C(const void ***a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  if (*(a2 + 24) > 0x40u)
  {
    return llvm::APInt::equalSlowCase((a2 + 16), v2 + 1);
  }

  return *(a2 + 16) == v2[1];
}

unint64_t sub_1000D8D54(uint64_t **a1, void *a2)
{
  v2 = *(*a1 + 4);
  v4 = **a1;
  v3 = (*a1)[1];
  *(*a1 + 4) = 0;
  a2[10] += 32;
  if (!*a2 || (v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, v5 + 32 > a2[1]))
  {
    v5 = sub_10003A984(a2, 32, 32, 3);
    *v5 = 0;
    *(v5 + 8) = v4;
    *(v5 + 24) = v2;
    *(v5 + 16) = v3;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *a2 = v5 + 32;
  *v5 = 0;
  *(v5 + 8) = v4;
  *(v5 + 24) = v2;
  *(v5 + 16) = v3;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_4:
    v7(v6[1], v5);
  }

  return v5;
}

void *sub_1000D8E48(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  v3 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = v3 + 2;
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
    v3 = sub_10003A984(a2, 16, 16, 3);
    *v3 = 0;
    v3[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return v3;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *v3 = 0;
  v3[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], v3);
  }

  return v3;
}

BOOL sub_1000D8F00(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && (v3 = *(a2 + 24), v3 == v2[2]) && (!v3 || (v4 = a2, v5 = memcmp(*(a2 + 16), v2[1], v3), a2 = v4, !v5)))
  {
    return *(a2 + 32) == v2[3];
  }

  else
  {
    return 0;
  }
}

void *sub_1000D8F80(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000D8FD0(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *sub_1000D8FD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = a2[3];
  if (!v3)
  {
    v6 = 0;
    goto LABEL_24;
  }

  v5 = a2[1];
  a1[10] += v3 + 1;
  v6 = *a1;
  v7 = v3 + 1 + *a1;
  if (*a1)
  {
    v8 = v7 > a1[1];
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    *a1 = v7;
    if (v3 >= 8)
    {
      goto LABEL_7;
    }

LABEL_21:
    v9 = v6;
    v10 = v5;
    goto LABEL_22;
  }

  v20 = a1;
  v6 = sub_10003A984(a1, v3 + 1, v3 + 1, 0);
  a1 = v20;
  if (v3 < 8)
  {
    goto LABEL_21;
  }

LABEL_7:
  v9 = v6;
  v10 = v5;
  if ((v6 - v5) >= 0x20)
  {
    if (v3 < 0x20)
    {
      v11 = 0;
      goto LABEL_15;
    }

    v11 = v3 & 0xFFFFFFFFFFFFFFE0;
    v12 = (v5 + 16);
    v13 = (v6 + 16);
    v14 = v3 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v15 = *v12;
      *(v13 - 1) = *(v12 - 1);
      *v13 = v15;
      v12 += 2;
      v13 += 2;
      v14 -= 32;
    }

    while (v14);
    if (v3 == v11)
    {
      goto LABEL_23;
    }

    if ((v3 & 0x18) != 0)
    {
LABEL_15:
      v9 = (v6 + (v3 & 0xFFFFFFFFFFFFFFF8));
      v10 = (v5 + (v3 & 0xFFFFFFFFFFFFFFF8));
      v16 = (v5 + v11);
      v17 = (v6 + v11);
      v18 = v11 - (v3 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v19 = *v16++;
        *v17++ = v19;
        v18 += 8;
      }

      while (v18);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v10 = (v5 + v11);
    v9 = (v6 + v11);
  }

  do
  {
LABEL_22:
    v21 = *v10++;
    *v9++ = v21;
  }

  while (v10 != (v5 + v3));
LABEL_23:
  *(v6 + v3) = 0;
LABEL_24:
  a1[10] += 40;
  v22 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22 + 5;
  if (*a1)
  {
    v24 = v23 > a1[1];
  }

  else
  {
    v24 = 1;
  }

  if (v24)
  {
    v22 = sub_10003A984(a1, 40, 40, 3);
  }

  else
  {
    *a1 = v23;
  }

  *v22 = 0;
  v22[1] = v2;
  v22[2] = v6;
  v22[3] = v3;
  v22[4] = v4;
  return v22;
}

BOOL sub_1000D9184(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[3] == v2[2])
  {
    return a2[4] == v2[3];
  }

  return 0;
}

unint64_t sub_1000D91CC(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  a2[10] += 40;
  v4 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v4 + 40;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = v3;
    v12 = v2;
    v4 = sub_10003A984(a2, 40, 40, 3);
    *v4 = 0;
    *(v4 + 8) = v12;
    *(v4 + 24) = v11;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return v4;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *v4 = 0;
  *(v4 + 8) = v2;
  *(v4 + 24) = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(*(v7 + 1), v4);
  }

  return v4;
}

BOOL sub_1000D929C(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[3] == v2[2])
  {
    return a2[4] == v2[3];
  }

  return 0;
}

unint64_t sub_1000D92E4(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  a2[10] += 40;
  v4 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v4 + 40;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = v3;
    v12 = v2;
    v4 = sub_10003A984(a2, 40, 40, 3);
    *v4 = 0;
    *(v4 + 8) = v12;
    *(v4 + 24) = v11;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return v4;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *v4 = 0;
  *(v4 + 8) = v2;
  *(v4 + 24) = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(*(v7 + 1), v4);
  }

  return v4;
}

BOOL sub_1000D93B4(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && (v3 = *(a2 + 24), v3 == v2[2]))
  {
    return memcmp(*(a2 + 16), v2[1], 8 * v3) == 0;
  }

  else
  {
    return 0;
  }
}

void *sub_1000D9414(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1000D9464(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *sub_1000D9464(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = *a1;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_17;
  }

  v5 = a2[1];
  v6 = 8 * v3;
  a1[10] += 8 * v3;
  v7 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + 8 * v3;
  if (v4)
  {
    v9 = v8 > a1[1];
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v19 = a1;
    v7 = sub_10003A984(a1, 8 * v3, 8 * v3, 3);
    a1 = v19;
    v10 = v6 - 8;
    if ((v6 - 8) >= 0x18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *a1 = v8;
    v10 = v6 - 8;
    if ((v6 - 8) >= 0x18)
    {
LABEL_7:
      v11 = v7;
      v12 = v5;
      if (v7 - v5 >= 0x20)
      {
        v13 = (v10 >> 3) + 1;
        v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
        v11 = (v7 + v14);
        v12 = (v5 + v14);
        v15 = (v5 + 16);
        v16 = (v7 + 16);
        v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v18 = *v15;
          *(v16 - 1) = *(v15 - 1);
          *v16 = v18;
          v15 += 2;
          v16 += 2;
          v17 -= 4;
        }

        while (v17);
        if (v13 == (v13 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }
  }

  v11 = v7;
  v12 = v5;
  do
  {
LABEL_15:
    v20 = *v12++;
    *v11++ = v20;
  }

  while (v12 != (v5 + 8 * v3));
LABEL_16:
  v4 = *a1;
LABEL_17:
  a1[10] += 32;
  v21 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21 + 4;
  if (v4)
  {
    v23 = v22 > a1[1];
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    v21 = sub_10003A984(a1, 32, 32, 3);
  }

  else
  {
    *a1 = v22;
  }

  *v21 = 0;
  v21[1] = v2;
  v21[2] = v7;
  v21[3] = v3;
  return v21;
}

BOOL sub_1000D95EC(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  v3 = a2[3];
  if (v3 != v2[2])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[2];
  v5 = v2[1];
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

void *sub_1000D9654(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1000D96A4(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *sub_1000D96A4(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  if (v3)
  {
    v4 = a2[1];
    v5 = 8 * v3;
    a1[10] += 8 * v3;
    v6 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = v6 + 8 * v3;
    if (*a1)
    {
      v8 = v7 > a1[1];
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v18 = a1;
      v6 = sub_10003A984(a1, 8 * v3, 8 * v3, 3);
      a1 = v18;
      v9 = v5 - 8;
      if ((v5 - 8) >= 0x18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a1 = v7;
      v9 = v5 - 8;
      if ((v5 - 8) >= 0x18)
      {
LABEL_7:
        v10 = v6;
        v11 = v4;
        if (v6 - v4 >= 0x20)
        {
          v12 = (v9 >> 3) + 1;
          v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
          v10 = (v6 + v13);
          v11 = (v4 + v13);
          v14 = (v4 + 16);
          v15 = (v6 + 16);
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
          if (v12 == (v12 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_16;
          }
        }

        goto LABEL_15;
      }
    }

    v10 = v6;
    v11 = v4;
    do
    {
LABEL_15:
      v19 = *v11++;
      *v10++ = v19;
    }

    while (v11 != (v4 + 8 * v3));
    goto LABEL_16;
  }

  v6 = 0;
LABEL_16:
  a1[10] += 32;
  v20 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20 + 4;
  if (*a1)
  {
    v22 = v21 > a1[1];
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v20 = sub_10003A984(a1, 32, 32, 3);
  }

  else
  {
    *a1 = v21;
  }

  *v20 = 0;
  v20[1] = v2;
  v20[2] = v6;
  v20[3] = v3;
  return v20;
}

void *sub_1000D983C(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  v3 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = v3 + 2;
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
    v3 = sub_10003A984(a2, 16, 16, 3);
    *v3 = 0;
    v3[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return v3;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *v3 = 0;
  v3[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], v3);
  }

  return v3;
}

void sub_1000D98F4(uint64_t a1)
{
  sub_1000DAD30(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000D9A00(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_1000DB450;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_1000DB458;
  v18 = &v10;
  v19 = sub_1000DB4A4;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
  v22 = "builtin.array";
  v23 = 13;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000D9B64(uint64_t a1)
{
  sub_1000DB5C8(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000D9C70(uint64_t a1)
{
  sub_1000DBFA8(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000D9D7C(uint64_t a1)
{
  sub_1000E19D0(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000D9E88(uint64_t a1)
{
  sub_1000E20DC(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000D9F94(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_1000E29EC;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_1000E29F4;
  v18 = &v10;
  v19 = sub_1000E2A5C;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
  v22 = "builtin.dictionary";
  v23 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000DA0F8(uint64_t a1)
{
  sub_1000E2EC0(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000DA214(uint64_t a1)
{
  sub_1000E33B8(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000DA330(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_1000E3758;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = nullsub_161;
  v18 = &v10;
  v19 = sub_1000E3764;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id;
  v22 = "builtin.integer_set";
  v23 = 19;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000DA494(uint64_t a1)
{
  sub_1000E389C(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000DA5A0(uint64_t a1)
{
  sub_1000E3CC8(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000DA6AC(uint64_t a1)
{
  sub_1000FF20C(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000DA7B8(uint64_t a1)
{
  sub_1000FFA88(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000DA8C4(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_1000FFC9C;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_1000FFCA4;
  v18 = &v10;
  v19 = sub_1000FFD00;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v22 = "builtin.symbol_ref";
  v23 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000DAA28(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_1000FFE90;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_1000FFE98;
  v18 = &v10;
  v19 = sub_1000FFEC8;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
  v22 = "builtin.type";
  v23 = 12;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

uint64_t sub_1000DAB8C(uint64_t a1)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = sub_100100014;
  v18 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = nullsub_164;
  v20 = v11;
  v21 = sub_100100020;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id;
  v24 = "builtin.unit";
  v25 = 12;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v8 = *(a1 + 32);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v8);
  v11[0] = v8;
  v11[1] = &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id;
  v13 = sub_1001000C0;
  v14 = v11;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id, sub_100100028, &v12);
}

void sub_1000DAD30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000DAE6C(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000DB1E0(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1000DAF7C;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_152;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_1000DB0A8;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
  *(a2 + 144) = "builtin.affine_map";
  *(a2 + 152) = 18;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_1000DAE6C(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = sub_1000DAF30;
  v2[1] = sub_1000DAF38;
  v2[2] = sub_1000DAF64;
  if ((atomic_load_explicit(&qword_1002C0530, memory_order_acquire) & 1) == 0)
  {
    v5 = v2;
    sub_1002795F8();
    v3 = v5;
  }

  v4 = qword_1002C0528;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_1000DAF7C(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002C0690, memory_order_acquire))
  {
    return qword_1002C0688 == a1;
  }

  sub_10027B4D0();
  return qword_1002C0688 == a1;
}

uint64_t sub_1000DAFDC()
{
  if ((atomic_load_explicit(&qword_1002C06A8, memory_order_acquire) & 1) == 0)
  {
    sub_10027B524();
  }

  return qword_1002C0698;
}

const char *sub_1000DB024()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::MemRefLayoutAttrInterface::Trait<Empty>]";
  v6 = 107;
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

uint64_t sub_1000DB0A8(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a2 + 8);
  mlir::Attribute::getContext(&v10);
  v11 = v2;
  Context = mlir::AffineMap::getContext(&v11);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
  v12[1] = Context;
  v16[0] = sub_1000D66F8;
  v16[1] = v12;
  v15 = v11;
  v5 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
  v6 = (0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v5 >> 47) ^ v5)) >> 47);
  v7 = ((0x9DDFEA08EB382D69 * v6) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (((0x759C16B48 * v6) & 0x7FFFFFFF8) + 8));
  v13[0] = &v15;
  v13[1] = v16;
  v14 = &v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8))), sub_1000D6638, &v14, sub_1000D6650, v13);
}

uint64_t sub_1000DB1E0(uint64_t result, unint64_t *a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_39;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 < v7)
    {
      if (*(result + 12) < v7)
      {
        *(result + 8) = 0;
        v9 = a2;
        v10 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v7, 16);
        a2 = v9;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      if (!v8)
      {
        v10 = result;
        v8 = 0;
        goto LABEL_36;
      }

      v15 = *result;
      v16 = (v8 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v16 >= 9)
      {
        if (v15 >= v2 + 16 * v8 || (v17 = *a2, v2 >= &v15[2 * v8]))
        {
          v30 = v16 + 1;
          v31 = 2 * (v30 & 0x1FFFFFFFFFFFFFFCLL);
          v32 = &v15[v31];
          v17 = (v2 + v31 * 8);
          v33 = (v2 + 32);
          v34 = v15 + 4;
          v35 = v30 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v37 = *(v33 - 2);
            v36 = *(v33 - 1);
            v39 = *v33;
            v38 = v33[1];
            v33 += 4;
            *(v34 - 2) = v37;
            *(v34 - 1) = v36;
            *v34 = v39;
            v34[1] = v38;
            v34 += 4;
            v35 -= 4;
          }

          while (v35);
          v15 = v32;
          if (v30 == (v30 & 0x1FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v17 = *a2;
      }

      v40 = (v2 + 16 * v8);
      do
      {
        *v15 = *v17;
        v15[1] = v17[1];
        v17 += 2;
        v15 += 2;
      }

      while (v17 != v40);
LABEL_35:
      v10 = result;
LABEL_36:
      v11 = v7 - v8;
      if (v7 == v8)
      {
LABEL_38:
        result = v10;
        *(v10 + 8) = v7;
        goto LABEL_39;
      }

LABEL_37:
      memcpy((*v10 + 16 * v8), (*a2 + 16 * v8), 16 * v11);
      goto LABEL_38;
    }

    if (v7)
    {
      v12 = *result;
      v13 = (v7 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v13 >= 9)
      {
        v18 = v12 >= v2 + 16 * v7 || v2 >= &v12[2 * v7];
        v14 = *a2;
        if (v18)
        {
          v19 = v13 + 1;
          v20 = 2 * (v19 & 0x1FFFFFFFFFFFFFFCLL);
          v21 = &v12[v20];
          v14 = (v2 + v20 * 8);
          v22 = (v2 + 32);
          v23 = v12 + 4;
          v24 = v19 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v26 = *(v22 - 2);
            v25 = *(v22 - 1);
            v28 = *v22;
            v27 = v22[1];
            v22 += 4;
            *(v23 - 2) = v26;
            *(v23 - 1) = v25;
            *v23 = v28;
            v23[1] = v27;
            v23 += 4;
            v24 -= 4;
          }

          while (v24);
          v12 = v21;
          if (v19 == (v19 & 0x1FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v14 = *a2;
      }

      v29 = (v2 + 16 * v7);
      do
      {
        *v12 = *v14;
        v12[1] = v14[1];
        v14 += 2;
        v12 += 2;
      }

      while (v14 != v29);
    }

LABEL_26:
    *(result + 8) = v7;
LABEL_39:
    *v6 = 0;
  }

  return result;
}

uint64_t sub_1000DB458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  if (v6)
  {
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v11, v9);
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1000DB4A4(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  v12 = a2;
  if (a4 >= *(a2 + 16))
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = a4;
  }

  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
  v13[1] = Context;
  v17[0] = sub_1000D7068;
  v17[1] = v13;
  v16[0] = a3;
  v16[1] = v5;
  v8 = sub_1000D6708(a3, &a3[2 * v5]);
  v9 = HIDWORD(v8) ^ 0xFF51AFD7ED558CCDLL;
  v10 = 0x9DDFEA08EB382D69 * ((8 * v8 + 8) ^ v9);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10))), sub_1000D6E4C, &v15, sub_1000D6EA4, v14);
}

void sub_1000DB5C8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = sub_1000DB768;
  if ((atomic_load_explicit(&qword_1002C06C0, memory_order_acquire) & 1) == 0)
  {
    v10 = v4;
    sub_10027B578();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, off_1002C06B8, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    sub_1000DB1E0(a2 + 8, &v14);
  }

  *(a2 + 72) = sub_1000DB838;
  *(a2 + 80) = v13;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_1000DB960;
  *(a2 + 112) = &v12;
  *(a2 + 120) = sub_1000DB990;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  *(a2 + 144) = "builtin.dense_array";
  *(a2 + 152) = 19;
  v6 = v14;
  if (v15)
  {
    v7 = 16 * v15;
    v8 = (v14 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v14;
  }

  if (v6 != v16)
  {
    free(v6);
  }
}

uint64_t sub_1000DB768(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  v3 = *(a2 + 32);
  return result;
}

uint64_t sub_1000DB770()
{
  if ((atomic_load_explicit(&qword_1002C06D8, memory_order_acquire) & 1) == 0)
  {
    sub_10027B5B8();
  }

  return qword_1002C06C8;
}

const char *sub_1000DB7B8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BlobAttr]";
  v6 = 76;
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

BOOL sub_1000DB838(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002C06E8, memory_order_acquire))
  {
    return qword_1002C06E0 == a1;
  }

  sub_10027B60C();
  return qword_1002C06E0 == a1;
}

uint64_t sub_1000DB898()
{
  if ((atomic_load_explicit(&qword_1002C0700, memory_order_acquire) & 1) == 0)
  {
    sub_10027B660();
  }

  return qword_1002C06F0;
}

const char *sub_1000DB8E0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BlobAttr::Trait<Empty>]";
  v6 = 90;
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

uint64_t sub_1000DB960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t sub_1000DB990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8.i64[0] = a3;
  v8.i64[1] = a4;
  v7.i64[0] = a5;
  v7.i64[1] = a6;
  return sub_1000DB9C4(a2, &v8, &v7);
}

uint64_t sub_1000DB9C4(uint64_t a1, int64x2_t *a2, int64x2_t *a3)
{
  v23 = a1;
  v3 = *(a1 + 24);
  v22[0] = *(a1 + 8);
  v22[1] = v3;
  v4 = *a2;
  v21[0] = *a3;
  v21[1] = v4;
  sub_1000DBC6C(v22, v21, &v35);
  mlir::Attribute::getContext(&v23);
  v5 = v35;
  v6 = v36;
  v30 = v35;
  v31 = v36;
  v32 = v34;
  v33 = xmmword_10028F060;
  v7 = v38;
  if (!v38)
  {
    v10 = v34;
    goto LABEL_9;
  }

  if (v38 < 0x29)
  {
    v9 = v34;
    v8 = v38;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(&v32, v34, v38, 1);
  v8 = v38;
  if (v38)
  {
    v9 = v32;
LABEL_7:
    memcpy(v9, v37, v8);
  }

  *&v33 = v7;
  v5 = v30;
  v6 = v31;
  v10 = v32;
LABEL_9:
  v11 = *v6;
  v24 = v5;
  Context = mlir::Type::getContext(&v24);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v25[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v25[1] = Context;
  v29[0] = sub_1000D72C4;
  v29[1] = v25;
  v28[0] = v24;
  v28[1] = v11;
  v28[2] = v10;
  v28[3] = v7;
  v14 = (v24 >> 4) ^ (v24 >> 9);
  v15 = sub_10002C76C(v10, v10 + v7);
  v16 = __ROR8__(v11 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v14 - 0x9AE16A3B2F90404FLL * v15 + 24;
  v17 = (__ROR8__(0xB492B66FBE98F273 * v14 - v11, 43) - 0x3C5A37A36834CED9 * v11 + __ROR8__((0x9AE16A3B2F90404FLL * v15) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v16;
  v18 = 0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * v17) >> 47) ^ (0x9DDFEA08EB382D69 * v17));
  v26[0] = v28;
  v26[1] = v29;
  v27 = v28;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v18 >> 47) ^ v18), sub_1000D7208, &v27, sub_1000D7274, v26);
  if (v32 != v34)
  {
    free(v32);
  }

  if (v37 != &v39)
  {
    free(v37);
  }

  return ParametricStorageTypeImpl;
}

void sub_1000DBC6C(uint64_t a1@<X0>, int64x2_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1 + 8;
  if (*a1)
  {
    v5 = *a2;
    *a2 = vaddq_s64(*a2, xmmword_10028FD30);
    v6 = *v5.i64[0];
  }

  else
  {
    v6 = 0;
  }

  sub_1000DBDC4(*(a1 + 16), *(a1 + 24), &__src);
  v7 = (a3 + 40);
  *(a3 + 16) = a3 + 40;
  *a3 = v6;
  *(a3 + 8) = v4;
  *(a3 + 24) = xmmword_10028F060;
  v8 = __src;
  if ((a3 + 16) == &__src)
  {
    goto LABEL_14;
  }

  v9 = __n;
  if (!__n)
  {
    goto LABEL_14;
  }

  if (__src != v14)
  {
    *(a3 + 16) = __src;
    *(a3 + 24) = v9;
    *(a3 + 32) = v13;
    return;
  }

  if (__n < 0x29)
  {
    v10 = __n;
    goto LABEL_12;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(a3 + 16, (a3 + 40), __n, 1);
  v8 = __src;
  v10 = __n;
  if (__n)
  {
    v7 = *(a3 + 16);
LABEL_12:
    memcpy(v7, v8, v10);
    v8 = __src;
  }

  *(a3 + 24) = v9;
  __n = 0;
LABEL_14:
  if (v8 != v14)
  {
    free(v8);
  }
}

void sub_1000DBDC4(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = v16;
  v3 = xmmword_10028F060;
  v15 = xmmword_10028F060;
  if (a2)
  {
    do
    {
      while (v15 < *(&v15 + 1))
      {
        v4 = *a1++;
        *(v14 + v15) = v4;
        *&v15 = v15 + 1;
        if (!--a2)
        {
          goto LABEL_6;
        }
      }

      v5 = a1;
      v6 = a2;
      v7 = a3;
      v13 = v3;
      sub_1000DBF40(&v14, a1);
      v3 = v13;
      a3 = v7;
      a1 = v5 + 1;
      a2 = v6 - 1;
    }

    while (v6 != 1);
LABEL_6:
    v8 = v14;
    v9 = v15;
    *a3 = a3 + 24;
    *(a3 + 8) = v3;
    if (v9 && &v14 != a3)
    {
      if (v8 != v16)
      {
        *a3 = v8;
        *(a3 + 8) = v9;
        *(a3 + 16) = *(&v15 + 1);
        return;
      }

      v10 = v9;
      if (v9 < 0x29 || (v11 = a3, llvm::SmallVectorBase<unsigned long long>::grow_pod(a3, (a3 + 24), v9, 1), a3 = v11, v8 = v14, (v10 = v15) != 0))
      {
        v12 = a3;
        memcpy(*a3, v8, v10);
        a3 = v12;
        v8 = v14;
      }

      *(a3 + 8) = v9;
      *&v15 = 0;
    }

    if (v8 != v16)
    {
      free(v8);
    }
  }

  else
  {
    *a3 = a3 + 24;
    *(a3 + 8) = xmmword_10028F060;
  }
}

uint64_t sub_1000DBF40(void *a1, char *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if ((v3 + 1) > a1[2])
  {
    v7 = a1;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v3 + 1, 1);
    a1 = v7;
    v3 = v7[1];
  }

  *(*a1 + v3) = v2;
  v4 = *a1;
  v5 = a1[1] + 1;
  a1[1] = v5;
  return v4 + v5 - 1;
}

void sub_1000DBFA8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000DC0E4(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000DB1E0(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1000E17A4;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_159;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_1000E19C8;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id;
  *(a2 + 144) = "builtin.dense_int_or_fp_elements";
  *(a2 + 152) = 32;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_1000DC0E4(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = sub_1000DC190;
  {
    v4 = v2;
    sub_10027B6B4();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  sub_1000DC198(a1);
}

void sub_1000DC198(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
  v3 = v2;
  *v2 = sub_1000DC308;
  v2[1] = sub_1000DC3FC;
  v2[2] = sub_1000DC404;
  v2[3] = 0;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = v2;
    sub_10027B6B4();
    v3 = v14;
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
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
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v3[3] = v7[1];
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_13:
  v3[3] = 0;
  {
    goto LABEL_14;
  }

LABEL_18:
  v15 = v3;
  sub_10027B444();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

uint64_t sub_1000DC308@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = a1;
  result = sub_1000DC40C(&v8, a2, v9);
  if (v11 == 1)
  {
    v6 = v9[0];
    *a3 = v9[0];
    *(a3 + 1) = v9[1];
    if (v6 == 1)
    {
      *(a3 + 8) = v10;
      *(a3 + 16) = 1;
      return result;
    }

    v7 = v10;
    v10 = 0;
    *(a3 + 8) = v7;
    *(a3 + 16) = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = sub_1000E0434(&v8, a2, a3);
    if ((v11 & 1) != 0 && (v9[0] & 1) == 0)
    {
LABEL_9:
      result = v10;
      v10 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t sub_1000DC404(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  v3 = *(a2 + 16);
  return result;
}

uint64_t sub_1000DC40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0710, memory_order_acquire))
  {
    if (qword_1002C0708 != a2)
    {
LABEL_3:

      return sub_1000DC544(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027B704();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C0708 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DC744(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DC544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0738, memory_order_acquire))
  {
    if (qword_1002C0730 != a2)
    {
LABEL_3:

      return sub_1000DC834(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027B758();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C0730 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DCA34(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 2 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DC67C()
{
  if ((atomic_load_explicit(&qword_1002C0728, memory_order_acquire) & 1) == 0)
  {
    sub_10027B7A8();
  }

  return qword_1002C0718;
}

const char *sub_1000DC6C4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = unsigned char]";
  v6 = 75;
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

uint64_t sub_1000DC744@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = sub_1000D2BA4(v14);
  if (result != 8)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v14);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v15 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v14 = *(v5 + 8);
    v8 = v14;
    *(&v14 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v14);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

uint64_t sub_1000DC834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0760, memory_order_acquire))
  {
    if (qword_1002C0758 != a2)
    {
LABEL_3:

      return sub_1000DCB24(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027B7FC();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C0758 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DCD24(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 4 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DC96C()
{
  if ((atomic_load_explicit(&qword_1002C0750, memory_order_acquire) & 1) == 0)
  {
    sub_10027B84C();
  }

  return qword_1002C0740;
}

const char *sub_1000DC9B4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = unsigned short]";
  v6 = 76;
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

uint64_t sub_1000DCA34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = sub_1000D2BA4(v14);
  if (result != 16)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v14);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v15 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v14 = *(v5 + 8);
    v8 = v14;
    *(&v14 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v14);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

uint64_t sub_1000DCB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0788, memory_order_acquire))
  {
    if (qword_1002C0780 != a2)
    {
LABEL_3:

      return sub_1000DCE14(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027B8A0();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C0780 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000D633C(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 8 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DCC5C()
{
  if ((atomic_load_explicit(&qword_1002C0778, memory_order_acquire) & 1) == 0)
  {
    sub_10027B8F4();
  }

  return qword_1002C0768;
}

const char *sub_1000DCCA4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = unsigned int]";
  v6 = 74;
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

uint64_t sub_1000DCD24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = sub_1000D2BA4(v14);
  if (result != 32)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v14);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v15 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v14 = *(v5 + 8);
    v8 = v14;
    *(&v14 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v14);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

uint64_t sub_1000DCE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C07B0, memory_order_acquire))
  {
    if (qword_1002C07A8 != a2)
    {
LABEL_3:

      return sub_1000DD014(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027B948();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C07A8 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DD214(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DCF4C()
{
  if ((atomic_load_explicit(&qword_1002C07A0, memory_order_acquire) & 1) == 0)
  {
    sub_10027B99C();
  }

  return qword_1002C0790;
}

const char *sub_1000DCF94()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = unsigned long long]";
  v6 = 80;
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

uint64_t sub_1000DD014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C07D8, memory_order_acquire))
  {
    if (qword_1002C07D0 != a2)
    {
LABEL_3:

      return sub_1000DD304(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027B9F0();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C07D0 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DD504(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 2 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DD14C()
{
  if ((atomic_load_explicit(&qword_1002C07C8, memory_order_acquire) & 1) == 0)
  {
    sub_10027BA40();
  }

  return qword_1002C07B8;
}

const char *sub_1000DD194()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = signed char]";
  v6 = 73;
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

uint64_t sub_1000DD214@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = sub_1000D2BA4(v14);
  if (result != 8)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v14);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v15 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v14 = *(v5 + 8);
    v8 = v14;
    *(&v14 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v14);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

uint64_t sub_1000DD304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0800, memory_order_acquire))
  {
    if (qword_1002C07F8 != a2)
    {
LABEL_3:

      return sub_1000DD5F4(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027BA94();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C07F8 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DD7F4(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 4 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DD43C()
{
  if ((atomic_load_explicit(&qword_1002C07F0, memory_order_acquire) & 1) == 0)
  {
    sub_10027BAE4();
  }

  return qword_1002C07E0;
}

const char *sub_1000DD484()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = short]";
  v6 = 67;
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

uint64_t sub_1000DD504@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = sub_1000D2BA4(v14);
  if (result != 16)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v14);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v15 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v14 = *(v5 + 8);
    v8 = v14;
    *(&v14 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v14);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

uint64_t sub_1000DD5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0828, memory_order_acquire))
  {
    if (qword_1002C0820 != a2)
    {
LABEL_3:

      return sub_1000DD8E4(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027BB38();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C0820 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DDAE4(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 8 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DD72C()
{
  if ((atomic_load_explicit(&qword_1002C0818, memory_order_acquire) & 1) == 0)
  {
    sub_10027BB8C();
  }

  return qword_1002C0808;
}

const char *sub_1000DD774()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = int]";
  v6 = 65;
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

uint64_t sub_1000DD7F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = sub_1000D2BA4(v14);
  if (result != 32)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v14);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v15 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v14 = *(v5 + 8);
    v8 = v14;
    *(&v14 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v14);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

uint64_t sub_1000DD8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C07D8, memory_order_acquire))
  {
    if (qword_1002C07D0 != a2)
    {
LABEL_3:

      return sub_1000DDBD4(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027B9F0();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C07D0 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DD504(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 2 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DDA1C()
{
  if ((atomic_load_explicit(&qword_1002C0840, memory_order_acquire) & 1) == 0)
  {
    sub_10027BBE0();
  }

  return qword_1002C0830;
}

const char *sub_1000DDA64()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = long long]";
  v6 = 71;
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

uint64_t sub_1000DDAE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = sub_1000D2BA4(v14);
  if (result != 64)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v14);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v15 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v14 = *(v5 + 8);
    v8 = v14;
    *(&v14 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v14);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

uint64_t sub_1000DDBD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0738, memory_order_acquire))
  {
    if (qword_1002C0730 != a2)
    {
LABEL_3:

      return sub_1000DDD0C(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027B758();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C0730 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DCA34(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 2 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DDD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0800, memory_order_acquire))
  {
    if (qword_1002C07F8 != a2)
    {
LABEL_3:

      return sub_1000DDE44(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027BA94();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C07F8 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DD7F4(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 4 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DDE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0760, memory_order_acquire))
  {
    if (qword_1002C0758 != a2)
    {
LABEL_3:

      return sub_1000DDF7C(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027B7FC();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C0758 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DCD24(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 4 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DDF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0850, memory_order_acquire))
  {
    if (qword_1002C0848 != a2)
    {
LABEL_3:

      return sub_1000DE0B4(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027BC34();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C0848 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DDAE4(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 8 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DE0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0878, memory_order_acquire))
  {
    if (qword_1002C0870 != a2)
    {
LABEL_3:

      return sub_1000DE2B4(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027BC88();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C0870 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000D633C(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 8 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DE1EC()
{
  if ((atomic_load_explicit(&qword_1002C0868, memory_order_acquire) & 1) == 0)
  {
    sub_10027BCDC();
  }

  return qword_1002C0858;
}

const char *sub_1000DE234()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = long]";
  v6 = 66;
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

uint64_t sub_1000DE2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C08A0, memory_order_acquire))
  {
    if (qword_1002C0898 != a2)
    {
LABEL_3:

      return sub_1000DE4B4(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027BD30();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C0898 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DE6B4(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 2 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DE3EC()
{
  if ((atomic_load_explicit(&qword_1002C0890, memory_order_acquire) & 1) == 0)
  {
    sub_10027BD84();
  }

  return qword_1002C0880;
}

const char *sub_1000DE434()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = unsigned long]";
  v6 = 75;
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

uint64_t sub_1000DE4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C08C8, memory_order_acquire))
  {
    if (qword_1002C08C0 != a2)
    {
LABEL_3:

      return sub_1000DE7B0(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027BDD8();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C08C0 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DE9B0(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 4 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DE5EC()
{
  if ((atomic_load_explicit(&qword_1002C08B8, memory_order_acquire) & 1) == 0)
  {
    sub_10027BE2C();
  }

  return qword_1002C08A8;
}

const char *sub_1000DE634()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<unsigned char>]";
  v6 = 89;
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

uint64_t sub_1000DE6B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = sub_1000D2BA4(v15);
  if (result != 8)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

uint64_t sub_1000DE7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C08F0, memory_order_acquire))
  {
    if (qword_1002C08E8 != a2)
    {
LABEL_3:

      return sub_1000DEAAC(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027BE80();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C08E8 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DECAC(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 8 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DE8E8()
{
  if ((atomic_load_explicit(&qword_1002C08E0, memory_order_acquire) & 1) == 0)
  {
    sub_10027BED4();
  }

  return qword_1002C08D0;
}

const char *sub_1000DE930()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<unsigned short>]";
  v6 = 90;
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

uint64_t sub_1000DE9B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = sub_1000D2BA4(v15);
  if (result != 16)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

uint64_t sub_1000DEAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0918, memory_order_acquire))
  {
    if (qword_1002C0910 != a2)
    {
LABEL_3:

      return sub_1000DEDA8(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027BF28();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C0910 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DEFA8(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 16 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DEBE4()
{
  if ((atomic_load_explicit(&qword_1002C0908, memory_order_acquire) & 1) == 0)
  {
    sub_10027BF7C();
  }

  return qword_1002C08F8;
}

const char *sub_1000DEC2C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<unsigned int>]";
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

uint64_t sub_1000DECAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = sub_1000D2BA4(v15);
  if (result != 32)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

uint64_t sub_1000DEDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0940, memory_order_acquire))
  {
    if (qword_1002C0938 != a2)
    {
LABEL_3:

      return sub_1000DF0A4(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027BFD0();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C0938 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DF2A4(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 2 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DEEE0()
{
  if ((atomic_load_explicit(&qword_1002C0930, memory_order_acquire) & 1) == 0)
  {
    sub_10027C024();
  }

  return qword_1002C0920;
}

const char *sub_1000DEF28()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<unsigned long long>]";
  v6 = 94;
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

uint64_t sub_1000DEFA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = sub_1000D2BA4(v15);
  if (result != 64)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

uint64_t sub_1000DF0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0968, memory_order_acquire))
  {
    if (qword_1002C0960 != a2)
    {
LABEL_3:

      return sub_1000DF3A0(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027C078();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C0960 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DF5A0(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 4 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DF1DC()
{
  if ((atomic_load_explicit(&qword_1002C0958, memory_order_acquire) & 1) == 0)
  {
    sub_10027C0CC();
  }

  return qword_1002C0948;
}

const char *sub_1000DF224()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<signed char>]";
  v6 = 87;
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

uint64_t sub_1000DF2A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = sub_1000D2BA4(v15);
  if (result != 8)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

uint64_t sub_1000DF3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0990, memory_order_acquire))
  {
    if (qword_1002C0988 != a2)
    {
LABEL_3:

      return sub_1000DF69C(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027C120();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C0988 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DF89C(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 8 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DF4D8()
{
  if ((atomic_load_explicit(&qword_1002C0980, memory_order_acquire) & 1) == 0)
  {
    sub_10027C174();
  }

  return qword_1002C0970;
}

const char *sub_1000DF520()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<short>]";
  v6 = 81;
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

uint64_t sub_1000DF5A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = sub_1000D2BA4(v15);
  if (result != 16)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

uint64_t sub_1000DF69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C09B8, memory_order_acquire))
  {
    if (qword_1002C09B0 != a2)
    {
LABEL_3:

      return sub_1000DF998(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027C1C8();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002C09B0 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DFB4C(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 16 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000DF7D4()
{
  if ((atomic_load_explicit(&qword_1002C09A8, memory_order_acquire) & 1) == 0)
  {
    sub_10027C21C();
  }

  return qword_1002C0998;
}

const char *sub_1000DF81C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<int>]";
  v6 = 79;
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

uint64_t sub_1000DF89C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = sub_1000D2BA4(v15);
  if (result != 32)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

uint64_t sub_1000DF998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C09E0, memory_order_acquire) & 1) == 0)
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10027C270();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002C09D8 != v4)
    {
      goto LABEL_3;
    }

LABEL_9:

    return sub_1000DFC48(a1, a3);
  }

  if (qword_1002C09D8 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002C0A08, memory_order_acquire))
  {
    if (qword_1002C0A00 != a2)
    {
LABEL_5:

      return sub_1000DFEF8(a1, a2, a3);
    }
  }

  else
  {
    v9 = a1;
    v5 = a2;
    v7 = a3;
    sub_10027C2C4();
    a2 = v5;
    a3 = v7;
    a1 = v9;
    if (qword_1002C0A00 != v5)
    {
      goto LABEL_5;
    }
  }

  return sub_1000DFE04(a1, a3);
}

uint64_t sub_1000DFA84()
{
  if ((atomic_load_explicit(&qword_1002C09D0, memory_order_acquire) & 1) == 0)
  {
    sub_10027C318();
  }

  return qword_1002C09C0;
}

const char *sub_1000DFACC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<long long>]";
  v6 = 85;
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

uint64_t sub_1000DFB4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = sub_1000D2BA4(v15);
  if (result != 64)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

uint64_t sub_1000DFC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v12);
  result = mlir::ShapedType::getNumElements(Shape, v5);
  if (result)
  {
    v12 = *(*a1 + 8);
    ElementType = mlir::ShapedType::getElementType(&v12);
    result = sub_1000D447C(ElementType, 4, 0, 1u);
    if (result)
    {
      v8 = *(*a1 + 32);
      v12 = *(*a1 + 8);
      v9 = mlir::ShapedType::getShape(&v12);
      result = mlir::ShapedType::getNumElements(v9, v10);
      v11 = *(*a1 + 24);
      *a2 = 1;
      *(a2 + 1) = v11;
      *(a2 + 8) = v8;
      *(a2 + 16) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t sub_1000DFD3C()
{
  if ((atomic_load_explicit(&qword_1002C09F8, memory_order_acquire) & 1) == 0)
  {
    sub_10027C36C();
  }

  return qword_1002C09E8;
}

const char *sub_1000DFD84()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = float]";
  v6 = 67;
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

uint64_t sub_1000DFE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v12);
  result = mlir::ShapedType::getNumElements(Shape, v5);
  if (result)
  {
    v12 = *(*a1 + 8);
    ElementType = mlir::ShapedType::getElementType(&v12);
    result = sub_1000D447C(ElementType, 8, 0, 1u);
    if (result)
    {
      v8 = *(*a1 + 32);
      v12 = *(*a1 + 8);
      v9 = mlir::ShapedType::getShape(&v12);
      result = mlir::ShapedType::getNumElements(v9, v10);
      v11 = *(*a1 + 24);
      *a2 = 1;
      *(a2 + 1) = v11;
      *(a2 + 8) = v8;
      *(a2 + 16) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t sub_1000DFEF8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C0A30, memory_order_acquire) & 1) == 0)
  {
    v7 = a3;
    v3 = result;
    v5 = a2;
    sub_10027C3C0();
    result = v3;
    a2 = v5;
    a3 = v7;
    if (qword_1002C0A28 != v5)
    {
      goto LABEL_3;
    }

LABEL_7:

    return sub_1000E00A4(result, a3);
  }

  if (qword_1002C0A28 == a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002C0A58, memory_order_acquire))
  {
    if (qword_1002C0A50 != a2)
    {
LABEL_5:
      *a3 = 0;
      a3[16] = 0;
      return result;
    }
  }

  else
  {
    v8 = a3;
    v4 = result;
    v6 = a2;
    sub_10027C414();
    result = v4;
    a3 = v8;
    if (qword_1002C0A50 != v6)
    {
      goto LABEL_5;
    }
  }

  return sub_1000E026C(result, a3);
}

uint64_t sub_1000DFFDC()
{
  if ((atomic_load_explicit(&qword_1002C0A20, memory_order_acquire) & 1) == 0)
  {
    sub_10027C468();
  }

  return qword_1002C0A10;
}

const char *sub_1000E0024()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = double]";
  v6 = 68;
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

uint64_t sub_1000E00A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v12);
  result = mlir::ShapedType::getNumElements(Shape, v5);
  if (result)
  {
    v12 = *(*a1 + 8);
    *&v12 = mlir::ShapedType::getElementType(&v12);
    ElementType = mlir::ComplexType::getElementType(&v12);
    result = sub_1000D447C(ElementType, 4, 0, 1u);
    if (result)
    {
      v8 = *(*a1 + 32);
      v12 = *(*a1 + 8);
      v9 = mlir::ShapedType::getShape(&v12);
      result = mlir::ShapedType::getNumElements(v9, v10);
      v11 = *(*a1 + 24);
      *a2 = 1;
      *(a2 + 1) = v11;
      *(a2 + 8) = v8;
      *(a2 + 16) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t sub_1000E01A4()
{
  if ((atomic_load_explicit(&qword_1002C0A48, memory_order_acquire) & 1) == 0)
  {
    sub_10027C4BC();
  }

  return qword_1002C0A38;
}

const char *sub_1000E01EC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<float>]";
  v6 = 81;
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

uint64_t sub_1000E026C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v12);
  result = mlir::ShapedType::getNumElements(Shape, v5);
  if (result)
  {
    v12 = *(*a1 + 8);
    *&v12 = mlir::ShapedType::getElementType(&v12);
    ElementType = mlir::ComplexType::getElementType(&v12);
    result = sub_1000D447C(ElementType, 8, 0, 1u);
    if (result)
    {
      v8 = *(*a1 + 32);
      v12 = *(*a1 + 8);
      v9 = mlir::ShapedType::getShape(&v12);
      result = mlir::ShapedType::getNumElements(v9, v10);
      v11 = *(*a1 + 24);
      *a2 = 1;
      *(a2 + 1) = v11;
      *(a2 + 8) = v8;
      *(a2 + 16) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t sub_1000E036C()
{
  if ((atomic_load_explicit(&qword_1002C0A70, memory_order_acquire) & 1) == 0)
  {
    sub_10027C510();
  }

  return qword_1002C0A60;
}

const char *sub_1000E03B4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<double>]";
  v6 = 82;
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

mlir::DenseElementsAttr *sub_1000E0434@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0A80, memory_order_acquire))
  {
    if (qword_1002C0A78 != a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v11 = *(*a1 + 8);
    v4 = a1;
    Shape = mlir::ShapedType::getShape(&v11);
    mlir::ShapedType::getNumElements(Shape, v6);
    v7 = *(*v4 + 24);
    operator new();
  }

  v9 = a2;
  v10 = a3;
  v8 = a1;
  sub_10027C564();
  a1 = v8;
  a2 = v9;
  a3 = v10;
  if (qword_1002C0A78 == v9)
  {
    goto LABEL_7;
  }

LABEL_3:

  return sub_1000E053C(a1, a2, a3);
}

mlir::DenseElementsAttr *sub_1000E053C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C0AA8, memory_order_acquire) & 1) == 0)
  {
    v11 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027C5B8();
    a2 = v5;
    a1 = v4;
    a3 = v11;
    if (qword_1002C0AA0 != v5)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = a3;
    v7 = a1;
    result = sub_1000E0978(a1, &v13);
    if (v15)
    {
      v16[0] = v14[0];
      *(v16 + 15) = *(v14 + 15);
      v8 = *(*v7 + 24);
      operator new();
    }

    *v6 = 0;
    v6[16] = 0;
    return result;
  }

  if (qword_1002C0AA0 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002C0AD0, memory_order_acquire))
  {
    if (qword_1002C0AC8 != a2)
    {
LABEL_5:

      return sub_1000E0CD4(a1, a2, a3);
    }
  }

  else
  {
    v12 = a3;
    v9 = a1;
    v10 = a2;
    sub_10027C60C();
    a2 = v10;
    a1 = v9;
    a3 = v12;
    if (qword_1002C0AC8 != v10)
    {
      goto LABEL_5;
    }
  }

  return sub_1000E0BFC(a1, a3);
}

uint64_t sub_1000E073C()
{
  if ((atomic_load_explicit(&qword_1002C0A98, memory_order_acquire) & 1) == 0)
  {
    sub_10027C660();
  }

  return qword_1002C0A88;
}

const char *sub_1000E0784()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::Attribute]";
  v6 = 77;
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

uint64_t sub_1000E0880(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16) + a2;
  v4[0] = *(a1 + 8);
  v4[1] = v2;
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(v4);
}

uint64_t sub_1000E08B0()
{
  if ((atomic_load_explicit(&qword_1002C0AC0, memory_order_acquire) & 1) == 0)
  {
    sub_10027C6B4();
  }

  return qword_1002C0AB0;
}

const char *sub_1000E08F8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = llvm::APInt]";
  v6 = 73;
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

unint64_t sub_1000E0978@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *(*a1 + 8);
  *&v19 = mlir::ShapedType::getElementType(&v19);
  result = mlir::Type::isIntOrIndex(&v19);
  if (result)
  {
    v6 = *(*a1 + 16);
    v7 = *(*a1 + 32);
    v8 = *(*a1 + 24);
    *&v19 = *(*a1 + 8);
    v5 = v19;
    *(&v19 + 1) = v6;
    ElementType = mlir::ShapedType::getElementType(&v19);
    v10 = sub_1000D2BA4(ElementType);
    v11 = *a1;
    v19 = *(*a1 + 8);
    Shape = mlir::ShapedType::getShape(&v19);
    NumElements = mlir::ShapedType::getNumElements(Shape, v13);
    v15 = *(v11 + 32);
    v16 = *(v11 + 24);
    v19 = *(v11 + 8);
    v17 = mlir::ShapedType::getElementType(&v19);
    result = sub_1000D2BA4(v17);
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = 0;
    *(a2 + 24) = v10;
    *(a2 + 32) = v15;
    *(a2 + 40) = v16;
    *(a2 + 48) = NumElements;
    *(a2 + 56) = result;
    v18 = 1;
    *(a2 + 64) = v5;
    *(a2 + 72) = v6;
  }

  else
  {
    v18 = 0;
    *a2 = 0;
  }

  *(a2 + 80) = v18;
  return result;
}

void *sub_1000E0AF0@<X0>(void *result@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v3 = result[1];
  v4 = result[4];
  if (result[2])
  {
    v5 = 0;
  }

  else
  {
    v5 = result[3] + a2;
  }

  if (v4 == 1)
  {
    v6 = (*(v3 + (v5 >> 3)) >> (v5 & 7)) & 1;
    *(a3 + 2) = 1;
    *a3 = v6;
  }

  else
  {
    *(a3 + 2) = v4;
    if (v4 >= 0x41)
    {
      llvm::APInt::initSlowCase(a3);
    }

    *a3 = 0;
    if (v4)
    {
      v7 = ((v4 - (v4 != 0)) >> 3) + 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {

      return memmove(a3, (v3 + ((((v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8) * v5) >> 3)), v7);
    }
  }

  return result;
}

BOOL sub_1000E0BFC@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v10 = *(*a1 + 8);
  *&v10 = mlir::ShapedType::getElementType(&v10);
  result = mlir::Type::isInteger(&v10, 1);
  if (result)
  {
    v5 = *(*a1 + 32);
    v6 = *(*a1 + 24);
    v10 = *(*a1 + 8);
    Shape = mlir::ShapedType::getShape(&v10);
    mlir::ShapedType::getNumElements(Shape, v8);
    v9 = *(*a1 + 24);
    operator new();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

mlir::DenseElementsAttr *sub_1000E0CD4@<X0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0AF8, memory_order_acquire))
  {
    if (qword_1002C0AF0 != a2)
    {
LABEL_3:

      return sub_1000E0FC8(a1, a2, a3);
    }
  }

  else
  {
    v9 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027C708();
    a2 = v5;
    a1 = v4;
    a3 = v9;
    if (qword_1002C0AF0 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  result = mlir::DenseElementsAttr::tryGetComplexIntValues(a1, &v10);
  if (v12)
  {
    v13[0] = v11[0];
    *(v13 + 15) = *(v11 + 15);
    v8 = *(*v7 + 24);
    operator new();
  }

  *v6 = 0;
  v6[16] = 0;
  return result;
}

uint64_t sub_1000E0E4C()
{
  if ((atomic_load_explicit(&qword_1002C0AE8, memory_order_acquire) & 1) == 0)
  {
    sub_10027C75C();
  }

  return qword_1002C0AD8;
}

const char *sub_1000E0E94()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = BOOL]";
  v6 = 66;
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

uint64_t sub_1000E0F98(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 24) + a2;
  }

  return (*(*(a1 + 8) + (v2 >> 3)) >> (v2 & 7)) & 1;
}

mlir::DenseElementsAttr *sub_1000E0FC8@<X0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0B20, memory_order_acquire))
  {
    if (qword_1002C0B18 != a2)
    {
LABEL_3:

      return sub_1000E12D0(a1, a2, a3);
    }
  }

  else
  {
    v9 = a3;
    v4 = a1;
    v5 = a2;
    sub_10027C7B0();
    a2 = v5;
    a1 = v4;
    a3 = v9;
    if (qword_1002C0B18 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  result = mlir::DenseElementsAttr::tryGetFloatValues(a1, &v10);
  if (v13)
  {
    v14 = v11;
    *v15 = v12[0];
    *&v15[15] = *(v12 + 15);
    v8 = *(*v7 + 24);
    operator new();
  }

  *v6 = 0;
  v6[16] = 0;
  return result;
}

uint64_t sub_1000E114C()
{
  if ((atomic_load_explicit(&qword_1002C0B10, memory_order_acquire) & 1) == 0)
  {
    sub_10027C804();
  }

  return qword_1002C0B00;
}

const char *sub_1000E1194()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<llvm::APInt>]";
  v6 = 87;
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

uint64_t *sub_1000E1298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = *(a1 + 8);
  v3 = *(a1 + 32);
  v6 = *(a1 + 24) + a2;
  v7 = v3;
  return mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v5, a3);
}

mlir::DenseElementsAttr *sub_1000E12D0@<X0>(mlir::DenseElementsAttr *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0B48, memory_order_acquire))
  {
    if (qword_1002C0B40 != a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = result;
    sub_10027C858();
    result = v7;
    if (qword_1002C0B40 != a2)
    {
      goto LABEL_6;
    }
  }

  v4 = result;
  result = mlir::DenseElementsAttr::tryGetComplexFloatValues(result, &v8);
  if (v11)
  {
    v12 = v9;
    *v13 = v10[0];
    *&v13[15] = *(v10 + 15);
    v5 = *(*v4 + 24);
    operator new();
  }

LABEL_6:
  *a3 = 0;
  a3[16] = 0;
  return result;
}

uint64_t sub_1000E140C()
{
  if ((atomic_load_explicit(&qword_1002C0B38, memory_order_acquire) & 1) == 0)
  {
    sub_10027C8AC();
  }

  return qword_1002C0B28;
}

const char *sub_1000E1454()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = llvm::APFloat]";
  v6 = 75;
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

const llvm::APInt *sub_1000E1560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = v3 + a2;
  return sub_1000D2714(&v5, a3);
}

uint64_t sub_1000E15A0()
{
  if ((atomic_load_explicit(&qword_1002C0B60, memory_order_acquire) & 1) == 0)
  {
    sub_10027C900();
  }

  return qword_1002C0B50;
}

const char *sub_1000E15E8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<llvm::APFloat>]";
  v6 = 89;
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

void sub_1000E16F4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = v4 + a2;
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v5, &v8);
  sub_1000C9214(&v8, &v5, a3);
  if (v11 >= 0x41 && v10)
  {
    operator delete[]();
  }

  if (v9 >= 0x41)
  {
    if (v8)
    {
      operator delete[]();
    }
  }
}

BOOL sub_1000E17A8(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    if (atomic_load_explicit(&qword_1002C0B70, memory_order_acquire))
    {
      return v1 == a1 || qword_1002C0B68 == a1;
    }
  }

  else
  {
    v5 = a1;
    sub_10027C954();
    a1 = v5;
    v1 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    if (atomic_load_explicit(&qword_1002C0B70, memory_order_acquire))
    {
      return v1 == a1 || qword_1002C0B68 == a1;
    }
  }

  v4 = v1;
  v6 = a1;
  sub_10027C9A4();
  v1 = v4;
  a1 = v6;
  return v1 == a1 || qword_1002C0B68 == a1;
}

uint64_t sub_1000E1834()
{
  {
    sub_10027C9F8();
  }

  return llvm::getTypeName<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>>(void)::Name;
}

const char *sub_1000E187C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::TypedAttr::Trait<Empty>]";
  v6 = 91;
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

uint64_t sub_1000E18FC()
{
  if ((atomic_load_explicit(&qword_1002C0B88, memory_order_acquire) & 1) == 0)
  {
    sub_10027CA4C();
  }

  return qword_1002C0B78;
}

const char *sub_1000E1944()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ElementsAttr::Trait<Empty>]";
  v6 = 94;
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

void sub_1000E19D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000E1B0C(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000DB1E0(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1000E20CC;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_160;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_1000E20D4;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  *(a2 + 144) = "builtin.dense_string_elements";
  *(a2 + 152) = 29;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_1000E1B0C(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = sub_1000E1BB8;
  {
    v4 = v2;
    sub_10027B6B4();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  sub_1000E1BC0(a1);
}

void sub_1000E1BC0(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
  v3 = v2;
  *v2 = sub_1000E1D30;
  v2[1] = sub_1000E1E24;
  v2[2] = sub_1000E1E2C;
  v2[3] = 0;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = v2;
    sub_10027B6B4();
    v3 = v14;
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
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
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v3[3] = v7[1];
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_13:
  v3[3] = 0;
  {
    goto LABEL_14;
  }

LABEL_18:
  v15 = v3;
  sub_10027B444();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

void sub_1000E1D30(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = a1;
  sub_1000E1E34(&v8, a2, v9);
  if (v11 == 1)
  {
    v5 = v9[0];
    *a3 = v9[0];
    *(a3 + 1) = v9[1];
    if (v5 == 1)
    {
      *(a3 + 8) = v10;
      *(a3 + 16) = 1;
      return;
    }

    v6 = v10;
    v10 = 0;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1000E1FE8(&v8, a2, a3);
    if ((v11 & 1) != 0 && (v9[0] & 1) == 0)
    {
LABEL_9:
      v7 = v10;
      v10 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }
  }
}

uint64_t sub_1000E1E2C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  v3 = *(a2 + 16);
  return result;
}

void sub_1000E1E34(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0B98, memory_order_acquire))
  {
    if (qword_1002C0B90 != a2)
    {
LABEL_3:
      *a3 = 0;
      *(a3 + 16) = 0;
      return;
    }
  }

  else
  {
    sub_10027CAA0();
    if (qword_1002C0B90 != a2)
    {
      goto LABEL_3;
    }
  }

  v12 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v12);
  if (mlir::ShapedType::getNumElements(Shape, v7))
  {
    v8 = *(*a1 + 32);
    v12 = *(*a1 + 8);
    v9 = mlir::ShapedType::getShape(&v12);
    mlir::ShapedType::getNumElements(v9, v10);
    v11 = *(*a1 + 24);
  }

  else
  {
    v11 = 0;
    v8 = 0;
  }

  *a3 = 1;
  *(a3 + 1) = v11;
  *(a3 + 8) = v8;
  *(a3 + 16) = 1;
}

uint64_t sub_1000E1F20()
{
  if ((atomic_load_explicit(&qword_1002C0BB0, memory_order_acquire) & 1) == 0)
  {
    sub_10027CAF4();
  }

  return qword_1002C0BA0;
}

const char *sub_1000E1F68()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = llvm::StringRef]";
  v6 = 77;
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

uint64_t sub_1000E1FE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C0A80, memory_order_acquire) & 1) == 0)
  {
    v9 = result;
    sub_10027C564();
    result = v9;
    if (qword_1002C0A78 != a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = *(*result + 8);
    v4 = result;
    Shape = mlir::ShapedType::getShape(&v10);
    mlir::ShapedType::getNumElements(Shape, v6);
    v7 = *(*v4 + 24);
    operator new();
  }

  if (qword_1002C0A78 == a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  *a3 = 0;
  a3[16] = 0;
  return result;
}

void sub_1000E20DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000E2218(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000DB1E0(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1000E2620;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_1000E2700;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_1000E2730;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id;
  *(a2 + 144) = "builtin.dense_resource_elements";
  *(a2 + 152) = 31;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_1000E2218(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = sub_1000E2314;
  {
    v6 = v2;
    sub_10027B6B4();
    v3 = v6;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);
  sub_1000E231C(a1);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = sub_1000E25FC;
  if ((atomic_load_explicit(&qword_1002C06C0, memory_order_acquire) & 1) == 0)
  {
    sub_10027CB48();
  }

  v5 = off_1002C06B8;

  mlir::detail::InterfaceMap::insert(a1, v5, v4);
}

void sub_1000E231C(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
  v3 = v2;
  *v2 = sub_1000E248C;
  v2[1] = sub_1000E2498;
  v2[2] = sub_1000E24C8;
  v2[3] = 0;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = v2;
    sub_10027B6B4();
    v3 = v14;
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
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
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v3[3] = v7[1];
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_13:
  v3[3] = 0;
  {
    goto LABEL_14;
  }

LABEL_18:
  v15 = v3;
  sub_10027B444();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

uint64_t sub_1000E24C8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  v3 = *(a2 + 16);
  return result;
}

uint64_t sub_1000E24D0(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *v2;
    {
      v4 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (v6)
      {
LABEL_4:
        v7 = v5;
        v8 = v6;
        do
        {
          v9 = v8 >> 1;
          v10 = &v7[2 * (v8 >> 1)];
          v12 = *v10;
          v11 = v10 + 2;
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
        if (v7 != &v5[2 * v6])
        {
          if (*v7 == v4)
          {
            v13 = v7[1];
          }

          else
          {
            v13 = 0;
          }

          return mlir::ElementsAttr::getNumElements(v2, v13);
        }
      }
    }

    else
    {
      v15 = v3;
      v16 = v2;
      sub_10027B444();
      v2 = v16;
      v4 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v5 = *(v15 + 8);
      v6 = *(v15 + 16);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v13 = 0;

    return mlir::ElementsAttr::getNumElements(v2, v13);
  }

  v13 = 0;

  return mlir::ElementsAttr::getNumElements(v2, v13);
}

uint64_t sub_1000E25FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(v2 + 80) != 1)
  {
    return 0;
  }

  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

BOOL sub_1000E2624(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    if (atomic_load_explicit(&qword_1002C0B70, memory_order_acquire))
    {
      goto LABEL_3;
    }

LABEL_15:
    v10 = a1;
    v7 = v1;
    sub_10027C9A4();
    v1 = v7;
    a1 = v10;
    v2 = qword_1002C0B68;
    if (atomic_load_explicit(&qword_1002C06E8, memory_order_acquire))
    {
      return v1 == a1 || v2 == a1 || qword_1002C06E0 == a1;
    }

    goto LABEL_16;
  }

  v9 = a1;
  sub_10027C954();
  a1 = v9;
  v1 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  if ((atomic_load_explicit(&qword_1002C0B70, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = qword_1002C0B68;
  if (atomic_load_explicit(&qword_1002C06E8, memory_order_acquire))
  {
    return v1 == a1 || v2 == a1 || qword_1002C06E0 == a1;
  }

LABEL_16:
  v11 = a1;
  v6 = v2;
  v8 = v1;
  sub_10027CB9C();
  v2 = v6;
  v1 = v8;
  a1 = v11;
  return v1 == a1 || v2 == a1 || qword_1002C06E0 == a1;
}

uint64_t sub_1000E2700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t sub_1000E2730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  v7.i64[0] = a5;
  v7.i64[1] = a6;
  return sub_1000E2764(a2, &v8, &v7);
}

uint64_t sub_1000E2764(uint64_t a1, __int128 *a2, int64x2_t *a3)
{
  v18 = a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  v5 = *a2;
  v16 = *a3;
  v17 = v5;
  v6 = sub_1000E28E4(v3, v4, &v17, &v16);
  v8 = v7;
  mlir::Attribute::getContext(&v18);
  *&v21 = v6;
  *(&v21 + 1) = v8;
  Context = mlir::Type::getContext(&v21);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v22[0] = &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id;
  v22[1] = Context;
  v27[0] = sub_1001027BC;
  v27[1] = v22;
  v25[0] = v21;
  v25[1] = v19;
  v26 = v20;
  v11 = 0x9DDFEA08EB382D69 * ((8 * v19 - 0xAE502812AA7333) ^ DWORD1(v19));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (DWORD1(v19) ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (DWORD1(v19) ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ (LODWORD(v25[0]) >> 4) ^ (LODWORD(v25[0]) >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v24 = v25;
  v23[0] = v25;
  v23[1] = v27;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 32) >> 15) ^ (-348639895 * (v13 ^ (v14 >> 47) ^ v14)))) ^ v12, sub_1001026C4, &v24, sub_1001026F4, v23);
}

void *sub_1000E28E4(void *result, uint64_t a2, uint64_t a3, int64x2_t *a4)
{
  if (result)
  {
    v4 = *a4;
    *a4 = vaddq_s64(*a4, xmmword_10028FD30);
    result = *v4.i64[0];
    if (*v4.i64[0])
    {
      v5 = *result;
      {
        v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v7 = *(v5 + 8);
        v8 = *(v5 + 16);
        if (!v8)
        {
          return result;
        }
      }

      else
      {
        v16 = v5;
        v17 = result;
        sub_100278F7C();
        result = v17;
        v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v7 = *(v16 + 8);
        v8 = *(v16 + 16);
        if (!v8)
        {
          return result;
        }
      }

      v9 = v7;
      v10 = v8;
      do
      {
        v11 = v10 >> 1;
        v12 = &v9[2 * (v10 >> 1)];
        v14 = *v12;
        v13 = v12 + 2;
        v10 += ~(v10 >> 1);
        if (v14 < v6)
        {
          v9 = v13;
        }

        else
        {
          v10 = v11;
        }
      }

      while (v10);
      if (v9 != &v7[2 * v8] && *v9 == v6)
      {
        v15 = v9[1];
      }
    }
  }

  return result;
}

void sub_1000E29F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  if (v6)
  {
    v8 = 16 * v6;
    do
    {
      v9 = *v7++;
      v12 = v9;
      Name = mlir::NamedAttribute::getName(&v12);
      mlir::AttrTypeImmediateSubElementWalker::walk(v11, Name);
      mlir::AttrTypeImmediateSubElementWalker::walk(v11, *(&v12 + 1));
      v8 -= 16;
    }

    while (v8);
  }
}

uint64_t sub_1000E2A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8.i64[0] = a3;
  v8.i64[1] = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return sub_1000E2A90(a2, &v8, &v7);
}

uint64_t sub_1000E2A90(uint64_t a1, int64x2_t *a2, __int128 *a3)
{
  v15 = a1;
  v3 = *(a1 + 8);
  v13 = *a2;
  v14 = v3;
  v12 = *a3;
  sub_1000E2BE8(&v14, &v13, &v19);
  Context = mlir::Attribute::getContext(&v15);
  v16 = v18;
  v17 = 0x300000000;
  v5 = v20;
  if (v20)
  {
    v6 = Context;
    if (v20 < 4)
    {
      v8 = v18;
      v7 = v20;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v16, v18, v20, 16);
      v7 = v20;
      if (!v20)
      {
        goto LABEL_9;
      }

      v8 = v16;
    }

    memcpy(v8, v19, 16 * v7);
LABEL_9:
    LODWORD(v17) = v5;
    v9 = mlir::DictionaryAttr::get(v6, v16, v5);
    v10 = v16;
    if (v16 == v18)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = mlir::DictionaryAttr::get(Context, v18, 0);
  v10 = v16;
  if (v16 != v18)
  {
LABEL_10:
    free(v10);
  }

LABEL_11:
  if (v19 != &v21)
  {
    free(v19);
  }

  return v9;
}

void sub_1000E2BE8(uint64_t *a1@<X0>, int64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  sub_1000E2D10(a1[1], a2, &__src);
  v5 = (a3 + 16);
  *a3 = a3 + 16;
  *(a3 + 8) = 0x300000000;
  v6 = v12;
  v7 = __src;
  if (v12)
  {
    v8 = &__src == a3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_14;
  }

  if (__src == v14)
  {
    if (v12 < 4)
    {
      v10 = v12;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v12, 16);
      v10 = v12;
      v7 = __src;
      if (!v12)
      {
LABEL_12:
        *(a3 + 8) = v6;
        goto LABEL_13;
      }

      v5 = *a3;
    }

    memcpy(v5, v7, 16 * v10);
    v7 = __src;
    goto LABEL_12;
  }

  *a3 = __src;
  v9 = v13;
  *(a3 + 8) = v6;
  *(a3 + 12) = v9;
  __src = v14;
  v13 = 0;
  v7 = v14;
LABEL_13:
  v12 = 0;
LABEL_14:
  if (v7 != v14)
  {
    free(v7);
  }
}

void sub_1000E2D10(uint64_t a1@<X1>, int64x2_t *a2@<X2>, uint64_t a3@<X8>)
{
  __src = v14;
  v13 = 0x300000000;
  if (a1)
  {
    v5 = 16 * a1;
    do
    {
      while (1)
      {
        v6 = *a2;
        *a2 = vaddq_s64(*a2, xmmword_10028FD40);
        mlir::NamedAttribute::NamedAttribute(&v11, *v6.i64[0], *(v6.i64[0] + 8));
        if (v13 >= HIDWORD(v13))
        {
          break;
        }

        *(__src + v13) = v11;
        LODWORD(v13) = v13 + 1;
        v5 -= 16;
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      sub_100056C68(&__src, &v11);
      v5 -= 16;
    }

    while (v5);
LABEL_7:
    v7 = v13;
    v8 = __src;
    *a3 = a3 + 16;
    *(a3 + 8) = 0x300000000;
    if (v7 && &__src != a3)
    {
      if (v8 == v14)
      {
        v10 = v7;
        if (v7 < 4 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v7, 16), v10 = v13, v8 = __src, v13))
        {
          memcpy(*a3, v8, 16 * v10);
          v8 = __src;
        }

        *(a3 + 8) = v7;
      }

      else
      {
        *a3 = v8;
        v9 = HIDWORD(v13);
        *(a3 + 8) = v7;
        *(a3 + 12) = v9;
        __src = v14;
        HIDWORD(v13) = 0;
        v8 = v14;
      }

      LODWORD(v13) = 0;
    }

    if (v8 != v14)
    {
      free(v8);
    }
  }

  else
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0x300000000;
  }
}

void sub_1000E2EC0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = sub_1000E3060;
  {
    v10 = v4;
    sub_10027CBF0();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    sub_1000DB1E0(a2 + 8, &v14);
  }

  *(a2 + 72) = sub_1000E3068;
  *(a2 + 80) = v13;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_1000E30C8;
  *(a2 + 112) = &v12;
  *(a2 + 120) = sub_1000E31DC;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  *(a2 + 144) = "builtin.float";
  *(a2 + 152) = 13;
  v6 = v14;
  if (v15)
  {
    v7 = 16 * v15;
    v8 = (v14 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v14;
  }

  if (v6 != v16)
  {
    free(v6);
  }
}

BOOL sub_1000E3068(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  sub_10027C954();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void sub_1000E30E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a1 + 2);
  v10 = a1[2];
  v13 = a1[1];
  v11 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v11 == v10)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v14, v9);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v14, v9);
  }

  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  mlir::AttrTypeImmediateSubElementWalker::walk(v12, v13);
  if (v11 == v14[0])
  {
    sub_100029F40(v14);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v14);
  }
}

uint64_t sub_1000E31DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return sub_1000E3210(a2, v8, v7);
}

uint64_t sub_1000E3210(void *a1, uint64_t a2, uint64_t **a3)
{
  v12 = a1;
  v4 = (a1 + 2);
  v5 = a1[2];
  v15 = a1[1];
  v6 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v6 == v5)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v16, v4);
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v16, v4);
    if (v15)
    {
LABEL_3:
      v7 = **a3;
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  mlir::Attribute::getContext(&v12);
  v13 = v7;
  Context = mlir::Type::getContext(&v13);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  v14[1] = Context;
  v10 = sub_1000D7F9C(AttributeUniquer, sub_1000D83F8, v14, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v13, v16);
  if (v6 == v16[0])
  {
    sub_100029F40(v16);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v16);
  }

  return v10;
}

void sub_1000E3354(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = (a2 + 16);
  v3 = *(a2 + 16);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v3)
  {

    sub_100029F40(v2);
  }

  else
  {

    llvm::detail::IEEEFloat::~IEEEFloat(v2);
  }
}

void sub_1000E33B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = sub_1000E3558;
  {
    v10 = v4;
    sub_10027CBF0();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    sub_1000DB1E0(a2 + 8, &v14);
  }

  *(a2 + 72) = sub_1000E3560;
  *(a2 + 80) = v13;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_1000E35C0;
  *(a2 + 112) = &v12;
  *(a2 + 120) = sub_1000E3670;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  *(a2 + 144) = "builtin.integer";
  *(a2 + 152) = 15;
  v6 = v14;
  if (v15)
  {
    v7 = 16 * v15;
    v8 = (v14 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v14;
  }

  if (v6 != v16)
  {
    free(v6);
  }
}

BOOL sub_1000E3560(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  sub_10027C954();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t sub_1000E35C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v9[4] = v7;
  v11 = *(a2 + 24);
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(&v10, (a2 + 16));
  }

  v10 = *(a2 + 16);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  result = mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
  if (v11 >= 0x41)
  {
    result = v10;
    if (v10)
    {
      operator delete[]();
    }
  }

  return result;
}

uint64_t sub_1000E3670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = a2;
  v5 = *(a2 + 8);
  v9 = *(a2 + 24);
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(&v8, (a2 + 16));
  }

  v8 = *(a2 + 16);
  if (v5)
  {
    v6 = *a5;
  }

  else
  {
    v6 = 0;
  }

  mlir::Attribute::getContext(&v10);
  result = mlir::IntegerAttr::get(v6, &v8);
  if (v9 >= 0x41)
  {
    if (v8)
    {
      operator delete[]();
    }
  }

  return result;
}