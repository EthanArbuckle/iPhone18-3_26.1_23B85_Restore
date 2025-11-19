void sub_105F288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_49CAC(&a29);
  _Unwind_Resume(a1);
}

void *sub_105F2B4(void *a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          do
          {
            v6 = *v5;
            operator delete(v5);
            v5 = v6;
          }

          while (v6);
        }

        v8 = *(v3 - 5);
        v3 -= 5;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          operator delete(v7);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_105F33C(uint64_t a1, uint64_t a2, unsigned int *a3, int a4, char a5)
{
  if (a2 && (v10 = sub_101E790(*(a1 + 24), a2, 1)) != 0 && (v11 = &v10[-*v10], *v11 >= 9u) && (v12 = *(v11 + 4)) != 0 && (v13 = sub_101E640(&v10[v12 + *&v10[v12]], HIDWORD(a2)), v14 = (v13 - *v13), *v14 >= 5u) && (v15 = v14[2]) != 0 && *(v13 + v15) && ((v45 = *(a1 + 16), v46 = *(a1 + 18), v47 = *(a1 + 8), v48 = *(a1 + 112), v16 = sub_10AC56C(), !sub_394BD0()) ? (v17 = 0x7FFFFFFF) : (v17 = a4), (v18 = sub_394BD0(), v19 = *a3, !v18) ? (v20 = 0x7FFFFFFF) : (v20 = a4), (v57 = a2, v58 = __PAIR64__(v16, v19), v59 = v17, v60 = v20, v61 = a5, v62 = v46, v63 = v45, v64 = 0, v65 = 0x7FFFFFFF, sub_1064990(&v57, v48, v47, &v49), v21 = *(a1 + 8), !sub_FC1BE4(*(a1 + 112), v50)) || v54 || (v22 = v49, v23 = v50, v24 = v55, (v25 = sub_3C0014(v21, v49, 1)) == 0) || (v26 = &v25[-*v25], *v26 < 0xFu) || !*(v26 + 7) || (v27 = &v25[*(v26 + 7) + *&v25[*(v26 + 7)]], *v27 <= HIDWORD(v22)) || (v28 = &v27[4 * HIDWORD(v22) + 4 + *&v27[4 * HIDWORD(v22) + 4]], v29 = &v28[-*v28], *v29 < 5u) || (v30 = *(v29 + 2)) == 0 || (v31 = &v28[v30 + *&v28[v30]], v32 = v23 + *(v21 + 3872) * v24, v32 >= *v31) || v31[v32 + 1] == -1))
  {
    v35 = (HIDWORD(v49) + (v49 << 6) + (v49 >> 2) + 2654435769u) ^ v49;
    v36 = (v50 + (v35 << 6) + (v35 >> 2) + 2654435769u) ^ v35;
    v37 = (v51 + (v36 << 6) + (v36 >> 2) + 2654435769u) ^ v36;
    v38 = (v52 + (v37 << 6) + (v37 >> 2) + 2654435769u) ^ v37;
    v39 = (v53 + (v38 << 6) + (v38 >> 2) + 2654435769u) ^ v38;
    v40 = (v54 + (v39 << 6) + (v39 >> 2) + 2654435769u) ^ v39;
    v41 = (v55 + (v40 << 6) + (v40 >> 2) + 2654435769u) ^ v40;
    v42 = (v56 + (v41 << 6) + (v41 >> 2) + 2654435769u) ^ v41;
    v43 = (*(*(a1 + 120) + 16) + 272 * (bswap64(v42) % **(a1 + 120)));
    v66[0] = &v49;
    v66[1] = v42;
    sub_106557C(v43, v66, &v57);
    v33 = v59 ^ 1;
    v44 = v58;
    if (v58 && !atomic_fetch_add((v58 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v44->__on_zero_shared)(v44);
      std::__shared_weak_count::__release_weak(v44);
    }
  }

  else
  {
    v33 = 0;
  }

  return v33 & 1;
}

uint64_t sub_105F6B4(uint64_t a1, void *a2, uint64_t *a3, void *a4, __int16 *a5, __int16 *a6, void *a7)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v8 >= v9)
  {
    v14 = *a1;
    v15 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - *a1) >> 3);
    v16 = v15 + 1;
    if (v15 + 1 > 0x666666666666666)
    {
      sub_1794();
    }

    v17 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v14) >> 3);
    if (2 * v17 > v16)
    {
      v16 = 2 * v17;
    }

    if (v17 >= 0x333333333333333)
    {
      v18 = 0x666666666666666;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (v18 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v19 = *a3;
    v20 = 8 * ((v8 - *a1) >> 3);
    v21 = *a5;
    v22 = *a6;
    *v20 = *a2;
    *(v20 + 8) = v19;
    *(v20 + 16) = *a4;
    *(v20 + 24) = v21;
    *(v20 + 26) = v22;
    *(v20 + 28) = *a7;
    v13 = 40 * v15 + 40;
    v23 = 40 * v15 - (v8 - v14);
    memcpy((v20 - (v8 - v14)), v14, v8 - v14);
    *a1 = v23;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v10 = *a3;
    v11 = *a5;
    v12 = *a6;
    *v8 = *a2;
    *(v8 + 8) = v10;
    *(v8 + 16) = *a4;
    *(v8 + 24) = v11;
    *(v8 + 26) = v12;
    *(v8 + 28) = *a7;
    v13 = v8 + 40;
  }

  *(a1 + 8) = v13;
  return v13 - 40;
}

void **sub_105F860(void **a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3B0A00(a2);
  v4 = sub_3AF144(*a1);
  v5 = sub_2BDE28(v4);
  if (v5)
  {
    v6 = sub_3AF144(*a1);
    LOBYTE(v5) = sub_2BDE20(v6);
  }

  *(a1 + 16) = v5;
  *(a1 + 9) = *(sub_3B1768(*a1) + 3872);
  v7 = sub_3B0708(a2);
  v8 = a1[1];
  a1[3] = v7;
  a1[4] = v8;
  sub_10B73A8(a1 + 5, a2, *(a1 + 16) == 0);
  a1[682] = sub_3AF3C0(a2);
  a1[683] = sub_3AF460(a2);
  a1[684] = sub_3AF480(a2);
  return a1;
}

void sub_105F914(_Unwind_Exception *exception_object)
{
  if (*(v1 + 5424) == 1)
  {
    sub_3E3DF0((v1 + 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_105F93C(uint64_t a1, uint64_t a2, unsigned int *a3, signed int a4, int a5)
{
  if (!*(a2 + 16))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v9 = *a2;
  v10 = *(a2 + 16);
  if (!v10)
  {
LABEL_10:
    v19 = 0;
    goto LABEL_14;
  }

  v11 = a1;
  v12 = sub_101E790(*(a1 + 24), v10, 1);
  v13 = v12;
  if (v12)
  {
    v14 = &v12[-*v12];
    a1 = v11;
    if (*v14 >= 9u && (v15 = *(v14 + 4)) != 0)
    {
      v16 = sub_101E640(&v13[v15 + *&v13[v15]], HIDWORD(v10));
      v17 = (v16 - *v16);
      if (*v17 >= 5u)
      {
        v18 = v17[2];
        a1 = v11;
        if (v18)
        {
          v19 = *(v16 + v18);
          goto LABEL_14;
        }

        goto LABEL_10;
      }

      v19 = 0;
      a1 = v11;
    }

    else
    {
      v19 = -1;
    }
  }

  else
  {
    v19 = -1;
    a1 = v11;
  }

LABEL_14:
  sub_105FAF8(a1, v9, v19, 0, a3, a4, a5, &v26);
  v21 = v26;
  if (v26 != v27)
  {
    v22 = *(a2 + 8);
    v23 = 0xFFFFFFFFLL;
    v21 = v26;
    while (v21[1] != v22)
    {
      v21 += 5;
      if (v21 == v27)
      {
        v24 = 0x7FFFFFFF00000000;
        if (v26)
        {
          goto LABEL_22;
        }

        return v24 | v23;
      }
    }
  }

  if (v21 == v27)
  {
    v24 = 0x7FFFFFFF00000000;
    v23 = 0xFFFFFFFFLL;
    if (!v26)
    {
      return v24 | v23;
    }

    goto LABEL_22;
  }

  v25 = *(v21 + 28);
  v24 = v25 & 0xFFFFFFFF00000000;
  v23 = v25;
  if (v26)
  {
LABEL_22:
    v27 = v26;
    operator delete(v26);
  }

  return v24 | v23;
}

void sub_105FADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_105FAF8(void **a1, unint64_t a2, int a3, int a4, unsigned int *a5, signed int a6, int a7, void *a8)
{
  a8[1] = *a8;
  if (a3)
  {
    LODWORD(__p) = a3;
    v15 = sub_101F854(a1[3], HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32), (a2 >> 1) & 1 ^ (a4 == 0), &__p);
    v16 = v15;
    v17 = v15;
    if (v15 <= 0xFFFFFFFEFFFFFFFFLL && v15 != 0)
    {
      __p = 0uLL;
      v19 = sub_1059F84(a1[4], v15, 1);
      if (v19)
      {
        v20 = &v19[-*v19];
        if (*v20 >= 5u)
        {
          v21 = *(v20 + 2);
          if (v21)
          {
            v22 = HIDWORD(v16);
            v23 = &v19[v21 + *&v19[v21]];
            if (*v23 > HIDWORD(v16))
            {
              v24 = &v23[4 * v22 + 4 + *&v23[4 * v22 + 4]];
              v25 = &v24[-*v24];
              if (*v25 >= 9u)
              {
                v26 = *(v25 + 4);
                if (v26)
                {
                  if (*&v24[v26 + *&v24[v26]])
                  {
                    v81 = 0;
                    v82 = 0;
                    v27 = sub_1059F84(a1[4], v17, 1);
                    if (v27)
                    {
                      v28 = &v27[-*v27];
                      if (*v28 >= 5u)
                      {
                        v29 = *(v28 + 2);
                        if (v29)
                        {
                          v30 = &v27[v29 + *&v27[v29]];
                          if (*v30 > HIDWORD(v16))
                          {
                            v31 = &v30[4 * v22 + 4 + *&v30[4 * v22 + 4]];
                            v32 = &v31[-*v31];
                            if (*v32 >= 0xBu)
                            {
                              v33 = *(v32 + 5);
                              if (v33)
                              {
                                if (*&v31[v33 + *&v31[v33]])
                                {
                                  v64 = *(a1 + 16);
                                  v65 = *(a1 + 9);
                                  v66 = a1[682];
                                  v67 = a1[684];
                                  v68 = a1[1];
                                  v69 = a6;
                                  v63 = sub_10B7414((a1 + 5), a5, a6, a7);
                                  if (sub_10B0C98((a1 + 5), a5, a6, a7))
                                  {
                                    v34 = a6;
                                  }

                                  else
                                  {
                                    v34 = 0x7FFFFFFF;
                                  }

                                  v35 = sub_10B7604((a1 + 5), a5, a6, a7);
                                  v36 = *a5;
                                  if (v35)
                                  {
                                    v37 = a6;
                                  }

                                  else
                                  {
                                    v37 = 0x7FFFFFFF;
                                  }

                                  *&__p = v16;
                                  *(&__p + 1) = __PAIR64__(v63, v36);
                                  v71 = v34;
                                  v72 = v37;
                                  v73 = a7;
                                  v74 = v65;
                                  v75 = v64;
                                  v76 = 0;
                                  v77 = 0x7FFFFFFF;
                                  sub_10669FC(&__p, v66, v68, v67, &v81);
                                  v38 = a1[1];
                                  v39 = sub_FC1BE4(a1[682], v82);
                                  if (v85)
                                  {
                                    v40 = 0;
                                  }

                                  else
                                  {
                                    v40 = v39;
                                  }

                                  if (v40 && (v41 = v81, v42 = v82, v43 = v86, (v44 = sub_3C0314(v38, v81, 1)) != 0) && (v45 = &v44[-*v44], *v45 >= 0xFu) && *(v45 + 7) && (v46 = &v44[*(v45 + 7) + *&v44[*(v45 + 7)]], *v46 > HIDWORD(v41)) && (v47 = &v46[4 * HIDWORD(v41) + 4 + *&v46[4 * HIDWORD(v41) + 4]], v48 = &v47[-*v47], *v48 >= 5u) && (v49 = *(v48 + 2)) != 0 && (v50 = &v47[v49 + *&v47[v49]], v51 = v42 + *(v38 + 3872) * v43, v51 < *v50) && *&v50[4 * v51 + 4] != -1)
                                  {
                                    v52 = a1[1];
                                    if (a4)
                                    {
                                      sub_10672E8(v52, v16, a2, v82, v86, a8);
                                    }

                                    else
                                    {
                                      sub_1066E8C(v52, v16, a2, v82, v86, a8);
                                    }
                                  }

                                  else if ((sub_3B8508(*a1) & 1) == 0)
                                  {
                                    v53 = (HIDWORD(v81) + (v81 << 6) + (v81 >> 2) + 2654435769u) ^ v81;
                                    v54 = (v82 + (v53 << 6) + (v53 >> 2) + 2654435769u) ^ v53;
                                    v55 = (SHIDWORD(v82) + (v54 << 6) + (v54 >> 2) + 2654435769u) ^ v54;
                                    v56 = (v83 + (v55 << 6) + (v55 >> 2) + 2654435769u) ^ v55;
                                    v57 = (v84 + (v56 << 6) + (v56 >> 2) + 2654435769u) ^ v56;
                                    v58 = (v85 + (v57 << 6) + (v57 >> 2) + 2654435769u) ^ v57;
                                    v59 = (v86 + (v58 << 6) + (v58 >> 2) + 2654435769u) ^ v58;
                                    v60 = (v87 + (v59 << 6) + (v59 >> 2) + 2654435769u) ^ v59;
                                    v61 = (a1[683][2] + 272 * (bswap64(v60) % *a1[683]));
                                    *&__p = &v81;
                                    *(&__p + 1) = v60;
                                    sub_106557C(v61, &__p, &v78);
                                    if ((v80 & 1) == 0)
                                    {
                                      v88[0] = v16;
                                      sub_105DF50(&__p, v88, 1uLL);
                                      sub_1060274(a1, &__p, a5, v69, v85, 4u);
                                      if (__p)
                                      {
                                        *(&__p + 1) = __p;
                                        operator delete(__p);
                                      }

                                      sub_105DB6C(a1[683], &v81, &__p);
                                      sub_105E004(&v78, &__p);
                                      sub_1F1A8(&__p);
                                    }

                                    if (!v78 || *v78 == v78[1])
                                    {
                                      if (sub_7E7E4(3u))
                                      {
                                        sub_19594F8(&__p);
                                        sub_4A5C(&__p, "Costs are not available from cache (after computing them). LRUCache issue or differing keys.", 92);
                                        sub_1959680(&__p, v88);
                                        sub_7E854(v88, 3u);
                                        if (v89 < 0)
                                        {
                                          operator delete(v88[0]);
                                        }

                                        sub_1959728(&__p);
                                      }

                                      operator new();
                                    }

                                    if (a4)
                                    {
                                      sub_10609AC(a1, v16, &v78, a2, a8);
                                    }

                                    else
                                    {
                                      sub_1060570(a1, v16, &v78, a2, a8);
                                    }

                                    v62 = v79;
                                    if (v79 && !atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                    {
                                      (v62->__on_zero_shared)(v62);
                                      std::__shared_weak_count::__release_weak(v62);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1060178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (*(v8 - 97) < 0)
  {
    operator delete(*(v8 - 120));
    sub_1959728(va);
    sub_1F1A8(v8 - 184);
    _Unwind_Resume(a1);
  }

  sub_1959728(va);
  sub_1F1A8(v8 - 184);
  _Unwind_Resume(a1);
}

void sub_1060240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1F1A8(v8 - 160);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_106025C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_1060274(void **a1, void ***a2, unsigned int *a3, signed int a4, int a5, unsigned int a6)
{
  if ((sub_3B8508(*a1) & 1) == 0)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v12 = *a2;
    v13 = a2[1];
    if (*a2 != v13)
    {
      v14 = 0;
      do
      {
        v14 |= sub_1060DE0(a1, *v12++, a3, a4, a5, &v37);
      }

      while (v12 != v13);
      v15 = v37;
      if (v14)
      {
        __p = 0;
        v48 = 0;
        v49 = 0;
        sub_101EA90(&v35, 0xCCCCCCCCCCCCCCCDLL * ((v38 - v37) >> 3));
        if (__p)
        {
          v48 = __p;
          operator delete(__p);
        }

        if (v38 != v37)
        {
          v16 = 0;
          v17 = 0xCCCCCCCCCCCCCCCDLL * ((v38 - v37) >> 3);
          do
          {
            v18 = v37 + 40 * v16;
            v19 = *(v18 + 2);
            if (v19)
            {
              v20 = 0;
              v21 = *(v18 + 2);
              do
              {
                ++v20;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              v20 = 0;
            }

            sub_1063F90(v35 + 24 * v16, *(v35 + 3 * v16 + 1), v19, 0, v20);
            ++v16;
          }

          while (v16 != v17);
        }

        atomic_fetch_add(sub_102DC44(), 1u);
        v46 = a4;
        v45 = a5;
        if ((sub_3B8508(*a1) & 1) == 0)
        {
          v22 = sub_2D2E8();
          v40 = a1;
          v41 = &v35;
          v42 = a3;
          v43 = &v46;
          v44 = &v45;
          sub_1067768(&__p, v22, a6);
        }

        atomic_fetch_add(sub_102DC44(), 0xFFFFFFFF);
        v23 = v35;
        if (v35)
        {
          v24 = v36;
          v25 = v35;
          if (v36 != v35)
          {
            v26 = v36;
            do
            {
              v28 = *(v26 - 3);
              v26 -= 24;
              v27 = v28;
              if (v28)
              {
                *(v24 - 2) = v27;
                operator delete(v27);
              }

              v24 = v26;
            }

            while (v26 != v23);
            v25 = v35;
          }

          v36 = v23;
          operator delete(v25);
        }

        v15 = v37;
      }

      if (v15)
      {
        v29 = v38;
        v30 = v15;
        if (v38 != v15)
        {
          do
          {
            v31 = *(v29 - 3);
            if (v31)
            {
              do
              {
                v32 = *v31;
                operator delete(v31);
                v31 = v32;
              }

              while (v32);
            }

            v34 = *(v29 - 5);
            v29 -= 5;
            v33 = v34;
            *v29 = 0;
            if (v34)
            {
              operator delete(v33);
            }
          }

          while (v29 != v15);
          v30 = v37;
        }

        v38 = v15;
        operator delete(v30);
      }
    }
  }
}

void sub_1060518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
    sub_105F2B4(&a13);
    _Unwind_Resume(a1);
  }

  sub_105F2B4(&a13);
  _Unwind_Resume(a1);
}

void sub_1060570(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v72 = a4;
  v73 = a2;
  if (*a3 && (v10 = *(*a3 + 24)) != 0)
  {
    v11 = (*(v10 + 32) - *(v10 + 24)) >> 3;
    __p = 0;
    v70 = 0;
    v71 = 0;
    v12 = *a3;
    if (!*a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = sub_1059F84(*(a1 + 32), a2, 1);
    if (v13 && (v14 = &v13[-*v13], *v14 >= 5u) && *(v14 + 2) && (v15 = &v13[*(v14 + 2) + *&v13[*(v14 + 2)]], *v15 > HIDWORD(a2)) && (v16 = &v15[4 * HIDWORD(a2) + 4 + *&v15[4 * HIDWORD(a2) + 4]], v17 = &v16[-*v16], *v17 >= 0xBu) && (v18 = *(v17 + 5)) != 0)
    {
      LODWORD(v11) = *&v16[v18 + *&v16[v18]];
      __p = 0;
      v70 = 0;
      v71 = 0;
      v12 = *a3;
      if (!*a3)
      {
        goto LABEL_18;
      }
    }

    else
    {
      LODWORD(v11) = 0;
      __p = 0;
      v70 = 0;
      v71 = 0;
      v12 = *a3;
      if (!*a3)
      {
        goto LABEL_18;
      }
    }
  }

  v19 = *(v12 + 24);
  if (v19)
  {
    v20 = *v19;
    v21 = v19[1];
    v22 = (v21 - v20) >> 3;
    if (v22 < 1)
    {
      v41 = v20;
      if (v21 == v20)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v21 - v20 == 8)
      {
        v23 = v20;
      }

      else
      {
        v23 = v20;
        do
        {
          v42 = (2 * v22) & 0xFFFFFFFFFFFFFFF8;
          _X14 = v23 + v42;
          __asm { PRFM            #0, [X14] }

          v49 = &v23[v22 >> 1];
          _X13 = v49 + v42;
          __asm { PRFM            #0, [X13] }

          if (*v49 >= a4)
          {
            v52 = 0;
          }

          else
          {
            v52 = v22 >> 1;
          }

          v23 += v52;
          v22 -= v22 >> 1;
        }

        while (v22 > 1);
      }

      v41 = &v23[*v23 < a4];
      if (v21 == v41)
      {
        goto LABEL_59;
      }
    }

    if (*v41 != a4)
    {
      goto LABEL_59;
    }

    v40 = v41 - v20;
    goto LABEL_42;
  }

LABEL_18:
  v24 = sub_1059F84(*(a1 + 32), a2, 1);
  if (v24)
  {
    v25 = &v24[-*v24];
    if (*v25 >= 5u)
    {
      if (*(v25 + 2))
      {
        v26 = &v24[*(v25 + 2) + *&v24[*(v25 + 2)]];
        if (*v26 > HIDWORD(a2))
        {
          v27 = &v26[4 * HIDWORD(a2) + 4 + *&v26[4 * HIDWORD(a2) + 4]];
          v28 = &v27[-*v27];
          if (*v28 >= 9u)
          {
            v29 = *(v28 + 4);
            if (v29)
            {
              v30 = &v27[v29 + *&v27[v29]];
              v33 = *v30;
              v31 = v30 + 4;
              v32 = v33;
              v34 = &v31[8 * v33];
              v35 = v31;
              while (v32)
              {
                v36 = &v35[(4 * v32) & 0x7FFFFFFF8];
                v38 = *v36;
                v37 = v36 + 8;
                v39 = v32 >> 1;
                v32 += ~(v32 >> 1);
                if (v38 >= a4)
                {
                  v32 = v39;
                }

                else
                {
                  v35 = v37;
                }
              }

              if (v35 != v34 && *v35 == a4)
              {
                v40 = v35 - v31;
LABEL_42:
                v68 = v40 >> 3;
                if (v68 != -1)
                {
                  if (*a3 && (v53 = *(*a3 + 24)) != 0)
                  {
                    if ((v53 + 24) != &__p)
                    {
                      sub_31F64(&__p, *(v53 + 24), *(v53 + 32), (*(v53 + 32) - *(v53 + 24)) >> 3);
                    }
                  }

                  else
                  {
                    v54 = *(a1 + 32);
                    v70 = __p;
                    v55 = sub_1059F84(v54, a2, 1);
                    if (v55)
                    {
                      v56 = &v55[-*v55];
                      if (*v56 >= 5u)
                      {
                        if (*(v56 + 2))
                        {
                          v57 = &v55[*(v56 + 2) + *&v55[*(v56 + 2)]];
                          if (*v57 > HIDWORD(a2))
                          {
                            v58 = &v57[4 * HIDWORD(a2) + 4 + *&v57[4 * HIDWORD(a2) + 4]];
                            v59 = &v58[-*v58];
                            if (*v59 >= 0xBu)
                            {
                              v60 = *(v59 + 5);
                              if (v60)
                              {
                                v61 = &v58[v60 + *&v58[v60]];
                                v62 = *v61;
                                p_p = &__p;
                                if (v62)
                                {
                                  v63 = 8 * v62;
                                  v64 = (v61 + 4);
                                  do
                                  {
                                    v74 = *v64;
                                    sub_A2324(&p_p, &v74);
                                    ++v64;
                                    v63 -= 8;
                                  }

                                  while (v63);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  LOWORD(p_p) = 0;
                  v65 = __p;
                  v66 = v70;
                  if (__p != v70)
                  {
                    v67 = v11 * (v40 >> 3);
                    do
                    {
                      sub_105F6B4(a5, &v72, v65, &v73, &v68, &p_p, (**a3 + 8 * v67++));
                      LOWORD(p_p) = p_p + 1;
                      ++v65;
                    }

                    while (v65 != v66);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_59:
  if (__p)
  {
    v70 = __p;
    operator delete(__p);
  }
}

void sub_1060988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10609AC(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v72 = a4;
  v73 = a2;
  if (*a3 && (v10 = *(*a3 + 24)) != 0)
  {
    v11 = (*(v10 + 32) - *(v10 + 24)) >> 3;
    __p = 0;
    v70 = 0;
    v71 = 0;
    v12 = *a3;
    if (!*a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = sub_1059F84(*(a1 + 32), a2, 1);
    if (v13 && (v14 = &v13[-*v13], *v14 >= 5u) && *(v14 + 2) && (v15 = &v13[*(v14 + 2) + *&v13[*(v14 + 2)]], *v15 > HIDWORD(a2)) && (v16 = &v15[4 * HIDWORD(a2) + 4 + *&v15[4 * HIDWORD(a2) + 4]], v17 = &v16[-*v16], *v17 >= 0xBu) && (v18 = *(v17 + 5)) != 0)
    {
      LODWORD(v11) = *&v16[v18 + *&v16[v18]];
      __p = 0;
      v70 = 0;
      v71 = 0;
      v12 = *a3;
      if (!*a3)
      {
        goto LABEL_18;
      }
    }

    else
    {
      LODWORD(v11) = 0;
      __p = 0;
      v70 = 0;
      v71 = 0;
      v12 = *a3;
      if (!*a3)
      {
        goto LABEL_18;
      }
    }
  }

  v19 = *(v12 + 24);
  if (v19)
  {
    v20 = *(v19 + 24);
    v21 = *(v19 + 32);
    v22 = (v21 - v20) >> 3;
    if (v22 < 1)
    {
      v41 = v20;
      if (v21 == v20)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v21 - v20 == 8)
      {
        v23 = v20;
      }

      else
      {
        v23 = v20;
        do
        {
          v42 = (2 * v22) & 0xFFFFFFFFFFFFFFF8;
          _X14 = v23 + v42;
          __asm { PRFM            #0, [X14] }

          v49 = &v23[v22 >> 1];
          _X13 = v49 + v42;
          __asm { PRFM            #0, [X13] }

          if (*v49 >= a4)
          {
            v52 = 0;
          }

          else
          {
            v52 = v22 >> 1;
          }

          v23 += v52;
          v22 -= v22 >> 1;
        }

        while (v22 > 1);
      }

      v41 = &v23[*v23 < a4];
      if (v21 == v41)
      {
        goto LABEL_59;
      }
    }

    if (*v41 != a4)
    {
      goto LABEL_59;
    }

    v40 = v41 - v20;
    goto LABEL_42;
  }

LABEL_18:
  v24 = sub_1059F84(*(a1 + 32), a2, 1);
  if (v24)
  {
    v25 = &v24[-*v24];
    if (*v25 >= 5u)
    {
      if (*(v25 + 2))
      {
        v26 = &v24[*(v25 + 2) + *&v24[*(v25 + 2)]];
        if (*v26 > HIDWORD(a2))
        {
          v27 = &v26[4 * HIDWORD(a2) + 4 + *&v26[4 * HIDWORD(a2) + 4]];
          v28 = &v27[-*v27];
          if (*v28 >= 0xBu)
          {
            v29 = *(v28 + 5);
            if (v29)
            {
              v30 = &v27[v29 + *&v27[v29]];
              v33 = *v30;
              v31 = v30 + 4;
              v32 = v33;
              v34 = &v31[8 * v33];
              v35 = v31;
              while (v32)
              {
                v36 = &v35[(4 * v32) & 0x7FFFFFFF8];
                v38 = *v36;
                v37 = (v36 + 1);
                v39 = v32 >> 1;
                v32 += ~(v32 >> 1);
                if (v38 >= a4)
                {
                  v32 = v39;
                }

                else
                {
                  v35 = v37;
                }
              }

              if (v35 != v34 && *v35 == a4)
              {
                v40 = v35 - v31;
LABEL_42:
                v68 = v40 >> 3;
                if (v68 != -1)
                {
                  if (*a3 && (v53 = *(*a3 + 24)) != 0)
                  {
                    if (v53 != &__p)
                    {
                      sub_31F64(&__p, *v53, *(v53 + 8), (*(v53 + 8) - *v53) >> 3);
                    }
                  }

                  else
                  {
                    v54 = *(a1 + 32);
                    v70 = __p;
                    v55 = sub_1059F84(v54, a2, 1);
                    if (v55)
                    {
                      v56 = &v55[-*v55];
                      if (*v56 >= 5u)
                      {
                        if (*(v56 + 2))
                        {
                          v57 = &v55[*(v56 + 2) + *&v55[*(v56 + 2)]];
                          if (*v57 > HIDWORD(a2))
                          {
                            v58 = &v57[4 * HIDWORD(a2) + 4 + *&v57[4 * HIDWORD(a2) + 4]];
                            v59 = &v58[-*v58];
                            if (*v59 >= 9u)
                            {
                              v60 = *(v59 + 4);
                              if (v60)
                              {
                                v61 = &v58[v60 + *&v58[v60]];
                                v62 = *v61;
                                p_p = &__p;
                                if (v62)
                                {
                                  v63 = 8 * v62;
                                  v64 = (v61 + 4);
                                  do
                                  {
                                    v74 = *v64;
                                    sub_A2324(&p_p, &v74);
                                    ++v64;
                                    v63 -= 8;
                                  }

                                  while (v63);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  LOWORD(p_p) = 0;
                  v65 = __p;
                  v66 = v70;
                  if (__p != v70)
                  {
                    v67 = (v40 >> 3);
                    do
                    {
                      sub_105F6B4(a5, v65, &v72, &v73, &p_p, &v68, (**a3 + 8 * v67));
                      v67 += v11;
                      LOWORD(p_p) = p_p + 1;
                      ++v65;
                    }

                    while (v65 != v66);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_59:
  if (__p)
  {
    v70 = __p;
    operator delete(__p);
  }
}

void sub_1060DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1060DE0(uint64_t a1, void *a2, unsigned int *a3, signed int a4, int a5, uint64_t *a6)
{
  v107 = *(a1 + 18);
  v11 = *(a1 + 16);
  v114 = *(a1 + 5456);
  v111 = *(a1 + 8);
  v108 = *(a1 + 5472);
  v13 = sub_10B7414(a1 + 40, a3, a4, a5);
  if (sub_10B0C98(a1 + 40, a3, a4, a5))
  {
    v14 = a4;
  }

  else
  {
    v14 = 0x7FFFFFFF;
  }

  v116 = a4;
  v15 = a4;
  v16 = a2;
  v17 = sub_10B7604(a1 + 40, a3, v15, a5);
  v117 = a3;
  v18 = *a3;
  v113 = a4;
  if (v17)
  {
    v19 = a4;
  }

  else
  {
    v19 = 0x7FFFFFFF;
  }

  v132[0] = a2;
  v132[1] = __PAIR64__(v13, v18);
  *&v133 = __PAIR64__(v19, v14);
  v118 = a5;
  BYTE8(v133) = a5;
  WORD5(v133) = v107;
  WORD6(v133) = v11;
  LODWORD(v134) = 0x7FFFFFFF;
  sub_10669FC(v132, v114, v111, v108, &v135);
  v20 = *(a1 + 8);
  if (sub_FC1BE4(*(a1 + 5456), v136) && !v140)
  {
    v21 = v135;
    v22 = v136;
    v23 = v141;
    v24 = sub_3C0314(v20, v135, 1);
    if (v24)
    {
      v25 = &v24[-*v24];
      if (*v25 >= 0xFu)
      {
        if (*(v25 + 7))
        {
          v26 = &v24[*(v25 + 7) + *&v24[*(v25 + 7)]];
          if (*v26 > HIDWORD(v21))
          {
            v27 = &v26[4 * HIDWORD(v21) + 4 + *&v26[4 * HIDWORD(v21) + 4]];
            v28 = &v27[-*v27];
            if (*v28 >= 5u)
            {
              v29 = *(v28 + 2);
              if (v29)
              {
                v30 = &v27[v29 + *&v27[v29]];
                v31 = v22 + *(v20 + 3872) * v23;
                if (v31 < *v30 && v30[v31 + 1] != -1)
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  if (!v16)
  {
    goto LABEL_26;
  }

  v33 = sub_101E790(*(a1 + 24), v16, 1);
  if (!v33 || (v34 = &v33[-*v33], *v34 < 9u) || (v35 = *(v34 + 4)) == 0)
  {
    v39 = -1;
    goto LABEL_27;
  }

  v36 = sub_101E640(&v33[v35 + *&v33[v35]], HIDWORD(v16));
  v37 = (v36 - *v36);
  if (*v37 < 5u || (v38 = v37[2]) == 0)
  {
LABEL_26:
    v39 = 0;
    goto LABEL_27;
  }

  v39 = *(v36 + v38);
LABEL_27:
  v40 = 0xCCCCCCCCCCCCCCCDLL * ((a6[1] - *a6) >> 3);
  v41 = (v39 + 1);
  if (v41 > v40)
  {
    sub_1064374(a6, v41 - v40);
  }

  v42 = (HIDWORD(v135) + (v135 << 6) + (v135 >> 2) + 2654435769u) ^ v135;
  v43 = (v136 + (v42 << 6) + (v42 >> 2) + 2654435769u) ^ v42;
  v44 = (v137 + (v43 << 6) + (v43 >> 2) + 2654435769u) ^ v43;
  v45 = (v138 + (v44 << 6) + (v44 >> 2) + 2654435769u) ^ v44;
  v46 = (v139 + (v45 << 6) + (v45 >> 2) + 2654435769u) ^ v45;
  v47 = (v140 + (v46 << 6) + (v46 >> 2) + 2654435769u) ^ v46;
  v48 = (v141 + (v47 << 6) + (v47 >> 2) + 2654435769u) ^ v47;
  v49 = (v142 + (v48 << 6) + (v48 >> 2) + 2654435769u) ^ v48;
  v50 = (*(*(a1 + 5464) + 16) + 272 * (bswap64(v49) % **(a1 + 5464)));
  v143 = &v135;
  v144 = v49;
  sub_106557C(v50, &v143, v132);
  v51 = v133;
  v52 = v132[1];
  if (v132[1] && !atomic_fetch_add(v132[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v52->__on_zero_shared)(v52);
    std::__shared_weak_count::__release_weak(v52);
    if (v51)
    {
      return v51 ^ 1u;
    }
  }

  else if (v51)
  {
    return v51 ^ 1u;
  }

  v133 = 0u;
  v134 = 0u;
  *v132 = 0u;
  sub_1064544(v132);
  v53 = ((*(&v134 + 1) + v134) * 0x8060180601806019) >> 64;
  v54 = (v53 + ((*(&v134 + 1) + v134 - v53) >> 1)) >> 8;
  v55 = *(v132[1] + v54) + 12 * (*(&v134 + 1) + v134 - 341 * v54);
  *v55 = v16;
  *(v55 + 8) = v39;
  __p = 0;
  v130 = 0;
  v131 = 0;
  v56 = __CFADD__(*(&v134 + 1), 1);
  v57 = ++*(&v134 + 1);
  if (v56)
  {
    goto LABEL_73;
  }

  v109 = v51;
  do
  {
    v58 = *(v132[1] + v134 / 0x155) + 12 * (v134 % 0x155);
    v59 = *(v58 + 8);
    v127 = *v58;
    v128 = v59;
    *&v134 = v134 + 1;
    *(&v134 + 1) = v57 - 1;
    if (v134 >= 0x2AA)
    {
      operator delete(*v132[1]);
      v132[1] = v132[1] + 8;
      *&v134 = v134 - 341;
    }

    v60 = v128;
    if (!sub_3A8760((*a6 + 40 * v128), &v127))
    {
      sub_10664DC((*a6 + 40 * v60), &v127);
      if (v60 != 1)
      {
        v143 = v127;
        sub_1066854(*(a1 + 24), &v143, &__p);
        v61 = __p;
        v115 = v130;
        if (__p != v130)
        {
          v112 = v60 - 1;
          do
          {
            v63 = *(a1 + 18);
            v64 = *(a1 + 16);
            v65 = *(a1 + 5456);
            v66 = *(a1 + 8);
            v67 = *(a1 + 5472);
            v68 = sub_10B7414(a1 + 40, v117, v116, v118);
            v69 = sub_10B0C98(a1 + 40, v117, v116, v118);
            v70 = sub_10B7604(a1 + 40, v117, v116, v118);
            if (v69)
            {
              v71 = v113;
            }

            else
            {
              v71 = 0x7FFFFFFF;
            }

            v72 = *v117;
            if (v70)
            {
              v73 = v113;
            }

            else
            {
              v73 = 0x7FFFFFFF;
            }

            v143 = *v61;
            v144 = __PAIR64__(v68, v72);
            v145 = v71;
            v146 = v73;
            v147 = v118;
            v148 = v63;
            v149 = v64;
            v150 = 0;
            v151 = 0x7FFFFFFF;
            sub_10669FC(&v143, v65, v66, v67, &v119);
            v74 = *(a1 + 8);
            v75 = sub_FC1BE4(*(a1 + 5456), v120);
            if (v124)
            {
              v76 = 0;
            }

            else
            {
              v76 = v75;
            }

            if (!v76 || (v77 = v119, v78 = v120, v79 = v125, (v80 = sub_3C0314(v74, v119, 1)) == 0) || (v81 = &v80[-*v80], *v81 < 0xFu) || !*(v81 + 7) || (v82 = &v80[*(v81 + 7) + *&v80[*(v81 + 7)]], *v82 <= HIDWORD(v77)) || (v83 = &v82[4 * HIDWORD(v77) + 4 + *&v82[4 * HIDWORD(v77) + 4]], v84 = &v83[-*v83], *v84 < 5u) || (v85 = *(v84 + 2)) == 0 || (v86 = &v83[v85 + *&v83[v85]], v87 = v78 + *(v74 + 3872) * v79, v87 >= *v86) || v86[v87 + 1] == -1)
            {
              v88 = (HIDWORD(v119) + 2654435769 + (v119 << 6) + (v119 >> 2)) ^ v119;
              v89 = (v120 + 2654435769 + (v88 << 6) + (v88 >> 2)) ^ v88;
              v90 = (v121 + 2654435769 + (v89 << 6) + (v89 >> 2)) ^ v89;
              v91 = (v122 + 2654435769 + (v90 << 6) + (v90 >> 2)) ^ v90;
              v92 = (v123 + 2654435769 + (v91 << 6) + (v91 >> 2)) ^ v91;
              v93 = (v124 + 2654435769 + (v92 << 6) + (v92 >> 2)) ^ v92;
              v94 = (v125 + 2654435769 + (v93 << 6) + (v93 >> 2)) ^ v93;
              v95 = (v126 + 2654435769 + (v94 << 6) + (v94 >> 2)) ^ v94;
              v96 = (*(*(a1 + 5464) + 16) + 272 * (bswap64(v95) % **(a1 + 5464)));
              v152[0] = &v119;
              v152[1] = v95;
              sub_106557C(v96, v152, &v143);
              v97 = v145;
              v98 = v144;
              if (v144 && !atomic_fetch_add((v144 + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v98->__on_zero_shared)(v98);
                std::__shared_weak_count::__release_weak(v98);
                if ((v97 & 1) == 0)
                {
LABEL_64:
                  v99 = v132[1];
                  if (v133 == v132[1])
                  {
                    v100 = 0;
                  }

                  else
                  {
                    v100 = 341 * ((v133 - v132[1]) >> 3) - 1;
                  }

                  v101 = *(&v134 + 1) + v134;
                  if (v100 == *(&v134 + 1) + v134)
                  {
                    sub_1064544(v132);
                    v99 = v132[1];
                    v101 = *(&v134 + 1) + v134;
                  }

                  v62 = v99[v101 / 0x155] + 12 * (v101 % 0x155);
                  *v62 = *v61;
                  *(v62 + 8) = v112;
                  ++*(&v134 + 1);
                }
              }

              else if ((v97 & 1) == 0)
              {
                goto LABEL_64;
              }
            }

            ++v61;
          }

          while (v61 != v115);
        }
      }
    }

    v57 = *(&v134 + 1);
  }

  while (*(&v134 + 1));
  v51 = v109;
  if (__p)
  {
    v130 = __p;
    operator delete(__p);
  }

LABEL_73:
  v102 = v132[1];
  v103 = v133;
  *(&v134 + 1) = 0;
  v104 = (v133 - v132[1]) >> 3;
  if (v104 >= 3)
  {
    do
    {
      operator delete(*v102);
      v103 = v133;
      v102 = (v132[1] + 8);
      v132[1] = v102;
      v104 = (v133 - v102) >> 3;
    }

    while (v104 > 2);
  }

  if (v104 == 1)
  {
    v105 = 170;
LABEL_81:
    *&v134 = v105;
  }

  else if (v104 == 2)
  {
    v105 = 341;
    goto LABEL_81;
  }

  if (v102 != v103)
  {
    do
    {
      v106 = *v102++;
      operator delete(v106);
    }

    while (v102 != v103);
    if (v133 != v132[1])
    {
      *&v133 = v133 + ((v132[1] - v133 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v132[0])
  {
    operator delete(v132[0]);
  }

  return v51 ^ 1u;
}

void sub_1061750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_49CAC(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_106177C(uint64_t a1, uint64_t a2, unsigned int *a3, signed int a4, int a5)
{
  if (a2 && (v10 = sub_101E790(*(a1 + 24), a2, 1)) != 0 && (v11 = &v10[-*v10], *v11 >= 9u) && (v12 = *(v11 + 4)) != 0 && (v13 = sub_101E640(&v10[v12 + *&v10[v12]], HIDWORD(a2)), v14 = (v13 - *v13), *v14 >= 5u) && (v15 = v14[2]) != 0 && *(v13 + v15) && ((v45 = *(a1 + 16), v46 = *(a1 + 18), v48 = *(a1 + 8), v49 = *(a1 + 5456), v47 = *(a1 + 5472), v16 = sub_10B7414(a1 + 40, a3, a4, a5), !sub_10B0C98(a1 + 40, a3, a4, a5)) ? (v17 = 0x7FFFFFFF) : (v17 = a4), (v18 = sub_10B7604(a1 + 40, a3, a4, a5), v19 = *a3, !v18) ? (v20 = 0x7FFFFFFF) : (v20 = a4), (v58 = a2, v59 = __PAIR64__(v16, v19), v60 = v17, v61 = v20, v62 = a5, v63 = v46, v64 = v45, v65 = 0, v66 = 0x7FFFFFFF, sub_10669FC(&v58, v49, v48, v47, &v50), v21 = *(a1 + 8), !sub_FC1BE4(*(a1 + 5456), v51)) || v55 || (v22 = v50, v23 = v51, v24 = v56, (v25 = sub_3C0314(v21, v50, 1)) == 0) || (v26 = &v25[-*v25], *v26 < 0xFu) || !*(v26 + 7) || (v27 = &v25[*(v26 + 7) + *&v25[*(v26 + 7)]], *v27 <= HIDWORD(v22)) || (v28 = &v27[4 * HIDWORD(v22) + 4 + *&v27[4 * HIDWORD(v22) + 4]], v29 = &v28[-*v28], *v29 < 5u) || (v30 = *(v29 + 2)) == 0 || (v31 = &v28[v30 + *&v28[v30]], v32 = v23 + *(v21 + 3872) * v24, v32 >= *v31) || v31[v32 + 1] == -1))
  {
    v35 = (HIDWORD(v50) + (v50 << 6) + (v50 >> 2) + 2654435769u) ^ v50;
    v36 = (v51 + (v35 << 6) + (v35 >> 2) + 2654435769u) ^ v35;
    v37 = (v52 + (v36 << 6) + (v36 >> 2) + 2654435769u) ^ v36;
    v38 = (v53 + (v37 << 6) + (v37 >> 2) + 2654435769u) ^ v37;
    v39 = (v54 + (v38 << 6) + (v38 >> 2) + 2654435769u) ^ v38;
    v40 = (v55 + (v39 << 6) + (v39 >> 2) + 2654435769u) ^ v39;
    v41 = (v56 + (v40 << 6) + (v40 >> 2) + 2654435769u) ^ v40;
    v42 = (v57 + (v41 << 6) + (v41 >> 2) + 2654435769u) ^ v41;
    v43 = (*(*(a1 + 5464) + 16) + 272 * (bswap64(v42) % **(a1 + 5464)));
    v67[0] = &v50;
    v67[1] = v42;
    sub_106557C(v43, v67, &v58);
    v33 = v60 ^ 1;
    v44 = v59;
    if (v59 && !atomic_fetch_add((v59 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v44->__on_zero_shared)(v44);
      std::__shared_weak_count::__release_weak(v44);
    }
  }

  else
  {
    v33 = 0;
  }

  return v33 & 1;
}

void **sub_1061AF4(void **a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3B0BCC(a2);
  v4 = sub_3AF144(*a1);
  v5 = sub_2BDE28(v4);
  if (v5)
  {
    v6 = sub_3AF144(*a1);
    LOBYTE(v5) = sub_2BDE20(v6);
  }

  *(a1 + 16) = v5;
  *(a1 + 9) = *(sub_3B1768(*a1) + 3872);
  v7 = sub_3B0708(a2);
  v8 = a1[1];
  a1[3] = v7;
  a1[4] = v8;
  sub_10BD0E0(a1 + 5, a2);
  a1[9] = sub_3AF40C(a2);
  a1[10] = sub_3AF478(a2);
  a1[11] = sub_57478(a2);
  return a1;
}

uint64_t sub_1061BAC(uint64_t a1, uint64_t a2, unsigned int *a3, int a4, char a5)
{
  if (!*(a2 + 16))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v9 = *a2;
  v10 = *(a2 + 16);
  if (!v10)
  {
LABEL_10:
    v19 = 0;
    goto LABEL_14;
  }

  v11 = a1;
  v12 = sub_101E790(*(a1 + 24), v10, 1);
  v13 = v12;
  if (v12)
  {
    v14 = &v12[-*v12];
    a1 = v11;
    if (*v14 >= 9u && (v15 = *(v14 + 4)) != 0)
    {
      v16 = sub_101E640(&v13[v15 + *&v13[v15]], HIDWORD(v10));
      v17 = (v16 - *v16);
      if (*v17 >= 5u)
      {
        v18 = v17[2];
        a1 = v11;
        if (v18)
        {
          v19 = *(v16 + v18);
          goto LABEL_14;
        }

        goto LABEL_10;
      }

      v19 = 0;
      a1 = v11;
    }

    else
    {
      v19 = -1;
    }
  }

  else
  {
    v19 = -1;
    a1 = v11;
  }

LABEL_14:
  sub_1061D68(a1, v9, v19, 0, a3, a4, a5, &v26);
  v21 = v26;
  if (v26 != v27)
  {
    v22 = *(a2 + 8);
    v23 = 0xFFFFFFFFLL;
    v21 = v26;
    while (v21[1] != v22)
    {
      v21 += 5;
      if (v21 == v27)
      {
        v24 = 0x7FFFFFFF00000000;
        if (v26)
        {
          goto LABEL_22;
        }

        return v24 | v23;
      }
    }
  }

  if (v21 == v27)
  {
    v24 = 0x7FFFFFFF00000000;
    v23 = 0xFFFFFFFFLL;
    if (!v26)
    {
      return v24 | v23;
    }

    goto LABEL_22;
  }

  v25 = *(v21 + 28);
  v24 = v25 & 0xFFFFFFFF00000000;
  v23 = v25;
  if (v26)
  {
LABEL_22:
    v27 = v26;
    operator delete(v26);
  }

  return v24 | v23;
}

void sub_1061D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1061D68(void **a1, unint64_t a2, int a3, int a4, unsigned int *a5, int a6, char a7, void **a8)
{
  a8[1] = *a8;
  if (a3)
  {
    LODWORD(__p) = a3;
    v15 = sub_101F854(a1[3], a2 & 0xFFFFFFFFFFFFFFFLL, ((a2 & 0x1000000000000000) != 0) ^ (a4 == 0), &__p);
    v16 = v15;
    v17 = v15;
    if (v15 <= 0xFFFFFFFEFFFFFFFFLL && v15 != 0)
    {
      __p = 0uLL;
      v19 = sub_105BEB4(a1[4], v15, 1);
      if (v19)
      {
        v20 = &v19[-*v19];
        if (*v20 >= 5u)
        {
          v21 = *(v20 + 2);
          if (v21)
          {
            v22 = HIDWORD(v16);
            v23 = &v19[v21 + *&v19[v21]];
            if (*v23 > HIDWORD(v16))
            {
              v24 = &v23[4 * v22 + 4 + *&v23[4 * v22 + 4]];
              v25 = &v24[-*v24];
              if (*v25 >= 9u)
              {
                v26 = *(v25 + 4);
                if (v26)
                {
                  if (*&v24[v26 + *&v24[v26]])
                  {
                    v81 = 0;
                    v82 = 0;
                    v27 = sub_105BEB4(a1[4], v17, 1);
                    if (v27)
                    {
                      v28 = &v27[-*v27];
                      if (*v28 >= 5u)
                      {
                        v29 = *(v28 + 2);
                        if (v29)
                        {
                          v30 = &v27[v29 + *&v27[v29]];
                          if (*v30 > HIDWORD(v16))
                          {
                            v31 = &v30[4 * v22 + 4 + *&v30[4 * v22 + 4]];
                            v32 = &v31[-*v31];
                            if (*v32 >= 0xBu)
                            {
                              v33 = *(v32 + 5);
                              if (v33)
                              {
                                if (*&v31[v33 + *&v31[v33]])
                                {
                                  v65 = *(a1 + 16);
                                  v66 = *(a1 + 9);
                                  v67 = a1[1];
                                  v68 = a1[9];
                                  v69 = a6;
                                  v64 = sub_10AC56C();
                                  if (sub_394BD0())
                                  {
                                    v34 = a6;
                                  }

                                  else
                                  {
                                    v34 = 0x7FFFFFFF;
                                  }

                                  v63 = v34;
                                  v35 = sub_394BD0();
                                  v36 = *a5;
                                  if (v35)
                                  {
                                    v37 = a6;
                                  }

                                  else
                                  {
                                    v37 = 0x7FFFFFFF;
                                  }

                                  *&__p = v16;
                                  *(&__p + 1) = __PAIR64__(v64, v36);
                                  v71 = v63;
                                  v72 = v37;
                                  v73 = a7;
                                  v74 = v66;
                                  v75 = v65;
                                  v76 = 0;
                                  v77 = 0x7FFFFFFF;
                                  sub_106826C(&__p, v68, v67, &v81);
                                  v38 = a1[1];
                                  v39 = sub_FC1BE4(a1[9], v82);
                                  if (v85)
                                  {
                                    v40 = 0;
                                  }

                                  else
                                  {
                                    v40 = v39;
                                  }

                                  if (v40 && (v41 = v81, v42 = v82, v43 = v86, (v44 = sub_3C0614(v38, v81, 1)) != 0) && (v45 = &v44[-*v44], *v45 >= 0xFu) && *(v45 + 7) && (v46 = &v44[*(v45 + 7) + *&v44[*(v45 + 7)]], *v46 > HIDWORD(v41)) && (v47 = &v46[4 * HIDWORD(v41) + 4 + *&v46[4 * HIDWORD(v41) + 4]], v48 = &v47[-*v47], *v48 >= 5u) && (v49 = *(v48 + 2)) != 0 && (v50 = &v47[v49 + *&v47[v49]], v51 = v42 + *(v38 + 3872) * v43, v51 < *v50) && *&v50[4 * v51 + 4] != -1)
                                  {
                                    v52 = a1[1];
                                    if (a4)
                                    {
                                      sub_10688E0(v52, v16, a2, v82, v86, a8);
                                    }

                                    else
                                    {
                                      sub_106843C(v52, v16, a2, v82, v86, a8);
                                    }
                                  }

                                  else if ((sub_3B8508(*a1) & 1) == 0)
                                  {
                                    v53 = (HIDWORD(v81) + (v81 << 6) + (v81 >> 2) + 2654435769u) ^ v81;
                                    v54 = (v82 + (v53 << 6) + (v53 >> 2) + 2654435769u) ^ v53;
                                    v55 = (SHIDWORD(v82) + (v54 << 6) + (v54 >> 2) + 2654435769u) ^ v54;
                                    v56 = (v83 + (v55 << 6) + (v55 >> 2) + 2654435769u) ^ v55;
                                    v57 = (v84 + (v56 << 6) + (v56 >> 2) + 2654435769u) ^ v56;
                                    v58 = (v85 + (v57 << 6) + (v57 >> 2) + 2654435769u) ^ v57;
                                    v59 = (v86 + (v58 << 6) + (v58 >> 2) + 2654435769u) ^ v58;
                                    v60 = (v87 + (v59 << 6) + (v59 >> 2) + 2654435769u) ^ v59;
                                    v61 = (a1[10][2] + 272 * (bswap64(v60) % *a1[10]));
                                    *&__p = &v81;
                                    *(&__p + 1) = v60;
                                    sub_1068DA8(v61, &__p, &v78);
                                    if ((v80 & 1) == 0)
                                    {
                                      v88[0] = v16;
                                      sub_105DF50(&__p, v88, 1uLL);
                                      sub_10625E0(a1, &__p, a5, v69, v85, 4u);
                                      if (__p)
                                      {
                                        *(&__p + 1) = __p;
                                        operator delete(__p);
                                      }

                                      sub_10624F8(a1[10], &v81, &__p);
                                      sub_106490C(&v78, &__p);
                                      v80 = v71;
                                      sub_1F1A8(&__p);
                                    }

                                    if (!v78 || *v78 == v78[1])
                                    {
                                      if (sub_7E7E4(3u))
                                      {
                                        sub_19594F8(&__p);
                                        sub_4A5C(&__p, "Costs are not available from cache (after computing them). LRUCache issue or differing keys.", 92);
                                        sub_1959680(&__p, v88);
                                        sub_7E854(v88, 3u);
                                        if (v89 < 0)
                                        {
                                          operator delete(v88[0]);
                                        }

                                        sub_1959728(&__p);
                                      }

                                      operator new();
                                    }

                                    if (a4)
                                    {
                                      sub_1062DA4(a1, v16, &v78, a2, a8);
                                    }

                                    else
                                    {
                                      sub_10628DC(a1, v16, &v78, a2, a8);
                                    }

                                    v62 = v79;
                                    if (v79 && !atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                    {
                                      (v62->__on_zero_shared)(v62);
                                      std::__shared_weak_count::__release_weak(v62);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10623FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (*(v10 - 97) < 0)
  {
    operator delete(*(v10 - 120));
    sub_1959728(va);
    sub_1F1A8(v10 - 184);
    _Unwind_Resume(a1);
  }

  sub_1959728(va);
  sub_1F1A8(v10 - 184);
  _Unwind_Resume(a1);
}

void sub_10624C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1F1A8(v10 - 160);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_10624E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_10624F8(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = (a2[1] + (*a2 << 6) + (*a2 >> 2) + 2654435769u) ^ *a2;
  v4 = (a2[2] + (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
  v5 = (a2[3] + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v6 = (a2[4] + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v7 = (a2[5] + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  v8 = (*(a2 + 24) + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  v9 = (*(a2 + 13) + (v8 << 6) + (v8 >> 2) + 2654435769u) ^ v8;
  v10 = (*(a2 + 28) + (v9 << 6) + (v9 >> 2) + 2654435769u) ^ v9;
  v11 = (a1[2] + 272 * (bswap64(v10) % *a1));
  v12[0] = a2;
  v12[1] = v10;
  sub_1068DA8(v11, v12, a3);
}

void sub_10625E0(void **a1, void ***a2, unsigned int *a3, int a4, char a5, unsigned int a6)
{
  if ((sub_3B8508(*a1) & 1) == 0)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v12 = *a2;
    v13 = a2[1];
    if (*a2 != v13)
    {
      v14 = 0;
      do
      {
        v14 |= sub_106327C(a1, *v12++, a3, a4, a5, &v37);
      }

      while (v12 != v13);
      v15 = v37;
      if (v14)
      {
        __p = 0;
        v48 = 0;
        v49 = 0;
        sub_101EA90(&v35, 0xCCCCCCCCCCCCCCCDLL * ((v38 - v37) >> 3));
        if (__p)
        {
          v48 = __p;
          operator delete(__p);
        }

        if (v38 != v37)
        {
          v16 = 0;
          v17 = 0xCCCCCCCCCCCCCCCDLL * ((v38 - v37) >> 3);
          do
          {
            v18 = v37 + 40 * v16;
            v19 = *(v18 + 2);
            if (v19)
            {
              v20 = 0;
              v21 = *(v18 + 2);
              do
              {
                ++v20;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              v20 = 0;
            }

            sub_1063F90(v35 + 24 * v16, *(v35 + 3 * v16 + 1), v19, 0, v20);
            ++v16;
          }

          while (v16 != v17);
        }

        atomic_fetch_add(sub_102DC44(), 1u);
        v46 = a4;
        v45 = a5;
        if ((sub_3B8508(*a1) & 1) == 0)
        {
          v22 = sub_2D2E8();
          v40 = a1;
          v41 = &v35;
          v42 = a3;
          v43 = &v46;
          v44 = &v45;
          sub_1068F20(&__p, v22, a6);
        }

        atomic_fetch_add(sub_102DC44(), 0xFFFFFFFF);
        v23 = v35;
        if (v35)
        {
          v24 = v36;
          v25 = v35;
          if (v36 != v35)
          {
            v26 = v36;
            do
            {
              v28 = *(v26 - 3);
              v26 -= 24;
              v27 = v28;
              if (v28)
              {
                *(v24 - 2) = v27;
                operator delete(v27);
              }

              v24 = v26;
            }

            while (v26 != v23);
            v25 = v35;
          }

          v36 = v23;
          operator delete(v25);
        }

        v15 = v37;
      }

      if (v15)
      {
        v29 = v38;
        v30 = v15;
        if (v38 != v15)
        {
          do
          {
            v31 = *(v29 - 3);
            if (v31)
            {
              do
              {
                v32 = *v31;
                operator delete(v31);
                v31 = v32;
              }

              while (v32);
            }

            v34 = *(v29 - 5);
            v29 -= 5;
            v33 = v34;
            *v29 = 0;
            if (v34)
            {
              operator delete(v33);
            }
          }

          while (v29 != v15);
          v30 = v37;
        }

        v38 = v15;
        operator delete(v30);
      }
    }
  }
}

void sub_1062884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
    sub_105F2B4(&a13);
    _Unwind_Resume(a1);
  }

  sub_105F2B4(&a13);
  _Unwind_Resume(a1);
}

void sub_10628DC(uint64_t a1, unint64_t a2, uint64_t **a3, uint64_t *a4, void **a5)
{
  v7 = a3;
  if (*a3 && (v9 = (*a3)[3]) != 0)
  {
    v10 = (*(v9 + 32) - *(v9 + 24)) >> 3;
    v53 = a5;
    __p = 0;
    v57 = 0;
    v58 = 0;
    v11 = *a3;
    if (!*a3)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v12 = sub_105BEB4(*(a1 + 32), a2, 1);
    if (v12 && (v13 = &v12[-*v12], *v13 >= 5u) && *(v13 + 2) && (v14 = &v12[*(v13 + 2) + *&v12[*(v13 + 2)]], *v14 > HIDWORD(a2)) && (v15 = &v14[4 * HIDWORD(a2) + 4 + *&v14[4 * HIDWORD(a2) + 4]], v16 = &v15[-*v15], *v16 >= 0xBu) && (v17 = *(v16 + 5)) != 0)
    {
      LODWORD(v10) = *&v15[v17 + *&v15[v17]];
      v53 = a5;
      __p = 0;
      v57 = 0;
      v58 = 0;
      v11 = *v7;
      if (!*v7)
      {
LABEL_19:
        LOWORD(v54) = sub_105BD90(*(a1 + 32), a4, a2);
        if (v54 == 0xFFFF)
        {
          goto LABEL_49;
        }

        goto LABEL_22;
      }
    }

    else
    {
      LODWORD(v10) = 0;
      v53 = a5;
      __p = 0;
      v57 = 0;
      v58 = 0;
      v11 = *v7;
      if (!*v7)
      {
        goto LABEL_19;
      }
    }
  }

  v18 = v11[3];
  if (!v18)
  {
    goto LABEL_19;
  }

  v59[0] = a4;
  v19 = v18[1];
  v61 = *v18;
  v60 = v19;
  v20 = sub_1069A1C(&v61, &v60, v59);
  if (v18[1] == v20)
  {
    goto LABEL_49;
  }

  if (*v20 != v59[0])
  {
    goto LABEL_49;
  }

  v54 = (v20 - *v18) >> 3;
  if (v54 == 0xFFFF)
  {
    goto LABEL_49;
  }

LABEL_22:
  if (*v7 && (v21 = (*v7)[3]) != 0)
  {
    if ((v21 + 24) != &__p)
    {
      sub_31F64(&__p, *(v21 + 24), *(v21 + 32), (*(v21 + 32) - *(v21 + 24)) >> 3);
    }
  }

  else
  {
    v22 = *(a1 + 32);
    v57 = __p;
    v23 = sub_105BEB4(v22, a2, 1);
    if (v23)
    {
      v24 = &v23[-*v23];
      if (*v24 >= 5u)
      {
        if (*(v24 + 2))
        {
          v25 = &v23[*(v24 + 2) + *&v23[*(v24 + 2)]];
          if (*v25 > HIDWORD(a2))
          {
            v26 = &v25[4 * HIDWORD(a2) + 4 + *&v25[4 * HIDWORD(a2) + 4]];
            v27 = &v26[-*v26];
            if (*v27 >= 0xBu)
            {
              v28 = *(v27 + 5);
              if (v28)
              {
                v29 = &v26[v28 + *&v26[v28]];
                v30 = *v29;
                v61 = (v29 + 4);
                v60 = &v29[8 * v30 + 4];
                sub_1069B6C(&v61, &v60, &__p, v59);
              }
            }
          }
        }
      }
    }
  }

  v32 = __p;
  v31 = v57;
  v33 = v53;
  if (__p != v57)
  {
    v34 = 0;
    v35 = v10 * v54;
    v36 = v53[1];
    v51 = v57;
    v52 = v7;
    do
    {
      while (1)
      {
        v38 = v35;
        v39 = **v7;
        v40 = v33[2];
        if (v36 >= v40)
        {
          break;
        }

        v37 = *v32++;
        *v36 = a4;
        *(v36 + 8) = v37;
        *(v36 + 16) = a2;
        *(v36 + 24) = v54;
        *(v36 + 26) = v34;
        *(v36 + 28) = *(v39 + 8 * v38);
        v36 += 40;
        v33[1] = v36;
        v35 = v38 + 1;
        ++v34;
        if (v32 == v31)
        {
          goto LABEL_49;
        }
      }

      v41 = a4;
      v42 = *v33;
      v43 = 0xCCCCCCCCCCCCCCCDLL * ((v36 - *v33) >> 3);
      v44 = v43 + 1;
      if (v43 + 1 > 0x666666666666666)
      {
        sub_1794();
      }

      v45 = 0xCCCCCCCCCCCCCCCDLL * ((v40 - v42) >> 3);
      if (2 * v45 > v44)
      {
        v44 = 2 * v45;
      }

      if (v45 >= 0x333333333333333)
      {
        v46 = 0x666666666666666;
      }

      else
      {
        v46 = v44;
      }

      if (v46)
      {
        if (v46 <= 0x666666666666666)
        {
          operator new();
        }

        sub_1808();
      }

      v47 = v36;
      v33 = v53;
      v48 = 40 * v43;
      v49 = *v32;
      a4 = v41;
      *v48 = v41;
      *(v48 + 8) = v49;
      *(v48 + 16) = a2;
      *(v48 + 24) = v54;
      *(v48 + 26) = v34;
      *(v48 + 28) = *(v39 + 8 * v38);
      v36 = v48 + 40;
      v50 = (v48 - (v47 - v42));
      memcpy(v50, v42, v47 - v42);
      *v53 = v50;
      v53[1] = v36;
      v53[2] = 0;
      if (v42)
      {
        operator delete(v42);
      }

      v31 = v51;
      v7 = v52;
      v53[1] = v36;
      v35 = v38 + 1;
      ++v34;
      ++v32;
    }

    while (v32 != v51);
  }

LABEL_49:
  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }
}

void sub_1062D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1062DA4(uint64_t a1, unint64_t a2, uint64_t **a3, uint64_t *a4, void *a5)
{
  v6 = a3;
  if (*a3 && (v8 = (*a3)[3]) != 0)
  {
    v9 = (*(v8 + 32) - *(v8 + 24)) >> 3;
    __p = 0;
    v55 = 0;
    v56 = 0;
    v10 = *a3;
    if (!*a3)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = sub_105BEB4(*(a1 + 32), a2, 1);
    if (v11 && (v12 = &v11[-*v11], *v12 >= 5u) && *(v12 + 2) && (v13 = &v11[*(v12 + 2) + *&v11[*(v12 + 2)]], *v13 > HIDWORD(a2)) && (v14 = &v13[4 * HIDWORD(a2) + 4 + *&v13[4 * HIDWORD(a2) + 4]], v15 = &v14[-*v14], *v15 >= 0xBu) && (v16 = *(v15 + 5)) != 0)
    {
      LODWORD(v9) = *&v14[v16 + *&v14[v16]];
      __p = 0;
      v55 = 0;
      v56 = 0;
      v10 = *v6;
      if (!*v6)
      {
LABEL_19:
        LOWORD(v52) = sub_105CC98(*(a1 + 32), a4, a2);
        v20 = a5;
        if (v52 == 0xFFFF)
        {
          goto LABEL_50;
        }

        goto LABEL_22;
      }
    }

    else
    {
      LODWORD(v9) = 0;
      __p = 0;
      v55 = 0;
      v56 = 0;
      v10 = *v6;
      if (!*v6)
      {
        goto LABEL_19;
      }
    }
  }

  v17 = v10[3];
  if (!v17)
  {
    goto LABEL_19;
  }

  v57[0] = a4;
  v18 = *(v17 + 32);
  v59 = *(v17 + 24);
  v58 = v18;
  v19 = sub_1069A1C(&v59, &v58, v57);
  v20 = a5;
  if (*(v17 + 32) == v19)
  {
    goto LABEL_50;
  }

  if (*v19 != v57[0])
  {
    goto LABEL_50;
  }

  v52 = (v19 - *(v17 + 24)) >> 3;
  if (v52 == 0xFFFF)
  {
    goto LABEL_50;
  }

LABEL_22:
  if (*v6 && (v21 = (*v6)[3]) != 0)
  {
    if (v21 != &__p)
    {
      sub_31F64(&__p, *v21, *(v21 + 8), (*(v21 + 8) - *v21) >> 3);
      v20 = a5;
    }
  }

  else
  {
    v22 = *(a1 + 32);
    v55 = __p;
    v23 = sub_105BEB4(v22, a2, 1);
    v20 = a5;
    if (v23)
    {
      v24 = &v23[-*v23];
      if (*v24 >= 5u)
      {
        if (*(v24 + 2))
        {
          v25 = &v23[*(v24 + 2) + *&v23[*(v24 + 2)]];
          if (*v25 > HIDWORD(a2))
          {
            v26 = &v25[4 * HIDWORD(a2) + 4 + *&v25[4 * HIDWORD(a2) + 4]];
            v27 = &v26[-*v26];
            if (*v27 >= 9u)
            {
              v28 = *(v27 + 4);
              if (v28)
              {
                v29 = &v26[v28 + *&v26[v28]];
                v30 = *v29;
                v59 = (v29 + 4);
                v58 = &v29[8 * v30 + 4];
                sub_1069B6C(&v59, &v58, &__p, v57);
                v20 = a5;
              }
            }
          }
        }
      }
    }
  }

  v32 = __p;
  v31 = v55;
  if (__p != v55)
  {
    v33 = 0;
    v34 = v52;
    v35 = v20[1];
    v48 = v55;
    v49 = v9;
    v50 = v6;
    do
    {
      while (1)
      {
        v37 = v34;
        v38 = **v6;
        v39 = v20[2];
        if (v35 >= v39)
        {
          break;
        }

        v36 = *v32++;
        *v35 = v36;
        *(v35 + 8) = a4;
        *(v35 + 16) = a2;
        *(v35 + 24) = v33;
        *(v35 + 26) = v52;
        *(v35 + 28) = *(v38 + 8 * v37);
        v35 += 40;
        v20[1] = v35;
        v34 = v37 + v9;
        ++v33;
        if (v32 == v31)
        {
          goto LABEL_50;
        }
      }

      v40 = *v20;
      v41 = 0xCCCCCCCCCCCCCCCDLL * ((v35 - *v20) >> 3) + 1;
      if (v41 > 0x666666666666666)
      {
        sub_1794();
      }

      v42 = 0xCCCCCCCCCCCCCCCDLL * ((v39 - v40) >> 3);
      if (2 * v42 > v41)
      {
        v41 = 2 * v42;
      }

      if (v42 >= 0x333333333333333)
      {
        v43 = 0x666666666666666;
      }

      else
      {
        v43 = v41;
      }

      if (v43)
      {
        if (v43 <= 0x666666666666666)
        {
          operator new();
        }

        sub_1808();
      }

      v44 = v35;
      v45 = v20;
      v46 = 8 * ((v35 - *v20) >> 3);
      *v46 = *v32;
      *(v46 + 8) = a4;
      *(v46 + 16) = a2;
      *(v46 + 24) = v33;
      *(v46 + 26) = v52;
      *(v46 + 28) = *(v38 + 8 * v37);
      v35 = v46 + 40;
      v47 = (v46 - (v44 - v40));
      memcpy(v47, v40, v44 - v40);
      *v45 = v47;
      v45[1] = v35;
      v45[2] = 0;
      if (v40)
      {
        operator delete(v40);
        v20 = a5;
      }

      else
      {
        v20 = v45;
      }

      LODWORD(v9) = v49;
      v6 = v50;
      v31 = v48;
      v20[1] = v35;
      v34 = v37 + v49;
      ++v33;
      ++v32;
    }

    while (v32 != v48);
  }

LABEL_50:
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }
}

void sub_1063258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_106327C(uint64_t a1, void *a2, unsigned int *a3, int a4, char a5, uint64_t *a6)
{
  v104 = *(a1 + 18);
  v11 = *(a1 + 16);
  v110 = *(a1 + 72);
  v107 = *(a1 + 8);
  v12 = sub_10AC56C();
  if (sub_394BD0())
  {
    v13 = a4;
  }

  else
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = a2;
  v15 = sub_394BD0();
  v112 = a3;
  v16 = *a3;
  v109 = a4;
  if (v15)
  {
    v17 = a4;
  }

  else
  {
    v17 = 0x7FFFFFFF;
  }

  v127[0] = a2;
  v127[1] = __PAIR64__(v12, v16);
  *&v128 = __PAIR64__(v17, v13);
  v113 = a5;
  BYTE8(v128) = a5;
  WORD5(v128) = v104;
  WORD6(v128) = v11;
  LODWORD(v129) = 0x7FFFFFFF;
  sub_106826C(v127, v110, v107, &v130);
  v18 = *(a1 + 8);
  if (sub_FC1BE4(*(a1 + 72), v131) && !v135)
  {
    v19 = v130;
    v20 = v131;
    v21 = v136;
    v22 = sub_3C0614(v18, v130, 1);
    if (v22)
    {
      v23 = &v22[-*v22];
      if (*v23 >= 0xFu)
      {
        if (*(v23 + 7))
        {
          v24 = &v22[*(v23 + 7) + *&v22[*(v23 + 7)]];
          if (*v24 > HIDWORD(v19))
          {
            v25 = &v24[4 * HIDWORD(v19) + 4 + *&v24[4 * HIDWORD(v19) + 4]];
            v26 = &v25[-*v25];
            if (*v26 >= 5u)
            {
              v27 = *(v26 + 2);
              if (v27)
              {
                v28 = &v25[v27 + *&v25[v27]];
                v29 = v20 + *(v18 + 3872) * v21;
                if (v29 < *v28 && v28[v29 + 1] != -1)
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  if (!v14)
  {
    goto LABEL_26;
  }

  v31 = sub_101E790(*(a1 + 24), v14, 1);
  if (!v31 || (v32 = &v31[-*v31], *v32 < 9u) || (v33 = *(v32 + 4)) == 0)
  {
    v37 = -1;
    goto LABEL_27;
  }

  v34 = sub_101E640(&v31[v33 + *&v31[v33]], HIDWORD(v14));
  v35 = (v34 - *v34);
  if (*v35 < 5u || (v36 = v35[2]) == 0)
  {
LABEL_26:
    v37 = 0;
    goto LABEL_27;
  }

  v37 = *(v34 + v36);
LABEL_27:
  v38 = 0xCCCCCCCCCCCCCCCDLL * ((a6[1] - *a6) >> 3);
  v39 = (v37 + 1);
  if (v39 > v38)
  {
    sub_1064374(a6, v39 - v38);
  }

  v40 = (HIDWORD(v130) + (v130 << 6) + (v130 >> 2) + 2654435769u) ^ v130;
  v41 = (v131 + (v40 << 6) + (v40 >> 2) + 2654435769u) ^ v40;
  v42 = (v132 + (v41 << 6) + (v41 >> 2) + 2654435769u) ^ v41;
  v43 = (v133 + (v42 << 6) + (v42 >> 2) + 2654435769u) ^ v42;
  v44 = (v134 + (v43 << 6) + (v43 >> 2) + 2654435769u) ^ v43;
  v45 = (v135 + (v44 << 6) + (v44 >> 2) + 2654435769u) ^ v44;
  v46 = (v136 + (v45 << 6) + (v45 >> 2) + 2654435769u) ^ v45;
  v47 = (v137 + (v46 << 6) + (v46 >> 2) + 2654435769u) ^ v46;
  v48 = (*(*(a1 + 80) + 16) + 272 * (bswap64(v47) % **(a1 + 80)));
  v138 = &v130;
  v139 = v47;
  sub_1068DA8(v48, &v138, v127);
  v49 = v128;
  v50 = v127[1];
  if (v127[1] && !atomic_fetch_add(v127[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v50->__on_zero_shared)(v50);
    std::__shared_weak_count::__release_weak(v50);
    if (v49)
    {
      return v49 ^ 1u;
    }
  }

  else if (v49)
  {
    return v49 ^ 1u;
  }

  v128 = 0u;
  v129 = 0u;
  *v127 = 0u;
  sub_1064544(v127);
  v51 = ((*(&v129 + 1) + v129) * 0x8060180601806019) >> 64;
  v52 = (v51 + ((*(&v129 + 1) + v129 - v51) >> 1)) >> 8;
  v53 = *(v127[1] + v52) + 12 * (*(&v129 + 1) + v129 - 341 * v52);
  *v53 = v14;
  *(v53 + 8) = v37;
  __p = 0;
  v125 = 0;
  v126 = 0;
  v54 = __CFADD__(*(&v129 + 1), 1);
  v55 = ++*(&v129 + 1);
  if (v54)
  {
    goto LABEL_73;
  }

  v105 = v49;
  do
  {
    v56 = *(v127[1] + v129 / 0x155) + 12 * (v129 % 0x155);
    v57 = *(v56 + 8);
    v122 = *v56;
    v123 = v57;
    *&v129 = v129 + 1;
    *(&v129 + 1) = v55 - 1;
    if (v129 >= 0x2AA)
    {
      operator delete(*v127[1]);
      v127[1] = v127[1] + 8;
      *&v129 = v129 - 341;
    }

    v58 = v123;
    if (!sub_3A8760((*a6 + 40 * v123), &v122))
    {
      sub_10664DC((*a6 + 40 * v58), &v122);
      if (v58 != 1)
      {
        v138 = v122;
        sub_1066854(*(a1 + 24), &v138, &__p);
        v59 = __p;
        v111 = v125;
        if (__p != v125)
        {
          v108 = v58 - 1;
          do
          {
            v61 = *(a1 + 18);
            v62 = *(a1 + 16);
            v63 = *(a1 + 72);
            v64 = *(a1 + 8);
            v65 = sub_10AC56C();
            v66 = sub_394BD0();
            v67 = sub_394BD0();
            if (v66)
            {
              v68 = v109;
            }

            else
            {
              v68 = 0x7FFFFFFF;
            }

            v69 = *v112;
            if (v67)
            {
              v70 = v109;
            }

            else
            {
              v70 = 0x7FFFFFFF;
            }

            v138 = *v59;
            v139 = __PAIR64__(v65, v69);
            v140 = v68;
            v141 = v70;
            v142 = v113;
            v143 = v61;
            v144 = v62;
            v145 = 0;
            v146 = 0x7FFFFFFF;
            sub_106826C(&v138, v63, v64, &v114);
            v71 = *(a1 + 8);
            v72 = sub_FC1BE4(*(a1 + 72), v115);
            if (v119)
            {
              v73 = 0;
            }

            else
            {
              v73 = v72;
            }

            if (!v73 || (v74 = v114, v75 = v115, v76 = v120, (v77 = sub_3C0614(v71, v114, 1)) == 0) || (v78 = &v77[-*v77], *v78 < 0xFu) || !*(v78 + 7) || (v79 = &v77[*(v78 + 7) + *&v77[*(v78 + 7)]], *v79 <= HIDWORD(v74)) || (v80 = &v79[4 * HIDWORD(v74) + 4 + *&v79[4 * HIDWORD(v74) + 4]], v81 = &v80[-*v80], *v81 < 5u) || (v82 = *(v81 + 2)) == 0 || (v83 = &v80[v82 + *&v80[v82]], v84 = v75 + *(v71 + 3872) * v76, v84 >= *v83) || v83[v84 + 1] == -1)
            {
              v85 = (HIDWORD(v114) + 2654435769 + (v114 << 6) + (v114 >> 2)) ^ v114;
              v86 = (v115 + 2654435769 + (v85 << 6) + (v85 >> 2)) ^ v85;
              v87 = (v116 + 2654435769 + (v86 << 6) + (v86 >> 2)) ^ v86;
              v88 = (v117 + 2654435769 + (v87 << 6) + (v87 >> 2)) ^ v87;
              v89 = (v118 + 2654435769 + (v88 << 6) + (v88 >> 2)) ^ v88;
              v90 = (v119 + 2654435769 + (v89 << 6) + (v89 >> 2)) ^ v89;
              v91 = (v120 + 2654435769 + (v90 << 6) + (v90 >> 2)) ^ v90;
              v92 = (v121 + 2654435769 + (v91 << 6) + (v91 >> 2)) ^ v91;
              v93 = (*(*(a1 + 80) + 16) + 272 * (bswap64(v92) % **(a1 + 80)));
              v147[0] = &v114;
              v147[1] = v92;
              sub_1068DA8(v93, v147, &v138);
              v94 = v140;
              v95 = v139;
              if (v139 && !atomic_fetch_add((v139 + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v95->__on_zero_shared)(v95);
                std::__shared_weak_count::__release_weak(v95);
                if ((v94 & 1) == 0)
                {
LABEL_64:
                  v96 = v127[1];
                  if (v128 == v127[1])
                  {
                    v97 = 0;
                  }

                  else
                  {
                    v97 = 341 * ((v128 - v127[1]) >> 3) - 1;
                  }

                  v98 = *(&v129 + 1) + v129;
                  if (v97 == *(&v129 + 1) + v129)
                  {
                    sub_1064544(v127);
                    v96 = v127[1];
                    v98 = *(&v129 + 1) + v129;
                  }

                  v60 = v96[v98 / 0x155] + 12 * (v98 % 0x155);
                  *v60 = *v59;
                  *(v60 + 8) = v108;
                  ++*(&v129 + 1);
                }
              }

              else if ((v94 & 1) == 0)
              {
                goto LABEL_64;
              }
            }

            ++v59;
          }

          while (v59 != v111);
        }
      }
    }

    v55 = *(&v129 + 1);
  }

  while (*(&v129 + 1));
  v49 = v105;
  if (__p)
  {
    v125 = __p;
    operator delete(__p);
  }

LABEL_73:
  v99 = v127[1];
  v100 = v128;
  *(&v129 + 1) = 0;
  v101 = (v128 - v127[1]) >> 3;
  if (v101 >= 3)
  {
    do
    {
      operator delete(*v99);
      v100 = v128;
      v99 = (v127[1] + 8);
      v127[1] = v99;
      v101 = (v128 - v99) >> 3;
    }

    while (v101 > 2);
  }

  if (v101 == 1)
  {
    v102 = 170;
LABEL_81:
    *&v129 = v102;
  }

  else if (v101 == 2)
  {
    v102 = 341;
    goto LABEL_81;
  }

  if (v99 != v100)
  {
    do
    {
      v103 = *v99++;
      operator delete(v103);
    }

    while (v99 != v100);
    if (v128 != v127[1])
    {
      *&v128 = v128 + ((v127[1] - v128 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v127[0])
  {
    operator delete(v127[0]);
  }

  return v49 ^ 1u;
}

void sub_1063BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_49CAC(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_1063C18(uint64_t a1, uint64_t a2, unsigned int *a3, int a4, char a5)
{
  if (a2 && (v10 = sub_101E790(*(a1 + 24), a2, 1)) != 0 && (v11 = &v10[-*v10], *v11 >= 9u) && (v12 = *(v11 + 4)) != 0 && (v13 = sub_101E640(&v10[v12 + *&v10[v12]], HIDWORD(a2)), v14 = (v13 - *v13), *v14 >= 5u) && (v15 = v14[2]) != 0 && *(v13 + v15) && ((v45 = *(a1 + 16), v46 = *(a1 + 18), v47 = *(a1 + 8), v48 = *(a1 + 72), v16 = sub_10AC56C(), !sub_394BD0()) ? (v17 = 0x7FFFFFFF) : (v17 = a4), (v18 = sub_394BD0(), v19 = *a3, !v18) ? (v20 = 0x7FFFFFFF) : (v20 = a4), (v57 = a2, v58 = __PAIR64__(v16, v19), v59 = v17, v60 = v20, v61 = a5, v62 = v46, v63 = v45, v64 = 0, v65 = 0x7FFFFFFF, sub_106826C(&v57, v48, v47, &v49), v21 = *(a1 + 8), !sub_FC1BE4(*(a1 + 72), v50)) || v54 || (v22 = v49, v23 = v50, v24 = v55, (v25 = sub_3C0614(v21, v49, 1)) == 0) || (v26 = &v25[-*v25], *v26 < 0xFu) || !*(v26 + 7) || (v27 = &v25[*(v26 + 7) + *&v25[*(v26 + 7)]], *v27 <= HIDWORD(v22)) || (v28 = &v27[4 * HIDWORD(v22) + 4 + *&v27[4 * HIDWORD(v22) + 4]], v29 = &v28[-*v28], *v29 < 5u) || (v30 = *(v29 + 2)) == 0 || (v31 = &v28[v30 + *&v28[v30]], v32 = v23 + *(v21 + 3872) * v24, v32 >= *v31) || v31[v32 + 1] == -1))
  {
    v35 = (HIDWORD(v49) + (v49 << 6) + (v49 >> 2) + 2654435769u) ^ v49;
    v36 = (v50 + (v35 << 6) + (v35 >> 2) + 2654435769u) ^ v35;
    v37 = (v51 + (v36 << 6) + (v36 >> 2) + 2654435769u) ^ v36;
    v38 = (v52 + (v37 << 6) + (v37 >> 2) + 2654435769u) ^ v37;
    v39 = (v53 + (v38 << 6) + (v38 >> 2) + 2654435769u) ^ v38;
    v40 = (v54 + (v39 << 6) + (v39 >> 2) + 2654435769u) ^ v39;
    v41 = (v55 + (v40 << 6) + (v40 >> 2) + 2654435769u) ^ v40;
    v42 = (v56 + (v41 << 6) + (v41 >> 2) + 2654435769u) ^ v41;
    v43 = (*(*(a1 + 80) + 16) + 272 * (bswap64(v42) % **(a1 + 80)));
    v66[0] = &v49;
    v66[1] = v42;
    sub_1068DA8(v43, v66, &v57);
    v33 = v59 ^ 1;
    v44 = v58;
    if (v58 && !atomic_fetch_add((v58 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v44->__on_zero_shared)(v44);
      std::__shared_weak_count::__release_weak(v44);
    }
  }

  else
  {
    v33 = 0;
  }

  return v33 & 1;
}

char *sub_1063F90(uint64_t a1, char *__src, void *a3, void *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a5 > (v6 - v7) >> 3)
  {
    v8 = *a1;
    v9 = a5 + ((v7 - *a1) >> 3);
    if (v9 >> 61)
    {
      sub_1794();
    }

    v10 = v6 - v8;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v12 = 8 * ((__src - v8) >> 3);
    v32 = 8 * a5;
    v33 = v12 + 8 * a5;
    v34 = v12;
    do
    {
      *v34++ = a3[2];
      a3 = *a3;
      v32 -= 8;
    }

    while (v32);
    v35 = *(a1 + 8) - __src;
    memcpy((v12 + 8 * a5), __src, v35);
    v37 = v33 + v35;
    *(a1 + 8) = __src;
    v38 = *a1;
    v39 = &__src[-*a1];
    v40 = v12 - v39;
    memcpy((v12 - v39), *a1, v39);
    *a1 = v40;
    *(a1 + 8) = v37;
    *(a1 + 16) = 0;
    if (v38)
    {
      operator delete(v38);
      return v12;
    }

    return v12;
  }

  v13 = (v7 - __src) >> 3;
  if (v13 >= a5)
  {
    v18 = a5;
    v19 = &__src[8 * a5];
    v20 = (v7 - 8 * a5);
    if (v20 >= v7)
    {
      v24 = *(a1 + 8);
    }

    else
    {
      v21 = v20 + 1;
      if (v7 > (v20 + 1))
      {
        v21 = *(a1 + 8);
      }

      v22 = &v21[v18] + ~v7;
      v23 = v22 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v24 = *(a1 + 8);
      if (v23)
      {
        goto LABEL_69;
      }

      v25 = (v22 >> 3) + 1;
      v26 = 8 * (v25 & 0x3FFFFFFFFFFFFFFCLL);
      v20 = (v20 + v26);
      v24 = (v7 + v26);
      v27 = (v7 + 16);
      v28 = (v7 + 16 - v18 * 8);
      v29 = v25 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v30 = *v28;
        *(v27 - 1) = *(v28 - 1);
        *v27 = v30;
        v27 += 2;
        v28 += 2;
        v29 -= 4;
      }

      while (v29);
      if (v25 != (v25 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_69:
        do
        {
          v31 = *v20++;
          *v24++ = v31;
        }

        while (v20 < v7);
      }
    }

    *(a1 + 8) = v24;
    if (v7 != v19)
    {
      v57 = a3;
      v58 = a5;
      memmove(v19, __src, v7 - v19);
      a5 = v58;
      a3 = v57;
    }

    *__src = a3[2];
    if (a5 != 1)
    {
      v59 = __src + 8;
      v60 = a5 + 1;
      do
      {
        a3 = *a3;
        *v59++ = a3[2];
        --v60;
      }

      while (v60 > 2);
    }
  }

  else
  {
    v14 = a3;
    if (v13 >= 1)
    {
      v15 = v13 + 1;
      v14 = a3;
      do
      {
        v14 = *v14;
        --v15;
      }

      while (v15 > 1);
    }

    v16 = *(a1 + 8);
    if (v14 == a4)
    {
      v17 = *(a1 + 8);
    }

    else
    {
      v42 = v14;
      v17 = *(a1 + 8);
      do
      {
        *v17 = v42[2];
        v17 += 8;
        v42 = *v42;
        v16 += 8;
      }

      while (v42 != a4);
    }

    *(a1 + 8) = v16;
    if (v13 >= 1)
    {
      v43 = a5;
      v44 = &__src[8 * a5];
      v45 = (v16 - 8 * a5);
      if (v45 >= v7)
      {
        v49 = v16;
      }

      else
      {
        v46 = v45 + 1;
        if (v7 > (v45 + 1))
        {
          v46 = v7;
        }

        v47 = &v46[v43] + ~v16;
        v48 = v47 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
        v49 = v16;
        if (v48)
        {
          goto LABEL_70;
        }

        v50 = (v47 >> 3) + 1;
        v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
        v45 = (v45 + v51);
        v49 = (v16 + v51);
        v52 = (v16 + 16);
        v53 = (v16 + 16 - v43 * 8);
        v54 = v50 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v55 = *v53;
          *(v52 - 1) = *(v53 - 1);
          *v52 = v55;
          v52 += 2;
          v53 += 2;
          v54 -= 4;
        }

        while (v54);
        if (v50 != (v50 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_70:
          do
          {
            v56 = *v45++;
            *v49++ = v56;
          }

          while (v45 < v7);
        }
      }

      *(a1 + 8) = v49;
      if (v17 != v44)
      {
        v61 = a3;
        memmove(&__src[8 * a5], __src, v16 - v44);
        a3 = v61;
      }

      if (v14 != a3)
      {
        v62 = __src;
        do
        {
          *v62++ = a3[2];
          a3 = *a3;
        }

        while (a3 != v14);
      }
    }
  }

  return __src;
}

void sub_1064374(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 3) >= a2)
  {
    if (a2)
    {
      v8 = v2 + 40 * a2;
      do
      {
        *v2 = 0uLL;
        *(v2 + 16) = 0uLL;
        *(v2 + 32) = 1065353216;
        v2 += 40;
      }

      while (v2 != v8);
      v2 = v8;
    }

    a1[1] = v2;
  }

  else
  {
    v4 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a1) >> 3);
    v5 = v4 + a2;
    if (v4 + a2 > 0x666666666666666)
    {
      sub_1794();
    }

    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x333333333333333)
    {
      v7 = 0x666666666666666;
    }

    else
    {
      v7 = v5;
    }

    v20 = a1;
    if (v7)
    {
      if (v7 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v9 = 40 * v4;
    __p = 0;
    v17 = 40 * v4;
    v19 = 0;
    do
    {
      *v9 = 0uLL;
      *(v9 + 16) = 0uLL;
      *(v9 + 32) = 1065353216;
      v9 += 40;
    }

    while (v9 != 40 * v4 + 40 * a2);
    v18 = 40 * v4 + 40 * a2;
    sub_475A58(a1, &__p);
    v10 = v17;
    while (1)
    {
      v11 = v18;
      if (v18 == v10)
      {
        break;
      }

      v12 = (v18 - 40);
      v18 -= 40;
      v13 = *(v11 - 24);
      if (v13)
      {
        do
        {
          v14 = *v13;
          operator delete(v13);
          v13 = v14;
        }

        while (v14);
      }

      v15 = *v12;
      *v12 = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_1064530(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_475B9C(va);
  _Unwind_Resume(a1);
}

void *sub_1064544(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x155;
  v3 = v1 - 341;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_2133C(a1, &v11);
}

void sub_10648B4(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_106490C(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = *(result + 8);
  *result = v2;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t sub_1064990@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 1);
  *a4 = *a1;
  *(a4 + 16) = v8;
  *(a4 + 32) = *(a1 + 8);
  v9 = sub_FC17C8(a2, a1 + 2);
  *(a4 + 12) = 0x8000000080000000;
  *(a4 + 20) = 0x7FFFFFFF;
  v10 = *(a1 + 13);
  if (v10 && (v11 = *a1, (v12 = sub_1055EF8(a3, *a1, 1)) != 0) && (v13 = &v12[-*v12], *v13 >= 5u) && *(v13 + 2) && (v14 = &v12[*(v13 + 2) + *&v12[*(v13 + 2)]], *v14 > HIDWORD(v11)))
  {
    v15 = &v14[4 * HIDWORD(v11) + 4 + *&v14[4 * HIDWORD(v11) + 4]];
    v16 = &v15[-*v15];
    if (*v16 >= 7u && (v17 = *(v16 + 3)) != 0)
    {
      v18 = v15[v17];
    }

    else
    {
      v18 = 0;
    }

    if ((v18 & (1 << v10)) != 0)
    {
      v19 = *(a1 + 13);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  *(a4 + 26) = v19;
  *(a4 + 24) = 0;
  *(a4 + 28) = 0;
  v20 = *a1;
  v21 = sub_1055EF8(a3, v20, 1);
  if (v21 && (v22 = &v21[-*v21], *v22 >= 5u) && *(v22 + 2) && (v23 = &v21[*(v22 + 2) + *&v21[*(v22 + 2)]], *v23 > HIDWORD(v20)) && (v24 = &v23[4 * HIDWORD(v20) + 4 + *&v23[4 * HIDWORD(v20) + 4]], v25 = &v24[-*v24], *v25 >= 5u) && (v26 = *(v25 + 2)) != 0)
  {
    v27 = *&v24[v26];
  }

  else
  {
    v27 = 0;
  }

  v29 = v27;
  result = sub_FC1B44(a2, *v9, &v29);
  *(a4 + 8) = result;
  return result;
}

uint64_t sub_1064B60(uint64_t a1, unsigned int *a2)
{
  v2 = 0;
  v3 = *a2;
  v4 = a2[1];
  v5 = (v4 + (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
  v6 = *(a2 + 8);
  v7 = (v6 + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v8 = *(a2 + 9);
  v9 = (v8 + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  v10 = -1;
  while (1)
  {
    v11 = v9 & (*(a1 + 64) - 1);
    v12 = *(a1 + 88) + 16 * v11;
    v13 = *v12;
    if (*(a1 + 72) == *v12 && *(a1 + 76) == *(v12 + 4) && *(v12 + 8) == *(a1 + 80) && *(a1 + 81) == *(v12 + 9))
    {
      break;
    }

    if (*(a1 + 48) && *(a1 + 32) == v13 && *(a1 + 36) == *(v12 + 4) && *(v12 + 8) == *(a1 + 40) && *(a1 + 41) == *(v12 + 9))
    {
      if (v10 == -1)
      {
        v10 = v11;
      }
    }

    else if (v3 == v13 && v4 == *(v12 + 4) && *(v12 + 8) == v6 && v8 == *(v12 + 9))
    {
      return v11;
    }

    v9 = ++v2 + v11;
  }

  return -1;
}

void sub_1064CA0(uint64_t a1, unint64_t a2, unint64_t a3, int a4, unsigned __int16 a5, void *a6)
{
  a6[1] = *a6;
  v12 = a2;
  v13 = sub_1055EF8(a1, a2, 1);
  if (!v13)
  {
    return;
  }

  v14 = &v13[-*v13];
  if (*v14 < 5u)
  {
    return;
  }

  v15 = *(v14 + 2);
  if (!v15)
  {
    return;
  }

  v16 = HIDWORD(a2);
  v17 = &v13[v15 + *&v13[v15]];
  if (*v17 <= HIDWORD(a2))
  {
    return;
  }

  v18 = &v17[4 * v16 + 4 + *&v17[4 * v16 + 4]];
  v19 = &v18[-*v18];
  v20 = *v19;
  if (v20 < 9)
  {
    return;
  }

  v21 = *(v19 + 4);
  if (*(v19 + 4))
  {
    v21 = (v21 + v18 + *(v21 + v18));
  }

  if (v20 < 0xB)
  {
    return;
  }

  v22 = *(v19 + 5);
  if (!v22 || !v21)
  {
    return;
  }

  v25 = *v21;
  v23 = v21 + 1;
  v24 = v25;
  v26 = &v23[v25];
  v27 = v23;
  while (v24)
  {
    v28 = (v27 + ((4 * v24) & 0x7FFFFFFF8));
    v30 = *v28;
    v29 = v28 + 1;
    v31 = v24 >> 1;
    v24 += ~(v24 >> 1);
    if (v30 >= a3)
    {
      v24 = v31;
    }

    else
    {
      v27 = v29;
    }
  }

  if (v27 == v26)
  {
    return;
  }

  if (*v27 != a3)
  {
    return;
  }

  v77 = ((v27 - v23) >> 3);
  if (v77 == 0xFFFF)
  {
    return;
  }

  v32 = &v18[v22];
  v73 = *&v18[v22];
  v75 = v27 - v23;
  v33 = sub_3C0014(a1, v12, 1);
  if (v33 && (v34 = &v33[-*v33], *v34 >= 0xFu) && (v35 = *(v34 + 7)) != 0 && (v36 = &v33[v35 + *&v33[v35]], *v36 > HIDWORD(a2)))
  {
    v37 = &v36[4 * v16 + 4 + *&v36[4 * v16 + 4]];
  }

  else
  {
    v37 = 0;
  }

  v38 = &v32[v73];
  v39 = &v37[-*v37];
  v40 = *v39;
  v41 = v39[2];
  if (v39[2])
  {
    v41 += &v37[*&v37[v41]];
  }

  if (v40 < 7)
  {
    v42 = 0;
  }

  else
  {
    v42 = v39[3];
    if (v39[3])
    {
      v42 += &v37[*&v37[v42]];
    }

    if (v40 >= 9)
    {
      v43 = v39[4];
      v44 = v75;
      if (v43)
      {
        v45 = &v37[v43 + *&v37[v43]];
        v46 = *v38;
        if (!v46)
        {
          return;
        }
      }

      else
      {
        v45 = 0;
        v46 = *v38;
        if (!v46)
        {
          return;
        }
      }

      goto LABEL_36;
    }
  }

  v45 = 0;
  v44 = v75;
  v46 = *v38;
  if (!v46)
  {
    return;
  }

LABEL_36:
  v47 = 0;
  v48 = 8 * v46;
  v49 = (v38 + 4);
  v50 = (v44 >> 3);
  v51 = *(v41 + 4 * (a4 + *(a1 + 3872) * a5) + 4);
  v52 = (v51 & 0x7FFFFFFF) + v46 * v50;
  v71 = v45 + 4;
  v74 = v42 + 4;
  v72 = v51;
  do
  {
    while (1)
    {
      v53 = v52;
      if (v51 < 0)
      {
        v57 = &v71[4 * v52];
        v58 = *v57;
        v59 = v58 | (*(v57 + 1) << 32);
        v56 = v58 == 0xFFFF ? 0x7FFFFFFFFFFFFFFFLL : v59;
      }

      else
      {
        v54 = v74 + 8 * v52;
        v55 = *v54;
        LODWORD(v54) = *(v54 + 4);
        v54 = v55 == 0xFFFFFFFFLL ? 0x7FFFFFFFLL : v54;
        v56 = v55 | (v54 << 32);
      }

      v60 = *v49;
      v61 = a6[1];
      v62 = a6[2];
      if (v61 >= v62)
      {
        break;
      }

      *v61 = a3;
      *(v61 + 8) = v60;
      *(v61 + 16) = a2;
      *(v61 + 24) = v77;
      *(v61 + 26) = v47;
      *(v61 + 28) = v56;
      a6[1] = v61 + 40;
      ++v47;
      v52 = v53 + 1;
      ++v49;
      v48 -= 8;
      if (!v48)
      {
        return;
      }
    }

    v63 = *a6;
    v64 = 0xCCCCCCCCCCCCCCCDLL * ((v61 - *a6) >> 3);
    v65 = v64 + 1;
    if (v64 + 1 > 0x666666666666666)
    {
      sub_1794();
    }

    v66 = 0xCCCCCCCCCCCCCCCDLL * ((v62 - v63) >> 3);
    if (2 * v66 > v65)
    {
      v65 = 2 * v66;
    }

    if (v66 >= 0x333333333333333)
    {
      v67 = 0x666666666666666;
    }

    else
    {
      v67 = v65;
    }

    v76 = v53;
    if (v67)
    {
      if (v67 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v68 = 8 * ((v61 - *a6) >> 3);
    *v68 = a3;
    *(v68 + 8) = v60;
    *(v68 + 16) = a2;
    *(v68 + 24) = v77;
    *(v68 + 26) = v47;
    *(v68 + 28) = v56;
    v69 = 40 * v64 + 40;
    v70 = (40 * v64 - (v61 - v63));
    memcpy(v70, v63, v61 - v63);
    *a6 = v70;
    a6[1] = v69;
    a6[2] = 0;
    if (v63)
    {
      operator delete(v63);
    }

    v51 = v72;
    a6[1] = v69;
    ++v47;
    v52 = v76 + 1;
    ++v49;
    v48 -= 8;
  }

  while (v48);
}

void sub_10650FC(uint64_t a1, unint64_t a2, unint64_t a3, int a4, unsigned __int16 a5, void *a6)
{
  a6[1] = *a6;
  v12 = a2;
  v13 = sub_1055EF8(a1, a2, 1);
  if (v13)
  {
    v14 = &v13[-*v13];
    if (*v14 >= 5u)
    {
      v15 = *(v14 + 2);
      if (v15)
      {
        v16 = HIDWORD(a2);
        v17 = &v13[v15 + *&v13[v15]];
        if (*v17 > HIDWORD(a2))
        {
          v18 = &v17[4 * v16 + 4 + *&v17[4 * v16 + 4]];
          v19 = &v18[-*v18];
          v20 = *v19;
          if (v20 >= 9)
          {
            if (*(v19 + 4))
            {
              v21 = &v18[*(v19 + 4) + *&v18[*(v19 + 4)]];
              if (v20 < 0xB)
              {
                return;
              }
            }

            else
            {
              v21 = 0;
              if (v20 < 0xB)
              {
                return;
              }
            }

            v22 = *(v19 + 5);
            if (v22 && v21)
            {
              v23 = &v18[v22 + *&v18[v22]];
              v24 = v23 + 4;
              v25 = *v23;
              v26 = (v23 + 4);
              while (v25)
              {
                v27 = (v26 + ((4 * v25) & 0x7FFFFFFF8));
                v29 = *v27;
                v28 = (v27 + 1);
                v30 = v25 >> 1;
                v25 += ~(v25 >> 1);
                if (v29 >= a3)
                {
                  v25 = v30;
                }

                else
                {
                  v26 = v28;
                }
              }

              if (v26 != &v23[8 * *v23 + 4] && *v26 == a3)
              {
                v76 = ((v26 - v24) >> 3);
                if (v76 != 0xFFFF)
                {
                  v72 = v26 - v24;
                  v74 = v23;
                  v31 = sub_3C0014(a1, v12, 1);
                  if (v31)
                  {
                    v32 = &v31[-*v31];
                    v33 = v74;
                    if (*v32 >= 0xFu && (v34 = *(v32 + 7)) != 0 && (v35 = &v31[v34 + *&v31[v34]], *v35 > HIDWORD(a2)))
                    {
                      v36 = &v35[4 * v16 + 4 + *&v35[4 * v16 + 4]];
                    }

                    else
                    {
                      v36 = 0;
                    }
                  }

                  else
                  {
                    v36 = 0;
                    v33 = v74;
                  }

                  v37 = &v36[-*v36];
                  v38 = *v37;
                  v39 = v37[2];
                  if (v37[2])
                  {
                    v39 += &v36[*&v36[v39]];
                  }

                  if (v38 < 7)
                  {
                    v40 = 0;
                  }

                  else
                  {
                    v40 = v37[3];
                    if (v37[3])
                    {
                      v40 += &v36[*&v36[v40]];
                    }

                    if (v38 >= 9)
                    {
                      v41 = v37[4];
                      v42 = v72;
                      if (v41)
                      {
                        v43 = &v36[v41 + *&v36[v41]];
                        v44 = *v21;
                        if (!v44)
                        {
                          return;
                        }
                      }

                      else
                      {
                        v43 = 0;
                        v44 = *v21;
                        if (!v44)
                        {
                          return;
                        }
                      }

                      goto LABEL_38;
                    }
                  }

                  v43 = 0;
                  v42 = v72;
                  v44 = *v21;
                  if (!v44)
                  {
                    return;
                  }

LABEL_38:
                  v45 = 0;
                  v46 = *v33;
                  v47 = 8 * v44;
                  v48 = (v21 + 4);
                  v49 = *(v39 + 4 * (a4 + *(a1 + 3872) * a5) + 4);
                  v50 = (v49 & 0x7FFFFFFF) + (v42 >> 3);
                  v69 = v43 + 4;
                  v73 = v40 + 4;
                  v70 = v49;
                  v71 = v46;
                  do
                  {
                    while (1)
                    {
                      v51 = v50;
                      if (v49 < 0)
                      {
                        v55 = &v69[4 * v50];
                        v56 = *v55;
                        v57 = v56 | (*(v55 + 1) << 32);
                        v54 = v56 == 0xFFFF ? 0x7FFFFFFFFFFFFFFFLL : v57;
                      }

                      else
                      {
                        v52 = v73 + 8 * v50;
                        v53 = *v52;
                        LODWORD(v52) = *(v52 + 4);
                        v52 = v53 == 0xFFFFFFFFLL ? 0x7FFFFFFFLL : v52;
                        v54 = v53 | (v52 << 32);
                      }

                      v58 = *v48;
                      v59 = a6[1];
                      v60 = a6[2];
                      if (v59 >= v60)
                      {
                        break;
                      }

                      *v59 = v58;
                      *(v59 + 8) = a3;
                      *(v59 + 16) = a2;
                      *(v59 + 24) = v45;
                      *(v59 + 26) = v76;
                      *(v59 + 28) = v54;
                      a6[1] = v59 + 40;
                      ++v45;
                      v50 = v51 + v46;
                      ++v48;
                      v47 -= 8;
                      if (!v47)
                      {
                        return;
                      }
                    }

                    v61 = *a6;
                    v62 = 0xCCCCCCCCCCCCCCCDLL * ((v59 - *a6) >> 3);
                    v63 = v62 + 1;
                    if (v62 + 1 > 0x666666666666666)
                    {
                      sub_1794();
                    }

                    v64 = 0xCCCCCCCCCCCCCCCDLL * ((v60 - v61) >> 3);
                    if (2 * v64 > v63)
                    {
                      v63 = 2 * v64;
                    }

                    if (v64 >= 0x333333333333333)
                    {
                      v65 = 0x666666666666666;
                    }

                    else
                    {
                      v65 = v63;
                    }

                    v75 = v51;
                    if (v65)
                    {
                      if (v65 <= 0x666666666666666)
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    v66 = 8 * ((v59 - *a6) >> 3);
                    *v66 = v58;
                    *(v66 + 8) = a3;
                    *(v66 + 16) = a2;
                    *(v66 + 24) = v45;
                    *(v66 + 26) = v76;
                    *(v66 + 28) = v54;
                    v67 = 40 * v62 + 40;
                    v68 = (40 * v62 - (v59 - v61));
                    memcpy(v68, v61, v59 - v61);
                    *a6 = v68;
                    a6[1] = v67;
                    a6[2] = 0;
                    if (v61)
                    {
                      operator delete(v61);
                    }

                    v49 = v70;
                    v46 = v71;
                    a6[1] = v67;
                    ++v45;
                    v50 = v75 + v71;
                    ++v48;
                    v47 -= 8;
                  }

                  while (v47);
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_106557C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock((a1 + 3));
  v6 = sub_10656F4(a1 + 11, a2);
  v7 = *a2;
  if (a1[15] == v6)
  {
    sub_10657F8(a1 + 22, v7);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v19 = (a1 + 3);
  }

  else
  {
    v8 = v6;
    v9 = *(v7 + 8);
    v10 = a1[22];
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a1[23] - v10) >> 3);
    if (v11 <= v9)
    {
      v12 = (v9 + 1);
      if (v12 <= v11)
      {
        if (v12 < v11)
        {
          a1[23] = v10 + 24 * v12;
        }
      }

      else
      {
        sub_3C0FD0((a1 + 22), v12 - v11);
        LODWORD(v9) = *(v7 + 8);
        v10 = a1[22];
      }
    }

    ++*(v10 + 24 * v9 + 8);
    v13 = *(v8 + 48);
    if (v13 != a1)
    {
      v14 = v13[1];
      if (v14 != a1)
      {
        v15 = *v13;
        *(v15 + 8) = v14;
        *v14 = v15;
        v16 = *a1;
        *(v16 + 8) = v13;
        *v13 = v16;
        *a1 = v13;
        v13[1] = a1;
      }
    }

    v18 = v13[8];
    v17 = v13[9];
    *a3 = v18;
    *(a3 + 8) = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    *(a3 + 16) = 1;
    v19 = (a1 + 3);
  }

  std::mutex::unlock(v19);
}

uint64_t sub_10656F4(void *a1, uint64_t *a2)
{
  v3 = a1[4];
  result = a1[3];
  if (result != v3)
  {
    v6 = a1;
    v5 = *a1;
    v7 = v6[1] - v5;
    v9 = *a2;
    v8 = a2[1];
    v10 = v8 % v7;
    v11 = v7 - 1;
    while (1)
    {
      if (*(v5 + v10) == 2)
      {
        v12 = result + 56 * v10;
        if (*(v12 + 40) == v8 && *v12 == *v9 && *(v12 + 4) == *(v9 + 4) && *(v12 + 8) == *(v9 + 8) && *(v12 + 12) == *(v9 + 12) && *(v12 + 16) == *(v9 + 16) && *(v12 + 20) == *(v9 + 20) && *(v12 + 24) == *(v9 + 24) && *(v9 + 26) == *(v12 + 26) && *(v9 + 28) == *(v12 + 28))
        {
          result += 56 * v10;
          return result;
        }
      }

      else if (!*(v5 + v10))
      {
        return v3;
      }

      if (v10 == v11)
      {
        v10 = 0;
      }

      else
      {
        ++v10;
      }
    }
  }

  return result;
}

void sub_10657F8(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  if (v4 <= v2)
  {
    v5 = (v2 + 1);
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v7 != 0 && v6)
    {
      sub_3C0FD0(a1, v7);
      LODWORD(v2) = *(a2 + 8);
      v3 = *a1;
    }

    else if (!v6)
    {
      a1[1] = v3 + 24 * v5;
    }
  }

  ++*(v3 + 24 * v2 + 16);
}

void sub_1065884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 48) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 850045863;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1018212795;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = a3;
  *(a1 + 232) = a3;
  *(a1 + 240) = 0;
  sub_13E0();
  v5 = *(v4 + 24);
  if (v5)
  {
    sub_13E0();
    v5 = *(*(v6 + 24) + 248) + 1;
  }

  *(a1 + 248) = v5;
  operator new();
}

void sub_1065ADC(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v4);
  std::mutex::~mutex(v3);
  std::mutex::~mutex(v2);
  sub_2C1818(v1 + 3);
  sub_37E150(v1);
  _Unwind_Resume(a1);
}

void sub_1065BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10660A4(va);
  _Unwind_Resume(a1);
}

void sub_1065C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10660A4(va);
  _Unwind_Resume(a1);
}

void sub_1065C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10660A4(va);
  _Unwind_Resume(a1);
}

void sub_1065C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_13E0();
  v7 = v6;
  v14 = 0;
  v15 = 0;
  v16 = v6;
  v17 = &v14;
  sub_13E0();
  v9 = *(v8 + 24);
  std::mutex::lock((v9 + 48));
  sub_1065DE8(&v16);
  std::mutex::unlock((v9 + 48));
  v10 = (a2 - a1) >> 3;
  for (i = atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed); i < v10; i = atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed))
  {
    sub_106AC48(*a3, *(a1 + 8 * i), *(a3 + 8), **(a3 + 16), **(a3 + 24), &v16);
    v12 = v17;
    if (v17 && !atomic_fetch_add(v17 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  ++*(v7 + 16);
  v13 = v15;
  if (v15)
  {
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }
}

void sub_1065DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 48));
  sub_1F1A8(&a9);
  _Unwind_Resume(a1);
}

void sub_1065DE8(void *a1)
{
  v1 = *(*a1 + 16);
  v2 = *(*(*a1 + 24) + 24);
  if (v1 >= (*(*(*a1 + 24) + 32) - v2) >> 4)
  {
    operator new();
  }

  v3 = a1[1];
  v4 = *(v2 + 16 * v1);
  v5 = *(v2 + 16 * v1 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(v3 + 8);
  *v3 = v4;
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void sub_1066004(uint64_t a1)
{
  if (*(a1 + 112) != 1)
  {
    v7 = v1;
    v8 = v2;
    v6.__m_ = a1;
    v6.__owns_ = 1;
    std::mutex::lock(a1);
    v4 = *(a1 + 128);
    v5 = *(a1 + 120) - 1;
    *(a1 + 120) = v5;
    if (v5)
    {
      do
      {
        std::condition_variable::wait((a1 + 64), &v6);
      }

      while (v4 == *(a1 + 128));
      if (v6.__owns_)
      {
        std::mutex::unlock(v6.__m_);
      }
    }

    else
    {
      *(a1 + 120) = *(a1 + 112);
      *(a1 + 128) = v4 + 1;
      std::mutex::unlock(a1);
      std::condition_variable::notify_all((a1 + 64));
    }
  }
}

void *sub_10660A4(void *a1)
{
  v2 = (a1 + 5484);
  v3 = a1[5512];
  if (v3)
  {
    v4 = a1[5513];
    v5 = v3;
    if (v4 != v3)
    {
      do
      {
        v4 = sub_1066414(v4 - 1032);
      }

      while (v4 != v3);
      v5 = v2[28];
    }

    v2[29] = v3;
    operator delete(v5);
  }

  v6 = v2[23];
  if (v6)
  {
    v2[24] = v6;
    operator delete(v6);
  }

  v7 = v2[6];
  if (v7)
  {
    v2[7] = v7;
    operator delete(v7);
  }

  v8 = (a1 + 4373);
  v9 = v2[3];
  if (v9)
  {
    v2[4] = v9;
    operator delete(v9);
  }

  v10 = *v2;
  if (*v2)
  {
    v2[1] = v10;
    operator delete(v10);
  }

  sub_3E3EF8(a1 + 4957);
  sub_360988((a1 + 4859));
  v11 = a1[4375];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *v8;
  if (*v8 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = a1[3888];
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = a1[3404];
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = a1[2918];
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = a1[2434];
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = a1[1949];
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = a1[1465];
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  sub_360B9C(a1 + 486);
  v19 = a1[1];
  if (!v19 || atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  return a1;
}

uint64_t sub_1066414(uint64_t a1)
{
  v2 = *(a1 + 992);
  if (v2)
  {
    *(a1 + 1000) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 968);
  if (v3)
  {
    *(a1 + 976) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 944);
  if (v4)
  {
    *(a1 + 952) = v4;
    operator delete(v4);
  }

  sub_360988(a1 + 176);
  v5 = *(a1 + 152);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 128);
  if (v6)
  {
    *(a1 + 136) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    *(a1 + 112) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 80);
  if (v8)
  {
    *(a1 + 88) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    *(a1 + 64) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    *(a1 + 40) = v10;
    operator delete(v10);
  }

  v11 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v11;
    operator delete(v11);
  }

  return a1;
}

uint64_t *sub_10664DC(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_1066854(uint64_t a1, unsigned int *a2, void *a3)
{
  a3[1] = *a3;
  v5 = sub_101E790(a1, *a2, 1);
  if (v5)
  {
    v6 = &v5[-*v5];
    if (*v6 >= 9u)
    {
      v7 = *(v6 + 4);
      if (v7)
      {
        v8 = sub_101E640(&v5[v7 + *&v5[v7]], a2[1]);
        v9 = (v8 - *v8);
        if (*v9 >= 7u)
        {
          v10 = v9[3];
          if (v10)
          {
            v11 = (v8 + v10 + *(v8 + v10));
            v12 = *v11;
            if (v12)
            {
              v13 = 8 * v12;
              v14 = v11 + 1;
              v15 = a3[1];
              do
              {
                v16 = a3[2];
                if (v15 < v16)
                {
                  *v15++ = *v14;
                }

                else
                {
                  v17 = *a3;
                  v18 = v15 - *a3;
                  v19 = v18 >> 3;
                  v20 = (v18 >> 3) + 1;
                  if (v20 >> 61)
                  {
                    sub_1794();
                  }

                  v21 = v16 - v17;
                  if (v21 >> 2 > v20)
                  {
                    v20 = v21 >> 2;
                  }

                  if (v21 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v22 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v22 = v20;
                  }

                  if (v22)
                  {
                    if (!(v22 >> 61))
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  *(8 * v19) = *v14;
                  v15 = (8 * v19 + 8);
                  memcpy(0, v17, v18);
                  *a3 = 0;
                  a3[1] = v15;
                  a3[2] = 0;
                  if (v17)
                  {
                    operator delete(v17);
                  }
                }

                a3[1] = v15;
                ++v14;
                v13 -= 8;
              }

              while (v13);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10669FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v10;
  *(a5 + 32) = *(a1 + 32);
  v11 = sub_FC5000(a2, (a1 + 8));
  v12 = v11;
  if (*(a1 + 24) == 2 && *(v11 + 176) == 1)
  {
    v13 = *(a1 + 28);
    v50 = *a1;
    v51 = v13;
    if (sub_1064B60(a4, &v50) != -1)
    {
      *(a5 + 28) = v13;
      if (*(a1 + 24) == 2)
      {
        goto LABEL_5;
      }

LABEL_23:
      v14 = 0x7FFFFFFF;
      *(a5 + 12) = 0x7FFFFFFF;
      v17 = 0x7FFFFFFF;
LABEL_24:
      v20 = *(a1 + 24);
      *(a5 + 16) = 0x7FFFFFFF;
      if (v20 == 2)
      {
        goto LABEL_25;
      }

LABEL_37:
      v21 = 0x7FFFFFFF;
      goto LABEL_38;
    }
  }

  v13 = 0;
  *(a5 + 28) = 0;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_23;
  }

LABEL_5:
  if (*(v12 + 176) != 1)
  {
    v14 = 0x7FFFFFFF;
    v23 = *(a1 + 24);
    *(a5 + 12) = 0x7FFFFFFF;
    if (v23 == 2)
    {
      goto LABEL_13;
    }

LABEL_36:
    v17 = 0x7FFFFFFF;
    *(a5 + 16) = 0x7FFFFFFF;
    goto LABEL_37;
  }

  v14 = 0x7FFFFFFF;
  if (a4[7] != a4[6] && (*(a1 + 12) != 0x7FFFFFFF || v12[42] == 0x7FFFFFFF))
  {
    v50 = *a1;
    v51 = v13;
    v15 = sub_1064B60(a4, &v50);
    if (v15 != -1 && v15 != a4[8])
    {
      v14 = *(a4[11] + 16 * v15 + 12);
    }
  }

  v16 = *(a1 + 24);
  *(a5 + 12) = v14;
  if (v16 != 2)
  {
    goto LABEL_36;
  }

LABEL_13:
  if (*(v12 + 177) != 1)
  {
    v17 = 0x7FFFFFFF;
    v49 = *(a1 + 24);
    *(a5 + 16) = 0x7FFFFFFF;
    if (v49 != 2)
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

  v17 = 0x7FFFFFFF;
  if (a4[7] == a4[6] || *(a1 + 16) == 0x7FFFFFFF && *(v12 + 178) == 1 && v12[42] != 0x7FFFFFFF)
  {
    goto LABEL_24;
  }

  v50 = *a1;
  v51 = 256;
  v18 = sub_1064B60(a4, &v50);
  if (v18 == -1 || v18 == a4[8])
  {
    goto LABEL_24;
  }

  v17 = *(a4[11] + 16 * v18 + 12);
  v19 = *(a1 + 24);
  *(a5 + 16) = v17;
  if (v19 != 2)
  {
    goto LABEL_37;
  }

LABEL_25:
  if (!v12[286] && !v12[287] && !*(v12 + 144))
  {
    goto LABEL_37;
  }

  v21 = 0x7FFFFFFF;
  if (a4[7] != a4[6] && (*(a1 + 20) != 0x7FFFFFFF || *(v12 + 178) != 1 || v12[42] == 0x7FFFFFFF))
  {
    v50 = *a1;
    v51 = 512;
    v22 = sub_1064B60(a4, &v50);
    if (v22 != -1 && v22 != a4[8])
    {
      v21 = *(a4[11] + 16 * v22 + 12);
    }
  }

LABEL_38:
  *(a5 + 20) = v21;
  v24 = *(a1 + 26);
  if (v24 && (v25 = *a1, (v26 = sub_1059F84(a3, *a1, 1)) != 0) && (v27 = &v26[-*v26], *v27 >= 5u) && *(v27 + 2) && (v28 = &v26[*(v27 + 2) + *&v26[*(v27 + 2)]], *v28 > HIDWORD(v25)))
  {
    v29 = &v28[4 * HIDWORD(v25) + 4 + *&v28[4 * HIDWORD(v25) + 4]];
    v30 = &v29[-*v29];
    if (*v30 >= 7u && (v31 = *(v30 + 3)) != 0)
    {
      v32 = v29[v31];
    }

    else
    {
      v32 = 0;
    }

    if ((v32 & (1 << v24)) != 0)
    {
      v33 = *(a1 + 26);
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  *(a5 + 26) = v33;
  v34 = v17 == 0x7FFFFFFF && v14 == 0x7FFFFFFF;
  v35 = 2 * (v21 != 0x7FFFFFFF);
  if (!v34)
  {
    v35 = 2;
  }

  *(a5 + 24) = v35;
  if (v14 == 0x7FFFFFFF)
  {
    *(a5 + 28) = 0;
  }

  v36 = *a1;
  v37 = sub_1059F84(a3, v36, 1);
  if (v37 && (v38 = &v37[-*v37], *v38 >= 5u) && *(v38 + 2) && (v39 = &v37[*(v38 + 2) + *&v37[*(v38 + 2)]], *v39 > HIDWORD(v36)) && (v40 = &v39[4 * HIDWORD(v36) + 4 + *&v39[4 * HIDWORD(v36) + 4]], v41 = &v40[-*v40], *v41 >= 5u) && (v42 = *(v41 + 2)) != 0)
  {
    v43 = *&v40[v42];
  }

  else
  {
    v43 = 0;
  }

  v44 = v43 & 0xFFFFDFFF;
  v45 = v43 | 0x2000;
  if (v14 == 0x7FFFFFFF)
  {
    v45 = v44;
  }

  v46 = v45 & 0xFFDFBFFF;
  v47 = v45 | 0x4000;
  if (v17 == 0x7FFFFFFF)
  {
    v47 = v46;
  }

  v50 = v47 & 0xFFDFFFFF | ((v21 != 0x7FFFFFFF) << 21);
  result = sub_FC537C(a2, *v12, &v50);
  *(a5 + 8) = result;
  return result;
}

void sub_1066E8C(uint64_t a1, unint64_t a2, unint64_t a3, int a4, unsigned __int16 a5, void *a6)
{
  a6[1] = *a6;
  v12 = a2;
  v13 = sub_1059F84(a1, a2, 1);
  if (!v13)
  {
    return;
  }

  v14 = &v13[-*v13];
  if (*v14 < 5u)
  {
    return;
  }

  v15 = *(v14 + 2);
  if (!v15)
  {
    return;
  }

  v16 = HIDWORD(a2);
  v17 = &v13[v15 + *&v13[v15]];
  if (*v17 <= HIDWORD(a2))
  {
    return;
  }

  v18 = &v17[4 * v16 + 4 + *&v17[4 * v16 + 4]];
  v19 = &v18[-*v18];
  v20 = *v19;
  if (v20 < 9)
  {
    return;
  }

  v21 = *(v19 + 4);
  if (*(v19 + 4))
  {
    v21 = (v21 + v18 + *(v21 + v18));
  }

  if (v20 < 0xB)
  {
    return;
  }

  v22 = *(v19 + 5);
  if (!v22 || !v21)
  {
    return;
  }

  v25 = *v21;
  v23 = v21 + 1;
  v24 = v25;
  v26 = &v23[v25];
  v27 = v23;
  while (v24)
  {
    v28 = (v27 + ((4 * v24) & 0x7FFFFFFF8));
    v30 = *v28;
    v29 = v28 + 1;
    v31 = v24 >> 1;
    v24 += ~(v24 >> 1);
    if (v30 >= a3)
    {
      v24 = v31;
    }

    else
    {
      v27 = v29;
    }
  }

  if (v27 == v26)
  {
    return;
  }

  if (*v27 != a3)
  {
    return;
  }

  v77 = ((v27 - v23) >> 3);
  if (v77 == 0xFFFF)
  {
    return;
  }

  v32 = &v18[v22];
  v73 = *&v18[v22];
  v75 = v27 - v23;
  v33 = sub_3C0314(a1, v12, 1);
  if (v33 && (v34 = &v33[-*v33], *v34 >= 0xFu) && (v35 = *(v34 + 7)) != 0 && (v36 = &v33[v35 + *&v33[v35]], *v36 > HIDWORD(a2)))
  {
    v37 = &v36[4 * v16 + 4 + *&v36[4 * v16 + 4]];
  }

  else
  {
    v37 = 0;
  }

  v38 = &v32[v73];
  v39 = &v37[-*v37];
  v40 = *v39;
  v41 = v39[2];
  if (v39[2])
  {
    v41 += &v37[*&v37[v41]];
  }

  if (v40 < 7)
  {
    v42 = 0;
  }

  else
  {
    v42 = v39[3];
    if (v39[3])
    {
      v42 += &v37[*&v37[v42]];
    }

    if (v40 >= 9)
    {
      v43 = v39[4];
      v44 = v75;
      if (v43)
      {
        v45 = &v37[v43 + *&v37[v43]];
        v46 = *v38;
        if (!v46)
        {
          return;
        }
      }

      else
      {
        v45 = 0;
        v46 = *v38;
        if (!v46)
        {
          return;
        }
      }

      goto LABEL_36;
    }
  }

  v45 = 0;
  v44 = v75;
  v46 = *v38;
  if (!v46)
  {
    return;
  }

LABEL_36:
  v47 = 0;
  v48 = 8 * v46;
  v49 = (v38 + 4);
  v50 = (v44 >> 3);
  v51 = *(v41 + 4 * (a4 + *(a1 + 3872) * a5) + 4);
  v52 = (v51 & 0x7FFFFFFF) + v46 * v50;
  v71 = v45 + 4;
  v74 = v42 + 4;
  v72 = v51;
  do
  {
    while (1)
    {
      v53 = v52;
      if (v51 < 0)
      {
        v57 = &v71[4 * v52];
        v58 = *v57;
        v59 = v58 | (*(v57 + 1) << 32);
        v56 = v58 == 0xFFFF ? 0x7FFFFFFFFFFFFFFFLL : v59;
      }

      else
      {
        v54 = v74 + 8 * v52;
        v55 = *v54;
        LODWORD(v54) = *(v54 + 4);
        v54 = v55 == 0xFFFFFFFFLL ? 0x7FFFFFFFLL : v54;
        v56 = v55 | (v54 << 32);
      }

      v60 = *v49;
      v61 = a6[1];
      v62 = a6[2];
      if (v61 >= v62)
      {
        break;
      }

      *v61 = a3;
      *(v61 + 8) = v60;
      *(v61 + 16) = a2;
      *(v61 + 24) = v77;
      *(v61 + 26) = v47;
      *(v61 + 28) = v56;
      a6[1] = v61 + 40;
      ++v47;
      v52 = v53 + 1;
      ++v49;
      v48 -= 8;
      if (!v48)
      {
        return;
      }
    }

    v63 = *a6;
    v64 = 0xCCCCCCCCCCCCCCCDLL * ((v61 - *a6) >> 3);
    v65 = v64 + 1;
    if (v64 + 1 > 0x666666666666666)
    {
      sub_1794();
    }

    v66 = 0xCCCCCCCCCCCCCCCDLL * ((v62 - v63) >> 3);
    if (2 * v66 > v65)
    {
      v65 = 2 * v66;
    }

    if (v66 >= 0x333333333333333)
    {
      v67 = 0x666666666666666;
    }

    else
    {
      v67 = v65;
    }

    v76 = v53;
    if (v67)
    {
      if (v67 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v68 = 8 * ((v61 - *a6) >> 3);
    *v68 = a3;
    *(v68 + 8) = v60;
    *(v68 + 16) = a2;
    *(v68 + 24) = v77;
    *(v68 + 26) = v47;
    *(v68 + 28) = v56;
    v69 = 40 * v64 + 40;
    v70 = (40 * v64 - (v61 - v63));
    memcpy(v70, v63, v61 - v63);
    *a6 = v70;
    a6[1] = v69;
    a6[2] = 0;
    if (v63)
    {
      operator delete(v63);
    }

    v51 = v72;
    a6[1] = v69;
    ++v47;
    v52 = v76 + 1;
    ++v49;
    v48 -= 8;
  }

  while (v48);
}

void sub_10672E8(uint64_t a1, unint64_t a2, unint64_t a3, int a4, unsigned __int16 a5, void *a6)
{
  a6[1] = *a6;
  v12 = a2;
  v13 = sub_1059F84(a1, a2, 1);
  if (v13)
  {
    v14 = &v13[-*v13];
    if (*v14 >= 5u)
    {
      v15 = *(v14 + 2);
      if (v15)
      {
        v16 = HIDWORD(a2);
        v17 = &v13[v15 + *&v13[v15]];
        if (*v17 > HIDWORD(a2))
        {
          v18 = &v17[4 * v16 + 4 + *&v17[4 * v16 + 4]];
          v19 = &v18[-*v18];
          v20 = *v19;
          if (v20 >= 9)
          {
            if (*(v19 + 4))
            {
              v21 = &v18[*(v19 + 4) + *&v18[*(v19 + 4)]];
              if (v20 < 0xB)
              {
                return;
              }
            }

            else
            {
              v21 = 0;
              if (v20 < 0xB)
              {
                return;
              }
            }

            v22 = *(v19 + 5);
            if (v22 && v21)
            {
              v23 = &v18[v22 + *&v18[v22]];
              v24 = v23 + 4;
              v25 = *v23;
              v26 = (v23 + 4);
              while (v25)
              {
                v27 = (v26 + ((4 * v25) & 0x7FFFFFFF8));
                v29 = *v27;
                v28 = (v27 + 1);
                v30 = v25 >> 1;
                v25 += ~(v25 >> 1);
                if (v29 >= a3)
                {
                  v25 = v30;
                }

                else
                {
                  v26 = v28;
                }
              }

              if (v26 != &v23[8 * *v23 + 4] && *v26 == a3)
              {
                v76 = ((v26 - v24) >> 3);
                if (v76 != 0xFFFF)
                {
                  v72 = v26 - v24;
                  v74 = v23;
                  v31 = sub_3C0314(a1, v12, 1);
                  if (v31)
                  {
                    v32 = &v31[-*v31];
                    v33 = v74;
                    if (*v32 >= 0xFu && (v34 = *(v32 + 7)) != 0 && (v35 = &v31[v34 + *&v31[v34]], *v35 > HIDWORD(a2)))
                    {
                      v36 = &v35[4 * v16 + 4 + *&v35[4 * v16 + 4]];
                    }

                    else
                    {
                      v36 = 0;
                    }
                  }

                  else
                  {
                    v36 = 0;
                    v33 = v74;
                  }

                  v37 = &v36[-*v36];
                  v38 = *v37;
                  v39 = v37[2];
                  if (v37[2])
                  {
                    v39 += &v36[*&v36[v39]];
                  }

                  if (v38 < 7)
                  {
                    v40 = 0;
                  }

                  else
                  {
                    v40 = v37[3];
                    if (v37[3])
                    {
                      v40 += &v36[*&v36[v40]];
                    }

                    if (v38 >= 9)
                    {
                      v41 = v37[4];
                      v42 = v72;
                      if (v41)
                      {
                        v43 = &v36[v41 + *&v36[v41]];
                        v44 = *v21;
                        if (!v44)
                        {
                          return;
                        }
                      }

                      else
                      {
                        v43 = 0;
                        v44 = *v21;
                        if (!v44)
                        {
                          return;
                        }
                      }

                      goto LABEL_38;
                    }
                  }

                  v43 = 0;
                  v42 = v72;
                  v44 = *v21;
                  if (!v44)
                  {
                    return;
                  }

LABEL_38:
                  v45 = 0;
                  v46 = *v33;
                  v47 = 8 * v44;
                  v48 = (v21 + 4);
                  v49 = *(v39 + 4 * (a4 + *(a1 + 3872) * a5) + 4);
                  v50 = (v49 & 0x7FFFFFFF) + (v42 >> 3);
                  v69 = v43 + 4;
                  v73 = v40 + 4;
                  v70 = v49;
                  v71 = v46;
                  do
                  {
                    while (1)
                    {
                      v51 = v50;
                      if (v49 < 0)
                      {
                        v55 = &v69[4 * v50];
                        v56 = *v55;
                        v57 = v56 | (*(v55 + 1) << 32);
                        v54 = v56 == 0xFFFF ? 0x7FFFFFFFFFFFFFFFLL : v57;
                      }

                      else
                      {
                        v52 = v73 + 8 * v50;
                        v53 = *v52;
                        LODWORD(v52) = *(v52 + 4);
                        v52 = v53 == 0xFFFFFFFFLL ? 0x7FFFFFFFLL : v52;
                        v54 = v53 | (v52 << 32);
                      }

                      v58 = *v48;
                      v59 = a6[1];
                      v60 = a6[2];
                      if (v59 >= v60)
                      {
                        break;
                      }

                      *v59 = v58;
                      *(v59 + 8) = a3;
                      *(v59 + 16) = a2;
                      *(v59 + 24) = v45;
                      *(v59 + 26) = v76;
                      *(v59 + 28) = v54;
                      a6[1] = v59 + 40;
                      ++v45;
                      v50 = v51 + v46;
                      ++v48;
                      v47 -= 8;
                      if (!v47)
                      {
                        return;
                      }
                    }

                    v61 = *a6;
                    v62 = 0xCCCCCCCCCCCCCCCDLL * ((v59 - *a6) >> 3);
                    v63 = v62 + 1;
                    if (v62 + 1 > 0x666666666666666)
                    {
                      sub_1794();
                    }

                    v64 = 0xCCCCCCCCCCCCCCCDLL * ((v60 - v61) >> 3);
                    if (2 * v64 > v63)
                    {
                      v63 = 2 * v64;
                    }

                    if (v64 >= 0x333333333333333)
                    {
                      v65 = 0x666666666666666;
                    }

                    else
                    {
                      v65 = v63;
                    }

                    v75 = v51;
                    if (v65)
                    {
                      if (v65 <= 0x666666666666666)
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    v66 = 8 * ((v59 - *a6) >> 3);
                    *v66 = v58;
                    *(v66 + 8) = a3;
                    *(v66 + 16) = a2;
                    *(v66 + 24) = v45;
                    *(v66 + 26) = v76;
                    *(v66 + 28) = v54;
                    v67 = 40 * v62 + 40;
                    v68 = (40 * v62 - (v59 - v61));
                    memcpy(v68, v61, v59 - v61);
                    *a6 = v68;
                    a6[1] = v67;
                    a6[2] = 0;
                    if (v61)
                    {
                      operator delete(v61);
                    }

                    v49 = v70;
                    v46 = v71;
                    a6[1] = v67;
                    ++v45;
                    v50 = v75 + v71;
                    ++v48;
                    v47 -= 8;
                  }

                  while (v47);
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1067768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 48) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 850045863;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1018212795;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = a3;
  *(a1 + 232) = a3;
  *(a1 + 240) = 0;
  sub_13E0();
  v5 = *(v4 + 24);
  if (v5)
  {
    sub_13E0();
    v5 = *(*(v6 + 24) + 248) + 1;
  }

  *(a1 + 248) = v5;
  operator new();
}

void sub_10679C0(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v4);
  std::mutex::~mutex(v3);
  std::mutex::~mutex(v2);
  sub_2C1818(v1 + 3);
  sub_37E150(v1);
  _Unwind_Resume(a1);
}

void sub_1067AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1067EEC(va);
  _Unwind_Resume(a1);
}

void sub_1067AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1067EEC(va);
  _Unwind_Resume(a1);
}

void sub_1067B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1067EEC(va);
  _Unwind_Resume(a1);
}

void sub_1067B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_13E0();
  v7 = v6;
  v14 = 0;
  v15 = 0;
  v16 = v6;
  v17 = &v14;
  sub_13E0();
  v9 = *(v8 + 24);
  std::mutex::lock((v9 + 48));
  sub_1067CD0(&v16);
  std::mutex::unlock((v9 + 48));
  v10 = (a2 - a1) >> 3;
  for (i = atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed); i < v10; i = atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed))
  {
    sub_106DFB0(*a3, *(a1 + 8 * i), *(a3 + 8), **(a3 + 16), **(a3 + 24), &v16);
    v12 = v17;
    if (v17 && !atomic_fetch_add(v17 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  ++*(v7 + 16);
  v13 = v15;
  if (v15)
  {
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }
}

void sub_1067C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 48));
  sub_1F1A8(&a9);
  _Unwind_Resume(a1);
}

void sub_1067CD0(void *a1)
{
  v1 = *(*a1 + 16);
  v2 = *(*(*a1 + 24) + 24);
  if (v1 >= (*(*(*a1 + 24) + 32) - v2) >> 4)
  {
    operator new();
  }

  v3 = a1[1];
  v4 = *(v2 + 16 * v1);
  v5 = *(v2 + 16 * v1 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(v3 + 8);
  *v3 = v4;
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void *sub_1067EEC(void *a1)
{
  v2 = a1 + 6174;
  v3 = (a1 + 5484);
  v4 = a1[6180];
  if (v4)
  {
    v5 = a1[6181];
    v6 = v4;
    if (v5 != v4)
    {
      do
      {
        v5 = sub_1066414(v5 - 1032);
      }

      while (v5 != v4);
      v6 = v2[6];
    }

    v2[7] = v4;
    operator delete(v6);
  }

  if (*v2 == 1)
  {
    sub_3E3DF0(a1 + 5510);
  }

  v7 = v3[6];
  if (v7)
  {
    v3[7] = v7;
    operator delete(v7);
  }

  v8 = (a1 + 4373);
  v9 = v3[3];
  if (v9)
  {
    v3[4] = v9;
    operator delete(v9);
  }

  v10 = *v3;
  if (*v3)
  {
    v3[1] = v10;
    operator delete(v10);
  }

  sub_3E3EF8(a1 + 4957);
  sub_360988((a1 + 4859));
  v11 = a1[4375];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *v8;
  if (*v8 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = a1[3888];
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = a1[3404];
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = a1[2918];
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = a1[2434];
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = a1[1949];
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = a1[1465];
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  sub_360B9C(a1 + 486);
  v19 = a1[1];
  if (!v19 || atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  return a1;
}

uint64_t sub_106826C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 1);
  *a4 = *a1;
  *(a4 + 16) = v8;
  *(a4 + 32) = *(a1 + 8);
  v9 = sub_FC84C8(a2, a1 + 2);
  *(a4 + 12) = 0x8000000080000000;
  *(a4 + 20) = 0x7FFFFFFF;
  v10 = *(a1 + 13);
  if (v10 && (v11 = *a1, (v12 = sub_105BEB4(a3, *a1, 1)) != 0) && (v13 = &v12[-*v12], *v13 >= 5u) && *(v13 + 2) && (v14 = &v12[*(v13 + 2) + *&v12[*(v13 + 2)]], *v14 > HIDWORD(v11)))
  {
    v15 = &v14[4 * HIDWORD(v11) + 4 + *&v14[4 * HIDWORD(v11) + 4]];
    v16 = &v15[-*v15];
    if (*v16 >= 7u && (v17 = *(v16 + 3)) != 0)
    {
      v18 = v15[v17];
    }

    else
    {
      v18 = 0;
    }

    if ((v18 & (1 << v10)) != 0)
    {
      v19 = *(a1 + 13);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  *(a4 + 26) = v19;
  *(a4 + 24) = 0;
  *(a4 + 28) = 0;
  v20 = *a1;
  v21 = sub_105BEB4(a3, v20, 1);
  if (v21 && (v22 = &v21[-*v21], *v22 >= 5u) && *(v22 + 2) && (v23 = &v21[*(v22 + 2) + *&v21[*(v22 + 2)]], *v23 > HIDWORD(v20)) && (v24 = &v23[4 * HIDWORD(v20) + 4 + *&v23[4 * HIDWORD(v20) + 4]], v25 = &v24[-*v24], *v25 >= 5u) && (v26 = *(v25 + 2)) != 0)
  {
    v27 = *&v24[v26];
  }

  else
  {
    v27 = 0;
  }

  v29 = v27;
  result = sub_FC8844(a2, *v9, &v29);
  *(a4 + 8) = result;
  return result;
}

void sub_106843C(uint64_t a1, unint64_t a2, unint64_t a3, int a4, unsigned __int16 a5, void *a6)
{
  a6[1] = *a6;
  v12 = a2;
  v13 = sub_105BEB4(a1, a2, 1);
  if (!v13)
  {
    return;
  }

  v14 = &v13[-*v13];
  if (*v14 < 5u)
  {
    return;
  }

  v15 = *(v14 + 2);
  if (!v15)
  {
    return;
  }

  v16 = HIDWORD(a2);
  v17 = &v13[v15 + *&v13[v15]];
  if (*v17 <= HIDWORD(a2))
  {
    return;
  }

  v18 = &v17[4 * v16 + 4 + *&v17[4 * v16 + 4]];
  v19 = &v18[-*v18];
  v20 = *v19;
  if (v20 < 9)
  {
    return;
  }

  v21 = *(v19 + 4);
  if (*(v19 + 4))
  {
    v21 = (v21 + v18 + *(v21 + v18));
  }

  if (v20 < 0xB)
  {
    return;
  }

  v22 = *(v19 + 5);
  if (!v22 || !v21)
  {
    return;
  }

  v25 = *v21;
  v23 = v21 + 1;
  v24 = v25;
  v26 = &v23[v25];
  v27 = (((a3 >> 28) & 0xFFFFFFFFFFFFFFF0) + (a3 << 32)) & 0xFFFFFFFFFFFFFFF0 | (a3 >> 57) & 8 | (a3 >> 59) & 4 | (a3 >> 61) & 2 | (a3 >> 63);
  v28 = v23;
  while (v24)
  {
    v29 = (v28 + ((4 * v24) & 0x7FFFFFFF8));
    v31 = *v29;
    v30 = v29 + 1;
    v32 = v24 >> 1;
    v24 += ~(v24 >> 1);
    if (v31 >= v27)
    {
      v24 = v32;
    }

    else
    {
      v28 = v30;
    }
  }

  if (v28 == v26)
  {
    return;
  }

  if (*v28 != v27)
  {
    return;
  }

  v79 = ((v28 - v23) >> 3);
  if (v79 == 0xFFFF)
  {
    return;
  }

  v33 = &v18[v22];
  v75 = *&v18[v22];
  v77 = v28 - v23;
  v34 = sub_3C0614(a1, v12, 1);
  if (v34 && (v35 = &v34[-*v34], *v35 >= 0xFu) && (v36 = *(v35 + 7)) != 0 && (v37 = &v34[v36 + *&v34[v36]], *v37 > HIDWORD(a2)))
  {
    v38 = &v37[4 * v16 + 4 + *&v37[4 * v16 + 4]];
  }

  else
  {
    v38 = 0;
  }

  v39 = &v33[v75];
  v40 = &v38[-*v38];
  v41 = *v40;
  v42 = v40[2];
  if (v40[2])
  {
    v42 += &v38[*&v38[v42]];
  }

  if (v41 < 7)
  {
    v43 = 0;
  }

  else
  {
    v43 = v40[3];
    if (v40[3])
    {
      v43 += &v38[*&v38[v43]];
    }

    if (v41 >= 9)
    {
      v44 = v40[4];
      v45 = v77;
      if (v44)
      {
        v46 = &v38[v44 + *&v38[v44]];
        v47 = *v39;
        if (!v47)
        {
          return;
        }
      }

      else
      {
        v46 = 0;
        v47 = *v39;
        if (!v47)
        {
          return;
        }
      }

      goto LABEL_36;
    }
  }

  v46 = 0;
  v45 = v77;
  v47 = *v39;
  if (!v47)
  {
    return;
  }

LABEL_36:
  v48 = 0;
  v49 = 8 * v47;
  v50 = v39 + 4;
  v51 = (v45 >> 3);
  v52 = *(v42 + 4 * (a4 + *(a1 + 3872) * a5) + 4);
  v53 = (v52 & 0x7FFFFFFF) + v47 * v51;
  v73 = v46 + 4;
  v76 = v43 + 4;
  v74 = v52;
  do
  {
    while (1)
    {
      v54 = v53;
      if (v52 < 0)
      {
        v58 = &v73[4 * v53];
        v59 = *v58;
        v60 = v59 | (*(v58 + 1) << 32);
        v57 = v59 == 0xFFFF ? 0x7FFFFFFFFFFFFFFFLL : v60;
      }

      else
      {
        v55 = v76 + 8 * v53;
        v56 = *v55;
        LODWORD(v55) = *(v55 + 4);
        v55 = v56 == 0xFFFFFFFFLL ? 0x7FFFFFFFLL : v55;
        v57 = v56 | (v55 << 32);
      }

      v61 = HIDWORD(*v50);
      v62 = (*v50 >> 4) & 0x8FFFFFFF | (*v50 << 31) | (((*v50 >> 3) & 1) << 28) & 0x9FFFFFFF | (((*v50 >> 2) & 1) << 29) & 0xBFFFFFFF | (((*v50 >> 1) & 1) << 30);
      v63 = a6[1];
      v64 = a6[2];
      if (v63 >= v64)
      {
        break;
      }

      *v63 = a3;
      *(v63 + 8) = v61 | (v62 << 32);
      *(v63 + 16) = a2;
      *(v63 + 24) = v79;
      *(v63 + 26) = v48;
      *(v63 + 28) = v57;
      a6[1] = v63 + 40;
      ++v48;
      v53 = v54 + 1;
      ++v50;
      v49 -= 8;
      if (!v49)
      {
        return;
      }
    }

    v65 = *a6;
    v66 = 0xCCCCCCCCCCCCCCCDLL * ((v63 - *a6) >> 3);
    v67 = v66 + 1;
    if (v66 + 1 > 0x666666666666666)
    {
      sub_1794();
    }

    v68 = 0xCCCCCCCCCCCCCCCDLL * ((v64 - v65) >> 3);
    if (2 * v68 > v67)
    {
      v67 = 2 * v68;
    }

    if (v68 >= 0x333333333333333)
    {
      v69 = 0x666666666666666;
    }

    else
    {
      v69 = v67;
    }

    v78 = v54;
    if (v69)
    {
      if (v69 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v70 = 8 * ((v63 - *a6) >> 3);
    *v70 = a3;
    *(v70 + 8) = v61 | (v62 << 32);
    *(v70 + 16) = a2;
    *(v70 + 24) = v79;
    *(v70 + 26) = v48;
    *(v70 + 28) = v57;
    v71 = 40 * v66 + 40;
    v72 = (40 * v66 - (v63 - v65));
    memcpy(v72, v65, v63 - v65);
    *a6 = v72;
    a6[1] = v71;
    a6[2] = 0;
    if (v65)
    {
      operator delete(v65);
    }

    v52 = v74;
    a6[1] = v71;
    ++v48;
    v53 = v78 + 1;
    ++v50;
    v49 -= 8;
  }

  while (v49);
}

void sub_10688E0(uint64_t a1, unint64_t a2, unint64_t a3, int a4, unsigned __int16 a5, void *a6)
{
  a6[1] = *a6;
  v12 = a2;
  v13 = sub_105BEB4(a1, a2, 1);
  if (v13)
  {
    v14 = &v13[-*v13];
    if (*v14 >= 5u)
    {
      v15 = *(v14 + 2);
      if (v15)
      {
        v16 = HIDWORD(a2);
        v17 = &v13[v15 + *&v13[v15]];
        if (*v17 > HIDWORD(a2))
        {
          v18 = &v17[4 * v16 + 4 + *&v17[4 * v16 + 4]];
          v19 = &v18[-*v18];
          v20 = *v19;
          if (v20 >= 9)
          {
            if (*(v19 + 4))
            {
              v21 = &v18[*(v19 + 4) + *&v18[*(v19 + 4)]];
              if (v20 < 0xB)
              {
                return;
              }
            }

            else
            {
              v21 = 0;
              if (v20 < 0xB)
              {
                return;
              }
            }

            v22 = *(v19 + 5);
            if (v22 && v21)
            {
              v23 = &v18[v22 + *&v18[v22]];
              v24 = v23 + 4;
              v25 = *v23;
              v26 = (((a3 >> 28) & 0xFFFFFFFFFFFFFFF0) + (a3 << 32)) & 0xFFFFFFFFFFFFFFF0 | (a3 >> 57) & 8 | (a3 >> 59) & 4 | (a3 >> 61) & 2 | (a3 >> 63);
              v27 = (v23 + 4);
              while (v25)
              {
                v28 = (v27 + ((4 * v25) & 0x7FFFFFFF8));
                v30 = *v28;
                v29 = (v28 + 1);
                v31 = v25 >> 1;
                v25 += ~(v25 >> 1);
                if (v30 >= v26)
                {
                  v25 = v31;
                }

                else
                {
                  v27 = v29;
                }
              }

              if (v27 != &v23[8 * *v23 + 4] && *v27 == v26)
              {
                v78 = ((v27 - v24) >> 3);
                if (v78 != 0xFFFF)
                {
                  v74 = v27 - v24;
                  v76 = v23;
                  v32 = sub_3C0614(a1, v12, 1);
                  if (v32)
                  {
                    v33 = &v32[-*v32];
                    v34 = v76;
                    if (*v33 >= 0xFu && (v35 = *(v33 + 7)) != 0 && (v36 = &v32[v35 + *&v32[v35]], *v36 > HIDWORD(a2)))
                    {
                      v37 = &v36[4 * v16 + 4 + *&v36[4 * v16 + 4]];
                    }

                    else
                    {
                      v37 = 0;
                    }
                  }

                  else
                  {
                    v37 = 0;
                    v34 = v76;
                  }

                  v38 = &v37[-*v37];
                  v39 = *v38;
                  v40 = v38[2];
                  if (v38[2])
                  {
                    v40 += &v37[*&v37[v40]];
                  }

                  if (v39 < 7)
                  {
                    v41 = 0;
                  }

                  else
                  {
                    v41 = v38[3];
                    if (v38[3])
                    {
                      v41 += &v37[*&v37[v41]];
                    }

                    if (v39 >= 9)
                    {
                      v42 = v38[4];
                      v43 = v74;
                      if (v42)
                      {
                        v44 = &v37[v42 + *&v37[v42]];
                        v45 = *v21;
                        if (!v45)
                        {
                          return;
                        }
                      }

                      else
                      {
                        v44 = 0;
                        v45 = *v21;
                        if (!v45)
                        {
                          return;
                        }
                      }

                      goto LABEL_38;
                    }
                  }

                  v44 = 0;
                  v43 = v74;
                  v45 = *v21;
                  if (!v45)
                  {
                    return;
                  }

LABEL_38:
                  v46 = 0;
                  v47 = *v34;
                  v48 = 8 * v45;
                  v49 = v21 + 4;
                  v50 = *(v40 + 4 * (a4 + *(a1 + 3872) * a5) + 4);
                  v51 = (v50 & 0x7FFFFFFF) + (v43 >> 3);
                  v71 = v44 + 4;
                  v75 = v41 + 4;
                  v72 = v50;
                  v73 = v47;
                  do
                  {
                    while (1)
                    {
                      v52 = v51;
                      if (v50 < 0)
                      {
                        v56 = &v71[4 * v51];
                        v57 = *v56;
                        v58 = v57 | (*(v56 + 1) << 32);
                        v55 = v57 == 0xFFFF ? 0x7FFFFFFFFFFFFFFFLL : v58;
                      }

                      else
                      {
                        v53 = v75 + 8 * v51;
                        v54 = *v53;
                        LODWORD(v53) = *(v53 + 4);
                        v53 = v54 == 0xFFFFFFFFLL ? 0x7FFFFFFFLL : v53;
                        v55 = v54 | (v53 << 32);
                      }

                      v59 = HIDWORD(*v49);
                      v60 = (*v49 >> 4) & 0x8FFFFFFF | (*v49 << 31) | (((*v49 >> 3) & 1) << 28) & 0x9FFFFFFF | (((*v49 >> 2) & 1) << 29) & 0xBFFFFFFF | (((*v49 >> 1) & 1) << 30);
                      v61 = a6[1];
                      v62 = a6[2];
                      if (v61 >= v62)
                      {
                        break;
                      }

                      *v61 = v59 | (v60 << 32);
                      *(v61 + 8) = a3;
                      *(v61 + 16) = a2;
                      *(v61 + 24) = v46;
                      *(v61 + 26) = v78;
                      *(v61 + 28) = v55;
                      a6[1] = v61 + 40;
                      ++v46;
                      v51 = v52 + v47;
                      ++v49;
                      v48 -= 8;
                      if (!v48)
                      {
                        return;
                      }
                    }

                    v63 = *a6;
                    v64 = 0xCCCCCCCCCCCCCCCDLL * ((v61 - *a6) >> 3);
                    v65 = v64 + 1;
                    if (v64 + 1 > 0x666666666666666)
                    {
                      sub_1794();
                    }

                    v66 = 0xCCCCCCCCCCCCCCCDLL * ((v62 - v63) >> 3);
                    if (2 * v66 > v65)
                    {
                      v65 = 2 * v66;
                    }

                    if (v66 >= 0x333333333333333)
                    {
                      v67 = 0x666666666666666;
                    }

                    else
                    {
                      v67 = v65;
                    }

                    v77 = v52;
                    if (v67)
                    {
                      if (v67 <= 0x666666666666666)
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    v68 = 8 * ((v61 - *a6) >> 3);
                    *v68 = v59 | (v60 << 32);
                    *(v68 + 8) = a3;
                    *(v68 + 16) = a2;
                    *(v68 + 24) = v46;
                    *(v68 + 26) = v78;
                    *(v68 + 28) = v55;
                    v69 = 40 * v64 + 40;
                    v70 = (40 * v64 - (v61 - v63));
                    memcpy(v70, v63, v61 - v63);
                    *a6 = v70;
                    a6[1] = v69;
                    a6[2] = 0;
                    if (v63)
                    {
                      operator delete(v63);
                    }

                    v50 = v72;
                    v47 = v73;
                    a6[1] = v69;
                    ++v46;
                    v51 = v77 + v73;
                    ++v49;
                    v48 -= 8;
                  }

                  while (v48);
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1068DA8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock((a1 + 3));
  v6 = sub_10656F4(a1 + 11, a2);
  v7 = *a2;
  if (a1[15] == v6)
  {
    sub_10657F8(a1 + 22, v7);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v19 = (a1 + 3);
  }

  else
  {
    v8 = v6;
    v9 = *(v7 + 8);
    v10 = a1[22];
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a1[23] - v10) >> 3);
    if (v11 <= v9)
    {
      v12 = (v9 + 1);
      if (v12 <= v11)
      {
        if (v12 < v11)
        {
          a1[23] = v10 + 24 * v12;
        }
      }

      else
      {
        sub_3C0FD0((a1 + 22), v12 - v11);
        LODWORD(v9) = *(v7 + 8);
        v10 = a1[22];
      }
    }

    ++*(v10 + 24 * v9 + 8);
    v13 = *(v8 + 48);
    if (v13 != a1)
    {
      v14 = v13[1];
      if (v14 != a1)
      {
        v15 = *v13;
        *(v15 + 8) = v14;
        *v14 = v15;
        v16 = *a1;
        *(v16 + 8) = v13;
        *v13 = v16;
        *a1 = v13;
        v13[1] = a1;
      }
    }

    v18 = v13[8];
    v17 = v13[9];
    *a3 = v18;
    *(a3 + 8) = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    *(a3 + 16) = 1;
    v19 = (a1 + 3);
  }

  std::mutex::unlock(v19);
}

void sub_1068F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 48) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 850045863;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1018212795;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = a3;
  *(a1 + 232) = a3;
  *(a1 + 240) = 0;
  sub_13E0();
  v5 = *(v4 + 24);
  if (v5)
  {
    sub_13E0();
    v5 = *(*(v6 + 24) + 248) + 1;
  }

  *(a1 + 248) = v5;
  operator new();
}

void sub_1069178(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v4);
  std::mutex::~mutex(v3);
  std::mutex::~mutex(v2);
  sub_2C1818(v1 + 3);
  sub_37E150(v1);
  _Unwind_Resume(a1);
}

void sub_1069298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10696A0(va);
  _Unwind_Resume(a1);
}

void sub_10692AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10696A0(va);
  _Unwind_Resume(a1);
}

void sub_10692C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10696A0(va);
  _Unwind_Resume(a1);
}

void sub_10692D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_13E0();
  v7 = v6;
  v14 = 0;
  v15 = 0;
  v16 = v6;
  v17 = &v14;
  sub_13E0();
  v9 = *(v8 + 24);
  std::mutex::lock((v9 + 48));
  sub_1069484(&v16);
  std::mutex::unlock((v9 + 48));
  v10 = (a2 - a1) >> 3;
  for (i = atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed); i < v10; i = atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed))
  {
    sub_107113C(*a3, *(a1 + 8 * i), *(a3 + 8), **(a3 + 16), **(a3 + 24), &v16);
    v12 = v17;
    if (v17 && !atomic_fetch_add(v17 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  ++*(v7 + 16);
  v13 = v15;
  if (v15)
  {
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }
}

void sub_1069440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 48));
  sub_1F1A8(&a9);
  _Unwind_Resume(a1);
}

void sub_1069484(void *a1)
{
  v1 = *(*a1 + 16);
  v2 = *(*(*a1 + 24) + 24);
  if (v1 >= (*(*(*a1 + 24) + 32) - v2) >> 4)
  {
    operator new();
  }

  v3 = a1[1];
  v4 = *(v2 + 16 * v1);
  v5 = *(v2 + 16 * v1 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(v3 + 8);
  *v3 = v4;
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void *sub_10696A0(void *a1)
{
  v2 = (a1 + 4959);
  v3 = a1[4987];
  if (v3)
  {
    v4 = a1[4988];
    v5 = v3;
    if (v4 != v3)
    {
      do
      {
        v4 = sub_1066414(v4 - 1032);
      }

      while (v4 != v3);
      v5 = v2[28];
    }

    v2[29] = v3;
    operator delete(v5);
  }

  v6 = v2[11];
  if (v6)
  {
    v2[12] = v6;
    operator delete(v6);
  }

  v7 = v2[8];
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = v2[6];
  v2[6] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = (a1 + 4373);
  v11 = v2[3];
  if (v11)
  {
    v2[4] = v11;
    operator delete(v11);
  }

  v12 = *v2;
  if (*v2)
  {
    v2[1] = v12;
    operator delete(v12);
  }

  sub_360988((a1 + 4859));
  v13 = a1[4375];
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *v10;
  if (*v10 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = a1[3888];
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = a1[3404];
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = a1[2918];
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = a1[2434];
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = a1[1949];
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = a1[1465];
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  sub_360B9C(a1 + 486);
  v21 = a1[1];
  if (!v21 || atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  return a1;
}

unsigned int *sub_1069A1C(unsigned int **a1, void *a2, unsigned int *a3)
{
  result = *a1;
  v4 = *a2 - result;
  v5 = v4 >> 3;
  if (v4 >> 3 >= 1)
  {
    v6 = *a3;
    if (v4 == 8)
    {
      v7 = a3[1];
      v8 = ((v6 << 32) + 16 * v7) | (v7 >> 25) & 8 | (v7 >> 27) & 4 | (v7 >> 29) & 2 | (v7 >> 31);
    }

    else
    {
      v9 = a3[1];
      v8 = ((v6 << 32) + 16 * v9) | (v9 >> 25) & 8 | (v9 >> 27) & 4 | (v9 >> 29) & 2 | (v9 >> 31);
      do
      {
        v10 = (2 * v5) & 0xFFFFFFFFFFFFFFF8;
        _X12 = result + v10;
        __asm { PRFM            #0, [X12] }

        v17 = &result[2 * (v5 >> 1)];
        _X11 = v17 + v10;
        __asm { PRFM            #0, [X11] }

        v20 = *v17;
        v21 = v17[1];
        if ((((v20 << 32) + 16 * v21) | (v21 >> 25) & 8 | (v21 >> 27) & 4 | (v21 >> 29) & 2 | (v21 >> 31)) >= v8)
        {
          v22 = 0;
        }

        else
        {
          v22 = v5 >> 1;
        }

        result += 2 * v22;
        v5 -= v5 >> 1;
      }

      while (v5 > 1);
    }

    v23 = result[1];
    result += 2 * ((((*result << 32) + 16 * v23) | (v23 >> 25) & 8 | (v23 >> 27) & 4 | (v23 >> 29) & 2 | (v23 >> 31)) < v8);
  }

  return result;
}

void sub_1069B6C(uint64_t **a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X2>, uint64_t **a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  if (*a1 != *a2)
  {
    v7 = a3[1];
    do
    {
      v8 = *v5;
      v9 = a3[2];
      if (v7 < v9)
      {
        *v7 = HIDWORD(v8);
        v7[1] = (v8 >> 4) & 0x8FFFFFFF | (v8 << 31) | (((v8 >> 3) & 1) << 28) & 0x9FFFFFFF | (((v8 >> 2) & 1) << 29) & 0xBFFFFFFF | (((v8 >> 1) & 1) << 30);
        v7 += 2;
      }

      else
      {
        v10 = *a3;
        v11 = v7 - *a3;
        v12 = v11 >> 3;
        v13 = (v11 >> 3) + 1;
        if (v13 >> 61)
        {
          sub_1794();
        }

        v14 = v9 - v10;
        if (v14 >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          if (!(v15 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v16 = (8 * v12);
        *v16 = HIDWORD(v8);
        v16[1] = (v8 >> 4) & 0x8FFFFFFF | (v8 << 31) | (((v8 >> 3) & 1) << 28) & 0x9FFFFFFF | (((v8 >> 2) & 1) << 29) & 0xBFFFFFFF | (((v8 >> 1) & 1) << 30);
        v7 = (8 * v12 + 8);
        v17 = &v16[-2 * (v11 >> 3)];
        memcpy(v17, v10, v11);
        *a3 = v17;
        a3[1] = v7;
        a3[2] = 0;
        if (v10)
        {
          operator delete(v10);
        }
      }

      a3[1] = v7;
      ++v5;
    }

    while (v5 != v6);
  }

  *a4 = v5;
  a4[1] = a3;
}

void sub_1069CFC()
{
  byte_27C12DF = 3;
  LODWORD(qword_27C12C8) = 5136193;
  byte_27C12F7 = 3;
  LODWORD(qword_27C12E0) = 5136194;
  byte_27C130F = 3;
  LODWORD(qword_27C12F8) = 5136195;
  byte_27C1327 = 15;
  strcpy(&qword_27C1310, "vehicle_mass_kg");
  byte_27C133F = 21;
  strcpy(&xmmword_27C1328, "vehicle_cargo_mass_kg");
  byte_27C1357 = 19;
  strcpy(&qword_27C1340, "vehicle_aux_power_w");
  byte_27C136F = 15;
  strcpy(&qword_27C1358, "dcdc_efficiency");
  strcpy(&qword_27C1370, "drive_train_efficiency");
  HIBYTE(word_27C1386) = 22;
  operator new();
}

void sub_1069ED8(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C1386) < 0)
  {
    sub_21E6D5C();
  }

  sub_21E6D68();
  _Unwind_Resume(a1);
}

uint64_t sub_1069EF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8, uint64_t a9)
{
  v16 = a1 + 43888;
  v17 = a1 + 39640;
  v19 = *a2;
  v18 = a2[1];
  v20 = a1 + 19456;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = 0;
  *a1 = v19;
  *(a1 + 8) = v18;
  do
  {
    v22 = a1 + v21;
    *(v22 + 16) = 0;
    *(v22 + 40) = 0;
    *(v22 + 24) = 0;
    *(v22 + 48) = 0;
    v21 += 48;
  }

  while (v21 != 3840);
  *(a1 + 3872) = 0;
  *(a1 + 3856) = 0u;
  v23 = sub_3C0014(a1, 1u, 1);
  if (!v23)
  {
    LODWORD(v27) = 0;
    *(a1 + 3872) = 0;
    goto LABEL_15;
  }

  v24 = &v23[-*v23];
  if (*v24 >= 0xBu)
  {
    v25 = *(v24 + 5);
    if (v25)
    {
      LODWORD(v25) = *&v23[v25];
    }

    *(a1 + 3872) = v25;
    v26 = &v23[-*v23];
    if (*v26 >= 0xDu)
    {
      goto LABEL_10;
    }

LABEL_14:
    LODWORD(v27) = 0;
    goto LABEL_15;
  }

  *(a1 + 3872) = 0;
  v26 = &v23[-*v23];
  if (*v26 < 0xDu)
  {
    goto LABEL_14;
  }

LABEL_10:
  v27 = *(v26 + 6);
  if (v27)
  {
    LODWORD(v27) = *&v23[v27];
  }

LABEL_15:
  *(a1 + 3876) = v27;
  *(a1 + 3880) = sub_2BDE20(a6);
  *(a1 + 3882) = a7;
  v28 = a2[1];
  v66 = *a2;
  v67 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  v61 = a5;
  sub_3603F0(a1 + 3888, &v66);
  v29 = v67;
  if (v67 && !atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  v31 = *a2;
  v30 = a2[1];
  if (v30)
  {
    atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 11712) = v31;
  *(a1 + 11720) = v30;
  v32 = -3840;
  do
  {
    v33 = a1 + v32;
    *(v33 + 15568) = 0;
    *(v33 + 15592) = 0;
    *(v33 + 15576) = 0;
    *(v33 + 15600) = 0;
    v32 += 48;
  }

  while (v32);
  *(a1 + 15568) = 0u;
  v35 = *a2;
  v34 = a2[1];
  if (v34)
  {
    atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
  }

  v36 = 0;
  *(a1 + 15584) = v35;
  *(a1 + 15592) = v34;
  do
  {
    v37 = a1 + v36;
    *(v37 + 15600) = 0;
    *(v37 + 15624) = 0;
    *(v37 + 15608) = 0;
    *(v37 + 15632) = 0;
    v36 += 48;
  }

  while (v36 != 3840);
  *(a1 + 19440) = 0u;
  v38 = *a2;
  *v20 = -1;
  if (!v38)
  {
    *(v20 + 4) = 0;
    v41 = a2[1];
    *&v65 = 0;
    *(&v65 + 1) = v41;
    if (!v41)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v39 = sub_2D5658(v38);
  v40 = *a2;
  *(v20 + 4) = v39;
  v41 = a2[1];
  *&v65 = v40;
  *(&v65 + 1) = v41;
  if (v41)
  {
LABEL_30:
    atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_31:
  v42 = sub_2B3170((a1 + 19464), &v65);
  v43 = *(&v65 + 1);
  if (*(&v65 + 1) && !atomic_fetch_add((*(&v65 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43, v42);
    std::__shared_weak_count::__release_weak(v43);
  }

  v44 = a2[1];
  *&v64 = *a2;
  *(&v64 + 1) = v44;
  if (v44)
  {
    atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
  }

  sub_36077C(a1 + 23336, &v64, a7, 0);
  v45 = *(&v64 + 1);
  if (*(&v64 + 1) && !atomic_fetch_add((*(&v64 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

  v46 = a2[1];
  *&v63 = *a2;
  *(&v63 + 1) = v46;
  if (v46)
  {
    atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
  }

  v47 = sub_2B3170((a1 + 27224), &v63);
  v48 = *(&v63 + 1);
  if (*(&v63 + 1) && !atomic_fetch_add((*(&v63 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v48->__on_zero_shared)(v48, v47);
    std::__shared_weak_count::__release_weak(v48);
  }

  v50 = *a2;
  v49 = a2[1];
  if (v49)
  {
    atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 31096) = v50;
  *(a1 + 31104) = v49;
  v51 = (a1 + 31144);
  v52 = 160;
  do
  {
    *(v51 - 8) = 0;
    *(v51 - 2) = 0;
    *(v51 - 3) = 0;
    *v51 = 0;
    v51 += 6;
    v52 -= 2;
  }

  while (v52);
  *(a1 + 34967) = 0;
  *(a1 + 34952) = 0u;
  sub_36059C((a1 + 34976), a2, 255);
  *v17 = a6;
  *(v17 + 8) = *a8;
  sub_1073240(a1 + 39656, a8 + 8);
  *(a1 + 43856) = *(a8 + 4208);
  *(a1 + 43872) = 0;
  *(a1 + 43880) = 0u;
  *(a1 + 43872) = *(a8 + 4224);
  *v16 = *(a8 + 4240);
  *(a8 + 4240) = 0;
  *(a8 + 4224) = 0u;
  *(v16 + 24) = 0;
  *(v16 + 8) = 0u;
  *(v16 + 8) = *(a8 + 4248);
  *(v16 + 24) = *(a8 + 4264);
  *(a8 + 4248) = 0u;
  *(a8 + 4264) = 0;
  *(a1 + 43936) = 0;
  *(a1 + 43920) = 0u;
  *(a1 + 43920) = *(a8 + 4272);
  *(v16 + 48) = *(a8 + 4288);
  *(a8 + 4288) = 0;
  *(a8 + 4272) = 0u;
  v53 = *(a8 + 4296);
  *(v16 + 64) = a1 + 15584;
  *(v16 + 56) = v53;
  *(v16 + 72) = a1;
  *(v16 + 80) = a6;
  *(v16 + 88) = 1;
  *(v16 + 96) = a4;
  *(v16 + 104) = a3;
  *(v16 + 112) = a9;
  sub_10AC550(a1 + 44008, a1 + 3888, a1 + 19464, a1 + 23336, a6, a4);
  *(v16 + 192) = v61;
  v54 = sub_2D5658(*a2);
  *(v16 + 208) = 0;
  *(v16 + 200) = v54;
  *(v16 + 201) = 0;
  *(v16 + 216) = 0;
  *(v16 + 224) = 0;
  v55 = sub_101E508((v16 + 64));
  v57 = *(v16 + 208);
  v56 = *(v16 + 216);
  v58 = 0x80FE03F80FE03F81 * ((v56 - v57) >> 3);
  if (v55 <= v58)
  {
    if (v55 < v58)
    {
        ;
      }

      *(v16 + 216) = i;
    }
  }

  else
  {
    sub_10738C4((v16 + 208), v55 - v58);
  }

  return a1;
}

void sub_106A4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1F1A8(a12);
  sub_1F1A8(v12 + 11712);
  sub_360B9C((v12 + 3888));
  sub_1F1A8(v12);
  _Unwind_Resume(a1);
}

void sub_106A600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 20;
  strcpy(__p, "CyclingCostFunctions");
  memset(v16, 0, sizeof(v16));
  v5 = sub_3AEC94(a5, __p, v16);
  v15 = 14;
  strcpy(v14, "cost_functions");
  v6 = sub_5F5AC(v5, v14);
  v13 = 8;
  strcpy(v12, "standard");
  sub_5F5AC(v6, v12);
  if (v13 < 0)
  {
    operator delete(v12[0]);
    if ((v15 & 0x80000000) == 0)
    {
LABEL_3:
      v7 = v16[0];
      if (!v16[0])
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v14[0]);
  v7 = v16[0];
  if (!v16[0])
  {
LABEL_4:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_8:
  v8 = v16[1];
  if (v16[1] == v7)
  {
    v16[1] = v7;
    operator delete(v7);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    do
    {
      v9 = *(v8 - 1);
      v8 -= 3;
      if (v9 < 0)
      {
        operator delete(*v8);
      }
    }

    while (v8 != v7);
    v16[1] = v7;
    operator delete(v16[0]);
    if ((v11 & 0x80000000) == 0)
    {
LABEL_5:
      operator new();
    }
  }

LABEL_10:
  operator delete(*__p);
  goto LABEL_5;
}

void sub_106AA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_5C010(&__p);
  sub_5BF68((v35 - 88));
  _Unwind_Resume(a1);
}

void sub_106AB0C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  sub_3AF114(v1);
  sub_3B2A90(v2);
  sub_3AF144(v2);
  v4 = sub_3AF144(v2);
  sub_106A600(v5, v3 + 3888, v3 + 11712, v4, v2);
}

void sub_106AC34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_404134(va);
  _Unwind_Resume(a1);
}

void sub_106AC48(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, int a4@<W3>, char a5@<W4>, void *a6@<X8>)
{
  v10 = (a1 + 40960);
  sub_F8DE84(a1 + 39648, 0);
  v37 = a6;
  if (a2)
  {
    v11 = sub_101E790(v10[374], a2, 1);
    if (!v11 || (v12 = &v11[-*v11], *v12 < 9u) || (v13 = *(v12 + 4)) == 0)
    {
      v17 = -1;
      goto LABEL_10;
    }

    v14 = sub_101E640(&v11[v13 + *&v11[v13]], HIDWORD(a2));
    v15 = (v14 - *v14);
    if (*v15 >= 5u)
    {
      v16 = v15[2];
      if (v16)
      {
        v17 = *(v14 + v16);
        goto LABEL_10;
      }
    }
  }

  v17 = 0;
LABEL_10:
  sub_106B110(v10[392] + 1032 * v17);
  v34 = *(a1 + 3880);
  v35 = *(a1 + 3882);
  v36 = v10[379];
  v18 = sub_10AC56C();
  if (sub_394BD0())
  {
    v19 = a4;
  }

  else
  {
    v19 = 0x7FFFFFFF;
  }

  v20 = sub_394BD0();
  v21 = *a3;
  if (v20)
  {
    v22 = a4;
  }

  else
  {
    v22 = 0x7FFFFFFF;
  }

  v44 = a2;
  v45 = __PAIR64__(v18, v21);
  v46 = v19;
  v47 = v22;
  v48 = a5;
  v49 = v35;
  v50 = v34;
  v51 = 0;
  v52 = 0x7FFFFFFF;
  sub_1064990(&v44, v36, a1, v40);
  v23 = (v40[1] + (v40[0] << 6) + (v40[0] >> 2) + 2654435769u) ^ v40[0];
  v24 = (v40[2] + (v23 << 6) + (v23 >> 2) + 2654435769u) ^ v23;
  v25 = (v40[3] + (v24 << 6) + (v24 >> 2) + 2654435769u) ^ v24;
  v26 = (v40[4] + (v25 << 6) + (v25 >> 2) + 2654435769u) ^ v25;
  v27 = (v40[5] + (v26 << 6) + (v26 >> 2) + 2654435769u) ^ v26;
  v28 = (v41 + (v27 << 6) + (v27 >> 2) + 2654435769u) ^ v27;
  v29 = (v42 + (v28 << 6) + (v28 >> 2) + 2654435769u) ^ v28;
  v30 = (v43 + (v29 << 6) + (v29 >> 2) + 2654435769u) ^ v29;
  v31 = (*(v10[380] + 16) + 272 * (bswap64(v30) % *v10[380]));
  v53[0] = v40;
  v53[1] = v30;
  sub_106557C(v31, v53, &v44);
  if (v46 != 1)
  {
    operator new();
  }

  v32 = v45;
  *v37 = v44;
  v37[1] = v32;
  if (v32)
  {
    atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
  }

  v33 = v45;
  if (v45)
  {
    if (!atomic_fetch_add((v45 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
    }
  }
}

void sub_106B0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1F1A8(v15);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

double sub_106B110(uint64_t a1)
{
  *(a1 + 8) = *a1;
  *(a1 + 24) = 0;
  *(a1 + 40) = *(a1 + 32);
  *(a1 + 64) = *(a1 + 56);
  *(a1 + 88) = *(a1 + 80);
  *(a1 + 112) = *(a1 + 104);
  v2 = a1 + 176;
  v3 = 768;
  *(a1 + 136) = *(a1 + 128);
  *(a1 + 160) = 0;
  do
  {
    if (*(v2 + 16))
    {
      v4 = *(v2 + 24);
      if (v4 >= 0x80)
      {
        operator delete(*v2);
        *(v2 + 40) = 0;
        *v2 = &unk_2290750;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      else if (v4)
      {
        *(v2 + 16) = 0;
        memset(*v2, 128, v4 + 8);
        *(*v2 + v4) = -1;
        v5 = *(v2 + 24);
        if (v5 == 7)
        {
          v6 = 6;
        }

        else
        {
          v6 = v5 - (v5 >> 3);
        }

        *(v2 + 40) = v6 - *(v2 + 16);
      }
    }

    v2 += 48;
    v3 -= 48;
  }

  while (v3);
  *(a1 + 952) = *(a1 + 944);
  *(a1 + 976) = *(a1 + 968);
  *(a1 + 1000) = *(a1 + 992);
  result = 0.0;
  *(a1 + 1016) = 0;
  *(a1 + 1024) = 0;
  return result;
}

void sub_106B230(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int *a4, unsigned int a5, char a6)
{
  v8 = a1;
  v9 = a3;
  sub_106CC98(a1, a2, a3);
  sub_106CEBC(v8, v9, 0);
  v122 = v9;
  v10 = *(v8 + 44096) + 1032 * v9;
  v11 = *(v10 + 24);
  v12 = *v10;
  if (v11 != (*(v10 + 8) - *v10) >> 3)
  {
    v118 = a3 - 1;
    v119 = v8;
    v123 = a5;
    __asm { FMOV            V0.2D, #1.0 }

    v121 = _Q0;
    while (1)
    {
      *(v10 + 24) = v11 + 1;
      LODWORD(v125) = -1431655765 * ((*(v10 + 88) - *(v10 + 80)) >> 2);
      sub_DD38(v10 + 128, &v125);
      if (*(v8 + 11662) != 1)
      {
        break;
      }

      v17 = *(v12 + 8 * v11);
      v18 = sub_2AF704(v8 + 7784, HIDWORD(v17), 1);
      if (v18)
      {
        v19 = &v18[-*v18];
        if (*v19 >= 5u)
        {
          v20 = *(v19 + 2);
          if (v20)
          {
            if (*&v18[v20 + *&v18[v20]] > WORD1(v17) && sub_2B817C(v8 + 3888, HIDWORD(v17) & 0xFFFF0000FFFFFFFFLL | (WORD1(v17) << 32)))
            {
              break;
            }
          }
        }
      }

LABEL_4:
      v11 = *(v10 + 24);
      v12 = *v10;
      if (v11 == (*(v10 + 8) - *v10) >> 3)
      {
        goto LABEL_2;
      }
    }

    v21 = *(v12 + 8 * v11);
    if (v122 == 1)
    {
      sub_F8ED58(v8 + 39648, v21, 0, (v10 + 32), 0);
      v23 = *(v10 + 32);
      v22 = *(v10 + 40);
      while (1)
      {
        if (v23 == v22)
        {
          goto LABEL_4;
        }

        v125 = 0u;
        v126 = 0u;
        v127 = v121;
        v128 = 1.0;
        v129 = 1;
        sub_10AB718(v8 + 44008, &v125, v23, 0x3B9ACA00u, a4);
        if ((v129 & 1) == 0)
        {
          goto LABEL_15;
        }

        LODWORD(v25) = v125;
        v26 = *&v127 * v25;
        if (v26 >= 0.0)
        {
          if (v26 >= 4.50359963e15)
          {
            goto LABEL_24;
          }

          v27 = (v26 + v26) + 1;
        }

        else
        {
          if (v26 <= -4.50359963e15)
          {
            goto LABEL_24;
          }

          v27 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
        }

        v26 = (v27 >> 1);
LABEL_24:
        v28 = *(&v127 + 1) * SDWORD1(v125);
        if (v28 >= 0.0)
        {
          if (v28 >= 4.50359963e15)
          {
            goto LABEL_30;
          }

          v29 = (v28 + v28) + 1;
        }

        else
        {
          if (v28 <= -4.50359963e15)
          {
            goto LABEL_30;
          }

          v29 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
        }

        v28 = (v29 >> 1);
LABEL_30:
        v30 = v128 * *(&v125 + 1);
        if (v30 >= 0.0)
        {
          if (v30 >= 4.50359963e15)
          {
            goto LABEL_36;
          }

          v31 = (v30 + v30) + 1;
        }

        else
        {
          if (v30 <= -4.50359963e15)
          {
            goto LABEL_36;
          }

          v31 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
        }

        v30 = (v31 >> 1);
LABEL_36:
        v32 = v126 + v26;
        v33 = (DWORD1(v126) + v28);
        if (v32 != -1 && v33 != 0x7FFFFFFF && *(&v126 + 1) + v30 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v36 = 0;
          v37 = v32 | (v33 << 32);
          v38 = ((*(v23 + 72) >> 16) & 0xFFFF0000 | (*(v23 + 72) << 32) | (2 * ((*(v23 + 72) & 0xFF000000000000) == 0))) + 4 * *(v23 + 82);
          v39 = v38 & 0xFFFFFFFFFFFFFFFELL | (*(v23 + 84) >> 1) & 1;
          v130 = v39;
          v40 = *(v8 + 44096);
          v41 = ((0x2127599BF4325C37 * (v39 ^ (v38 >> 23))) ^ ~((0x2127599BF4325C37 * (v39 ^ (v38 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v39 ^ (v38 >> 23))) ^ ((0x2127599BF4325C37 * (v39 ^ (v38 >> 23))) >> 47)) << 21);
          v42 = 21 * ((265 * (v41 ^ (v41 >> 24))) ^ ((265 * (v41 ^ (v41 >> 24))) >> 14));
          v43 = 2147483649u * (v42 ^ (v42 >> 28));
          v44 = (v40 + 1208 + 48 * (((((v42 ^ (v42 >> 28)) >> 8) ^ ((-2147483647 * (v42 ^ (v42 >> 28))) >> 16)) ^ ((-2147483647 * (v42 ^ (v42 >> 28))) >> 24)) & 0xF));
          v45 = v43 >> 7;
          v46 = v44[3];
          v47 = 0x101010101010101 * (v43 & 0x7F);
          while (1)
          {
            v48 = v45 & v46;
            v49 = *(*v44 + v48);
            v50 = ((v49 ^ v47) - 0x101010101010101) & ~(v49 ^ v47) & 0x8080808080808080;
            if (v50)
            {
              break;
            }

LABEL_48:
            if ((v49 & (~v49 << 6) & 0x8080808080808080) != 0)
            {
              goto LABEL_51;
            }

            v36 += 8;
            v45 = v36 + v48;
          }

          v51 = v44[1];
          while (1)
          {
            v52 = (v48 + (__clz(__rbit64(v50)) >> 3)) & v46;
            if (*(v51 + 16 * v52) == v39)
            {
              break;
            }

            v50 &= v50 - 1;
            if (!v50)
            {
              goto LABEL_48;
            }
          }

          if (v46 == v52)
          {
LABEL_51:
            v53 = *(v40 + 2056);
            sub_40D9F8(v40 + 1208, &v130, &v125);
            v54 = *(v125 + 8) + 16 * *(&v125 + 1);
            if (v126 == 1)
            {
              *v54 = v130;
              *(v54 + 8) = -1;
            }

            *(v54 + 8) = *(v40 + 2056);
            v55 = *(v40 + 1040);
            v56 = *(v40 + 1048);
            if (v55 >= v56)
            {
              v58 = v37;
              v59 = *(v40 + 1032);
              v60 = v55 - v59;
              v61 = (v55 - v59) >> 3;
              v62 = v61 + 1;
              if ((v61 + 1) >> 61)
              {
                goto LABEL_131;
              }

              v63 = v56 - v59;
              if (v63 >> 2 > v62)
              {
                v62 = v63 >> 2;
              }

              if (v63 >= 0x7FFFFFFFFFFFFFF8)
              {
                v64 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v64 = v62;
              }

              if (v64)
              {
                if (!(v64 >> 61))
                {
                  operator new();
                }

                goto LABEL_129;
              }

              v67 = (v55 - v59) >> 3;
              v68 = (8 * v61);
              v69 = (8 * v61 - 8 * v67);
              *v68 = v130;
              v57 = v68 + 1;
              memcpy(v69, v59, v60);
              *(v40 + 1032) = v69;
              *(v40 + 1040) = v57;
              *(v40 + 1048) = 0;
              if (v59)
              {
                operator delete(v59);
              }

              v37 = v58;
              v8 = v119;
            }

            else
            {
              *v55 = v130;
              v57 = v55 + 8;
            }

            *(v40 + 1040) = v57;
            ++*(v40 + 2056);
            v65 = *(v10 + 88);
            v66 = *(v10 + 96);
            if (v65 >= v66)
            {
LABEL_70:
              v70 = v37;
              v71 = *(v10 + 80);
              v72 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v71) >> 2) + 1;
              if (v72 > 0x1555555555555555)
              {
                goto LABEL_130;
              }

              v73 = 0xAAAAAAAAAAAAAAABLL * ((v66 - v71) >> 2);
              if (2 * v73 > v72)
              {
                v72 = 2 * v73;
              }

              if (v73 >= 0xAAAAAAAAAAAAAAALL)
              {
                v74 = 0x1555555555555555;
              }

              else
              {
                v74 = v72;
              }

              if (v74)
              {
                if (v74 <= 0x1555555555555555)
                {
                  operator new();
                }

                goto LABEL_129;
              }

              v75 = 4 * ((v65 - v71) >> 2);
              *v75 = v53;
              *(v75 + 4) = v70;
              v24 = v75 + 12;
              v76 = (v75 - (v65 - v71));
              memcpy(v76, v71, v65 - v71);
              *(v10 + 80) = v76;
              *(v10 + 88) = v24;
              *(v10 + 96) = 0;
              if (v71)
              {
                operator delete(v71);
              }

              v8 = v119;
              goto LABEL_14;
            }
          }

          else
          {
            v53 = *(v51 + 16 * v52 + 8);
            v65 = *(v10 + 88);
            v66 = *(v10 + 96);
            if (v65 >= v66)
            {
              goto LABEL_70;
            }
          }

          *v65 = v53;
          *(v65 + 4) = v37;
          v24 = v65 + 12;
LABEL_14:
          *(v10 + 88) = v24;
        }

LABEL_15:
        v23 += 88;
      }
    }

    sub_106C14C(v8, v21, v118, a4, v123, a6, (v10 + 56));
    v77 = *(v10 + 56);
    v78 = *(v10 + 64);
    while (1)
    {
      if (v77 == v78)
      {
        goto LABEL_4;
      }

      v80 = *(v77 + 28);
      if (v80 != -1 && (v80 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000)
      {
        break;
      }

LABEL_85:
      v77 += 40;
    }

    v82 = 0;
    v83 = *(v77 + 8);
    v84 = *(v8 + 44096);
    v130 = v83;
    v85 = v84 + 1032 * v122 + 176;
    v86 = ((0x2127599BF4325C37 * (v83 ^ (v83 >> 23))) ^ ~((0x2127599BF4325C37 * (v83 ^ (v83 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v83 ^ (v83 >> 23))) ^ ((0x2127599BF4325C37 * (v83 ^ (v83 >> 23))) >> 47)) << 21);
    v87 = 21 * ((265 * (v86 ^ (v86 >> 24))) ^ ((265 * (v86 ^ (v86 >> 24))) >> 14));
    v88 = 2147483649u * (v87 ^ (v87 >> 28));
    v89 = (v85 + 48 * (((((v87 ^ (v87 >> 28)) >> 8) ^ ((-2147483647 * (v87 ^ (v87 >> 28))) >> 16)) ^ ((-2147483647 * (v87 ^ (v87 >> 28))) >> 24)) & 0xF));
    v90 = v88 >> 7;
    v91 = v89[3];
    v92 = 0x101010101010101 * (v88 & 0x7F);
    while (1)
    {
      v93 = v90 & v91;
      v94 = *(*v89 + v93);
      v95 = ((v94 ^ v92) - 0x101010101010101) & ~(v94 ^ v92) & 0x8080808080808080;
      if (v95)
      {
        break;
      }

LABEL_96:
      if ((v94 & (~v94 << 6) & 0x8080808080808080) != 0)
      {
        goto LABEL_99;
      }

      v82 += 8;
      v90 = v82 + v93;
    }

    v96 = v89[1];
    while (1)
    {
      v97 = (v93 + (__clz(__rbit64(v95)) >> 3)) & v91;
      if (*(v96 + 16 * v97) == v83)
      {
        break;
      }

      v95 &= v95 - 1;
      if (!v95)
      {
        goto LABEL_96;
      }
    }

    if (v91 == v97)
    {
LABEL_99:
      v98 = v84 + 1032 * v122;
      v99 = *(v98 + 1024);
      sub_40D9F8(v85, &v130, &v125);
      v100 = *(v125 + 8) + 16 * *(&v125 + 1);
      if (v126 == 1)
      {
        *v100 = v130;
        *(v100 + 8) = -1;
      }

      *(v100 + 8) = *(v98 + 1024);
      v102 = *(v98 + 8);
      v101 = *(v98 + 16);
      if (v102 >= v101)
      {
        v104 = *v98;
        v105 = v102 - *v98;
        v106 = (v105 >> 3) + 1;
        if (v106 >> 61)
        {
LABEL_131:
          sub_1794();
        }

        v107 = v101 - v104;
        if (v107 >> 2 > v106)
        {
          v106 = v107 >> 2;
        }

        if (v107 >= 0x7FFFFFFFFFFFFFF8)
        {
          v108 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v108 = v106;
        }

        if (v108)
        {
          if (!(v108 >> 61))
          {
            operator new();
          }

LABEL_129:
          sub_1808();
        }

        v111 = (8 * (v105 >> 3));
        *v111 = v130;
        v103 = v111 + 1;
        memcpy(0, v104, v105);
        *v98 = 0;
        *(v98 + 8) = v103;
        *(v98 + 16) = 0;
        if (v104)
        {
          operator delete(v104);
        }
      }

      else
      {
        *v102 = v130;
        v103 = v102 + 1;
      }

      *(v98 + 8) = v103;
      ++*(v98 + 1024);
      v80 = *(v77 + 28);
      v109 = *(v10 + 88);
      v110 = *(v10 + 96);
      if (v109 >= v110)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v99 = *(v96 + 16 * v97 + 8);
      v109 = *(v10 + 88);
      v110 = *(v10 + 96);
      if (v109 >= v110)
      {
LABEL_117:
        v112 = *(v10 + 80);
        v113 = 0xAAAAAAAAAAAAAAABLL * ((v109 - v112) >> 2) + 1;
        if (v113 > 0x1555555555555555)
        {
LABEL_130:
          sub_1794();
        }

        v114 = 0xAAAAAAAAAAAAAAABLL * ((v110 - v112) >> 2);
        if (2 * v114 > v113)
        {
          v113 = 2 * v114;
        }

        if (v114 >= 0xAAAAAAAAAAAAAAALL)
        {
          v115 = 0x1555555555555555;
        }

        else
        {
          v115 = v113;
        }

        if (v115)
        {
          if (v115 <= 0x1555555555555555)
          {
            operator new();
          }

          goto LABEL_129;
        }

        v116 = 4 * ((v109 - v112) >> 2);
        *v116 = v99;
        *(v116 + 4) = v80;
        v79 = v116 + 12;
        v117 = (v116 - (v109 - v112));
        memcpy(v117, v112, v109 - v112);
        *(v10 + 80) = v117;
        *(v10 + 88) = v79;
        *(v10 + 96) = 0;
        if (v112)
        {
          operator delete(v112);
        }

        goto LABEL_84;
      }
    }

    *v109 = v99;
    *(v109 + 4) = v80;
    v79 = v109 + 12;
LABEL_84:
    *(v10 + 88) = v79;
    goto LABEL_85;
  }

LABEL_2:
  LODWORD(v125) = -1431655765 * ((*(v10 + 88) - *(v10 + 80)) >> 2);
  sub_DD38(v10 + 128, &v125);
}

void sub_106BCE4(uint64_t a1, unsigned int a2, void **a3)
{
  v6 = *(a1 + 44096) + 1032 * a2;
  v55 = *(v6 + 1020);
  v7 = *(v6 + 1016);
  v8 = *(v6 + 104);
  v9 = (*(v6 + 112) - v8) >> 3;
  v54 = ((*(v6 + 136) - *(v6 + 128)) >> 2) - 1;
  v51 = (v6 + 104);
  if (v54 <= v9)
  {
    if (v54 < v9)
    {
      *(v6 + 112) = v8 + 8 * v54;
    }
  }

  else
  {
    sub_1073068(v6 + 104, v54 - v9);
  }

  v10 = v7 + v55;
  sub_4D9168(v6 + 152, v54, 0);
  if ((*(*(a1 + 44096) + 1032 * a2 + 1016) * v55) > ((a3[2] - *a3) >> 3))
  {
    operator new();
  }

  if (v55 <= v10)
  {
    v11 = v7 + v55;
  }

  else
  {
    v11 = v55;
  }

  v53 = v11;
  if (v55 < v10)
  {
    if (v10 <= v54)
    {
      v12 = v54;
    }

    else
    {
      v12 = v7 + v55;
    }

    v13 = v55;
    v52 = v12;
    while (1)
    {
      v14 = *(v6 + 104);
      v15 = *(v6 + 112) - v14;
      if (v15 >= 1)
      {
        memset_pattern16(v14, &unk_22910C0, v15);
      }

      v16 = *(v6 + 128);
      v17 = *(v16 + 4 * v13);
      v18 = v13 + 1;
      v19 = *(v16 + 4 * v18);
      v20 = v17 >= v19;
      if (v17 > v19)
      {
        v19 = v17;
      }

      if (!v20)
      {
        do
        {
          v42 = (*(v6 + 80) + 12 * v17);
          *(*(v6 + 104) + 8 * *v42) = *(v42 + 1);
          v43 = *v42;
          if (v43 >= v10)
          {
            *(*(v6 + 152) + ((v43 >> 3) & 0x1FFFFFF8)) |= 1 << v43;
          }

          ++v17;
        }

        while (v19 != v17);
      }

      v56 = v18;
      if (v10 < v54)
      {
        break;
      }

LABEL_42:
      if (v55)
      {
        v39 = *v51;
        v40 = &(*v51)[v55];
        v41 = a3[1];
        do
        {
          v44 = a3[2];
          if (v41 < v44)
          {
            *v41 = *v39;
            v41 += 8;
          }

          else
          {
            v45 = *a3;
            v46 = v41 - *a3;
            v47 = (v46 >> 3) + 1;
            if (v47 >> 61)
            {
              sub_1794();
            }

            v48 = v44 - v45;
            if (v48 >> 2 > v47)
            {
              v47 = v48 >> 2;
            }

            if (v48 >= 0x7FFFFFFFFFFFFFF8)
            {
              v49 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v49 = v47;
            }

            if (v49)
            {
              if (!(v49 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v50 = (8 * (v46 >> 3));
            *v50 = *v39;
            v41 = (v50 + 1);
            memcpy(0, v45, v46);
            *a3 = 0;
            a3[1] = v41;
            a3[2] = 0;
            if (v45)
            {
              operator delete(v45);
            }
          }

          a3[1] = v41;
          ++v39;
        }

        while (v39 != v40);
      }

      v12 = v52;
      v13 = v56;
      if (v56 == v53)
      {
        goto LABEL_61;
      }
    }

    v21 = 0;
    v22 = v10;
    while (1)
    {
      v23 = v22;
      v24 = *(v6 + 152);
      v25 = *(v24 + 8 * (v23 >> 6));
      if ((v25 & (1 << v23)) != 0)
      {
        *(v24 + 8 * (v23 >> 6)) = v25 & ~(1 << v23);
        v26 = *(v6 + 128);
        v27 = *(v26 + 4 * v23);
        v22 = v23 + 1;
        v28 = *(v26 + 4 * (v23 + 1));
        v29 = v27 >= v28;
        if (v27 > v28)
        {
          v28 = v27;
        }

        if (!v29)
        {
          v30 = (*(v6 + 104) + 8 * v23);
          while (1)
          {
            v31 = (*(v6 + 80) + 12 * v27);
            v32 = *v31;
            v33 = v31[1] + *v30;
            v34 = v31[2] + v30[1];
            v35 = (*(v6 + 104) + 8 * v32);
            v36 = *v35;
            if (*v35 == -1)
            {
              break;
            }

            v37 = v35[1];
            if (v37 == 0x7FFFFFFF)
            {
              break;
            }

            if (v33 == v36)
            {
              if (v34 < v37)
              {
                break;
              }
            }

            else if (v33 < v36)
            {
              break;
            }

LABEL_29:
            if (v28 == ++v27)
            {
              goto LABEL_40;
            }
          }

          *v35 = (v34 << 32) | v33;
          if (v32 >= v10)
          {
            v21 = 1;
            *(*(v6 + 152) + ((v32 >> 3) & 0x1FFFFFF8)) |= 1 << v32;
          }

          goto LABEL_29;
        }
      }

      else
      {
        v22 = v23 + 1;
      }

LABEL_40:
      v38 = v21;
      v21 &= v22 != v12;
      if (v22 == v12)
      {
        v22 = v10;
        if ((v38 & 1) == 0)
        {
          goto LABEL_42;
        }
      }
    }
  }

LABEL_61:

  sub_106D124(a3);
}

uint64_t sub_106C134(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *(result + 44089) = v2;
  return result;
}

void sub_106C14C(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int *a4, unsigned int a5, char a6, void *a7)
{
  v14 = (a1 + 40960);
  v139 = a2;
  a7[1] = *a7;
  LODWORD(v140) = a3;
  v15 = sub_101F854(*(a1 + 43952), HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32), (a2 & 2) == 0, &v140);
  v138 = v15;
  v16 = v15;
  v17 = HIDWORD(v15);
  if (v15)
  {
    _ZF = v17 == 0xFFFFFFFF;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    return;
  }

  v129 = v15;
  v140 = 0;
  v141 = 0;
  v19 = sub_1055EF8(v14[375], v15, 1);
  if (!v19)
  {
    return;
  }

  v20 = &v19[-*v19];
  if (*v20 < 5u)
  {
    return;
  }

  v21 = *(v20 + 2);
  if (!v21)
  {
    return;
  }

  v22 = &v19[v21 + *&v19[v21]];
  if (*v22 <= v17)
  {
    return;
  }

  v23 = &v22[4 * v17 + 4 + *&v22[4 * v17 + 4]];
  v24 = &v23[-*v23];
  if (*v24 < 9u)
  {
    return;
  }

  v25 = *(v24 + 4);
  if (!v25)
  {
    return;
  }

  if (!*&v23[v25 + *&v23[v25]])
  {
    return;
  }

  v128 = 4 * v17;
  v131 = 0;
  v132 = 0;
  v26 = sub_1055EF8(v14[375], v16, 1);
  if (!v26)
  {
    return;
  }

  v27 = &v26[-*v26];
  if (*v27 < 5u)
  {
    return;
  }

  v28 = *(v27 + 2);
  if (!v28)
  {
    return;
  }

  v29 = &v26[v28 + *&v26[v28]];
  if (*v29 <= v17)
  {
    return;
  }

  v30 = &v29[v128 + 4 + *&v29[v128 + 4]];
  v31 = &v30[-*v30];
  if (*v31 < 0xBu)
  {
    return;
  }

  v32 = *(v31 + 5);
  if (!v32 || !*&v30[v32 + *&v30[v32]])
  {
    return;
  }

  v124 = *(a1 + 3880);
  v125 = *(a1 + 3882);
  v126 = v14[379];
  v123 = sub_10AC56C();
  if (sub_394BD0())
  {
    v33 = a5;
  }

  else
  {
    v33 = 0x7FFFFFFF;
  }

  v122 = v33;
  v121 = a5;
  v34 = sub_394BD0();
  v35 = *a4;
  if (v34)
  {
    v36 = a5;
  }

  else
  {
    v36 = 0x7FFFFFFF;
  }

  v140 = v129;
  v141 = __PAIR64__(v123, v35);
  v142 = v122;
  v143 = v36;
  v144 = a6;
  v145 = v125;
  v146 = v124;
  v147 = 0;
  v148 = 0x7FFFFFFF;
  sub_1064990(&v140, v126, a1, &v131);
  if (sub_FC1BE4(v14[379], v132) && !v135)
  {
    v37 = v131;
    v127 = v132;
    v38 = v136;
    v39 = sub_3C0014(a1, v131, 1);
    if (v39)
    {
      v40 = &v39[-*v39];
      if (*v40 >= 0xFu)
      {
        if (*(v40 + 7))
        {
          v41 = &v39[*(v40 + 7) + *&v39[*(v40 + 7)]];
          if (*v41 > HIDWORD(v37))
          {
            v42 = &v41[4 * HIDWORD(v37) + 4 + *&v41[4 * HIDWORD(v37) + 4]];
            v43 = &v42[-*v42];
            if (*v43 >= 5u)
            {
              v44 = *(v43 + 2);
              if (v44)
              {
                v45 = &v42[v44 + *&v42[v44]];
                v46 = v127 + *(a1 + 3872) * v38;
                if (v46 < *v45 && *&v45[4 * v46 + 4] != -1)
                {
                  sub_1064CA0(a1, v129, a2, v132, v136, a7);
                  return;
                }
              }
            }
          }
        }
      }
    }
  }

  v47 = (HIDWORD(v131) + (v131 << 6) + (v131 >> 2) + 2654435769u) ^ v131;
  v48 = (v132 + (v47 << 6) + (v47 >> 2) + 2654435769u) ^ v47;
  v49 = (SHIDWORD(v132) + (v48 << 6) + (v48 >> 2) + 2654435769u) ^ v48;
  v50 = (v133 + (v49 << 6) + (v49 >> 2) + 2654435769u) ^ v49;
  v51 = (v134 + (v50 << 6) + (v50 >> 2) + 2654435769u) ^ v50;
  v52 = (v135 + (v51 << 6) + (v51 >> 2) + 2654435769u) ^ v51;
  v53 = (v136 + (v52 << 6) + (v52 >> 2) + 2654435769u) ^ v52;
  v54 = (v137 + (v53 << 6) + (v53 >> 2) + 2654435769u) ^ v53;
  v55 = (*(v14[380] + 16) + 272 * (bswap64(v54) % *v14[380]));
  v149 = &v131;
  v150 = v54;
  sub_106557C(v55, &v149, &v140);
  if (v142 == 1)
  {
    v56 = v140;
    v149 = v140;
    v150 = v141;
    if (v141)
    {
      atomic_fetch_add_explicit((v141 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_106AC48(&v149, a1, v129, a4, v121, v135);
    v56 = v149;
  }

  if (v56 && (v57 = v56[3]) != 0)
  {
    v58 = (*(v57 + 32) - *(v57 + 24)) >> 3;
  }

  else
  {
    v59 = sub_1055EF8(v14[375], v16, 1);
    if (v59 && (v60 = &v59[-*v59], *v60 >= 5u) && (v61 = *(v60 + 2)) != 0 && (v62 = &v59[v61 + *&v59[v61]], *v62 > v17) && (v63 = &v62[v128 + 4 + *&v62[v128 + 4]], v64 = &v63[-*v63], *v64 >= 0xBu) && (v65 = *(v64 + 5)) != 0)
    {
      LODWORD(v58) = *&v63[v65 + *&v63[v65]];
    }

    else
    {
      LODWORD(v58) = 0;
    }
  }

  if (v149 && (v66 = v149[3]) != 0)
  {
    v67 = *v66;
    v68 = v66[1];
    v69 = (v68 - v67) >> 3;
    if (v69 < 1)
    {
      v90 = v67;
    }

    else
    {
      if (v68 - v67 == 8)
      {
        v70 = v67;
      }

      else
      {
        v70 = v67;
        do
        {
          v91 = (2 * v69) & 0xFFFFFFFFFFFFFFF8;
          _X14 = v70 + v91;
          __asm { PRFM            #0, [X14] }

          v97 = &v70[v69 >> 1];
          _X13 = v97 + v91;
          __asm { PRFM            #0, [X13] }

          if (*v97 >= a2)
          {
            v100 = 0;
          }

          else
          {
            v100 = v69 >> 1;
          }

          v70 += v100;
          v69 -= v69 >> 1;
        }

        while (v69 > 1);
      }

      v90 = &v70[*v70 < a2];
    }

    if (v68 != v90 && *v90 == a2)
    {
      v89 = (v90 - v67) >> 3;
      goto LABEL_82;
    }
  }

  else
  {
    v71 = sub_1055EF8(v14[375], v16, 1);
    if (v71)
    {
      v72 = &v71[-*v71];
      if (*v72 >= 5u)
      {
        v73 = *(v72 + 2);
        if (v73)
        {
          v74 = &v71[v73 + *&v71[v73]];
          if (*v74 > v17)
          {
            v75 = &v74[v128 + 4 + *&v74[v128 + 4]];
            v76 = &v75[-*v75];
            if (*v76 >= 9u)
            {
              v77 = *(v76 + 4);
              if (v77)
              {
                v78 = &v75[v77 + *&v75[v77]];
                v81 = *v78;
                v79 = v78 + 4;
                v80 = v81;
                v82 = &v79[8 * v81];
                v83 = v79;
                while (v80)
                {
                  v84 = &v83[(4 * v80) & 0x7FFFFFFF8];
                  v86 = *v84;
                  v85 = (v84 + 1);
                  v87 = v80 >> 1;
                  v80 += ~(v80 >> 1);
                  if (v86 >= a2)
                  {
                    v80 = v87;
                  }

                  else
                  {
                    v83 = v85;
                  }
                }

                if (v83 != v82)
                {
                  v88 = (v83 - v79) >> 3;
                  if (*v83 == a2)
                  {
                    LOWORD(v89) = v88;
                  }

                  else
                  {
                    LOWORD(v89) = -1;
                  }

                  goto LABEL_82;
                }
              }
            }
          }
        }
      }
    }
  }

  LOWORD(v89) = -1;
LABEL_82:
  v130 = v89;
  v101 = v14[392] + 1032 * a3 + 992;
  if (v149 && (v102 = v149[3]) != 0)
  {
    if (v102 + 24 != v101)
    {
      sub_31F64(v101, *(v102 + 24), *(v102 + 32), (*(v102 + 32) - *(v102 + 24)) >> 3);
    }
  }

  else
  {
    v103 = v14[375];
    *(v101 + 8) = *v101;
    v104 = sub_1055EF8(v103, v16, 1);
    if (v104)
    {
      v105 = &v104[-*v104];
      if (*v105 >= 5u)
      {
        v106 = *(v105 + 2);
        if (v106)
        {
          v107 = &v104[v106 + *&v104[v106]];
          if (*v107 > v17)
          {
            v108 = &v107[v128 + 4 + *&v107[v128 + 4]];
            v109 = &v108[-*v108];
            if (*v109 >= 0xBu)
            {
              v110 = *(v109 + 5);
              if (v110)
              {
                v111 = &v108[v110 + *&v108[v110]];
                v112 = *v111;
                v152[0] = v101;
                if (v112)
                {
                  v113 = 8 * v112;
                  v114 = (v111 + 4);
                  do
                  {
                    v151 = *v114;
                    sub_A2324(v152, &v151);
                    ++v114;
                    v113 -= 8;
                  }

                  while (v113);
                }
              }
            }
          }
        }
      }
    }
  }

  LOWORD(v152[0]) = 0;
  v116 = *v101;
  v115 = *(v101 + 8);
  if (v116 != v115)
  {
    v117 = v58 * v89;
    do
    {
      v118 = sub_106CA9C(v149, v117);
      sub_105F6B4(a7, &v139, v116, &v138, &v130, v152, v118);
      ++v117;
      ++LOWORD(v152[0]);
      v116 += 8;
    }

    while (v116 != v115);
  }

  v119 = v150;
  if (v150 && !atomic_fetch_add(&v150->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v119->__on_zero_shared)(v119);
    std::__shared_weak_count::__release_weak(v119);
  }

  v120 = v141;
  if (v141)
  {
    if (!atomic_fetch_add((v141 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v120->__on_zero_shared)(v120);
      std::__shared_weak_count::__release_weak(v120);
    }
  }
}

void sub_106CA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1F1A8(v17 - 120);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_106CA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_1F1A8(va1);
  _Unwind_Resume(a1);
}

void sub_106CA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_106CA9C(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 8 * a2;
}

void sub_106CBB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

int *sub_106CC98(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v4 = a1 + 40960;
  v5 = (*(a1 + 44096) + 1032 * a3);
  v6 = *(a1 + 43960);
  v5[119] = v5[118];
  v7 = a2;
  v8 = sub_1055EF8(v6, a2, 1);
  v9 = HIDWORD(a2);
  if (v8)
  {
    v10 = &v8[-*v8];
    if (*v10 >= 5u)
    {
      v11 = *(v10 + 2);
      if (v11)
      {
        v12 = &v8[v11 + *&v8[v11]];
        if (*v12 > v9)
        {
          v13 = &v12[4 * v9 + 4 + *&v12[4 * v9 + 4]];
          v14 = &v13[-*v13];
          if (*v14 >= 9u)
          {
            v15 = *(v14 + 4);
            if (v15)
            {
              v16 = &v13[v15 + *&v13[v15]];
              v17 = *v16;
              v33 = v5 + 118;
              if (v17)
              {
                v18 = 8 * v17;
                v19 = (v16 + 4);
                do
                {
                  v32 = *v19;
                  sub_A2324(&v33, &v32);
                  ++v19;
                  v18 -= 8;
                }

                while (v18);
              }
            }
          }
        }
      }
    }
  }

  v20 = *(v4 + 3000);
  v5[122] = v5[121];
  result = sub_1055EF8(v20, v7, 1);
  if (result)
  {
    v22 = (result - *result);
    if (*v22 >= 5u)
    {
      v23 = v22[2];
      if (v23)
      {
        v24 = (result + v23 + *(result + v23));
        if (*v24 > v9)
        {
          v25 = (&v24[v9 + 1] + v24[v9 + 1]);
          v26 = (v25 - *v25);
          if (*v26 >= 0xBu)
          {
            v27 = v26[5];
            if (v27)
            {
              v28 = (v25 + v27 + *(v25 + v27));
              v29 = *v28;
              v33 = v5 + 121;
              if (v29)
              {
                v30 = 8 * v29;
                v31 = (v28 + 1);
                do
                {
                  v32 = *v31;
                  result = sub_A2324(&v33, &v32);
                  ++v31;
                  v30 -= 8;
                }

                while (v30);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_106CEBC(uint64_t a1, unsigned int a2, int a3)
{
  v6 = *(a1 + 44096) + 1032 * a2;
  v7 = *(v6 + 976);
  v8 = *(v6 + 968);
  *(v6 + 1020) = (v7 - v8) >> 3;
  if (v7 == v8)
  {
    v10 = *(v6 + 1024);
  }

  else
  {
    do
    {
      sub_40D9F8(v6 + 176, v8, &v27);
      v11 = *(v27 + 8) + 16 * v28;
      if (v29 == 1)
      {
        *v11 = *v8;
        *(v11 + 8) = -1;
      }

      v9 = *(v6 + 1024);
      *(v11 + 8) = v9;
      v10 = v9 + 1;
      *(v6 + 1024) = v9 + 1;
      ++v8;
    }

    while (v8 != v7);
  }

  LODWORD(v27) = 0;
  v12 = *(v6 + 128);
  v13 = (*(v6 + 136) - v12) >> 2;
  if (v10 <= v13)
  {
    if (v10 < v13)
    {
      *(v6 + 136) = v12 + 4 * v10;
    }
  }

  else
  {
    sub_569AC(v6 + 128, v10 - v13, &v27);
  }

  v14 = *(a1 + 44096) + 1032 * a2;
  v15 = *(v14 + 952);
  v16 = *(v14 + 944);
  for (*(v14 + 1016) = (v15 - v16) >> 3; v16 != v15; ++v16)
  {
    if (a3)
    {
      sub_40D9F8(v6 + 176, v16, &v27);
      v18 = *(v27 + 8) + 16 * v28;
      if (v29 == 1)
      {
        *v18 = *v16;
        *(v18 + 8) = -1;
      }

      *(v18 + 8) = *(v6 + 1024);
    }

    v20 = *(v6 + 8);
    v19 = *(v6 + 16);
    if (v20 < v19)
    {
      *v20 = *v16;
      v17 = (v20 + 1);
    }

    else
    {
      v21 = *v6;
      v22 = v20 - *v6;
      v23 = v22 >> 3;
      v24 = (v22 >> 3) + 1;
      if (v24 >> 61)
      {
        sub_1794();
      }

      v25 = v19 - v21;
      if (v25 >> 2 > v24)
      {
        v24 = v25 >> 2;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        if (!(v26 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      *(8 * v23) = *v16;
      v17 = 8 * v23 + 8;
      memcpy(0, v21, v22);
      *v6 = 0;
      *(v6 + 8) = v17;
      *(v6 + 16) = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    *(v6 + 8) = v17;
    ++*(v6 + 1024);
  }
}

void sub_106D124(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 16) - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    v6 = v4 >> 3;
    if (v1 != v2)
    {
      if (!(v6 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    if (v4 < v3)
    {
      v7 = 8 * v6;
      v8 = *(a1 + 8) - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      *a1 = v9;
      *(a1 + 8) = v7;
      *(a1 + 16) = v7;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

uint64_t sub_106D21C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, __int16 a7, uint64_t a8, uint64_t a9)
{
  v15 = a1 + 49392;
  v16 = a1 + 43888;
  v17 = a1 + 39640;
  v19 = *a2;
  v18 = a2[1];
  v20 = a1 + 19456;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = 0;
  *a1 = v19;
  *(a1 + 8) = v18;
  do
  {
    v22 = a1 + v21;
    *(v22 + 16) = 0;
    *(v22 + 40) = 0;
    *(v22 + 24) = 0;
    *(v22 + 48) = 0;
    v21 += 48;
  }

  while (v21 != 3840);
  *(a1 + 3872) = 0;
  *(a1 + 3856) = 0u;
  v23 = sub_3C0314(a1, 1u, 1);
  if (!v23)
  {
    LODWORD(v27) = 0;
    *(a1 + 3872) = 0;
    goto LABEL_15;
  }

  v24 = &v23[-*v23];
  if (*v24 >= 0xBu)
  {
    v25 = *(v24 + 5);
    if (v25)
    {
      LODWORD(v25) = *&v23[v25];
    }

    *(a1 + 3872) = v25;
    v26 = &v23[-*v23];
    if (*v26 >= 0xDu)
    {
      goto LABEL_10;
    }

LABEL_14:
    LODWORD(v27) = 0;
    goto LABEL_15;
  }

  *(a1 + 3872) = 0;
  v26 = &v23[-*v23];
  if (*v26 < 0xDu)
  {
    goto LABEL_14;
  }

LABEL_10:
  v27 = *(v26 + 6);
  if (v27)
  {
    LODWORD(v27) = *&v23[v27];
  }

LABEL_15:
  *(a1 + 3876) = v27;
  v28 = sub_2BDE28(a6);
  if (v28)
  {
    LOBYTE(v28) = sub_2BDE20(a6);
  }

  *(a1 + 3880) = v28;
  *(a1 + 3882) = a7;
  v29 = a2[1];
  v69 = *a2;
  v70 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
  }

  v63 = a5;
  sub_3603F0(a1 + 3888, &v69);
  v30 = v70;
  if (v70 && !atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  v32 = *a2;
  v31 = a2[1];
  if (v31)
  {
    atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 11712) = v32;
  *(a1 + 11720) = v31;
  v33 = -3840;
  do
  {
    v34 = a1 + v33;
    *(v34 + 15568) = 0;
    *(v34 + 15592) = 0;
    *(v34 + 15576) = 0;
    *(v34 + 15600) = 0;
    v33 += 48;
  }

  while (v33);
  *(a1 + 15568) = 0u;
  v36 = *a2;
  v35 = a2[1];
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }

  v37 = 0;
  *(a1 + 15584) = v36;
  *(a1 + 15592) = v35;
  do
  {
    v38 = a1 + v37;
    *(v38 + 15600) = 0;
    *(v38 + 15624) = 0;
    *(v38 + 15608) = 0;
    *(v38 + 15632) = 0;
    v37 += 48;
  }

  while (v37 != 3840);
  *(a1 + 19440) = 0u;
  v39 = *a2;
  *v20 = -1;
  if (!v39)
  {
    *(v20 + 4) = 0;
    v42 = a2[1];
    *&v68 = 0;
    *(&v68 + 1) = v42;
    if (!v42)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v40 = sub_2D5658(v39);
  v41 = *a2;
  *(v20 + 4) = v40;
  v42 = a2[1];
  *&v68 = v41;
  *(&v68 + 1) = v42;
  if (v42)
  {
LABEL_32:
    atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_33:
  v43 = sub_2B3170((a1 + 19464), &v68);
  v44 = *(&v68 + 1);
  if (*(&v68 + 1) && !atomic_fetch_add((*(&v68 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44, v43);
    std::__shared_weak_count::__release_weak(v44);
  }

  v45 = a2[1];
  *&v67 = *a2;
  *(&v67 + 1) = v45;
  if (v45)
  {
    atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
  }

  sub_36077C(a1 + 23336, &v67, a7, 0);
  v46 = *(&v67 + 1);
  if (*(&v67 + 1) && !atomic_fetch_add((*(&v67 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  v47 = a2[1];
  *&v66 = *a2;
  *(&v66 + 1) = v47;
  if (v47)
  {
    atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
  }

  v48 = sub_2B3170((a1 + 27224), &v66);
  v49 = *(&v66 + 1);
  if (*(&v66 + 1) && !atomic_fetch_add((*(&v66 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v49->__on_zero_shared)(v49, v48);
    std::__shared_weak_count::__release_weak(v49);
  }

  v51 = *a2;
  v50 = a2[1];
  if (v50)
  {
    atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 31096) = v51;
  *(a1 + 31104) = v50;
  v52 = (a1 + 31144);
  v53 = 160;
  do
  {
    *(v52 - 8) = 0;
    *(v52 - 2) = 0;
    *(v52 - 3) = 0;
    *v52 = 0;
    v52 += 6;
    v53 -= 2;
  }

  while (v53);
  *(a1 + 34967) = 0;
  *(a1 + 34952) = 0u;
  sub_36059C((a1 + 34976), a2, 255);
  *v17 = a6;
  *(v17 + 8) = *a8;
  sub_1073240(a1 + 39656, a8 + 8);
  *(a1 + 43856) = *(a8 + 4208);
  *(a1 + 43872) = 0;
  *(a1 + 43880) = 0u;
  *(a1 + 43872) = *(a8 + 4224);
  *v16 = *(a8 + 4240);
  *(a8 + 4240) = 0;
  *(a8 + 4224) = 0u;
  *(v16 + 24) = 0;
  *(v16 + 8) = 0u;
  *(v16 + 8) = *(a8 + 4248);
  *(v16 + 24) = *(a8 + 4264);
  *(a8 + 4248) = 0u;
  *(a8 + 4264) = 0;
  *(a1 + 43936) = 0;
  *(a1 + 43920) = 0u;
  *(a1 + 43920) = *(a8 + 4272);
  *(v16 + 48) = *(a8 + 4288);
  *(a8 + 4288) = 0;
  *(a8 + 4272) = 0u;
  v54 = *(a8 + 4296);
  *(v16 + 64) = a1 + 15584;
  v55 = v16 + 64;
  *(v55 - 8) = v54;
  *(v55 + 8) = a1;
  *(v55 + 16) = a6;
  *(v55 + 24) = 1;
  *(v55 + 32) = a4;
  *(v55 + 40) = a3;
  *(v55 + 48) = a9;
  sub_10B73AC(a1 + 44008, a1 + 23336, a1 + 31096, *v17, a1 + 34976, a1 + 3888, a4, *(a1 + 3880) == 0);
  *(v15 + 32) = v63;
  v56 = sub_2D5658(*a2);
  *(v15 + 48) = 0;
  *(v15 + 40) = v56;
  *(v15 + 41) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  v57 = sub_101E508(v55);
  v59 = *(v15 + 48);
  v58 = *(v15 + 56);
  v60 = 0x80FE03F80FE03F81 * ((v58 - v59) >> 3);
  if (v57 <= v60)
  {
    if (v57 < v60)
    {
        ;
      }

      *(v15 + 56) = i;
    }
  }

  else
  {
    sub_1073E6C((v15 + 48), v57 - v60);
  }

  return a1;
}