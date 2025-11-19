void sub_106D828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1F1A8(a14);
  sub_1F1A8(v14 + 11712);
  sub_360B9C((v14 + 3888));
  sub_1F1A8(v14);
  _Unwind_Resume(a1);
}

void sub_106D968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 20;
  strcpy(__p, "DrivingCostFunctions");
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

void sub_106DD88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_5C010(&__p);
  sub_5BF68((v35 - 88));
  _Unwind_Resume(a1);
}

void sub_106DE74()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  sub_3AF114(v1);
  sub_3B2A90(v2);
  sub_3AF144(v2);
  v4 = sub_3AF144(v2);
  sub_106D968(v5, v3 + 3888, v3 + 11712, v4, v2);
}

void sub_106DF9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_404134(va);
  _Unwind_Resume(a1);
}

void sub_106DFB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, signed int a4@<W3>, int a5@<W4>, void *a6@<X8>)
{
  v11 = a1 + 49424;
  v12 = (a1 + 43952);
  if (*(a3 + 176))
  {
    v13 = 1;
  }

  else
  {
    v13 = 1;
    if ((*(a3 + 177) & 1) == 0 && !*(a3 + 1144) && *(a3 + 1148) == 0)
    {
      v13 = *(a3 + 1152) != 0;
    }
  }

  v15 = a5 == 2 && v13;
  sub_F8DE84(a1 + 39648, v15);
  v44 = a6;
  if (a2)
  {
    v16 = sub_101E790(*v12, a2, 1);
    if (!v16 || (v17 = &v16[-*v16], *v17 < 9u) || (v18 = *(v17 + 4)) == 0)
    {
      v22 = -1;
      goto LABEL_22;
    }

    v19 = sub_101E640(&v16[v18 + *&v16[v18]], HIDWORD(a2));
    v20 = (v19 - *v19);
    if (*v20 >= 5u)
    {
      v21 = v20[2];
      if (v21)
      {
        v22 = *(v19 + v21);
        goto LABEL_22;
      }
    }
  }

  v22 = 0;
LABEL_22:
  sub_106B110(*(v11 + 16) + 1032 * v22);
  v40 = *(a1 + 3880);
  v41 = *(a1 + 3882);
  v42 = *v11;
  v43 = v12[5];
  v23 = sub_10B7414(a1 + 44008, a3, a4, a5);
  v24 = v12;
  if (sub_10B0C98(a1 + 44008, a3, a4, a5))
  {
    v25 = a4;
  }

  else
  {
    v25 = 0x7FFFFFFF;
  }

  v26 = sub_10B7604(a1 + 44008, a3, a4, a5);
  v27 = *a3;
  if (v26)
  {
    v28 = a4;
  }

  else
  {
    v28 = 0x7FFFFFFF;
  }

  v50 = a2;
  v51 = __PAIR64__(v23, v27);
  v52 = v25;
  v53 = v28;
  v54 = a5;
  v55 = v41;
  v56 = v40;
  v57 = 0;
  v58 = 0x7FFFFFFF;
  sub_10669FC(&v50, v43, a1, v42, v46);
  v29 = (v46[1] + (v46[0] << 6) + (v46[0] >> 2) + 2654435769u) ^ v46[0];
  v30 = (v46[2] + (v29 << 6) + (v29 >> 2) + 2654435769u) ^ v29;
  v31 = (v46[3] + (v30 << 6) + (v30 >> 2) + 2654435769u) ^ v30;
  v32 = (v46[4] + (v31 << 6) + (v31 >> 2) + 2654435769u) ^ v31;
  v33 = (v46[5] + (v32 << 6) + (v32 >> 2) + 2654435769u) ^ v32;
  v34 = (v47 + (v33 << 6) + (v33 >> 2) + 2654435769u) ^ v33;
  v35 = (v48 + (v34 << 6) + (v34 >> 2) + 2654435769u) ^ v34;
  v36 = (v49 + (v35 << 6) + (v35 >> 2) + 2654435769u) ^ v35;
  v37 = (*(v24[6] + 16) + 272 * (bswap64(v36) % *v24[6]));
  v59[0] = v46;
  v59[1] = v36;
  sub_106557C(v37, v59, &v50);
  if (v52 != 1)
  {
    operator new();
  }

  v38 = v51;
  *v44 = v50;
  v44[1] = v38;
  if (v38)
  {
    atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
  }

  v39 = v51;
  if (v51)
  {
    if (!atomic_fetch_add((v51 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
    }
  }
}

void sub_106E4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1F1A8(a11);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_106E4E0(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int *a4, unsigned int a5, int a6)
{
  v7 = a1;
  v8 = a3;
  sub_106FD6C(a1, a2, a3, a4, a6);
  sub_1070264(v7, v8, 0);
  v121 = v8;
  v9 = *&v7[6180] + 1032 * v8;
  v10 = *(v9 + 24);
  v11 = *v9;
  if (v10 != (*(v9 + 8) - *v9) >> 3)
  {
    v117 = a3 - 1;
    v118 = v7;
    __asm { FMOV            V0.2D, #1.0 }

    v119 = _Q0;
    while (1)
    {
      *(v9 + 24) = v10 + 1;
      LODWORD(v124) = -1431655765 * ((*(v9 + 88) - *(v9 + 80)) >> 2);
      sub_DD38(v9 + 128, &v124);
      if (v7[1457].i8[6] != 1)
      {
        break;
      }

      v16 = *(v11 + 8 * v10);
      v17 = sub_2AF704(&v7[973], HIDWORD(v16), 1);
      if (v17)
      {
        v18 = &v17[-*v17];
        if (*v18 >= 5u)
        {
          v19 = *(v18 + 2);
          if (v19)
          {
            if (*&v17[v19 + *&v17[v19]] > WORD1(v16) && sub_2B817C(&v7[486], HIDWORD(v16) & 0xFFFF0000FFFFFFFFLL | (WORD1(v16) << 32)))
            {
              break;
            }
          }
        }
      }

LABEL_4:
      v10 = *(v9 + 24);
      v11 = *v9;
      if (v10 == (*(v9 + 8) - *v9) >> 3)
      {
        goto LABEL_2;
      }
    }

    v20 = *(v11 + 8 * v10);
    if (v121 == 1)
    {
      sub_F90350(&v7[4956], v20, 0, v9 + 32, 0);
      v22 = *(v9 + 32);
      v21 = *(v9 + 40);
      while (1)
      {
        if (v22 == v21)
        {
          goto LABEL_4;
        }

        LODWORD(v129) = a5;
        v124 = 0u;
        v125 = 0u;
        v126 = v119;
        v127 = 1.0;
        v128 = 1;
        sub_10B54B8(v7 + 5501, &v124, v22, 0x3B9ACA00u, a4, &v129, a6);
        if ((v128 & 1) == 0)
        {
          goto LABEL_15;
        }

        LODWORD(v24) = v124;
        v25 = *&v126 * v24;
        if (v25 >= 0.0)
        {
          if (v25 >= 4.50359963e15)
          {
            goto LABEL_24;
          }

          v26 = (v25 + v25) + 1;
        }

        else
        {
          if (v25 <= -4.50359963e15)
          {
            goto LABEL_24;
          }

          v26 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
        }

        v25 = (v26 >> 1);
LABEL_24:
        v27 = *(&v126 + 1) * SDWORD1(v124);
        if (v27 >= 0.0)
        {
          if (v27 >= 4.50359963e15)
          {
            goto LABEL_30;
          }

          v28 = (v27 + v27) + 1;
        }

        else
        {
          if (v27 <= -4.50359963e15)
          {
            goto LABEL_30;
          }

          v28 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
        }

        v27 = (v28 >> 1);
LABEL_30:
        v29 = v127 * *(&v124 + 1);
        if (v29 >= 0.0)
        {
          if (v29 >= 4.50359963e15)
          {
            goto LABEL_36;
          }

          v30 = (v29 + v29) + 1;
        }

        else
        {
          if (v29 <= -4.50359963e15)
          {
            goto LABEL_36;
          }

          v30 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
        }

        v29 = (v30 >> 1);
LABEL_36:
        v31 = v125 + v25;
        v32 = (DWORD1(v125) + v27);
        if (v31 != -1 && v32 != 0x7FFFFFFF && *(&v125 + 1) + v29 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v35 = 0;
          v36 = v31 | (v32 << 32);
          v37 = ((*(v22 + 72) >> 16) & 0xFFFF0000 | (*(v22 + 72) << 32) | (2 * ((*(v22 + 72) & 0xFF000000000000) == 0))) + 4 * *(v22 + 82);
          v38 = v37 & 0xFFFFFFFFFFFFFFFELL | (*(v22 + 88) >> 1) & 1;
          v129 = v38;
          v39 = v7[6180];
          v40 = ((0x2127599BF4325C37 * (v38 ^ (v37 >> 23))) ^ ~((0x2127599BF4325C37 * (v38 ^ (v37 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v38 ^ (v37 >> 23))) ^ ((0x2127599BF4325C37 * (v38 ^ (v37 >> 23))) >> 47)) << 21);
          v41 = 21 * ((265 * (v40 ^ (v40 >> 24))) ^ ((265 * (v40 ^ (v40 >> 24))) >> 14));
          v42 = 2147483649u * (v41 ^ (v41 >> 28));
          v43 = (*&v39 + 1208 + 48 * (((((v41 ^ (v41 >> 28)) >> 8) ^ ((-2147483647 * (v41 ^ (v41 >> 28))) >> 16)) ^ ((-2147483647 * (v41 ^ (v41 >> 28))) >> 24)) & 0xF));
          v44 = v42 >> 7;
          v45 = v43[3];
          v46 = 0x101010101010101 * (v42 & 0x7F);
          while (1)
          {
            v47 = v44 & v45;
            v48 = *(*v43 + v47);
            v49 = ((v48 ^ v46) - 0x101010101010101) & ~(v48 ^ v46) & 0x8080808080808080;
            if (v49)
            {
              break;
            }

LABEL_48:
            if ((v48 & (~v48 << 6) & 0x8080808080808080) != 0)
            {
              goto LABEL_51;
            }

            v35 += 8;
            v44 = v35 + v47;
          }

          v50 = v43[1];
          while (1)
          {
            v51 = (v47 + (__clz(__rbit64(v49)) >> 3)) & v45;
            if (*(v50 + 16 * v51) == v38)
            {
              break;
            }

            v49 &= v49 - 1;
            if (!v49)
            {
              goto LABEL_48;
            }
          }

          if (v45 == v51)
          {
LABEL_51:
            v52 = *(*&v39 + 2056);
            sub_40D9F8(*&v39 + 1208, &v129, &v124);
            v53 = *(v124 + 8) + 16 * *(&v124 + 1);
            if (v125 == 1)
            {
              *v53 = v129;
              *(v53 + 8) = -1;
            }

            *(v53 + 8) = *(*&v39 + 2056);
            v54 = *(*&v39 + 1040);
            v55 = *(*&v39 + 1048);
            if (v54 >= v55)
            {
              v57 = v36;
              v58 = *(*&v39 + 1032);
              v59 = v54 - v58;
              v60 = (v54 - v58) >> 3;
              v61 = v60 + 1;
              if ((v60 + 1) >> 61)
              {
                goto LABEL_131;
              }

              v62 = v55 - v58;
              if (v62 >> 2 > v61)
              {
                v61 = v62 >> 2;
              }

              if (v62 >= 0x7FFFFFFFFFFFFFF8)
              {
                v63 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v63 = v61;
              }

              if (v63)
              {
                if (!(v63 >> 61))
                {
                  operator new();
                }

                goto LABEL_129;
              }

              v66 = (v54 - v58) >> 3;
              v67 = (8 * v60);
              v68 = (8 * v60 - 8 * v66);
              *v67 = v129;
              v56 = v67 + 1;
              memcpy(v68, v58, v59);
              *(*&v39 + 1032) = v68;
              *(*&v39 + 1040) = v56;
              *(*&v39 + 1048) = 0;
              if (v58)
              {
                operator delete(v58);
              }

              v36 = v57;
              v7 = v118;
            }

            else
            {
              *v54 = v129;
              v56 = v54 + 8;
            }

            *(*&v39 + 1040) = v56;
            ++*(*&v39 + 2056);
            v64 = *(v9 + 88);
            v65 = *(v9 + 96);
            if (v64 >= v65)
            {
LABEL_70:
              v69 = v36;
              v70 = *(v9 + 80);
              v71 = 0xAAAAAAAAAAAAAAABLL * ((v64 - v70) >> 2) + 1;
              if (v71 > 0x1555555555555555)
              {
                goto LABEL_130;
              }

              v72 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v70) >> 2);
              if (2 * v72 > v71)
              {
                v71 = 2 * v72;
              }

              if (v72 >= 0xAAAAAAAAAAAAAAALL)
              {
                v73 = 0x1555555555555555;
              }

              else
              {
                v73 = v71;
              }

              if (v73)
              {
                if (v73 <= 0x1555555555555555)
                {
                  operator new();
                }

                goto LABEL_129;
              }

              v74 = 4 * ((v64 - v70) >> 2);
              *v74 = v52;
              *(v74 + 4) = v69;
              v23 = v74 + 12;
              v75 = (v74 - (v64 - v70));
              memcpy(v75, v70, v64 - v70);
              *(v9 + 80) = v75;
              *(v9 + 88) = v23;
              *(v9 + 96) = 0;
              if (v70)
              {
                operator delete(v70);
              }

              v7 = v118;
              goto LABEL_14;
            }
          }

          else
          {
            v52 = *(v50 + 16 * v51 + 8);
            v64 = *(v9 + 88);
            v65 = *(v9 + 96);
            if (v64 >= v65)
            {
              goto LABEL_70;
            }
          }

          *v64 = v52;
          *(v64 + 4) = v36;
          v23 = v64 + 12;
LABEL_14:
          *(v9 + 88) = v23;
        }

LABEL_15:
        v22 += 96;
      }
    }

    sub_106F408(v7, v20, v117, a4, a5, a6, (v9 + 56));
    v76 = *(v9 + 56);
    v77 = *(v9 + 64);
    while (1)
    {
      if (v76 == v77)
      {
        goto LABEL_4;
      }

      v79 = *(v76 + 28);
      if (v79 != -1 && (v79 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000)
      {
        break;
      }

LABEL_85:
      v76 += 40;
    }

    v81 = 0;
    v82 = *(v76 + 8);
    v83 = v7[6180];
    v129 = v82;
    v84 = *&v83 + 1032 * v121 + 176;
    v85 = ((0x2127599BF4325C37 * (v82 ^ (v82 >> 23))) ^ ~((0x2127599BF4325C37 * (v82 ^ (v82 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v82 ^ (v82 >> 23))) ^ ((0x2127599BF4325C37 * (v82 ^ (v82 >> 23))) >> 47)) << 21);
    v86 = 21 * ((265 * (v85 ^ (v85 >> 24))) ^ ((265 * (v85 ^ (v85 >> 24))) >> 14));
    v87 = 2147483649u * (v86 ^ (v86 >> 28));
    v88 = (v84 + 48 * (((((v86 ^ (v86 >> 28)) >> 8) ^ ((-2147483647 * (v86 ^ (v86 >> 28))) >> 16)) ^ ((-2147483647 * (v86 ^ (v86 >> 28))) >> 24)) & 0xF));
    v89 = v87 >> 7;
    v90 = v88[3];
    v91 = 0x101010101010101 * (v87 & 0x7F);
    while (1)
    {
      v92 = v89 & v90;
      v93 = *(*v88 + v92);
      v94 = ((v93 ^ v91) - 0x101010101010101) & ~(v93 ^ v91) & 0x8080808080808080;
      if (v94)
      {
        break;
      }

LABEL_96:
      if ((v93 & (~v93 << 6) & 0x8080808080808080) != 0)
      {
        goto LABEL_99;
      }

      v81 += 8;
      v89 = v81 + v92;
    }

    v95 = v88[1];
    while (1)
    {
      v96 = (v92 + (__clz(__rbit64(v94)) >> 3)) & v90;
      if (*(v95 + 16 * v96) == v82)
      {
        break;
      }

      v94 &= v94 - 1;
      if (!v94)
      {
        goto LABEL_96;
      }
    }

    if (v90 == v96)
    {
LABEL_99:
      v97 = *&v83 + 1032 * v121;
      v98 = *(v97 + 1024);
      sub_40D9F8(v84, &v129, &v124);
      v99 = *(v124 + 8) + 16 * *(&v124 + 1);
      if (v125 == 1)
      {
        *v99 = v129;
        *(v99 + 8) = -1;
      }

      *(v99 + 8) = *(v97 + 1024);
      v101 = *(v97 + 8);
      v100 = *(v97 + 16);
      if (v101 >= v100)
      {
        v103 = *v97;
        v104 = v101 - *v97;
        v105 = (v104 >> 3) + 1;
        if (v105 >> 61)
        {
LABEL_131:
          sub_1794();
        }

        v106 = v100 - v103;
        if (v106 >> 2 > v105)
        {
          v105 = v106 >> 2;
        }

        if (v106 >= 0x7FFFFFFFFFFFFFF8)
        {
          v107 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v107 = v105;
        }

        if (v107)
        {
          if (!(v107 >> 61))
          {
            operator new();
          }

LABEL_129:
          sub_1808();
        }

        v110 = (8 * (v104 >> 3));
        *v110 = v129;
        v102 = v110 + 1;
        memcpy(0, v103, v104);
        *v97 = 0;
        *(v97 + 8) = v102;
        *(v97 + 16) = 0;
        if (v103)
        {
          operator delete(v103);
        }
      }

      else
      {
        *v101 = v129;
        v102 = v101 + 1;
      }

      *(v97 + 8) = v102;
      ++*(v97 + 1024);
      v79 = *(v76 + 28);
      v108 = *(v9 + 88);
      v109 = *(v9 + 96);
      if (v108 >= v109)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v98 = *(v95 + 16 * v96 + 8);
      v108 = *(v9 + 88);
      v109 = *(v9 + 96);
      if (v108 >= v109)
      {
LABEL_117:
        v111 = *(v9 + 80);
        v112 = 0xAAAAAAAAAAAAAAABLL * ((v108 - v111) >> 2) + 1;
        if (v112 > 0x1555555555555555)
        {
LABEL_130:
          sub_1794();
        }

        v113 = 0xAAAAAAAAAAAAAAABLL * ((v109 - v111) >> 2);
        if (2 * v113 > v112)
        {
          v112 = 2 * v113;
        }

        if (v113 >= 0xAAAAAAAAAAAAAAALL)
        {
          v114 = 0x1555555555555555;
        }

        else
        {
          v114 = v112;
        }

        if (v114)
        {
          if (v114 <= 0x1555555555555555)
          {
            operator new();
          }

          goto LABEL_129;
        }

        v115 = 4 * ((v108 - v111) >> 2);
        *v115 = v98;
        *(v115 + 4) = v79;
        v78 = v115 + 12;
        v116 = (v115 - (v108 - v111));
        memcpy(v116, v111, v108 - v111);
        *(v9 + 80) = v116;
        *(v9 + 88) = v78;
        *(v9 + 96) = 0;
        if (v111)
        {
          operator delete(v111);
        }

        goto LABEL_84;
      }
    }

    *v108 = v98;
    *(v108 + 4) = v79;
    v78 = v108 + 12;
LABEL_84:
    *(v9 + 88) = v78;
    goto LABEL_85;
  }

LABEL_2:
  LODWORD(v124) = -1431655765 * ((*(v9 + 88) - *(v9 + 80)) >> 2);
  sub_DD38(v9 + 128, &v124);
}

void sub_106EFA0(uint64_t a1, unsigned int a2, void **a3)
{
  v6 = *(a1 + 49440) + 1032 * a2;
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
  if ((*(*(a1 + 49440) + 1032 * a2 + 1016) * v55) > ((a3[2] - *a3) >> 3))
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

uint64_t sub_106F3F0(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *(result + 49433) = v2;
  return result;
}

void sub_106F408(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int *a4, unsigned int a5, int a6, void *a7)
{
  v14 = (a1 + 43952);
  v141 = a2;
  a7[1] = *a7;
  LODWORD(v142) = a3;
  v15 = sub_101F854(*(a1 + 43952), HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32), (a2 & 2) == 0, &v142);
  v140 = v15;
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

  v131 = v15;
  v142 = 0;
  v143 = 0;
  v19 = sub_1059F84(v14[1], v15, 1);
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

  v130 = 4 * v17;
  v133 = 0;
  v134 = 0;
  v26 = sub_1059F84(v14[1], v16, 1);
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

  v30 = &v29[v130 + 4 + *&v29[v130 + 4]];
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

  v125 = *(a1 + 3880);
  v126 = *(a1 + 3882);
  v122 = a1 + 49424;
  v127 = v14[5];
  v128 = *(a1 + 49424);
  v124 = sub_10B7414(a1 + 44008, a4, a5, a6);
  if (sub_10B0C98(a1 + 44008, a4, a5, a6))
  {
    v33 = a5;
  }

  else
  {
    v33 = 0x7FFFFFFF;
  }

  v123 = v33;
  v121 = a5;
  v34 = sub_10B7604(a1 + 44008, a4, a5, a6);
  v35 = *a4;
  if (v34)
  {
    v36 = a5;
  }

  else
  {
    v36 = 0x7FFFFFFF;
  }

  v142 = v131;
  v143 = __PAIR64__(v124, v35);
  v144 = v123;
  v145 = v36;
  v146 = a6;
  v147 = v126;
  v148 = v125;
  v149 = 0;
  v150 = 0x7FFFFFFF;
  sub_10669FC(&v142, v127, a1, v128, &v133);
  if (sub_FC1BE4(v14[5], v134) && !v137)
  {
    v37 = v133;
    v129 = v134;
    v38 = v138;
    v39 = sub_3C0314(a1, v133, 1);
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
                v46 = v129 + *(a1 + 3872) * v38;
                if (v46 < *v45 && *&v45[4 * v46 + 4] != -1)
                {
                  sub_1066E8C(a1, v131, a2, v134, v138, a7);
                  return;
                }
              }
            }
          }
        }
      }
    }
  }

  v47 = (HIDWORD(v133) + (v133 << 6) + (v133 >> 2) + 2654435769u) ^ v133;
  v48 = (v134 + (v47 << 6) + (v47 >> 2) + 2654435769u) ^ v47;
  v49 = (SHIDWORD(v134) + (v48 << 6) + (v48 >> 2) + 2654435769u) ^ v48;
  v50 = (v135 + (v49 << 6) + (v49 >> 2) + 2654435769u) ^ v49;
  v51 = (v136 + (v50 << 6) + (v50 >> 2) + 2654435769u) ^ v50;
  v52 = (v137 + (v51 << 6) + (v51 >> 2) + 2654435769u) ^ v51;
  v53 = (v138 + (v52 << 6) + (v52 >> 2) + 2654435769u) ^ v52;
  v54 = (v139 + (v53 << 6) + (v53 >> 2) + 2654435769u) ^ v53;
  v55 = (*(v14[6] + 16) + 272 * (bswap64(v54) % *v14[6]));
  v151 = &v133;
  v152 = v54;
  sub_106557C(v55, &v151, &v142);
  if (v144 == 1)
  {
    v56 = v142;
    v151 = v142;
    v152 = v143;
    if (v143)
    {
      atomic_fetch_add_explicit((v143 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_106DFB0(&v151, a1, v131, a4, v121, v137);
    v56 = v151;
  }

  if (v56 && (v57 = v56[3]) != 0)
  {
    v58 = (*(v57 + 32) - *(v57 + 24)) >> 3;
  }

  else
  {
    v59 = sub_1059F84(v14[1], v16, 1);
    if (v59 && (v60 = &v59[-*v59], *v60 >= 5u) && (v61 = *(v60 + 2)) != 0 && (v62 = &v59[v61 + *&v59[v61]], *v62 > v17) && (v63 = &v62[v130 + 4 + *&v62[v130 + 4]], v64 = &v63[-*v63], *v64 >= 0xBu) && (v65 = *(v64 + 5)) != 0)
    {
      LODWORD(v58) = *&v63[v65 + *&v63[v65]];
    }

    else
    {
      LODWORD(v58) = 0;
    }
  }

  if (v151 && (v66 = v151[3]) != 0)
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
    v71 = sub_1059F84(v14[1], v16, 1);
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
            v75 = &v74[v130 + 4 + *&v74[v130 + 4]];
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
  v132 = v89;
  v101 = *(v122 + 16) + 1032 * a3 + 992;
  if (v151 && (v102 = v151[3]) != 0)
  {
    if (v102 + 24 != v101)
    {
      sub_31F64(v101, *(v102 + 24), *(v102 + 32), (*(v102 + 32) - *(v102 + 24)) >> 3);
    }
  }

  else
  {
    v103 = v14[1];
    *(v101 + 8) = *v101;
    v104 = sub_1059F84(v103, v16, 1);
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
            v108 = &v107[v130 + 4 + *&v107[v130 + 4]];
            v109 = &v108[-*v108];
            if (*v109 >= 0xBu)
            {
              v110 = *(v109 + 5);
              if (v110)
              {
                v111 = &v108[v110 + *&v108[v110]];
                v112 = *v111;
                v154[0] = v101;
                if (v112)
                {
                  v113 = 8 * v112;
                  v114 = (v111 + 4);
                  do
                  {
                    v153 = *v114;
                    sub_A2324(v154, &v153);
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

  LOWORD(v154[0]) = 0;
  v116 = *v101;
  v115 = *(v101 + 8);
  if (v116 != v115)
  {
    v117 = v58 * v89;
    do
    {
      v118 = sub_106CA9C(v151, v117);
      sub_105F6B4(a7, &v141, v116, &v140, &v132, v154, v118);
      ++v117;
      ++LOWORD(v154[0]);
      v116 += 8;
    }

    while (v116 != v115);
  }

  v119 = v152;
  if (v152 && !atomic_fetch_add(&v152->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v119->__on_zero_shared)(v119);
    std::__shared_weak_count::__release_weak(v119);
  }

  v120 = v143;
  if (v143)
  {
    if (!atomic_fetch_add((v143 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v120->__on_zero_shared)(v120);
      std::__shared_weak_count::__release_weak(v120);
    }
  }
}

void sub_106FCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_1F1A8(v27 - 120);
  sub_1F1A8(&a27);
  _Unwind_Resume(a1);
}

void sub_106FD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_1F1A8(&a20);
  sub_1F1A8(&a27);
  _Unwind_Resume(a1);
}

void sub_106FD6C(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v9 = a1 + 43960;
  v10 = (*(a1 + 49440) + 1032 * a3);
  v50 = 0;
  v51 = 0;
  v11 = *(a1 + 43960);
  v10[119] = v10[118];
  v12 = a2;
  v13 = sub_1059F84(v11, a2, 1);
  v14 = HIDWORD(a2);
  if (v13)
  {
    v15 = &v13[-*v13];
    if (*v15 >= 5u)
    {
      v16 = *(v15 + 2);
      if (v16)
      {
        v17 = &v13[v16 + *&v13[v16]];
        if (*v17 > v14)
        {
          v18 = &v17[4 * v14 + 4 + *&v17[4 * v14 + 4]];
          v19 = &v18[-*v18];
          if (*v19 >= 9u)
          {
            v20 = *(v19 + 4);
            if (v20)
            {
              v21 = &v18[v20 + *&v18[v20]];
              v22 = *v21;
              v54 = v10 + 118;
              if (v22)
              {
                v23 = 8 * v22;
                v24 = (v21 + 4);
                do
                {
                  v53 = *v24;
                  sub_A2324(&v54, &v53);
                  ++v24;
                  v23 -= 8;
                }

                while (v23);
              }
            }
          }
        }
      }
    }
  }

  v25 = v10[121];
  v26 = *v9;
  v50 = 0;
  v51 = 0;
  v10[122] = v25;
  v27 = sub_1059F84(v26, v12, 1);
  if (v27)
  {
    v28 = &v27[-*v27];
    if (*v28 >= 5u)
    {
      v29 = *(v28 + 2);
      if (v29)
      {
        v30 = &v27[v29 + *&v27[v29]];
        if (*v30 > v14)
        {
          v31 = &v30[4 * v14 + 4 + *&v30[4 * v14 + 4]];
          v32 = &v31[-*v31];
          if (*v32 >= 0xBu)
          {
            v33 = *(v32 + 5);
            if (v33)
            {
              v34 = &v31[v33 + *&v31[v33]];
              v35 = *v34;
              v54 = v10 + 121;
              if (v35)
              {
                v36 = 8 * v35;
                v37 = (v34 + 4);
                do
                {
                  v53 = *v37;
                  sub_A2324(&v54, &v53);
                  ++v37;
                  v36 -= 8;
                }

                while (v36);
              }
            }
          }
        }
      }
    }
  }

  if (*(a4 + 176))
  {
    v38 = 1;
  }

  else
  {
    v38 = 1;
    if ((*(a4 + 177) & 1) == 0 && !*(a4 + 1144) && !*(a4 + 1148))
    {
      v38 = *(a4 + 1152) != 0;
    }
  }

  if (a5 == 2 && v38)
  {
    v39 = 0;
    v40 = v10[119] - v10[118];
    if (v40)
    {
      v41 = 0;
      v42 = v40 >> 3;
      do
      {
        v43 = *(v10[118] + 8 * v41);
        sub_F8EC88(a1 + 39648, (HIDWORD(v43) & 0xFFFE0000FFFFFFFFLL | (WORD1(v43) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v43 >> 1) & 1) << 48)) ^ 0x1000000000000, &v50);
        if (*(v9 + 16) == 1)
        {
          sub_2BC10C(*(v9 + 8), v52 & 0xFFFFFFFFFFFFFFLL, 0);
          if ((v44 & 1) != 0 && !sub_30F8F8(v9 + 8, &v50))
          {
            v54 = (v43 ^ 1);
            sub_2512DC((v10 + 118), &v54);
            v39 = 1;
          }
        }

        ++v41;
      }

      while (v42 != v41);
    }

    v45 = v10[122] - v10[121];
    if (v45)
    {
      v46 = 0;
      v47 = v45 >> 3;
      do
      {
        v48 = *(v10[121] + 8 * v46);
        sub_F8EC88(a1 + 39648, (HIDWORD(v48) & 0xFFFE0000FFFFFFFFLL | (WORD1(v48) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v48 >> 1) & 1) << 48)) ^ 0x1000000000000, &v50);
        if (*(v9 + 16) == 1)
        {
          sub_2BC10C(*(v9 + 8), v52 & 0xFFFFFFFFFFFFFFLL, 0);
          if ((v49 & 1) != 0 && !sub_30F8F8(v9 + 8, &v50))
          {
            v54 = (v48 ^ 1);
            sub_2512DC((v10 + 121), &v54);
            v39 = 1;
          }
        }

        ++v46;
      }

      while (v47 != v46);
    }

    if (v39)
    {
      operator new();
    }
  }
}

void sub_1070214(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_1070228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_107023C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_1070250(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_1070264(uint64_t a1, unsigned int a2, int a3)
{
  v6 = *(a1 + 49440) + 1032 * a2;
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

  v14 = *(a1 + 49440) + 1032 * a2;
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

uint64_t sub_10704CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, __int128 *a8, uint64_t a9)
{
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
  v23 = sub_3C0614(a1, 1u, 1);
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
  v71 = *a2;
  v72 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  v67 = a3;
  sub_3603F0(a1 + 3888, &v71);
  v29 = v72;
  if (v72 && !atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
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
    *&v70 = 0;
    *(&v70 + 1) = v41;
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
  *&v70 = v40;
  *(&v70 + 1) = v41;
  if (v41)
  {
LABEL_30:
    atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_31:
  v42 = a5;
  v43 = sub_2B3170((a1 + 19464), &v70);
  v44 = *(&v70 + 1);
  if (*(&v70 + 1) && !atomic_fetch_add((*(&v70 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44, v43);
    std::__shared_weak_count::__release_weak(v44);
  }

  v45 = a2[1];
  *&v69 = *a2;
  *(&v69 + 1) = v45;
  if (v45)
  {
    atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
  }

  sub_36077C(a1 + 23336, &v69, a7, 0);
  v46 = *(&v69 + 1);
  if (*(&v69 + 1) && !atomic_fetch_add((*(&v69 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  v47 = a2[1];
  *&v68 = *a2;
  *(&v68 + 1) = v47;
  if (v47)
  {
    atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
  }

  v48 = sub_2B3170((a1 + 27224), &v68);
  v49 = *(&v68 + 1);
  if (*(&v68 + 1) && !atomic_fetch_add((*(&v68 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
  v54 = *a8;
  *(a1 + 39664) = *(a8 + 16);
  *(a1 + 39648) = v54;
  sub_107420C((a1 + 39672), a8 + 3);
  v55 = *(a8 + 11);
  *(v17 + 96) = v55;
  v56 = *(a8 + 9);
  *(v17 + 88) = *(a8 + 10);
  *(a8 + 9) = 0;
  *(v17 + 80) = v56;
  *(a8 + 10) = 0;
  v57 = *(a8 + 12);
  *(v17 + 104) = v57;
  *(v17 + 112) = *(a8 + 26);
  if (v57)
  {
    v58 = *(v55 + 8);
    v59 = *(v17 + 88);
    if ((v59 & (v59 - 1)) != 0)
    {
      if (v58 >= v59)
      {
        v58 %= v59;
      }
    }

    else
    {
      v58 &= v59 - 1;
    }

    *(v56 + 8 * v58) = v17 + 96;
    *(a8 + 11) = 0;
    *(a8 + 12) = 0;
  }

  *(a1 + 39760) = 0u;
  *(a1 + 39776) = 0;
  *(a1 + 39760) = a8[7];
  v60 = *(a8 + 17);
  *(v17 + 136) = *(a8 + 16);
  *(a8 + 15) = 0;
  *(a8 + 16) = 0;
  *(a8 + 14) = 0;
  *(v17 + 152) = a1 + 15584;
  *(v17 + 144) = v60;
  *(v17 + 160) = a1;
  *(v17 + 168) = a6;
  *(v17 + 176) = 1;
  *(v17 + 184) = a4;
  *(v17 + 192) = v67;
  *(v17 + 200) = a9;
  sub_766F20((a1 + 39848), a1 + 3888, a1 + 23336, a1 + 27224, a4);
  *(v17 + 240) = v42;
  *(v17 + 248) = sub_2D5658(*a2);
  *(v17 + 249) = 0;
  *(v17 + 264) = 0;
  *(v17 + 272) = 0;
  *(v17 + 256) = 0;
  v61 = sub_101E508((v17 + 152));
  v63 = *(v17 + 256);
  v62 = *(v17 + 264);
  v64 = 0x80FE03F80FE03F81 * ((v62 - v63) >> 3);
  if (v61 <= v64)
  {
    if (v61 < v64)
    {
        ;
      }

      *(v17 + 264) = i;
    }
  }

  else
  {
    sub_1074344((v17 + 256), v61 - v64);
  }

  return a1;
}

void sub_1070AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1F1A8(a12);
  sub_1F1A8(v12 + 11712);
  sub_360B9C((v12 + 3888));
  sub_1F1A8(v12);
  _Unwind_Resume(a1);
}

void sub_1070BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v11 = 20;
  strcpy(__p, "WalkingCostFunctions");
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v5 = sub_3AEC94(a5, __p, &v16);
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
      v7 = v16;
      if (!v16)
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
  v7 = v16;
  if (!v16)
  {
LABEL_4:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_8:
  v8 = v17;
  if (v17 == v7)
  {
    v17 = v7;
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
    v17 = v7;
    operator delete(v16);
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

void sub_1070F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5C010(&a9);
  sub_5BF68((v9 - 88));
  _Unwind_Resume(a1);
}

void sub_1070F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_5BF68((v30 - 88));
  _Unwind_Resume(a1);
}

void sub_1071000(uint64_t a1, void *a2)
{
  sub_3AF114(a2);
  sub_3B2A90(a2);
  sub_3AF144(a2);
  v4 = sub_3AF144(a2);
  sub_1070BD4(v5, a1 + 3888, a1 + 11712, v4, a2);
}

void sub_1071128(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3BFA2C(va);
  _Unwind_Resume(a1);
}

void sub_107113C(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, int a4@<W3>, char a5@<W4>, void *a6@<X8>)
{
  v10 = (a1 + 36864);
  sub_F9223C(a1 + 39648, 0);
  v37 = a6;
  if (a2)
  {
    v11 = sub_101E790(v10[366], a2, 1);
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
  sub_106B110(v10[379] + 1032 * v17);
  v34 = *(a1 + 3880);
  v35 = *(a1 + 3882);
  v36 = v10[371];
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
  sub_106826C(&v44, v36, a1, v40);
  v23 = (v40[1] + (v40[0] << 6) + (v40[0] >> 2) + 2654435769u) ^ v40[0];
  v24 = (v40[2] + (v23 << 6) + (v23 >> 2) + 2654435769u) ^ v23;
  v25 = (v40[3] + (v24 << 6) + (v24 >> 2) + 2654435769u) ^ v24;
  v26 = (v40[4] + (v25 << 6) + (v25 >> 2) + 2654435769u) ^ v25;
  v27 = (v40[5] + (v26 << 6) + (v26 >> 2) + 2654435769u) ^ v26;
  v28 = (v41 + (v27 << 6) + (v27 >> 2) + 2654435769u) ^ v27;
  v29 = (v42 + (v28 << 6) + (v28 >> 2) + 2654435769u) ^ v28;
  v30 = (v43 + (v29 << 6) + (v29 >> 2) + 2654435769u) ^ v29;
  v31 = (*(v10[372] + 16) + 272 * (bswap64(v30) % *v10[372]));
  v53[0] = v40;
  v53[1] = v30;
  sub_1068DA8(v31, v53, &v44);
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

void sub_10715D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1F1A8(v15);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_1071604(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int *a4, unsigned int a5, char a6)
{
  v10 = a3;
  sub_1072A10(a1, a2, a3);
  sub_1072BD4(a1, v10, 0);
  v70 = v10;
  v11 = *(a1 + 39896) + 1032 * v10;
  v12 = *(v11 + 24);
  v13 = *v11;
  if (v12 != (*(v11 + 8) - *v11) >> 3)
  {
    v68 = a3 - 1;
    __asm { FMOV            V0.2D, #1.0 }

    v71 = _Q0;
    v69 = a6;
    do
    {
      v18 = (v13 + 8 * v12);
      *(v11 + 24) = v12 + 1;
      LODWORD(v73) = -1431655765 * ((*(v11 + 88) - *(v11 + 80)) >> 2);
      sub_DD38(v11 + 128, &v73);
      if (*(a1 + 11662) != 1 || (v20 = *v18, v19 = v18[1], (v21 = sub_2AF704(a1 + 7784, *v18, 1)) != 0) && (v22 = &v21[-*v21], *v22 >= 5u) && (v23 = *(v22 + 2)) != 0 && *&v21[v23 + *&v21[v23]] > (v19 & 0xFFFFFFF) && sub_2B817C(a1 + 3888, v20 & 0xF0000000FFFFFFFFLL | ((v19 & 0xFFFFFFF) << 32)))
      {
        v24 = *v18;
        if (v70 == 1)
        {
          sub_F92948((a1 + 39648), v24, 0, (v11 + 32));
          v26 = *(v11 + 32);
          v25 = *(v11 + 40);
          while (2)
          {
            if (v26 == v25)
            {
              goto LABEL_4;
            }

            v73 = 0u;
            v74 = 0u;
            v75 = v71;
            v76 = 1.0;
            v77 = 1;
            sub_10BC914((a1 + 39848), &v73, v26, 0x3B9ACA00u, a4);
            if ((v77 & 1) == 0)
            {
              goto LABEL_15;
            }

            LODWORD(v28) = v73;
            v29 = *&v75 * v28;
            if (v29 >= 0.0)
            {
              if (v29 < 4.50359963e15)
              {
                v30 = (v29 + v29) + 1;
LABEL_23:
                v29 = (v30 >> 1);
              }
            }

            else if (v29 > -4.50359963e15)
            {
              v30 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
              goto LABEL_23;
            }

            v31 = *(&v75 + 1) * SDWORD1(v73);
            if (v31 >= 0.0)
            {
              if (v31 < 4.50359963e15)
              {
                v32 = (v31 + v31) + 1;
LABEL_29:
                v31 = (v32 >> 1);
              }
            }

            else if (v31 > -4.50359963e15)
            {
              v32 = (v31 + v31) - 1 + (((v31 + v31) - 1) >> 63);
              goto LABEL_29;
            }

            v33 = v76 * *(&v73 + 1);
            if (v33 >= 0.0)
            {
              if (v33 < 4.50359963e15)
              {
                v34 = (v33 + v33) + 1;
LABEL_35:
                v33 = (v34 >> 1);
              }
            }

            else if (v33 > -4.50359963e15)
            {
              v34 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
              goto LABEL_35;
            }

            v35 = v74 + v29;
            v36 = (DWORD1(v74) + v31);
            if (v35 != -1 && v36 != 0x7FFFFFFF && *(&v74 + 1) + v33 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v39 = v35 | (v36 << 32);
              v40 = *(v26 + 72);
              v41 = HIDWORD(v40) & 0x40000000;
              if (v40 < 0 && v41 == 0)
              {
                v43 = 0x40000000;
              }

              else
              {
                v43 = 0;
              }

              v44 = sub_1072DE8(a1, *(v26 + 72) | (((*(v26 + 80) >> 26) & 0x80000000 | HIDWORD(v40) & 0xFFFFFFF | (v40 >> 33) & 0x10000000 | (v41 >> 1) | v43) << 32), 1u);
              v46 = *(v11 + 88);
              v45 = *(v11 + 96);
              if (v46 < v45)
              {
                *v46 = v44;
                *(v46 + 4) = v39;
                v27 = v46 + 12;
              }

              else
              {
                v47 = *(v11 + 80);
                v48 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v47) >> 2) + 1;
                if (v48 > 0x1555555555555555)
                {
                  goto LABEL_84;
                }

                v49 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v47) >> 2);
                if (2 * v49 > v48)
                {
                  v48 = 2 * v49;
                }

                if (v49 >= 0xAAAAAAAAAAAAAAALL)
                {
                  v50 = 0x1555555555555555;
                }

                else
                {
                  v50 = v48;
                }

                if (v50)
                {
                  if (v50 <= 0x1555555555555555)
                  {
                    operator new();
                  }

                  goto LABEL_85;
                }

                v51 = 4 * ((v46 - v47) >> 2);
                *v51 = v44;
                *(v51 + 4) = v39;
                v27 = v51 + 12;
                v52 = (v51 - (v46 - v47));
                memcpy(v52, v47, v46 - v47);
                *(v11 + 80) = v52;
                *(v11 + 88) = v27;
                *(v11 + 96) = 0;
                if (v47)
                {
                  operator delete(v47);
                }

                a6 = v69;
              }

              *(v11 + 88) = v27;
            }

LABEL_15:
            v26 += 88;
            continue;
          }
        }

        sub_10720B0(a1, v24, v68, a4, a5, a6, (v11 + 56));
        v53 = *(v11 + 56);
        v54 = *(v11 + 64);
        while (v53 != v54)
        {
          v56 = *(v53 + 28);
          if (v56 != -1 && (v56 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000)
          {
            v58 = sub_1072DE8(a1, *(v53 + 8), v70);
            v59 = *(v53 + 28);
            v61 = *(v11 + 88);
            v60 = *(v11 + 96);
            if (v61 < v60)
            {
              *v61 = v58;
              *(v61 + 4) = v59;
              v55 = v61 + 12;
            }

            else
            {
              v62 = *(v11 + 80);
              v63 = 0xAAAAAAAAAAAAAAABLL * ((v61 - v62) >> 2) + 1;
              if (v63 > 0x1555555555555555)
              {
LABEL_84:
                sub_1794();
              }

              v64 = 0xAAAAAAAAAAAAAAABLL * ((v60 - v62) >> 2);
              if (2 * v64 > v63)
              {
                v63 = 2 * v64;
              }

              if (v64 >= 0xAAAAAAAAAAAAAAALL)
              {
                v65 = 0x1555555555555555;
              }

              else
              {
                v65 = v63;
              }

              if (v65)
              {
                if (v65 <= 0x1555555555555555)
                {
                  operator new();
                }

LABEL_85:
                sub_1808();
              }

              v66 = 4 * ((v61 - v62) >> 2);
              *v66 = v58;
              *(v66 + 4) = v59;
              v55 = v66 + 12;
              v67 = (v66 - (v61 - v62));
              memcpy(v67, v62, v61 - v62);
              *(v11 + 80) = v67;
              *(v11 + 88) = v55;
              *(v11 + 96) = 0;
              if (v62)
              {
                operator delete(v62);
              }

              a6 = v69;
            }

            *(v11 + 88) = v55;
          }

          v53 += 40;
        }
      }

LABEL_4:
      v12 = *(v11 + 24);
      v13 = *v11;
    }

    while (v12 != (*(v11 + 8) - *v11) >> 3);
  }

  LODWORD(v73) = -1431655765 * ((*(v11 + 88) - *(v11 + 80)) >> 2);
  sub_DD38(v11 + 128, &v73);
}

void sub_1071C48(uint64_t a1, unsigned int a2, void **a3)
{
  v6 = *(a1 + 39896) + 1032 * a2;
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
  if ((*(*(a1 + 39896) + 1032 * a2 + 1016) * v55) > ((a3[2] - *a3) >> 3))
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

uint64_t sub_1072098(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *(result + 39889) = v2;
  return result;
}

void sub_10720B0(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int *a4, unsigned int a5, char a6, uint64_t *a7)
{
  v14 = (a1 + 36864);
  a7[1] = *a7;
  LODWORD(v121) = a3;
  v15 = sub_101F854(*(a1 + 39792), a2 & 0xFFFFFFFFFFFFFFFLL, (a2 & 0x1000000000000000) == 0, &v121);
  v16 = v15;
  v17 = v15;
  if (v15 <= 0xFFFFFFFEFFFFFFFFLL && v15 != 0)
  {
    v121 = 0;
    v122 = 0;
    v19 = sub_105BEB4(v14[367], v15, 1);
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
                  v110 = 4 * v22;
                  v114 = 0;
                  v115 = 0;
                  v27 = sub_105BEB4(v14[367], v17, 1);
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
                          v31 = &v30[v110 + 4 + *&v30[v110 + 4]];
                          v32 = &v31[-*v31];
                          if (*v32 >= 0xBu)
                          {
                            v33 = *(v32 + 5);
                            if (v33)
                            {
                              if (*&v31[v33 + *&v31[v33]])
                              {
                                v105 = *(a1 + 3880);
                                v106 = *(a1 + 3882);
                                v107 = v14[371];
                                v104 = sub_10AC56C();
                                if (sub_394BD0())
                                {
                                  v34 = a5;
                                }

                                else
                                {
                                  v34 = 0x7FFFFFFF;
                                }

                                v103 = v34;
                                v102 = a5;
                                v35 = sub_394BD0();
                                v36 = *a4;
                                if (v35)
                                {
                                  v37 = a5;
                                }

                                else
                                {
                                  v37 = 0x7FFFFFFF;
                                }

                                v121 = v16;
                                v122 = __PAIR64__(v104, v36);
                                v123 = v103;
                                v124 = v37;
                                v125 = a6;
                                v126 = v106;
                                v127 = v105;
                                v128 = 0;
                                v129 = 0x7FFFFFFF;
                                sub_106826C(&v121, v107, a1, &v114);
                                if (sub_FC1BE4(v14[371], v115) && !v118 && (v38 = v114, v108 = v115, v39 = v119, (v40 = sub_3C0614(a1, v114, 1)) != 0) && (v41 = &v40[-*v40], *v41 >= 0xFu) && *(v41 + 7) && (v42 = &v40[*(v41 + 7) + *&v40[*(v41 + 7)]], *v42 > HIDWORD(v38)) && (v43 = &v42[4 * HIDWORD(v38) + 4 + *&v42[4 * HIDWORD(v38) + 4]], v44 = &v43[-*v43], *v44 >= 5u) && (v45 = *(v44 + 2)) != 0 && (v46 = &v43[v45 + *&v43[v45]], v47 = v108 + *(a1 + 3872) * v39, v47 < *v46) && *&v46[4 * v47 + 4] != -1)
                                {
                                  sub_106843C(a1, v16, a2, v115, v119, a7);
                                }

                                else
                                {
                                  v48 = (HIDWORD(v114) + (v114 << 6) + (v114 >> 2) + 2654435769u) ^ v114;
                                  v49 = (v115 + (v48 << 6) + (v48 >> 2) + 2654435769u) ^ v48;
                                  v50 = (SHIDWORD(v115) + (v49 << 6) + (v49 >> 2) + 2654435769u) ^ v49;
                                  v51 = (v116 + (v50 << 6) + (v50 >> 2) + 2654435769u) ^ v50;
                                  v52 = (v117 + (v51 << 6) + (v51 >> 2) + 2654435769u) ^ v51;
                                  v53 = (v118 + (v52 << 6) + (v52 >> 2) + 2654435769u) ^ v52;
                                  v54 = (v119 + (v53 << 6) + (v53 >> 2) + 2654435769u) ^ v53;
                                  v55 = ((v120 + (v54 << 6) + (v54 >> 2) + 2654435769u) ^ v54);
                                  v56 = (*(v14[372] + 16) + 272 * (bswap64(v55) % *v14[372]));
                                  v130[0] = &v114;
                                  v130[1] = v55;
                                  sub_1068DA8(v56, v130, &v121);
                                  if (v123 == 1)
                                  {
                                    v57 = v121;
                                    v112 = v121;
                                    v113 = v122;
                                    if (v122)
                                    {
                                      atomic_fetch_add_explicit((v122 + 8), 1uLL, memory_order_relaxed);
                                    }
                                  }

                                  else
                                  {
                                    sub_107113C(&v112, a1, v16, a4, v102, v118);
                                    v57 = v112;
                                  }

                                  if (v57 && (v58 = v57[3]) != 0)
                                  {
                                    v59 = (*(v58 + 32) - *(v58 + 24)) >> 3;
                                  }

                                  else
                                  {
                                    v60 = sub_105BEB4(v14[367], v17, 1);
                                    if (v60 && (v61 = &v60[-*v60], *v61 >= 5u) && (v62 = *(v61 + 2)) != 0 && (v63 = &v60[v62 + *&v60[v62]], *v63 > HIDWORD(v16)) && (v64 = &v63[v110 + 4 + *&v63[v110 + 4]], v65 = &v64[-*v64], *v65 >= 0xBu) && (v66 = *(v65 + 5)) != 0)
                                    {
                                      LODWORD(v59) = *&v64[v66 + *&v64[v66]];
                                    }

                                    else
                                    {
                                      LODWORD(v59) = 0;
                                    }
                                  }

                                  if (v112 && (v67 = v112[3]) != 0)
                                  {
                                    v130[0] = a2;
                                    v68 = *v67;
                                    v131 = *(v67 + 8);
                                    v132[0] = v68;
                                    v69 = sub_1069A1C(v132, &v131, v130);
                                    if (*(v67 + 8) == v69 || *v69 != v130[0])
                                    {
                                      LOWORD(v70) = -1;
                                    }

                                    else
                                    {
                                      v70 = (v69 - *v67) >> 3;
                                    }

                                    v109 = v70;
                                  }

                                  else
                                  {
                                    v109 = sub_105BD90(v14[367], a2, v16);
                                  }

                                  v71 = v14[379] + 1032 * a3 + 992;
                                  if (v112 && (v72 = v112[3]) != 0)
                                  {
                                    if (v72 + 24 != v71)
                                    {
                                      sub_31F64(v71, *(v72 + 24), *(v72 + 32), (*(v72 + 32) - *(v72 + 24)) >> 3);
                                    }
                                  }

                                  else
                                  {
                                    v73 = v14[367];
                                    *(v71 + 8) = *v71;
                                    v74 = sub_105BEB4(v73, v17, 1);
                                    if (v74)
                                    {
                                      v75 = &v74[-*v74];
                                      if (*v75 >= 5u)
                                      {
                                        v76 = *(v75 + 2);
                                        if (v76)
                                        {
                                          v77 = &v74[v76 + *&v74[v76]];
                                          if (*v77 > HIDWORD(v16))
                                          {
                                            v78 = &v77[v110 + 4 + *&v77[v110 + 4]];
                                            v79 = &v78[-*v78];
                                            if (*v79 >= 0xBu)
                                            {
                                              v80 = *(v79 + 5);
                                              if (v80)
                                              {
                                                v81 = &v78[v80 + *&v78[v80]];
                                                v82 = *v81;
                                                v81 = (v81 + 4);
                                                v131 = &v81[v82];
                                                v132[0] = v81;
                                                sub_1069B6C(v132, &v131, v71, v130);
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }

                                  v84 = *v71;
                                  v83 = *(v71 + 8);
                                  if (v84 != v83)
                                  {
                                    v85 = 0;
                                    v86 = v59 * v109;
                                    v111 = v83;
                                    do
                                    {
                                      while (1)
                                      {
                                        v88 = sub_106CA9C(v112, v86);
                                        v90 = a7[1];
                                        v89 = a7[2];
                                        if (v90 >= v89)
                                        {
                                          break;
                                        }

                                        v87 = *v84;
                                        v84 += 8;
                                        *v90 = a2;
                                        *(v90 + 8) = v87;
                                        *(v90 + 16) = v16;
                                        *(v90 + 24) = v109;
                                        *(v90 + 26) = v85;
                                        *(v90 + 28) = *v88;
                                        a7[1] = v90 + 40;
                                        ++v86;
                                        ++v85;
                                        if (v84 == v83)
                                        {
                                          goto LABEL_86;
                                        }
                                      }

                                      v91 = *a7;
                                      v92 = 0xCCCCCCCCCCCCCCCDLL * ((v90 - *a7) >> 3);
                                      v93 = v92 + 1;
                                      if (v92 + 1 > 0x666666666666666)
                                      {
                                        sub_1794();
                                      }

                                      v94 = 0xCCCCCCCCCCCCCCCDLL * ((v89 - v91) >> 3);
                                      if (2 * v94 > v93)
                                      {
                                        v93 = 2 * v94;
                                      }

                                      if (v94 >= 0x333333333333333)
                                      {
                                        v95 = 0x666666666666666;
                                      }

                                      else
                                      {
                                        v95 = v93;
                                      }

                                      if (v95)
                                      {
                                        if (v95 <= 0x666666666666666)
                                        {
                                          operator new();
                                        }

                                        sub_1808();
                                      }

                                      v96 = 8 * ((v90 - *a7) >> 3);
                                      v97 = *v84;
                                      *v96 = a2;
                                      *(v96 + 8) = v97;
                                      *(v96 + 16) = v16;
                                      *(v96 + 24) = v109;
                                      *(v96 + 26) = v85;
                                      *(v96 + 28) = *v88;
                                      v98 = 40 * v92 + 40;
                                      v99 = 40 * v92 - (v90 - v91);
                                      memcpy((v96 - (v90 - v91)), v91, v90 - v91);
                                      *a7 = v99;
                                      a7[1] = v98;
                                      a7[2] = 0;
                                      if (v91)
                                      {
                                        operator delete(v91);
                                      }

                                      v83 = v111;
                                      a7[1] = v98;
                                      ++v86;
                                      ++v85;
                                      v84 += 8;
                                    }

                                    while (v84 != v111);
                                  }

LABEL_86:
                                  v100 = v113;
                                  if (v113 && !atomic_fetch_add(&v113->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                  {
                                    (v100->__on_zero_shared)(v100);
                                    std::__shared_weak_count::__release_weak(v100);
                                  }

                                  v101 = v122;
                                  if (v122 && !atomic_fetch_add((v122 + 8), 0xFFFFFFFFFFFFFFFFLL))
                                  {
                                    (v101->__on_zero_shared)(v101);
                                    std::__shared_weak_count::__release_weak(v101);
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

void sub_10729A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_10729B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
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

void sub_10729E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_1F1A8(va1);
  _Unwind_Resume(a1);
}

void sub_10729FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_1072A10(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v4 = a1 + 36864;
  v5 = (*(a1 + 39896) + 1032 * a3);
  v6 = *(a1 + 39800);
  v5[119] = v5[118];
  v7 = a2;
  v8 = sub_105BEB4(v6, a2, 1);
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
              v16 = (v16 + 4);
              v29 = &v16[v17];
              v30 = v16;
              sub_1069B6C(&v30, &v29, v5 + 118, v28);
            }
          }
        }
      }
    }
  }

  v18 = *(v4 + 2936);
  v5[122] = v5[121];
  v19 = sub_105BEB4(v18, v7, 1);
  if (v19)
  {
    v20 = &v19[-*v19];
    if (*v20 >= 5u)
    {
      v21 = *(v20 + 2);
      if (v21)
      {
        v22 = &v19[v21 + *&v19[v21]];
        if (*v22 > v9)
        {
          v23 = &v22[4 * v9 + 4 + *&v22[4 * v9 + 4]];
          v24 = &v23[-*v23];
          if (*v24 >= 0xBu)
          {
            v25 = *(v24 + 5);
            if (v25)
            {
              v26 = &v23[v25 + *&v23[v25]];
              v27 = *v26;
              v26 = (v26 + 4);
              v29 = &v26[v27];
              v30 = v26;
              sub_1069B6C(&v30, &v29, v5 + 121, v28);
            }
          }
        }
      }
    }
  }
}

void sub_1072BD4(uint64_t a1, unsigned int a2, int a3)
{
  v6 = *(a1 + 39896) + 1032 * a2;
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
      sub_10770A4(v6 + 176, v8, v25);
      v9 = *(v6 + 1024);
      *(v26 + 8) = v9;
      v10 = v9 + 1;
      *(v6 + 1024) = v9 + 1;
      v8 += 2;
    }

    while (v8 != v7);
  }

  v25[0] = 0;
  v11 = *(v6 + 128);
  v12 = (*(v6 + 136) - v11) >> 2;
  if (v10 <= v12)
  {
    if (v10 < v12)
    {
      *(v6 + 136) = v11 + 4 * v10;
    }
  }

  else
  {
    sub_569AC(v6 + 128, v10 - v12, v25);
  }

  v13 = *(a1 + 39896) + 1032 * a2;
  v14 = *(v13 + 952);
  v15 = *(v13 + 944);
  for (*(v13 + 1016) = (v14 - v15) >> 3; v15 != v14; v15 += 2)
  {
    if (a3)
    {
      sub_10770A4(v6 + 176, v15, v25);
      *(v26 + 8) = *(v6 + 1024);
    }

    v18 = *(v6 + 8);
    v17 = *(v6 + 16);
    if (v18 < v17)
    {
      *v18 = *v15;
      v16 = (v18 + 1);
    }

    else
    {
      v19 = *v6;
      v20 = v18 - *v6;
      v21 = v20 >> 3;
      v22 = (v20 >> 3) + 1;
      if (v22 >> 61)
      {
        sub_1794();
      }

      v23 = v17 - v19;
      if (v23 >> 2 > v22)
      {
        v22 = v23 >> 2;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v24 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        if (!(v24 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      *(8 * v21) = *v15;
      v16 = 8 * v21 + 8;
      memcpy(0, v19, v20);
      *v6 = 0;
      *(v6 + 8) = v16;
      *(v6 + 16) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    *(v6 + 8) = v16;
    ++*(v6 + 1024);
  }
}

uint64_t sub_1072DE8(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = 0;
  v30 = a2;
  v4 = *(a1 + 39896) + 1032 * a3;
  v5 = 0x2127599BF4325C37 * ((((a2 << 32) + 16 * HIDWORD(a2)) | (a2 >> 61) & 2 | (a2 >> 63) | (a2 >> 59) & 4 | (a2 >> 57) & 8) ^ (((a2 << 32) + 16 * HIDWORD(a2)) >> 23));
  v6 = (v5 ^ ~(v5 >> 47)) + ((v5 ^ (v5 >> 47)) << 21);
  v7 = 21 * ((265 * (v6 ^ (v6 >> 24))) ^ ((265 * (v6 ^ (v6 >> 24))) >> 14));
  v8 = 2147483649u * (v7 ^ (v7 >> 28));
  v9 = (v4 + 176 + 48 * (((((v7 ^ (v7 >> 28)) >> 8) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 16)) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 24)) & 0xF));
  v10 = v8 >> 7;
  v11 = v9[3];
  v12 = 0x101010101010101 * (v8 & 0x7F);
  while (1)
  {
    v13 = v10 & v11;
    v14 = *(*v9 + v13);
    v15 = ((v14 ^ v12) - 0x101010101010101) & ~(v14 ^ v12) & 0x8080808080808080;
    if (v15)
    {
      break;
    }

LABEL_8:
    if ((v14 & (~v14 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_11;
    }

    v3 += 8;
    v10 = v3 + v13;
  }

  while (1)
  {
    v16 = (v13 + (__clz(__rbit64(v15)) >> 3)) & v11;
    v17 = (v9[1] + 16 * v16);
    if (*v17 == a2 && v17[1] == HIDWORD(a2))
    {
      break;
    }

    v15 &= v15 - 1;
    if (!v15)
    {
      goto LABEL_8;
    }
  }

  if (v11 != v16)
  {
    return v17[2];
  }

LABEL_11:
  v19 = *(v4 + 1024);
  sub_10770A4(v4 + 176, &v30, v31);
  *(v32 + 8) = *(v4 + 1024);
  v21 = *(v4 + 8);
  v20 = *(v4 + 16);
  if (v21 >= v20)
  {
    v23 = *v4;
    v24 = v21 - *v4;
    v25 = v24 >> 3;
    v26 = (v24 >> 3) + 1;
    if (v26 >> 61)
    {
      sub_1794();
    }

    v27 = v20 - v23;
    if (v27 >> 2 > v26)
    {
      v26 = v27 >> 2;
    }

    if (v27 >= 0x7FFFFFFFFFFFFFF8)
    {
      v28 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v26;
    }

    if (v28)
    {
      if (!(v28 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v25) = v30;
    v22 = 8 * v25 + 8;
    memcpy(0, v23, v24);
    *v4 = 0;
    *(v4 + 8) = v22;
    *(v4 + 16) = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v21 = v30;
    v22 = (v21 + 1);
  }

  *(v4 + 8) = v22;
  ++*(v4 + 1024);
  return v19;
}

void sub_1073068(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v9 = &v4[a2];
      v10 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v10 < 7)
      {
        goto LABEL_33;
      }

      v11 = v10 + 1;
      v12 = &v4[v11 & 0x3FFFFFFFFFFFFFF8];
      v13 = (v4 + 4);
      v14.f64[0] = NAN;
      v14.f64[1] = NAN;
      v15 = vnegq_f64(v14);
      v16 = v11 & 0x3FFFFFFFFFFFFFF8;
      do
      {
        v13[-2] = v15;
        v13[-1] = v15;
        *v13 = v15;
        v13[1] = v15;
        v13 += 4;
        v16 -= 8;
      }

      while (v16);
      v4 = v12;
      if (v11 != (v11 & 0x3FFFFFFFFFFFFFF8))
      {
LABEL_33:
        do
        {
          *v4++ = -NAN;
        }

        while (v4 != v9);
      }

      v4 = v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 3;
    v6 = v5 + a2;
    if ((v5 + a2) >> 61)
    {
      sub_1794();
    }

    v7 = v3 - *a1;
    if (v7 >> 2 > v6)
    {
      v6 = v7 >> 2;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v8 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v17 = 8 * v5;
    v18 = 8 * v5 + 8 * a2;
    v19 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v20 = (8 * v5);
    if (v19 < 7)
    {
      goto LABEL_34;
    }

    v21 = v19 + 1;
    v20 = (v17 + 8 * (v21 & 0x3FFFFFFFFFFFFFF8));
    v22 = (v17 + 32);
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v24 = vnegq_f64(v23);
    v25 = v21 & 0x3FFFFFFFFFFFFFF8;
    do
    {
      v22[-2] = v24;
      v22[-1] = v24;
      *v22 = v24;
      v22[1] = v24;
      v22 += 4;
      v25 -= 8;
    }

    while (v25);
    if (v21 != (v21 & 0x3FFFFFFFFFFFFFF8))
    {
LABEL_34:
      do
      {
        *v20++ = -NAN;
      }

      while (v20 != v18);
    }

    v26 = *a1;
    v27 = *(a1 + 8) - *a1;
    v28 = v17 - v27;
    memcpy((v17 - v27), *a1, v27);
    *a1 = v28;
    *(a1 + 8) = v18;
    *(a1 + 16) = 0;
    if (v26)
    {

      operator delete(v26);
    }
  }
}

uint64_t sub_1073240(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_1073340(a1 + 16, (a2 + 16));
  *(a1 + 2592) = *(a2 + 2592);
  sub_10736D0(a1 + 2600, a2 + 2600);
  sub_10734F8(a1 + 3368, a2 + 3368);
  *(a1 + 4136) = 0u;
  *(a1 + 4152) = 0;
  *(a1 + 4136) = *(a2 + 4136);
  *(a1 + 4144) = *(a2 + 4144);
  *(a2 + 4136) = 0u;
  *(a2 + 4152) = 0;
  v4 = *(a2 + 4160);
  *(a2 + 4160) = 0;
  *(a1 + 4160) = v4;
  *(a1 + 4168) = *(a2 + 4168);
  *(a2 + 4168) = 0;
  v5 = *(a2 + 4176);
  *(a1 + 4176) = v5;
  v6 = *(a2 + 4184);
  *(a1 + 4184) = v6;
  *(a1 + 4192) = *(a2 + 4192);
  if (v6)
  {
    v7 = *(v5 + 8);
    v8 = *(a1 + 4168);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v7 %= v8;
      }
    }

    else
    {
      v7 &= v8 - 1;
    }

    *(v4 + 8 * v7) = a1 + 4176;
    *(a2 + 4176) = 0;
    *(a2 + 4184) = 0;
  }

  return a1;
}

uint64_t sub_1073340(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 16) = *(a2 + 1);
  v5 = a2[5];
  *(a1 + 32) = a2[4];
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 48) = *(a2 + 3);
  v6 = a2[9];
  *(a1 + 64) = a2[8];
  a2[7] = 0;
  a2[8] = 0;
  a2[6] = 0;
  *(a1 + 72) = v6;
  v7 = a2[10];
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v7;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 96) = *(a2 + 6);
  v8 = a2[15];
  *(a1 + 112) = a2[14];
  a2[13] = 0;
  a2[14] = 0;
  a2[12] = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 120) = v8;
  *(a1 + 128) = 0;
  *(a1 + 128) = *(a2 + 8);
  *(a1 + 144) = a2[18];
  a2[16] = 0;
  a2[17] = 0;
  a2[18] = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 152) = *(a2 + 19);
  *(a1 + 168) = a2[21];
  a2[19] = 0;
  a2[20] = 0;
  a2[21] = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = *(a2 + 11);
  *(a1 + 192) = a2[24];
  a2[22] = 0;
  a2[23] = 0;
  a2[24] = 0;
  sub_10734F8(a1 + 200, (a2 + 25));
  sub_10734F8(a1 + 968, (a2 + 121));
  sub_10736D0(a1 + 1736, (a2 + 217));
  *(a1 + 2520) = 0;
  *(a1 + 2504) = 0u;
  *(a1 + 2504) = a2[313];
  *(a1 + 2512) = *(a2 + 157);
  a2[315] = 0;
  *(a2 + 313) = 0u;
  *(a1 + 2544) = 0;
  *(a1 + 2528) = 0u;
  *(a1 + 2528) = *(a2 + 158);
  *(a1 + 2544) = a2[318];
  a2[318] = 0;
  *(a2 + 158) = 0u;
  *(a1 + 2568) = 0;
  *(a1 + 2552) = 0u;
  *(a1 + 2552) = a2[319];
  *(a1 + 2560) = *(a2 + 160);
  a2[321] = 0;
  *(a2 + 319) = 0u;
  return a1;
}

uint64_t sub_10734F8(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a1 + 296) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 728) = 0u;
  *a1 = &unk_2290750;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_2290750;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_2290750;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_2290750;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_2290750;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = &unk_2290750;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = &unk_2290750;
  *(a1 + 312) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = &unk_2290750;
  *(a1 + 360) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2290750;
  *(a1 + 408) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = &unk_2290750;
  *(a1 + 456) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_2290750;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 528) = &unk_2290750;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0;
  *(a1 + 576) = &unk_2290750;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0;
  *(a1 + 624) = &unk_2290750;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 672) = &unk_2290750;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  *(a1 + 720) = &unk_2290750;
  *(a1 + 760) = 0;
  *(a1 + 744) = 0;
  do
  {
    v5 = (a2 + 48 * v4);
    v6 = (a1 + 48 * v4);
    v7 = *v5;
    v8 = v5[1];
    *v5 = &unk_2290750;
    *(v5 + 1) = 0;
    v10 = *v6;
    v9 = v6[1];
    *v6 = v7;
    v11 = *(v5 + 5);
    *(v5 + 5) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    v12 = v6[3];
    *(v6 + 1) = v8;
    v6[5] = v11;
    if (v12)
    {
      v13 = 0;
      v14 = v9 + 16;
      do
      {
        if ((v13[v10] & 0x80000000) == 0)
        {
          v15 = *(v14 - 1);
          if (v15)
          {
            *v14 = v15;
            operator delete(v15);
          }
        }

        ++v13;
        v14 += 4;
      }

      while (v12 != v13);
      operator delete(v10);
    }

    ++v4;
  }

  while (v4 != 16);
  return a1;
}

uint64_t sub_10736D0(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *a1 = &unk_2290750;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_2290750;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_2290750;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_2290750;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_2290750;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = &unk_2290750;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = &unk_2290750;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = &unk_2290750;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2290750;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = &unk_2290750;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_2290750;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 528) = &unk_2290750;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 576) = &unk_2290750;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 624) = &unk_2290750;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 672) = &unk_2290750;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 720) = &unk_2290750;
  *(a1 + 760) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0;
  do
  {
    v5 = (a2 + v4);
    v6 = *(a2 + v4 + 40);
    v5[5] = 0;
    v7 = a1 + v4;
    v8 = *(a2 + v4);
    v9 = *(a2 + v4 + 16);
    *v5 = &unk_2290750;
    v5[1] = 0;
    v10 = *(a1 + v4);
    *v7 = v8;
    v5[2] = 0;
    v5[3] = 0;
    v11 = *(a1 + v4 + 16);
    *(v7 + 16) = v9;
    v14[0] = &unk_2290750;
    v14[5] = 0;
    memset(&v14[1], 0, 24);
    v15[0] = v10;
    v15[1] = v11;
    v12 = *(a1 + v4 + 40);
    *(v7 + 40) = v6;
    v16 = v12;
    sub_307668(v15);
    sub_307668(v14);
    v4 += 48;
  }

  while (v4 != 768);
  return a1;
}

void sub_10738B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10738C4(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (0x80FE03F80FE03F81 * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v4 + 1032 * a2;
      v10 = 1032 * a2;
      do
      {
        sub_1073AD0(a1, v4);
        v4 += 1032;
        v10 -= 1032;
      }

      while (v10);
      v4 = v9;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = 0x80FE03F80FE03F81 * ((v4 - *a1) >> 3);
    if (v5 + a2 > 0x3F80FE03F80FE0)
    {
      sub_1794();
    }

    v6 = 0x80FE03F80FE03F81 * ((v3 - *a1) >> 3);
    v7 = 2 * v6;
    if (2 * v6 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    if (v6 >= 0x1FC07F01FC07F0)
    {
      v8 = 0x3F80FE03F80FE0;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      if (v8 <= 0x3F80FE03F80FE0)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = 1032 * v5;
    v20 = v11;
    v12 = 1032 * a2;
    v13 = v11 + 1032 * a2;
    do
    {
      sub_1073AD0(a1, v11);
      v11 += 1032;
      v12 -= 1032;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = v20 + *a1 - v15;
    if (v15 != *a1)
    {
      v17 = *a1;
      v18 = v20 + *a1 - v15;
      do
      {
        v19 = sub_1073C28(v18, v17);
        v17 += 1032;
        v18 = v19 + 1032;
      }

      while (v17 != v15);
      do
      {
        sub_1066414(v14);
        v14 += 1032;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = v13;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }
}

void sub_1073AB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1073DBC(va);
  _Unwind_Resume(a1);
}

double sub_1073AD0(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = &unk_2290750;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0u;
  *(a2 + 216) = 0;
  *(a2 + 224) = &unk_2290750;
  *(a2 + 248) = 0;
  *(a2 + 232) = 0u;
  *(a2 + 264) = 0;
  *(a2 + 272) = &unk_2290750;
  *(a2 + 296) = 0;
  *(a2 + 280) = 0u;
  *(a2 + 312) = 0;
  *(a2 + 320) = &unk_2290750;
  *(a2 + 344) = 0;
  *(a2 + 328) = 0u;
  *(a2 + 360) = 0;
  *(a2 + 368) = &unk_2290750;
  *(a2 + 392) = 0;
  *(a2 + 376) = 0u;
  *(a2 + 408) = 0;
  *(a2 + 416) = &unk_2290750;
  *(a2 + 440) = 0;
  *(a2 + 424) = 0u;
  *(a2 + 456) = 0;
  *(a2 + 464) = &unk_2290750;
  *(a2 + 488) = 0;
  *(a2 + 472) = 0u;
  *(a2 + 504) = 0;
  *(a2 + 512) = &unk_2290750;
  *(a2 + 552) = 0;
  *(a2 + 536) = 0;
  *(a2 + 520) = 0u;
  *(a2 + 560) = &unk_2290750;
  *(a2 + 600) = 0;
  *(a2 + 584) = 0;
  *(a2 + 568) = 0u;
  *(a2 + 608) = &unk_2290750;
  *(a2 + 648) = 0;
  *(a2 + 632) = 0;
  *(a2 + 616) = 0u;
  *(a2 + 656) = &unk_2290750;
  *(a2 + 696) = 0;
  *(a2 + 680) = 0;
  *(a2 + 664) = 0u;
  *(a2 + 704) = &unk_2290750;
  *(a2 + 744) = 0;
  *(a2 + 728) = 0;
  *(a2 + 712) = 0u;
  *(a2 + 752) = &unk_2290750;
  *(a2 + 792) = 0;
  *(a2 + 776) = 0;
  *(a2 + 760) = 0u;
  *(a2 + 800) = &unk_2290750;
  *(a2 + 840) = 0;
  *(a2 + 824) = 0;
  *(a2 + 808) = 0u;
  *(a2 + 848) = &unk_2290750;
  *(a2 + 888) = 0;
  *(a2 + 872) = 0;
  *(a2 + 856) = 0u;
  *(a2 + 896) = &unk_2290750;
  *(a2 + 920) = 0;
  *(a2 + 904) = 0u;
  *(a2 + 984) = 0u;
  *(a2 + 1000) = 0u;
  *(a2 + 952) = 0u;
  *(a2 + 968) = 0u;
  *(a2 + 936) = 0u;
  *(a2 + 1024) = -1;
  return result;
}

uint64_t sub_1073C28(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = *(a2 + 128);
  v4 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  *(a1 + 152) = v4;
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  sub_FEA5FC(a1 + 176, a2 + 176);
  *(a1 + 960) = 0;
  *(a1 + 944) = 0u;
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 960) = *(a2 + 960);
  *(a2 + 960) = 0;
  *(a2 + 944) = 0u;
  *(a1 + 984) = 0;
  *(a1 + 968) = 0u;
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 976) = *(a2 + 976);
  *(a2 + 984) = 0;
  *(a2 + 968) = 0u;
  *(a1 + 1008) = 0;
  *(a1 + 992) = 0u;
  *(a1 + 992) = *(a2 + 992);
  *(a1 + 1008) = *(a2 + 1008);
  *(a2 + 1008) = 0;
  *(a2 + 992) = 0u;
  v5 = *(a2 + 1016);
  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1016) = v5;
  return a1;
}

uint64_t sub_1073DBC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1032;
    sub_1066414(i - 1032);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_1073E10(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_1066414(v3 - 1032);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1073E6C(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (0x80FE03F80FE03F81 * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v4 + 1032 * a2;
      v10 = 1032 * a2;
      do
      {
        sub_1073AD0(a1, v4);
        v4 += 1032;
        v10 -= 1032;
      }

      while (v10);
      v4 = v9;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = 0x80FE03F80FE03F81 * ((v4 - *a1) >> 3);
    if (v5 + a2 > 0x3F80FE03F80FE0)
    {
      sub_1794();
    }

    v6 = 0x80FE03F80FE03F81 * ((v3 - *a1) >> 3);
    v7 = 2 * v6;
    if (2 * v6 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    if (v6 >= 0x1FC07F01FC07F0)
    {
      v8 = 0x3F80FE03F80FE0;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      if (v8 <= 0x3F80FE03F80FE0)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = 1032 * v5;
    v20 = v11;
    v12 = 1032 * a2;
    v13 = v11 + 1032 * a2;
    do
    {
      sub_1073AD0(a1, v11);
      v11 += 1032;
      v12 -= 1032;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = v20 + *a1 - v15;
    if (v15 != *a1)
    {
      v17 = *a1;
      v18 = v20 + *a1 - v15;
      do
      {
        v19 = sub_1074078(v18, v17);
        v17 += 1032;
        v18 = v19 + 1032;
      }

      while (v17 != v15);
      do
      {
        sub_1066414(v14);
        v14 += 1032;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = v13;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }
}

void sub_1074060(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1073DBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1074078(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = *(a2 + 128);
  v4 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  *(a1 + 152) = v4;
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  sub_FEA5FC(a1 + 176, a2 + 176);
  *(a1 + 960) = 0;
  *(a1 + 944) = 0u;
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 960) = *(a2 + 960);
  *(a2 + 960) = 0;
  *(a2 + 944) = 0u;
  *(a1 + 984) = 0;
  *(a1 + 968) = 0u;
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 976) = *(a2 + 976);
  *(a2 + 984) = 0;
  *(a2 + 968) = 0u;
  *(a1 + 1008) = 0;
  *(a1 + 992) = 0u;
  *(a1 + 992) = *(a2 + 992);
  *(a1 + 1008) = *(a2 + 1008);
  *(a2 + 1008) = 0;
  *(a2 + 992) = 0u;
  v5 = *(a2 + 1016);
  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1016) = v5;
  return a1;
}

void *sub_107420C(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  v4 = a2[3];
  v3 = a2[4];
  if (v3 != v4)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_1074310(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_1074344(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (0x80FE03F80FE03F81 * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v4 + 1032 * a2;
      v10 = 1032 * a2;
      do
      {
        sub_1073AD0(a1, v4);
        v4 += 1032;
        v10 -= 1032;
      }

      while (v10);
      v4 = v9;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = 0x80FE03F80FE03F81 * ((v4 - *a1) >> 3);
    if (v5 + a2 > 0x3F80FE03F80FE0)
    {
      sub_1794();
    }

    v6 = 0x80FE03F80FE03F81 * ((v3 - *a1) >> 3);
    v7 = 2 * v6;
    if (2 * v6 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    if (v6 >= 0x1FC07F01FC07F0)
    {
      v8 = 0x3F80FE03F80FE0;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      if (v8 <= 0x3F80FE03F80FE0)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = 1032 * v5;
    v20 = v11;
    v12 = 1032 * a2;
    v13 = v11 + 1032 * a2;
    do
    {
      sub_1073AD0(a1, v11);
      v11 += 1032;
      v12 -= 1032;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = v20 + *a1 - v15;
    if (v15 != *a1)
    {
      v17 = *a1;
      v18 = v20 + *a1 - v15;
      do
      {
        v19 = sub_1074550(v18, v17);
        v17 += 1032;
        v18 = v19 + 1032;
      }

      while (v17 != v15);
      do
      {
        sub_1066414(v14);
        v14 += 1032;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = v13;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }
}

void sub_1074538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1073DBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1074550(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = *(a2 + 128);
  v4 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  *(a1 + 152) = v4;
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  sub_FEA5FC(a1 + 176, a2 + 176);
  *(a1 + 960) = 0;
  *(a1 + 944) = 0u;
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 960) = *(a2 + 960);
  *(a2 + 960) = 0;
  *(a2 + 944) = 0u;
  *(a1 + 984) = 0;
  *(a1 + 968) = 0u;
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 976) = *(a2 + 976);
  *(a2 + 984) = 0;
  *(a2 + 968) = 0u;
  *(a1 + 1008) = 0;
  *(a1 + 992) = 0u;
  *(a1 + 992) = *(a2 + 992);
  *(a1 + 1008) = *(a2 + 1008);
  *(a2 + 1008) = 0;
  *(a2 + 992) = 0u;
  v5 = *(a2 + 1016);
  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1016) = v5;
  return a1;
}

void sub_1074704(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2675038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1074758(void *a1)
{
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      *(v2 + 32) = v3;
      operator delete(v3);
    }

    v4 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v4;
      operator delete(v4);
    }

    operator delete();
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;

    operator delete(v5);
  }
}

void sub_10748F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1F1A8(&a9);
  std::mutex::unlock((v9 + 208));
  _Unwind_Resume(a1);
}

void sub_107490C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  std::mutex::unlock((v1 + 208));
  _Unwind_Resume(a1);
}

uint64_t sub_1074940(uint64_t a1, unsigned int *a2, const void **a3, unint64_t a4, int a5)
{
  if (*(a1 + 168) < a4)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v52);
    v7 = sub_4A5C(&v52, "LRUCache: item is too large (", 29);
    v8 = sub_71478(v7, a4);
    v9 = sub_4A5C(v8, " > ", 3);
    v10 = sub_71478(v9, *(a1 + 168));
    sub_4A5C(v10, ")", 1);
    if ((v62 & 0x10) != 0)
    {
      v28 = v61;
      if (v61 < v57)
      {
        v61 = v57;
        v28 = v57;
      }

      v29 = v56;
      v11 = v28 - v56;
      if ((v28 - v56) >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if ((v62 & 8) == 0)
      {
        v11 = 0;
        HIBYTE(v51) = 0;
LABEL_22:
        *(&__dst + v11) = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(v51) < 0)
        {
          operator delete(__dst);
        }

        if (v60 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v53);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v29 = *(&v53 + 1);
      v11 = v55 - *(&v53 + 1);
      if ((v55 - *(&v53 + 1)) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_45:
        sub_3244();
      }
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v51) = v11;
    if (v11)
    {
      memmove(&__dst, v29, v11);
    }

    goto LABEL_22;
  }

  __dst = &__dst;
  p_dst = &__dst;
  v51 = 0;
  std::mutex::lock((a1 + 24));
  v15 = (a2[1] + (*a2 << 6) + (*a2 >> 2) + 2654435769u) ^ *a2;
  v16 = (a2[2] + (v15 << 6) + (v15 >> 2) + 2654435769u) ^ v15;
  v17 = (a2[3] + (v16 << 6) + (v16 >> 2) + 2654435769u) ^ v16;
  v18 = (a2[4] + (v17 << 6) + (v17 >> 2) + 2654435769u) ^ v17;
  v19 = (a2[5] + (v18 << 6) + (v18 >> 2) + 2654435769u) ^ v18;
  v20 = (*(a2 + 24) + (v19 << 6) + (v19 >> 2) + 2654435769u) ^ v19;
  v21 = (*(a2 + 13) + (v20 << 6) + (v20 >> 2) + 2654435769u) ^ v20;
  v22 = (*(a2 + 28) + (v21 << 6) + (v21 >> 2) + 2654435769u) ^ v21;
  *&v52 = a2;
  *(&v52 + 1) = v22;
  v23 = sub_10656F4((a1 + 88), &v52);
  if (*(a1 + 120) == v23)
  {
LABEL_9:
    v24 = *(a1 + 176);
    v25 = a2[2];
    v26 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 184) - v24) >> 3);
    if (v26 <= v25)
    {
      v27 = (v25 + 1);
      if (v27 <= v26)
      {
        if (v27 < v26)
        {
          *(a1 + 184) = v24 + 24 * v27;
        }
      }

      else
      {
        sub_3C0FD0(a1 + 176, v27 - v26);
        LODWORD(v25) = a2[2];
        v24 = *(a1 + 176);
      }
    }

    ++*(v24 + 24 * v25);
    v30 = *(a1 + 8);
    if (v30 != a1)
    {
      v31 = *(a1 + 168) - a4;
      do
      {
        if (*(a1 + 160) <= v31)
        {
          break;
        }

        sub_3BDB1C(a1, v30, &__dst);
        v30 = *(a1 + 8);
      }

      while (v30 != a1);
    }

    v32 = *(a2 + 1);
    v52 = *a2;
    v53 = v32;
    v54 = a2[8];
    v33 = (DWORD1(v52) + 2654435769 + (v52 << 6) + (v52 >> 2)) ^ v52;
    v34 = (DWORD2(v52) + 2654435769 + (v33 << 6) + (v33 >> 2)) ^ v33;
    v35 = (SHIDWORD(v52) + 2654435769 + (v34 << 6) + (v34 >> 2)) ^ v34;
    v36 = (v32 + 2654435769 + (v35 << 6) + (v35 >> 2)) ^ v35;
    v37 = (SDWORD1(v32) + 2654435769 + (v36 << 6) + (v36 >> 2)) ^ v36;
    v38 = (BYTE8(v32) + 2654435769 + (v37 << 6) + (v37 >> 2)) ^ v37;
    v39 = (WORD5(v32) + 2654435769 + (v38 << 6) + (v38 >> 2)) ^ v38;
    v40 = *a3;
    v41 = a3[1];
    v55 = (BYTE12(v32) + 2654435769 + (v39 << 6) + (v39 >> 2)) ^ v39;
    v56 = v40;
    v57 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(v41 + 1, 1uLL, memory_order_relaxed);
    }

    v58 = a4;
    operator new();
  }

  if (a5)
  {
    sub_3BDB1C(a1, *(v23 + 48), &__dst);
    goto LABEL_9;
  }

  std::mutex::unlock((a1 + 24));
  if (v51)
  {
    v42 = p_dst;
    v43 = *(__dst + 1);
    v44 = *p_dst;
    v44[1] = v43;
    *v43 = v44;
    v51 = 0;
    if (v42 != &__dst)
    {
      do
      {
        v45 = v42[1];
        v46 = v42[9];
        if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v47 = v42;
          (v46->__on_zero_shared)(v46);
          std::__shared_weak_count::__release_weak(v46);
          v42 = v47;
        }

        operator delete(v42);
        v42 = v45;
      }

      while (v45 != &__dst);
    }
  }

  return 0;
}

void sub_107522C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  std::mutex::unlock((v20 + 24));
  sub_3BC67C(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_10752D8(uint64_t result)
{
  v1 = *(result + 56);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_1075350(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  result[3] = 0;
  if (a2[3])
  {
    operator new();
  }

  return result;
}

void *sub_10754A0(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  v4 = a2[3];
  v3 = a2[4];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_1075584(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10755B8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      *(v1 + 32) = v2;
      operator delete(v2);
    }

    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1075620(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v74 = *(a2 - 1);
      v75 = *v10;
      if (v74 < *v10)
      {
        *v10 = v74;
        *(a2 - 1) = v75;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v86 = v10 + 1;
      v88 = v10 == a2 || v86 == a2;
      if (a5)
      {
        if (!v88)
        {
          v89 = 0;
          v90 = v10;
          do
          {
            v93 = *v90;
            v92 = v90[1];
            v90 = v86;
            if (v92 < v93)
            {
              v94 = v89;
              do
              {
                *(v10 + v94 + 8) = v93;
                if (!v94)
                {
                  v91 = v10;
                  goto LABEL_128;
                }

                v93 = *(v10 + v94 - 8);
                v94 -= 8;
              }

              while (v92 < v93);
              v91 = (v10 + v94 + 8);
LABEL_128:
              *v91 = v92;
            }

            v86 = v90 + 1;
            v89 += 8;
          }

          while (v90 + 1 != a2);
        }
      }

      else if (!v88)
      {
        do
        {
          v100 = *v9;
          v99 = v9[1];
          v9 = v86;
          if (v99 < v100)
          {
            do
            {
              *v86 = v100;
              v100 = *(v86 - 2);
              --v86;
            }

            while (v99 < v100);
            *v86 = v99;
          }

          v86 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_1075F00(v10, a2, a2);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v17 = *v10;
      v18 = *v12;
      if (*v10 < *v13)
      {
        if (v14 < v17)
        {
          *v13 = v14;
          goto LABEL_37;
        }

        *v13 = v17;
        *v10 = v18;
        v28 = *(a2 - 1);
        if (v28 < v18)
        {
          *v10 = v28;
LABEL_37:
          *(a2 - 1) = v18;
        }

LABEL_38:
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v14 >= v17)
      {
        goto LABEL_38;
      }

      *v10 = v14;
      *(a2 - 1) = v17;
      v20 = *v13;
      if (*v10 >= *v13)
      {
        goto LABEL_38;
      }

      *v13 = *v10;
      *v10 = v20;
      --a4;
      v21 = v20;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v10 - 1) < v21)
      {
        goto LABEL_62;
      }

      if (v21 >= *(a2 - 1))
      {
        v57 = v10 + 1;
        do
        {
          v10 = v57;
          if (v57 >= a2)
          {
            break;
          }

          ++v57;
        }

        while (v21 >= *v10);
      }

      else
      {
        do
        {
          v56 = v10[1];
          ++v10;
        }

        while (v21 >= v56);
      }

      v58 = a2;
      if (v10 < a2)
      {
        v58 = a2;
        do
        {
          v59 = *--v58;
        }

        while (v21 < v59);
      }

      if (v10 < v58)
      {
        v60 = *v10;
        v61 = *v58;
        do
        {
          *v10 = v61;
          *v58 = v60;
          do
          {
            v62 = v10[1];
            ++v10;
            v60 = v62;
          }

          while (v21 >= v62);
          do
          {
            v63 = *--v58;
            v61 = v63;
          }

          while (v21 < v63);
        }

        while (v10 < v58);
      }

      v64 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v64;
      }

      a5 = 0;
      *v64 = v21;
    }

    else
    {
      v15 = *v12;
      v16 = *v10;
      if (*v12 >= *v10)
      {
        if (v14 < v15)
        {
          *v12 = v14;
          *(a2 - 1) = v15;
          v19 = *v10;
          if (*v12 < *v10)
          {
            *v10 = *v12;
            *v12 = v19;
          }
        }
      }

      else
      {
        if (v14 >= v15)
        {
          *v10 = v15;
          *v12 = v16;
          v22 = *(a2 - 1);
          if (v22 >= v16)
          {
            goto LABEL_29;
          }

          *v12 = v22;
        }

        else
        {
          *v10 = v14;
        }

        *(a2 - 1) = v16;
      }

LABEL_29:
      v23 = v12 - 1;
      v24 = *(v12 - 1);
      v25 = v10[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v10[1];
          if (*v23 < v27)
          {
            v10[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 >= v24)
        {
          v10[1] = v24;
          *v23 = v25;
          v29 = *(a2 - 2);
          if (v29 >= v25)
          {
            goto LABEL_43;
          }

          *v23 = v29;
        }

        else
        {
          v10[1] = v26;
        }

        *(a2 - 2) = v25;
      }

LABEL_43:
      v32 = v12[1];
      v30 = v12 + 1;
      v31 = v32;
      v33 = v10[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v10[2];
          if (*v30 < v35)
          {
            v10[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 >= v31)
        {
          v10[2] = v31;
          *v30 = v33;
          v36 = *(a2 - 3);
          if (v36 >= v33)
          {
            goto LABEL_52;
          }

          *v30 = v36;
        }

        else
        {
          v10[2] = v34;
        }

        *(a2 - 3) = v33;
      }

LABEL_52:
      v37 = *v13;
      v38 = *v23;
      v39 = *v30;
      if (*v13 >= *v23)
      {
        if (v39 >= v37)
        {
          goto LABEL_60;
        }

        *v13 = v39;
        *v30 = v37;
        v30 = v13;
        v37 = v38;
        if (v39 < v38)
        {
LABEL_59:
          *v23 = v39;
          *v30 = v38;
LABEL_60:
          v41 = *v10;
          *v10 = v37;
          *v13 = v41;
          --a4;
          v21 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v55 = *v10;
        *v10 = v39;
        *v13 = v55;
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v39 < v37)
      {
        goto LABEL_59;
      }

      *v23 = v37;
      *v13 = v38;
      v23 = v13;
      v37 = v39;
      if (v39 < v38)
      {
        goto LABEL_59;
      }

      v40 = *v10;
      *v10 = v38;
      *v13 = v40;
      --a4;
      v21 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v42 = 0;
      do
      {
        v43 = v10[++v42];
      }

      while (v43 < v21);
      v44 = &v10[v42];
      v45 = a2;
      if (v42 == 1)
      {
        v45 = a2;
        do
        {
          if (v44 >= v45)
          {
            break;
          }

          v47 = *--v45;
        }

        while (v47 >= v21);
      }

      else
      {
        do
        {
          v46 = *--v45;
        }

        while (v46 >= v21);
      }

      if (v44 >= v45)
      {
        v53 = v44 - 1;
        if (v44 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v53;
        goto LABEL_80;
      }

      v48 = *v45;
      v49 = &v10[v42];
      v50 = v45;
      do
      {
        *v49 = v48;
        *v50 = v43;
        do
        {
          v51 = v49[1];
          ++v49;
          v43 = v51;
        }

        while (v51 < v21);
        do
        {
          v52 = *--v50;
          v48 = v52;
        }

        while (v52 >= v21);
      }

      while (v49 < v50);
      v53 = v49 - 1;
      if (v49 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v53 = v21;
      if (v44 < v45)
      {
        goto LABEL_83;
      }

      v54 = sub_C9DDEC(v10, v53);
      v10 = v53 + 1;
      result = sub_C9DDEC(v53 + 1, a2);
      if (result)
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_83:
        result = sub_1075620(v9, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v53 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v79 = v10 + 1;
      v80 = v10[1];
      v81 = v10 + 2;
      v82 = v10[2];
      v83 = *v10;
      if (v80 >= *v10)
      {
        if (v82 < v80)
        {
          *v79 = v82;
          *v81 = v80;
          v84 = v10;
          v85 = v10 + 1;
          result = v80;
          if (v82 < v83)
          {
            goto LABEL_148;
          }

          goto LABEL_149;
        }

LABEL_157:
        v80 = v82;
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      else
      {
        v84 = v10;
        v85 = v10 + 2;
        result = *v10;
        if (v82 >= v80)
        {
          *v10 = v80;
          v10[1] = v83;
          v84 = v10 + 1;
          v85 = v10 + 2;
          result = v83;
          if (v82 >= v83)
          {
            goto LABEL_157;
          }
        }

LABEL_148:
        *v84 = v82;
        *v85 = v83;
        v80 = result;
LABEL_149:
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      *v81 = v98;
      *(a2 - 1) = v80;
      v101 = *v81;
      v102 = *v79;
      if (v101 < v102)
      {
        v10[1] = v101;
        v10[2] = v102;
        v103 = *v10;
        if (v101 < *v10)
        {
          *v10 = v101;
          v10[1] = v103;
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v65 = v10 + 1;
      v66 = v10[1];
      v68 = v10 + 2;
      v67 = v10[2];
      v69 = *v10;
      if (v66 >= *v10)
      {
        if (v67 >= v66)
        {
          v72 = *v10;
          v69 = v10[1];
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v70 = v10;
          v71 = v10 + 1;
          *v65 = v67;
          *v68 = v66;
          v72 = v67;
          result = v69;
          v73 = v66;
          if (v67 < v69)
          {
            goto LABEL_162;
          }

          v72 = v69;
          v69 = v67;
          v67 = v66;
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_167;
          }
        }
      }

      else
      {
        if (v67 < v66)
        {
          v70 = v10;
          v71 = v10 + 2;
          v72 = v10[2];
          result = v10[1];
          v73 = *v10;
          goto LABEL_162;
        }

        v70 = v10 + 1;
        v71 = v10 + 2;
        *v10 = v66;
        v10[1] = v69;
        v72 = v66;
        result = v67;
        v73 = v69;
        if (v67 < v69)
        {
LABEL_162:
          *v70 = v67;
          *v71 = v69;
          v69 = result;
          v67 = v73;
          v95 = v10[3];
          if (v95 < v73)
          {
            goto LABEL_163;
          }

LABEL_167:
          v67 = v95;
LABEL_168:
          v104 = *(a2 - 1);
          if (v104 >= v67)
          {
            return result;
          }

          v10[3] = v104;
          *(a2 - 1) = v67;
          v105 = v10[2];
          v96 = v10[3];
          if (v96 >= v105)
          {
            return result;
          }

          v10[2] = v96;
          v10[3] = v105;
          v106 = v10[1];
          if (v96 >= v106)
          {
            return result;
          }

          v10[1] = v96;
          v10[2] = v106;
          v97 = *v10;
          if (v96 >= *v10)
          {
            return result;
          }

LABEL_172:
          *v10 = v96;
          v10[1] = v97;
          return result;
        }

        v72 = v66;
        v95 = v10[3];
        if (v95 >= v67)
        {
          goto LABEL_167;
        }
      }

LABEL_163:
      v10[2] = v95;
      v10[3] = v67;
      if (v95 < v69)
      {
        *v65 = v95;
        *v68 = v69;
        if (v95 < v72)
        {
          *v10 = v95;
          v10[1] = v72;
        }
      }

      goto LABEL_168;
    }

    goto LABEL_10;
  }

  v76 = *v10;
  v77 = v10[1];
  v78 = *(a2 - 1);
  if (v77 < *v10)
  {
    if (v78 >= v77)
    {
      *v10 = v77;
      v10[1] = v76;
      v107 = *(a2 - 1);
      if (v107 >= v76)
      {
        return result;
      }

      v10[1] = v107;
    }

    else
    {
      *v10 = v78;
    }

    *(a2 - 1) = v76;
    return result;
  }

  if (v78 < v77)
  {
    v10[1] = v78;
    *(a2 - 1) = v77;
    v97 = *v10;
    v96 = v10[1];
    if (v96 < *v10)
    {
      goto LABEL_172;
    }
  }

  return result;
}

unint64_t *sub_1075F00(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      if (v4 >= v5)
      {
        v7 = (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
        v8 = &a1[v7];
        if (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2 >= v3)
        {
          v9 = *v8;
          v11 = &a1[v5];
          v12 = *v11;
          if (*v8 >= *v11)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v9 = v8[1];
          v10 = *v8 >= v9;
          if (*v8 > v9)
          {
            v9 = *v8;
          }

          if (!v10)
          {
            ++v8;
            v7 = 2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2;
          }

          v11 = &a1[v5];
          v12 = *v11;
          if (v9 >= *v11)
          {
LABEL_22:
            while (1)
            {
              *v11 = v9;
              v11 = v8;
              if (v4 < v7)
              {
                break;
              }

              v14 = (2 * v7) | 1;
              v8 = &a1[v14];
              v7 = 2 * v7 + 2;
              if (v7 < v3)
              {
                v9 = *v8;
                v13 = v8[1];
                if (*v8 <= v13)
                {
                  v9 = v8[1];
                }

                if (*v8 >= v13)
                {
                  v7 = v14;
                }

                else
                {
                  ++v8;
                }

                if (v9 < v12)
                {
                  break;
                }
              }

              else
              {
                v9 = *v8;
                v7 = v14;
                if (*v8 < v12)
                {
                  break;
                }
              }
            }

            *v11 = v12;
          }
        }
      }

      v6 = v5-- <= 0;
    }

    while (!v6);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      v16 = *a1;
      i = a2;
      do
      {
        v17 = *i;
        if (*i < v16)
        {
          *i = v16;
          *a1 = v17;
          v16 = v17;
        }

        ++i;
      }

      while (i != a3);
      goto LABEL_59;
    }

    v18 = a1 + 2;
    for (i = a2; i != a3; ++i)
    {
      v19 = *i;
      if (*i < *a1)
      {
        *i = *a1;
        *a1 = v19;
        v20 = a1[1];
        if (a2 - a1 == 16)
        {
          v21 = a1 + 1;
          v22 = 1;
          if (v20 >= v19)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v23 = v20 >= *v18;
          if (v20 <= *v18)
          {
            v20 = *v18;
          }

          if (v23)
          {
            v21 = a1 + 1;
          }

          else
          {
            v21 = a1 + 2;
          }

          if (v23)
          {
            v22 = 1;
          }

          else
          {
            v22 = 2;
          }

          if (v20 >= v19)
          {
LABEL_48:
            v24 = a1;
            while (1)
            {
              *v24 = v20;
              v24 = v21;
              if (((v3 - 2) >> 1) < v22)
              {
                break;
              }

              v26 = (2 * v22) | 1;
              v21 = &a1[v26];
              v22 = 2 * v22 + 2;
              if (v22 < v3)
              {
                v20 = *v21;
                v25 = v21[1];
                if (*v21 <= v25)
                {
                  v20 = v21[1];
                }

                if (*v21 >= v25)
                {
                  v22 = v26;
                }

                else
                {
                  ++v21;
                }

                if (v20 < v19)
                {
                  break;
                }
              }

              else
              {
                v20 = *v21;
                v22 = v26;
                if (*v21 < v19)
                {
                  break;
                }
              }
            }

            *v24 = v19;
          }
        }
      }
    }
  }

LABEL_59:
  if (v3 >= 2)
  {
    do
    {
      v28 = 0;
      v29 = *a1;
      v30 = (v3 - 2) >> 1;
      v31 = a1;
      do
      {
        while (1)
        {
          v38 = &v31[v28];
          v37 = v38 + 1;
          v39 = (2 * v28) | 1;
          v28 = 2 * v28 + 2;
          if (v28 < v3)
          {
            break;
          }

          v28 = v39;
          *v31 = *v37;
          v31 = v38 + 1;
          if (v39 > v30)
          {
            goto LABEL_73;
          }
        }

        v34 = v38[2];
        v33 = v38 + 2;
        v32 = v34;
        v35 = *(v33 - 1);
        v36 = v35 >= v34;
        if (v35 > v34)
        {
          v32 = *(v33 - 1);
        }

        if (v36)
        {
          v28 = v39;
        }

        else
        {
          v37 = v33;
        }

        *v31 = v32;
        v31 = v37;
      }

      while (v28 <= v30);
LABEL_73:
      if (v37 == --a2)
      {
        *v37 = v29;
      }

      else
      {
        *v37 = *a2;
        *a2 = v29;
        v40 = (v37 - a1 + 8) >> 3;
        v6 = v40 < 2;
        v41 = v40 - 2;
        if (!v6)
        {
          v42 = v41 >> 1;
          v43 = &a1[v42];
          v44 = *v43;
          v45 = *v37;
          if (*v43 < *v37)
          {
            do
            {
              *v37 = v44;
              v37 = v43;
              if (!v42)
              {
                break;
              }

              v42 = (v42 - 1) >> 1;
              v43 = &a1[v42];
              v44 = *v43;
            }

            while (*v43 < v45);
            *v37 = v45;
          }
        }
      }

      v6 = v3-- <= 2;
    }

    while (!v6);
  }

  return i;
}

void sub_1076268(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2675088;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10762BC(void *a1)
{
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      *(v2 + 32) = v3;
      operator delete(v3);
    }

    v4 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v4;
      operator delete(v4);
    }

    operator delete();
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;

    operator delete(v5);
  }
}

void sub_1076454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1F1A8(&a9);
  std::mutex::unlock((v9 + 208));
  _Unwind_Resume(a1);
}

void sub_1076470(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  std::mutex::unlock((v1 + 208));
  _Unwind_Resume(a1);
}

uint64_t sub_10764A4(uint64_t a1, unsigned int *a2, const void **a3, unint64_t a4, int a5)
{
  if (*(a1 + 168) < a4)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v52);
    v7 = sub_4A5C(&v52, "LRUCache: item is too large (", 29);
    v8 = sub_71478(v7, a4);
    v9 = sub_4A5C(v8, " > ", 3);
    v10 = sub_71478(v9, *(a1 + 168));
    sub_4A5C(v10, ")", 1);
    if ((v62 & 0x10) != 0)
    {
      v28 = v61;
      if (v61 < v57)
      {
        v61 = v57;
        v28 = v57;
      }

      v29 = v56;
      v11 = v28 - v56;
      if ((v28 - v56) >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if ((v62 & 8) == 0)
      {
        v11 = 0;
        HIBYTE(v51) = 0;
LABEL_22:
        *(&__dst + v11) = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(v51) < 0)
        {
          operator delete(__dst);
        }

        if (v60 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v53);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v29 = *(&v53 + 1);
      v11 = v55 - *(&v53 + 1);
      if ((v55 - *(&v53 + 1)) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_45:
        sub_3244();
      }
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v51) = v11;
    if (v11)
    {
      memmove(&__dst, v29, v11);
    }

    goto LABEL_22;
  }

  __dst = &__dst;
  p_dst = &__dst;
  v51 = 0;
  std::mutex::lock((a1 + 24));
  v15 = (a2[1] + (*a2 << 6) + (*a2 >> 2) + 2654435769u) ^ *a2;
  v16 = (a2[2] + (v15 << 6) + (v15 >> 2) + 2654435769u) ^ v15;
  v17 = (a2[3] + (v16 << 6) + (v16 >> 2) + 2654435769u) ^ v16;
  v18 = (a2[4] + (v17 << 6) + (v17 >> 2) + 2654435769u) ^ v17;
  v19 = (a2[5] + (v18 << 6) + (v18 >> 2) + 2654435769u) ^ v18;
  v20 = (*(a2 + 24) + (v19 << 6) + (v19 >> 2) + 2654435769u) ^ v19;
  v21 = (*(a2 + 13) + (v20 << 6) + (v20 >> 2) + 2654435769u) ^ v20;
  v22 = (*(a2 + 28) + (v21 << 6) + (v21 >> 2) + 2654435769u) ^ v21;
  *&v52 = a2;
  *(&v52 + 1) = v22;
  v23 = sub_10656F4((a1 + 88), &v52);
  if (*(a1 + 120) == v23)
  {
LABEL_9:
    v24 = *(a1 + 176);
    v25 = a2[2];
    v26 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 184) - v24) >> 3);
    if (v26 <= v25)
    {
      v27 = (v25 + 1);
      if (v27 <= v26)
      {
        if (v27 < v26)
        {
          *(a1 + 184) = v24 + 24 * v27;
        }
      }

      else
      {
        sub_3C0FD0(a1 + 176, v27 - v26);
        LODWORD(v25) = a2[2];
        v24 = *(a1 + 176);
      }
    }

    ++*(v24 + 24 * v25);
    v30 = *(a1 + 8);
    if (v30 != a1)
    {
      v31 = *(a1 + 168) - a4;
      do
      {
        if (*(a1 + 160) <= v31)
        {
          break;
        }

        sub_3D34C8(a1, v30, &__dst);
        v30 = *(a1 + 8);
      }

      while (v30 != a1);
    }

    v32 = *(a2 + 1);
    v52 = *a2;
    v53 = v32;
    v54 = a2[8];
    v33 = (DWORD1(v52) + 2654435769 + (v52 << 6) + (v52 >> 2)) ^ v52;
    v34 = (DWORD2(v52) + 2654435769 + (v33 << 6) + (v33 >> 2)) ^ v33;
    v35 = (SHIDWORD(v52) + 2654435769 + (v34 << 6) + (v34 >> 2)) ^ v34;
    v36 = (v32 + 2654435769 + (v35 << 6) + (v35 >> 2)) ^ v35;
    v37 = (SDWORD1(v32) + 2654435769 + (v36 << 6) + (v36 >> 2)) ^ v36;
    v38 = (BYTE8(v32) + 2654435769 + (v37 << 6) + (v37 >> 2)) ^ v37;
    v39 = (WORD5(v32) + 2654435769 + (v38 << 6) + (v38 >> 2)) ^ v38;
    v40 = *a3;
    v41 = a3[1];
    v55 = (BYTE12(v32) + 2654435769 + (v39 << 6) + (v39 >> 2)) ^ v39;
    v56 = v40;
    v57 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(v41 + 1, 1uLL, memory_order_relaxed);
    }

    v58 = a4;
    operator new();
  }

  if (a5)
  {
    sub_3D34C8(a1, *(v23 + 48), &__dst);
    goto LABEL_9;
  }

  std::mutex::unlock((a1 + 24));
  if (v51)
  {
    v42 = p_dst;
    v43 = *(__dst + 1);
    v44 = *p_dst;
    v44[1] = v43;
    *v43 = v44;
    v51 = 0;
    if (v42 != &__dst)
    {
      do
      {
        v45 = v42[1];
        v46 = v42[9];
        if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v47 = v42;
          (v46->__on_zero_shared)(v46);
          std::__shared_weak_count::__release_weak(v46);
          v42 = v47;
        }

        operator delete(v42);
        v42 = v45;
      }

      while (v45 != &__dst);
    }
  }

  return 0;
}

void sub_1076D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  std::mutex::unlock((v20 + 24));
  sub_3BC67C(&__p);
  _Unwind_Resume(a1);
}

void *sub_1076E3C(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  result[3] = 0;
  if (a2[3])
  {
    operator new();
  }

  return result;
}

void *sub_1076F8C(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  v4 = a2[3];
  v3 = a2[4];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_1077070(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10770A4@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = 0x2127599BF4325C37 * ((((v4 << 32) + (16 * v5)) | (v5 >> 29) & 2 | (v5 >> 31) | (v5 >> 27) & 4 | (v5 >> 25) & 8) ^ (((v4 << 32) + (16 * v5)) >> 23));
  v7 = (v6 ^ ~(v6 >> 47)) + ((v6 ^ (v6 >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(v13 + (v11 & v12));
    v16 = ((v15 ^ (0x101010101010101 * (v9 & 0x7F))) - 0x101010101010101) & ~(v15 ^ (0x101010101010101 * (v9 & 0x7F))) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_9:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      v24 = result;
      v26 = a3;
      v27 = sub_40F814((result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF)), v9);
      a3 = v26;
      v18 = v27;
      result = v24;
      v28 = v10[1] + 16 * v18;
      *v28 = *a2;
      *(v28 + 8) = -1;
      v13 = *v10;
      v17 = v10[1];
      v12 = v10[3];
      v23 = 1;
      goto LABEL_13;
    }

    v3 += 8;
    v11 = v3 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    v19 = (v17 + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    if (v21 == v4 && v20 == v5)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
LABEL_13:
  *a3 = v10;
  *(a3 + 8) = result + 768;
  *(a3 + 16) = v13 + v18;
  *(a3 + 24) = v17 + 16 * v18;
  *(a3 + 32) = v13 + v12;
  *(a3 + 48) = v23;
  return result;
}

void sub_107725C()
{
  byte_27C13E7 = 3;
  LODWORD(qword_27C13D0) = 5136193;
  byte_27C13FF = 3;
  LODWORD(qword_27C13E8) = 5136194;
  byte_27C1417 = 3;
  LODWORD(qword_27C1400) = 5136195;
  byte_27C142F = 15;
  strcpy(&qword_27C1418, "vehicle_mass_kg");
  byte_27C1447 = 21;
  strcpy(&xmmword_27C1430, "vehicle_cargo_mass_kg");
  byte_27C145F = 19;
  strcpy(&qword_27C1448, "vehicle_aux_power_w");
  byte_27C1477 = 15;
  strcpy(&qword_27C1460, "dcdc_efficiency");
  strcpy(&qword_27C1478, "drive_train_efficiency");
  HIBYTE(word_27C148E) = 22;
  operator new();
}

void sub_1077438(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C148E) < 0)
  {
    sub_21E6E38();
  }

  sub_21E6E44();
  _Unwind_Resume(a1);
}

void sub_1077458(void **a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3B0834(a2);
  v4 = sub_3AF144(*a1);
  v5 = sub_2BDE28(v4);
  if (v5)
  {
    v6 = sub_3AF144(*a1);
    LOBYTE(v5) = sub_2BDE20(v6);
  }

  *(a1 + 16) = v5;
  *(a1 + 9) = *(sub_3B1768(*a1) + 3872);
  sub_F8E7AC(a1 + 24, a2);
}

void sub_1077580(_Unwind_Exception *a1)
{
  v3 = v1[549];
  if (v3)
  {
    v1[550] = v3;
    operator delete(v3);
  }

  sub_404134(v1 + 3);
  _Unwind_Resume(a1);
}

void sub_10775A8(uint64_t **a1, uint64_t a2, unsigned int *a3, int *a4, char a5, uint64_t *a6)
{
  v11 = a1;
  sub_F8DE84((a1 + 3), 0);
  a6[1] = *a6;
  v237 = 0u;
  v238 = 0u;
  v236 = 0u;
  sub_108579C(&v236);
  v12 = (*(*(&v236 + 1) + (((*(&v238 + 1) + v238) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(&v238 + 1) + v238) & 0x7F));
  v13 = *(a2 + 16);
  *v12 = *a2;
  v12[1] = v13;
  v14 = __CFADD__(*(&v238 + 1), 1);
  v15 = ++*(&v238 + 1);
  if (!v14)
  {
    v180 = a3 + 2;
    v188 = a5;
    v191 = a3;
    v189 = v11;
    v190 = a2;
    v181 = a6;
    while (1)
    {
      v20 = 16 * (v237 - *(&v236 + 1)) - 1;
      if (v237 == *(&v236 + 1))
      {
        v20 = 0;
      }

      v21 = (*(*(&v236 + 1) + (((v238 + v15 - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v238 + v15 - 1) & 0x7F));
      v22 = v21[1];
      v234 = *v21;
      v235 = v22;
      *(&v238 + 1) = v15 - 1;
      if ((v20 - (v15 + v238) + 1) >= 0x100)
      {
        operator delete(*(v237 - 8));
        *&v237 = v237 - 8;
      }

      v23 = DWORD1(v235);
      if (!v235)
      {
        break;
      }

      v24 = sub_101E790(v11[541], v235, 1);
      if (v24 && (v25 = &v24[-*v24], *v25 >= 9u) && (v26 = *(v25 + 4)) != 0)
      {
        v27 = sub_101E640(&v24[v26 + *&v24[v26]], v23);
        v28 = (v27 - *v27);
        if (*v28 < 5u)
        {
          break;
        }

        v29 = v28[2];
        if (!v29)
        {
          break;
        }

        v30 = *(v27 + v29) - 1;
      }

      else
      {
        v30 = -2;
      }

LABEL_21:
      if (sub_3B8508(*v11) && v30 <= *(v11[1] + 969))
      {
        v30 = 0;
      }

      sub_1078EE0(v11, &v234, a3, a4, a5, v30, &v232);
      v31 = v232;
      v32 = v232[1];
      v192 = v32;
      v193 = *v232;
      if (*v232 != v32)
      {
        if (v30)
        {
          v33 = *(&v238 + 1);
          v34 = v232[1];
          do
          {
            v37 = *(&v236 + 1);
            if (v237 == *(&v236 + 1))
            {
              v38 = 0;
            }

            else
            {
              v38 = 16 * (v237 - *(&v236 + 1)) - 1;
            }

            v39 = v33 + v238;
            if (v38 == v39)
            {
              sub_108579C(&v236);
              v37 = *(&v236 + 1);
              v39 = *(&v238 + 1) + v238;
            }

            v34 = (v34 - 88);
            v35 = (*(v37 + ((v39 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v39 & 0x7F));
            v36 = v34[1];
            *v35 = *v34;
            v35[1] = v36;
            v33 = ++*(&v238 + 1);
          }

          while (v34 != *v31);
        }

        else
        {
          v40 = 0x2E8BA2E8BA2E8BA3 * ((v32 - *v232) >> 3) + 0x2E8BA2E8BA2E8BA3 * ((a6[1] - *a6) >> 3);
          if (0x2E8BA2E8BA2E8BA3 * ((a6[2] - *a6) >> 3) < v40)
          {
            if (v40 <= 0x2E8BA2E8BA2E8BALL)
            {
              operator new();
            }

            sub_1794();
          }

          v41 = *v232;
          v42 = v232[1];
          if (*v232 != v42)
          {
            v43 = a6[1];
            do
            {
              while (1)
              {
                v48 = a6[2];
                if (v43 >= v48)
                {
                  break;
                }

                v44 = *(v41 + 16);
                *v43 = *v41;
                *(v43 + 16) = v44;
                v45 = *(v41 + 32);
                v46 = *(v41 + 48);
                v47 = *(v41 + 64);
                *(v43 + 80) = *(v41 + 80);
                *(v43 + 48) = v46;
                *(v43 + 64) = v47;
                *(v43 + 32) = v45;
                v43 += 88;
                a6[1] = v43;
                v41 += 88;
                if (v41 == v42)
                {
                  goto LABEL_190;
                }
              }

              v49 = *a6;
              v50 = 0x2E8BA2E8BA2E8BA3 * ((v43 - *a6) >> 3);
              v51 = v50 + 1;
              if ((v50 + 1) > 0x2E8BA2E8BA2E8BALL)
              {
                sub_1794();
              }

              v52 = 0x2E8BA2E8BA2E8BA3 * ((v48 - v49) >> 3);
              if (2 * v52 > v51)
              {
                v51 = 2 * v52;
              }

              if (v52 >= 0x1745D1745D1745DLL)
              {
                v53 = 0x2E8BA2E8BA2E8BALL;
              }

              else
              {
                v53 = v51;
              }

              if (v53)
              {
                if (v53 <= 0x2E8BA2E8BA2E8BALL)
                {
                  operator new();
                }

                sub_1808();
              }

              v54 = v43;
              v55 = 8 * ((v43 - *a6) >> 3);
              v56 = *(v41 + 16);
              *v55 = *v41;
              *(v55 + 16) = v56;
              v57 = *(v41 + 32);
              v58 = *(v41 + 48);
              v59 = *(v41 + 64);
              *(v55 + 80) = *(v41 + 80);
              *(v55 + 48) = v58;
              *(v55 + 64) = v59;
              *(v55 + 32) = v57;
              v43 = 88 * v50 + 88;
              v60 = 88 * v50 - (v54 - v49);
              memcpy((v55 - (v54 - v49)), v49, v54 - v49);
              *a6 = v60;
              a6[1] = v43;
              a6[2] = 0;
              if (v49)
              {
                operator delete(v49);
              }

              a6[1] = v43;
              v41 += 88;
            }

            while (v41 != v42);
          }
        }

        goto LABEL_190;
      }

      if (!sub_3B8508(*v11))
      {
        sub_394BD0();
        sub_394BD0();
        sub_394BD0();
        v231[0] = sub_3AF458(*v11);
        v231[1] = v11;
        if (sub_7E7E4(1u))
        {
          sub_19594F8(&v210);
          v61 = sub_4A5C(&v210, "Cache entries for input shortcut ", 33);
          sub_107A414(v61, a2);
          if ((v222 & 0x10) != 0)
          {
            v63 = v221;
            v64 = &v216;
            if (v221 < v217)
            {
              v221 = v217;
              v63 = v217;
              v64 = &v216;
            }
          }

          else
          {
            if ((v222 & 8) == 0)
            {
              v62 = 0;
              HIBYTE(v196.__locale_) = 0;
              goto LABEL_69;
            }

            v63 = v215;
            v64 = &v213;
          }

          v65 = *v64;
          v62 = v63 - *v64;
          if (v62 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v62 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v196.__locale_) = v63 - *v64;
          if (v62)
          {
            memmove(&__dst, v65, v62);
          }

          a5 = v188;
LABEL_69:
          *(&__dst + v62) = 0;
          sub_7E854(&__dst, 1u);
          if (SHIBYTE(v196.__locale_) < 0)
          {
            operator delete(__dst);
          }

          v210 = v183;
          *(&v210 + *(v183 - 3)) = v182;
          if (SHIBYTE(v220) < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v212);
          std::ostream::~ostream();
          std::ios::~ios();
        }

        sub_107A4D8(v231, a2);
        if (sub_7E7E4(1u))
        {
          sub_19594F8(&v210);
          v66 = sub_4A5C(&v210, "Cache entries for failed (current) shortcut ", 44);
          v67 = sub_421CD4(v66, v234);
          v68 = sub_4A5C(v67, "(", 1);
          std::ostream::operator<<();
          v69 = sub_4A5C(v68, ")-->", 4);
          v70 = sub_421CD4(v69, *(&v234 + 1));
          v71 = sub_4A5C(v70, "(", 1);
          std::ostream::operator<<();
          v72 = sub_4A5C(v71, ") cell:", 7);
          sub_2FF718(v72, __ROR8__(v235, 32));
          if ((v222 & 0x10) != 0)
          {
            v74 = v221;
            v75 = &v216;
            if (v221 < v217)
            {
              v221 = v217;
              v74 = v217;
              v75 = &v216;
            }
          }

          else
          {
            if ((v222 & 8) == 0)
            {
              v73 = 0;
              HIBYTE(v196.__locale_) = 0;
              goto LABEL_87;
            }

            v74 = v215;
            v75 = &v213;
          }

          v76 = *v75;
          v73 = v74 - *v75;
          if (v73 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v73 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v196.__locale_) = v74 - *v75;
          if (v73)
          {
            memmove(&__dst, v76, v73);
          }

LABEL_87:
          *(&__dst + v73) = 0;
          sub_7E854(&__dst, 1u);
          a5 = v188;
          if (SHIBYTE(v196.__locale_) < 0)
          {
            operator delete(__dst);
          }

          v210 = v183;
          *(&v210 + *(v183 - 3)) = v182;
          if (SHIBYTE(v220) < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v212);
          std::ostream::~ostream();
          std::ios::~ios();
        }

        sub_107A4D8(v231, &v234);
        v77 = *(v11 + 9);
        v78 = *(v11 + 16);
        v184 = v11[1];
        v186 = v11[553];
        v79 = sub_10AC56C();
        v80 = sub_394BD0();
        v81 = *a4;
        v82 = sub_394BD0();
        v83 = *a4;
        if (v80)
        {
          v84 = v81;
        }

        else
        {
          v84 = 0x7FFFFFFF;
        }

        v85 = *v191;
        if (!v82)
        {
          v83 = 0x7FFFFFFF;
        }

        v210 = *(v190 + 16);
        LODWORD(v211) = *(v190 + 24);
        HIDWORD(v211) = v85;
        v212.__locale_ = __PAIR64__(v84, v79);
        LODWORD(v213) = v83;
        BYTE4(v213) = a5;
        HIWORD(v213) = v77;
        LOBYTE(v214.__locale_) = v78;
        sub_10869E8(&v210, v186, v184, v230);
        v86 = *(v11 + 9);
        v87 = *(v11 + 16);
        v185 = v11[1];
        v187 = v11[553];
        v88 = sub_10AC56C();
        v89 = sub_394BD0();
        v90 = *a4;
        v91 = sub_394BD0();
        v92 = *a4;
        if (v89)
        {
          v93 = v90;
        }

        else
        {
          v93 = 0x7FFFFFFF;
        }

        v94 = *v191;
        if (!v91)
        {
          v92 = 0x7FFFFFFF;
        }

        v210 = v235;
        v211 = __PAIR64__(v94, DWORD2(v235));
        v212.__locale_ = __PAIR64__(v93, v88);
        LODWORD(v213) = v92;
        BYTE4(v213) = a5;
        HIWORD(v213) = v86;
        LOBYTE(v214.__locale_) = v87;
        sub_10869E8(&v210, v187, v185, v229);
        v210 = *(v190 + 16);
        v228[0] = sub_10539D0(v11[541], &v210);
        v228[1] = v95;
        v96 = sub_3AF144(*v11);
        a5 = v188;
        a6 = v181;
        sub_2BDFC8(v96, v228, &v226);
        sub_D7B0(&v210);
        v97 = sub_4A5C(&v212, "Unpacking of shortcut failed: {input_shortcut: {shortcut: '", 59);
        v98 = sub_107A414(v97, v190);
        v99 = sub_4A5C(v98, "', level: ", 10);
        v100 = *(v190 + 16);
        if (v100)
        {
          v101 = sub_101E790(v11[541], v100, 1);
          if (v101)
          {
            v102 = &v101[-*v101];
            if (*v102 >= 9u)
            {
              v103 = *(v102 + 4);
              if (v103)
              {
                sub_101E640(&v101[v103 + *&v101[v103]], HIDWORD(v100));
              }
            }
          }
        }

        std::ostream::operator<<();
        v104 = sub_4A5C(v99, ", cost: '", 9);
        v105 = sub_105D220(v11[552], v190, v191, *a4, v188);
        v106 = sub_705F0(v104, v105);
        v107 = sub_4A5C(v106, "', unwinder_key: '", 18);
        v108 = sub_107B53C(v107, v230);
        v109 = sub_4A5C(v108, "'}, failed_shortcut: {shortcut: '", 33);
        v110 = sub_421CD4(v109, v234);
        v111 = sub_4A5C(v110, "(", 1);
        std::ostream::operator<<();
        v112 = sub_4A5C(v111, ")-->", 4);
        v113 = sub_421CD4(v112, *(&v234 + 1));
        v114 = sub_4A5C(v113, "(", 1);
        std::ostream::operator<<();
        v115 = sub_4A5C(v114, ") cell:", 7);
        sub_2FF718(v115, __ROR8__(v235, 32));
        v116 = sub_4A5C(v109, "', level: ", 10);
        v117 = DWORD1(v235);
        if (v235)
        {
          v118 = sub_101E790(v11[541], v235, 1);
          if (v118)
          {
            v119 = &v118[-*v118];
            if (*v119 >= 9u)
            {
              v120 = *(v119 + 4);
              if (v120)
              {
                sub_101E640(&v118[v120 + *&v118[v120]], v117);
              }
            }
          }
        }

        std::ostream::operator<<();
        v121 = sub_4A5C(v116, ", cost: '", 9);
        v122 = sub_105D220(v11[552], &v234, v191, *a4, v188);
        v123 = sub_705F0(v121, v122);
        v124 = sub_4A5C(v123, "', unwinder_key: '", 18);
        v125 = sub_107B53C(v124, v229);
        v126 = sub_4A5C(v125, "'}, input_arguments: {eval_time: ", 33);
        v127 = sub_258D4(v126);
        sub_4A5C(v127, ", traffic_type: ", 16);
        v128 = std::ostream::operator<<();
        v129 = sub_4A5C(v128, "}, cost_function: {name: ", 25);
        v130 = *(v191 + 31);
        if (v130 >= 0)
        {
          v131 = v180;
        }

        else
        {
          v131 = *(v191 + 1);
        }

        if (v130 >= 0)
        {
          v132 = *(v191 + 31);
        }

        else
        {
          v132 = *(v191 + 2);
        }

        v133 = sub_4A5C(v129, v131, v132);
        v134 = sub_4A5C(v133, ", id: ", 6);
        std::ostream::operator<<();
        sub_4A5C(v134, ", uses_live_speeds: ", 20);
        v135 = std::ostream::operator<<();
        sub_4A5C(v135, ", uses_blockages: ", 18);
        v136 = std::ostream::operator<<();
        sub_4A5C(v136, ", uses_area_incidents: ", 23);
        v137 = std::ostream::operator<<();
        sub_4A5C(v137, "}, cache_hit: ", 14);
        v138 = std::ostream::operator<<();
        sub_4A5C(v138, ", num_scans: ", 13);
        v139 = std::ostream::operator<<();
        v140 = sub_4A5C(v139, ", input_data: {data_build_id: ", 30);
        v141 = sub_3AF114(*v11);
        sub_2D5608(*v141, &__dst);
        if (SHIBYTE(v196.__locale_) >= 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst;
        }

        if (SHIBYTE(v196.__locale_) >= 0)
        {
          locale_high = HIBYTE(v196.__locale_);
        }

        else
        {
          locale_high = v195;
        }

        v144 = sub_4A5C(v140, p_dst, locale_high);
        v145 = sub_4A5C(v144, ", traffic_time: ", 16);
        v209 = sub_3AF11C(*v11);
        v146 = sub_258D4(v145);
        v147 = sub_4A5C(v146, ", snapshots: [", 14);
        sub_73F5C(v226, v227, ", ", &v206);
        if ((v208 & 0x80u) == 0)
        {
          v148 = &v206;
        }

        else
        {
          v148 = v206;
        }

        if ((v208 & 0x80u) == 0)
        {
          v149 = v208;
        }

        else
        {
          v149 = v207;
        }

        v150 = sub_4A5C(v147, v148, v149);
        v151 = sub_4A5C(v150, "], request_with_timestamps: ", 28);
        v152 = sub_74700();
        v153 = sub_7421C(v152);
        v154 = sub_74700();
        v155 = sub_73F1C(v154);
        v156 = sub_3B6890(*v11);
        sub_E925D4(v153, v155, v156, v204);
        if ((v205 & 0x80u) == 0)
        {
          v157 = v204;
        }

        else
        {
          v157 = v204[0];
        }

        if ((v205 & 0x80u) == 0)
        {
          v158 = v205;
        }

        else
        {
          v158 = v204[1];
        }

        v159 = sub_4A5C(v151, v157, v158);
        sub_4A5C(v159, "}}", 2);
        if (v205 < 0)
        {
          operator delete(v204[0]);
          if (v208 < 0)
          {
            goto LABEL_144;
          }

LABEL_138:
          if (SHIBYTE(v196.__locale_) < 0)
          {
LABEL_145:
            operator delete(__dst);
          }
        }

        else
        {
          if ((v208 & 0x80000000) == 0)
          {
            goto LABEL_138;
          }

LABEL_144:
          operator delete(v206);
          if (SHIBYTE(v196.__locale_) < 0)
          {
            goto LABEL_145;
          }
        }

        a2 = v190;
        if (sub_7E7E4(3u))
        {
          sub_19594F8(&__dst);
          if ((v225 & 0x10) != 0)
          {
            v161 = v224;
            v162 = &v218;
            if (v224 < __p)
            {
              v224 = __p;
              v161 = __p;
              v162 = &v218;
            }
          }

          else
          {
            if ((v225 & 8) == 0)
            {
              v160 = 0;
              v208 = 0;
              goto LABEL_155;
            }

            v161 = v217;
            v162 = &v215;
          }

          v163 = *v162;
          v160 = v161 - *v162;
          if (v160 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v160 >= 0x17)
          {
            operator new();
          }

          v208 = v161 - *v162;
          if (v160)
          {
            memmove(&v206, v163, v160);
          }

LABEL_155:
          *(&v206 + v160) = 0;
          if ((v208 & 0x80u) == 0)
          {
            v164 = &v206;
          }

          else
          {
            v164 = v206;
          }

          if ((v208 & 0x80u) == 0)
          {
            v165 = v208;
          }

          else
          {
            v165 = v207;
          }

          sub_4A5C(&__dst, v164, v165);
          if (v208 < 0)
          {
            operator delete(v206);
            v166 = v203;
            if ((v203 & 0x10) != 0)
            {
              goto LABEL_166;
            }

LABEL_163:
            if ((v166 & 8) != 0)
            {
              v168 = v197[2];
              v169 = v197;
              goto LABEL_169;
            }

            v167 = 0;
            v208 = 0;
          }

          else
          {
            v166 = v203;
            if ((v203 & 0x10) == 0)
            {
              goto LABEL_163;
            }

LABEL_166:
            v168 = v202;
            v169 = &v198;
            if (v202 < v199)
            {
              v202 = v199;
              v168 = v199;
              v169 = &v198;
            }

LABEL_169:
            v170 = *v169;
            v167 = v168 - *v169;
            if (v167 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v167 >= 0x17)
            {
              operator new();
            }

            v208 = v168 - *v169;
            if (v167)
            {
              memmove(&v206, v170, v167);
            }
          }

          *(&v206 + v167) = 0;
          sub_7E854(&v206, 3u);
          a5 = v188;
          if (v208 < 0)
          {
            operator delete(v206);
          }

          __dst = v183;
          *(&__dst + *(v183 - 3)) = v182;
          if (v201 < 0)
          {
            operator delete(v200);
          }

          std::locale::~locale(&v196);
          std::ostream::~ostream();
          std::ios::~ios();
        }

        v181[1] = *v181;
        v210 = v179;
        *(&v210 + *(v179 - 3)) = v178;
        v212.__locale_ = v177;
        if (v223 < 0)
        {
          operator delete(v220);
        }

        std::locale::~locale(&v214);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        v171 = v226;
        if (v226)
        {
          v172 = v227;
          v173 = v226;
          if (v227 != v226)
          {
            do
            {
              v174 = *(v172 - 1);
              v172 -= 3;
              if (v174 < 0)
              {
                operator delete(*v172);
              }
            }

            while (v172 != v171);
            v173 = v226;
          }

          v227 = v171;
          operator delete(v173);
        }

        goto LABEL_190;
      }

      a6[1] = *a6;
LABEL_190:
      v175 = v233;
      if (v233 && !atomic_fetch_add(&v233->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v175->__on_zero_shared)(v175);
        std::__shared_weak_count::__release_weak(v175);
      }

      a3 = v191;
      v11 = v189;
      if (v193 != v192)
      {
        v15 = *(&v238 + 1);
        if (*(&v238 + 1))
        {
          continue;
        }
      }

      goto LABEL_3;
    }

    v30 = -1;
    goto LABEL_21;
  }

LABEL_3:
  v16 = *(&v236 + 1);
  v17 = v237;
  *(&v238 + 1) = 0;
  v18 = (v237 - *(&v236 + 1)) >> 3;
  if (v18 >= 3)
  {
    do
    {
      operator delete(*v16);
      v17 = v237;
      v16 = (*(&v236 + 1) + 8);
      *(&v236 + 1) = v16;
      v18 = (v237 - v16) >> 3;
    }

    while (v18 > 2);
  }

  if (v18 == 1)
  {
    v19 = 64;
    goto LABEL_197;
  }

  if (v18 == 2)
  {
    v19 = 128;
LABEL_197:
    *&v238 = v19;
  }

  if (v16 != v17)
  {
    do
    {
      v176 = *v16++;
      operator delete(v176);
    }

    while (v16 != v17);
    if (v237 != *(&v236 + 1))
    {
      *&v237 = v237 + ((*(&v236 + 1) - v237 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v236)
  {
    operator delete(v236);
  }
}

void sub_1078CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p)
{
  sub_1959728(&__p);
  sub_DBE4(&STACK[0x228]);
  sub_1A104(&STACK[0x340]);
  sub_1F1A8(v38 - 192);
  sub_4F0E40(v38 - 144);
  _Unwind_Resume(a1);
}

void sub_1078EE0(void **a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, int *a4@<X3>, char a5@<W4>, int a6@<W5>, void *a7@<X8>)
{
  a1[664] = a1[663];
  a1[661] = a1[660];
  *(a1 + 1332) = 0;
  a1[654] = a1[653];
  v10 = 0x1FFFFFFFFFFFFFA0;
  do
  {
    v12 = &a1[v10];
    if (a1[v10 + 655])
    {
      v13 = v12[656];
      if (v13 >= 0x80)
      {
        v11 = &a1[v10];
        operator delete(v12[653]);
        v12[653] = &unk_2290750;
        v11[658] = 0;
        v11[654] = 0;
        v11[656] = 0;
        v11[655] = 0;
      }

      else if (v13)
      {
        v12[655] = 0;
        memset(v12[653], 128, v13 + 8);
        *(v12[653] + v13) = -1;
        v14 = v12[656];
        if (v14 == 7)
        {
          v15 = 6;
        }

        else
        {
          v15 = v14 - (v14 >> 3);
        }

        a1[v10 + 658] = (v15 - v12[655]);
      }
    }

    v10 += 6;
  }

  while (v10 * 8);
  a1[657] = a1[656];
  *(a1 + 1318) = 0;
  v16 = *a2;
  v104 = *(a2 + 8);
  v105[0] = v16;
  v17 = *(a2 + 16);
  v82 = *(a1 + 9);
  v80 = *(a1 + 16);
  v84 = a1[1];
  v85 = a1[553];
  v18 = sub_10AC56C();
  if (sub_394BD0())
  {
    v19 = *a4;
  }

  else
  {
    v19 = 0x7FFFFFFF;
  }

  v20 = sub_394BD0();
  v21 = *a4;
  if (!v20)
  {
    v21 = 0x7FFFFFFF;
  }

  v22 = *a3;
  *v96 = *(a2 + 16);
  *&v96[8] = *(a2 + 24);
  *&v96[12] = v22;
  *&v96[16] = v18;
  *&v96[20] = v19;
  *&v96[24] = v21;
  v96[28] = a5;
  *&v96[30] = v82;
  v96[32] = v80;
  sub_10869E8(v96, v85, v84, &v103);
  if (v17)
  {
    v23 = sub_101E790(a1[541], v17, 1);
    v24 = a7;
    if (!v23 || (v25 = &v23[-*v23], *v25 < 9u) || (v26 = *(v25 + 4)) == 0)
    {
      v30 = -1;
      goto LABEL_24;
    }

    v27 = sub_101E640(&v23[v26 + *&v23[v26]], HIDWORD(v17));
    v28 = (v27 - *v27);
    if (*v28 >= 5u)
    {
      v29 = v28[2];
      if (v29)
      {
        v30 = *(v27 + v29);
LABEL_24:
        v83 = v30;
        goto LABEL_26;
      }
    }

    v83 = 0;
  }

  else
  {
    v83 = 0;
    v24 = a7;
  }

LABEL_26:
  sub_107B72C(a1[554], &v103, &v100);
  ++*(a1 + 1112);
  if (v102 != 1)
  {
    memset(&v96[48], 0, 32);
    memset(v96, 0, 40);
    *&v96[40] = 0x1000000000000;
    *&v96[80] = 0x1000000000000;
    LODWORD(v97) = 0;
    BYTE4(v97) = 0;
    LODWORD(v98) = 0;
    sub_107B824((a1 + 557), v105, v96);
    __dst = 0;
    v94 = 0;
    v95 = 0;
    __p = 0;
    v91 = 0;
    v92 = 0;
    if (*(a1 + 1332))
    {
      __asm { FMOV            V0.2D, #1.0 }

      v86 = _Q0;
      do
      {
        v46 = &a1[653][14 * *a1[660]];
        v47 = *v46;
        v48 = *(v46 + 8);
        v49 = *(v46 + 104);
        sub_1032874((a1 + 557));
        if (v47 == v104)
        {
          break;
        }

        if (v47 != v105[0])
        {
          *v96 = v83;
          if (sub_101F374(a1[541], HIDWORD(v47) & 0xFFFF0000FFFFFFFFLL | (WORD1(v47) << 32), v96))
          {
            continue;
          }
        }

        if (a6)
        {
          sub_105D3DC(a1[552], v47, a6, 0, a3, *a4, a5, &__p);
          v50 = __p;
          v51 = v91;
          if (__p != v91)
          {
            do
            {
              v52 = *(v50 + 28);
              v53 = v52 & 0xFFFFFFFF00000000;
              if (v52 != -1 && v53 != 0x7FFFFFFF00000000)
              {
                v89 = *(v50 + 1);
                memset(&v96[8], 0, 32);
                *v96 = (v53 + v48) & 0xFFFFFFFF00000000 | (v52 + v48);
                *&v96[40] = 0x1000000000000;
                memset(&v96[48], 0, 32);
                *&v96[80] = 0x1000000000000;
                LODWORD(v97) = 0;
                BYTE4(v97) &= 0xF8u;
                LODWORD(v98) = v49 + 1;
                v55 = *(v50 + 2);
                v56 = *(v50 + 6);
                *&v96[8] = *v50;
                *&v96[24] = v55;
                *&v96[32] = v56;
                sub_107BAB0((a1 + 557), &v89, v96);
              }

              v50 += 40;
            }

            while (v50 != v51);
          }
        }

        else if (!sub_3B8508(*a1) || (v57 = sub_3AF6B4(*a1), v58 = v57, *(v57 + 7774) != 1) || (v59 = sub_2AF704(v57 + 3896, HIDWORD(v47), 1)) != 0 && (v60 = &v59[-*v59], *v60 >= 5u) && (v61 = *(v60 + 2)) != 0 && *&v59[v61 + *&v59[v61]] > WORD1(v47) && sub_2B817C(v58, HIDWORD(v47) & 0xFFFF0000FFFFFFFFLL | (WORD1(v47) << 32)))
        {
          sub_F8ED58((a1 + 3), v47, 0, &__dst, 0);
          v63 = __dst;
          v62 = v94;
          if (__dst != v94)
          {
            v64 = v49 + 1;
            do
            {
              memset(v96, 0, 32);
              *&v96[32] = v86;
              *&v96[48] = 0x3FF0000000000000;
              v96[56] = 1;
              sub_10AB718((a1 + 543), v96, v63, 0x3B9ACA00u, a3);
              if (v96[56])
              {
                v66 = sub_F8634C(v96, &v96[32], v65);
                v68 = *&v96[20] + HIDWORD(v66);
                v69 = *&v96[16] + v66 == -1 || v68 == 0x7FFFFFFF;
                if (!v69 && *&v96[24] + v67 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v89 = ((((v63[9] >> 16) & 0xFFFF0000 | (v63[9] << 32) | (2 * ((v63[9] & 0xFF000000000000) == 0))) + 4 * *(v63 + 41)) & 0xFFFFFFFFFFFFFFFELL | (*(v63 + 84) >> 1) & 1);
                  *v96 = (*&v96[16] + v66 + v48) | ((v68 + HIDWORD(v48)) << 32);
                  v71 = *v63;
                  *&v96[24] = *(v63 + 1);
                  *&v96[8] = v71;
                  v72 = *(v63 + 2);
                  v73 = *(v63 + 3);
                  v74 = *(v63 + 4);
                  v97 = v63[10];
                  *&v96[72] = v74;
                  *&v96[56] = v73;
                  *&v96[40] = v72;
                  LODWORD(v98) = v64;
                  sub_107BAB0((a1 + 557), &v89, v96);
                }
              }

              v63 += 11;
            }

            while (v63 != v62);
          }
        }
      }

      while (*(a1 + 1332));
    }

    operator new();
  }

  ++*(a1 + 1113);
  if (!v100 || *v100 == v100[1])
  {
    v31 = sub_3AF6B4(*a1);
    if (sub_7E7E4(3u))
    {
      sub_19594F8(v96);
      v32 = sub_4A5C(v96, "Failed to unpack ", 17);
      sub_4218B8(v105, v31, &__dst);
      if (v95 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      if (v95 >= 0)
      {
        v34 = HIBYTE(v95);
      }

      else
      {
        v34 = v94;
      }

      v35 = sub_4A5C(v32, p_dst, v34);
      v36 = sub_4A5C(v35, " to ", 4);
      sub_4218B8(&v104, v31, &__p);
      if (v92 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v92 >= 0)
      {
        v38 = HIBYTE(v92);
      }

      else
      {
        v38 = v91;
      }

      v39 = sub_4A5C(v36, p_p, v38);
      sub_4A5C(v39, ": cached shortcut is empty?", 27);
      if (SHIBYTE(v92) < 0)
      {
        operator delete(__p);
        if ((SHIBYTE(v95) & 0x80000000) == 0)
        {
LABEL_44:
          v40 = v99;
          if ((v99 & 0x10) == 0)
          {
            goto LABEL_45;
          }

          goto LABEL_85;
        }
      }

      else if ((SHIBYTE(v95) & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      operator delete(__dst);
      v40 = v99;
      if ((v99 & 0x10) == 0)
      {
LABEL_45:
        if ((v40 & 8) == 0)
        {
          v41 = 0;
          HIBYTE(v95) = 0;
LABEL_93:
          *(&__dst + v41) = 0;
          sub_7E854(&__dst, 3u);
          if (SHIBYTE(v95) < 0)
          {
            operator delete(__dst);
          }

          if (SHIBYTE(v97) < 0)
          {
            operator delete(*&v96[72]);
          }

          std::locale::~locale(&v96[16]);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_98;
        }

        v76 = *&v96[24];
        v41 = *&v96[40] - *&v96[24];
        if (*&v96[40] - *&v96[24] > 0x7FFFFFFFFFFFFFF7uLL)
        {
LABEL_105:
          sub_3244();
        }

LABEL_88:
        if (v41 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v95) = v41;
        if (v41)
        {
          memmove(&__dst, v76, v41);
        }

        goto LABEL_93;
      }

LABEL_85:
      v75 = v98;
      if (v98 < *&v96[56])
      {
        v98 = *&v96[56];
        v75 = *&v96[56];
      }

      v76 = *&v96[48];
      v41 = v75 - *&v96[48];
      if (v75 - *&v96[48] > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_105;
      }

      goto LABEL_88;
    }
  }

LABEL_98:
  v77 = v101;
  *v24 = v100;
  v24[1] = v77;
  if (v77)
  {
    atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v78 = v101;
  if (v101)
  {
    if (!atomic_fetch_add(&v101->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v78->__on_zero_shared)(v78);
      std::__shared_weak_count::__release_weak(v78);
    }
  }
}

void sub_107A204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a52);
  sub_1F1A8(a13);
  if (a40)
  {
    operator delete(a40);
    v54 = a46;
    if (!a46)
    {
LABEL_5:
      sub_1F1A8(v52 - 168);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v54 = a46;
    if (!a46)
    {
      goto LABEL_5;
    }
  }

  operator delete(v54);
  sub_1F1A8(v52 - 168);
  _Unwind_Resume(a1);
}

void *sub_107A414(void *a1, unint64_t *a2)
{
  v4 = sub_421CD4(a1, *a2);
  v5 = sub_4A5C(v4, "(", 1);
  std::ostream::operator<<();
  v6 = sub_4A5C(v5, ")-->", 4);
  v7 = sub_421CD4(v6, a2[1]);
  v8 = sub_4A5C(v7, "(", 1);
  std::ostream::operator<<();
  v9 = sub_4A5C(v8, ") cell:", 7);
  v10 = sub_2FF718(v9, __ROR8__(a2[2], 32));
  v11 = sub_4A5C(v10, ", cost = ", 9);
  sub_705F0(v11, *(a2 + 28));
  return a1;
}

void sub_107A4D8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  p_dst = a2;
  sub_1084F28(v3, &p_dst, &v119);
  if (v119 == v120 && sub_7E7E4(3u))
  {
    sub_19594F8(&p_dst);
    sub_4A5C(&p_dst, "No shortcut entries found.", 26);
    if ((v116 & 0x10) != 0)
    {
      v7 = p_p;
      if (p_p < v113)
      {
        p_p = v113;
        v7 = v113;
      }

      v8 = *(&v112 + 1);
      v6 = v7 - *(&v112 + 1);
      if (v7 - *(&v112 + 1) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_157;
      }
    }

    else
    {
      if ((v116 & 8) == 0)
      {
        v6 = 0;
        HIBYTE(v107) = 0;
LABEL_14:
        *(&__dst + v6) = 0;
        sub_7E854(&__dst, 3u);
        if (SHIBYTE(v107) < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::locale::~locale(&v110);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_19;
      }

      v8 = v111;
      v6 = v112 - v111;
      if (v112 - v111 > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_157:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v107) = v6;
    if (v6)
    {
      memmove(&__dst, v8, v6);
    }

    goto LABEL_14;
  }

LABEL_19:
  v9 = v119;
  v10 = v120;
  if (v119 == v120)
  {
    goto LABEL_146;
  }

  do
  {
    v11 = v9[5];
    if (!v11)
    {
      if (!sub_7E7E4(3u))
      {
        goto LABEL_42;
      }

      sub_19594F8(&p_dst);
      v13 = sub_4A5C(&p_dst, "Invalid cost ptr stored for key ", 32);
      sub_10852AC(v13, v9);
      if ((v116 & 0x10) != 0)
      {
        v15 = p_p;
        v16 = &v112 + 1;
        if (p_p < v113)
        {
          p_p = v113;
          v15 = v113;
          v16 = &v112 + 1;
        }
      }

      else
      {
        if ((v116 & 8) == 0)
        {
          v14 = 0;
          HIBYTE(v107) = 0;
LABEL_37:
          *(&__dst + v14) = 0;
          sub_7E854(&__dst, 3u);
          if (SHIBYTE(v107) < 0)
          {
            operator delete(__dst);
          }

          p_dst = v102;
          *(&p_dst + *(v102 - 3)) = v101;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          std::locale::~locale(&v110);
          std::ostream::~ostream();
          std::ios::~ios();
LABEL_42:
          v11 = v9[5];
          v12 = *(a2 + 16);
          if (!v11)
          {
            goto LABEL_46;
          }

          goto LABEL_43;
        }

        v15 = v112;
        v16 = &v111;
      }

      v17 = *v16;
      v14 = v15 - *v16;
      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v107) = v15 - *v16;
      if (v14)
      {
        memmove(&__dst, v17, v14);
      }

      goto LABEL_37;
    }

    v12 = *(a2 + 16);
LABEL_43:
    v18 = *(v11 + 24);
    if (v18)
    {
      v19 = (*(v18 + 32) - *(v18 + 24)) >> 3;
      __dst = 0;
      v106 = 0;
      v107 = 0;
      v20 = *a2;
      v21 = *(a2 + 16);
      v22 = v9[5];
      if (v22)
      {
        goto LABEL_55;
      }

      goto LABEL_59;
    }

LABEL_46:
    v23 = sub_1055EF8(*(v4 + 4336), v12, 1);
    if (!v23 || (v24 = &v23[-*v23], *v24 < 5u) || !*(v24 + 2) || (v25 = &v23[*(v24 + 2) + *&v23[*(v24 + 2)]], *v25 <= HIDWORD(v12)) || (v26 = &v25[4 * HIDWORD(v12) + 4 + *&v25[4 * HIDWORD(v12) + 4]], v27 = &v26[-*v26], *v27 < 0xBu) || (v28 = *(v27 + 5)) == 0)
    {
      LODWORD(v19) = 0;
      __dst = 0;
      v106 = 0;
      v107 = 0;
      v20 = *a2;
      v21 = *(a2 + 16);
      v22 = v9[5];
      if (!v22)
      {
        goto LABEL_59;
      }

LABEL_55:
      v29 = *(v22 + 24);
      if (!v29)
      {
        goto LABEL_59;
      }

      v30 = *v29;
      v31 = v29[1];
      v32 = (v31 - v30) >> 3;
      if (v32 < 1)
      {
        v50 = v30;
        if (v31 == v30)
        {
          goto LABEL_83;
        }

LABEL_81:
        if (*v50 != v20)
        {
          goto LABEL_83;
        }

        v62 = v50 - v30;
        if ((~(v50 - v30) & 0x7FFF8) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_107;
      }

      if (v31 - v30 == 8)
      {
        v33 = v30;
      }

      else
      {
        v33 = v30;
        do
        {
          v51 = (2 * v32) & 0xFFFFFFFFFFFFFFF8;
          _X14 = v33 + v51;
          __asm { PRFM            #0, [X14] }

          v58 = &v33[v32 >> 1];
          _X13 = v58 + v51;
          __asm { PRFM            #0, [X13] }

          if (*v58 >= v20)
          {
            v61 = 0;
          }

          else
          {
            v61 = v32 >> 1;
          }

          v33 += v61;
          v32 -= v32 >> 1;
        }

        while (v32 > 1);
      }

      v50 = &v33[*v33 < v20];
      if (v31 != v50)
      {
        goto LABEL_81;
      }

LABEL_83:
      if (!sub_7E7E4(3u))
      {
        goto LABEL_102;
      }

      sub_19594F8(&p_dst);
      v63 = sub_4A5C(&p_dst, "Invalid entry id for key ", 25);
      sub_10852AC(v63, v9);
      if ((v116 & 0x10) != 0)
      {
        v65 = p_p;
        v66 = &v112 + 1;
        if (p_p < v113)
        {
          p_p = v113;
          v65 = v113;
          v66 = &v112 + 1;
        }
      }

      else
      {
        if ((v116 & 8) == 0)
        {
          v64 = 0;
          v104 = 0;
LABEL_96:
          *(&v103 + v64) = 0;
          sub_7E854(&v103, 3u);
          if (v104 < 0)
          {
            operator delete(v103);
          }

          p_dst = v102;
          *(&p_dst + *(v102 - 3)) = v101;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_101;
        }

        v65 = v112;
        v66 = &v111;
      }

      v67 = *v66;
      v64 = v65 - *v66;
      if (v64 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v64 >= 0x17)
      {
        operator new();
      }

      v104 = v65 - *v66;
      if (v64)
      {
        memmove(&v103, v67, v64);
      }

      goto LABEL_96;
    }

    LODWORD(v19) = *&v26[v28 + *&v26[v28]];
    __dst = 0;
    v106 = 0;
    v107 = 0;
    v20 = *a2;
    v21 = *(a2 + 16);
    v22 = v9[5];
    if (v22)
    {
      goto LABEL_55;
    }

LABEL_59:
    v34 = sub_1055EF8(*(v4 + 4336), v21, 1);
    if (!v34)
    {
      goto LABEL_83;
    }

    v35 = &v34[-*v34];
    if (*v35 < 5u)
    {
      goto LABEL_83;
    }

    if (!*(v35 + 2))
    {
      goto LABEL_83;
    }

    v36 = &v34[*(v35 + 2) + *&v34[*(v35 + 2)]];
    if (*v36 <= HIDWORD(v21))
    {
      goto LABEL_83;
    }

    v37 = &v36[4 * HIDWORD(v21) + 4 + *&v36[4 * HIDWORD(v21) + 4]];
    v38 = &v37[-*v37];
    if (*v38 < 9u)
    {
      goto LABEL_83;
    }

    v39 = *(v38 + 4);
    if (!v39)
    {
      goto LABEL_83;
    }

    v40 = &v37[v39 + *&v37[v39]];
    v43 = *v40;
    v41 = (v40 + 4);
    v42 = v43;
    if (v43)
    {
      v44 = v41;
      v45 = v42;
      do
      {
        v46 = (v44 + ((4 * v45) & 0x7FFFFFFF8));
        v48 = *v46;
        v47 = (v46 + 1);
        v49 = v45 >> 1;
        v45 += ~(v45 >> 1);
        if (v48 >= v20)
        {
          v45 = v49;
        }

        else
        {
          v44 = v47;
        }
      }

      while (v45);
      if (v44 == &v41[v42])
      {
        goto LABEL_83;
      }
    }

    else
    {
      v44 = v41;
      if (v41 == &v41[v42])
      {
        goto LABEL_83;
      }
    }

    if (*v44 != v20)
    {
      goto LABEL_83;
    }

    v62 = v44 - v41;
    if ((~(v44 - v41) & 0x7FFF8) == 0)
    {
      goto LABEL_83;
    }

LABEL_107:
    v68 = *(a2 + 16);
    v69 = v9[5];
    if (v69 && (v70 = *(v69 + 24)) != 0)
    {
      if ((v70 + 24) != &__dst)
      {
        sub_31F64(&__dst, *(v70 + 24), *(v70 + 32), (*(v70 + 32) - *(v70 + 24)) >> 3);
      }
    }

    else
    {
      v71 = *(v4 + 4336);
      v106 = __dst;
      v72 = sub_1055EF8(v71, v68, 1);
      if (v72)
      {
        v73 = &v72[-*v72];
        if (*v73 >= 5u)
        {
          if (*(v73 + 2))
          {
            v74 = &v72[*(v73 + 2) + *&v72[*(v73 + 2)]];
            if (*v74 > HIDWORD(v68))
            {
              v75 = &v74[4 * HIDWORD(v68) + 4 + *&v74[4 * HIDWORD(v68) + 4]];
              v76 = &v75[-*v75];
              if (*v76 >= 0xBu)
              {
                v77 = *(v76 + 5);
                if (v77)
                {
                  v78 = &v75[v77 + *&v75[v77]];
                  v79 = *v78;
                  p_dst = &__dst;
                  if (v79)
                  {
                    v80 = 8 * v79;
                    v81 = (v78 + 4);
                    do
                    {
                      v103 = *v81;
                      sub_A2324(&p_dst, &v103);
                      ++v81;
                      v80 -= 8;
                    }

                    while (v80);
                  }
                }
              }
            }
          }
        }
      }
    }

    v82 = __dst;
    if (v106 != __dst)
    {
      v83 = (v62 >> 3) * v19;
      v84 = (v106 - __dst) >> 3;
      while (1)
      {
        v85 = *v82;
        v82 += 8;
        if (v85 == *(a2 + 8))
        {
          break;
        }

        ++v83;
        if (!--v84)
        {
          goto LABEL_102;
        }
      }

      if (sub_7E7E4(3u))
      {
        v118 = 0;
        p_dst = v100;
        *(&p_dst + *(v100 - 3)) = v99;
        v86 = (&p_dst + *(p_dst - 3));
        std::ios_base::init(v86, &v109);
        v86[1].__vftable = 0;
        v86[1].__fmtflags_ = -1;
        std::locale::locale(&v110);
        v112 = 0u;
        v113 = 0u;
        v111 = 0u;
        memset(&__p, 0, sizeof(__p));
        v116 = 16;
        p_p = &__p;
        std::string::append(&__p, 0x16uLL, 0);
        size = __p.__r_.__value_.__l.__size_;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        *(&v112 + 1) = &__p;
        *&v113 = &__p;
        *(&v113 + 1) = &__p + size;
        v88 = sub_4A5C(&p_dst, "Cost for ", 9);
        v89 = sub_10852AC(v88, v9);
        v90 = sub_4A5C(v89, ": ", 2);
        v91 = sub_106CA9C(v9[5], v83);
        sub_705F0(v90, *v91);
        if ((v116 & 0x10) != 0)
        {
          v93 = p_p;
          v94 = &v112 + 1;
          if (p_p < v113)
          {
            p_p = v113;
            v93 = v113;
            v94 = &v112 + 1;
          }
        }

        else
        {
          if ((v116 & 8) == 0)
          {
            v92 = 0;
            v104 = 0;
            goto LABEL_140;
          }

          v93 = v112;
          v94 = &v111;
        }

        v95 = *v94;
        v92 = v93 - *v94;
        if (v92 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v92 >= 0x17)
        {
          operator new();
        }

        v104 = v93 - *v94;
        if (v92)
        {
          memmove(&v103, v95, v92);
        }

LABEL_140:
        *(&v103 + v92) = 0;
        sub_7E854(&v103, 3u);
        if (v104 < 0)
        {
          operator delete(v103);
        }

        p_dst = v102;
        *(&p_dst + *(v102 - 3)) = v101;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

LABEL_101:
        std::locale::~locale(&v110);
        std::ostream::~ostream();
        std::ios::~ios();
      }
    }

LABEL_102:
    if (__dst)
    {
      v106 = __dst;
      operator delete(__dst);
    }

    v9 += 7;
  }

  while (v9 != v10);
  v9 = v119;
LABEL_146:
  if (v9)
  {
    v96 = v120;
    v97 = v9;
    if (v120 != v9)
    {
      do
      {
        v98 = *(v96 - 1);
        if (v98)
        {
          if (!atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v98->__on_zero_shared)(v98);
            std::__shared_weak_count::__release_weak(v98);
          }
        }

        v96 -= 7;
      }

      while (v96 != v9);
      v97 = v119;
    }

    v120 = v9;
    operator delete(v97);
  }
}

void sub_107B3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  sub_1959728(&a32);
  if (__p)
  {
    operator delete(__p);
  }

  sub_108543C((v46 - 112));
  _Unwind_Resume(a1);
}

void *sub_107B53C(void *a1, void *a2)
{
  v4 = sub_4A5C(a1, "cell: ", 6);
  v5 = sub_2FF718(v4, __ROR8__(*a2, 32));
  v6 = sub_4A5C(v5, ", ", 2);
  v7 = sub_4A5C(v6, "entry_id: ", 10);
  std::ostream::operator<<();
  v8 = sub_4A5C(v7, ", ", 2);
  v9 = sub_4A5C(v8, "exit_id: ", 9);
  std::ostream::operator<<();
  v10 = sub_4A5C(v9, ", ", 2);
  v11 = sub_4A5C(v10, "cost_function_id: ", 18);
  std::ostream::operator<<();
  v12 = sub_4A5C(v11, ", ", 2);
  v13 = sub_4A5C(v12, "live_speeds_time_stamp: ", 24);
  v14 = sub_258D4(v13);
  v15 = sub_4A5C(v14, ", ", 2);
  v16 = sub_4A5C(v15, "live_blockages_time_stamp: ", 27);
  v17 = sub_258D4(v16);
  v18 = sub_4A5C(v17, ", ", 2);
  v19 = sub_4A5C(v18, "live_area_incidents_time_stamp: ", 32);
  v20 = sub_258D4(v19);
  v21 = sub_4A5C(v20, ", ", 2);
  sub_4A5C(v21, "traffic_type: ", 14);
  v22 = std::ostream::operator<<();
  v23 = sub_4A5C(v22, ", ", 2);
  v24 = sub_4A5C(v23, "free_flow_branch_id: ", 21);
  std::ostream::operator<<();
  v25 = sub_4A5C(v24, ", ", 2);
  sub_4A5C(v25, "traffic_branch_id: ", 19);
  std::ostream::operator<<();
  return a1;
}

unsigned int sub_107B6F4(uint64_t a1, double a2)
{
  v2 = *(a1 + 4448);
  if (!v2)
  {
    return 1000;
  }

  LODWORD(a2) = *(a1 + 4452);
  return vcvtad_u64_f64(*&a2 * 1000.0 / v2);
}

void sub_107B72C(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[2] + 272 * sub_1086BB8(a1, a2);
  sub_1086C98(v13, a2);
  std::mutex::lock((v5 + 24));
  v6 = sub_1086D70((v5 + 88), v13);
  if (*(v5 + 120) == v6)
  {
    ++*(v5 + 192);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    ++*(v5 + 184);
    v7 = *(v6 + 48);
    if (v7 != v5)
    {
      v8 = v7[1];
      if (v8 != v5)
      {
        v9 = *v7;
        *(v9 + 8) = v8;
        *v8 = v9;
        v10 = *v5;
        *(v10 + 8) = v7;
        *v7 = v10;
        *v5 = v7;
        v7[1] = v5;
      }
    }

    v12 = v7[8];
    v11 = v7[9];
    *a3 = v12;
    *(a3 + 8) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    *(a3 + 16) = 1;
  }

  std::mutex::unlock((v5 + 24));
}

void sub_107B824(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  ++*(a1 + 816);
  sub_40D8D4(a1, a2, &v35);
  if (v35)
  {
    v6 = v36;
    v7 = *(a1 + 768) + 112 * *(v36 + 8);
    v9 = *(a3 + 64);
    v8 = *(a3 + 80);
    v10 = *(a3 + 96);
    *(v7 + 56) = *(a3 + 48);
    *(v7 + 104) = v10;
    *(v7 + 88) = v8;
    *(v7 + 72) = v9;
    v11 = *a3;
    v12 = *(a3 + 16);
    *(v7 + 40) = *(a3 + 32);
    *(v7 + 24) = v12;
    *(v7 + 8) = v11;
    v13 = *(v6 + 8);
    v14 = a1 + 824;
  }

  else
  {
    v15 = -1227133513 * ((*(a1 + 776) - *(a1 + 768)) >> 4);
    sub_40D9F8(a1, a2, &v37);
    v16 = v38;
    v17 = *(v37 + 8);
    if (v39 == 1)
    {
      *(v17 + 16 * v38) = *a2;
    }

    *(v17 + 16 * v16 + 8) = v15;
    v18 = *(a1 + 776);
    v19 = *(a1 + 784);
    if (v18 >= v19)
    {
      v26 = *(a1 + 768);
      v27 = 0x6DB6DB6DB6DB6DB7 * ((v18 - v26) >> 4) + 1;
      if (v27 > 0x249249249249249)
      {
        sub_1794();
      }

      v28 = 0x6DB6DB6DB6DB6DB7 * ((v19 - v26) >> 4);
      if (2 * v28 > v27)
      {
        v27 = 2 * v28;
      }

      if (v28 >= 0x124924924924924)
      {
        v29 = 0x249249249249249;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        if (v29 <= 0x249249249249249)
        {
          operator new();
        }

        sub_1808();
      }

      v30 = *(a3 + 32);
      v31 = 16 * ((v18 - v26) >> 4);
      *(v31 + 56) = *(a3 + 48);
      v32 = *(a3 + 80);
      *(v31 + 72) = *(a3 + 64);
      *(v31 + 88) = v32;
      v33 = *(a3 + 16);
      *(v31 + 8) = *a3;
      *(v31 + 24) = v33;
      *v31 = *a2;
      *(v31 + 104) = *(a3 + 96);
      v25 = v31 + 112;
      v34 = (v31 - (v18 - v26));
      *(v31 + 40) = v30;
      memcpy(v34, v26, v18 - v26);
      *(a1 + 768) = v34;
      *(a1 + 776) = v25;
      *(a1 + 784) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v18 = *a2;
      v20 = *a3;
      v21 = *(a3 + 16);
      *(v18 + 40) = *(a3 + 32);
      *(v18 + 24) = v21;
      *(v18 + 8) = v20;
      v22 = *(a3 + 48);
      v23 = *(a3 + 64);
      v24 = *(a3 + 80);
      *(v18 + 104) = *(a3 + 96);
      *(v18 + 88) = v24;
      *(v18 + 72) = v23;
      *(v18 + 56) = v22;
      v25 = v18 + 112;
    }

    *(a1 + 776) = v25;
    v14 = a1 + 824;
    v13 = v15;
  }

  sub_1056B88(v14, v13, a3);
}

uint64_t sub_107BAB0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_40D8D4(a1, a2, &v39);
  if (v39)
  {
    v6 = v40;
    v7 = *(a1 + 768) + 112 * *(v40 + 8);
    v9 = *(v7 + 8);
    v8 = v7 + 8;
    v10 = *a3 >= v9;
    if (*a3 == v9)
    {
      if (*(a3 + 4) >= *(v8 + 4))
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    ++*(a1 + 816);
    v23 = *a3;
    v24 = *(a3 + 32);
    *(v8 + 16) = *(a3 + 16);
    *(v8 + 32) = v24;
    *v8 = v23;
    v25 = *(a3 + 48);
    v26 = *(a3 + 64);
    v27 = *(a3 + 80);
    *(v8 + 96) = *(a3 + 96);
    *(v8 + 64) = v26;
    *(v8 + 80) = v27;
    *(v8 + 48) = v25;
    v28 = *(v6 + 8);
    v29 = a1 + 824;
  }

  else
  {
    ++*(a1 + 816);
    v12 = -1227133513 * ((*(a1 + 776) - *(a1 + 768)) >> 4);
    sub_40D9F8(a1, a2, &v41);
    v13 = v42;
    v14 = *(v41 + 8);
    if (v43 == 1)
    {
      *(v14 + 16 * v42) = *a2;
    }

    *(v14 + 16 * v13 + 8) = v12;
    v15 = *(a1 + 776);
    v16 = *(a1 + 784);
    if (v15 >= v16)
    {
      v30 = *(a1 + 768);
      v31 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v30) >> 4) + 1;
      if (v31 > 0x249249249249249)
      {
        sub_1794();
      }

      v32 = 0x6DB6DB6DB6DB6DB7 * ((v16 - v30) >> 4);
      if (2 * v32 > v31)
      {
        v31 = 2 * v32;
      }

      if (v32 >= 0x124924924924924)
      {
        v33 = 0x249249249249249;
      }

      else
      {
        v33 = v31;
      }

      if (v33)
      {
        if (v33 <= 0x249249249249249)
        {
          operator new();
        }

        sub_1808();
      }

      v34 = *(a3 + 32);
      v35 = 16 * ((v15 - v30) >> 4);
      *(v35 + 56) = *(a3 + 48);
      v36 = *(a3 + 80);
      *(v35 + 72) = *(a3 + 64);
      *(v35 + 88) = v36;
      v37 = *(a3 + 16);
      *(v35 + 8) = *a3;
      *(v35 + 24) = v37;
      *v35 = *a2;
      *(v35 + 104) = *(a3 + 96);
      v22 = v35 + 112;
      v38 = (v35 - (v15 - v30));
      *(v35 + 40) = v34;
      memcpy(v38, v30, v15 - v30);
      *(a1 + 768) = v38;
      *(a1 + 776) = v22;
      *(a1 + 784) = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *v15 = *a2;
      v17 = *a3;
      v18 = *(a3 + 16);
      *(v15 + 40) = *(a3 + 32);
      *(v15 + 24) = v18;
      *(v15 + 8) = v17;
      v19 = *(a3 + 48);
      v20 = *(a3 + 64);
      v21 = *(a3 + 80);
      *(v15 + 104) = *(a3 + 96);
      *(v15 + 88) = v21;
      *(v15 + 72) = v20;
      *(v15 + 56) = v19;
      v22 = v15 + 112;
    }

    *(a1 + 776) = v22;
    v29 = a1 + 824;
    v28 = v12;
  }

  sub_1056B88(v29, v28, a3);
  return 1;
}

void sub_107BD70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    v8 = *(a2 + 64);
    *(v3 + 80) = *(a2 + 80);
    *(v3 + 48) = v7;
    *(v3 + 64) = v8;
    *(v3 + 32) = v6;
    v9 = v3 + 88;
LABEL_3:
    *(a1 + 8) = v9;
    return;
  }

  v10 = *a1;
  v11 = 0x2E8BA2E8BA2E8BA3 * ((v3 - *a1) >> 3);
  v12 = v11 + 1;
  if ((v11 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1794();
  }

  v13 = 0x2E8BA2E8BA2E8BA3 * ((v4 - v10) >> 3);
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0x1745D1745D1745DLL)
  {
    v14 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    if (v14 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = *(a2 + 48);
  v16 = 8 * ((v3 - *a1) >> 3);
  *(v16 + 32) = *(a2 + 32);
  *(v16 + 48) = v15;
  *(v16 + 64) = *(a2 + 64);
  *(v16 + 80) = *(a2 + 80);
  v17 = *(a2 + 16);
  *v16 = *a2;
  *(v16 + 16) = v17;
  v9 = 88 * v11 + 88;
  v18 = 88 * v11 - (v3 - v10);
  memcpy((v16 - (v3 - v10)), v10, v3 - v10);
  *a1 = v18;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (!v10)
  {
    goto LABEL_3;
  }

  operator delete(v10);
  *(a1 + 8) = v9;
}

void sub_107BEF4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 16) - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      if ((0x2E8BA2E8BA2E8BA3 * (v4 >> 3)) < 0x2E8BA2E8BA2E8BBLL)
      {
        operator new();
      }

      sub_1808();
    }

    if (v4 < v3)
    {
      v6 = 8 * (v4 >> 3);
      v7 = *(a1 + 8) - v2;
      v8 = v6 - v7;
      memcpy((v6 - v7), v2, v7);
      *a1 = v8;
      *(a1 + 8) = v6;
      *(a1 + 16) = v6;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

void sub_107C014(void **a1, void *a2)
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
  sub_F8FE74(a1 + 24, a2);
}

void sub_107C13C(_Unwind_Exception *a1)
{
  if (*(v1 + 9728) == 1)
  {
    sub_3E3DF0((v1 + 4416));
  }

  sub_404134((v1 + 24));
  _Unwind_Resume(a1);
}

void sub_107C170(uint64_t *a1, uint64_t a2, uint64_t a3, signed int *a4, int a5, void *a6)
{
  v7 = a5;
  v8 = a3;
  v9 = a1;
  if (*(a3 + 176))
  {
    v10 = 1;
  }

  else
  {
    v10 = 1;
    if ((*(a3 + 177) & 1) == 0 && !*(a3 + 1144) && *(a3 + 1148) == 0)
    {
      v10 = *(a3 + 1152) != 0;
    }
  }

  v12 = a5 == 2 && v10;
  sub_F8DE84((a1 + 3), v12);
  a6[1] = *a6;
  v242 = 0u;
  v243 = 0u;
  v241 = 0u;
  sub_108579C(&v241);
  v13 = (*(*(&v241 + 1) + (((*(&v243 + 1) + v243) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(&v243 + 1) + v243) & 0x7F));
  v14 = *(a2 + 16);
  *v13 = *a2;
  v13[1] = v14;
  v15 = __CFADD__(*(&v243 + 1), 1);
  v16 = ++*(&v243 + 1);
  if (!v15)
  {
    v183 = v8 + 2;
    v193 = v7;
    v195 = v8;
    v184 = a6;
    while (1)
    {
      v21 = 16 * (v242 - *(&v241 + 1)) - 1;
      if (v242 == *(&v241 + 1))
      {
        v21 = 0;
      }

      v22 = (*(*(&v241 + 1) + (((v243 + v16 - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v243 + v16 - 1) & 0x7F));
      v23 = v22[1];
      v239 = *v22;
      v240 = v23;
      *(&v243 + 1) = v16 - 1;
      if ((v21 - (v16 + v243) + 1) >= 0x100)
      {
        operator delete(*(v242 - 8));
        *&v242 = v242 - 8;
      }

      v24 = DWORD1(v240);
      if (!v240)
      {
        break;
      }

      v25 = sub_101E790(v9[541], v240, 1);
      if (v25 && (v26 = &v25[-*v25], *v26 >= 9u) && (v27 = *(v26 + 4)) != 0)
      {
        v28 = sub_101E640(&v25[v27 + *&v25[v27]], v24);
        v29 = (v28 - *v28);
        if (*v29 < 5u)
        {
          break;
        }

        v30 = v29[2];
        if (!v30)
        {
          break;
        }

        v31 = *(v28 + v30) - 1;
      }

      else
      {
        v31 = -2;
      }

LABEL_33:
      if (sub_3B8508(*v9) && v31 <= *(v9[1] + 3876))
      {
        v31 = 0;
      }

      sub_107DA9C(v9, &v239, v8, a4, v7, v31, &v237);
      v32 = v237;
      v33 = v237[1];
      v196 = v33;
      v197 = *v237;
      if (*v237 == v33)
      {
        if (!sub_3B8508(*v9))
        {
          sub_10B7504((v9 + 543), v8, *a4, v7);
          sub_10B0C98((v9 + 543), v8, *a4, v7);
          sub_10B7604((v9 + 543), v8, *a4, v7);
          v236[0] = sub_3AF460(*v9);
          v236[1] = v9;
          if (sub_7E7E4(1u))
          {
            sub_19594F8(&v215);
            v63 = sub_4A5C(&v215, "Cache entries for input shortcut ", 33);
            sub_107A414(v63, a2);
            if ((v227 & 0x10) != 0)
            {
              v65 = v226;
              v66 = &v221;
              if (v226 < v222)
              {
                v226 = v222;
                v65 = v222;
                v66 = &v221;
              }
            }

            else
            {
              if ((v227 & 8) == 0)
              {
                v64 = 0;
                HIBYTE(v201.__locale_) = 0;
                goto LABEL_80;
              }

              v65 = v220;
              v66 = &v218;
            }

            v67 = *v66;
            v64 = v65 - *v66;
            if (v64 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v64 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v201.__locale_) = v65 - *v66;
            if (v64)
            {
              memmove(&__dst, v67, v64);
            }

            v7 = v193;
LABEL_80:
            *(&__dst + v64) = 0;
            sub_7E854(&__dst, 1u);
            if (SHIBYTE(v201.__locale_) < 0)
            {
              operator delete(__dst);
            }

            v215 = v186;
            *(&v215 + *(v186 - 3)) = v185;
            if (SHIBYTE(v225) < 0)
            {
              operator delete(__p);
            }

            std::locale::~locale(&v217);
            std::ostream::~ostream();
            std::ios::~ios();
          }

          sub_107EFEC(v236, a2);
          if (sub_7E7E4(1u))
          {
            sub_19594F8(&v215);
            v68 = sub_4A5C(&v215, "Cache entries for failed (current) shortcut ", 44);
            v69 = sub_421CD4(v68, v239);
            v70 = sub_4A5C(v69, "(", 1);
            std::ostream::operator<<();
            v71 = sub_4A5C(v70, ")-->", 4);
            v72 = sub_421CD4(v71, *(&v239 + 1));
            v73 = sub_4A5C(v72, "(", 1);
            std::ostream::operator<<();
            v74 = sub_4A5C(v73, ") cell:", 7);
            sub_2FF718(v74, __ROR8__(v240, 32));
            if ((v227 & 0x10) != 0)
            {
              v76 = v226;
              v77 = &v221;
              if (v226 < v222)
              {
                v226 = v222;
                v76 = v222;
                v77 = &v221;
              }
            }

            else
            {
              if ((v227 & 8) == 0)
              {
                v75 = 0;
                HIBYTE(v201.__locale_) = 0;
                goto LABEL_98;
              }

              v76 = v220;
              v77 = &v218;
            }

            v78 = *v77;
            v75 = v76 - *v77;
            if (v75 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v75 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v201.__locale_) = v76 - *v77;
            if (v75)
            {
              memmove(&__dst, v78, v75);
            }

LABEL_98:
            *(&__dst + v75) = 0;
            sub_7E854(&__dst, 1u);
            v7 = v193;
            if (SHIBYTE(v201.__locale_) < 0)
            {
              operator delete(__dst);
            }

            v215 = v186;
            *(&v215 + *(v186 - 3)) = v185;
            if (SHIBYTE(v225) < 0)
            {
              operator delete(__p);
            }

            std::locale::~locale(&v217);
            std::ostream::~ostream();
            std::ios::~ios();
          }

          sub_107EFEC(v236, &v239);
          v79 = *(v9 + 9);
          v80 = *(v9 + 16);
          v189 = v9[1];
          v191 = v9[1221];
          v187 = v9[1223];
          v81 = sub_10B7414((v9 + 543), v195, *a4, v7);
          v82 = sub_10B0C98((v9 + 543), v195, *a4, v7);
          v83 = *a4;
          v84 = sub_10B7604((v9 + 543), v195, *a4, v7);
          v85 = *a4;
          if (v82)
          {
            v86 = v83;
          }

          else
          {
            v86 = 0x7FFFFFFF;
          }

          v87 = *v195;
          if (!v84)
          {
            v85 = 0x7FFFFFFF;
          }

          v215 = *(a2 + 16);
          LODWORD(v216) = *(a2 + 24);
          HIDWORD(v216) = v87;
          v217.__locale_ = __PAIR64__(v86, v81);
          LODWORD(v218) = v85;
          BYTE4(v218) = v7;
          HIWORD(v218) = v79;
          LOBYTE(v219.__locale_) = v80;
          sub_1087C40(&v215, v191, v189, v187, v235);
          v88 = *(v9 + 9);
          v89 = *(v9 + 16);
          v190 = v9[1];
          v192 = v9[1221];
          v188 = v9[1223];
          v90 = sub_10B7414((v9 + 543), v195, *a4, v7);
          v91 = sub_10B0C98((v9 + 543), v195, *a4, v7);
          v92 = *a4;
          v93 = sub_10B7604((v9 + 543), v195, *a4, v7);
          v94 = *a4;
          if (v91)
          {
            v95 = v92;
          }

          else
          {
            v95 = 0x7FFFFFFF;
          }

          v96 = *v195;
          if (!v93)
          {
            v94 = 0x7FFFFFFF;
          }

          v215 = v240;
          v216 = __PAIR64__(v96, DWORD2(v240));
          v217.__locale_ = __PAIR64__(v95, v90);
          LODWORD(v218) = v94;
          BYTE4(v218) = v7;
          HIWORD(v218) = v88;
          LOBYTE(v219.__locale_) = v89;
          sub_1087C40(&v215, v192, v190, v188, v234);
          v215 = *(a2 + 16);
          v233[0] = sub_10539D0(v9[541], &v215);
          v233[1] = v97;
          v98 = sub_3AF144(*v9);
          v7 = v193;
          a6 = v184;
          sub_2BDFC8(v98, v233, &v231);
          v99 = v9;
          sub_D7B0(&v215);
          v100 = sub_4A5C(&v217, "Unpacking of shortcut failed: {input_shortcut: {shortcut: '", 59);
          v101 = sub_107A414(v100, a2);
          v102 = sub_4A5C(v101, "', level: ", 10);
          v103 = *(a2 + 16);
          if (v103)
          {
            v104 = sub_101E790(v99[541], v103, 1);
            if (v104)
            {
              v105 = &v104[-*v104];
              if (*v105 >= 9u)
              {
                v106 = *(v105 + 4);
                if (v106)
                {
                  sub_101E640(&v104[v106 + *&v104[v106]], HIDWORD(v103));
                }
              }
            }
          }

          std::ostream::operator<<();
          v107 = sub_4A5C(v102, ", cost: '", 9);
          v108 = sub_105F93C(v99[1220], a2, v195, *a4, v193);
          v109 = sub_705F0(v107, v108);
          v110 = sub_4A5C(v109, "', unwinder_key: '", 18);
          v111 = sub_107B53C(v110, v235);
          v112 = sub_4A5C(v111, "'}, failed_shortcut: {shortcut: '", 33);
          v113 = sub_421CD4(v112, v239);
          v114 = sub_4A5C(v113, "(", 1);
          std::ostream::operator<<();
          v115 = sub_4A5C(v114, ")-->", 4);
          v116 = sub_421CD4(v115, *(&v239 + 1));
          v117 = sub_4A5C(v116, "(", 1);
          std::ostream::operator<<();
          v118 = sub_4A5C(v117, ") cell:", 7);
          sub_2FF718(v118, __ROR8__(v240, 32));
          v119 = sub_4A5C(v112, "', level: ", 10);
          v120 = DWORD1(v240);
          if (v240)
          {
            v121 = sub_101E790(v99[541], v240, 1);
            if (v121)
            {
              v122 = &v121[-*v121];
              if (*v122 >= 9u)
              {
                v123 = *(v122 + 4);
                if (v123)
                {
                  sub_101E640(&v121[v123 + *&v121[v123]], v120);
                }
              }
            }
          }

          std::ostream::operator<<();
          v124 = sub_4A5C(v119, ", cost: '", 9);
          v125 = sub_105F93C(v99[1220], &v239, v195, *a4, v193);
          v126 = sub_705F0(v124, v125);
          v127 = sub_4A5C(v126, "', unwinder_key: '", 18);
          v128 = sub_107B53C(v127, v234);
          v129 = sub_4A5C(v128, "'}, input_arguments: {eval_time: ", 33);
          v130 = sub_258D4(v129);
          sub_4A5C(v130, ", traffic_type: ", 16);
          v131 = std::ostream::operator<<();
          v132 = sub_4A5C(v131, "}, cost_function: {name: ", 25);
          v133 = *(v195 + 31);
          if (v133 >= 0)
          {
            v134 = v183;
          }

          else
          {
            v134 = *(v195 + 8);
          }

          if (v133 >= 0)
          {
            v135 = *(v195 + 31);
          }

          else
          {
            v135 = *(v195 + 16);
          }

          v136 = sub_4A5C(v132, v134, v135);
          v137 = sub_4A5C(v136, ", id: ", 6);
          std::ostream::operator<<();
          sub_4A5C(v137, ", uses_live_speeds: ", 20);
          v138 = std::ostream::operator<<();
          sub_4A5C(v138, ", uses_blockages: ", 18);
          v139 = std::ostream::operator<<();
          sub_4A5C(v139, ", uses_area_incidents: ", 23);
          v140 = std::ostream::operator<<();
          sub_4A5C(v140, "}, cache_hit: ", 14);
          v141 = std::ostream::operator<<();
          sub_4A5C(v141, ", num_scans: ", 13);
          v142 = std::ostream::operator<<();
          v143 = sub_4A5C(v142, ", input_data: {data_build_id: ", 30);
          v144 = sub_3AF114(*v99);
          sub_2D5608(*v144, &__dst);
          if (SHIBYTE(v201.__locale_) >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          if (SHIBYTE(v201.__locale_) >= 0)
          {
            locale_high = HIBYTE(v201.__locale_);
          }

          else
          {
            locale_high = v200;
          }

          v147 = sub_4A5C(v143, p_dst, locale_high);
          v148 = sub_4A5C(v147, ", traffic_time: ", 16);
          v214 = sub_3AF11C(*v99);
          v149 = sub_258D4(v148);
          v150 = sub_4A5C(v149, ", snapshots: [", 14);
          sub_73F5C(v231, v232, ", ", &v211);
          if ((v213 & 0x80u) == 0)
          {
            v151 = &v211;
          }

          else
          {
            v151 = v211;
          }

          if ((v213 & 0x80u) == 0)
          {
            v152 = v213;
          }

          else
          {
            v152 = v212;
          }

          v153 = sub_4A5C(v150, v151, v152);
          v154 = sub_4A5C(v153, "], request_with_timestamps: ", 28);
          v155 = sub_74700();
          v156 = sub_7421C(v155);
          v157 = sub_74700();
          v158 = sub_73F1C(v157);
          v159 = sub_3B6890(*v99);
          sub_E925D4(v156, v158, v159, v209);
          if ((v210 & 0x80u) == 0)
          {
            v160 = v209;
          }

          else
          {
            v160 = v209[0];
          }

          if ((v210 & 0x80u) == 0)
          {
            v161 = v210;
          }

          else
          {
            v161 = v209[1];
          }

          v162 = sub_4A5C(v154, v160, v161);
          sub_4A5C(v162, "}}", 2);
          if (v210 < 0)
          {
            operator delete(v209[0]);
            if (v213 < 0)
            {
              goto LABEL_155;
            }

LABEL_149:
            if (SHIBYTE(v201.__locale_) < 0)
            {
LABEL_156:
              operator delete(__dst);
            }
          }

          else
          {
            if ((v213 & 0x80000000) == 0)
            {
              goto LABEL_149;
            }

LABEL_155:
            operator delete(v211);
            if (SHIBYTE(v201.__locale_) < 0)
            {
              goto LABEL_156;
            }
          }

          v9 = v99;
          if (sub_7E7E4(3u))
          {
            sub_19594F8(&__dst);
            if ((v230 & 0x10) != 0)
            {
              v164 = v229;
              v165 = &v223;
              if (v229 < __p)
              {
                v229 = __p;
                v164 = __p;
                v165 = &v223;
              }
            }

            else
            {
              if ((v230 & 8) == 0)
              {
                v163 = 0;
                v213 = 0;
                goto LABEL_166;
              }

              v164 = v222;
              v165 = &v220;
            }

            v166 = *v165;
            v163 = v164 - *v165;
            if (v163 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v163 >= 0x17)
            {
              operator new();
            }

            v213 = v164 - *v165;
            if (v163)
            {
              memmove(&v211, v166, v163);
            }

LABEL_166:
            *(&v211 + v163) = 0;
            if ((v213 & 0x80u) == 0)
            {
              v167 = &v211;
            }

            else
            {
              v167 = v211;
            }

            if ((v213 & 0x80u) == 0)
            {
              v168 = v213;
            }

            else
            {
              v168 = v212;
            }

            sub_4A5C(&__dst, v167, v168);
            if (v213 < 0)
            {
              operator delete(v211);
              v169 = v208;
              if ((v208 & 0x10) != 0)
              {
                goto LABEL_177;
              }

LABEL_174:
              if ((v169 & 8) != 0)
              {
                v171 = v202[2];
                v172 = v202;
                goto LABEL_180;
              }

              v170 = 0;
              v213 = 0;
            }

            else
            {
              v169 = v208;
              if ((v208 & 0x10) == 0)
              {
                goto LABEL_174;
              }

LABEL_177:
              v171 = v207;
              v172 = &v203;
              if (v207 < v204)
              {
                v207 = v204;
                v171 = v204;
                v172 = &v203;
              }

LABEL_180:
              v173 = *v172;
              v170 = v171 - *v172;
              if (v170 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v170 >= 0x17)
              {
                operator new();
              }

              v213 = v171 - *v172;
              if (v170)
              {
                memmove(&v211, v173, v170);
              }
            }

            *(&v211 + v170) = 0;
            sub_7E854(&v211, 3u);
            v7 = v193;
            if (v213 < 0)
            {
              operator delete(v211);
            }

            __dst = v186;
            *(&__dst + *(v186 - 3)) = v185;
            if (v206 < 0)
            {
              operator delete(v205);
            }

            std::locale::~locale(&v201);
            std::ostream::~ostream();
            std::ios::~ios();
          }

          v184[1] = *v184;
          v215 = v182;
          *(&v215 + *(v182 - 3)) = v181;
          v217.__locale_ = v180;
          if (v228 < 0)
          {
            operator delete(v225);
          }

          std::locale::~locale(&v219);
          std::iostream::~basic_iostream();
          std::ios::~ios();
          v174 = v231;
          if (v231)
          {
            v175 = v232;
            v176 = v231;
            if (v232 != v231)
            {
              do
              {
                v177 = *(v175 - 1);
                v175 -= 3;
                if (v177 < 0)
                {
                  operator delete(*v175);
                }
              }

              while (v175 != v174);
              v176 = v231;
            }

            v232 = v174;
            operator delete(v176);
          }

          goto LABEL_201;
        }

        a6[1] = *a6;
      }

      else if (v31)
      {
        v34 = *(&v243 + 1);
        v35 = v237[1];
        do
        {
          v39 = *(&v241 + 1);
          if (v242 == *(&v241 + 1))
          {
            v40 = 0;
          }

          else
          {
            v40 = 16 * (v242 - *(&v241 + 1)) - 1;
          }

          v41 = v34 + v243;
          if (v40 == v41)
          {
            sub_108579C(&v241);
            v39 = *(&v241 + 1);
            v41 = *(&v243 + 1) + v243;
          }

          v36 = (*(v39 + ((v41 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v41 & 0x7F));
          v37 = *(v35 - 96);
          v38 = *(v35 - 80);
          v35 -= 96;
          *v36 = v37;
          v36[1] = v38;
          v34 = ++*(&v243 + 1);
        }

        while (v35 != *v32);
      }

      else
      {
        v42 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *v237) >> 5) - 0x5555555555555555 * ((a6[1] - *a6) >> 5);
        if (0xAAAAAAAAAAAAAAABLL * ((a6[2] - *a6) >> 5) < v42)
        {
          if (v42 <= 0x2AAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1794();
        }

        v43 = *v237;
        v44 = v237[1];
        if (*v237 != v44)
        {
          v45 = a6[1];
          do
          {
            v50 = a6[2];
            if (v45 < v50)
            {
              v46 = v43[1];
              *v45 = *v43;
              *(v45 + 1) = v46;
              v47 = v43[2];
              v48 = v43[3];
              v49 = v43[5];
              *(v45 + 4) = v43[4];
              *(v45 + 5) = v49;
              *(v45 + 2) = v47;
              *(v45 + 3) = v48;
              v45 += 96;
            }

            else
            {
              v51 = *a6;
              v52 = 0xAAAAAAAAAAAAAAABLL * (&v45[-*a6] >> 5);
              v53 = v52 + 1;
              if (v52 + 1 > 0x2AAAAAAAAAAAAAALL)
              {
                sub_1794();
              }

              v54 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v51) >> 5);
              if (2 * v54 > v53)
              {
                v53 = 2 * v54;
              }

              if (v54 >= 0x155555555555555)
              {
                v55 = 0x2AAAAAAAAAAAAAALL;
              }

              else
              {
                v55 = v53;
              }

              if (v55)
              {
                if (v55 <= 0x2AAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_1808();
              }

              v56 = v45;
              v57 = (32 * (&v45[-*a6] >> 5));
              v58 = v43[1];
              *v57 = *v43;
              v57[1] = v58;
              v59 = v43[2];
              v60 = v43[3];
              v61 = v43[5];
              v57[4] = v43[4];
              v57[5] = v61;
              v57[2] = v59;
              v57[3] = v60;
              v45 = (96 * v52 + 96);
              v62 = (96 * v52 - (v56 - v51));
              memcpy(v62, v51, v56 - v51);
              *a6 = v62;
              a6[1] = v45;
              a6[2] = 0;
              if (v51)
              {
                operator delete(v51);
              }
            }

            a6[1] = v45;
            v43 += 6;
          }

          while (v43 != v44);
        }
      }

LABEL_201:
      v178 = v238;
      if (v238 && !atomic_fetch_add(&v238->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v178->__on_zero_shared)(v178);
        std::__shared_weak_count::__release_weak(v178);
      }

      v8 = v195;
      if (v197 != v196)
      {
        v16 = *(&v243 + 1);
        if (*(&v243 + 1))
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v31 = -1;
    goto LABEL_33;
  }

LABEL_15:
  v17 = *(&v241 + 1);
  v18 = v242;
  *(&v243 + 1) = 0;
  v19 = (v242 - *(&v241 + 1)) >> 3;
  if (v19 >= 3)
  {
    do
    {
      operator delete(*v17);
      v18 = v242;
      v17 = (*(&v241 + 1) + 8);
      *(&v241 + 1) = v17;
      v19 = (v242 - v17) >> 3;
    }

    while (v19 > 2);
  }

  if (v19 == 1)
  {
    v20 = 64;
    goto LABEL_208;
  }

  if (v19 == 2)
  {
    v20 = 128;
LABEL_208:
    *&v243 = v20;
  }

  if (v17 != v18)
  {
    do
    {
      v179 = *v17++;
      operator delete(v179);
    }

    while (v17 != v18);
    if (v242 != *(&v241 + 1))
    {
      *&v242 = v242 + ((*(&v241 + 1) - v242 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v241)
  {
    operator delete(v241);
  }
}