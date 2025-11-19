void sub_10010021C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v17, 0, sizeof(v17));
  v15 = v17;
  v16 = 0x300000000;
  *&v12 = sub_1001003D8;
  v14 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  if ((atomic_load_explicit(&qword_1002C0668, memory_order_acquire) & 1) == 0)
  {
    v9 = a1;
    sub_10027B494();
    a1 = v9;
  }

  v3 = qword_1002C0660;
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v16)
  {
    sub_1000DB1E0(a2 + 8, &v15);
  }

  v4 = v14;
  *(a2 + 96) = v14;
  if (v4 >= 8)
  {
    if ((v4 & 2) != 0 && (v4 & 4) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 8))(a2 + 72, &v12);
      (*((*(a2 + 96) & 0xFFFFFFFFFFFFFFF8) + 16))(&v12);
    }

    else
    {
      *(a2 + 72) = v12;
      *(a2 + 88) = v13;
    }
  }

  *(a2 + 104) = sub_1001003E0;
  *(a2 + 112) = &v11;
  *(a2 + 120) = sub_100100410;
  *(a2 + 128) = &v10;
  *(a2 + 136) = v3;
  *(a2 + 144) = "builtin.distinct";
  *(a2 + 152) = 16;
  v5 = v15;
  if (v16)
  {
    v6 = 16 * v16;
    v7 = (v15 + 8);
    do
    {
      v8 = *v7;
      v7 += 2;
      free(v8);
      v6 -= 16;
    }

    while (v6);
    v5 = v15;
  }

  if (v5 != v17)
  {
    free(v5);
  }
}

uint64_t sub_1001003E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

void *sub_100100410(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return sub_100100444(a2, v5);
}

void *sub_100100444(uint64_t a1, uint64_t **a2)
{
  v6 = a1;
  if (*(a1 + 8))
  {
    v2 = **a2;
  }

  else
  {
    v2 = 0;
  }

  Context = mlir::Attribute::getContext(&v6);
  Storage = mlir::detail::DistinctAttributeUniquer::allocateStorage(Context, v2);
  if ((atomic_load_explicit(&qword_1002C0668, memory_order_acquire) & 1) == 0)
  {
    sub_10027B494();
  }

  *Storage = mlir::AbstractAttribute::lookup(qword_1002C0660, Context);
  return Storage;
}

uint64_t sub_1001004CC(uint64_t *a1, uint64_t *a2)
{
  if (mlir::NamedAttribute::operator<(a1, a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return mlir::NamedAttribute::operator<(a2, a1);
  }
}

unint64_t sub_100100514(_DWORD *a1, _DWORD *a2)
{
  if (a1 == a2)
  {
    v82 = 0;
  }

  else
  {
    v2 = 0xBF58476D1CE4E5B9 * ((a1[2] >> 4) ^ (a1[2] >> 9) | (((*a1 >> 4) ^ (*a1 >> 9)) << 32));
    v3 = (v2 >> 31) ^ v2;
    *&v89 = v3;
    if (a1 + 4 == a2)
    {
      v82 = 8;
    }

    else
    {
      v4 = 0xBF58476D1CE4E5B9 * ((a1[6] >> 4) ^ (a1[6] >> 9) | (((a1[4] >> 4) ^ (a1[4] >> 9)) << 32));
      v5 = (v4 >> 31) ^ v4;
      *(&v89 + 1) = v5;
      if (a1 + 8 == a2)
      {
        v82 = 16;
      }

      else
      {
        v6 = 0xBF58476D1CE4E5B9 * ((a1[10] >> 4) ^ (a1[10] >> 9) | (((a1[8] >> 4) ^ (a1[8] >> 9)) << 32));
        v7 = (v6 >> 31) ^ v6;
        *&v90 = v7;
        if (a1 + 12 == a2)
        {
          v82 = 24;
        }

        else
        {
          v8 = 0xBF58476D1CE4E5B9 * ((a1[14] >> 4) ^ (a1[14] >> 9) | (((a1[12] >> 4) ^ (a1[12] >> 9)) << 32));
          v9 = (v8 >> 31) ^ v8;
          *(&v90 + 1) = v9;
          if (a1 + 16 == a2)
          {
            v82 = 32;
          }

          else
          {
            v10 = 0xBF58476D1CE4E5B9 * ((a1[18] >> 4) ^ (a1[18] >> 9) | (((a1[16] >> 4) ^ (a1[16] >> 9)) << 32));
            v11 = (v10 >> 31) ^ v10;
            *&v91 = v11;
            if (a1 + 20 == a2)
            {
              v82 = 40;
            }

            else
            {
              v12 = 0xBF58476D1CE4E5B9 * ((a1[22] >> 4) ^ (a1[22] >> 9) | (((a1[20] >> 4) ^ (a1[20] >> 9)) << 32));
              v13 = (v12 >> 31) ^ v12;
              *(&v91 + 1) = v13;
              if (a1 + 24 == a2)
              {
                v82 = 48;
              }

              else
              {
                v14 = 0xBF58476D1CE4E5B9 * ((a1[26] >> 4) ^ (a1[26] >> 9) | (((a1[24] >> 4) ^ (a1[24] >> 9)) << 32));
                v15 = (v14 >> 31) ^ v14;
                *&v92 = v15;
                if (a1 + 28 == a2)
                {
                  v82 = 56;
                }

                else
                {
                  v16 = 0xBF58476D1CE4E5B9 * ((a1[30] >> 4) ^ (a1[30] >> 9) | (((a1[28] >> 4) ^ (a1[28] >> 9)) << 32));
                  v17 = (v16 >> 31) ^ v16;
                  *(&v92 + 1) = v17;
                  v18 = a1 + 32;
                  if (a1 + 32 != a2)
                  {
                    v88 = &v90;
                    v19 = v11 + 0x4BF62CB950C3753ALL;
                    *(&v21 + 1) = v13 + v15 + v11 + 0x4BF62CB950C3753ALL;
                    *&v21 = 0x4BF62CB800000000;
                    v20 = v21 >> 44;
                    v22 = *(&v21 + 1) + v17;
                    *(&v21 + 1) = v15 + 0x61299596E4;
                    *&v21 = 0xBEB4006000000000;
                    v23 = v13 - 0x4B6D499041670D8DLL * (v21 >> 42) - 0x7323D61940A0DA1FLL;
                    v24 = v20 + v19 + __ROR8__(v23 + v7 + v19 + v17, 21);
                    v25 = v3 + 0x298DF016A9F64655 + v5 + v7 + v9;
                    *(&v21 + 1) = v3 + 0x298DF016A9F64655 + v5 + v7;
                    *&v21 = 0x298DF00000000000;
                    v26 = (v21 >> 44) + v3 + 0x298DF016A9F64655;
                    *(&v21 + 1) = v5 + 0x1EACB4B2AELL;
                    *&v21 = 0x8C2DD9BE00000000;
                    v27 = (0xB492B66FBE98F273 * (v21 >> 37)) ^ 0xF7ACCA5326449396;
                    v28 = v26 + __ROR8__(v27 + v3 + 0x298DF016A9F64655 + v9 - 0xAE502812AB8D92, 21);
                    v29 = 0x544962662A7EE1A4;
                    v30 = 64;
                    while (1)
                    {
                      v40 = 0xBF58476D1CE4E5B9 * ((v18[2] >> 4) ^ (v18[2] >> 9) | (((*v18 >> 4) ^ (*v18 >> 9)) << 32));
                      *&v89 = (v40 >> 31) ^ v40;
                      v41 = v18 + 4;
                      v42 = v18 + 4 == a2;
                      if (v18 + 4 == a2)
                      {
                        v50 = 0;
                        v51 = &v89 + 8;
                        v52 = 8;
                      }

                      else
                      {
                        v43 = 0xBF58476D1CE4E5B9 * ((v18[6] >> 4) ^ (v18[6] >> 9) | (((v18[4] >> 4) ^ (v18[4] >> 9)) << 32));
                        *(&v89 + 1) = (v43 >> 31) ^ v43;
                        v41 = v18 + 8;
                        v42 = v18 + 8 == a2;
                        if (v18 + 8 == a2)
                        {
                          v50 = 8;
                          v51 = v88;
                          v52 = 16;
                        }

                        else
                        {
                          v44 = 0xBF58476D1CE4E5B9 * ((v18[10] >> 4) ^ (v18[10] >> 9) | (((v18[8] >> 4) ^ (v18[8] >> 9)) << 32));
                          *&v90 = (v44 >> 31) ^ v44;
                          v41 = v18 + 12;
                          v42 = v18 + 12 == a2;
                          if (v18 + 12 == a2)
                          {
                            v50 = 16;
                            v51 = &v90 + 8;
                            v52 = 24;
                          }

                          else
                          {
                            v45 = 0xBF58476D1CE4E5B9 * ((v18[14] >> 4) ^ (v18[14] >> 9) | (((v18[12] >> 4) ^ (v18[12] >> 9)) << 32));
                            *(&v90 + 1) = (v45 >> 31) ^ v45;
                            v41 = v18 + 16;
                            v42 = v18 + 16 == a2;
                            if (v18 + 16 == a2)
                            {
                              v50 = 24;
                              v51 = &v91;
                              v52 = 32;
                            }

                            else
                            {
                              v46 = 0xBF58476D1CE4E5B9 * ((v18[18] >> 4) ^ (v18[18] >> 9) | (((v18[16] >> 4) ^ (v18[16] >> 9)) << 32));
                              *&v91 = (v46 >> 31) ^ v46;
                              v41 = v18 + 20;
                              v42 = v18 + 20 == a2;
                              if (v18 + 20 == a2)
                              {
                                v50 = 32;
                                v51 = &v91 + 8;
                                v52 = 40;
                              }

                              else
                              {
                                v47 = 0xBF58476D1CE4E5B9 * ((v18[22] >> 4) ^ (v18[22] >> 9) | (((v18[20] >> 4) ^ (v18[20] >> 9)) << 32));
                                *(&v91 + 1) = (v47 >> 31) ^ v47;
                                v41 = v18 + 24;
                                v42 = v18 + 24 == a2;
                                if (v18 + 24 == a2)
                                {
                                  v50 = 40;
                                  v51 = &v92;
                                  v52 = 48;
                                }

                                else
                                {
                                  v48 = 0xBF58476D1CE4E5B9 * ((v18[26] >> 4) ^ (v18[26] >> 9) | (((v18[24] >> 4) ^ (v18[24] >> 9)) << 32));
                                  *&v92 = (v48 >> 31) ^ v48;
                                  v41 = v18 + 28;
                                  v42 = v18 + 28 == a2;
                                  if (v18 + 28 != a2)
                                  {
                                    v49 = 0xBF58476D1CE4E5B9 * ((v18[30] >> 4) ^ (v18[30] >> 9) | (((v18[28] >> 4) ^ (v18[28] >> 9)) << 32));
                                    v18 += 32;
                                    *(&v92 + 1) = (v49 >> 31) ^ v49;
                                    v42 = v18 == a2;
                                    v50 = 56;
                                    v51 = &v93;
                                    v52 = 64;
                                    goto LABEL_28;
                                  }

                                  v50 = 48;
                                  v51 = &v92 + 8;
                                  v52 = 56;
                                }
                              }
                            }
                          }
                        }
                      }

                      v18 = v41;
LABEL_28:
                      if ((v52 & 0x38) != 0)
                      {
                        v53 = 56 - v50;
                        v54 = v52;
                        if (v52 != 56 - v50)
                        {
                          do
                          {
                            v61 = v54;
                            v54 = v53;
                            v53 = v61 % v53;
                          }

                          while (v53);
                          v62 = (&v89 + v54);
                          do
                          {
                            v64 = *(v62 - 1);
                            v62 = (v62 - 1);
                            v63 = v64;
                            v65 = (v62 + v52);
                            v66 = v62;
                            do
                            {
                              v67 = v66;
                              v66 = v65;
                              *v67 = *v65;
                              v68 = v52 < &v93 - v65;
                              v69 = &v89 + v52 - (&v93 - v65);
                              v65 = (v65 + v52);
                              if (!v68)
                              {
                                v65 = v69;
                              }
                            }

                            while (v65 != v62);
                            *v66 = v63;
                          }

                          while (v62 != &v89);
                          goto LABEL_11;
                        }

                        v55 = v50 | 7;
                        if (55 - v50 < (v50 | 7uLL))
                        {
                          v55 = 55 - v50;
                        }

                        v56 = &v89;
                        if (&v89 < (&v89 | 9) + v50 + v55)
                        {
                          v57 = v52;
                          if (v51 < &v89 + v55 + 1)
                          {
                            goto LABEL_34;
                          }
                        }

                        if (v55 >= 0x1F)
                        {
                          v71 = v55 + 1;
                          v70 = (v55 + 1) & 0x60;
                          v72 = v89;
                          v73 = v90;
                          v74 = *(v51 + 1);
                          v89 = *(&v89 + v52);
                          v90 = v74;
                          *(&v89 + v52) = v72;
                          *(v51 + 1) = v73;
                          if (v70 != 32)
                          {
                            v75 = v91;
                            v76 = v92;
                            v77 = *(v51 + 3);
                            v91 = *(v51 + 2);
                            v92 = v77;
                            *(v51 + 2) = v75;
                            *(v51 + 3) = v76;
                          }

                          if (v71 == v70)
                          {
                            goto LABEL_11;
                          }

                          if ((v71 & 0x18) == 0)
                          {
                            v56 = &v89 + v70;
                            v57 = v52 + v70;
LABEL_34:
                            v58 = v56 + 1;
                            do
                            {
                              v59 = *(v58 - 1);
                              *(v58 - 1) = *(&v89 + v57);
                              *(&v89 + v57) = v59;
                              if (v58 == v51)
                              {
                                break;
                              }

                              ++v58;
                            }

                            while (v57++ != 63);
                            goto LABEL_11;
                          }
                        }

                        else
                        {
                          v70 = 0;
                        }

                        v78 = &v51[v70];
                        v79 = (&v89 + v70);
                        v80 = v55 - v70 + 1;
                        do
                        {
                          v81 = *v79;
                          *v79++ = *v78;
                          *v78 = v81;
                          v78 += 8;
                          v80 -= 8;
                        }

                        while (v80);
                      }

LABEL_11:
                      v31 = v23 + v25 + v29 + *(&v89 + 1);
                      v23 = *(&v91 + 1) + v25 - 0x4B6D499041670D8DLL * __ROR8__(v23 + v28 + v92, 42);
                      v32 = v27 + v22;
                      v33 = v89 - 0x4B6D499041670D8DLL * v28;
                      v34 = v22 + v33;
                      v35 = v33 + *(&v89 + 1) + v90;
                      v36 = __ROR8__(v35, 44) + v33;
                      v37 = __ROR8__(v32, 33);
                      v38 = (0xB492B66FBE98F273 * __ROR8__(v31, 37)) ^ v24;
                      v28 = v36 + __ROR8__(v38 + v34 + *(&v90 + 1), 21);
                      v29 = 0xB492B66FBE98F273 * v37;
                      v39 = 0xB492B66FBE98F273 * v37 + v24 + v91;
                      v25 = v35 + *(&v90 + 1);
                      v24 = __ROR8__(v23 + v90 + v39 + *(&v92 + 1), 21) + v39 + __ROR8__(*(&v91 + 1) + v92 + v39, 44);
                      v22 = *(&v91 + 1) + v92 + v39 + *(&v92 + 1);
                      v30 += v52;
                      v27 = v38;
                      if (v42)
                      {
                        v83 = 0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v25 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ v22)));
                        v84 = 0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v28 ^ v24)) >> 47) ^ (0x9DDFEA08EB382D69 * (v28 ^ v24)));
                        v85 = 0x9DDFEA08EB382D69 * (v84 ^ (v84 >> 47)) - 0x4B6D499041670D8DLL * ((v30 ^ (v30 >> 47)) + v37);
                        v86 = 0x9DDFEA08EB382D69 * (v85 ^ (v38 - 0x4B6D499041670D8DLL * (v23 ^ (v23 >> 47)) - 0x622015F714C7D297 * (v83 ^ (v83 >> 47))));
                        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v85 ^ (v86 >> 47) ^ v86)) ^ ((0x9DDFEA08EB382D69 * (v85 ^ (v86 >> 47) ^ v86)) >> 47));
                      }
                    }
                  }

                  v82 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  return sub_10002C4F4(&v89, v82, 0xFF51AFD7ED558CCDLL);
}

BOOL sub_100100E20(uint64_t ***a1, uint64_t a2)
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
  v5 = &v3[2 * v2];
  do
  {
    v6 = *v4;
    v7 = v4[1];
    v4 += 2;
    v8 = *v3;
    v9 = v3[1];
    v3 += 2;
    result = v8 == v6 && v9 == v7;
  }

  while (result && v3 != v5);
  return result;
}

void *sub_100100E78(uint64_t a1, unint64_t *a2)
{
  v2 = *(*a1 + 8);
  if (v2)
  {
    v3 = **a1;
    v4 = 16 * v2;
    a2[10] += 16 * v2;
    v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = v5 + 16 * v2;
    if (*a2)
    {
      v7 = v6 > a2[1];
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_10003A984(a2, 16 * v2, 16 * v2, 3);
      a2 = v18;
      v5 = v19;
      a1 = v17;
    }

    else
    {
      *a2 = v6;
    }

    v8 = v5;
    do
    {
      v9 = *v3++;
      *v8++ = v9;
      v4 -= 16;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  a2[10] += 24;
  v10 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10 + 3;
  if (*a2)
  {
    v12 = v11 > a2[1];
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v16 = a1;
    v10 = sub_10003A984(a2, 24, 24, 3);
    *v10 = 0;
    v10[1] = v5;
    v10[2] = v2;
    v13 = *(v16 + 8);
    v14 = *v13;
    if (!*v13)
    {
      return v10;
    }

    goto LABEL_16;
  }

  *a2 = v11;
  *v10 = 0;
  v10[1] = v5;
  v10[2] = v2;
  v13 = *(a1 + 8);
  v14 = *v13;
  if (*v13)
  {
LABEL_16:
    v14(*(v13 + 8), v10);
  }

  return v10;
}

BOOL sub_100100FC0(uint64_t ***a1, uint64_t a2)
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
  v5 = &v3[2 * v2];
  do
  {
    v6 = *v4;
    v7 = v4[1];
    v4 += 2;
    v8 = *v3;
    v9 = v3[1];
    v3 += 2;
    result = v8 == v6 && v9 == v7;
  }

  while (result && v3 != v5);
  return result;
}

void *sub_100101018(uint64_t a1, unint64_t *a2)
{
  v2 = *(*a1 + 8);
  if (v2)
  {
    v3 = **a1;
    v4 = 16 * v2;
    a2[10] += 16 * v2;
    v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = v5 + 16 * v2;
    if (*a2)
    {
      v7 = v6 > a2[1];
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_10003A984(a2, 16 * v2, 16 * v2, 3);
      a2 = v18;
      v5 = v19;
      a1 = v17;
    }

    else
    {
      *a2 = v6;
    }

    v8 = v5;
    do
    {
      v9 = *v3++;
      *v8++ = v9;
      v4 -= 16;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  a2[10] += 24;
  v10 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10 + 3;
  if (*a2)
  {
    v12 = v11 > a2[1];
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v16 = a1;
    v10 = sub_10003A984(a2, 24, 24, 3);
    *v10 = 0;
    v10[1] = v5;
    v10[2] = v2;
    v13 = *(v16 + 8);
    v14 = *v13;
    if (!*v13)
    {
      return v10;
    }

    goto LABEL_16;
  }

  *a2 = v11;
  *v10 = 0;
  v10[1] = v5;
  v10[2] = v2;
  v13 = *(a1 + 8);
  v14 = *v13;
  if (*v13)
  {
LABEL_16:
    v14(*(v13 + 8), v10);
  }

  return v10;
}

BOOL sub_100101160(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  if (v3 != *(*a1 + 8))
  {
    return 0;
  }

  if (v3 && (v4 = a2, v5 = memcmp(*(a2 + 16), *v2, v3), a2 = v4, v5))
  {
    return 0;
  }

  else
  {
    return *(a2 + 8) == *(v2 + 16);
  }
}

void *sub_1001011D0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100101220(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *sub_100101220(uint64_t *a1, void *a2)
{
  a1[10] += 40;
  v3 = *a1;
  v4 = a1[1];
  result = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = result + 5;
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
    v23 = a2;
    result = sub_10003A984(a1, 40, 40, 3);
    a2 = v23;
    v8 = v23[1];
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *a1 = v6;
    v8 = a2[1];
    if (v8)
    {
LABEL_6:
      v9 = *a2;
      v10 = v8 + 1;
      a1[10] += v8 + 1;
      v11 = *a1;
      if (*a1 && v10 + v11 <= a1[1])
      {
        *a1 = v10 + v11;
        if (v8 >= 8)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v24 = result;
        v25 = a1;
        v26 = a2;
        v27 = sub_10003A984(v25, v8 + 1, v10, 0);
        a2 = v26;
        v11 = v27;
        result = v24;
        if (v8 >= 8)
        {
LABEL_9:
          v12 = v11;
          v13 = v9;
          if ((v11 - v9) >= 0x20)
          {
            if (v8 < 0x20)
            {
              v14 = 0;
              goto LABEL_16;
            }

            v14 = v8 & 0xFFFFFFFFFFFFFFE0;
            v15 = (v9 + 16);
            v16 = (v11 + 16);
            v17 = v8 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v18 = *v15;
              *(v16 - 1) = *(v15 - 1);
              *v16 = v18;
              v15 += 2;
              v16 += 2;
              v17 -= 32;
            }

            while (v17);
            if (v8 == v14)
            {
              goto LABEL_26;
            }

            if ((v8 & 0x18) != 0)
            {
LABEL_16:
              v12 = (v11 + (v8 & 0xFFFFFFFFFFFFFFF8));
              v13 = (v9 + (v8 & 0xFFFFFFFFFFFFFFF8));
              v19 = (v9 + v14);
              v20 = (v11 + v14);
              v21 = v14 - (v8 & 0xFFFFFFFFFFFFFFF8);
              do
              {
                v22 = *v19++;
                *v20++ = v22;
                v21 += 8;
              }

              while (v21);
              if (v8 == (v8 & 0xFFFFFFFFFFFFFFF8))
              {
                goto LABEL_26;
              }

              goto LABEL_25;
            }

            v13 = (v9 + v14);
            v12 = (v11 + v14);
          }

          do
          {
LABEL_25:
            v28 = *v13++;
            *v12++ = v28;
          }

          while (v13 != (v9 + v8));
LABEL_26:
          *(v11 + v8) = 0;
          goto LABEL_27;
        }
      }

      v12 = v11;
      v13 = v9;
      goto LABEL_25;
    }
  }

  v11 = 0;
LABEL_27:
  v29 = a2[2];
  *result = 0;
  result[1] = v29;
  result[2] = v11;
  result[3] = v8;
  result[4] = 0;
  return result;
}

void sub_1001013D8(uint64_t *a1, mlir::detail::StringAttrStorage *a2)
{
  mlir::detail::AttributeUniquer::initializeAttributeStorage(a2, a1[1], *a1);
  v4 = a1[1];

  mlir::detail::StringAttrStorage::initialize(a2, v4);
}

BOOL sub_100101420(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  if (v3 != *(*a1 + 8))
  {
    return 0;
  }

  if (v3 && (v4 = a2, v5 = memcmp(*(a2 + 16), *v2, v3), a2 = v4, v5))
  {
    return 0;
  }

  else
  {
    return *(a2 + 8) == *(v2 + 16);
  }
}

void *sub_100101490(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100101220(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void sub_1001014E0(uint64_t *a1, mlir::detail::StringAttrStorage *a2)
{
  mlir::detail::AttributeUniquer::initializeAttributeStorage(a2, a1[1], *a1);
  v4 = a1[1];

  mlir::detail::StringAttrStorage::initialize(a2, v4);
}

BOOL sub_100101528(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  if (v3 != *(*a1 + 8))
  {
    return 0;
  }

  if (v3 && (v4 = a2, v5 = memcmp(*(a2 + 16), *v2, v3), a2 = v4, v5))
  {
    return 0;
  }

  else
  {
    return *(a2 + 8) == *(v2 + 16);
  }
}

void *sub_100101598(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100101220(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void sub_1001015E8(uint64_t *a1, mlir::detail::StringAttrStorage *a2)
{
  mlir::detail::AttributeUniquer::initializeAttributeStorage(a2, a1[1], *a1);
  v4 = a1[1];

  mlir::detail::StringAttrStorage::initialize(a2, v4);
}

uint64_t sub_100101630(uint64_t *a1, const llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v20[0] = a2;
  v20[1] = a3;
  v8 = *a5;
  v19 = *(a6 + 2);
  v9 = *a6;
  v17 = v8;
  v18 = v9;
  *(a6 + 2) = 0;
  v10 = (v8 >> 4) ^ (v8 >> 9);
  v11 = llvm::hash_value(&v18, a2);
  v12 = __ROR8__(v11 + 16, 16);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ 0xFF51AFD7ED558CCDLL ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ 0xFF51AFD7ED558CCDLL ^ v10)));
  v15[0] = &v17;
  v15[1] = v20;
  v16 = &v17;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v13 >> 47) ^ v13)) ^ v11, sub_100101760, &v16, sub_1001017A8, v15);
  if (v19 >= 0x41)
  {
    if (v18)
    {
      operator delete[]();
    }
  }

  return result;
}

BOOL sub_100101760(const void ***a1, uint64_t a2)
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

unint64_t sub_1001017A8(uint64_t **a1, void *a2)
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

uint64_t sub_100101884(uint64_t a1, _DWORD *a2)
{
  v4 = (*(*a1 + 40))(a1);
  v16[0] = a1;
  v5 = sub_100101A64(a1, a2, v16);
  if ((v5 & 0x100) == 0)
  {
    v14 = "expected integer value";
    v15 = 259;
    (*(*a1 + 24))(v16, a1, v4, &v14);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
    if (v16[0])
    {
      mlir::InFlightDiagnostic::report(v16);
    }

    if (v24 == 1)
    {
      if (v23 != &v24)
      {
        free(v23);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v22;
        v8 = __p;
        if (v22 != __p)
        {
          do
          {
            v7 = sub_100052FFC(v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v22 = v6;
        operator delete(v8);
      }

      v9 = v19;
      if (v19)
      {
        v10 = v20;
        v11 = v19;
        if (v20 != v19)
        {
          do
          {
            v12 = *--v10;
            *v10 = 0;
            if (v12)
            {
              operator delete[]();
            }
          }

          while (v10 != v9);
          v11 = v19;
        }

        v20 = v9;
        operator delete(v11);
      }

      if (v17 != &v18)
      {
        free(v17);
      }
    }
  }

  return v5;
}

uint64_t sub_100101A64(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1);
  v27 = 1;
  v26 = 0;
  v7 = (*(**a3 + 376))();
  if ((v7 & (v7 >> 8) & 1) == 0)
  {
    v12 = BYTE1(v7);
    return v7 | (v12 << 8);
  }

  llvm::APInt::sextOrTrunc(&v26, 0x20u, &v28);
  v8 = v29;
  if (v29 < 0x41)
  {
    v9 = v28;
    *a2 = v28;
    v10 = v27;
    v11 = v9;
    v29 = v27;
    if (v27 > 0x40)
    {
LABEL_15:
      llvm::APInt::initSlowCase(&v28);
    }

    goto LABEL_10;
  }

  v13 = v8 - llvm::APInt::countLeadingZerosSlowCase(&v28);
  v14 = v28;
  if (v13 <= 0x40)
  {
    *a2 = *v28;
LABEL_14:
    operator delete[]();
  }

  *a2 = -1;
  if (v14)
  {
    goto LABEL_14;
  }

  v10 = v27;
  v11 = -1;
  v29 = v27;
  if (v27 > 0x40)
  {
    goto LABEL_15;
  }

LABEL_10:
  v15 = 0xFFFFFFFFFFFFFFFFLL >> -v10;
  if (!v10)
  {
    v15 = 0;
  }

  v28 = (v15 & v11);
  if (v28 == v26)
  {
    LOBYTE(v7) = 1;
    v12 = 1;
  }

  else
  {
    v24 = "integer value too large";
    v25 = 259;
    (*(*a1 + 24))(&v28, a1, v6, &v24);
    if (v28)
    {
      mlir::InFlightDiagnostic::report(&v28);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v35;
        v18 = __p;
        if (v35 != __p)
        {
          do
          {
            v17 = sub_100052FFC(v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v35 = v16;
        operator delete(v18);
      }

      v19 = v32;
      if (v32)
      {
        v20 = v33;
        v21 = v32;
        if (v33 != v32)
        {
          do
          {
            v22 = *--v20;
            *v20 = 0;
            if (v22)
            {
              operator delete[]();
            }
          }

          while (v20 != v19);
          v21 = v32;
        }

        v33 = v19;
        operator delete(v21);
      }

      if (v30 != &v31)
      {
        free(v30);
      }
    }

    LOBYTE(v7) = 0;
    v12 = 1;
    if (v27 >= 0x41 && v26)
    {
      operator delete[]();
    }
  }

  return v7 | (v12 << 8);
}

void sub_100101E00(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v15);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v4 + 16;
    v8 = v5 + 6;
    v9 = 32 * v6;
    do
    {
      *(v7 - 2) = *(v8 - 4);
      *(v7 - 2) = *(v8 - 3);
      *(v8 - 4) = 0;
      *(v7 + 2) = *v8;
      *v7 = *(v8 - 1);
      v7 += 32;
      *v8 = 0;
      v8 += 8;
      v9 -= 32;
    }

    while (v9);
    v5 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = 8 * v10;
      v12 = -(v11 * 4);
      v13 = &v5[v11 - 4];
      do
      {
        if (*(v13 + 8) >= 0x41u && *v13)
        {
          operator delete[]();
        }

        if (*(v13 - 8) >= 0x41u && *(v13 - 16))
        {
          operator delete[]();
        }

        v13 -= 32;
        v12 += 32;
      }

      while (v12);
      v5 = *a1;
    }
  }

  v14 = v15;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v14;
}

void sub_100101F34(_DWORD *a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 4;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, a2, 48, &v6);
  sub_100101FAC(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  a1[3] = v5;
}

void sub_100101FAC(llvm::APFloatBase *a1, __n128 *a2)
{
  v2 = *(a1 + 2);
  if (!v2)
  {
    return;
  }

  v5 = *a1;
  v6 = *a1 + 48 * v2;
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  do
  {
    while (v7 == v5->n128_u64[0])
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(a2, v5);
      v8 = (v5 + 24);
      v9 = (a2 + 24);
      if (v7 != v5[1].n128_u64[1])
      {
        goto LABEL_8;
      }

LABEL_3:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, v8);
      a2 += 3;
      v5 += 3;
      if (v5 == v6)
      {
        goto LABEL_9;
      }
    }

    llvm::detail::IEEEFloat::IEEEFloat(a2, v5);
    v8 = (v5 + 24);
    v9 = (a2 + 24);
    if (v7 == v5[1].n128_u64[1])
    {
      goto LABEL_3;
    }

LABEL_8:
    llvm::detail::IEEEFloat::IEEEFloat(v9, v8);
    a2 += 3;
    v5 += 3;
  }

  while (v5 != v6);
LABEL_9:
  v10 = *(a1 + 2);
  if (v10)
  {
    v11 = (*a1 + 48 * v10 - 24);
    v12 = -48 * v10;
    while (1)
    {
      v13 = (v11 - 24);
      if (v7 == *v11)
      {
        sub_100029F40(v11);
        v14 = (v11 - 24);
        if (v7 != *v13)
        {
          goto LABEL_16;
        }

LABEL_11:
        sub_100029F40(v14);
        v11 = (v11 - 48);
        v12 += 48;
        if (!v12)
        {
          return;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v11);
        v14 = (v11 - 24);
        if (v7 == *v13)
        {
          goto LABEL_11;
        }

LABEL_16:
        llvm::detail::IEEEFloat::~IEEEFloat(v14);
        v11 = (v11 - 48);
        v12 += 48;
        if (!v12)
        {
          return;
        }
      }
    }
  }
}

uint64_t sub_1001020F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  *&v27 = result;
  *(&v27 + 1) = a2;
  if (!a4)
  {
    *a6 = result;
    *(a6 + 8) = a2;
    *(a6 + 24) = 0;
    *(a6 + 32) = 0;
    *(a6 + 16) = a3;
    goto LABEL_9;
  }

  __src[0] = mlir::ShapedType::getElementType(&v27);
  result = mlir::Type::isInteger(__src, 1);
  v10 = result;
  if (!a5)
  {
    Shape = mlir::ShapedType::getShape(&v27);
    NumElements = mlir::ShapedType::getNumElements(Shape, v17);
    if (v10)
    {
      return sub_100102374(v27, *(&v27 + 1), a3, a4, NumElements, a6);
    }

    ElementType = mlir::ShapedType::getElementType(&v27);
    v20 = sub_1000D2BA4(ElementType);
    if (v20)
    {
      v21 = ((v20 - (v20 != 0)) >> 3) + 1;
    }

    else
    {
      v21 = (v20 - (v20 != 0)) >> 3;
    }

    if (a4 >= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = a4;
    }

    result = sub_10002C76C(a3, &a3[v22]);
    v23 = result;
    if (v21 == a4)
    {
LABEL_23:
      *a6 = v27;
      *(a6 + 16) = a3;
      *(a6 + 24) = v22;
      *(a6 + 32) = v23;
      goto LABEL_24;
    }

    v24 = &a3[v21];
    v25 = v21;
    while (1)
    {
      result = memcmp(a3, v24, v21);
      if (result)
      {
        break;
      }

      v25 += v21;
      v24 += v21;
      if (v25 == a4)
      {
        goto LABEL_23;
      }
    }

    v26 = v27;
    memset(v30, 0, sizeof(v30));
    memset(v29, 0, sizeof(v29));
    v31 = 0;
    v32 = 0xFF51AFD7ED558CCDLL;
    __src[0] = v23;
    __src[1] = sub_10002C76C(v24, &a3[a4]);
    result = sub_10002C12C(__src, 0, v29, v30);
    *a6 = v26;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = result;
LABEL_9:
    *(a6 + 40) = 0;
    return result;
  }

  v11 = v27;
  if (!result)
  {
    result = sub_10002C76C(a3, &a3[a4]);
    *a6 = v11;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = result;
LABEL_24:
    *(a6 + 40) = 1;
    return result;
  }

  if (*a3)
  {
    v12 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatTrue;
  }

  else
  {
    v12 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatFalse;
  }

  v13 = *v12;
  v14 = HIDWORD(v13);
  v15 = 0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13));
  *a6 = v27;
  *(a6 + 8) = *(&v11 + 1);
  *(a6 + 16) = v12;
  *(a6 + 24) = 1;
  *(a6 + 32) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  *(a6 + 40) = 1;
  return result;
}

uint64_t sub_100102374@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatTrue;
  if ((v6 & 1) == 0)
  {
    v7 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatFalse;
  }

  if (a4 == 1)
  {
    LODWORD(v8) = *v7;
    if (v6 == v8)
    {
      v8 = v8;
LABEL_19:
      v16 = HIDWORD(v8);
      v17 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
      v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
      v11 = 1;
      v13 = 1;
      goto LABEL_21;
    }
  }

  v9 = &a3[a4];
  if ((a5 & 7) == 0 || (v6 & 1) == 0)
  {
    v10 = &a3[a4];
    if (!a4)
    {
LABEL_18:
      v8 = *v7;
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  v10 = (v9 - 1);
  if (0xFFu >> (8 - (a5 & 7)) != *(v9 - 1))
  {
LABEL_20:
    v18 = result;
    v19 = a2;
    v20 = a6;
    v23 = sub_10002C76C(a3, &a3[a4]);
    v7 = a3;
    v11 = a4;
    a2 = v19;
    a6 = v20;
    v12 = v23;
    result = v18;
    v13 = 0;
    goto LABEL_21;
  }

  if (a4 != 1)
  {
LABEL_12:
    if (v6)
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    v15 = a3;
    while (*v15 == v14)
    {
      if (++v15 == v10)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_20;
  }

  v11 = 1;
  v12 = 0xE58356463FB8AC99;
  v13 = 1;
  v7 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatTrue;
LABEL_21:
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v11;
  *(a6 + 32) = v12;
  *(a6 + 40) = v13;
  return result;
}

BOOL sub_100102504(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (**a1 == *(a2 + 8) && (v3 = v2[3], v3 == *(a2 + 40)))
  {
    return memcmp(v2[2], *(a2 + 32), v3) == 0;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10010255C(__int128 **a1, uint64_t *a2)
{
  v4 = **a1;
  v5 = *(*a1 + 3);
  v6 = *(*a1 + 40);
  if (v5)
  {
    v16 = **a1;
    v7 = *(*a1 + 2);
    a2[10] += v5;
    if (*a2 && (v8 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8), &v8[v5] <= a2[1]))
    {
      *a2 = &v8[v5];
    }

    else
    {
      v14 = v7;
      v15 = sub_10003A984(a2, v5, v5, 3);
      v7 = v14;
      v8 = v15;
    }

    memcpy(v8, v7, v5);
    v4 = v16;
    a2[10] += 48;
    v9 = *a2;
    if (!*a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
    a2[10] += 48;
    v9 = *a2;
    if (!*a2)
    {
      goto LABEL_13;
    }
  }

  v10 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v10 + 48 <= a2[1])
  {
    *a2 = v10 + 48;
    goto LABEL_10;
  }

LABEL_13:
  v17 = v4;
  v13 = sub_10003A984(a2, 48, 48, 3);
  v4 = v17;
  v10 = v13;
LABEL_10:
  *v10 = 0;
  *(v10 + 8) = v4;
  *(v10 + 24) = v6;
  *(v10 + 32) = v8;
  *(v10 + 40) = v5;
  v11 = a1[1];
  if (*v11)
  {
    (*v11)(*(v11 + 1), v10);
  }

  return v10;
}

unint64_t sub_1001026F4(__int128 **a1, void *a2)
{
  v2 = **a1;
  v9 = (*a1)[1];
  v10 = *(*a1 + 4);
  a2[10] += 48;
  if (*a2 && (v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, v3 + 48 <= a2[1]))
  {
    *a2 = v3 + 48;
  }

  else
  {
    v6 = a1;
    v8 = v2;
    v7 = sub_10003A984(a2, 48, 48, 3);
    v2 = v8;
    v3 = v7;
    a1 = v6;
  }

  *v3 = 0;
  *(v3 + 8) = v2;
  *(v3 + 24) = v9;
  *(v3 + 40) = v10;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t sub_1001027CC()
{
  {
    sub_10027D210();
  }

  return llvm::getTypeName<mlir::ResourceBlobManagerDialectInterface>(void)::Name;
}

const char *sub_100102814()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ResourceBlobManagerDialectInterface]";
  v6 = 103;
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

void sub_100102894(pthread_rwlock_t **a1@<X0>, uint64_t a2@<X1>, int8x16_t *a3@<X2>, unint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X8>)
{
  LOBYTE(v18) = 0;
  v24 = 0;
  if (*(a5 + 64) == 1)
  {
    v18 = *a5;
    v10 = *(a5 + 6);
    v19 = *(a5 + 2);
    v22 = v10;
    if (v10 >= 8)
    {
      if ((v10 & 2) != 0 && (v10 & 4) != 0)
      {
        v11 = a1;
        v12 = a5;
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 8))(&v20, a5 + 24);
        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 16))(v12 + 24);
        a5 = v12;
        a1 = v11;
      }

      else
      {
        v20 = *(a5 + 24);
        v21 = *(a5 + 5);
      }

      *(a5 + 6) = 0;
    }

    v23 = *(a5 + 56);
    v24 = 1;
  }

  v13 = mlir::DialectResourceBlobManager::insert(a1, a3, a4, &v18);
  if (v24 == 1 && v22 >= 8)
  {
    v14 = (v22 & 2) != 0 ? &v20 : v20;
    (*(v22 & 0xFFFFFFFFFFFFFFF8))(v14, v18, *(&v18 + 1), v19);
    v15 = v22;
    if (v22 >= 8)
    {
      if ((v22 & 4) != 0)
      {
        if ((v22 & 2) != 0)
        {
          v16 = &v20;
        }

        else
        {
          v16 = v20;
        }

        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 16))(v16);
      }

      if ((v15 & 2) == 0)
      {
        llvm::deallocate_buffer(v20, *(&v20 + 1), v21);
      }
    }
  }

  {
    sub_100278F00();
  }

  v17 = mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id;
  *a6 = v13;
  a6[1] = v17;
  a6[2] = a2;
}

void mlir::BuiltinDialect::BuiltinDialect(mlir::BuiltinDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "builtin", 7, a2, &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id);
  *v2 = off_1002B7160;
  mlir::BuiltinDialect::initialize(v2);
}

void mlir::BuiltinDialect::~BuiltinDialect(llvm **this)
{
  mlir::Dialect::~Dialect(this);

  operator delete();
}

void mlir::ModuleOp::create(uint64_t a1, __int128 *a2)
{
  v4 = a1;
  v3[0] = mlir::Attribute::getContext(&v4);
  memset(&v3[1], 0, 24);
  sub_100102E0C(v3, v4, a2);
}

void sub_100102E0C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v9 = a2;
  Context = mlir::Attribute::getContext(&v9);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id, Context);
  if (v8)
  {
    mlir::OperationState::OperationState(v13, a2, v7);
    v11 = *a3;
    v12 = *(a3 + 2);
    mlir::ModuleOp::build(a1, v13);
  }

  sub_1002799EC(v13, &v11, v10);
}

BOOL mlir::ModuleOp::verify(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    for (i = 16 * v3; i; i -= 16)
    {
      v57 = *v4;
      AttrDictionary = mlir::NamedAttribute::getName(&v57);
      v7 = mlir::StringAttr::getValue(&AttrDictionary);
      if (!v8 || (v9 = v7, (v10 = memchr(v7, 46, v8)) == 0) || v10 - v9 == -1)
      {
        Name = mlir::NamedAttribute::getName(&v57);
        v11 = mlir::StringAttr::getValue(&Name);
        if (v12 == 14)
        {
          if (*v11 != 0x697369765F6D7973 || *(v11 + 6) != 0x7974696C69626973)
          {
LABEL_15:
            v56 = 257;
            mlir::OpState::emitOpError(this, &v55, &AttrDictionary);
            if (AttrDictionary)
            {
              LODWORD(Name) = 3;
              v60 = "can only contain attributes with dialect-prefixed names, found: '";
              v61 = 65;
              p_Name = &Name;
              v14 = v74;
              if (v75 >= v76)
              {
                if (v74 <= &Name && v74 + 24 * v75 > &Name)
                {
                  v50 = &Name - v74;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                  v14 = v74;
                  p_Name = (v74 + v50);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                  p_Name = &Name;
                  v14 = v74;
                }
              }

              v15 = &v14[24 * v75];
              v16 = *p_Name;
              *(v15 + 2) = p_Name[2];
              *v15 = v16;
              ++v75;
            }

            v54 = mlir::NamedAttribute::getName(&v57);
            v17 = mlir::StringAttr::getValue(&v54);
            if (AttrDictionary)
            {
              LOWORD(v63) = 261;
              Name = v17;
              v60 = v18;
              mlir::Diagnostic::operator<<(v73, &Name);
              if (AttrDictionary)
              {
                LODWORD(Name) = 3;
                v60 = "'";
                v61 = 1;
                v19 = &Name;
                v20 = v74;
                if (v75 >= v76)
                {
                  if (v74 <= &Name && v74 + 24 * v75 > &Name)
                  {
                    v51 = &Name - v74;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                    v20 = v74;
                    v19 = (v74 + v51);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                    v19 = &Name;
                    v20 = v74;
                  }
                }

                v21 = &v20[24 * v75];
                v22 = *v19;
                *(v21 + 2) = v19[2];
                *v21 = v22;
                ++v75;
              }
            }

            v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
            if (AttrDictionary)
            {
              mlir::InFlightDiagnostic::report(&AttrDictionary);
            }

            if (v83 == 1)
            {
              if (v82 != &v83)
              {
                free(v82);
              }

              v24 = __p;
              if (__p)
              {
                v25 = v81;
                v26 = __p;
                if (v81 != __p)
                {
                  do
                  {
                    v25 = sub_100052FFC(v25 - 1);
                  }

                  while (v25 != v24);
                  v26 = __p;
                }

                v81 = v24;
                operator delete(v26);
              }

              v27 = v78;
              if (v78)
              {
                v28 = v79;
                v29 = v78;
                if (v79 != v78)
                {
                  do
                  {
                    v30 = *--v28;
                    *v28 = 0;
                    if (v30)
                    {
                      operator delete[]();
                    }
                  }

                  while (v28 != v27);
                  v29 = v78;
                }

                v79 = v27;
                operator delete(v29);
              }

              if (v74 != v77)
              {
                free(v74);
              }
            }

            return v23;
          }
        }

        else if (v12 != 8 || *v11 != 0x656D616E5F6D7973)
        {
          goto LABEL_15;
        }
      }

      ++v4;
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v31 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v32)
  {
    v33 = v31;
    v34 = 0;
    v53 = (v31 + 16 * v32);
    do
    {
      v35 = sub_100106084(*(v33 + 1));
      if (v35)
      {
        v36 = v35;
        if (v34)
        {
          v56 = 257;
          mlir::OpState::emitOpError(this, &v55, &Name);
          if (Name)
          {
            LODWORD(v57) = 3;
            *(&v57 + 1) = "expects at most one data layout attribute";
            v58 = 41;
            v37 = v62;
            if (v63 >= v64)
            {
              if (v62 <= &v57 && v62 + 24 * v63 > &v57)
              {
                v48 = &v57 - v62;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
                v37 = v62;
                v38 = v62 + v48;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
                v38 = &v57;
                v37 = v62;
              }
            }

            else
            {
              v38 = &v57;
            }

            v39 = &v37[24 * v63];
            v40 = *v38;
            *(v39 + 2) = *(v38 + 2);
            *v39 = v40;
            ++v63;
          }

          sub_100062C04(&AttrDictionary, &Name);
          if (Name)
          {
            mlir::InFlightDiagnostic::report(&Name);
          }

          if (v71 == 1)
          {
            if (v70 != &v71)
            {
              free(v70);
            }

            v41 = v68;
            if (v68)
            {
              v42 = v69;
              v43 = v68;
              if (v69 != v68)
              {
                do
                {
                  v42 = sub_100052FFC(v42 - 1);
                }

                while (v42 != v41);
                v43 = v68;
              }

              v69 = v41;
              operator delete(v43);
            }

            v44 = v66;
            if (v66)
            {
              v45 = v67;
              v46 = v66;
              if (v67 != v66)
              {
                do
                {
                  v47 = *--v45;
                  *v45 = 0;
                  if (v47)
                  {
                    operator delete[]();
                  }
                }

                while (v45 != v44);
                v46 = v66;
              }

              v67 = v44;
              operator delete(v46);
            }

            if (v62 != v65)
            {
              free(v62);
            }
          }

          mlir::Diagnostic::attachNote(v73, v1 & 0xFFFFFFFFFFFFFF00, 0);
        }

        AttrDictionary = mlir::NamedAttribute::getName(v33);
        mlir::StringAttr::getValue(&AttrDictionary);
        v34 = v36;
      }

      v33 = (v33 + 16);
    }

    while (v33 != v53);
  }

  return 1;
}

BOOL mlir::UnrealizedConversionCastOp::verify(mlir::Operation **this)
{
  if (*(*this + 9))
  {
    return 1;
  }

  v16 = 257;
  mlir::OpState::emitOpError(this, &v15, v20);
  if (v20[0])
  {
    v17 = 3;
    v18 = "expected at least one result for cast operation";
    v19 = 47;
    v2 = &v17;
    v3 = v21;
    if (v22 >= v23)
    {
      if (v21 <= &v17 && v21 + 24 * v22 > &v17)
      {
        v14 = &v17 - v21;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v24, v22 + 1, 24);
        v3 = v21;
        v2 = (v21 + v14);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v24, v22 + 1, 24);
        v2 = &v17;
        v3 = v21;
      }
    }

    v4 = &v3[24 * v22];
    v5 = *v2;
    *(v4 + 2) = *(v2 + 2);
    *v4 = v5;
    ++v22;
  }

  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v28;
      v8 = __p;
      if (v28 != __p)
      {
        do
        {
          v7 = sub_100052FFC(v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v28 = v6;
      operator delete(v8);
    }

    v9 = v25;
    if (v25)
    {
      v10 = v26;
      v11 = v25;
      if (v26 != v25)
      {
        do
        {
          v12 = *--v10;
          *v10 = 0;
          if (v12)
          {
            operator delete[]();
          }
        }

        while (v10 != v9);
        v11 = v25;
      }

      v26 = v9;
      operator delete(v11);
    }

    if (v21 != v24)
    {
      free(v21);
    }
  }

  return v1;
}

uint64_t mlir::ModuleOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v55 = v6;
  if (!v6)
  {
    a3(v59, a4);
    if (v59[0])
    {
      v56 = 3;
      v57 = "expected DictionaryAttr to set properties";
      v58 = 41;
      v25 = &v56;
      v26 = v60;
      if (v61 >= v62)
      {
        if (v60 <= &v56 && v60 + 24 * v61 > &v56)
        {
          v50 = &v56 - v60;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
          v26 = v60;
          v25 = (v60 + v50);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
          v25 = &v56;
          v26 = v60;
        }
      }

      v27 = &v26[24 * v61];
      v28 = *v25;
      *(v27 + 2) = *(v25 + 2);
      *v27 = v28;
      ++v61;
      if (v59[0])
      {
        mlir::InFlightDiagnostic::report(v59);
      }
    }

    if (v69 != 1)
    {
      return 0;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v67;
      v31 = __p;
      if (v67 != __p)
      {
        do
        {
          v30 = sub_100052FFC(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v67 = v29;
      operator delete(v31);
    }

    v21 = v64;
    if (!v64)
    {
      goto LABEL_70;
    }

    v32 = v65;
    v23 = v64;
    if (v65 == v64)
    {
      goto LABEL_69;
    }

    do
    {
      v33 = *--v32;
      *v32 = 0;
      if (v33)
      {
        operator delete[]();
      }
    }

    while (v32 != v21);
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v55, "sym_name", 8uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v9 = v8;
      a3(v59, a4);
      if (v59[0])
      {
        v56 = 3;
        v58 = 53;
        v10 = &v56;
        v11 = v60;
        if (v61 >= v62)
        {
          if (v60 <= &v56 && v60 + 24 * v61 > &v56)
          {
            v51 = &v56 - v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
            v11 = v60;
            v10 = (v60 + v51);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
            v10 = &v56;
            v11 = v60;
          }
        }

        v12 = &v11[24 * v61];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v61;
        if (v59[0])
        {
          v14 = &v56;
          mlir::DiagnosticArgument::DiagnosticArgument(&v56, v9);
          v15 = v60;
          if (v61 >= v62)
          {
            if (v60 <= &v56 && v60 + 24 * v61 > &v56)
            {
              v52 = &v56 - v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
              v15 = v60;
              v14 = (v60 + v52);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
              v14 = &v56;
              v15 = v60;
            }
          }

          v16 = &v15[24 * v61];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v61;
          if (v59[0])
          {
            mlir::InFlightDiagnostic::report(v59);
          }
        }
      }

      if ((v69 & 1) == 0)
      {
        return 0;
      }

      if (v68 != &v69)
      {
        free(v68);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v67;
        v20 = __p;
        if (v67 != __p)
        {
          do
          {
            v19 = sub_100052FFC(v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v67 = v18;
        operator delete(v20);
      }

      v21 = v64;
      if (!v64)
      {
        goto LABEL_70;
      }

      v22 = v65;
      v23 = v64;
      if (v65 == v64)
      {
        goto LABEL_69;
      }

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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v34 = mlir::DictionaryAttr::get(&v55, "sym_visibility", 0xEuLL);
  if (!v34)
  {
    return 1;
  }

  if (*(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[1] = v34;
    return 1;
  }

  v35 = v34;
  a3(v59, a4);
  if (v59[0])
  {
    v56 = 3;
    v58 = 59;
    v36 = &v56;
    v37 = v60;
    if (v61 >= v62)
    {
      if (v60 <= &v56 && v60 + 24 * v61 > &v56)
      {
        v53 = &v56 - v60;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
        v37 = v60;
        v36 = (v60 + v53);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
        v36 = &v56;
        v37 = v60;
      }
    }

    v38 = &v37[24 * v61];
    v39 = *v36;
    *(v38 + 2) = *(v36 + 2);
    *v38 = v39;
    ++v61;
    if (v59[0])
    {
      v40 = &v56;
      mlir::DiagnosticArgument::DiagnosticArgument(&v56, v35);
      v41 = v60;
      if (v61 >= v62)
      {
        if (v60 <= &v56 && v60 + 24 * v61 > &v56)
        {
          v54 = &v56 - v60;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
          v41 = v60;
          v40 = (v60 + v54);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
          v40 = &v56;
          v41 = v60;
        }
      }

      v42 = &v41[24 * v61];
      v43 = *v40;
      *(v42 + 2) = *(v40 + 2);
      *v42 = v43;
      ++v61;
      if (v59[0])
      {
        mlir::InFlightDiagnostic::report(v59);
      }
    }
  }

  if (v69)
  {
    if (v68 != &v69)
    {
      free(v68);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v67;
      v46 = __p;
      if (v67 != __p)
      {
        do
        {
          v45 = sub_100052FFC(v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v67 = v44;
      operator delete(v46);
    }

    v21 = v64;
    if (!v64)
    {
      goto LABEL_70;
    }

    v47 = v65;
    v23 = v64;
    if (v65 == v64)
    {
LABEL_69:
      v65 = v21;
      operator delete(v23);
LABEL_70:
      if (v60 != v63)
      {
        free(v60);
      }

      return 0;
    }

    do
    {
      v48 = *--v47;
      *v47 = 0;
      if (v48)
      {
        operator delete[]();
      }
    }

    while (v47 != v21);
LABEL_68:
    v23 = v64;
    goto LABEL_69;
  }

  return 0;
}

uint64_t mlir::ModuleOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "sym_name", 8, *a2);
    v5 = v22;
    if (v22 >= HIDWORD(v22))
    {
      v16 = NamedAttr;
      v17 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
      v4 = v17;
      NamedAttr = v16;
      v5 = v22;
    }

    v6 = (v21 + 16 * v5);
    *v6 = NamedAttr;
    v6[1] = v4;
    v7 = v22 + 1;
    LODWORD(v22) = v22 + 1;
    v8 = a2[1];
    if (!v8)
    {
LABEL_5:
      v9 = v21;
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_13:
      DictionaryAttr = 0;
      if (v9 == v23)
      {
        return DictionaryAttr;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v12 = mlir::Builder::getNamedAttr(&v20, "sym_visibility", 0xE, v8);
  v14 = v22;
  if (v22 >= HIDWORD(v22))
  {
    v18 = v12;
    v19 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
    v13 = v19;
    v12 = v18;
    v14 = v22;
  }

  v15 = (v21 + 16 * v14);
  *v15 = v12;
  v15[1] = v13;
  v7 = v22 + 1;
  LODWORD(v22) = v7;
  v9 = v21;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v20, v9, v7);
  v9 = v21;
  if (v21 != v23)
  {
LABEL_7:
    free(v9);
  }

  return DictionaryAttr;
}

uint64_t sub_10010451C(uint64_t a1, void **a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return 1;
  }

  a4(&v30, a5);
  if (v30)
  {
    LODWORD(v26) = 3;
    v27 = "attribute '";
    v28 = 11;
    v7 = &v26;
    v8 = v32;
    if (v33 >= v34)
    {
      if (v32 <= &v26 && v32 + 24 * v33 > &v26)
      {
        v24 = &v26 - v32;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v8 = v32;
        v7 = (v32 + v24);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v7 = &v26;
        v8 = v32;
      }
    }

    v9 = &v8[24 * v33];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v33;
    if (v30)
    {
      v29 = 261;
      v26 = a2;
      v27 = a3;
      mlir::Diagnostic::operator<<(&v31, &v26);
      if (v30)
      {
        LODWORD(v26) = 3;
        v27 = "' failed to satisfy constraint: string attribute";
        v28 = 48;
        v11 = &v26;
        v12 = v32;
        if (v33 >= v34)
        {
          if (v32 <= &v26 && v32 + 24 * v33 > &v26)
          {
            v25 = &v26 - v32;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
            v12 = v32;
            v11 = (v32 + v25);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
            v11 = &v26;
            v12 = v32;
          }
        }

        v13 = &v12[24 * v33];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v33;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
  if (v30)
  {
    mlir::InFlightDiagnostic::report(&v30);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v39;
      v18 = __p;
      if (v39 != __p)
      {
        do
        {
          v17 = sub_100052FFC(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v39 = v16;
      operator delete(v18);
    }

    v19 = v36;
    if (v36)
    {
      v20 = v37;
      v21 = v36;
      if (v37 != v36)
      {
        do
        {
          v22 = *--v20;
          *v20 = 0;
          if (v22)
          {
            operator delete[]();
          }
        }

        while (v20 != v19);
        v21 = v36;
      }

      v37 = v19;
      operator delete(v21);
    }

    if (v32 != v35)
    {
      free(v32);
    }
  }

  return v15;
}

BOOL mlir::ModuleOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return sub_10010494C(a1, *(a2 + 256)) && sub_10010494C(a1, (v3 + 8));
}

BOOL sub_10010494C(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  if (((*(*a1 + 56))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
  if (!v31)
  {
    return 1;
  }

  v5 = *(*v31 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return 1;
  }

  v30[16] = 257;
  (*(*a1 + 16))(&v36, a1, v30);
  if (v36)
  {
    LODWORD(v32) = 3;
    v33 = "expected ";
    v34 = 9;
    v6 = &v32;
    v7 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v27 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v7 = v38;
        v6 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v6 = &v32;
        v7 = v38;
      }
    }

    v8 = &v7[24 * v39];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v39;
  }

  {
    if (v36)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_10027DD64();
    if (v36)
    {
LABEL_11:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::StringAttr>(void)::Name;
      v33 = *algn_1002C2D98;
      mlir::Diagnostic::operator<<(&v37, &v32);
      if (v36)
      {
        LODWORD(v32) = 3;
        v33 = ", but got: ";
        v34 = 11;
        v10 = &v32;
        v11 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v32 && v38 + 24 * v39 > &v32)
          {
            v28 = &v32 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v11 = v38;
            v10 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v10 = &v32;
            v11 = v38;
          }
        }

        v12 = &v11[24 * v39];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v39;
        if (v36)
        {
          v14 = &v32;
          mlir::DiagnosticArgument::DiagnosticArgument(&v32, v31);
          v15 = v38;
          if (v39 >= v40)
          {
            if (v38 <= &v32 && v38 + 24 * v39 > &v32)
            {
              v29 = &v32 - v38;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v15 = v38;
              v14 = (v38 + v29);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v14 = &v32;
              v15 = v38;
            }
          }

          v16 = &v15[24 * v39];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v39;
        }
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  v19 = result;
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
    result = v19;
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
      result = v19;
    }

    v20 = __p;
    if (__p)
    {
      v21 = v45;
      v22 = __p;
      if (v45 != __p)
      {
        do
        {
          v21 = sub_100052FFC(v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v45 = v20;
      operator delete(v22);
      result = v19;
    }

    v23 = v42;
    if (v42)
    {
      v24 = v43;
      v25 = v42;
      if (v43 != v42)
      {
        do
        {
          v26 = *--v24;
          *v24 = 0;
          if (v26)
          {
            operator delete[]();
          }
        }

        while (v24 != v23);
        v25 = v42;
      }

      v43 = v23;
      operator delete(v25);
      result = v19;
    }

    if (v38 != v41)
    {
      free(v38);
      return v19;
    }
  }

  return result;
}

BOOL mlir::ModuleOp::verifyInvariantsImpl(mlir::ModuleOp *this)
{
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  v38 = v2;
  if ((sub_10010451C(v4, "sym_name", 8, sub_1001062E0, &v38) & 1) == 0)
  {
    return 0;
  }

  v38 = *this;
  if ((sub_10010451C(v5, "sym_visibility", 0xE, sub_1001062E0, &v38) & 1) == 0)
  {
    return 0;
  }

  v6 = *this;
  v7 = ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40);
  v8 = *(v7 + 8);
  if (v8 != v7 && *(v8 + 8) == v7)
  {
    return 1;
  }

  v33 = "region #";
  v34 = 259;
  mlir::Operation::emitOpError(&v38, v6, &v33);
  if (v38)
  {
    LODWORD(v31[0]) = 5;
    v31[1] = 0;
    v9 = v31;
    v10 = v40;
    if (v41 >= v42)
    {
      if (v40 <= v31 && v40 + 24 * v41 > v31)
      {
        v27 = v31 - v40;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
        v10 = v40;
        v9 = (v40 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
        v9 = v31;
        v10 = v40;
      }
    }

    v11 = &v10[24 * v41];
    v12 = *v9;
    *(v11 + 2) = v9[2];
    *v11 = v12;
    ++v41;
    v13 = v38 == 0;
  }

  else
  {
    v13 = 1;
  }

  v30 = 1283;
  v29[0] = " ('";
  v29[2] = "bodyRegion";
  v29[3] = 10;
  v31[0] = v29;
  v31[2] = "') ";
  v32 = 770;
  if (!v13)
  {
    mlir::Diagnostic::operator<<(&v39, v31);
    if (v38)
    {
      v35 = 3;
      v36 = "failed to verify constraint: region with 1 blocks";
      v37 = 49;
      v14 = &v35;
      v15 = v40;
      if (v41 >= v42)
      {
        if (v40 <= &v35 && v40 + 24 * v41 > &v35)
        {
          v28 = &v35 - v40;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
          v15 = v40;
          v14 = (v40 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
          v14 = &v35;
          v15 = v40;
        }
      }

      v16 = &v15[24 * v41];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v41;
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
  if (v38)
  {
    mlir::InFlightDiagnostic::report(&v38);
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v47;
      v21 = __p;
      if (v47 != __p)
      {
        do
        {
          v20 = sub_100052FFC(v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v47 = v19;
      operator delete(v21);
    }

    v22 = v44;
    if (v44)
    {
      v23 = v45;
      v24 = v44;
      if (v45 != v44)
      {
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
        v24 = v44;
      }

      v45 = v22;
      operator delete(v24);
    }

    if (v40 != v43)
    {
      free(v40);
    }
  }

  return v18;
}

void mlir::ModuleOp::print(unsigned int **this, mlir::OpAsmPrinter *a2)
{
  v4 = *this;
  if (*&v4[4 * ((v4[11] >> 23) & 1) + 16])
  {
    v5 = (*(*a2 + 16))(a2);
    v6 = *(v5 + 4);
    if (v6 >= *(v5 + 3))
    {
      llvm::raw_ostream::write(v5, 32);
    }

    else
    {
      *(v5 + 4) = v6 + 1;
      *v6 = 32;
    }

    v14 = *&(*this)[4 * (((*this)[11] >> 23) & 1) + 16];
    Value = mlir::StringAttr::getValue(&v14);
    (*(*a2 + 88))(a2, Value, v8);
    v4 = *this;
  }

  v14 = v16;
  v16[0] = "sym_name";
  v16[1] = 8;
  v15 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  v9 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 200))(a2, v9, v10, v14, v15);
  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 32);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 32;
  }

  (*(*a2 + 224))(a2, ((&(*this)[4 * (((*this)[11] >> 23) & 1) + 17] + (((*this)[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * (*this)[10], 1, 1, 0);
  if (v14 != v16)
  {
    free(v14);
  }
}

uint64_t mlir::UnrealizedConversionCastOp::parse(uint64_t a1, uint64_t a2)
{
  v18 = v20;
  v19 = 0x400000000;
  v16[0] = &v17;
  v16[1] = &_mh_execute_header;
  __src = &v15;
  v14 = &_mh_execute_header;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v18, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || v19 && (((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v16) & 1) == 0) || (v12[16] = 257, ((*(*a1 + 400))(a1, "to", 2, v12) & 1) == 0) || (mlir::AsmParser::parseTypeList(a1, &__src) & 1) == 0 || ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0))
  {
    v9 = 0;
    v10 = __src;
    if (__src == &v15)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v5 = __src;
  v6 = v14;
  v7 = *(a2 + 72);
  v8 = v7 + v14;
  if (v8 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v8, 8);
    LODWORD(v7) = *(a2 + 72);
  }

  if (v6)
  {
    memcpy((*(a2 + 64) + 8 * v7), v5, 8 * v6);
    LODWORD(v7) = *(a2 + 72);
  }

  *(a2 + 72) = v7 + v6;
  v9 = sub_100105A84(a1, &v18, v16, v4, a2 + 16) & 1;
  v10 = __src;
  if (__src != &v15)
  {
LABEL_15:
    free(v10);
  }

LABEL_16:
  if (v16[0] != &v17)
  {
    free(v16[0]);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v9;
}

uint64_t sub_100105A84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 2);
  v7 = *(a3 + 8);
  if (v6 == v7)
  {
    if (v6)
    {
      v9 = *a2;
      v10 = *a3;
      v11 = 32 * v6;
      while (((*(*a1 + 728))(a1, v9, *v10, a5) & 1) != 0)
      {
        v9 += 32;
        ++v10;
        v11 -= 32;
        if (!v11)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v51 = 257;
    (*(*a1 + 24))(v55, a1, a4, v50);
    if (v55[0])
    {
      v52 = 3;
      v53 = "number of operands and types do not match: got ";
      v54 = 47;
      v13 = &v52;
      v14 = v56;
      if (v57 >= v58)
      {
        if (v56 <= &v52 && v56 + 24 * v57 > &v52)
        {
          v45 = &v52 - v56;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
          v14 = v56;
          v13 = (v56 + v45);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
          v13 = &v52;
          v14 = v56;
        }
      }

      v15 = &v14[24 * v57];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      v17 = ++v57;
      if (v55[0])
      {
        v52 = 5;
        v53 = v6;
        v18 = &v52;
        v19 = v56;
        if (v17 >= v58)
        {
          if (v56 <= &v52 && v56 + 24 * v17 > &v52)
          {
            v46 = &v52 - v56;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v17 + 1, 24);
            v19 = v56;
            v18 = (v56 + v46);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v17 + 1, 24);
            v18 = &v52;
            v19 = v56;
          }
        }

        v20 = &v19[24 * v57];
        v21 = *v18;
        *(v20 + 2) = *(v18 + 2);
        *v20 = v21;
        v22 = ++v57;
        if (v55[0])
        {
          v52 = 3;
          v53 = " operands and ";
          v54 = 14;
          v23 = &v52;
          v24 = v56;
          if (v22 >= v58)
          {
            if (v56 <= &v52 && v56 + 24 * v22 > &v52)
            {
              v47 = &v52 - v56;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v22 + 1, 24);
              v24 = v56;
              v23 = (v56 + v47);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v22 + 1, 24);
              v23 = &v52;
              v24 = v56;
            }
          }

          v25 = &v24[24 * v57];
          v26 = *v23;
          *(v25 + 2) = *(v23 + 2);
          *v25 = v26;
          v27 = ++v57;
          if (v55[0])
          {
            v52 = 5;
            v53 = v7;
            v28 = &v52;
            v29 = v56;
            if (v27 >= v58)
            {
              if (v56 <= &v52 && v56 + 24 * v27 > &v52)
              {
                v48 = &v52 - v56;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v27 + 1, 24);
                v29 = v56;
                v28 = (v56 + v48);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v27 + 1, 24);
                v28 = &v52;
                v29 = v56;
              }
            }

            v30 = &v29[24 * v57];
            v31 = *v28;
            *(v30 + 2) = *(v28 + 2);
            *v30 = v31;
            v32 = ++v57;
            if (v55[0])
            {
              v52 = 3;
              v53 = " types";
              v54 = 6;
              v33 = &v52;
              v34 = v56;
              if (v32 >= v58)
              {
                if (v56 <= &v52 && v56 + 24 * v32 > &v52)
                {
                  v49 = &v52 - v56;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v32 + 1, 24);
                  v34 = v56;
                  v33 = (v56 + v49);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v32 + 1, 24);
                  v33 = &v52;
                  v34 = v56;
                }
              }

              v35 = &v34[24 * v57];
              v36 = *v33;
              *(v35 + 2) = *(v33 + 2);
              *v35 = v36;
              ++v57;
            }
          }
        }
      }
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v65 == 1)
    {
      if (v64 != &v65)
      {
        free(v64);
      }

      v37 = __p;
      if (__p)
      {
        v38 = v63;
        v39 = __p;
        if (v63 != __p)
        {
          do
          {
            v38 = sub_100052FFC(v38 - 1);
          }

          while (v38 != v37);
          v39 = __p;
        }

        v63 = v37;
        operator delete(v39);
      }

      v40 = v60;
      if (v60)
      {
        v41 = v61;
        v42 = v60;
        if (v61 != v60)
        {
          do
          {
            v43 = *--v41;
            *v41 = 0;
            if (v43)
            {
              operator delete[]();
            }
          }

          while (v41 != v40);
          v42 = v60;
        }

        v61 = v40;
        operator delete(v42);
      }

      if (v56 != v59)
      {
        free(v56);
      }
    }
  }

  return v12;
}

void *sub_100106084(void *result)
{
  v1 = *result;
  if ((atomic_load_explicit(&qword_1002C0BC0, memory_order_acquire) & 1) == 0)
  {
    v22 = v1;
    v24 = result;
    sub_10027DDA4();
    result = v24;
    v2 = qword_1002C0BB8;
    v3 = *(v22 + 8);
    v4 = *(v22 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = qword_1002C0BB8;
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
    if (atomic_load_explicit(&qword_1002C0BC0, memory_order_acquire))
    {
      v12 = qword_1002C0BB8;
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
      sub_10027DDA4();
      result = v25;
      v12 = qword_1002C0BB8;
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

uint64_t sub_100106218()
{
  if ((atomic_load_explicit(&qword_1002C0BD8, memory_order_acquire) & 1) == 0)
  {
    sub_10027DDF8();
  }

  return qword_1002C0BC8;
}

const char *sub_100106260()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DataLayoutSpecInterface]";
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

void sub_1001062E0(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

uint64_t sub_100106594(uint64_t a1)
{
  *a1 = off_1002B72A8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void sub_100106614(uint64_t a1)
{
  *a1 = off_1002B72A8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  operator delete();
}

uint64_t sub_1001066B4()
{
  v6 = off_1002C0BE0 + 2;
  result = off_1002C0BE0[0]();
  v1 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v2 = v5[0];
      if ((v6 & 2) != 0)
      {
        v2 = v5;
      }

      v3 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v2);
      result = v3;
    }

    if ((v1 & 2) == 0)
    {
      v4 = result;
      llvm::deallocate_buffer(v5[0], v5[1], v5[2]);
      return v4;
    }
  }

  return result;
}

BOOL sub_100106778(uint64_t a1, void *a2)
{
  v8 = &off_1002C0BE8 + 2;
  result = off_1002C0BE8(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_100106860(uint64_t a1, unsigned int *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v8 = off_1002C0C20 + 2;
  (off_1002C0C20[0])(v7, a2, a3, a4, a5);
  v5 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      if ((v8 & 2) != 0)
      {
        v6 = v7;
      }

      else
      {
        v6 = v7[0];
      }

      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v6);
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
    }
  }
}

uint64_t sub_100106908(uint64_t a1, uint64_t a2)
{
  v7[0] = sub_10010877C;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_1001069D8(uint64_t a1, uint64_t a2)
{
  v7[0] = sub_100108E20;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_100106AA8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  v7 = a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64;
  if (a4 != 14)
  {
    if (a4 == 8 && *a3 == 0x656D616E5F6D7973)
    {
      return *v7;
    }

    return 0;
  }

  if (*a3 != 0x697369765F6D7973 || *(a3 + 6) != 0x7974696C69626973)
  {
    return 0;
  }

  v7 = a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72;
  return *v7;
}

void *sub_100106B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  result = mlir::StringAttr::getValue(&v11);
  if (v7 == 14)
  {
    if (*result == 0x697369765F6D7973 && *(result + 6) == 0x7974696C69626973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }

        *(v5 + 72) = v9;
      }

      else
      {
        *(v5 + 72) = 0;
      }
    }
  }

  else if (v7 == 8 && *result == 0x656D616E5F6D7973)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v10 = a4;
      }

      else
      {
        v10 = 0;
      }

      *(v5 + 64) = v10;
    }

    else
    {
      *(v5 + 64) = 0;
    }
  }

  return result;
}

uint64_t sub_100106CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = mlir::Attribute::getContext((a2 + 24));
  v6 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  if (v9)
  {
    mlir::NamedAttribute::NamedAttribute(&v11, "sym_name", 8, v7);
    result = mlir::NamedAttrList::push_back(a3, v11, v12);
  }

  v10 = *(v8 + 8);
  if (v10)
  {
    mlir::NamedAttribute::NamedAttribute(&v11, "sym_visibility", 0xE, v10);
    return mlir::NamedAttrList::push_back(a3, v11, v12);
  }

  return result;
}

BOOL sub_100106D48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::get(a3, **(a2 + 96));
  result = 0;
  if (!v9 || (sub_10010451C(v9, "sym_name", 8, a4, a5) & 1) != 0)
  {
    v10 = mlir::NamedAttrList::get(a3, *(*(a2 + 96) + 8));
    if (!v10 || (sub_10010451C(v10, "sym_visibility", 0xE, a4, a5) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

void sub_100106DFC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

uint64_t sub_100106E30(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::ModuleOp::getPropertiesAsAttr(Context, v4);
}

__n128 sub_100106E78(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t sub_100106EB0(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v5 = HIDWORD(a2[1]);
  v6 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v8 = __ROR8__(v7 + 16, 16);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)))) >> 47))) ^ v7;
}

void sub_100106F54(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::ModuleOp::readProperties;
  v2[1] = sub_100107100;
  {
    v8 = v2;
    sub_100279774();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  sub_100107190(a1);
  v4 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v5 = v4;
  *v4 = nullsub_170;
  v4[1] = nullsub_171;
  v4[2] = nullsub_172;
  v4[3] = sub_100107550;
  {
    v9 = v4;
    sub_10027B308();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v6 = sub_100107560;
  v6[1] = sub_100107568;
  {
    sub_10027DE4C();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

uint64_t sub_100107100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 24))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

void sub_100107190(uint64_t a1)
{
  v2 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  v3 = v2;
  *v2 = sub_100107310;
  v2[1] = sub_100107318;
  v2[2] = sub_10010737C;
  v2[3] = sub_100107384;
  v2[4] = sub_1001073A8;
  v2[5] = sub_1001073CC;
  v2[6] = sub_1001073F0;
  v2[7] = sub_1001073FC;
  v2[8] = sub_100107408;
  v2[9] = sub_100107414;
  v2[10] = sub_100107420;
  v2[11] = sub_10010742C;
  v2[12] = sub_100107438;
  v2[13] = sub_100107448;
  v2[14] = sub_100107450;
  v2[15] = sub_100107474;
  {
    v5 = v2;
    sub_10027DEA0();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void sub_100107318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v9 = 261;
  v8[0] = "sym_name";
  v8[1] = 8;
  v7 = mlir::StringAttr::get(Context, v8, v6);
  sub_1000A88A0(a2, v7, a3);
}

uint64_t sub_10010747C()
{
  {
    sub_10027DEF4();
  }

  return llvm::getTypeName<mlir::SymbolOpInterface>(void)::Name;
}

const char *sub_1001074C4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SymbolOpInterface]";
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

uint64_t sub_100107570()
{
  {
    sub_10027DF48();
  }

  return llvm::getTypeName<mlir::RegionKindInterface>(void)::Name;
}

const char *sub_1001075B8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::RegionKindInterface]";
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

BOOL sub_100107648(void *a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v152 = a1;
    sub_10027DF9C();
    a1 = v152;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_68;
    }
  }

  v137 = v1;
  v153 = a1;
  sub_10027DFF0();
  v1 = v137;
  a1 = v153;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_69;
  }

LABEL_68:
  v138 = v1;
  v154 = a1;
  v123 = v2;
  sub_10027E044();
  v2 = v123;
  v1 = v138;
  a1 = v154;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_70;
  }

LABEL_69:
  v139 = v1;
  v155 = a1;
  v110 = v3;
  v124 = v2;
  sub_10027E098();
  v3 = v110;
  v2 = v124;
  v1 = v139;
  a1 = v155;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_71;
  }

LABEL_70:
  v140 = v1;
  v156 = a1;
  v111 = v3;
  v125 = v2;
  v98 = v4;
  sub_10027E0EC();
  v4 = v98;
  v3 = v111;
  v2 = v125;
  v1 = v140;
  a1 = v156;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_72;
  }

LABEL_71:
  v141 = v1;
  v157 = a1;
  v112 = v3;
  v126 = v2;
  v87 = v5;
  v99 = v4;
  sub_10027E140();
  v5 = v87;
  v4 = v99;
  v3 = v112;
  v2 = v126;
  v1 = v141;
  a1 = v157;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_73;
  }

LABEL_72:
  v142 = v1;
  v158 = a1;
  v113 = v3;
  v127 = v2;
  v88 = v5;
  v100 = v4;
  v77 = v6;
  sub_10027E194();
  v6 = v77;
  v5 = v88;
  v4 = v100;
  v3 = v113;
  v2 = v127;
  v1 = v142;
  a1 = v158;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_74;
  }

LABEL_73:
  v143 = v1;
  v159 = a1;
  v114 = v3;
  v128 = v2;
  v89 = v5;
  v101 = v4;
  v78 = v6;
  v68 = v7;
  sub_10027E1E8();
  v7 = v68;
  v6 = v78;
  v5 = v89;
  v4 = v101;
  v3 = v114;
  v2 = v128;
  v1 = v143;
  a1 = v159;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    if (atomic_load_explicit(&qword_1002C0BF8, memory_order_acquire))
    {
      goto LABEL_11;
    }

    goto LABEL_75;
  }

LABEL_74:
  v144 = v1;
  v160 = a1;
  v115 = v3;
  v129 = v2;
  v90 = v5;
  v102 = v4;
  v79 = v6;
  v60 = v8;
  v69 = v7;
  sub_10027E23C();
  v8 = v60;
  v7 = v69;
  v6 = v79;
  v5 = v90;
  v4 = v102;
  v3 = v115;
  v2 = v129;
  v1 = v144;
  a1 = v160;
  v9 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  if (atomic_load_explicit(&qword_1002C0BF8, memory_order_acquire))
  {
LABEL_11:
    v10 = qword_1002C0BF0;
    {
      goto LABEL_12;
    }

    goto LABEL_76;
  }

LABEL_75:
  v145 = v1;
  v161 = a1;
  v116 = v3;
  v130 = v2;
  v91 = v5;
  v103 = v4;
  v80 = v6;
  v61 = v8;
  v70 = v7;
  v53 = v9;
  sub_10027E290();
  v9 = v53;
  v8 = v61;
  v7 = v70;
  v6 = v80;
  v5 = v91;
  v4 = v103;
  v3 = v116;
  v2 = v130;
  v1 = v145;
  a1 = v161;
  v10 = qword_1002C0BF0;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_77;
  }

LABEL_76:
  v146 = v1;
  v162 = a1;
  v117 = v3;
  v131 = v2;
  v92 = v5;
  v104 = v4;
  v81 = v6;
  v62 = v8;
  v71 = v7;
  v47 = v10;
  v54 = v9;
  sub_10027E2E4();
  v10 = v47;
  v9 = v54;
  v8 = v62;
  v7 = v71;
  v6 = v81;
  v5 = v92;
  v4 = v104;
  v3 = v117;
  v2 = v131;
  v1 = v146;
  a1 = v162;
  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

    goto LABEL_78;
  }

LABEL_77:
  v147 = v1;
  v163 = a1;
  v118 = v3;
  v132 = v2;
  v93 = v5;
  v105 = v4;
  v82 = v6;
  v63 = v8;
  v72 = v7;
  v48 = v10;
  v55 = v9;
  v42 = v11;
  sub_100278E58();
  v11 = v42;
  v10 = v48;
  v9 = v55;
  v8 = v63;
  v7 = v72;
  v6 = v82;
  v5 = v93;
  v4 = v105;
  v3 = v118;
  v2 = v132;
  v1 = v147;
  a1 = v163;
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_14:
    v13 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_15;
    }

    goto LABEL_79;
  }

LABEL_78:
  v148 = v1;
  v164 = a1;
  v119 = v3;
  v133 = v2;
  v94 = v5;
  v106 = v4;
  v83 = v6;
  v64 = v8;
  v73 = v7;
  v49 = v10;
  v56 = v9;
  v38 = v12;
  v43 = v11;
  sub_10027E338();
  v12 = v38;
  v11 = v43;
  v10 = v49;
  v9 = v56;
  v8 = v64;
  v7 = v73;
  v6 = v83;
  v5 = v94;
  v4 = v106;
  v3 = v119;
  v2 = v133;
  v1 = v148;
  a1 = v164;
  v13 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_15:
    v14 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_16;
    }

LABEL_80:
    v150 = v1;
    v166 = a1;
    v121 = v3;
    v135 = v2;
    v96 = v5;
    v108 = v4;
    v85 = v6;
    v66 = v8;
    v75 = v7;
    v51 = v10;
    v58 = v9;
    v40 = v12;
    v45 = v11;
    v33 = v14;
    v36 = v13;
    sub_10027E3E0();
    v14 = v33;
    v13 = v36;
    v12 = v40;
    v11 = v45;
    v10 = v51;
    v9 = v58;
    v8 = v66;
    v7 = v75;
    v6 = v85;
    v5 = v96;
    v4 = v108;
    v3 = v121;
    v2 = v135;
    v1 = v150;
    a1 = v166;
    v15 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_81;
  }

LABEL_79:
  v149 = v1;
  v165 = a1;
  v120 = v3;
  v134 = v2;
  v95 = v5;
  v107 = v4;
  v84 = v6;
  v65 = v8;
  v74 = v7;
  v50 = v10;
  v57 = v9;
  v39 = v12;
  v44 = v11;
  v35 = v13;
  sub_10027E38C();
  v13 = v35;
  v12 = v39;
  v11 = v44;
  v10 = v50;
  v9 = v57;
  v8 = v65;
  v7 = v74;
  v6 = v84;
  v5 = v95;
  v4 = v107;
  v3 = v120;
  v2 = v134;
  v1 = v149;
  a1 = v165;
  v14 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_80;
  }

LABEL_16:
  v15 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_81:
  v151 = v1;
  v167 = a1;
  v122 = v3;
  v136 = v2;
  v97 = v5;
  v109 = v4;
  v86 = v6;
  v67 = v8;
  v76 = v7;
  v52 = v10;
  v59 = v9;
  v41 = v12;
  v46 = v11;
  v34 = v14;
  v37 = v13;
  v32 = v15;
  sub_10027E434();
  v15 = v32;
  v14 = v34;
  v13 = v37;
  v12 = v41;
  v11 = v46;
  v10 = v52;
  v9 = v59;
  v8 = v67;
  v7 = v76;
  v6 = v86;
  v5 = v97;
  v4 = v109;
  v3 = v122;
  v2 = v136;
  v1 = v151;
  a1 = v167;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t sub_100107C3C()
{
  {
    sub_10027E488();
  }

  return llvm::getTypeName<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>>(void)::Name;
}

const char *sub_100107C84()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneRegion<Empty>]";
  v6 = 93;
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

uint64_t sub_100107D04()
{
  {
    sub_10027E4DC();
  }

  return llvm::getTypeName<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>>(void)::Name;
}

const char *sub_100107D4C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::ZeroResults<Empty>]";
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

uint64_t sub_100107DCC()
{
  {
    sub_10027E530();
  }

  return llvm::getTypeName<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>>(void)::Name;
}

const char *sub_100107E14()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::ZeroSuccessors<Empty>]";
  v6 = 98;
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

uint64_t sub_100107E94()
{
  {
    sub_10027E584();
  }

  return llvm::getTypeName<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>>(void)::Name;
}

const char *sub_100107EDC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::ZeroOperands<Empty>]";
  v6 = 96;
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

uint64_t sub_100107F5C()
{
  {
    sub_10027E5D8();
  }

  return llvm::getTypeName<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>>(void)::Name;
}

const char *sub_100107FA4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::NoRegionArguments<Empty>]";
  v6 = 101;
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

uint64_t sub_100108024()
{
  {
    sub_10027E62C();
  }

  return llvm::getTypeName<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>>(void)::Name;
}

const char *sub_10010806C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::NoTerminator<Empty>]";
  v6 = 96;
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

uint64_t sub_1001080EC()
{
  {
    sub_10027E680();
  }

  return llvm::getTypeName<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>>(void)::Name;
}

const char *sub_100108134()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SingleBlock<Empty>]";
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

uint64_t sub_1001081B4()
{
  {
    sub_10027E6D4();
  }

  return llvm::getTypeName<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>>(void)::Name;
}

const char *sub_1001081FC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OpInvariants<Empty>]";
  v6 = 96;
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

uint64_t sub_10010827C()
{
  {
    sub_10027E728();
  }

  return llvm::getTypeName<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *sub_1001082C4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BytecodeOpInterface::Trait<Empty>]";
  v6 = 101;
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

uint64_t sub_100108344()
{
  if ((atomic_load_explicit(&qword_1002C0C10, memory_order_acquire) & 1) == 0)
  {
    sub_10027E77C();
  }

  return qword_1002C0C00;
}

const char *sub_10010838C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::AffineScope<Empty>]";
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

uint64_t sub_10010840C()
{
  {
    sub_10027E7D0();
  }

  return llvm::getTypeName<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *sub_100108454()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SymbolOpInterface::Trait<Empty>]";
  v6 = 99;
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

uint64_t sub_1001084D4()
{
  {
    sub_10027E824();
  }

  return llvm::getTypeName<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *sub_10010851C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpAsmOpInterface::Trait<Empty>]";
  v6 = 98;
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

uint64_t sub_10010859C()
{
  {
    sub_10027E878();
  }

  return llvm::getTypeName<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *sub_1001085E4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::RegionKindInterface::Trait<Empty>]";
  v6 = 101;
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

uint64_t sub_100108664()
{
  {
    sub_10027E8CC();
  }

  return llvm::getTypeName<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>>(void)::Name;
}

const char *sub_1001086AC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasOnlyGraphRegion<Empty>]";
  v6 = 102;
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

void sub_10010872C(uint64_t a1, unsigned int *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ModuleOp::print(&v7, a3);
}

BOOL sub_10010877C(mlir::Operation *a1, mlir::Operation *a2)
{
  if (!sub_1001087D4(a1, a2))
  {
    return 0;
  }

  v4 = a1;
  return mlir::ModuleOp::verify(&v4);
}

BOOL sub_1001087D4(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5) && mlir::OpTrait::impl::verifyNoRegionArguments(a1, v6) && (sub_100108874(a1) & 1) != 0 && (v8 = a1, mlir::ModuleOp::verifyInvariantsImpl(&v8)))
  {
    return sub_100108BDC(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100108874(unsigned int *a1)
{
  v1 = a1[11];
  v2 = v1 & 0x7FFFFF;
  if ((v1 & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v3 = 0;
  for (i = (((&a1[4 * ((v1 >> 23) & 1) + 17] + ((v1 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]); ; i += 3)
  {
    if (i != *i)
    {
      v5 = i[1];
      if (i == v5 || i != *(v5 + 8))
      {
        break;
      }
    }

    if (v2 == ++v3)
    {
      return 1;
    }
  }

  v26 = "expects region #";
  v27 = 259;
  mlir::Operation::emitOpError(v31, a1, &v26);
  if (v31[0])
  {
    v28 = 5;
    v29 = v3;
    v6 = &v28;
    v7 = v32;
    if (v33 >= v34)
    {
      if (v32 <= &v28 && v32 + 24 * v33 > &v28)
      {
        v24 = &v28 - v32;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v7 = v32;
        v6 = (v32 + v24);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v6 = &v28;
        v7 = v32;
      }
    }

    v8 = &v7[24 * v33];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    v10 = ++v33;
    if (v31[0])
    {
      v28 = 3;
      v29 = " to have 0 or 1 blocks";
      v30 = 22;
      v11 = &v28;
      v12 = v32;
      if (v10 >= v34)
      {
        if (v32 <= &v28 && v32 + 24 * v10 > &v28)
        {
          v25 = &v28 - v32;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v10 + 1, 24);
          v12 = v32;
          v11 = (v32 + v25);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v10 + 1, 24);
          v11 = &v28;
          v12 = v32;
        }
      }

      v13 = &v12[24 * v33];
      v14 = *v11;
      *(v13 + 2) = *(v11 + 2);
      *v13 = v14;
      ++v33;
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
  if (v31[0])
  {
    mlir::InFlightDiagnostic::report(v31);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v39;
      v18 = __p;
      if (v39 != __p)
      {
        do
        {
          v17 = sub_100052FFC(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v39 = v16;
      operator delete(v18);
    }

    v19 = v36;
    if (v36)
    {
      v20 = v37;
      v21 = v36;
      if (v37 != v36)
      {
        do
        {
          v22 = *--v20;
          *v20 = 0;
          if (v22)
          {
            operator delete[]();
          }
        }

        while (v20 != v19);
        v21 = v36;
      }

      v37 = v19;
      operator delete(v21);
    }

    if (v32 != v35)
    {
      free(v32);
    }
  }

  return v15;
}

BOOL sub_100108BDC(mlir::Operation *a1)
{
  v18 = a1;
  InherentAttr = mlir::Operation::getInherentAttr(a1, "sym_name", 8);
  result = 1;
  if ((v2 & 1) != 0 && InherentAttr)
  {
    if (mlir::detail::verifySymbol(a1, v2))
    {
      v5 = *(a1 + 2);
      if (!v5)
      {
        return 1;
      }

      ParentOp = mlir::Block::getParentOp(v5);
      if (!ParentOp)
      {
        return 1;
      }

      v7 = ParentOp;
      {
        sub_100278E58();
      }

      if (((*(**(v7 + 48) + 32))(*(v7 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) != 0 || *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        return 1;
      }

      else
      {
        v16 = "symbol's parent must have the SymbolTable trait";
        v17 = 259;
        mlir::OpState::emitOpError(&v18, &v16, v19);
        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
        v8 = result;
        if (v19[0])
        {
          mlir::InFlightDiagnostic::report(v19);
          result = v8;
        }

        if (v27 == 1)
        {
          if (v26 != &v27)
          {
            free(v26);
            result = v8;
          }

          v9 = __p;
          if (__p)
          {
            v10 = v25;
            v11 = __p;
            if (v25 != __p)
            {
              do
              {
                v10 = sub_100052FFC(v10 - 1);
              }

              while (v10 != v9);
              v11 = __p;
            }

            v25 = v9;
            operator delete(v11);
            result = v8;
          }

          v12 = v22;
          if (v22)
          {
            v13 = v23;
            v14 = v22;
            if (v23 != v22)
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
              v14 = v22;
            }

            v23 = v12;
            operator delete(v14);
            result = v8;
          }

          if (v20 != &v21)
          {
            free(v20);
            return v8;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100108E20(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyIsIsolatedFromAbove(a1, a2))
  {
    return mlir::detail::verifySymbolTable(a1, v3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100108E68(uint64_t a1)
{
  *a1 = off_1002B72A8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void sub_100108EE8(uint64_t a1)
{
  *a1 = off_1002B72A8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  operator delete();
}

uint64_t sub_100108F88(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = off_1002C0C50 + 2;
  result = (off_1002C0C50[0])(v14, a2, a3, a4, a5);
  v10 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      v11 = v14[0];
      if ((v15 & 2) != 0)
      {
        v11 = v14;
      }

      v12 = result;
      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      v13 = result;
      llvm::deallocate_buffer(v14[0], v14[1], v14[2]);
      return v13;
    }
  }

  return result;
}

BOOL sub_10010904C(uint64_t a1, void *a2)
{
  v8 = off_1002C0C58 + 2;
  result = (off_1002C0C58[0])(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_100109134(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v8 = &off_1002C0C60 + 2;
  off_1002C0C60(v7, a2, a3, a4, a5);
  v5 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      if ((v8 & 2) != 0)
      {
        v6 = v7;
      }

      else
      {
        v6 = v7[0];
      }

      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v6);
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
    }
  }
}

uint64_t sub_1001091DC(uint64_t a1, uint64_t a2)
{
  v7[0] = sub_10010A070;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_1001092AC(uint64_t a1, uint64_t a2)
{
  v7[0] = sub_10010A110;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_1001093A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != &v9)
  {
    free(v8[0]);
  }
}

uint64_t sub_10010947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  a5(v22, a6);
  if (v22[0])
  {
    v19 = 3;
    v20 = "this operation does not support properties";
    v21 = 42;
    v6 = &v19;
    v7 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v18 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v7 = v23;
        v6 = (v23 + v18);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v6 = &v19;
        v7 = v23;
      }
    }

    v8 = &v7[24 * v24];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v24;
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = sub_100052FFC(v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return 0;
}

void sub_1001096A4(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = sub_100109798;
  {
    v6 = v2;
    sub_10027E920();
    v3 = v6;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = nullsub_180;
  {
    sub_10027E974();
  }

  v5 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v5, v4);
}

uint64_t sub_1001097A0()
{
  {
    sub_10027E9C8();
  }

  return llvm::getTypeName<mlir::ConditionallySpeculatable>(void)::Name;
}

const char *sub_1001097E8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ConditionallySpeculatable]";
  v6 = 93;
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

uint64_t sub_10010986C()
{
  {
    sub_10027EA1C();
  }

  return llvm::getTypeName<mlir::MemoryEffectOpInterface>(void)::Name;
}

const char *sub_1001098B4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::MemoryEffectOpInterface]";
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

BOOL sub_10010993C(void *a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v44 = a1;
    sub_10027EA70();
    a1 = v44;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  v37 = v1;
  v45 = a1;
  sub_10027EAC4();
  v1 = v37;
  a1 = v45;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  v38 = v1;
  v46 = a1;
  v31 = v2;
  sub_10027EB18();
  v2 = v31;
  v1 = v38;
  a1 = v46;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  v39 = v1;
  v47 = a1;
  v32 = v2;
  v26 = v3;
  sub_10027EB6C();
  v3 = v26;
  v2 = v32;
  v1 = v39;
  a1 = v47;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  v40 = v1;
  v48 = a1;
  v33 = v2;
  v22 = v4;
  v27 = v3;
  sub_10027E1E8();
  v4 = v22;
  v3 = v27;
  v2 = v33;
  v1 = v40;
  a1 = v48;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

LABEL_40:
    v42 = v1;
    v50 = a1;
    v35 = v2;
    v24 = v4;
    v29 = v3;
    v17 = v6;
    v20 = v5;
    sub_10027EC14();
    v6 = v17;
    v5 = v20;
    v4 = v24;
    v3 = v29;
    v2 = v35;
    v1 = v42;
    a1 = v50;
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_41;
  }

LABEL_39:
  v41 = v1;
  v49 = a1;
  v34 = v2;
  v23 = v4;
  v28 = v3;
  v19 = v5;
  sub_10027EBC0();
  v5 = v19;
  v4 = v23;
  v3 = v28;
  v2 = v34;
  v1 = v41;
  a1 = v49;
  v6 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_40;
  }

LABEL_8:
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_41:
  v43 = v1;
  v51 = a1;
  v36 = v2;
  v25 = v4;
  v30 = v3;
  v18 = v6;
  v21 = v5;
  v16 = v7;
  sub_10027EC68();
  v7 = v16;
  v6 = v18;
  v5 = v21;
  v4 = v25;
  v3 = v30;
  v2 = v36;
  v1 = v43;
  a1 = v51;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t sub_100109BC0()
{
  {
    sub_10027ECBC();
  }

  return llvm::getTypeName<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>>(void)::Name;
}

const char *sub_100109C08()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::ZeroRegions<Empty>]";
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

uint64_t sub_100109C88()
{
  {
    sub_10027ED10();
  }

  return llvm::getTypeName<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>>(void)::Name;
}

const char *sub_100109CD0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::VariadicResults<Empty>]";
  v6 = 99;
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

uint64_t sub_100109D50()
{
  {
    sub_10027ED64();
  }

  return llvm::getTypeName<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>>(void)::Name;
}

const char *sub_100109D98()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::VariadicOperands<Empty>]";
  v6 = 100;
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

uint64_t sub_100109E18()
{
  {
    sub_10027EDB8();
  }

  return llvm::getTypeName<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>>(void)::Name;
}

const char *sub_100109E60()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ConditionallySpeculatable::Trait<Empty>]";
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

uint64_t sub_100109EE0()
{
  {
    sub_10027EE0C();
  }

  return llvm::getTypeName<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>>(void)::Name;
}

const char *sub_100109F28()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::AlwaysSpeculatableImplTrait<Empty>]";
  v6 = 111;
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

uint64_t sub_100109FA8()
{
  {
    sub_10027EE60();
  }

  return llvm::getTypeName<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *sub_100109FF0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::MemoryEffectOpInterface::Trait<Empty>]";
  v6 = 105;
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

BOOL sub_10010A070(unsigned int *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    return 0;
  }

  v4 = a1[9];
  if (a1[9])
  {
    v5 = (a1 - 4);
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      mlir::detail::OpResultImpl::getNextResultAtOffset(v5, i);
    }
  }

  v8 = a1;
  return mlir::UnrealizedConversionCastOp::verify(&v8);
}

void sub_10010A118(void *a1, uint64_t a2)
{
  {
    v4 = a2;
    sub_10027EEB4();
    a2 = v4;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::ResourceBlobManagerDialectInterface,void>::resolveTypeID(void)::id;
  a1[1] = a2;
  a1[2] = v3;
  *a1 = off_1002B7458;
  operator new();
}

void sub_10010A1E4(mlir::DialectInterface *a1)
{
  *a1 = off_1002B7458;
  v1 = *(a1 + 4);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  mlir::DialectInterface::~DialectInterface(a1);
}

void sub_10010A298(mlir::DialectInterface *a1)
{
  *a1 = off_1002B7458;
  v1 = *(a1 + 4);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  mlir::DialectInterface::~DialectInterface(a1);

  operator delete();
}

void sub_10010A344(mlir::DialectInterface *a1)
{
  *a1 = off_1002B7458;
  v1 = *(a1 + 4);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  mlir::DialectInterface::~DialectInterface(a1);
}

void sub_10010A3F8(mlir::DialectInterface *a1)
{
  *a1 = off_1002B7458;
  v1 = *(a1 + 4);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  mlir::DialectInterface::~DialectInterface(a1);

  operator delete();
}

void sub_10010A4C4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002B7478;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10010A518(uint64_t a1)
{
  sub_10010A558(a1 + 40);

  llvm::sys::RWMutexImpl::~RWMutexImpl((a1 + 24));
}

uint64_t sub_10010A558(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          v7 = *v5;
          if (*(v5 + 88) == 1)
          {
            v8 = v5[9];
            if (v8 >= 8)
            {
              v9 = v5 + 6;
              v10 = v5 + 6;
              if ((v8 & 2) == 0)
              {
                v10 = *v9;
              }

              (*(v8 & 0xFFFFFFFFFFFFFFF8))(v10, v5[3], v5[4], v5[5]);
              v11 = v5[9];
              if (v11 >= 8)
              {
                if ((v11 & 4) != 0)
                {
                  if ((v11 & 2) == 0)
                  {
                    v9 = *v9;
                  }

                  (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v9);
                }

                if ((v11 & 2) == 0)
                {
                  llvm::deallocate_buffer(v5[6], v5[7], v5[8]);
                }
              }
            }
          }

          llvm::deallocate_buffer(v5, (v7 + 97), 8uLL);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

void sub_10010A668(mlir::DialectInterface *a1)
{
  mlir::DialectInterface::~DialectInterface(a1);

  operator delete();
}

uint64_t sub_10010A6A0(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v6 = a3[4];
    if ((a3[3] - v6) <= 2)
    {
      v7 = "map";
      goto LABEL_10;
    }

    *(v6 + 2) = 112;
    v12 = 24941;
    goto LABEL_22;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v6 = a3[4];
    if ((a3[3] - v6) <= 2)
    {
      v7 = "set";
      goto LABEL_10;
    }

    *(v6 + 2) = 116;
    v12 = 25971;
LABEL_22:
    *v6 = v12;
    a3[4] += 3;
    return 1;
  }

  if (mlir::LocationAttr::classof(a2))
  {
    v6 = a3[4];
    if ((a3[3] - v6) <= 2)
    {
      v7 = "loc";
LABEL_10:
      llvm::raw_ostream::write(a3, v7, 3uLL);
      return 1;
    }

    *(v6 + 2) = 99;
    v12 = 28524;
    goto LABEL_22;
  }

  v9 = a2;
  v10 = *(*a2 + 136);
  if (atomic_load_explicit(&qword_1002C0668, memory_order_acquire))
  {
    if (v10 != qword_1002C0660)
    {
      v9 = 0;
    }

    v15 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v14 = v10;
    sub_10027EF08();
    if (v14 == qword_1002C0660)
    {
      v13 = a2;
    }

    else
    {
      v13 = 0;
    }

    v15 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  if (*(*mlir::DistinctAttr::getReferencedAttr(&v15) + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 0;
  }

  v11 = a3[4];
  if (a3[3] - v11 > 7uLL)
  {
    *v11 = 0x74636E6974736964;
    a3[4] += 8;
  }

  else
  {
    llvm::raw_ostream::write(a3, "distinct", 8uLL);
  }

  return 1;
}

uint64_t sub_10010A8A8(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  v7 = v3;
  if (!v3 || mlir::TupleType::size(&v7) < 0x11)
  {
    return 0;
  }

  v5 = a3[4];
  if ((a3[3] - v5) > 4)
  {
    *(v5 + 4) = 101;
    *v5 = 1819309428;
    a3[4] += 5;
  }

  else
  {
    llvm::raw_ostream::write(a3, "tuple", 5uLL);
  }

  return 1;
}

void sub_10010A970(uint64_t a1@<X0>, int8x16_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 24);
  LOBYTE(v11[0]) = 0;
  v14 = 0;
  sub_1000D4C8C(v5, a2, a3, v11, &v9);
  *a4 = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = 1;
  if (v14 == 1 && v13 >= 8)
  {
    v6 = (v13 & 2) != 0 ? v12 : v12[0];
    (*(v13 & 0xFFFFFFFFFFFFFFF8))(v6, v11[0], v11[1], v11[2]);
    v7 = v13;
    if (v13 >= 8)
    {
      if ((v13 & 4) != 0)
      {
        if ((v13 & 2) != 0)
        {
          v8 = v12;
        }

        else
        {
          v8 = v12[0];
        }

        (*((v13 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
      }

      if ((v7 & 2) == 0)
      {
        llvm::deallocate_buffer(v12[0], v12[1], v12[2]);
      }
    }
  }
}

void sub_10010AA68(const void ***a1@<X1>, void *a2@<X8>)
{
  v3 = **a1;
  if (v3)
  {
    v4 = (*a1)[1];
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10002BC08();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v4;
    if (v4)
    {
      memmove(a2, v3, v4);
    }

    *(a2 + v4) = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

uint64_t sub_10010AB28(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 56))(v12, a2, sub_1000B8038, &v11);
  if (v15 != 1)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = (*(*a2 + 16))(a2);
  mlir::DialectResourceBlobManager::update(*(v4 + 24), v5, v6, v12);
  if ((v15 & 1) != 0 && v14 >= 8)
  {
    v7 = (v14 & 2) != 0 ? v13 : v13[0];
    (*(v14 & 0xFFFFFFFFFFFFFFF8))(v7, v12[0], v12[1], v12[2]);
    v8 = v14;
    if (v14 >= 8)
    {
      if ((v14 & 4) != 0)
      {
        if ((v14 & 2) != 0)
        {
          v9 = v13;
        }

        else
        {
          v9 = v13[0];
        }

        (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v9);
      }

      if ((v8 & 2) == 0)
      {
        llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
      }
    }
  }

  return 1;
}

void sub_10010ACA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 24 * a4;
    v6 = (a3 + 8);
    do
    {
      v7 = *v6;
      {
        if (v7 == mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v9 = v7;
        sub_10027EF5C();
        if (v9 == mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id)
        {
LABEL_6:
          v8 = *(v6 - 1);
          if (*(v8 + 80) == 1)
          {
            (*(*a2 + 32))(a2, *v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));
          }
        }
      }

      v6 += 3;
      v5 -= 24;
    }

    while (v5);
  }
}

void sub_10010AD8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 sub_10010ADB0(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t sub_10010ADBC()
{
  if ((atomic_load_explicit(&qword_1002C0C88, memory_order_acquire) & 1) == 0)
  {
    sub_10027EFB0();
  }

  return qword_1002C0C78;
}

const char *sub_10010AE04()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::ModuleOpGenericAdaptorBase::Properties]";
  v6 = 114;
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

const char *sub_10010AE84()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::StringAttr]";
  v6 = 78;
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

void sub_10010AF04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v5 = &v24;
    v6 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v6 = v30;
        v5 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = &v24;
        v6 = v30;
      }
    }

    v7 = &v6[24 * v31];
    v8 = *v5;
    *(v7 + 2) = v5[2];
    *v7 = v8;
    ++v31;
  }

  v24 = *(*(*(a1 + 16) + 8) + 8);
  Value = mlir::StringAttr::getValue(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = Value;
    v25 = v10;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v11 = &v24;
      v12 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v12 = v30;
          v11 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = &v24;
          v12 = v30;
        }
      }

      v13 = &v12[24 * v31];
      v14 = *v11;
      *(v13 + 2) = v11[2];
      *v13 = v14;
      ++v31;
    }
  }

  sub_100062C04(a2, &v28);
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

    v15 = __p;
    if (__p)
    {
      v16 = v37;
      v17 = __p;
      if (v37 != __p)
      {
        do
        {
          v16 = sub_100052FFC(v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v37 = v15;
      operator delete(v17);
    }

    v18 = v34;
    if (v34)
    {
      v19 = v35;
      v20 = v34;
      if (v35 != v34)
      {
        do
        {
          v21 = *--v19;
          *v19 = 0;
          if (v21)
          {
            operator delete[]();
          }
        }

        while (v19 != v18);
        v20 = v34;
      }

      v35 = v18;
      operator delete(v20);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

uint64_t sub_10010B264@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *(result + 32) = a2 + 1;
  *a2 = 32;
  return result;
}

int8x16_t sub_10010B278@<Q0>(int8x16_t *a1@<X8>)
{
  v3 = v2 - 8;
  v4 = vld4q_f64(v3);
  v5 = vld4q_f64(v2);
  v6 = vdupq_n_s64(v1);
  result = vorrq_s8(v4, v6);
  a1[-1] = result;
  *a1 = vorrq_s8(v5, v6);
  return result;
}

void sub_10010B3FC(mlir::DialectInterface *a1)
{
  mlir::DialectInterface::~DialectInterface(a1);

  operator delete();
}

llvm::APFloatBase *sub_10010B434(mlir::DialectInterface *a1, uint64_t a2)
{
  Context = mlir::DialectInterface::getContext(a1);
  v78 = 0;
  v5 = (*(*a2 + 72))(a2, &v78);
  result = 0;
  if (v5)
  {
    switch(v78)
    {
      case 0:
        *v89 = &v89[16];
        *&v89[8] = 0x600000000;
        *v86 = a2;
        if ((sub_10010F9E8(a2, v89, v86) & 1) == 0)
        {
          goto LABEL_85;
        }

        result = mlir::ArrayAttr::get(Context, *v89, *&v89[8]);
        goto LABEL_86;
      case 1:
        *v89 = &v89[16];
        *&v89[8] = 0x300000000;
        v79 = 0;
        if (((*(*a2 + 72))(a2, &v79) & 1) == 0)
        {
          goto LABEL_85;
        }

        v20 = v79;
        if (v79 > *&v89[12])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v89, &v89[16], v79, 16);
          v20 = v79;
        }

        if (!v20)
        {
          goto LABEL_54;
        }

        v21 = 0;
        while (1)
        {
          v80 = 0;
          v83 = 0;
          if ((sub_10010FB18(a2, &v80) & 1) == 0 || ((*(*a2 + 48))(a2, &v83) & 1) == 0)
          {
            goto LABEL_85;
          }

          mlir::NamedAttribute::NamedAttribute(&v84, v80, v83);
          *v86 = v84;
          v86[16] = 1;
          if (*&v89[8] >= *&v89[12])
          {
            sub_100056C68(v89, v86);
            if (++v21 >= v79)
            {
LABEL_54:
              result = mlir::DictionaryAttr::get(Context, *v89, *&v89[8]);
              goto LABEL_86;
            }
          }

          else
          {
            *(*v89 + 16 * *&v89[8]) = *v86;
            ++*&v89[8];
            if (++v21 >= v79)
            {
              goto LABEL_54;
            }
          }
        }

      case 2:
        *v86 = 0uLL;
        v19 = (*(*a2 + 104))(a2, v86);
        result = 0;
        if (v19)
        {
          LOWORD(v91) = 261;
          *v89 = *v86;
          return mlir::StringAttr::get(Context, v89, v18);
        }

        return result;
      case 3:
        *v86 = 0uLL;
        *&v84 = 0;
        if (((*(*a2 + 104))(a2, v86) & 1) == 0 || ((*(*a2 + 64))(a2, &v84) & 1) == 0)
        {
          return 0;
        }

        LOWORD(v91) = 261;
        *v89 = *v86;
        return mlir::StringAttr::get(v89, v84);
      case 4:
        *v89 = 0;
        v8 = sub_10010FB18(a2, v89);
        result = 0;
        if (v8)
        {
          return mlir::SymbolRefAttr::get(*v89);
        }

        return result;
      case 5:
        *&v84 = 0;
        *v89 = &v89[16];
        *&v89[8] = 0x600000000;
        if ((sub_10010FB18(a2, &v84) & 1) == 0)
        {
          goto LABEL_164;
        }

        *v86 = a2;
        if ((sub_10010FFA8(a2, v89, v86) & 1) == 0)
        {
          goto LABEL_164;
        }

        result = mlir::SymbolRefAttr::get(v84, *v89, *&v89[8]);
        goto LABEL_165;
      case 6:
        *v89 = 0;
        v30 = (*(*a2 + 64))(a2, v89);
        result = 0;
        if (v30)
        {
          return mlir::TypeAttr::get(*v89);
        }

        return result;
      case 7:
        return mlir::UnitAttr::get(Context, v4);
      case 8:
        v83 = 0;
        LOBYTE(v80) = 0;
        v82 = 0;
        if (((*(*a2 + 64))(a2, &v83) & 1) == 0)
        {
          return 0;
        }

        v31 = v83;
        v32 = *(*v83 + 136);
        v33 = v32 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id ? v83 : 0;
        *v89 = v33;
        if (v33)
        {
          Width = mlir::IntegerType::getWidth(v89);
          v35 = 0;
        }

        else if (v32 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
        {
          v35 = 0;
          Width = 64;
        }

        else
        {
          v88 = 257;
          (*(*a2 + 16))(v89, a2, v86);
          if (*v89)
          {
            LODWORD(v84) = 3;
            *(&v84 + 1) = "expected integer or index type for IntegerAttr, but got: ";
            v85 = 57;
            v50 = &v84;
            v51 = v90;
            if (v91 >= v92)
            {
              if (v90 <= &v84 && v90 + 24 * v91 > &v84)
              {
                v76 = &v84 - v90;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
                v51 = v90;
                v50 = v90 + v76;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
                v50 = &v84;
                v51 = v90;
              }
            }

            v52 = &v51[24 * v91];
            v53 = *v50;
            *(v52 + 2) = *(v50 + 2);
            *v52 = v53;
            ++v91;
            if (*v89)
            {
              v54 = &v84;
              mlir::DiagnosticArgument::DiagnosticArgument(&v84, v31);
              v55 = v90;
              if (v91 >= v92)
              {
                if (v90 <= &v84 && v90 + 24 * v91 > &v84)
                {
                  v77 = &v84 - v90;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
                  v55 = v90;
                  v54 = v90 + v77;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
                  v54 = &v84;
                  v55 = v90;
                }
              }

              v56 = &v55[24 * v91];
              v57 = *v54;
              *(v56 + 2) = *(v54 + 2);
              *v56 = v57;
              ++v91;
              if (*v89)
              {
                mlir::InFlightDiagnostic::report(v89);
              }
            }
          }

          if (v99 == 1)
          {
            if (v98 != &v99)
            {
              free(v98);
            }

            v58 = __p;
            if (__p)
            {
              v59 = v97;
              v60 = __p;
              if (v97 != __p)
              {
                do
                {
                  v59 = sub_100052FFC(v59 - 1);
                }

                while (v59 != v58);
                v60 = __p;
              }

              v97 = v58;
              operator delete(v60);
            }

            v61 = v94;
            if (v94)
            {
              v62 = v95;
              v63 = v94;
              if (v95 != v94)
              {
                do
                {
                  v64 = *--v62;
                  *v62 = 0;
                  if (v64)
                  {
                    operator delete[]();
                  }
                }

                while (v62 != v61);
                v63 = v94;
              }

              v95 = v61;
              operator delete(v63);
            }

            if (v90 != v93)
            {
              free(v90);
            }
          }

          Width = 0;
          v35 = v82;
        }

        (*(*a2 + 88))(v89, a2, Width);
        if (v35 == v89[16])
        {
          if (v35)
          {
            if (v81 >= 0x41 && v80)
            {
              operator delete[]();
            }

            v80 = *v89;
            v81 = *&v89[8];
            *&v89[8] = 0;
            v73 = 1;
          }

          else
          {
            v73 = 0;
          }
        }

        else if (v35)
        {
          if (v81 >= 0x41 && v80)
          {
            operator delete[]();
          }

          v73 = 0;
          v82 = 0;
        }

        else
        {
          v81 = *&v89[8];
          v80 = *v89;
          *&v89[8] = 0;
          v73 = 1;
          v82 = 1;
        }

        if (v89[16] == 1 && *&v89[8] >= 0x41u && *v89)
        {
          operator delete[]();
        }

        if (!v73)
        {
          return 0;
        }

        result = mlir::IntegerAttr::get(v83, &v80);
        if ((v82 & 1) != 0 && v81 >= 0x41 && v80)
        {
          operator delete[]();
        }

        return result;
      case 9:
        v80 = 0;
        v86[0] = 0;
        v87 = 0;
        v13 = (*(*a2 + 64))(a2, &v80);
        result = 0;
        if (v13)
        {
          result = sub_10005D310(v80);
          *&v84 = result;
          *(&v84 + 1) = v14;
          if (result)
          {
            FloatSemantics = mlir::FloatType::getFloatSemantics(&v84);
            (*(*a2 + 96))(v89, a2, FloatSemantics);
            sub_1001105E8(v86, v89);
            if (v90 == 1)
            {
              v17 = *v89;
              if (llvm::APFloatBase::PPCDoubleDouble(v16) == v17)
              {
                sub_100029F40(v89);
              }

              else
              {
                llvm::detail::IEEEFloat::~IEEEFloat(v89);
              }
            }

            result = mlir::FloatAttr::get(v80, v86);
          }
        }

        if (v87 != 1)
        {
          return result;
        }

        v71 = result;
        v72 = *v86;
        if (llvm::APFloatBase::PPCDoubleDouble(result) == v72)
        {
          sub_100029F40(v86);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(v86);
        }

        return v71;
      case 10:
        *v89 = 0;
        *v86 = 0;
        if (!sub_1001106D8(a2, v89) || !sub_1001106D8(a2, v86))
        {
          return 0;
        }

        return mlir::CallSiteLoc::get(*v89, *v86);
      case 11:
        *v89 = 0;
        *v86 = 0;
        *&v84 = 0;
        if ((sub_10010FB18(a2, v89) & 1) == 0 || ((*(*a2 + 72))(a2, v86) & 1) == 0 || ((*(*a2 + 72))(a2, &v84) & 1) == 0)
        {
          return 0;
        }

        return mlir::FileLineColRange::get(*v89, *v86, v84);
      case 12:
        *v89 = &v89[16];
        *&v89[8] = 0x600000000;
        v80 = 0;
        if (((*(*a2 + 72))(a2, &v80) & 1) == 0)
        {
          goto LABEL_85;
        }

        v9 = v80;
        if (v80 > *&v89[12])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v89, &v89[16], v80, 8);
          v9 = v80;
        }

        if (!v9)
        {
          goto LABEL_30;
        }

        v10 = 0;
        while (1)
        {
          *&v84 = 0;
          v11 = sub_1001106D8(a2, &v84);
          v12 = v11 ? v84 : 0;
          *v86 = v12;
          v86[8] = v11;
          if (!v11)
          {
            goto LABEL_85;
          }

          if (*&v89[8] >= *&v89[12])
          {
            sub_1000AC328(v89, v86);
            if (++v10 >= v80)
            {
LABEL_30:
              result = mlir::FusedLoc::get(*v89, *&v89[8], 0, Context);
              goto LABEL_86;
            }
          }

          else
          {
            *(*v89 + 8 * *&v89[8]) = v84;
            ++*&v89[8];
            if (++v10 >= v80)
            {
              goto LABEL_30;
            }
          }
        }

      case 13:
        *v89 = &v89[16];
        *&v89[8] = 0x600000000;
        v83 = 0;
        v80 = 0;
        if (((*(*a2 + 72))(a2, &v80) & 1) == 0)
        {
          goto LABEL_85;
        }

        v25 = v80;
        if (v80 > *&v89[12])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v89, &v89[16], v80, 8);
          v25 = v80;
        }

        if (!v25)
        {
          goto LABEL_83;
        }

        v26 = 0;
        while (1)
        {
          *&v84 = 0;
          v27 = sub_1001106D8(a2, &v84);
          v28 = v27 ? v84 : 0;
          *v86 = v28;
          v86[8] = v27;
          if (!v27)
          {
            break;
          }

          if (*&v89[8] >= *&v89[12])
          {
            sub_1000AC328(v89, v86);
            if (++v26 >= v80)
            {
LABEL_83:
              if ((*(*a2 + 48))(a2, &v83))
              {
                result = mlir::FusedLoc::get(Context, *v89, *&v89[8], v83);
                goto LABEL_86;
              }

              break;
            }
          }

          else
          {
            *(*v89 + 8 * *&v89[8]) = v84;
            ++*&v89[8];
            if (++v26 >= v80)
            {
              goto LABEL_83;
            }
          }
        }

LABEL_85:
        result = 0;
LABEL_86:
        v29 = *v89;
        if (*v89 == &v89[16])
        {
          return result;
        }

        goto LABEL_166;
      case 14:
        *v89 = 0;
        *v86 = 0;
        if ((sub_10010FB18(a2, v89) & 1) == 0 || !sub_1001106D8(a2, v86))
        {
          return 0;
        }

        return mlir::NameLoc::get(*v89, *v86);
      case 15:
        return mlir::UnknownLoc::get(Context, v4);
      case 16:
        v84 = 0uLL;
        v7 = sub_100110B78(a2, &v84);
        result = 0;
        if (!v7)
        {
          return result;
        }

        sub_10011100C(a2, v89);
        if ((v90 & 1) == 0)
        {
          return 0;
        }

        *&v86[1] = *&v89[1];
        *&v86[16] = *&v89[16];
        v86[0] = v89[0];
        return mlir::DenseResourceElementsAttr::get(v84, *(&v84 + 1), v86);
      case 17:
        *v86 = 0;
        *&v84 = 0;
        *v89 = 0;
        *&v89[8] = 0;
        if (((*(*a2 + 64))(a2, v86) & 1) == 0 || ((*(*a2 + 72))(a2, &v84) & 1) == 0 || ((*(*a2 + 112))(a2, v89) & 1) == 0)
        {
          return 0;
        }

        return mlir::DenseArrayAttr::get(*v86, v84, *v89, *&v89[8]);
      case 18:
        *v89 = 0;
        *&v89[8] = 0;
        *v86 = 0uLL;
        if (!sub_100110B78(a2, v89) || ((*(*a2 + 112))(a2, v86) & 1) == 0)
        {
          return 0;
        }

        return mlir::DenseElementsAttr::getFromRawBuffer(*v89, *&v89[8], *v86, *&v86[8]);
      case 19:
        v84 = 0uLL;
        v80 = 0;
        *v89 = &v89[16];
        *&v89[8] = 0x300000000;
        if (!sub_100110B78(a2, &v84) || ((*(*a2 + 72))(a2, &v80) & 1) == 0)
        {
          goto LABEL_164;
        }

        *v86 = v84;
        if (v80)
        {
          NumElements = 1;
        }

        else
        {
          Shape = mlir::ShapedType::getShape(v86);
          NumElements = mlir::ShapedType::getNumElements(Shape, v66);
        }

        v67 = *&v89[8];
        if (NumElements != *&v89[8])
        {
          if (NumElements >= *&v89[8])
          {
            if (NumElements > *&v89[12])
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v89, &v89[16], NumElements, 16);
              v67 = *&v89[8];
            }

            if (NumElements != v67)
            {
              bzero((*v89 + 16 * v67), 16 * (NumElements - v67));
            }
          }

          LODWORD(v67) = NumElements;
          *&v89[8] = NumElements;
          NumElements = NumElements;
        }

        v68 = *v89;
        if (v67)
        {
          v69 = 16 * NumElements;
          do
          {
            if (((*(*a2 + 104))(a2, v68) & 1) == 0)
            {
              goto LABEL_164;
            }

            v68 += 16;
            v69 -= 16;
          }

          while (v69);
          v68 = *v89;
          v70 = *&v89[8];
        }

        else
        {
          v70 = 0;
        }

        result = mlir::DenseStringElementsAttr::get(v84, *(&v84 + 1), v68, v70);
        goto LABEL_165;
      case 20:
        *v89 = 0;
        *&v89[8] = 0;
        *v86 = 0;
        *&v84 = 0;
        if (!sub_100110B78(a2, v89) || !sub_1001112FC(a2, v86) || !sub_10011179C(a2, &v84))
        {
          return 0;
        }

        return mlir::SparseElementsAttr::get(*v89, *&v89[8], *v86, v84);
      case 21:
        *v89 = 0;
        v22 = (*(*a2 + 48))(a2, v89);
        result = 0;
        if (v22)
        {
          Storage = mlir::detail::DistinctAttributeUniquer::allocateStorage(Context, *v89);
          if ((atomic_load_explicit(&qword_1002C0668, memory_order_acquire) & 1) == 0)
          {
            sub_10027B35C();
          }

          v24 = mlir::AbstractAttribute::lookup(qword_1002C0660, Context);
          result = Storage;
          *Storage = v24;
        }

        return result;
      case 22:
        v80 = 0;
        *v89 = &v89[16];
        *&v89[8] = 0x600000000;
        v36 = sub_10010FB18(a2, &v80);
        result = 0;
        if ((v36 & 1) == 0)
        {
          goto LABEL_165;
        }

        *v86 = 0;
        if (((*(*a2 + 72))(a2, v86) & 1) == 0)
        {
          goto LABEL_164;
        }

        v37 = *v86;
        if (*v86 > *&v89[12])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v89, &v89[16], *v86, 8);
          v37 = *v86;
        }

        if (!v37)
        {
          goto LABEL_113;
        }

        v38 = 0;
        break;
      default:
        v88 = 257;
        (*(*a2 + 16))(v89, a2, v86);
        if (*v89)
        {
          LODWORD(v84) = 3;
          *(&v84 + 1) = "unknown attribute code: ";
          v85 = 24;
          v41 = &v84;
          v42 = v90;
          if (v91 >= v92)
          {
            if (v90 <= &v84 && v90 + 24 * v91 > &v84)
            {
              v74 = &v84 - v90;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
              v42 = v90;
              v41 = v90 + v74;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
              v41 = &v84;
              v42 = v90;
            }
          }

          v43 = &v42[24 * v91];
          v44 = *v41;
          *(v43 + 2) = *(v41 + 2);
          *v43 = v44;
          v45 = ++v91;
          if (*v89)
          {
            LODWORD(v84) = 5;
            *(&v84 + 1) = v78;
            v46 = &v84;
            v47 = v90;
            if (v45 >= v92)
            {
              if (v90 <= &v84 && v90 + 24 * v45 > &v84)
              {
                v75 = &v84 - v90;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v45 + 1, 24);
                v47 = v90;
                v46 = v90 + v75;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v45 + 1, 24);
                v46 = &v84;
                v47 = v90;
              }
            }

            v48 = &v47[24 * v91];
            v49 = *v46;
            *(v48 + 2) = *(v46 + 2);
            *v48 = v49;
            ++v91;
            if (*v89)
            {
              mlir::InFlightDiagnostic::report(v89);
            }
          }
        }

        if (v99 == 1)
        {
          sub_100052F18(&v89[8]);
        }

        return 0;
    }

    do
    {
      while (1)
      {
        *&v84 = 0;
        if (((*(*a2 + 72))(a2, &v84) & 1) == 0)
        {
LABEL_164:
          result = 0;
          goto LABEL_165;
        }

        v39 = *&v89[8];
        if (*&v89[8] >= *&v89[12])
        {
          break;
        }

        *(*v89 + 8 * *&v89[8]) = v84;
        *&v89[8] = v39 + 1;
        if (++v38 >= *v86)
        {
          goto LABEL_113;
        }
      }

      sub_1000AC328(v89, &v84);
      ++v38;
    }

    while (v38 < *v86);
LABEL_113:
    result = 0;
    if (*&v89[8] <= 1)
    {
      if (*&v89[8])
      {
        if (*&v89[8] == 1)
        {
          result = mlir::FileLineColRange::get(v80, **v89);
        }
      }

      else
      {
        result = mlir::FileLineColRange::get(v80);
      }
    }

    else
    {
      switch(*&v89[8])
      {
        case 2:
          result = mlir::FileLineColRange::get(v80, **v89, *(*v89 + 8));
          break;
        case 3:
          result = mlir::FileLineColRange::get(v80, **v89, *(*v89 + 8), *(*v89 + 16));
          break;
        case 4:
          result = mlir::FileLineColRange::get(v80, **v89, *(*v89 + 8), *(*v89 + 16), *(*v89 + 24));
          break;
      }
    }

LABEL_165:
    v29 = *v89;
    if (*v89 != &v89[16])
    {
LABEL_166:
      v71 = result;
      free(v29);
      return v71;
    }
  }

  return result;
}

uint64_t sub_10010C8F0(mlir::DialectInterface *a1, _WORD *a2)
{
  Context = mlir::DialectInterface::getContext(a1);
  v69 = 0;
  v5 = (*(*a2 + 72))(a2, &v69);
  result = 0;
  if (v5)
  {
    switch(v69)
    {
      case 0uLL:
        v73 = 0;
        v7 = (*(*a2 + 72))(a2, &v73);
        result = 0;
        if (v7)
        {
          return mlir::IntegerType::get(Context, v73 >> 2, v73 & 3);
        }

        return result;
      case 1uLL:
        return mlir::IndexType::get(Context, v4);
      case 2uLL:
        v73 = &v74[1];
        v74[0] = 0x600000000;
        v80 = v82;
        v81 = 0x600000000;
        v83 = a2;
        if (sub_100111D3C(a2, &v73, &v83) & 1) != 0 && (v83 = a2, (sub_100111D3C(a2, &v80, &v83)))
        {
          mlir::TypeRange::TypeRange(&v83, v73, LODWORD(v74[0]));
          mlir::TypeRange::TypeRange(v79, v80, v81);
          result = mlir::FunctionType::get(Context, v83, v84, v79[0], v79[1]);
        }

        else
        {
          result = 0;
        }

        if (v80 != v82)
        {
          v66 = result;
          free(v80);
          result = v66;
        }

        goto LABEL_154;
      case 3uLL:
        return mlir::BFloat16Type::get(Context, v4);
      case 4uLL:
        return mlir::Float16Type::get(Context, v4);
      case 5uLL:
        return mlir::Float32Type::get(Context, v4);
      case 6uLL:
        return mlir::Float64Type::get(Context, v4);
      case 7uLL:
        return mlir::Float80Type::get(Context, v4);
      case 8uLL:
        return mlir::Float128Type::get(Context, v4);
      case 9uLL:
        v73 = 0;
        v26 = (*(*a2 + 64))(a2, &v73);
        result = 0;
        if (v26)
        {
          return mlir::ComplexType::get(v73);
        }

        return result;
      case 0xAuLL:
        v9 = &v74[1];
        v72 = 0;
        v73 = &v74[1];
        v74[0] = 0x600000000;
        v71 = 0;
        v83 = 0;
        v84 = 0;
        if (((*(*a2 + 72))(a2, &v72) & 1) == 0)
        {
          goto LABEL_144;
        }

        v53 = v72;
        if (v72 > HIDWORD(v74[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, &v74[1], v72, 8);
          v53 = v72;
        }

        if (!v53)
        {
          goto LABEL_124;
        }

        v54 = 0;
        while (1)
        {
          v79[0] = 0;
          v55 = (*(*a2 + 80))(a2, v79);
          v56 = (v55 & 1) != 0 ? v79[0] : 0;
          v80 = v56;
          LOBYTE(v81) = v55 & 1;
          if ((v55 & 1) == 0)
          {
            goto LABEL_144;
          }

          v57 = v74[0];
          if (LODWORD(v74[0]) >= HIDWORD(v74[0]))
          {
            sub_1000AC328(&v73, &v80);
            if (++v54 >= v72)
            {
LABEL_124:
              if (((*(*a2 + 64))(a2, &v71) & 1) != 0 && sub_100111E6C(a2, &v83))
              {
                v20 = v73;
                v21 = LODWORD(v74[0]);
                v22 = v71;
                v24 = v83;
                v25 = v84;
                v23 = 0;
                goto LABEL_127;
              }

              goto LABEL_144;
            }
          }

          else
          {
            *(v73 + LODWORD(v74[0])) = v79[0];
            LODWORD(v74[0]) = v57 + 1;
            if (++v54 >= v72)
            {
              goto LABEL_124;
            }
          }
        }

      case 0xBuLL:
        v70 = 0;
        v71 = 0;
        v9 = &v74[1];
        v73 = &v74[1];
        v74[0] = 0x600000000;
        v83 = 0;
        v84 = 0;
        if (((*(*a2 + 48))(a2, &v71) & 1) == 0)
        {
          goto LABEL_144;
        }

        v72 = 0;
        if (((*(*a2 + 72))(a2, &v72) & 1) == 0)
        {
          goto LABEL_144;
        }

        v15 = v72;
        if (v72 > HIDWORD(v74[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, &v74[1], v72, 8);
          v15 = v72;
        }

        if (!v15)
        {
          goto LABEL_37;
        }

        v16 = 0;
        while (1)
        {
          v79[0] = 0;
          v17 = (*(*a2 + 80))(a2, v79);
          v18 = (v17 & 1) != 0 ? v79[0] : 0;
          v80 = v18;
          LOBYTE(v81) = v17 & 1;
          if ((v17 & 1) == 0)
          {
            goto LABEL_144;
          }

          v19 = v74[0];
          if (LODWORD(v74[0]) >= HIDWORD(v74[0]))
          {
            sub_1000AC328(&v73, &v80);
            if (++v16 >= v72)
            {
LABEL_37:
              if (((*(*a2 + 64))(a2, &v70) & 1) == 0 || !sub_100111E6C(a2, &v83))
              {
                goto LABEL_144;
              }

              v20 = v73;
              v21 = LODWORD(v74[0]);
              v22 = v70;
              v23 = v71;
              v24 = v83;
              v25 = v84;
LABEL_127:
              result = mlir::MemRefType::get(v20, v21, v22, v24, v25, v23);
              goto LABEL_145;
            }
          }

          else
          {
            *(v73 + LODWORD(v74[0])) = v79[0];
            LODWORD(v74[0]) = v19 + 1;
            if (++v16 >= v72)
            {
              goto LABEL_37;
            }
          }
        }

      case 0xCuLL:
        return mlir::NoneType::get(Context, v4);
      case 0xDuLL:
        v9 = &v74[1];
        v72 = 0;
        v73 = &v74[1];
        v74[0] = 0x600000000;
        v79[0] = 0;
        if (((*(*a2 + 72))(a2, v79) & 1) == 0)
        {
          goto LABEL_144;
        }

        v47 = v79[0];
        if (v79[0] > HIDWORD(v74[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, &v74[1], v79[0], 8);
          v47 = v79[0];
        }

        if (!v47)
        {
          goto LABEL_106;
        }

        v48 = 0;
        while (1)
        {
          v83 = 0;
          v49 = (*(*a2 + 80))(a2, &v83);
          v50 = (v49 & 1) != 0 ? v83 : 0;
          v80 = v50;
          LOBYTE(v81) = v49 & 1;
          if ((v49 & 1) == 0)
          {
            goto LABEL_144;
          }

          v51 = v74[0];
          if (LODWORD(v74[0]) >= HIDWORD(v74[0]))
          {
            sub_1000AC328(&v73, &v80);
            if (++v48 >= v79[0])
            {
LABEL_106:
              if (((*(*a2 + 64))(a2, &v72) & 1) == 0)
              {
                goto LABEL_144;
              }

              result = mlir::RankedTensorType::get(v73, LODWORD(v74[0]), v72, 0);
              goto LABEL_145;
            }
          }

          else
          {
            *(v73 + LODWORD(v74[0])) = v83;
            LODWORD(v74[0]) = v51 + 1;
            if (++v48 >= v79[0])
            {
              goto LABEL_106;
            }
          }
        }

      case 0xEuLL:
        v9 = &v74[1];
        v72 = 0;
        v73 = &v74[1];
        v74[0] = 0x600000000;
        v71 = 0;
        if (((*(*a2 + 48))(a2, &v72) & 1) == 0)
        {
          goto LABEL_144;
        }

        v79[0] = 0;
        if (((*(*a2 + 72))(a2, v79) & 1) == 0)
        {
          goto LABEL_144;
        }

        v10 = v79[0];
        if (v79[0] > HIDWORD(v74[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, &v74[1], v79[0], 8);
          v10 = v79[0];
        }

        if (!v10)
        {
          goto LABEL_21;
        }

        v11 = 0;
        while (1)
        {
          v83 = 0;
          v12 = (*(*a2 + 80))(a2, &v83);
          v13 = (v12 & 1) != 0 ? v83 : 0;
          v80 = v13;
          LOBYTE(v81) = v12 & 1;
          if ((v12 & 1) == 0)
          {
            goto LABEL_144;
          }

          v14 = v74[0];
          if (LODWORD(v74[0]) >= HIDWORD(v74[0]))
          {
            sub_1000AC328(&v73, &v80);
            if (++v11 >= v79[0])
            {
LABEL_21:
              if (((*(*a2 + 64))(a2, &v71) & 1) == 0)
              {
                goto LABEL_144;
              }

              result = mlir::RankedTensorType::get(v73, LODWORD(v74[0]), v71, v72);
              goto LABEL_145;
            }
          }

          else
          {
            *(v73 + LODWORD(v74[0])) = v83;
            LODWORD(v74[0]) = v14 + 1;
            if (++v11 >= v79[0])
            {
              goto LABEL_21;
            }
          }
        }

      case 0xFuLL:
        v73 = &v74[1];
        v74[0] = 0x600000000;
        v80 = a2;
        if (sub_100111D3C(a2, &v73, &v80))
        {
          mlir::TypeRange::TypeRange(&v80, v73, LODWORD(v74[0]));
          result = mlir::TupleType::get(Context, v80, v81);
        }

        else
        {
          result = 0;
        }

LABEL_154:
        v63 = v73;
        if (v73 == &v74[1])
        {
          return result;
        }

        goto LABEL_146;
      case 0x10uLL:
        v73 = 0;
        v8 = (*(*a2 + 64))(a2, &v73);
        result = 0;
        if (v8)
        {
          return mlir::UnrankedMemRefType::get(v73, 0);
        }

        return result;
      case 0x11uLL:
        v73 = 0;
        v80 = 0;
        if (((*(*a2 + 48))(a2, &v73) & 1) == 0 || ((*(*a2 + 64))(a2, &v80) & 1) == 0)
        {
          return 0;
        }

        return mlir::UnrankedMemRefType::get(v80, v73);
      case 0x12uLL:
        v73 = 0;
        v52 = (*(*a2 + 64))(a2, &v73);
        result = 0;
        if (v52)
        {
          return mlir::UnrankedTensorType::get(v73);
        }

        return result;
      case 0x13uLL:
        v9 = &v74[1];
        v72 = 0;
        v73 = &v74[1];
        v74[0] = 0x600000000;
        v79[0] = 0;
        if (((*(*a2 + 72))(a2, v79) & 1) == 0)
        {
          goto LABEL_144;
        }

        v58 = v79[0];
        if (v79[0] > HIDWORD(v74[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, &v74[1], v79[0], 8);
          v58 = v79[0];
        }

        if (!v58)
        {
          goto LABEL_142;
        }

        v59 = 0;
        while (1)
        {
          v83 = 0;
          v60 = (*(*a2 + 80))(a2, &v83);
          v61 = (v60 & 1) != 0 ? v83 : 0;
          v80 = v61;
          LOBYTE(v81) = v60 & 1;
          if ((v60 & 1) == 0)
          {
            break;
          }

          v62 = v74[0];
          if (LODWORD(v74[0]) >= HIDWORD(v74[0]))
          {
            sub_1000AC328(&v73, &v80);
            if (++v59 >= v79[0])
            {
LABEL_142:
              if ((*(*a2 + 64))(a2, &v72))
              {
                result = mlir::VectorType::get(v73, LODWORD(v74[0]), v72, 0, 0);
                goto LABEL_145;
              }

              break;
            }
          }

          else
          {
            *(v73 + LODWORD(v74[0])) = v83;
            LODWORD(v74[0]) = v62 + 1;
            if (++v59 >= v79[0])
            {
              goto LABEL_142;
            }
          }
        }

LABEL_144:
        result = 0;
        goto LABEL_145;
      case 0x14uLL:
        v9 = &v75;
        v73 = &v75;
        *v74 = xmmword_10028F060;
        v80 = v82;
        v81 = 0x600000000;
        v71 = 0;
        v83 = 0;
        if (((*(*a2 + 72))(a2, &v83) & 1) == 0)
        {
          goto LABEL_148;
        }

        v27 = v83;
        if (v74[1] < v83)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&v73, &v75, v83, 1);
          v27 = v83;
        }

        if (!v27)
        {
          goto LABEL_67;
        }

        v28 = 0;
        break;
      default:
        v82[8] = 257;
        (*(*a2 + 16))(&v73, a2, &v80);
        if (v73)
        {
          LODWORD(v83) = 3;
          v84 = "unknown attribute code: ";
          v85 = 24;
          v38 = &v83;
          v39 = v75;
          if (v76 >= v77)
          {
            if (v75 <= &v83 && v75 + 24 * v76 > &v83)
            {
              v67 = &v83 - v75;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
              v39 = v75;
              v38 = &v67[v75];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
              v38 = &v83;
              v39 = v75;
            }
          }

          v40 = v39 + 24 * v76;
          v41 = *v38;
          *(v40 + 16) = v38[2];
          *v40 = v41;
          v42 = ++v76;
          if (v73)
          {
            LODWORD(v83) = 5;
            v84 = v69;
            v43 = &v83;
            v44 = v75;
            if (v42 >= v77)
            {
              if (v75 <= &v83 && v75 + 24 * v42 > &v83)
              {
                v68 = &v83 - v75;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v42 + 1, 24);
                v44 = v75;
                v43 = &v68[v75];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v42 + 1, 24);
                v43 = &v83;
                v44 = v75;
              }
            }

            v45 = v44 + 24 * v76;
            v46 = *v43;
            *(v45 + 16) = v43[2];
            *v45 = v46;
            ++v76;
            if (v73)
            {
              mlir::InFlightDiagnostic::report(&v73);
            }
          }
        }

        if (v78[160] == 1)
        {
          sub_100052F18(v74);
        }

        return 0;
    }

    while (1)
    {
      LOBYTE(v72) = 0;
      v29 = (*(*a2 + 120))(a2, &v72);
      v30 = v72;
      if ((v29 & 1) == 0)
      {
        v30 = 0;
      }

      LOWORD(v79[0]) = v30 | ((v29 & 1) << 8);
      if ((v29 & 1) == 0)
      {
        break;
      }

      v31 = v74[0];
      if (v74[0] >= v74[1])
      {
        sub_1000DBF40(&v73, v79);
        if (++v28 >= v83)
        {
LABEL_67:
          v72 = 0;
          if ((*(*a2 + 72))(a2, &v72))
          {
            v32 = v72;
            if (v72 > HIDWORD(v81))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v82, v72, 8);
              v32 = v72;
            }

            if (v32)
            {
              v33 = 0;
              while (1)
              {
                v79[0] = 0;
                v34 = (*(*a2 + 80))(a2, v79);
                v35 = (v34 & 1) != 0 ? v79[0] : 0;
                v83 = v35;
                LOBYTE(v84) = v34 & 1;
                if ((v34 & 1) == 0)
                {
                  break;
                }

                v36 = v81;
                if (v81 >= HIDWORD(v81))
                {
                  sub_1000AC328(&v80, &v83);
                  if (++v33 >= v72)
                  {
                    goto LABEL_80;
                  }
                }

                else
                {
                  *&v80[4 * v81] = v79[0];
                  LODWORD(v81) = v36 + 1;
                  if (++v33 >= v72)
                  {
                    goto LABEL_80;
                  }
                }
              }
            }

            else
            {
LABEL_80:
              if ((*(*a2 + 64))(a2, &v71))
              {
                result = mlir::VectorType::get(v80, v81, v71, v73, v74[0]);
                v37 = v80;
                if (v80 == v82)
                {
                  goto LABEL_145;
                }

                goto LABEL_149;
              }
            }
          }

          break;
        }
      }

      else
      {
        *(v73 + v74[0]) = v30;
        v74[0] = v31 + 1;
        if (++v28 >= v83)
        {
          goto LABEL_67;
        }
      }
    }

LABEL_148:
    result = 0;
    v37 = v80;
    if (v80 == v82)
    {
      goto LABEL_145;
    }

LABEL_149:
    v65 = result;
    free(v37);
    result = v65;
LABEL_145:
    v63 = v73;
    if (v73 != v9)
    {
LABEL_146:
      v64 = result;
      free(v63);
      return v64;
    }
  }

  return result;
}

uint64_t sub_10010D900(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v88.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 0);
    Value = mlir::ArrayAttr::getValue(&v88);
    v12 = v11;
    (*(*a3 + 48))(a3);
    if (v12)
    {
      v13 = 8 * v12;
      do
      {
        v14 = *Value++;
        (*(*a3 + 16))(a3, v14);
        v13 -= 8;
      }

      while (v13);
    }

    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id)
  {
    v88.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 10);
    Callee = mlir::CallSiteLoc::getCallee(&v88);
    (*(*a3 + 16))(a3, Callee);
    Caller = mlir::CallSiteLoc::getCaller(&v88);
    goto LABEL_33;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v88.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 17);
    ElementType = mlir::DenseArrayAttr::getElementType(&v88);
    (*(*a3 + 32))(a3, ElementType);
    Size = mlir::DenseArrayAttr::getSize(&v88);
    (*(*a3 + 48))(a3, Size);
    RawData = mlir::DenseArrayAttr::getRawData(&v88);
LABEL_36:
    (*(*a3 + 88))(a3, RawData, v20);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
  {
    v88.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 18);
    Type = mlir::DenseElementsAttr::getType(&v88);
    (*(*a3 + 32))(a3, Type);
    RawData = mlir::DenseElementsAttr::getRawData(&v88);
    goto LABEL_36;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
  {
    v87 = a2;
    (*(*a3 + 48))(a3, 16);
    v22 = mlir::DenseResourceElementsAttr::getType(&v87);
    (*(*a3 + 32))(a3, v22);
    RawHandle = mlir::DenseResourceElementsAttr::getRawHandle(&v87, &v88);
    (*(*a3 + 40))(a3, &v88, RawHandle);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
  {
    v87 = a2;
    (*(*a3 + 48))(a3, 19);
    v24 = mlir::DenseElementsAttr::getType(&v87);
    (*(*a3 + 32))(a3, v24);
    isSplat = mlir::DenseElementsAttr::isSplat(&v87);
    (*(*a3 + 48))(a3, isSplat);
    v88.n128_u64[0] = v87;
    v26 = mlir::DenseElementsAttr::isSplat(&v88);
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v88);
    v29 = RawStringData;
    if (v26)
    {
      (*(*a3 + 80))(a3, *RawStringData, RawStringData[1]);
    }

    else if (v28)
    {
      v36 = &RawStringData[2 * v28];
      do
      {
        v37 = *v29;
        v38 = v29[1];
        v29 += 2;
        (*(*a3 + 80))(a3, v37, v38);
      }

      while (v29 != v36);
    }

    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v87 = a2;
    (*(*a3 + 48))(a3, 1);
    v30 = mlir::DictionaryAttr::getValue(&v87);
    v32 = v31;
    (*(*a3 + 48))(a3);
    if (v32)
    {
      v33 = 16 * v32;
      do
      {
        v34 = *v30++;
        v88 = v34;
        Name = mlir::NamedAttribute::getName(&v88);
        (*(*a3 + 16))(a3, Name);
        (*(*a3 + 16))(a3, v88.n128_u64[1]);
        v33 -= 16;
      }

      while (v33);
    }

    return 1;
  }

  if (atomic_load_explicit(&qword_1002C0668, memory_order_acquire))
  {
    if (v4 != qword_1002C0660)
    {
      goto LABEL_10;
    }

LABEL_98:
    v88.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 21);
    Caller = mlir::DistinctAttr::getReferencedAttr(&v88);
    goto LABEL_33;
  }

  v86 = a2;
  sub_10027EF08();
  a2 = v86;
  if (v4 == qword_1002C0660)
  {
    goto LABEL_98;
  }

LABEL_10:
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id)
  {
    v87 = a2;
    v39 = a2;
    isStrictFileLineColLoc = mlir::isStrictFileLineColLoc(a2);
    v41 = v39;
    if (isStrictFileLineColLoc)
    {
      (*(*a3 + 48))(a3, 11);
      Filename = mlir::FileLineColRange::getFilename(&v87);
      (*(*a3 + 16))(a3, Filename);
      StartLine = mlir::FileLineColRange::getStartLine(&v87);
      (*(*a3 + 48))(a3, StartLine);
      StartColumn = mlir::FileLineColRange::getStartColumn(&v87);
      (*(*a3 + 48))(a3, StartColumn);
      v41 = v87;
    }

    if (!mlir::isStrictFileLineColLoc(v41))
    {
      (*(*a3 + 48))(a3, 22);
      v45 = mlir::FileLineColRange::getFilename(&v87);
      (*(*a3 + 16))(a3, v45);
      v88.n128_u64[0] = v87;
      if (mlir::FileLineColRange::getStartLine(&v88) || mlir::FileLineColRange::getStartColumn(&v88) || mlir::FileLineColRange::getEndLine(&v88) || (v46 = mlir::FileLineColRange::getEndColumn(&v88)) != 0)
      {
        if (mlir::FileLineColRange::getStartColumn(&v88) || (v47 = mlir::FileLineColRange::getStartLine(&v88), v47 != mlir::FileLineColRange::getEndLine(&v88)))
        {
          EndColumn = mlir::FileLineColRange::getEndColumn(&v88);
          if (EndColumn == mlir::FileLineColRange::getStartColumn(&v88) && (v52 = mlir::FileLineColRange::getStartLine(&v88), v52 == mlir::FileLineColRange::getEndLine(&v88)))
          {
            (*(*a3 + 48))(a3, 2);
            v53 = mlir::FileLineColRange::getStartLine(&v88);
            (*(*a3 + 48))(a3, v53);
            v46 = mlir::FileLineColRange::getStartColumn(&v88);
          }

          else
          {
            v64 = mlir::FileLineColRange::getStartLine(&v88);
            EndLine = mlir::FileLineColRange::getEndLine(&v88);
            v66 = *(*a3 + 48);
            if (v64 == EndLine)
            {
              v66(a3, 3);
              v67 = mlir::FileLineColRange::getStartLine(&v88);
              (*(*a3 + 48))(a3, v67);
              v68 = mlir::FileLineColRange::getStartColumn(&v88);
            }

            else
            {
              v66(a3, 4);
              v70 = mlir::FileLineColRange::getStartLine(&v88);
              (*(*a3 + 48))(a3, v70);
              v71 = mlir::FileLineColRange::getStartColumn(&v88);
              (*(*a3 + 48))(a3, v71);
              v68 = mlir::FileLineColRange::getEndLine(&v88);
            }

            (*(*a3 + 48))(a3, v68);
            v46 = mlir::FileLineColRange::getEndColumn(&v88);
          }
        }

        else
        {
          (*(*a3 + 48))(a3, 1);
          v46 = mlir::FileLineColRange::getStartLine(&v88);
        }
      }

      (*(*a3 + 48))(a3, v46);
    }

    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v88.n128_u64[0] = v6;
  if (v6)
  {
    v7 = a2;
    mlir::SymbolRefAttr::getNestedReferences(&v88);
    if (v8)
    {
      a2 = v7;
      v5 = *(*v7 + 136);
      goto LABEL_17;
    }

    v88.n128_u64[0] = v7;
    (*(*a3 + 48))(a3, 4);
    Caller = mlir::SymbolRefAttr::getRootReference(&v88);
LABEL_33:
    (*(*a3 + 16))(a3, Caller);
    return 1;
  }

LABEL_17:
  if (v5 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v87 = a2;
    (*(*a3 + 48))(a3, 9);
    v48 = mlir::FloatAttr::getType(&v87);
    (*(*a3 + 32))(a3, v48);
    mlir::FloatAttr::getValue(&v87, &v88);
    v49 = (*(*a3 + 72))(a3, &v88);
    v50 = v88.n128_u64[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v49) == v50)
    {
      sub_100029F40(&v88);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v88);
    }

    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
  {
    v88.n128_u64[0] = a2;
    if (!mlir::FusedLoc::getMetadata(&v88))
    {
      (*(*a3 + 48))(a3, 12);
      Locations = mlir::FusedLoc::getLocations(&v88);
      v56 = v55;
      (*(*a3 + 48))(a3);
      if (v56)
      {
        v57 = 8 * v56;
        do
        {
          v58 = *Locations++;
          (*(*a3 + 16))(a3, v58);
          v57 -= 8;
        }

        while (v57);
      }
    }

    if (!mlir::FusedLoc::getMetadata(&v88))
    {
      return 1;
    }

    (*(*a3 + 48))(a3, 13);
    v59 = mlir::FusedLoc::getLocations(&v88);
    v61 = v60;
    (*(*a3 + 48))(a3);
    if (v61)
    {
      v62 = 8 * v61;
      do
      {
        v63 = *v59++;
        (*(*a3 + 16))(a3, v63);
        v62 -= 8;
      }

      while (v62);
    }

    Caller = mlir::FusedLoc::getMetadata(&v88);
    goto LABEL_33;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v87 = a2;
    (*(*a3 + 48))(a3, 8);
    v69 = mlir::IntegerAttr::getType(&v87);
    (*(*a3 + 32))(a3, v69);
    mlir::IntegerAttr::getValue(&v87, &v88);
    (*(*a3 + 64))(a3, &v88);
    if (v88.n128_u32[2] >= 0x41 && v88.n128_u64[0])
    {
      operator delete[]();
    }

    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
  {
    v88.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 14);
    v72 = mlir::NameLoc::getName(&v88);
    (*(*a3 + 16))(a3, v72);
    Caller = mlir::NameLoc::getChildLoc(&v88);
    goto LABEL_33;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id)
  {
    v88.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 20);
    v73 = mlir::SparseElementsAttr::getType(&v88);
    (*(*a3 + 32))(a3, v73);
    Indices = mlir::SparseElementsAttr::getIndices(&v88);
    (*(*a3 + 16))(a3, Indices);
    Caller = mlir::SparseElementsAttr::getValues(&v88);
    goto LABEL_33;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v88.n128_u64[0] = a2;
    if (*(*mlir::StringAttr::getType(&v88) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
    {
      (*(*a3 + 48))(a3, 2);
      v75 = mlir::StringAttr::getValue(&v88);
      (*(*a3 + 80))(a3, v75, v76);
    }

    if (*(*mlir::StringAttr::getType(&v88) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
    {
      return 1;
    }

    (*(*a3 + 48))(a3, 3);
    v77 = mlir::StringAttr::getValue(&v88);
    (*(*a3 + 80))(a3, v77, v78);
    v79 = mlir::StringAttr::getType(&v88);
    goto LABEL_94;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v88.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 5);
    RootReference = mlir::SymbolRefAttr::getRootReference(&v88);
    (*(*a3 + 16))(a3, RootReference);
    NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v88);
    v83 = v82;
    (*(*a3 + 48))(a3);
    if (v83)
    {
      v84 = 8 * v83;
      do
      {
        v85 = *NestedReferences++;
        (*(*a3 + 16))(a3, v85);
        v84 -= 8;
      }

      while (v84);
    }

    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v88.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 6);
    v79 = mlir::TypeAttr::getValue(&v88);
LABEL_94:
    (*(*a3 + 32))(a3, v79);
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    (*(*a3 + 48))(a3, 7);
  }

  else
  {
    if (v5 != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
    {
      return 0;
    }

    (*(*a3 + 48))(a3, 15);
  }

  return 1;
}

uint64_t sub_10010EB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    (*(*a3 + 48))(a3, 3);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v76 = a2;
    (*(*a3 + 48))(a3, 9);
    ElementType = mlir::ComplexType::getElementType(&v76);
LABEL_21:
    (*(*a3 + 32))(a3, ElementType);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    (*(*a3 + 48))(a3, 8);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
  {
    (*(*a3 + 48))(a3, 4);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    (*(*a3 + 48))(a3, 5);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    (*(*a3 + 48))(a3, 6);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
  {
    (*(*a3 + 48))(a3, 7);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v76 = a2;
    (*(*a3 + 48))(a3, 2);
    Inputs = mlir::FunctionType::getInputs(&v76);
    v9 = v8;
    (*(*a3 + 48))(a3);
    if (v9)
    {
      v10 = 8 * v9;
      do
      {
        v11 = *Inputs++;
        (*(*a3 + 32))(a3, v11);
        v10 -= 8;
      }

      while (v10);
    }

    Results = mlir::FunctionType::getResults(&v76);
    v14 = v13;
    (*(*a3 + 48))(a3);
    if (v14)
    {
      v15 = 8 * v14;
      do
      {
        v16 = *Results++;
        (*(*a3 + 32))(a3, v16);
        v15 -= 8;
      }

      while (v15);
    }

    return 1;
  }

  if (v4 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    if (v4 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v76 = a2;
      (*(*a3 + 48))(a3, 0);
      Width = mlir::IntegerType::getWidth(&v76);
      v18 = mlir::IntegerType::getSignedness(&v76) | (4 * Width);
      (*(*a3 + 48))(a3, v18);
      return 1;
    }

    if (v4 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v76 = a2;
      if (!mlir::MemRefType::getMemorySpace(&v76))
      {
        (*(*a3 + 48))(a3, 10);
        Shape = mlir::MemRefType::getShape(&v76);
        v21 = v20;
        (*(*a3 + 48))(a3);
        if (v21)
        {
          v22 = 8 * v21;
          do
          {
            v23 = *Shape++;
            (*(*a3 + 56))(a3, v23);
            v22 -= 8;
          }

          while (v22);
        }

        v24 = mlir::MemRefType::getElementType(&v76);
        (*(*a3 + 32))(a3, v24);
        Layout = mlir::MemRefType::getLayout(&v76);
        (*(*a3 + 16))(a3, Layout);
      }

      if (mlir::MemRefType::getMemorySpace(&v76))
      {
        (*(*a3 + 48))(a3, 11);
        MemorySpace = mlir::MemRefType::getMemorySpace(&v76);
        (*(*a3 + 16))(a3, MemorySpace);
        v27 = mlir::MemRefType::getShape(&v76);
        v29 = v28;
        (*(*a3 + 48))(a3);
        if (v29)
        {
          v30 = 8 * v29;
          do
          {
            v31 = *v27++;
            (*(*a3 + 56))(a3, v31);
            v30 -= 8;
          }

          while (v30);
        }

        v32 = mlir::MemRefType::getElementType(&v76);
        (*(*a3 + 32))(a3, v32);
        v33 = mlir::MemRefType::getLayout(&v76);
        (*(*a3 + 16))(a3, v33);
      }

      return 1;
    }

    if (v4 == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
    {
      (*(*a3 + 48))(a3, 12);
      return 1;
    }

    if (v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v76 = a2;
      if (!mlir::RankedTensorType::getEncoding(&v76))
      {
        (*(*a3 + 48))(a3, 13);
        v34 = mlir::RankedTensorType::getShape(&v76);
        v36 = v35;
        (*(*a3 + 48))(a3);
        if (v36)
        {
          v37 = 8 * v36;
          do
          {
            v38 = *v34++;
            (*(*a3 + 56))(a3, v38);
            v37 -= 8;
          }

          while (v37);
        }

        v39 = mlir::RankedTensorType::getElementType(&v76);
        (*(*a3 + 32))(a3, v39);
      }

      if (!mlir::RankedTensorType::getEncoding(&v76))
      {
        return 1;
      }

      (*(*a3 + 48))(a3, 14);
      Encoding = mlir::RankedTensorType::getEncoding(&v76);
      (*(*a3 + 16))(a3, Encoding);
      v41 = mlir::RankedTensorType::getShape(&v76);
      v43 = v42;
      (*(*a3 + 48))(a3);
      if (v43)
      {
        v44 = 8 * v43;
        do
        {
          v45 = *v41++;
          (*(*a3 + 56))(a3, v45);
          v44 -= 8;
        }

        while (v44);
      }

      ElementType = mlir::RankedTensorType::getElementType(&v76);
    }

    else
    {
      if (v4 == &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id)
      {
        v76 = a2;
        (*(*a3 + 48))(a3, 15);
        Types = mlir::TupleType::getTypes(&v76);
        v48 = v47;
        (*(*a3 + 48))(a3);
        if (v48)
        {
          v49 = 8 * v48;
          do
          {
            v50 = *Types++;
            (*(*a3 + 32))(a3, v50);
            v49 -= 8;
          }

          while (v49);
        }

        return 1;
      }

      if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
      {
        v76 = a2;
        if (!mlir::UnrankedMemRefType::getMemorySpace(&v76))
        {
          (*(*a3 + 48))(a3, 16);
          v51 = mlir::UnrankedMemRefType::getElementType(&v76);
          (*(*a3 + 32))(a3, v51);
        }

        if (!mlir::UnrankedMemRefType::getMemorySpace(&v76))
        {
          return 1;
        }

        (*(*a3 + 48))(a3, 17);
        v52 = mlir::UnrankedMemRefType::getMemorySpace(&v76);
        (*(*a3 + 16))(a3, v52);
        ElementType = mlir::UnrankedMemRefType::getElementType(&v76);
      }

      else if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v76 = a2;
        (*(*a3 + 48))(a3, 18);
        ElementType = mlir::UnrankedTensorType::getElementType(&v76);
      }

      else
      {
        if (v4 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
        {
          return 0;
        }

        v76 = a2;
        ScalableDims = mlir::VectorType::getScalableDims(&v76);
        v55 = v54;
        v56 = memchr(ScalableDims, 1, v54);
        if (!v56 || v56 == &ScalableDims[v55])
        {
          (*(*a3 + 48))(a3, 19);
          v57 = mlir::VectorType::getShape(&v76);
          v59 = v58;
          (*(*a3 + 48))(a3);
          if (v59)
          {
            v60 = 8 * v59;
            do
            {
              v61 = *v57++;
              (*(*a3 + 56))(a3, v61);
              v60 -= 8;
            }

            while (v60);
          }

          v62 = mlir::VectorType::getElementType(&v76);
          (*(*a3 + 32))(a3, v62);
        }

        v63 = mlir::VectorType::getScalableDims(&v76);
        v65 = v64;
        v66 = memchr(v63, 1, v64);
        if (!v66 || v66 == &v63[v65])
        {
          return 1;
        }

        (*(*a3 + 48))(a3, 20);
        v67 = mlir::VectorType::getScalableDims(&v76);
        v69 = v68;
        (*(*a3 + 48))(a3);
        for (; v69; --v69)
        {
          v70 = *v67++;
          (*(*a3 + 96))(a3, v70);
        }

        v71 = mlir::VectorType::getShape(&v76);
        v73 = v72;
        (*(*a3 + 48))(a3);
        if (v73)
        {
          v74 = 8 * v73;
          do
          {
            v75 = *v71++;
            (*(*a3 + 56))(a3, v75);
            v74 -= 8;
          }

          while (v74);
        }

        ElementType = mlir::VectorType::getElementType(&v76);
      }
    }

    goto LABEL_21;
  }

  (*(*a3 + 48))(a3, 1);
  return 1;
}