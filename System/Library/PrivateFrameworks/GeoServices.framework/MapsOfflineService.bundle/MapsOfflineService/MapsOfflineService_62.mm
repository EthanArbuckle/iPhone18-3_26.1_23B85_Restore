uint64_t sub_3FFAC8(void **a1, uint64_t a2, uint64_t a3)
{
  while (!sub_3E6794(a1, a2))
  {
    v8 = sub_4D1F50(*a1, a1[1]);
    v9 = (*v8 - **v8);
    if (*v9 >= 0x1Du && (v10 = v9[14]) != 0)
    {
      if ((*(v8 + 39) & 0x20) != 0)
      {
        v11 = *(*v8 + v10);
      }

      else
      {
        v11 = -*(*v8 + v10);
      }

      v12 = *(a3 + 128);
      if (v12 == *(a3 + 132))
      {
LABEL_13:
        v7 = v12 + 1;
        sub_1959094((a3 + 128), v12 + 1);
        *(*(a3 + 136) + 8 * v12) = v11;
        goto LABEL_4;
      }
    }

    else
    {
      v11 = 0;
      v12 = *(a3 + 128);
      if (v12 == *(a3 + 132))
      {
        goto LABEL_13;
      }
    }

    *(*(a3 + 136) + 8 * v12) = v11;
    v7 = v12 + 1;
LABEL_4:
    *(a3 + 128) = v7;
    sub_3E3AF4(a1);
  }

  return a3;
}

void sub_3FFBB4(uint64_t *a1, uint64_t a2)
{
  if (!*(a1 + 220))
  {
    return;
  }

  while (2)
  {
    v4 = a1[104];
    v5 = (a1[97] + 16 * *v4);
    v6 = *v5;
    v7 = v5[1];
    sub_DD38((a1 + 100), v4);
    v8 = a1[104];
    *(a1[107] + 4 * *v8) = -1;
    v9 = *(a1 + 220) - 1;
    *(a1 + 220) = v9;
    if (v9)
    {
      v10 = &v8[4 * v9];
      *v8 = *v10;
      *(v8 + 1) = *(v10 + 1);
      v11 = a1[104];
      *(a1[107] + 4 * *v11) = 0;
      v12 = *(a1 + 220);
      if (v12 >= 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 1;
        do
        {
          v16 = v13 + 5;
          if (v16 >= v12)
          {
            v17 = v12;
          }

          else
          {
            v17 = v16;
          }

          if (v16 <= v15)
          {
            break;
          }

          v18 = v14;
          v19 = *&v11[4 * v14 + 2];
          v20 = &v11[4 * v15 + 2];
          v14 = -1;
          v21 = v19;
          do
          {
            v23 = *v20;
            v20 += 4;
            v22 = v23;
            if (v23 < v21)
            {
              v21 = v22;
              v14 = v15;
            }

            ++v15;
          }

          while (v15 < v17);
          if (v14 >= v12)
          {
            break;
          }

          v24 = 4 * v14;
          v25 = &v11[v24];
          v26 = 16 * v18;
          v27 = v11 + v26;
          v28 = *v25;
          *v25 = *v27;
          *v27 = v28;
          v29 = *(v25 + 1);
          *(v25 + 1) = v19;
          *(v27 + 1) = v29;
          v11 = a1[104];
          v30 = v11[v24];
          v31 = a1[107];
          v32 = *(v11 + v26);
          LODWORD(v26) = *(v31 + 4 * v30);
          *(v31 + 4 * v30) = *(v31 + 4 * v32);
          *(v31 + 4 * v32) = v26;
          v13 = 4 * v14;
          v15 = (4 * v14) | 1;
          v12 = *(a1 + 220);
        }

        while (v15 < v12);
      }
    }

    a1[105] -= 16;
    v33 = *(a2 + 8);
    v34 = **a2;
    v35 = *(*a2 + 8);
    if (v34 != v35)
    {
      v36 = *(v33 + 24);
      do
      {
        if (*(v36 + 40 * *v34 + 32) == v6 && (HIDWORD(v6) & 0xFFFFFFF | (((HIDWORD(v6) >> 28) & 3) << 29) | (((HIDWORD(v6) & 0x60000000) == 0x40000000) << 31)) == *(v36 + 40 * *v34 + 36))
        {
          v59 = *(a2 + 16);
          *v59 = *v34;
          *(v59 + 4) = 1;
          return;
        }

        ++v34;
      }

      while (v34 != v35);
    }

    if (*(v33 + 820) <= ((a1[101] - a1[100]) >> 2))
    {
      return;
    }

    v38 = *a1;
    if (*(*a1 + 48) == v6)
    {
      v40 = *(v38 + 24);
      v39 = *(v38 + 32);
    }

    else
    {
      *(v38 + 48) = v6;
      sub_F92948(*v38, v6, 1, (v38 + 24));
      v40 = *(v38 + 24);
      if (*(v38 + 48) != v6)
      {
        *(v38 + 48) = v6;
        sub_F92948(*v38, v6, 1, (v38 + 24));
      }

      v39 = *(v38 + 32);
    }

    while (v40 != v39)
    {
      v42 = *v40;
      v43 = v40[4];
      v44 = HIDWORD(v43) & 0x40000000;
      if ((v43 & 0x4000000000000000) != 0)
      {
        v45 = 2;
      }

      else
      {
        v45 = v43 >> 63;
      }

      v46 = (v42 - *v42);
      v47 = *v46;
      if (v45 == 2)
      {
        if ((v43 & 0x2000000000000000) != 0)
        {
          if (v47 < 0x39)
          {
            goto LABEL_32;
          }

          v54 = v46[28];
          if (!v54 || (*(v42 + v54) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v47 < 0x39)
          {
            goto LABEL_32;
          }

          v51 = v46[28];
          if (!v51 || (*(v42 + v51) & 2) == 0)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        if (v45 == 1)
        {
          v48 = v47 >= 0x39;
          if ((v43 & 0x2000000000000000) != 0)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v48 = v47 >= 0x39;
          if ((v43 & 0x2000000000000000) == 0)
          {
LABEL_52:
            if (!v48)
            {
              goto LABEL_32;
            }

            v52 = v46[28];
            if (!v52)
            {
              goto LABEL_32;
            }

            v53 = *(v42 + v52);
            if ((v53 & 3) != 0 || (v53 & 0x20) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_61;
          }
        }

        if (!v48)
        {
          goto LABEL_32;
        }

        v49 = v46[28];
        if (!v49)
        {
          goto LABEL_32;
        }

        v50 = *(v42 + v49);
        if ((v50 & 3) != 0 || (v50 & 4) == 0)
        {
          goto LABEL_32;
        }
      }

LABEL_61:
      if (v43 < 0 && v44 == 0)
      {
        v56 = 0x40000000;
      }

      else
      {
        v56 = 0;
      }

      v61 = v40[4] | (((v40[10] >> 25) & 0x80000000 | HIDWORD(v43) & 0xFFFFFFF | (HIDWORD(v43) >> 1) & 0x10000000 | (v44 >> 1) | v56) << 32);
      v57 = (v42 - *v42);
      if (*v57 >= 9u && (v58 = v57[4]) != 0)
      {
        v41 = *(v42 + v58);
      }

      else
      {
        v41 = 0;
      }

      v60 = v41 + v7;
      sub_40FE38((a1 + 1), &v61, &v60);
LABEL_32:
      v40 += 11;
    }

    if (*(a1 + 220))
    {
      continue;
    }

    break;
  }
}

char *sub_3FFFC4(uint64_t a1, char *__src, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v5 = __src;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 3)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x3333333333333333 * (&v10[-*a1] >> 3);
    if (v12 > 0x666666666666666)
    {
      sub_1794();
    }

    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x333333333333333)
    {
      v14 = 0x666666666666666;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v68 = *a3;
    v69 = *(a3 + 16);
    v42 = 8 * ((__src - v11) >> 3);
    v43 = v42;
    *v70 = *(a3 + 24);
    v71 = *(a3 + 40);
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *v72 = *(a3 + 48);
    v73 = *(a3 + 64);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    v44 = 40 * a5;
    v45 = (v42 + 40 * a5);
    while (v44)
    {
      v46 = sub_F69DE0(v68.n128_u64[0], v68.n128_u64[1]);
      v47 = *v46;
      v48 = *(v46 + 16);
      *(v42 + 32) = *(v46 + 32);
      *v42 = v47;
      *(v42 + 16) = v48;
      v42 += 40;
      v44 -= 40;
      sub_401310(&v68);
    }

    if (v72[0])
    {
      v72[1] = v72[0];
      operator delete(v72[0]);
    }

    if (v70[0])
    {
      v70[1] = v70[0];
      operator delete(v70[0]);
    }

    v49 = *(a1 + 8) - v5;
    memcpy(v45, v5, v49);
    v50 = &v45[v49];
    *(a1 + 8) = v5;
    v51 = *a1;
    v52 = &v5[-*a1];
    v53 = v43 - v52;
    memcpy((v43 - v52), *a1, v52);
    *a1 = v53;
    *(a1 + 8) = v50;
    *(a1 + 16) = 0;
    if (v51)
    {
      operator delete(v51);
    }

    return v43;
  }

  v15 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - __src) >> 3);
  if (a5 <= v15)
  {
    v35 = &__src[40 * a5];
    v36 = &v10[-40 * a5];
    for (i = *(a1 + 8); v36 < v10; i += 40)
    {
      v38 = *v36;
      v39 = *(v36 + 1);
      *(i + 32) = *(v36 + 4);
      *i = v38;
      *(i + 16) = v39;
      v36 += 40;
    }

    *(a1 + 8) = i;
    if (v10 != v35)
    {
      memmove(&__src[40 * a5], __src, v10 - v35);
    }

    v74 = *a3;
    v40 = *(a3 + 24);
    v75 = *(a3 + 16);
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v41 = *(a3 + 32);
    if (v41 != v40)
    {
      if (((v41 - v40) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v79 = 0;
    v80 = 0;
    v81 = 0;
    v55 = *(a3 + 48);
    v54 = *(a3 + 56);
    if (v54 != v55)
    {
      if (((v54 - v55) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v56 = 0;
    v57 = sub_F69DE0(v74.n128_u64[0], v74.n128_u64[1]);
    v58 = *v57;
    v59 = *(v57 + 16);
    *(v5 + 4) = *(v57 + 32);
    *v5 = v58;
    *(v5 + 1) = v59;
    if (a5 != 1)
    {
      v60 = v5 + 40;
      v61 = a5 + 1;
      do
      {
        sub_401310(&v74);
        v62 = sub_F69DE0(v74.n128_u64[0], v74.n128_u64[1]);
        v63 = *v62;
        v64 = *(v62 + 16);
        *(v60 + 4) = *(v62 + 32);
        *v60 = v63;
        *(v60 + 1) = v64;
        v60 += 40;
        --v61;
      }

      while (v61 > 2);
      v56 = v79;
    }

    if (v56)
    {
      v80 = v56;
      operator delete(v56);
    }

    v65 = v76;
    if (v76)
    {
      v77 = v76;
LABEL_100:
      operator delete(v65);
    }
  }

  else
  {
    v67 = v10 - __src;
    v114 = *a3;
    v17 = *(a3 + 24);
    v115 = *(a3 + 16);
    v116 = 0;
    v117 = 0;
    v118 = 0;
    v18 = *(a3 + 32);
    if (v18 != v17)
    {
      if (((v18 - v17) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v119 = 0;
    v120 = 0;
    v121 = 0;
    v20 = *(a3 + 48);
    v19 = *(a3 + 56);
    if (v19 != v20)
    {
      if (((v19 - v20) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    sub_400D94(&v114, v15, &v122);
    if (v119)
    {
      v120 = v119;
      operator delete(v119);
    }

    if (v116)
    {
      v117 = v116;
      operator delete(v116);
    }

    v106 = v122;
    v107 = v123;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    if (v125 != v124)
    {
      if (((v125 - v124) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v111 = 0;
    v112 = 0;
    v113 = 0;
    if (v127 != v126)
    {
      if (((v127 - v126) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v98 = *a4;
    v21 = *(a4 + 3);
    v99 = *(a4 + 2);
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v22 = *(a4 + 4);
    if (v22 != v21)
    {
      if (((v22 - v21) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    __p = 0;
    v104 = 0;
    v105 = 0;
    v24 = *(a4 + 6);
    v23 = *(a4 + 7);
    if (v23 != v24)
    {
      if (((v23 - v24) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    sub_400F20(a1, &v106, &v98);
    if (__p)
    {
      v104 = __p;
      operator delete(__p);
    }

    if (v100)
    {
      v101 = v100;
      operator delete(v100);
    }

    if (v111)
    {
      v112 = v111;
      operator delete(v111);
    }

    if (v108)
    {
      v109 = v108;
      operator delete(v108);
    }

    if (v67 >= 1)
    {
      v25 = &v5[40 * a5];
      v26 = *(a1 + 8);
      v27 = &v26[-40 * a5];
      for (j = v26; v27 < v10; j += 40)
      {
        v29 = *v27;
        v30 = *(v27 + 16);
        *(j + 4) = *(v27 + 32);
        *j = v29;
        *(j + 1) = v30;
        v27 += 40;
      }

      *(a1 + 8) = j;
      if (v26 != v25)
      {
        memmove(&v5[40 * a5], v5, v26 - v25);
      }

      v90 = *a3;
      v31 = *(a3 + 24);
      v91 = *(a3 + 16);
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v32 = *(a3 + 32);
      if (v32 != v31)
      {
        if (((v32 - v31) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v95 = 0;
      v96 = 0;
      v97 = 0;
      v34 = *(a3 + 48);
      v33 = *(a3 + 56);
      if (v33 != v34)
      {
        if (((v33 - v34) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v82 = v122;
      v83 = v123;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      if (v125 != v124)
      {
        if (((v125 - v124) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v87 = 0;
      v88 = 0;
      v89 = 0;
      if (v127 != v126)
      {
        if (((v127 - v126) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      sub_401044(&v90, &v82, v5);
      if (v87)
      {
        v88 = v87;
        operator delete(v87);
      }

      if (v84)
      {
        v85 = v84;
        operator delete(v84);
      }

      if (v95)
      {
        v96 = v95;
        operator delete(v95);
      }

      if (v92)
      {
        v93 = v92;
        operator delete(v92);
      }
    }

    if (v126)
    {
      v127 = v126;
      operator delete(v126);
    }

    v65 = v124;
    if (v124)
    {
      v125 = v124;
      goto LABEL_100;
    }
  }

  return v5;
}

void sub_4008AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  sub_3DB674(&a31);
  sub_3DB674(&a41);
  sub_3DB674((v61 - 168));
  _Unwind_Resume(a1);
}

void sub_4009A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a64)
  {
    operator delete(a64);
    sub_3DB674((v67 - 168));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x400994);
}

void sub_4009E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v23 = *(v21 - 192);
  if (v23)
  {
    operator delete(v23);
  }

  v24 = *(v21 - 216);
  if (v24)
  {
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_400A48(__int128 *a1, __int128 *a2)
{
  v19 = *a1;
  v2 = *(a1 + 3);
  v20 = *(a1 + 2);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v3 = *(a1 + 4);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v5 = *(a1 + 6);
  v4 = *(a1 + 7);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *a2;
  v6 = *(a2 + 3);
  v12 = *(a2 + 2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v7 = *(a2 + 4);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v9 = *(a2 + 6);
  v8 = *(a2 + 7);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 0;
}

void sub_400D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

__n128 sub_400D94@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v6 = a2 + 1;
      do
      {
        sub_401310(a1);
        --v6;
      }

      while (v6 > 1);
    }

    goto LABEL_27;
  }

  v7 = a1[1].n128_i64[0];
  if (!v7)
  {
    a1->n128_u64[1] += a2;
    goto LABEL_27;
  }

LABEL_13:
  while (1)
  {
    v8 = (a1[1].n128_u64[1] + 16 * v7);
    if (a1->n128_u64[0])
    {
      break;
    }

    if (*v8)
    {
      v11 = 0;
      v12 = v8[1];
      v13 = sub_F69D2C(*v8);
LABEL_11:
      if ((v11 ^ (v12 < v13)))
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    v7 = a1[1].n128_u64[0] - 1;
    a1[1].n128_u64[0] = v7;
    *a1 = *(a1[3].n128_u64[0] + 16 * v7);
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  v9 = a1->n128_u64[1];
  v10 = sub_F69D2C(a1->n128_u64[0]);
  v11 = v9 < v10;
  if (*v8)
  {
    v12 = v8[1];
    v13 = sub_F69D2C(*v8);
    v14 = !v11 || v12 >= v13;
    if (v14)
    {
      goto LABEL_11;
    }

    v15 = sub_F69DE0(a1->n128_u64[0], a1->n128_u64[1]);
    if (v15 != sub_F69DE0(*v8, v8[1]))
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (v9 >= v10)
  {
    goto LABEL_12;
  }

LABEL_8:
  while (1)
  {
    --a1->n128_u64[1];
    v14 = __CFADD__(v3++, 1);
    if (v14)
    {
      break;
    }

    v7 = a1[1].n128_i64[0];
    if (v7)
    {
      goto LABEL_13;
    }
  }

LABEL_27:
  *a3 = *a1;
  *(a3 + 16) = a1[1].n128_u64[0];
  *(a3 + 24) = *(a1 + 24);
  *(a3 + 40) = a1[2].n128_u64[1];
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  result = a1[3];
  *(a3 + 48) = result;
  *(a3 + 64) = a1[4].n128_u64[0];
  a1[2].n128_u64[1] = 0;
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  return result;
}

void sub_400F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v13 = *a2;
  v14 = *(a2 + 16);
  *v15 = *(a2 + 24);
  v16 = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *v17 = *(a2 + 48);
  v18 = *(a2 + 64);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v5 = *a3;
  v8 = *(a3 + 16);
  v7 = v5;
  *v9 = *(a3 + 24);
  v10 = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *__p = *(a3 + 48);
  v12 = *(a3 + 64);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  v6 = sub_401414(a1, &v13, &v7, v4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  *(a1 + 8) = v6;
}

void sub_401024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  *(v19 + 8) = v20;
  _Unwind_Resume(a1);
}

uint64_t sub_401044(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v21 = *a1;
  v3 = *(a1 + 3);
  v22 = *(a1 + 2);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v4 = *(a1 + 4);
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = *(a1 + 6);
  v5 = *(a1 + 7);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = *a2;
  v7 = *(a2 + 3);
  v14 = *(a2 + 2);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v8 = *(a2 + 4);
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  v10 = *(a2 + 6);
  v9 = *(a2 + 7);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_401BF8(&v21, &v13, a3, v29);
  v11 = v34;
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return v11;
}

void sub_401290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_4012AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (v19)
  {
    operator delete(v19);
    sub_3DB674(&a19);
    _Unwind_Resume(a1);
  }

  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_4012E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void **sub_401310(void **a1)
{
  v2 = a1[2];
  a1[1] = (a1[1] + 1);
  v3 = a1[6];
  for (i = a1[7]; v2 < ((i - v3) >> 4) - 1; i = a1[7])
  {
    v6 = &v3[16 * v2];
    if (!*a1)
    {
      if (!*v6)
      {
        goto LABEL_3;
      }

      v9 = 0;
      v10 = *(v6 + 1);
      v11 = sub_F69D2C(*v6);
LABEL_2:
      if ((v9 ^ (v10 < v11)))
      {
        return a1;
      }

      goto LABEL_3;
    }

    v7 = a1[1];
    v8 = sub_F69D2C(*a1);
    v9 = v7 < v8;
    if (*v6)
    {
      v10 = *(v6 + 1);
      v11 = sub_F69D2C(*v6);
      if (!v9 || v10 >= v11)
      {
        goto LABEL_2;
      }

      v13 = sub_F69DE0(*a1, a1[1]);
      if (v13 != sub_F69DE0(*v6, *(v6 + 1)))
      {
        return a1;
      }
    }

    else if (v7 < v8)
    {
      return a1;
    }

LABEL_3:
    v5 = a1[3];
    v2 = a1[2] + 1;
    a1[2] = v2;
    *a1 = *&v5[2 * v2];
    v3 = a1[6];
  }

  return a1;
}

uint64_t sub_401414(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v42 = *a2;
  v5 = *(a2 + 2);
  v44 = *(a2 + 24);
  v6 = *(a2 + 5);
  v43 = v5;
  v45 = v6;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *v46 = a2[3];
  v47 = *(a2 + 8);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v7 = *(a3 + 2);
  v36 = *a3;
  v38 = *(a3 + 24);
  v8 = *(a3 + 5);
  v37 = v7;
  v39 = v8;
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  *__p = a3[3];
  v41 = *(a3 + 8);
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  sub_401740(&v42, &v36, &v48);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v38)
  {
    *(&v38 + 1) = v38;
    operator delete(v38);
  }

  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  if (v44)
  {
    *(&v44 + 1) = v44;
    operator delete(v44);
  }

  v30 = v48;
  v31 = v49;
  *v32 = v50;
  v50 = 0uLL;
  v10 = v51;
  v9 = v52;
  v51 = 0;
  v52 = 0;
  v33 = v10;
  v34 = v9;
  v11 = v53;
  v35 = v53;
  v53 = 0uLL;
  v25 = v55;
  v24 = v54;
  *v26 = v56;
  v56 = 0uLL;
  v12 = v58;
  v27 = v57;
  v28 = v58;
  v29 = v59;
  v13 = v59;
  v57 = 0;
  v58 = 0;
  v59 = 0uLL;
  if (v9 == v11 || v12 == v13)
  {
    if ((v9 == v11) == (v12 == v13))
    {
      goto LABEL_18;
    }
  }

  else if (v31 == v25)
  {
    if (v30)
    {
      v14 = sub_F69D2C(v30);
      v15 = *(&v30 + 1) < v14;
      v16 = v24;
      if (!v24)
      {
        if (*(&v30 + 1) >= v14)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v16 = v24;
      if (!v24)
      {
        goto LABEL_18;
      }

      v15 = 0;
    }

    v21 = sub_F69D2C(v16);
    if (*(&v24 + 1) < v21 && v15)
    {
      v23 = sub_F69DE0(v30, *(&v30 + 1));
      if (v23 == sub_F69DE0(v24, *(&v24 + 1)))
      {
        goto LABEL_18;
      }
    }

    else if (v15 == *(&v24 + 1) < v21)
    {
      goto LABEL_18;
    }
  }

  do
  {
LABEL_17:
    v17 = sub_F69DE0(v30, *(&v30 + 1));
    v18 = *v17;
    v19 = *(v17 + 16);
    *(a4 + 32) = *(v17 + 32);
    *a4 = v18;
    *(a4 + 16) = v19;
    sub_401310(&v30);
    a4 += 40;
  }

  while ((sub_401AF4(&v30, &v24) & 1) != 0);
LABEL_18:
  if (v28)
  {
    *&v29 = v28;
    operator delete(v28);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (v34)
  {
    *&v35 = v34;
    operator delete(v34);
  }

  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }

  if (v58)
  {
    *&v59 = v58;
    operator delete(v58);
  }

  if (v56)
  {
    *(&v56 + 1) = v56;
    operator delete(v56);
  }

  if (v52)
  {
    *&v53 = v52;
    operator delete(v52);
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }

  return a4;
}

void sub_4016FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  sub_3DB6B8((v19 - 176));
  _Unwind_Resume(a1);
}

void sub_401740(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *a1;
  v11 = *(a1 + 16);
  *v12 = *(a1 + 24);
  v13 = *(a1 + 40);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v3 = *a2;
  v5 = *(a2 + 16);
  v4 = v3;
  *v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *__p = *(a2 + 48);
  v9 = *(a2 + 64);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_401820(&v10, &v4, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void sub_401820(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *a1;
  v4 = *(a1 + 3);
  v17 = *(a1 + 2);
  v5 = *(a1 + 4);
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  v7 = *(a1 + 6);
  v6 = *(a1 + 7);
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  if (v5 != v4)
  {
    if (((v5 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = v15;
  v14 = v17;
  v16 = *a2;
  v8 = *(a2 + 3);
  v18 = *(a2 + 2);
  v9 = *(a2 + 4);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v10 = *(a2 + 6);
  v11 = *(a2 + 7);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  if (v9 != v8)
  {
    if (((v9 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = v11 - v10;
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a3 + 72) = v16;
  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 88) = v18;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  if (v8)
  {
    operator delete(v8);
  }

  if (v7)
  {
    operator delete(v7);
  }

  if (v4)
  {

    operator delete(v4);
  }
}

void sub_401AB4(void *a1)
{
  if (v1)
  {
    operator delete(v1);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

uint64_t sub_401AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v2 == v3 || v4 == v5)
  {
    return (v2 == v3) ^ (v4 == v5);
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 1;
  }

  if (*a1)
  {
    v8 = a1;
    v9 = *(a1 + 8);
    v10 = a2;
    v11 = sub_F69D2C(*a1);
    a2 = v10;
    v12 = v9 < v11;
    v13 = *a2;
    if (*a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = a1;
    v12 = 0;
    v13 = *a2;
    if (*a2)
    {
LABEL_10:
      v14 = a2;
      v15 = *(a2 + 8);
      v16 = v15 < sub_F69D2C(v13);
      if (v12 && v16)
      {
        v17 = sub_F69DE0(*v8, *(v8 + 8));
        return v17 != sub_F69DE0(*v14, *(v14 + 8));
      }

      return v12 ^ v16;
    }
  }

  v16 = 0;
  return v12 ^ v16;
}

void sub_401BF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *a1;
  v12 = *(a1 + 16);
  *v13 = *(a1 + 24);
  v14 = *(a1 + 40);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v4 = *a2;
  v6 = *(a2 + 16);
  v5 = v4;
  *v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *__p = *(a2 + 48);
  v10 = *(a2 + 64);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_401CFC(&v11, &v5, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }
}

void sub_401CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_401CFC(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = *a1;
  v7 = a1 + 24;
  v6 = *(a1 + 3);
  v55 = *(a1 + 2);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v8 = *(a1 + 4);
  if (v8 != v6)
  {
    if (((v8 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *(a1 + 6);
  v9 = *(a1 + 7);
  v10 = a1 + 3;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  if (v9 != v11)
  {
    if (((v9 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v48 = *a2;
  v12 = *(a2 + 2);
  v50 = *(a2 + 24);
  v13 = *(a2 + 5);
  v49 = v12;
  v51 = v13;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *__p = a2[3];
  v53 = *(a2 + 8);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  sub_401740(&v54, &v48, &v62);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  v41 = v62;
  v42 = v63;
  *v43 = v64;
  v64 = 0uLL;
  v15 = v65;
  v14 = v66;
  v65 = 0;
  v66 = 0;
  v44 = v15;
  v45[0] = v14;
  v16 = v67;
  *&v45[1] = v67;
  v67 = 0uLL;
  v36 = v69;
  v35 = v68;
  *v37 = v70;
  v70 = 0uLL;
  v17 = v72;
  v38 = v71;
  v39 = v72;
  v40 = v73;
  v18 = v73;
  v71 = 0;
  v72 = 0;
  v73 = 0uLL;
  if (v14 == v16 || v17 == v18)
  {
    if ((v14 == v16) == (v17 == v18))
    {
      goto LABEL_24;
    }
  }

  else if (v42 == v36)
  {
    if (v41)
    {
      v19 = sub_F69D2C(v41);
      v20 = *(&v41 + 1) < v19;
      v21 = v35;
      if (!v35)
      {
        if (*(&v41 + 1) >= v19)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v21 = v35;
      if (!v35)
      {
        goto LABEL_24;
      }

      v20 = 0;
    }

    v30 = sub_F69D2C(v21);
    if (*(&v35 + 1) < v30 && v20)
    {
      v32 = sub_F69DE0(v41, *(&v41 + 1));
      if (v32 == sub_F69DE0(v35, *(&v35 + 1)))
      {
        goto LABEL_24;
      }
    }

    else if (v20 == *(&v35 + 1) < v30)
    {
      goto LABEL_24;
    }
  }

  do
  {
LABEL_23:
    v22 = sub_F69DE0(v41, *(&v41 + 1));
    v23 = *v22;
    v24 = *(v22 + 16);
    *(a3 + 32) = *(v22 + 32);
    *a3 = v23;
    *(a3 + 16) = v24;
    sub_401310(&v41);
    a3 += 40;
  }

  while ((sub_401AF4(&v41, &v35) & 1) != 0);
LABEL_24:
  v46 = v41;
  v47 = v42;
  v25 = *v43;
  v26 = v44;
  v43[0] = 0;
  v43[1] = 0;
  v33 = *v45;
  v34 = v25;
  v27 = v45[2];
  v44 = 0;
  memset(v45, 0, sizeof(v45));
  if (v39)
  {
    *&v40 = v39;
    operator delete(v39);
  }

  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  if (v45[0])
  {
    v45[1] = v45[0];
    operator delete(v45[0]);
  }

  if (v43[0])
  {
    v43[1] = v43[0];
    operator delete(v43[0]);
  }

  v28 = *v7;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  v29 = *v10;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 0;
  if (v29)
  {
    operator delete(v29);
  }

  if (v28)
  {
    operator delete(v28);
  }

  *a4 = v46;
  *(a4 + 16) = v47;
  *(a4 + 24) = v34;
  *(a4 + 40) = v26;
  *(a4 + 48) = v33;
  *(a4 + 64) = v27;
  *(a4 + 72) = a3;
  if (v72)
  {
    *&v73 = v72;
    operator delete(v72);
  }

  if (v70)
  {
    *(&v70 + 1) = v70;
    operator delete(v70);
  }

  if (v66)
  {
    *&v67 = v66;
    operator delete(v66);
  }

  if (v64)
  {
    *(&v64 + 1) = v64;
    operator delete(v64);
  }
}

void sub_402108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *__p)
{
  sub_3DB674(&a13);
  sub_3DB674(&a23);
  sub_3DB6B8((v53 - 224));
  _Unwind_Resume(a1);
}

char *sub_402178(uint64_t a1, char *__src, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v5 = __src;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 3)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x3333333333333333 * (&v10[-*a1] >> 3);
    if (v12 > 0x666666666666666)
    {
      sub_1794();
    }

    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x333333333333333)
    {
      v14 = 0x666666666666666;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v74 = *a3;
    v75 = *(a3 + 16);
    v45 = 8 * ((__src - v11) >> 3);
    v46 = v45;
    *v76 = *(a3 + 24);
    v77 = *(a3 + 40);
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *v78 = *(a3 + 48);
    v79 = *(a3 + 64);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    v47 = 40 * a5;
    v48 = (v45 + 40 * a5);
    while (v47)
    {
      v49 = sub_4D1F50(v74, *(&v74 + 1));
      v50 = *v49;
      v51 = *(v49 + 16);
      *(v45 + 32) = *(v49 + 32);
      *v45 = v50;
      *(v45 + 16) = v51;
      v45 += 40;
      v47 -= 40;
      sub_3E3AF4(&v74);
    }

    if (v78[0])
    {
      v78[1] = v78[0];
      operator delete(v78[0]);
    }

    if (v76[0])
    {
      v76[1] = v76[0];
      operator delete(v76[0]);
    }

    v52 = *(a1 + 8) - v5;
    memcpy(v48, v5, v52);
    v53 = &v48[v52];
    *(a1 + 8) = v5;
    v54 = *a1;
    v55 = &v5[-*a1];
    v56 = v46 - v55;
    memcpy((v46 - v55), *a1, v55);
    *a1 = v56;
    *(a1 + 8) = v53;
    *(a1 + 16) = 0;
    if (v54)
    {
      operator delete(v54);
    }

    return v46;
  }

  v15 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - __src) >> 3);
  if (a5 <= v15)
  {
    v38 = &__src[40 * a5];
    v39 = &v10[-40 * a5];
    for (i = *(a1 + 8); v39 < v10; i += 40)
    {
      v41 = *v39;
      v42 = *(v39 + 1);
      *(i + 32) = *(v39 + 4);
      *i = v41;
      *(i + 16) = v42;
      v39 += 40;
    }

    *(a1 + 8) = i;
    if (v10 != v38)
    {
      memmove(&__src[40 * a5], __src, v10 - v38);
    }

    v80 = *a3;
    v43 = *(a3 + 24);
    v81 = *(a3 + 16);
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v44 = *(a3 + 32);
    if (v44 != v43)
    {
      if (((v44 - v43) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v85 = 0;
    v86 = 0;
    v87 = 0;
    v58 = *(a3 + 48);
    v57 = *(a3 + 56);
    if (v57 != v58)
    {
      if (((v57 - v58) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v59 = 0;
    v60 = sub_4D1F50(v80, *(&v80 + 1));
    v61 = *v60;
    v62 = *(v60 + 16);
    *(v5 + 4) = *(v60 + 32);
    *v5 = v61;
    *(v5 + 1) = v62;
    if (a5 != 1)
    {
      v63 = v5 + 40;
      v64 = a5 + 1;
      do
      {
        sub_3E3AF4(&v80);
        v65 = sub_4D1F50(v80, *(&v80 + 1));
        v66 = *v65;
        v67 = *(v65 + 16);
        *(v63 + 4) = *(v65 + 32);
        *v63 = v66;
        *(v63 + 1) = v67;
        v63 += 40;
        --v64;
      }

      while (v64 > 2);
      v59 = v85;
    }

    if (v59)
    {
      v86 = v59;
      operator delete(v59);
    }

    v68 = v82;
    if (v82)
    {
      v83 = v82;
LABEL_96:
      operator delete(v68);
    }
  }

  else
  {
    v72 = v10 - __src;
    v120 = *a3;
    v17 = *(a3 + 24);
    v121 = *(a3 + 16);
    v122 = 0;
    v123 = 0uLL;
    v18 = *(a3 + 32);
    if (v18 != v17)
    {
      if (((v18 - v17) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v124 = 0;
    v125 = 0uLL;
    v20 = *(a3 + 48);
    v19 = *(a3 + 56);
    if (v19 != v20)
    {
      if (((v19 - v20) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    sub_403378(&v120, v15);
    v126 = v120;
    v21 = v122;
    v127 = v121;
    v128 = v122;
    v22 = v123;
    v129 = v123;
    v122 = 0;
    v123 = 0uLL;
    v73 = v125;
    v131 = v125;
    v23 = v124;
    v130 = v124;
    v125 = 0uLL;
    v124 = 0;
    v112 = v120;
    v113 = v121;
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v71 = v22;
    if (v22 != v21)
    {
      if (((v22 - v21) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v118 = 0;
    v117 = 0;
    v119 = 0;
    v70 = v22 - v21;
    if (v73 != v23)
    {
      if (((v73 - v23) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v104 = *a4;
    v24 = *(a4 + 3);
    v105 = *(a4 + 2);
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v25 = *(a4 + 4);
    if (v25 != v24)
    {
      if (((v25 - v24) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    __p = 0;
    v110 = 0;
    v111 = 0;
    v27 = *(a4 + 6);
    v26 = *(a4 + 7);
    if (v26 != v27)
    {
      if (((v26 - v27) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    sub_402F88(a1, &v112, &v104);
    if (__p)
    {
      v110 = __p;
      operator delete(__p);
    }

    if (v106)
    {
      v107 = v106;
      operator delete(v106);
    }

    if (v117)
    {
      v118 = v117;
      operator delete(v117);
    }

    if (v114)
    {
      v115 = v114;
      operator delete(v114);
    }

    if (v72 >= 1)
    {
      v28 = &v5[40 * a5];
      v29 = *(a1 + 8);
      v30 = &v29[-40 * a5];
      for (j = v29; v30 < v10; j += 40)
      {
        v32 = *v30;
        v33 = *(v30 + 16);
        *(j + 4) = *(v30 + 32);
        *j = v32;
        *(j + 1) = v33;
        v30 += 40;
      }

      *(a1 + 8) = j;
      if (v29 != v28)
      {
        memmove(&v5[40 * a5], v5, v29 - v28);
      }

      v96 = *a3;
      v34 = *(a3 + 24);
      v97 = *(a3 + 16);
      v98 = 0;
      v99 = 0;
      v100 = 0;
      v35 = *(a3 + 32);
      if (v35 != v34)
      {
        if (((v35 - v34) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v101 = 0;
      v102 = 0;
      v103 = 0;
      v37 = *(a3 + 48);
      v36 = *(a3 + 56);
      if (v36 != v37)
      {
        if (((v36 - v37) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v88 = v126;
      v89 = v127;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      if (v71 != v21)
      {
        if ((v70 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v93 = 0;
      v94 = 0;
      v95 = 0;
      if (v73 != v23)
      {
        if (((v73 - v23) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      sub_4030AC(&v96, &v88, v5);
      if (v93)
      {
        v94 = v93;
        operator delete(v93);
      }

      if (v90)
      {
        v91 = v90;
        operator delete(v90);
      }

      if (v101)
      {
        v102 = v101;
        operator delete(v101);
      }

      if (v98)
      {
        v99 = v98;
        operator delete(v98);
      }
    }

    if (v23)
    {
      operator delete(v23);
    }

    if (v21)
    {
      v68 = v21;
      goto LABEL_96;
    }
  }

  return v5;
}

void sub_402AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_3DB674(&a37);
  sub_3DB674(&a47);
  sub_3DB674((v47 - 176));
  _Unwind_Resume(a1);
}

void sub_402B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = STACK[0x200];
  if (STACK[0x200])
  {
    STACK[0x208] = v72;
    operator delete(v72);
  }

  if (a70)
  {
    operator delete(a70);
    sub_3DB674((v70 - 176));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x402B88);
}

void sub_402BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v29 = *(v27 - 208);
  if (v29)
  {
    operator delete(v29);
  }

  v30 = *(v27 - 232);
  if (v30)
  {
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_402C3C(__int128 *a1, __int128 *a2)
{
  v19 = *a1;
  v2 = *(a1 + 3);
  v20 = *(a1 + 2);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v3 = *(a1 + 4);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v5 = *(a1 + 6);
  v4 = *(a1 + 7);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *a2;
  v6 = *(a2 + 3);
  v12 = *(a2 + 2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v7 = *(a2 + 4);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v9 = *(a2 + 6);
  v8 = *(a2 + 7);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 0;
}

void sub_402F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_402F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v13 = *a2;
  v14 = *(a2 + 16);
  *v15 = *(a2 + 24);
  v16 = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *v17 = *(a2 + 48);
  v18 = *(a2 + 64);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v5 = *a3;
  v8 = *(a3 + 16);
  v7 = v5;
  *v9 = *(a3 + 24);
  v10 = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *__p = *(a3 + 48);
  v12 = *(a3 + 64);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  v6 = sub_4034D4(a1, &v13, &v7, v4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  *(a1 + 8) = v6;
}

void sub_40308C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  *(v19 + 8) = v20;
  _Unwind_Resume(a1);
}

uint64_t sub_4030AC(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v21 = *a1;
  v3 = *(a1 + 3);
  v22 = *(a1 + 2);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v4 = *(a1 + 4);
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = *(a1 + 6);
  v5 = *(a1 + 7);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = *a2;
  v7 = *(a2 + 3);
  v14 = *(a2 + 2);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v8 = *(a2 + 4);
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  v10 = *(a2 + 6);
  v9 = *(a2 + 7);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_403BB4(&v21, &v13, a3, v29);
  v11 = v34;
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return v11;
}

void sub_4032F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_403314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (v19)
  {
    operator delete(v19);
    sub_3DB674(&a19);
    _Unwind_Resume(a1);
  }

  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_40334C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void *sub_403378(void *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v4 = a2 + 1;
      do
      {
        result = sub_3E3AF4(v3);
        --v4;
      }

      while (v4 > 1);
    }

    return result;
  }

  v5 = result[2];
  if (!v5)
  {
    result[1] += a2;
    return result;
  }

LABEL_13:
  while (1)
  {
    v6 = &v3[3][2 * v5];
    if (*v3)
    {
      break;
    }

    result = *v6;
    if (*v6)
    {
      v9 = 0;
      v10 = *(v6 + 8);
      result = sub_4D1DC0(result);
LABEL_11:
      if ((v9 ^ (v10 < result)))
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    v5 = v3[2] - 1;
    v3[2] = v5;
    *v3 = *&v3[6][2 * v5];
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  v7 = v3[1];
  v8 = sub_4D1DC0(*v3);
  v9 = v7 < v8;
  result = *v6;
  if (*v6)
  {
    v10 = *(v6 + 8);
    result = sub_4D1DC0(result);
    v11 = !v9 || v10 >= result;
    if (v11)
    {
      goto LABEL_11;
    }

    v12 = sub_4D1F50(*v3, v3[1]);
    result = sub_4D1F50(*v6, *(v6 + 8));
    if (v12 != result)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (v7 >= v8)
  {
    goto LABEL_12;
  }

LABEL_8:
  while (1)
  {
    v3[1] = (v3[1] - 1);
    v11 = __CFADD__(v2++, 1);
    if (v11)
    {
      return result;
    }

    v5 = v3[2];
    if (v5)
    {
      goto LABEL_13;
    }
  }
}

uint64_t sub_4034D4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v42 = *a2;
  v5 = *(a2 + 2);
  v44 = *(a2 + 24);
  v6 = *(a2 + 5);
  v43 = v5;
  v45 = v6;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *v46 = a2[3];
  v47 = *(a2 + 8);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v7 = *(a3 + 2);
  v36 = *a3;
  v38 = *(a3 + 24);
  v8 = *(a3 + 5);
  v37 = v7;
  v39 = v8;
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  *__p = a3[3];
  v41 = *(a3 + 8);
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  sub_403800(&v42, &v36, &v48);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v38)
  {
    *(&v38 + 1) = v38;
    operator delete(v38);
  }

  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  if (v44)
  {
    *(&v44 + 1) = v44;
    operator delete(v44);
  }

  v30 = v48;
  v31 = v49;
  *v32 = v50;
  v50 = 0uLL;
  v10 = v51;
  v9 = v52;
  v51 = 0;
  v52 = 0;
  v33 = v10;
  v34 = v9;
  v11 = v53;
  v35 = v53;
  v53 = 0uLL;
  v25 = v55;
  v24 = v54;
  *v26 = v56;
  v56 = 0uLL;
  v12 = v58;
  v27 = v57;
  v28 = v58;
  v29 = v59;
  v13 = v59;
  v57 = 0;
  v58 = 0;
  v59 = 0uLL;
  if (v9 == v11 || v12 == v13)
  {
    if ((v9 == v11) == (v12 == v13))
    {
      goto LABEL_18;
    }
  }

  else if (v31 == v25)
  {
    if (v30)
    {
      v14 = sub_4D1DC0(v30);
      v15 = *(&v30 + 1) < v14;
      v16 = v24;
      if (!v24)
      {
        if (*(&v30 + 1) >= v14)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v16 = v24;
      if (!v24)
      {
        goto LABEL_18;
      }

      v15 = 0;
    }

    v21 = sub_4D1DC0(v16);
    if (*(&v24 + 1) < v21 && v15)
    {
      v23 = sub_4D1F50(v30, *(&v30 + 1));
      if (v23 == sub_4D1F50(v24, *(&v24 + 1)))
      {
        goto LABEL_18;
      }
    }

    else if (v15 == *(&v24 + 1) < v21)
    {
      goto LABEL_18;
    }
  }

  do
  {
LABEL_17:
    v17 = sub_4D1F50(v30, *(&v30 + 1));
    v18 = *v17;
    v19 = *(v17 + 16);
    *(a4 + 32) = *(v17 + 32);
    *a4 = v18;
    *(a4 + 16) = v19;
    sub_3E3AF4(&v30);
    a4 += 40;
  }

  while (!sub_3E6794(&v30, &v24));
LABEL_18:
  if (v28)
  {
    *&v29 = v28;
    operator delete(v28);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (v34)
  {
    *&v35 = v34;
    operator delete(v34);
  }

  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }

  if (v58)
  {
    *&v59 = v58;
    operator delete(v58);
  }

  if (v56)
  {
    *(&v56 + 1) = v56;
    operator delete(v56);
  }

  if (v52)
  {
    *&v53 = v52;
    operator delete(v52);
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }

  return a4;
}

void sub_4037BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  sub_3DB6B8((v19 - 176));
  _Unwind_Resume(a1);
}

void sub_403800(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *a1;
  v11 = *(a1 + 16);
  *v12 = *(a1 + 24);
  v13 = *(a1 + 40);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v3 = *a2;
  v5 = *(a2 + 16);
  v4 = v3;
  *v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *__p = *(a2 + 48);
  v9 = *(a2 + 64);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_4038E0(&v10, &v4, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void sub_4038E0(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *a1;
  v4 = *(a1 + 3);
  v17 = *(a1 + 2);
  v5 = *(a1 + 4);
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  v7 = *(a1 + 6);
  v6 = *(a1 + 7);
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  if (v5 != v4)
  {
    if (((v5 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = v15;
  v14 = v17;
  v16 = *a2;
  v8 = *(a2 + 3);
  v18 = *(a2 + 2);
  v9 = *(a2 + 4);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v10 = *(a2 + 6);
  v11 = *(a2 + 7);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  if (v9 != v8)
  {
    if (((v9 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = v11 - v10;
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a3 + 72) = v16;
  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 88) = v18;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  if (v8)
  {
    operator delete(v8);
  }

  if (v7)
  {
    operator delete(v7);
  }

  if (v4)
  {

    operator delete(v4);
  }
}

void sub_403B74(void *a1)
{
  if (v1)
  {
    operator delete(v1);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

void sub_403BB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *a1;
  v12 = *(a1 + 16);
  *v13 = *(a1 + 24);
  v14 = *(a1 + 40);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v4 = *a2;
  v6 = *(a2 + 16);
  v5 = v4;
  *v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *__p = *(a2 + 48);
  v10 = *(a2 + 64);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_403CB8(&v11, &v5, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }
}

void sub_403C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_403CB8(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = *a1;
  v7 = a1 + 24;
  v6 = *(a1 + 3);
  v55 = *(a1 + 2);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v8 = *(a1 + 4);
  if (v8 != v6)
  {
    if (((v8 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *(a1 + 6);
  v9 = *(a1 + 7);
  v10 = a1 + 3;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  if (v9 != v11)
  {
    if (((v9 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v48 = *a2;
  v12 = *(a2 + 2);
  v50 = *(a2 + 24);
  v13 = *(a2 + 5);
  v49 = v12;
  v51 = v13;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *__p = a2[3];
  v53 = *(a2 + 8);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  sub_403800(&v54, &v48, &v62);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  v41 = v62;
  v42 = v63;
  *v43 = v64;
  v64 = 0uLL;
  v15 = v65;
  v14 = v66;
  v65 = 0;
  v66 = 0;
  v44 = v15;
  v45[0] = v14;
  v16 = v67;
  *&v45[1] = v67;
  v67 = 0uLL;
  v36 = v69;
  v35 = v68;
  *v37 = v70;
  v70 = 0uLL;
  v17 = v72;
  v38 = v71;
  v39 = v72;
  v40 = v73;
  v18 = v73;
  v71 = 0;
  v72 = 0;
  v73 = 0uLL;
  if (v14 == v16 || v17 == v18)
  {
    if ((v14 == v16) == (v17 == v18))
    {
      goto LABEL_24;
    }
  }

  else if (v42 == v36)
  {
    if (v41)
    {
      v19 = sub_4D1DC0(v41);
      v20 = *(&v41 + 1) < v19;
      v21 = v35;
      if (!v35)
      {
        if (*(&v41 + 1) >= v19)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v21 = v35;
      if (!v35)
      {
        goto LABEL_24;
      }

      v20 = 0;
    }

    v30 = sub_4D1DC0(v21);
    if (*(&v35 + 1) < v30 && v20)
    {
      v32 = sub_4D1F50(v41, *(&v41 + 1));
      if (v32 == sub_4D1F50(v35, *(&v35 + 1)))
      {
        goto LABEL_24;
      }
    }

    else if (v20 == *(&v35 + 1) < v30)
    {
      goto LABEL_24;
    }
  }

  do
  {
LABEL_23:
    v22 = sub_4D1F50(v41, *(&v41 + 1));
    v23 = *v22;
    v24 = *(v22 + 16);
    *(a3 + 32) = *(v22 + 32);
    *a3 = v23;
    *(a3 + 16) = v24;
    sub_3E3AF4(&v41);
    a3 += 40;
  }

  while (!sub_3E6794(&v41, &v35));
LABEL_24:
  v46 = v41;
  v47 = v42;
  v25 = *v43;
  v26 = v44;
  v43[0] = 0;
  v43[1] = 0;
  v33 = *v45;
  v34 = v25;
  v27 = v45[2];
  v44 = 0;
  memset(v45, 0, sizeof(v45));
  if (v39)
  {
    *&v40 = v39;
    operator delete(v39);
  }

  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  if (v45[0])
  {
    v45[1] = v45[0];
    operator delete(v45[0]);
  }

  if (v43[0])
  {
    v43[1] = v43[0];
    operator delete(v43[0]);
  }

  v28 = *v7;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  v29 = *v10;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 0;
  if (v29)
  {
    operator delete(v29);
  }

  if (v28)
  {
    operator delete(v28);
  }

  *a4 = v46;
  *(a4 + 16) = v47;
  *(a4 + 24) = v34;
  *(a4 + 40) = v26;
  *(a4 + 48) = v33;
  *(a4 + 64) = v27;
  *(a4 + 72) = a3;
  if (v72)
  {
    *&v73 = v72;
    operator delete(v72);
  }

  if (v70)
  {
    *(&v70 + 1) = v70;
    operator delete(v70);
  }

  if (v66)
  {
    *&v67 = v66;
    operator delete(v66);
  }

  if (v64)
  {
    *(&v64 + 1) = v64;
    operator delete(v64);
  }
}

void sub_4040C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *__p)
{
  sub_3DB674(&a13);
  sub_3DB674(&a23);
  sub_3DB6B8((v53 - 224));
  _Unwind_Resume(a1);
}

void *sub_404134(void *a1)
{
  v2 = a1[534];
  if (v2)
  {
    a1[535] = v2;
    operator delete(v2);
  }

  v3 = a1[531];
  if (v3)
  {
    a1[532] = v3;
    operator delete(v3);
  }

  v4 = a1[528];
  if (v4)
  {
    a1[529] = v4;
    operator delete(v4);
  }

  sub_3E3EF8(a1 + 1);
  return a1;
}

void *sub_404190(void *a1)
{
  v2 = a1[107];
  if (v2)
  {
    a1[108] = v2;
    operator delete(v2);
  }

  v3 = a1[104];
  if (v3)
  {
    a1[105] = v3;
    operator delete(v3);
  }

  v4 = a1[100];
  if (v4)
  {
    a1[101] = v4;
    operator delete(v4);
  }

  v5 = a1[97];
  if (v5)
  {
    a1[98] = v5;
    operator delete(v5);
  }

  sub_360988((a1 + 1));
  return a1;
}

void *sub_4041FC(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

char *sub_404240(uint64_t a1, char *__src, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v5 = __src;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 3)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x3333333333333333 * (&v10[-*a1] >> 3);
    if (v12 > 0x666666666666666)
    {
      sub_1794();
    }

    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x333333333333333)
    {
      v14 = 0x666666666666666;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v68 = *a3;
    v69 = *(a3 + 16);
    v42 = 8 * ((__src - v11) >> 3);
    v43 = v42;
    *v70 = *(a3 + 24);
    v71 = *(a3 + 40);
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *v72 = *(a3 + 48);
    v73 = *(a3 + 64);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    v44 = 40 * a5;
    v45 = (v42 + 40 * a5);
    while (v44)
    {
      v46 = sub_F6D17C(v68.n128_u64[0], v68.n128_u64[1]);
      v47 = *v46;
      v48 = *(v46 + 16);
      *(v42 + 32) = *(v46 + 32);
      *v42 = v47;
      *(v42 + 16) = v48;
      v42 += 40;
      v44 -= 40;
      sub_40558C(&v68);
    }

    if (v72[0])
    {
      v72[1] = v72[0];
      operator delete(v72[0]);
    }

    if (v70[0])
    {
      v70[1] = v70[0];
      operator delete(v70[0]);
    }

    v49 = *(a1 + 8) - v5;
    memcpy(v45, v5, v49);
    v50 = &v45[v49];
    *(a1 + 8) = v5;
    v51 = *a1;
    v52 = &v5[-*a1];
    v53 = v43 - v52;
    memcpy((v43 - v52), *a1, v52);
    *a1 = v53;
    *(a1 + 8) = v50;
    *(a1 + 16) = 0;
    if (v51)
    {
      operator delete(v51);
    }

    return v43;
  }

  v15 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - __src) >> 3);
  if (a5 <= v15)
  {
    v35 = &__src[40 * a5];
    v36 = &v10[-40 * a5];
    for (i = *(a1 + 8); v36 < v10; i += 40)
    {
      v38 = *v36;
      v39 = *(v36 + 1);
      *(i + 32) = *(v36 + 4);
      *i = v38;
      *(i + 16) = v39;
      v36 += 40;
    }

    *(a1 + 8) = i;
    if (v10 != v35)
    {
      memmove(&__src[40 * a5], __src, v10 - v35);
    }

    v74 = *a3;
    v40 = *(a3 + 24);
    v75 = *(a3 + 16);
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v41 = *(a3 + 32);
    if (v41 != v40)
    {
      if (((v41 - v40) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v79 = 0;
    v80 = 0;
    v81 = 0;
    v55 = *(a3 + 48);
    v54 = *(a3 + 56);
    if (v54 != v55)
    {
      if (((v54 - v55) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v56 = 0;
    v57 = sub_F6D17C(v74.n128_u64[0], v74.n128_u64[1]);
    v58 = *v57;
    v59 = *(v57 + 16);
    *(v5 + 4) = *(v57 + 32);
    *v5 = v58;
    *(v5 + 1) = v59;
    if (a5 != 1)
    {
      v60 = v5 + 40;
      v61 = a5 + 1;
      do
      {
        sub_40558C(&v74);
        v62 = sub_F6D17C(v74.n128_u64[0], v74.n128_u64[1]);
        v63 = *v62;
        v64 = *(v62 + 16);
        *(v60 + 4) = *(v62 + 32);
        *v60 = v63;
        *(v60 + 1) = v64;
        v60 += 40;
        --v61;
      }

      while (v61 > 2);
      v56 = v79;
    }

    if (v56)
    {
      v80 = v56;
      operator delete(v56);
    }

    v65 = v76;
    if (v76)
    {
      v77 = v76;
LABEL_100:
      operator delete(v65);
    }
  }

  else
  {
    v67 = v10 - __src;
    v114 = *a3;
    v17 = *(a3 + 24);
    v115 = *(a3 + 16);
    v116 = 0;
    v117 = 0;
    v118 = 0;
    v18 = *(a3 + 32);
    if (v18 != v17)
    {
      if (((v18 - v17) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v119 = 0;
    v120 = 0;
    v121 = 0;
    v20 = *(a3 + 48);
    v19 = *(a3 + 56);
    if (v19 != v20)
    {
      if (((v19 - v20) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    sub_405010(&v114, v15, &v122);
    if (v119)
    {
      v120 = v119;
      operator delete(v119);
    }

    if (v116)
    {
      v117 = v116;
      operator delete(v116);
    }

    v106 = v122;
    v107 = v123;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    if (v125 != v124)
    {
      if (((v125 - v124) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v111 = 0;
    v112 = 0;
    v113 = 0;
    if (v127 != v126)
    {
      if (((v127 - v126) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v98 = *a4;
    v21 = *(a4 + 3);
    v99 = *(a4 + 2);
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v22 = *(a4 + 4);
    if (v22 != v21)
    {
      if (((v22 - v21) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    __p = 0;
    v104 = 0;
    v105 = 0;
    v24 = *(a4 + 6);
    v23 = *(a4 + 7);
    if (v23 != v24)
    {
      if (((v23 - v24) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    sub_40519C(a1, &v106, &v98);
    if (__p)
    {
      v104 = __p;
      operator delete(__p);
    }

    if (v100)
    {
      v101 = v100;
      operator delete(v100);
    }

    if (v111)
    {
      v112 = v111;
      operator delete(v111);
    }

    if (v108)
    {
      v109 = v108;
      operator delete(v108);
    }

    if (v67 >= 1)
    {
      v25 = &v5[40 * a5];
      v26 = *(a1 + 8);
      v27 = &v26[-40 * a5];
      for (j = v26; v27 < v10; j += 40)
      {
        v29 = *v27;
        v30 = *(v27 + 16);
        *(j + 4) = *(v27 + 32);
        *j = v29;
        *(j + 1) = v30;
        v27 += 40;
      }

      *(a1 + 8) = j;
      if (v26 != v25)
      {
        memmove(&v5[40 * a5], v5, v26 - v25);
      }

      v90 = *a3;
      v31 = *(a3 + 24);
      v91 = *(a3 + 16);
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v32 = *(a3 + 32);
      if (v32 != v31)
      {
        if (((v32 - v31) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v95 = 0;
      v96 = 0;
      v97 = 0;
      v34 = *(a3 + 48);
      v33 = *(a3 + 56);
      if (v33 != v34)
      {
        if (((v33 - v34) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v82 = v122;
      v83 = v123;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      if (v125 != v124)
      {
        if (((v125 - v124) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v87 = 0;
      v88 = 0;
      v89 = 0;
      if (v127 != v126)
      {
        if (((v127 - v126) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      sub_4052C0(&v90, &v82, v5);
      if (v87)
      {
        v88 = v87;
        operator delete(v87);
      }

      if (v84)
      {
        v85 = v84;
        operator delete(v84);
      }

      if (v95)
      {
        v96 = v95;
        operator delete(v95);
      }

      if (v92)
      {
        v93 = v92;
        operator delete(v92);
      }
    }

    if (v126)
    {
      v127 = v126;
      operator delete(v126);
    }

    v65 = v124;
    if (v124)
    {
      v125 = v124;
      goto LABEL_100;
    }
  }

  return v5;
}

void sub_404B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  sub_3DB674(&a31);
  sub_3DB674(&a41);
  sub_3DB674((v61 - 168));
  _Unwind_Resume(a1);
}

void sub_404C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a64)
  {
    operator delete(a64);
    sub_3DB674((v67 - 168));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x404C10);
}

void sub_404C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v23 = *(v21 - 192);
  if (v23)
  {
    operator delete(v23);
  }

  v24 = *(v21 - 216);
  if (v24)
  {
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_404CC4(__int128 *a1, __int128 *a2)
{
  v19 = *a1;
  v2 = *(a1 + 3);
  v20 = *(a1 + 2);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v3 = *(a1 + 4);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v5 = *(a1 + 6);
  v4 = *(a1 + 7);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *a2;
  v6 = *(a2 + 3);
  v12 = *(a2 + 2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v7 = *(a2 + 4);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v9 = *(a2 + 6);
  v8 = *(a2 + 7);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 0;
}

void sub_404F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

__n128 sub_405010@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v6 = a2 + 1;
      do
      {
        sub_40558C(a1);
        --v6;
      }

      while (v6 > 1);
    }

    goto LABEL_27;
  }

  v7 = a1[1].n128_i64[0];
  if (!v7)
  {
    a1->n128_u64[1] += a2;
    goto LABEL_27;
  }

LABEL_13:
  while (1)
  {
    v8 = (a1[1].n128_u64[1] + 16 * v7);
    if (a1->n128_u64[0])
    {
      break;
    }

    if (*v8)
    {
      v11 = 0;
      v12 = v8[1];
      v13 = sub_F6D024(*v8);
LABEL_11:
      if ((v11 ^ (v12 < v13)))
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    v7 = a1[1].n128_u64[0] - 1;
    a1[1].n128_u64[0] = v7;
    *a1 = *(a1[3].n128_u64[0] + 16 * v7);
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  v9 = a1->n128_u64[1];
  v10 = sub_F6D024(a1->n128_u64[0]);
  v11 = v9 < v10;
  if (*v8)
  {
    v12 = v8[1];
    v13 = sub_F6D024(*v8);
    v14 = !v11 || v12 >= v13;
    if (v14)
    {
      goto LABEL_11;
    }

    v15 = sub_F6D17C(a1->n128_u64[0], a1->n128_u64[1]);
    if (v15 != sub_F6D17C(*v8, v8[1]))
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (v9 >= v10)
  {
    goto LABEL_12;
  }

LABEL_8:
  while (1)
  {
    --a1->n128_u64[1];
    v14 = __CFADD__(v3++, 1);
    if (v14)
    {
      break;
    }

    v7 = a1[1].n128_i64[0];
    if (v7)
    {
      goto LABEL_13;
    }
  }

LABEL_27:
  *a3 = *a1;
  *(a3 + 16) = a1[1].n128_u64[0];
  *(a3 + 24) = *(a1 + 24);
  *(a3 + 40) = a1[2].n128_u64[1];
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  result = a1[3];
  *(a3 + 48) = result;
  *(a3 + 64) = a1[4].n128_u64[0];
  a1[2].n128_u64[1] = 0;
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  return result;
}

void sub_40519C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v13 = *a2;
  v14 = *(a2 + 16);
  *v15 = *(a2 + 24);
  v16 = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *v17 = *(a2 + 48);
  v18 = *(a2 + 64);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v5 = *a3;
  v8 = *(a3 + 16);
  v7 = v5;
  *v9 = *(a3 + 24);
  v10 = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *__p = *(a3 + 48);
  v12 = *(a3 + 64);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  v6 = sub_405690(a1, &v13, &v7, v4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  *(a1 + 8) = v6;
}

void sub_4052A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  *(v19 + 8) = v20;
  _Unwind_Resume(a1);
}

uint64_t sub_4052C0(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v21 = *a1;
  v3 = *(a1 + 3);
  v22 = *(a1 + 2);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v4 = *(a1 + 4);
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = *(a1 + 6);
  v5 = *(a1 + 7);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = *a2;
  v7 = *(a2 + 3);
  v14 = *(a2 + 2);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v8 = *(a2 + 4);
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  v10 = *(a2 + 6);
  v9 = *(a2 + 7);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_405E74(&v21, &v13, a3, v29);
  v11 = v34;
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return v11;
}

void sub_40550C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_405528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (v19)
  {
    operator delete(v19);
    sub_3DB674(&a19);
    _Unwind_Resume(a1);
  }

  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_405560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void **sub_40558C(void **a1)
{
  v2 = a1[2];
  a1[1] = (a1[1] + 1);
  v3 = a1[6];
  for (i = a1[7]; v2 < ((i - v3) >> 4) - 1; i = a1[7])
  {
    v6 = &v3[16 * v2];
    if (!*a1)
    {
      if (!*v6)
      {
        goto LABEL_3;
      }

      v9 = 0;
      v10 = *(v6 + 1);
      v11 = sub_F6D024(*v6);
LABEL_2:
      if ((v9 ^ (v10 < v11)))
      {
        return a1;
      }

      goto LABEL_3;
    }

    v7 = a1[1];
    v8 = sub_F6D024(*a1);
    v9 = v7 < v8;
    if (*v6)
    {
      v10 = *(v6 + 1);
      v11 = sub_F6D024(*v6);
      if (!v9 || v10 >= v11)
      {
        goto LABEL_2;
      }

      v13 = sub_F6D17C(*a1, a1[1]);
      if (v13 != sub_F6D17C(*v6, *(v6 + 1)))
      {
        return a1;
      }
    }

    else if (v7 < v8)
    {
      return a1;
    }

LABEL_3:
    v5 = a1[3];
    v2 = a1[2] + 1;
    a1[2] = v2;
    *a1 = *&v5[2 * v2];
    v3 = a1[6];
  }

  return a1;
}

uint64_t sub_405690(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v42 = *a2;
  v5 = *(a2 + 2);
  v44 = *(a2 + 24);
  v6 = *(a2 + 5);
  v43 = v5;
  v45 = v6;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *v46 = a2[3];
  v47 = *(a2 + 8);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v7 = *(a3 + 2);
  v36 = *a3;
  v38 = *(a3 + 24);
  v8 = *(a3 + 5);
  v37 = v7;
  v39 = v8;
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  *__p = a3[3];
  v41 = *(a3 + 8);
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  sub_4059BC(&v42, &v36, &v48);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v38)
  {
    *(&v38 + 1) = v38;
    operator delete(v38);
  }

  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  if (v44)
  {
    *(&v44 + 1) = v44;
    operator delete(v44);
  }

  v30 = v48;
  v31 = v49;
  *v32 = v50;
  v50 = 0uLL;
  v10 = v51;
  v9 = v52;
  v51 = 0;
  v52 = 0;
  v33 = v10;
  v34 = v9;
  v11 = v53;
  v35 = v53;
  v53 = 0uLL;
  v25 = v55;
  v24 = v54;
  *v26 = v56;
  v56 = 0uLL;
  v12 = v58;
  v27 = v57;
  v28 = v58;
  v29 = v59;
  v13 = v59;
  v57 = 0;
  v58 = 0;
  v59 = 0uLL;
  if (v9 == v11 || v12 == v13)
  {
    if ((v9 == v11) == (v12 == v13))
    {
      goto LABEL_18;
    }
  }

  else if (v31 == v25)
  {
    if (v30)
    {
      v14 = sub_F6D024(v30);
      v15 = *(&v30 + 1) < v14;
      v16 = v24;
      if (!v24)
      {
        if (*(&v30 + 1) >= v14)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v16 = v24;
      if (!v24)
      {
        goto LABEL_18;
      }

      v15 = 0;
    }

    v21 = sub_F6D024(v16);
    if (*(&v24 + 1) < v21 && v15)
    {
      v23 = sub_F6D17C(v30, *(&v30 + 1));
      if (v23 == sub_F6D17C(v24, *(&v24 + 1)))
      {
        goto LABEL_18;
      }
    }

    else if (v15 == *(&v24 + 1) < v21)
    {
      goto LABEL_18;
    }
  }

  do
  {
LABEL_17:
    v17 = sub_F6D17C(v30, *(&v30 + 1));
    v18 = *v17;
    v19 = *(v17 + 16);
    *(a4 + 32) = *(v17 + 32);
    *a4 = v18;
    *(a4 + 16) = v19;
    sub_40558C(&v30);
    a4 += 40;
  }

  while ((sub_405D70(&v30, &v24) & 1) != 0);
LABEL_18:
  if (v28)
  {
    *&v29 = v28;
    operator delete(v28);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (v34)
  {
    *&v35 = v34;
    operator delete(v34);
  }

  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }

  if (v58)
  {
    *&v59 = v58;
    operator delete(v58);
  }

  if (v56)
  {
    *(&v56 + 1) = v56;
    operator delete(v56);
  }

  if (v52)
  {
    *&v53 = v52;
    operator delete(v52);
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }

  return a4;
}

void sub_405978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  sub_3DB6B8((v19 - 176));
  _Unwind_Resume(a1);
}

void sub_4059BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *a1;
  v11 = *(a1 + 16);
  *v12 = *(a1 + 24);
  v13 = *(a1 + 40);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v3 = *a2;
  v5 = *(a2 + 16);
  v4 = v3;
  *v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *__p = *(a2 + 48);
  v9 = *(a2 + 64);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_405A9C(&v10, &v4, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void sub_405A9C(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *a1;
  v4 = *(a1 + 3);
  v17 = *(a1 + 2);
  v5 = *(a1 + 4);
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  v7 = *(a1 + 6);
  v6 = *(a1 + 7);
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  if (v5 != v4)
  {
    if (((v5 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = v15;
  v14 = v17;
  v16 = *a2;
  v8 = *(a2 + 3);
  v18 = *(a2 + 2);
  v9 = *(a2 + 4);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v10 = *(a2 + 6);
  v11 = *(a2 + 7);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  if (v9 != v8)
  {
    if (((v9 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = v11 - v10;
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a3 + 72) = v16;
  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 88) = v18;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  if (v8)
  {
    operator delete(v8);
  }

  if (v7)
  {
    operator delete(v7);
  }

  if (v4)
  {

    operator delete(v4);
  }
}

void sub_405D30(void *a1)
{
  if (v1)
  {
    operator delete(v1);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

uint64_t sub_405D70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v2 == v3 || v4 == v5)
  {
    return (v2 == v3) ^ (v4 == v5);
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 1;
  }

  if (*a1)
  {
    v8 = a1;
    v9 = *(a1 + 8);
    v10 = a2;
    v11 = sub_F6D024(*a1);
    a2 = v10;
    v12 = v9 < v11;
    v13 = *a2;
    if (*a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = a1;
    v12 = 0;
    v13 = *a2;
    if (*a2)
    {
LABEL_10:
      v14 = a2;
      v15 = *(a2 + 8);
      v16 = v15 < sub_F6D024(v13);
      if (v12 && v16)
      {
        v17 = sub_F6D17C(*v8, *(v8 + 8));
        return v17 != sub_F6D17C(*v14, *(v14 + 8));
      }

      return v12 ^ v16;
    }
  }

  v16 = 0;
  return v12 ^ v16;
}

void sub_405E74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *a1;
  v12 = *(a1 + 16);
  *v13 = *(a1 + 24);
  v14 = *(a1 + 40);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v4 = *a2;
  v6 = *(a2 + 16);
  v5 = v4;
  *v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *__p = *(a2 + 48);
  v10 = *(a2 + 64);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_405F78(&v11, &v5, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }
}

void sub_405F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_405F78(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = *a1;
  v7 = a1 + 24;
  v6 = *(a1 + 3);
  v55 = *(a1 + 2);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v8 = *(a1 + 4);
  if (v8 != v6)
  {
    if (((v8 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *(a1 + 6);
  v9 = *(a1 + 7);
  v10 = a1 + 3;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  if (v9 != v11)
  {
    if (((v9 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v48 = *a2;
  v12 = *(a2 + 2);
  v50 = *(a2 + 24);
  v13 = *(a2 + 5);
  v49 = v12;
  v51 = v13;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *__p = a2[3];
  v53 = *(a2 + 8);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  sub_4059BC(&v54, &v48, &v62);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  v41 = v62;
  v42 = v63;
  *v43 = v64;
  v64 = 0uLL;
  v15 = v65;
  v14 = v66;
  v65 = 0;
  v66 = 0;
  v44 = v15;
  v45[0] = v14;
  v16 = v67;
  *&v45[1] = v67;
  v67 = 0uLL;
  v36 = v69;
  v35 = v68;
  *v37 = v70;
  v70 = 0uLL;
  v17 = v72;
  v38 = v71;
  v39 = v72;
  v40 = v73;
  v18 = v73;
  v71 = 0;
  v72 = 0;
  v73 = 0uLL;
  if (v14 == v16 || v17 == v18)
  {
    if ((v14 == v16) == (v17 == v18))
    {
      goto LABEL_24;
    }
  }

  else if (v42 == v36)
  {
    if (v41)
    {
      v19 = sub_F6D024(v41);
      v20 = *(&v41 + 1) < v19;
      v21 = v35;
      if (!v35)
      {
        if (*(&v41 + 1) >= v19)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v21 = v35;
      if (!v35)
      {
        goto LABEL_24;
      }

      v20 = 0;
    }

    v30 = sub_F6D024(v21);
    if (*(&v35 + 1) < v30 && v20)
    {
      v32 = sub_F6D17C(v41, *(&v41 + 1));
      if (v32 == sub_F6D17C(v35, *(&v35 + 1)))
      {
        goto LABEL_24;
      }
    }

    else if (v20 == *(&v35 + 1) < v30)
    {
      goto LABEL_24;
    }
  }

  do
  {
LABEL_23:
    v22 = sub_F6D17C(v41, *(&v41 + 1));
    v23 = *v22;
    v24 = *(v22 + 16);
    *(a3 + 32) = *(v22 + 32);
    *a3 = v23;
    *(a3 + 16) = v24;
    sub_40558C(&v41);
    a3 += 40;
  }

  while ((sub_405D70(&v41, &v35) & 1) != 0);
LABEL_24:
  v46 = v41;
  v47 = v42;
  v25 = *v43;
  v26 = v44;
  v43[0] = 0;
  v43[1] = 0;
  v33 = *v45;
  v34 = v25;
  v27 = v45[2];
  v44 = 0;
  memset(v45, 0, sizeof(v45));
  if (v39)
  {
    *&v40 = v39;
    operator delete(v39);
  }

  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  if (v45[0])
  {
    v45[1] = v45[0];
    operator delete(v45[0]);
  }

  if (v43[0])
  {
    v43[1] = v43[0];
    operator delete(v43[0]);
  }

  v28 = *v7;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  v29 = *v10;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 0;
  if (v29)
  {
    operator delete(v29);
  }

  if (v28)
  {
    operator delete(v28);
  }

  *a4 = v46;
  *(a4 + 16) = v47;
  *(a4 + 24) = v34;
  *(a4 + 40) = v26;
  *(a4 + 48) = v33;
  *(a4 + 64) = v27;
  *(a4 + 72) = a3;
  if (v72)
  {
    *&v73 = v72;
    operator delete(v72);
  }

  if (v70)
  {
    *(&v70 + 1) = v70;
    operator delete(v70);
  }

  if (v66)
  {
    *&v67 = v66;
    operator delete(v66);
  }

  if (v64)
  {
    *(&v64 + 1) = v64;
    operator delete(v64);
  }
}

void sub_406384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *__p)
{
  sub_3DB674(&a13);
  sub_3DB674(&a23);
  sub_3DB6B8((v53 - 224));
  _Unwind_Resume(a1);
}

char *sub_4063F4(uint64_t a1, char *__src, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v5 = __src;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 3)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x3333333333333333 * (&v10[-*a1] >> 3);
    if (v12 > 0x666666666666666)
    {
      sub_1794();
    }

    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x333333333333333)
    {
      v14 = 0x666666666666666;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v74 = *a3;
    v75 = *(a3 + 16);
    v45 = 8 * ((__src - v11) >> 3);
    v46 = v45;
    *v76 = *(a3 + 24);
    v77 = *(a3 + 40);
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *v78 = *(a3 + 48);
    v79 = *(a3 + 64);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    v47 = 40 * a5;
    v48 = (v45 + 40 * a5);
    while (v47)
    {
      v49 = sub_4D1F50(v74, *(&v74 + 1));
      v50 = *v49;
      v51 = *(v49 + 16);
      *(v45 + 32) = *(v49 + 32);
      *v45 = v50;
      *(v45 + 16) = v51;
      v45 += 40;
      v47 -= 40;
      sub_3E3AF4(&v74);
    }

    if (v78[0])
    {
      v78[1] = v78[0];
      operator delete(v78[0]);
    }

    if (v76[0])
    {
      v76[1] = v76[0];
      operator delete(v76[0]);
    }

    v52 = *(a1 + 8) - v5;
    memcpy(v48, v5, v52);
    v53 = &v48[v52];
    *(a1 + 8) = v5;
    v54 = *a1;
    v55 = &v5[-*a1];
    v56 = v46 - v55;
    memcpy((v46 - v55), *a1, v55);
    *a1 = v56;
    *(a1 + 8) = v53;
    *(a1 + 16) = 0;
    if (v54)
    {
      operator delete(v54);
    }

    return v46;
  }

  v15 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - __src) >> 3);
  if (a5 <= v15)
  {
    v38 = &__src[40 * a5];
    v39 = &v10[-40 * a5];
    for (i = *(a1 + 8); v39 < v10; i += 40)
    {
      v41 = *v39;
      v42 = *(v39 + 1);
      *(i + 32) = *(v39 + 4);
      *i = v41;
      *(i + 16) = v42;
      v39 += 40;
    }

    *(a1 + 8) = i;
    if (v10 != v38)
    {
      memmove(&__src[40 * a5], __src, v10 - v38);
    }

    v80 = *a3;
    v43 = *(a3 + 24);
    v81 = *(a3 + 16);
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v44 = *(a3 + 32);
    if (v44 != v43)
    {
      if (((v44 - v43) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v85 = 0;
    v86 = 0;
    v87 = 0;
    v58 = *(a3 + 48);
    v57 = *(a3 + 56);
    if (v57 != v58)
    {
      if (((v57 - v58) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v59 = 0;
    v60 = sub_4D1F50(v80, *(&v80 + 1));
    v61 = *v60;
    v62 = *(v60 + 16);
    *(v5 + 4) = *(v60 + 32);
    *v5 = v61;
    *(v5 + 1) = v62;
    if (a5 != 1)
    {
      v63 = v5 + 40;
      v64 = a5 + 1;
      do
      {
        sub_3E3AF4(&v80);
        v65 = sub_4D1F50(v80, *(&v80 + 1));
        v66 = *v65;
        v67 = *(v65 + 16);
        *(v63 + 4) = *(v65 + 32);
        *v63 = v66;
        *(v63 + 1) = v67;
        v63 += 40;
        --v64;
      }

      while (v64 > 2);
      v59 = v85;
    }

    if (v59)
    {
      v86 = v59;
      operator delete(v59);
    }

    v68 = v82;
    if (v82)
    {
      v83 = v82;
LABEL_96:
      operator delete(v68);
    }
  }

  else
  {
    v72 = v10 - __src;
    v120 = *a3;
    v17 = *(a3 + 24);
    v121 = *(a3 + 16);
    v122 = 0;
    v123 = 0uLL;
    v18 = *(a3 + 32);
    if (v18 != v17)
    {
      if (((v18 - v17) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v124 = 0;
    v125 = 0uLL;
    v20 = *(a3 + 48);
    v19 = *(a3 + 56);
    if (v19 != v20)
    {
      if (((v19 - v20) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    sub_403378(&v120, v15);
    v126 = v120;
    v21 = v122;
    v127 = v121;
    v128 = v122;
    v22 = v123;
    v129 = v123;
    v122 = 0;
    v123 = 0uLL;
    v73 = v125;
    v131 = v125;
    v23 = v124;
    v130 = v124;
    v125 = 0uLL;
    v124 = 0;
    v112 = v120;
    v113 = v121;
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v71 = v22;
    if (v22 != v21)
    {
      if (((v22 - v21) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v118 = 0;
    v117 = 0;
    v119 = 0;
    v70 = v22 - v21;
    if (v73 != v23)
    {
      if (((v73 - v23) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v104 = *a4;
    v24 = *(a4 + 3);
    v105 = *(a4 + 2);
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v25 = *(a4 + 4);
    if (v25 != v24)
    {
      if (((v25 - v24) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    __p = 0;
    v110 = 0;
    v111 = 0;
    v27 = *(a4 + 6);
    v26 = *(a4 + 7);
    if (v26 != v27)
    {
      if (((v26 - v27) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    sub_407204(a1, &v112, &v104);
    if (__p)
    {
      v110 = __p;
      operator delete(__p);
    }

    if (v106)
    {
      v107 = v106;
      operator delete(v106);
    }

    if (v117)
    {
      v118 = v117;
      operator delete(v117);
    }

    if (v114)
    {
      v115 = v114;
      operator delete(v114);
    }

    if (v72 >= 1)
    {
      v28 = &v5[40 * a5];
      v29 = *(a1 + 8);
      v30 = &v29[-40 * a5];
      for (j = v29; v30 < v10; j += 40)
      {
        v32 = *v30;
        v33 = *(v30 + 16);
        *(j + 4) = *(v30 + 32);
        *j = v32;
        *(j + 1) = v33;
        v30 += 40;
      }

      *(a1 + 8) = j;
      if (v29 != v28)
      {
        memmove(&v5[40 * a5], v5, v29 - v28);
      }

      v96 = *a3;
      v34 = *(a3 + 24);
      v97 = *(a3 + 16);
      v98 = 0;
      v99 = 0;
      v100 = 0;
      v35 = *(a3 + 32);
      if (v35 != v34)
      {
        if (((v35 - v34) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v101 = 0;
      v102 = 0;
      v103 = 0;
      v37 = *(a3 + 48);
      v36 = *(a3 + 56);
      if (v36 != v37)
      {
        if (((v36 - v37) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v88 = v126;
      v89 = v127;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      if (v71 != v21)
      {
        if ((v70 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v93 = 0;
      v94 = 0;
      v95 = 0;
      if (v73 != v23)
      {
        if (((v73 - v23) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      sub_407328(&v96, &v88, v5);
      if (v93)
      {
        v94 = v93;
        operator delete(v93);
      }

      if (v90)
      {
        v91 = v90;
        operator delete(v90);
      }

      if (v101)
      {
        v102 = v101;
        operator delete(v101);
      }

      if (v98)
      {
        v99 = v98;
        operator delete(v98);
      }
    }

    if (v23)
    {
      operator delete(v23);
    }

    if (v21)
    {
      v68 = v21;
      goto LABEL_96;
    }
  }

  return v5;
}

void sub_406D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_3DB674(&a37);
  sub_3DB674(&a47);
  sub_3DB674((v47 - 176));
  _Unwind_Resume(a1);
}

void sub_406E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = STACK[0x200];
  if (STACK[0x200])
  {
    STACK[0x208] = v72;
    operator delete(v72);
  }

  if (a70)
  {
    operator delete(a70);
    sub_3DB674((v70 - 176));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x406E04);
}

void sub_406E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v29 = *(v27 - 208);
  if (v29)
  {
    operator delete(v29);
  }

  v30 = *(v27 - 232);
  if (v30)
  {
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_406EB8(__int128 *a1, __int128 *a2)
{
  v19 = *a1;
  v2 = *(a1 + 3);
  v20 = *(a1 + 2);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v3 = *(a1 + 4);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v5 = *(a1 + 6);
  v4 = *(a1 + 7);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *a2;
  v6 = *(a2 + 3);
  v12 = *(a2 + 2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v7 = *(a2 + 4);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v9 = *(a2 + 6);
  v8 = *(a2 + 7);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 0;
}

void sub_40717C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_407204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v13 = *a2;
  v14 = *(a2 + 16);
  *v15 = *(a2 + 24);
  v16 = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *v17 = *(a2 + 48);
  v18 = *(a2 + 64);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v5 = *a3;
  v8 = *(a3 + 16);
  v7 = v5;
  *v9 = *(a3 + 24);
  v10 = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *__p = *(a3 + 48);
  v12 = *(a3 + 64);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  v6 = sub_4075F4(a1, &v13, &v7, v4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  *(a1 + 8) = v6;
}

void sub_407308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  *(v19 + 8) = v20;
  _Unwind_Resume(a1);
}

uint64_t sub_407328(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v21 = *a1;
  v3 = *(a1 + 3);
  v22 = *(a1 + 2);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v4 = *(a1 + 4);
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = *(a1 + 6);
  v5 = *(a1 + 7);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = *a2;
  v7 = *(a2 + 3);
  v14 = *(a2 + 2);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v8 = *(a2 + 4);
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  v10 = *(a2 + 6);
  v9 = *(a2 + 7);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_407CD4(&v21, &v13, a3, v29);
  v11 = v34;
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return v11;
}

void sub_407574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_407590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (v19)
  {
    operator delete(v19);
    sub_3DB674(&a19);
    _Unwind_Resume(a1);
  }

  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_4075C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4075F4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v42 = *a2;
  v5 = *(a2 + 2);
  v44 = *(a2 + 24);
  v6 = *(a2 + 5);
  v43 = v5;
  v45 = v6;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *v46 = a2[3];
  v47 = *(a2 + 8);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v7 = *(a3 + 2);
  v36 = *a3;
  v38 = *(a3 + 24);
  v8 = *(a3 + 5);
  v37 = v7;
  v39 = v8;
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  *__p = a3[3];
  v41 = *(a3 + 8);
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  sub_407920(&v42, &v36, &v48);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v38)
  {
    *(&v38 + 1) = v38;
    operator delete(v38);
  }

  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  if (v44)
  {
    *(&v44 + 1) = v44;
    operator delete(v44);
  }

  v30 = v48;
  v31 = v49;
  *v32 = v50;
  v50 = 0uLL;
  v10 = v51;
  v9 = v52;
  v51 = 0;
  v52 = 0;
  v33 = v10;
  v34 = v9;
  v11 = v53;
  v35 = v53;
  v53 = 0uLL;
  v25 = v55;
  v24 = v54;
  *v26 = v56;
  v56 = 0uLL;
  v12 = v58;
  v27 = v57;
  v28 = v58;
  v29 = v59;
  v13 = v59;
  v57 = 0;
  v58 = 0;
  v59 = 0uLL;
  if (v9 == v11 || v12 == v13)
  {
    if ((v9 == v11) == (v12 == v13))
    {
      goto LABEL_18;
    }
  }

  else if (v31 == v25)
  {
    if (v30)
    {
      v14 = sub_4D1DC0(v30);
      v15 = *(&v30 + 1) < v14;
      v16 = v24;
      if (!v24)
      {
        if (*(&v30 + 1) >= v14)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v16 = v24;
      if (!v24)
      {
        goto LABEL_18;
      }

      v15 = 0;
    }

    v21 = sub_4D1DC0(v16);
    if (*(&v24 + 1) < v21 && v15)
    {
      v23 = sub_4D1F50(v30, *(&v30 + 1));
      if (v23 == sub_4D1F50(v24, *(&v24 + 1)))
      {
        goto LABEL_18;
      }
    }

    else if (v15 == *(&v24 + 1) < v21)
    {
      goto LABEL_18;
    }
  }

  do
  {
LABEL_17:
    v17 = sub_4D1F50(v30, *(&v30 + 1));
    v18 = *v17;
    v19 = *(v17 + 16);
    *(a4 + 32) = *(v17 + 32);
    *a4 = v18;
    *(a4 + 16) = v19;
    sub_3E3AF4(&v30);
    a4 += 40;
  }

  while (!sub_3E6794(&v30, &v24));
LABEL_18:
  if (v28)
  {
    *&v29 = v28;
    operator delete(v28);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (v34)
  {
    *&v35 = v34;
    operator delete(v34);
  }

  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }

  if (v58)
  {
    *&v59 = v58;
    operator delete(v58);
  }

  if (v56)
  {
    *(&v56 + 1) = v56;
    operator delete(v56);
  }

  if (v52)
  {
    *&v53 = v52;
    operator delete(v52);
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }

  return a4;
}

void sub_4078DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  sub_3DB6B8((v19 - 176));
  _Unwind_Resume(a1);
}

void sub_407920(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *a1;
  v11 = *(a1 + 16);
  *v12 = *(a1 + 24);
  v13 = *(a1 + 40);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v3 = *a2;
  v5 = *(a2 + 16);
  v4 = v3;
  *v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *__p = *(a2 + 48);
  v9 = *(a2 + 64);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_407A00(&v10, &v4, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void sub_407A00(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *a1;
  v4 = *(a1 + 3);
  v17 = *(a1 + 2);
  v5 = *(a1 + 4);
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  v7 = *(a1 + 6);
  v6 = *(a1 + 7);
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  if (v5 != v4)
  {
    if (((v5 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = v15;
  v14 = v17;
  v16 = *a2;
  v8 = *(a2 + 3);
  v18 = *(a2 + 2);
  v9 = *(a2 + 4);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v10 = *(a2 + 6);
  v11 = *(a2 + 7);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  if (v9 != v8)
  {
    if (((v9 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = v11 - v10;
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a3 + 72) = v16;
  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 88) = v18;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  if (v8)
  {
    operator delete(v8);
  }

  if (v7)
  {
    operator delete(v7);
  }

  if (v4)
  {

    operator delete(v4);
  }
}

void sub_407C94(void *a1)
{
  if (v1)
  {
    operator delete(v1);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

void sub_407CD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *a1;
  v12 = *(a1 + 16);
  *v13 = *(a1 + 24);
  v14 = *(a1 + 40);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v4 = *a2;
  v6 = *(a2 + 16);
  v5 = v4;
  *v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *__p = *(a2 + 48);
  v10 = *(a2 + 64);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_407DD8(&v11, &v5, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }
}

void sub_407DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_407DD8(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = *a1;
  v7 = a1 + 24;
  v6 = *(a1 + 3);
  v55 = *(a1 + 2);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v8 = *(a1 + 4);
  if (v8 != v6)
  {
    if (((v8 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *(a1 + 6);
  v9 = *(a1 + 7);
  v10 = a1 + 3;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  if (v9 != v11)
  {
    if (((v9 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v48 = *a2;
  v12 = *(a2 + 2);
  v50 = *(a2 + 24);
  v13 = *(a2 + 5);
  v49 = v12;
  v51 = v13;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *__p = a2[3];
  v53 = *(a2 + 8);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  sub_407920(&v54, &v48, &v62);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  v41 = v62;
  v42 = v63;
  *v43 = v64;
  v64 = 0uLL;
  v15 = v65;
  v14 = v66;
  v65 = 0;
  v66 = 0;
  v44 = v15;
  v45[0] = v14;
  v16 = v67;
  *&v45[1] = v67;
  v67 = 0uLL;
  v36 = v69;
  v35 = v68;
  *v37 = v70;
  v70 = 0uLL;
  v17 = v72;
  v38 = v71;
  v39 = v72;
  v40 = v73;
  v18 = v73;
  v71 = 0;
  v72 = 0;
  v73 = 0uLL;
  if (v14 == v16 || v17 == v18)
  {
    if ((v14 == v16) == (v17 == v18))
    {
      goto LABEL_24;
    }
  }

  else if (v42 == v36)
  {
    if (v41)
    {
      v19 = sub_4D1DC0(v41);
      v20 = *(&v41 + 1) < v19;
      v21 = v35;
      if (!v35)
      {
        if (*(&v41 + 1) >= v19)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v21 = v35;
      if (!v35)
      {
        goto LABEL_24;
      }

      v20 = 0;
    }

    v30 = sub_4D1DC0(v21);
    if (*(&v35 + 1) < v30 && v20)
    {
      v32 = sub_4D1F50(v41, *(&v41 + 1));
      if (v32 == sub_4D1F50(v35, *(&v35 + 1)))
      {
        goto LABEL_24;
      }
    }

    else if (v20 == *(&v35 + 1) < v30)
    {
      goto LABEL_24;
    }
  }

  do
  {
LABEL_23:
    v22 = sub_4D1F50(v41, *(&v41 + 1));
    v23 = *v22;
    v24 = *(v22 + 16);
    *(a3 + 32) = *(v22 + 32);
    *a3 = v23;
    *(a3 + 16) = v24;
    sub_3E3AF4(&v41);
    a3 += 40;
  }

  while (!sub_3E6794(&v41, &v35));
LABEL_24:
  v46 = v41;
  v47 = v42;
  v25 = *v43;
  v26 = v44;
  v43[0] = 0;
  v43[1] = 0;
  v33 = *v45;
  v34 = v25;
  v27 = v45[2];
  v44 = 0;
  memset(v45, 0, sizeof(v45));
  if (v39)
  {
    *&v40 = v39;
    operator delete(v39);
  }

  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  if (v45[0])
  {
    v45[1] = v45[0];
    operator delete(v45[0]);
  }

  if (v43[0])
  {
    v43[1] = v43[0];
    operator delete(v43[0]);
  }

  v28 = *v7;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  v29 = *v10;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 0;
  if (v29)
  {
    operator delete(v29);
  }

  if (v28)
  {
    operator delete(v28);
  }

  *a4 = v46;
  *(a4 + 16) = v47;
  *(a4 + 24) = v34;
  *(a4 + 40) = v26;
  *(a4 + 48) = v33;
  *(a4 + 64) = v27;
  *(a4 + 72) = a3;
  if (v72)
  {
    *&v73 = v72;
    operator delete(v72);
  }

  if (v70)
  {
    *(&v70 + 1) = v70;
    operator delete(v70);
  }

  if (v66)
  {
    *&v67 = v66;
    operator delete(v66);
  }

  if (v64)
  {
    *(&v64 + 1) = v64;
    operator delete(v64);
  }
}

void sub_4081E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *__p)
{
  sub_3DB674(&a13);
  sub_3DB674(&a23);
  sub_3DB6B8((v53 - 224));
  _Unwind_Resume(a1);
}

char *sub_408254(uint64_t a1, char *__src, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v5 = __src;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 3)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x3333333333333333 * (&v10[-*a1] >> 3);
    if (v12 > 0x666666666666666)
    {
      sub_1794();
    }

    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x333333333333333)
    {
      v14 = 0x666666666666666;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v68 = *a3;
    v69 = *(a3 + 16);
    v42 = 8 * ((__src - v11) >> 3);
    v43 = v42;
    *v70 = *(a3 + 24);
    v71 = *(a3 + 40);
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *v72 = *(a3 + 48);
    v73 = *(a3 + 64);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    v44 = 40 * a5;
    v45 = (v42 + 40 * a5);
    while (v44)
    {
      v46 = sub_F6FE3C(v68, *(&v68 + 1));
      v47 = *v46;
      v48 = *(v46 + 16);
      *(v42 + 32) = *(v46 + 32);
      *v42 = v47;
      *(v42 + 16) = v48;
      v42 += 40;
      v44 -= 40;
      sub_4095A0(&v68);
    }

    if (v72[0])
    {
      v72[1] = v72[0];
      operator delete(v72[0]);
    }

    if (v70[0])
    {
      v70[1] = v70[0];
      operator delete(v70[0]);
    }

    v49 = *(a1 + 8) - v5;
    memcpy(v45, v5, v49);
    v50 = &v45[v49];
    *(a1 + 8) = v5;
    v51 = *a1;
    v52 = &v5[-*a1];
    v53 = v43 - v52;
    memcpy((v43 - v52), *a1, v52);
    *a1 = v53;
    *(a1 + 8) = v50;
    *(a1 + 16) = 0;
    if (v51)
    {
      operator delete(v51);
    }

    return v43;
  }

  v15 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - __src) >> 3);
  if (a5 <= v15)
  {
    v35 = &__src[40 * a5];
    v36 = &v10[-40 * a5];
    for (i = *(a1 + 8); v36 < v10; i += 40)
    {
      v38 = *v36;
      v39 = *(v36 + 1);
      *(i + 32) = *(v36 + 4);
      *i = v38;
      *(i + 16) = v39;
      v36 += 40;
    }

    *(a1 + 8) = i;
    if (v10 != v35)
    {
      memmove(&__src[40 * a5], __src, v10 - v35);
    }

    v74 = *a3;
    v40 = *(a3 + 24);
    v75 = *(a3 + 16);
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v41 = *(a3 + 32);
    if (v41 != v40)
    {
      if (((v41 - v40) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v79 = 0;
    v80 = 0;
    v81 = 0;
    v55 = *(a3 + 48);
    v54 = *(a3 + 56);
    if (v54 != v55)
    {
      if (((v54 - v55) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v56 = 0;
    v57 = sub_F6FE3C(v74, *(&v74 + 1));
    v58 = *v57;
    v59 = *(v57 + 16);
    *(v5 + 4) = *(v57 + 32);
    *v5 = v58;
    *(v5 + 1) = v59;
    if (a5 != 1)
    {
      v60 = v5 + 40;
      v61 = a5 + 1;
      do
      {
        sub_4095A0(&v74);
        v62 = sub_F6FE3C(v74, *(&v74 + 1));
        v63 = *v62;
        v64 = *(v62 + 16);
        *(v60 + 4) = *(v62 + 32);
        *v60 = v63;
        *(v60 + 1) = v64;
        v60 += 40;
        --v61;
      }

      while (v61 > 2);
      v56 = v79;
    }

    if (v56)
    {
      v80 = v56;
      operator delete(v56);
    }

    v65 = v76;
    if (v76)
    {
      v77 = v76;
LABEL_100:
      operator delete(v65);
    }
  }

  else
  {
    v67 = v10 - __src;
    v114 = *a3;
    v17 = *(a3 + 24);
    v115 = *(a3 + 16);
    v116 = 0;
    v117 = 0;
    v118 = 0;
    v18 = *(a3 + 32);
    if (v18 != v17)
    {
      if (((v18 - v17) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v119 = 0;
    v120 = 0;
    v121 = 0;
    v20 = *(a3 + 48);
    v19 = *(a3 + 56);
    if (v19 != v20)
    {
      if (((v19 - v20) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    sub_409024(&v114, v15, &v122);
    if (v119)
    {
      v120 = v119;
      operator delete(v119);
    }

    if (v116)
    {
      v117 = v116;
      operator delete(v116);
    }

    v106 = v122;
    v107 = v123;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    if (v125 != v124)
    {
      if (((v125 - v124) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v111 = 0;
    v112 = 0;
    v113 = 0;
    if (v127 != v126)
    {
      if (((v127 - v126) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v98 = *a4;
    v21 = *(a4 + 3);
    v99 = *(a4 + 2);
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v22 = *(a4 + 4);
    if (v22 != v21)
    {
      if (((v22 - v21) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    __p = 0;
    v104 = 0;
    v105 = 0;
    v24 = *(a4 + 6);
    v23 = *(a4 + 7);
    if (v23 != v24)
    {
      if (((v23 - v24) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    sub_4091B0(a1, &v106, &v98);
    if (__p)
    {
      v104 = __p;
      operator delete(__p);
    }

    if (v100)
    {
      v101 = v100;
      operator delete(v100);
    }

    if (v111)
    {
      v112 = v111;
      operator delete(v111);
    }

    if (v108)
    {
      v109 = v108;
      operator delete(v108);
    }

    if (v67 >= 1)
    {
      v25 = &v5[40 * a5];
      v26 = *(a1 + 8);
      v27 = &v26[-40 * a5];
      for (j = v26; v27 < v10; j += 40)
      {
        v29 = *v27;
        v30 = *(v27 + 16);
        *(j + 4) = *(v27 + 32);
        *j = v29;
        *(j + 1) = v30;
        v27 += 40;
      }

      *(a1 + 8) = j;
      if (v26 != v25)
      {
        memmove(&v5[40 * a5], v5, v26 - v25);
      }

      v90 = *a3;
      v31 = *(a3 + 24);
      v91 = *(a3 + 16);
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v32 = *(a3 + 32);
      if (v32 != v31)
      {
        if (((v32 - v31) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v95 = 0;
      v96 = 0;
      v97 = 0;
      v34 = *(a3 + 48);
      v33 = *(a3 + 56);
      if (v33 != v34)
      {
        if (((v33 - v34) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v82 = v122;
      v83 = v123;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      if (v125 != v124)
      {
        if (((v125 - v124) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v87 = 0;
      v88 = 0;
      v89 = 0;
      if (v127 != v126)
      {
        if (((v127 - v126) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      sub_4092D4(&v90, &v82, v5);
      if (v87)
      {
        v88 = v87;
        operator delete(v87);
      }

      if (v84)
      {
        v85 = v84;
        operator delete(v84);
      }

      if (v95)
      {
        v96 = v95;
        operator delete(v95);
      }

      if (v92)
      {
        v93 = v92;
        operator delete(v92);
      }
    }

    if (v126)
    {
      v127 = v126;
      operator delete(v126);
    }

    v65 = v124;
    if (v124)
    {
      v125 = v124;
      goto LABEL_100;
    }
  }

  return v5;
}

void sub_408B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  sub_3DB674(&a31);
  sub_3DB674(&a41);
  sub_3DB674((v61 - 168));
  _Unwind_Resume(a1);
}

void sub_408C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a64)
  {
    operator delete(a64);
    sub_3DB674((v67 - 168));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x408C24);
}

void sub_408C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v23 = *(v21 - 192);
  if (v23)
  {
    operator delete(v23);
  }

  v24 = *(v21 - 216);
  if (v24)
  {
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_408CD8(__int128 *a1, __int128 *a2)
{
  v19 = *a1;
  v2 = *(a1 + 3);
  v20 = *(a1 + 2);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v3 = *(a1 + 4);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v5 = *(a1 + 6);
  v4 = *(a1 + 7);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *a2;
  v6 = *(a2 + 3);
  v12 = *(a2 + 2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v7 = *(a2 + 4);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v9 = *(a2 + 6);
  v8 = *(a2 + 7);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 0;
}

void sub_408F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

__n128 sub_409024@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v6 = a2 + 1;
      do
      {
        sub_4095A0(a1);
        --v6;
      }

      while (v6 > 1);
    }

    goto LABEL_27;
  }

  v7 = a1[2];
  if (!v7)
  {
    a1[1] += a2;
    goto LABEL_27;
  }

LABEL_13:
  while (1)
  {
    v8 = a1[3] + 16 * v7;
    if (*a1)
    {
      break;
    }

    if (*v8)
    {
      v11 = 0;
      v12 = *(v8 + 8);
      v13 = sub_F6FD88(*v8);
LABEL_11:
      if ((v11 ^ (v12 < v13)))
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    v7 = a1[2] - 1;
    a1[2] = v7;
    *a1 = *(a1[6] + 16 * v7);
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  v9 = a1[1];
  v10 = sub_F6FD88(*a1);
  v11 = v9 < v10;
  if (*v8)
  {
    v12 = *(v8 + 8);
    v13 = sub_F6FD88(*v8);
    v14 = !v11 || v12 >= v13;
    if (v14)
    {
      goto LABEL_11;
    }

    v15 = sub_F6FE3C(*a1, a1[1]);
    if (v15 != sub_F6FE3C(*v8, *(v8 + 8)))
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (v9 >= v10)
  {
    goto LABEL_12;
  }

LABEL_8:
  while (1)
  {
    --a1[1];
    v14 = __CFADD__(v3++, 1);
    if (v14)
    {
      break;
    }

    v7 = a1[2];
    if (v7)
    {
      goto LABEL_13;
    }
  }

LABEL_27:
  *a3 = *a1;
  *(a3 + 16) = a1[2];
  *(a3 + 24) = *(a1 + 3);
  *(a3 + 40) = a1[5];
  a1[3] = 0;
  a1[4] = 0;
  result = *(a1 + 3);
  *(a3 + 48) = result;
  *(a3 + 64) = a1[8];
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  return result;
}

void sub_4091B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v13 = *a2;
  v14 = *(a2 + 16);
  *v15 = *(a2 + 24);
  v16 = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *v17 = *(a2 + 48);
  v18 = *(a2 + 64);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v5 = *a3;
  v8 = *(a3 + 16);
  v7 = v5;
  *v9 = *(a3 + 24);
  v10 = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *__p = *(a3 + 48);
  v12 = *(a3 + 64);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  v6 = sub_4096A4(a1, &v13, &v7, v4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  *(a1 + 8) = v6;
}

void sub_4092B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  *(v19 + 8) = v20;
  _Unwind_Resume(a1);
}

uint64_t sub_4092D4(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v21 = *a1;
  v3 = *(a1 + 3);
  v22 = *(a1 + 2);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v4 = *(a1 + 4);
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = *(a1 + 6);
  v5 = *(a1 + 7);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = *a2;
  v7 = *(a2 + 3);
  v14 = *(a2 + 2);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v8 = *(a2 + 4);
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  v10 = *(a2 + 6);
  v9 = *(a2 + 7);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_409E88(&v21, &v13, a3, v29);
  v11 = v34;
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return v11;
}

void sub_409520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_40953C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (v19)
  {
    operator delete(v19);
    sub_3DB674(&a19);
    _Unwind_Resume(a1);
  }

  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_409574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_4095A0(uint64_t *a1)
{
  v2 = a1[2];
  ++a1[1];
  v3 = a1[6];
  for (i = a1[7]; v2 < ((i - v3) >> 4) - 1; i = a1[7])
  {
    v6 = v3 + 16 * v2;
    if (!*a1)
    {
      if (!*v6)
      {
        goto LABEL_3;
      }

      v9 = 0;
      v10 = *(v6 + 8);
      v11 = sub_F6FD88(*v6);
LABEL_2:
      if ((v9 ^ (v10 < v11)))
      {
        return a1;
      }

      goto LABEL_3;
    }

    v7 = a1[1];
    v8 = sub_F6FD88(*a1);
    v9 = v7 < v8;
    if (*v6)
    {
      v10 = *(v6 + 8);
      v11 = sub_F6FD88(*v6);
      if (!v9 || v10 >= v11)
      {
        goto LABEL_2;
      }

      v13 = sub_F6FE3C(*a1, a1[1]);
      if (v13 != sub_F6FE3C(*v6, *(v6 + 8)))
      {
        return a1;
      }
    }

    else if (v7 < v8)
    {
      return a1;
    }

LABEL_3:
    v5 = a1[3];
    v2 = a1[2] + 1;
    a1[2] = v2;
    *a1 = *(v5 + 16 * v2);
    v3 = a1[6];
  }

  return a1;
}

uint64_t sub_4096A4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v42 = *a2;
  v5 = *(a2 + 2);
  v44 = *(a2 + 24);
  v6 = *(a2 + 5);
  v43 = v5;
  v45 = v6;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *v46 = a2[3];
  v47 = *(a2 + 8);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v7 = *(a3 + 2);
  v36 = *a3;
  v38 = *(a3 + 24);
  v8 = *(a3 + 5);
  v37 = v7;
  v39 = v8;
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  *__p = a3[3];
  v41 = *(a3 + 8);
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  sub_4099D0(&v42, &v36, &v48);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v38)
  {
    *(&v38 + 1) = v38;
    operator delete(v38);
  }

  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  if (v44)
  {
    *(&v44 + 1) = v44;
    operator delete(v44);
  }

  v30 = v48;
  v31 = v49;
  *v32 = v50;
  v50 = 0uLL;
  v10 = v51;
  v9 = v52;
  v51 = 0;
  v52 = 0;
  v33 = v10;
  v34 = v9;
  v11 = v53;
  v35 = v53;
  v53 = 0uLL;
  v25 = v55;
  v24 = v54;
  *v26 = v56;
  v56 = 0uLL;
  v12 = v58;
  v27 = v57;
  v28 = v58;
  v29 = v59;
  v13 = v59;
  v57 = 0;
  v58 = 0;
  v59 = 0uLL;
  if (v9 == v11 || v12 == v13)
  {
    if ((v9 == v11) == (v12 == v13))
    {
      goto LABEL_18;
    }
  }

  else if (v31 == v25)
  {
    if (v30)
    {
      v14 = sub_F6FD88(v30);
      v15 = *(&v30 + 1) < v14;
      v16 = v24;
      if (!v24)
      {
        if (*(&v30 + 1) >= v14)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v16 = v24;
      if (!v24)
      {
        goto LABEL_18;
      }

      v15 = 0;
    }

    v21 = sub_F6FD88(v16);
    if (*(&v24 + 1) < v21 && v15)
    {
      v23 = sub_F6FE3C(v30, *(&v30 + 1));
      if (v23 == sub_F6FE3C(v24, *(&v24 + 1)))
      {
        goto LABEL_18;
      }
    }

    else if (v15 == *(&v24 + 1) < v21)
    {
      goto LABEL_18;
    }
  }

  do
  {
LABEL_17:
    v17 = sub_F6FE3C(v30, *(&v30 + 1));
    v18 = *v17;
    v19 = *(v17 + 16);
    *(a4 + 32) = *(v17 + 32);
    *a4 = v18;
    *(a4 + 16) = v19;
    sub_4095A0(&v30);
    a4 += 40;
  }

  while ((sub_409D84(&v30, &v24) & 1) != 0);
LABEL_18:
  if (v28)
  {
    *&v29 = v28;
    operator delete(v28);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (v34)
  {
    *&v35 = v34;
    operator delete(v34);
  }

  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }

  if (v58)
  {
    *&v59 = v58;
    operator delete(v58);
  }

  if (v56)
  {
    *(&v56 + 1) = v56;
    operator delete(v56);
  }

  if (v52)
  {
    *&v53 = v52;
    operator delete(v52);
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }

  return a4;
}

void sub_40998C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  sub_3DB6B8((v19 - 176));
  _Unwind_Resume(a1);
}

void sub_4099D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *a1;
  v11 = *(a1 + 16);
  *v12 = *(a1 + 24);
  v13 = *(a1 + 40);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v3 = *a2;
  v5 = *(a2 + 16);
  v4 = v3;
  *v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *__p = *(a2 + 48);
  v9 = *(a2 + 64);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_409AB0(&v10, &v4, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void sub_409AB0(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *a1;
  v4 = *(a1 + 3);
  v17 = *(a1 + 2);
  v5 = *(a1 + 4);
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  v7 = *(a1 + 6);
  v6 = *(a1 + 7);
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  if (v5 != v4)
  {
    if (((v5 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = v15;
  v14 = v17;
  v16 = *a2;
  v8 = *(a2 + 3);
  v18 = *(a2 + 2);
  v9 = *(a2 + 4);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v10 = *(a2 + 6);
  v11 = *(a2 + 7);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  if (v9 != v8)
  {
    if (((v9 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = v11 - v10;
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a3 + 72) = v16;
  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 88) = v18;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  if (v8)
  {
    operator delete(v8);
  }

  if (v7)
  {
    operator delete(v7);
  }

  if (v4)
  {

    operator delete(v4);
  }
}

void sub_409D44(void *a1)
{
  if (v1)
  {
    operator delete(v1);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

uint64_t sub_409D84(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = a2[6];
  v5 = a2[7];
  if (v2 == v3 || v4 == v5)
  {
    return (v2 == v3) ^ (v4 == v5);
  }

  if (a1[2] != a2[2])
  {
    return 1;
  }

  if (*a1)
  {
    v8 = a1;
    v9 = a1[1];
    v10 = a2;
    v11 = sub_F6FD88(*a1);
    a2 = v10;
    v12 = v9 < v11;
    v13 = *a2;
    if (*a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = a1;
    v12 = 0;
    v13 = *a2;
    if (*a2)
    {
LABEL_10:
      v14 = a2;
      v15 = a2[1];
      v16 = v15 < sub_F6FD88(v13);
      if (v12 && v16)
      {
        v17 = sub_F6FE3C(*v8, v8[1]);
        return v17 != sub_F6FE3C(*v14, v14[1]);
      }

      return v12 ^ v16;
    }
  }

  v16 = 0;
  return v12 ^ v16;
}

void sub_409E88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *a1;
  v12 = *(a1 + 16);
  *v13 = *(a1 + 24);
  v14 = *(a1 + 40);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v4 = *a2;
  v6 = *(a2 + 16);
  v5 = v4;
  *v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *__p = *(a2 + 48);
  v10 = *(a2 + 64);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_409F8C(&v11, &v5, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }
}

void sub_409F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_409F8C(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = *a1;
  v7 = a1 + 24;
  v6 = *(a1 + 3);
  v55 = *(a1 + 2);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v8 = *(a1 + 4);
  if (v8 != v6)
  {
    if (((v8 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *(a1 + 6);
  v9 = *(a1 + 7);
  v10 = a1 + 3;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  if (v9 != v11)
  {
    if (((v9 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v48 = *a2;
  v12 = *(a2 + 2);
  v50 = *(a2 + 24);
  v13 = *(a2 + 5);
  v49 = v12;
  v51 = v13;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *__p = a2[3];
  v53 = *(a2 + 8);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  sub_4099D0(&v54, &v48, &v62);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  v41 = v62;
  v42 = v63;
  *v43 = v64;
  v64 = 0uLL;
  v15 = v65;
  v14 = v66;
  v65 = 0;
  v66 = 0;
  v44 = v15;
  v45[0] = v14;
  v16 = v67;
  *&v45[1] = v67;
  v67 = 0uLL;
  v36 = v69;
  v35 = v68;
  *v37 = v70;
  v70 = 0uLL;
  v17 = v72;
  v38 = v71;
  v39 = v72;
  v40 = v73;
  v18 = v73;
  v71 = 0;
  v72 = 0;
  v73 = 0uLL;
  if (v14 == v16 || v17 == v18)
  {
    if ((v14 == v16) == (v17 == v18))
    {
      goto LABEL_24;
    }
  }

  else if (v42 == v36)
  {
    if (v41)
    {
      v19 = sub_F6FD88(v41);
      v20 = *(&v41 + 1) < v19;
      v21 = v35;
      if (!v35)
      {
        if (*(&v41 + 1) >= v19)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v21 = v35;
      if (!v35)
      {
        goto LABEL_24;
      }

      v20 = 0;
    }

    v30 = sub_F6FD88(v21);
    if (*(&v35 + 1) < v30 && v20)
    {
      v32 = sub_F6FE3C(v41, *(&v41 + 1));
      if (v32 == sub_F6FE3C(v35, *(&v35 + 1)))
      {
        goto LABEL_24;
      }
    }

    else if (v20 == *(&v35 + 1) < v30)
    {
      goto LABEL_24;
    }
  }

  do
  {
LABEL_23:
    v22 = sub_F6FE3C(v41, *(&v41 + 1));
    v23 = *v22;
    v24 = *(v22 + 16);
    *(a3 + 32) = *(v22 + 32);
    *a3 = v23;
    *(a3 + 16) = v24;
    sub_4095A0(&v41);
    a3 += 40;
  }

  while ((sub_409D84(&v41, &v35) & 1) != 0);
LABEL_24:
  v46 = v41;
  v47 = v42;
  v25 = *v43;
  v26 = v44;
  v43[0] = 0;
  v43[1] = 0;
  v33 = *v45;
  v34 = v25;
  v27 = v45[2];
  v44 = 0;
  memset(v45, 0, sizeof(v45));
  if (v39)
  {
    *&v40 = v39;
    operator delete(v39);
  }

  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  if (v45[0])
  {
    v45[1] = v45[0];
    operator delete(v45[0]);
  }

  if (v43[0])
  {
    v43[1] = v43[0];
    operator delete(v43[0]);
  }

  v28 = *v7;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  v29 = *v10;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 0;
  if (v29)
  {
    operator delete(v29);
  }

  if (v28)
  {
    operator delete(v28);
  }

  *a4 = v46;
  *(a4 + 16) = v47;
  *(a4 + 24) = v34;
  *(a4 + 40) = v26;
  *(a4 + 48) = v33;
  *(a4 + 64) = v27;
  *(a4 + 72) = a3;
  if (v72)
  {
    *&v73 = v72;
    operator delete(v72);
  }

  if (v70)
  {
    *(&v70 + 1) = v70;
    operator delete(v70);
  }

  if (v66)
  {
    *&v67 = v66;
    operator delete(v66);
  }

  if (v64)
  {
    *(&v64 + 1) = v64;
    operator delete(v64);
  }
}

void sub_40A398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *__p)
{
  sub_3DB674(&a13);
  sub_3DB674(&a23);
  sub_3DB6B8((v53 - 224));
  _Unwind_Resume(a1);
}

char *sub_40A408(uint64_t a1, char *__src, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v5 = __src;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 3)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x3333333333333333 * (&v10[-*a1] >> 3);
    if (v12 > 0x666666666666666)
    {
      sub_1794();
    }

    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x333333333333333)
    {
      v14 = 0x666666666666666;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v74 = *a3;
    v75 = *(a3 + 16);
    v45 = 8 * ((__src - v11) >> 3);
    v46 = v45;
    *v76 = *(a3 + 24);
    v77 = *(a3 + 40);
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *v78 = *(a3 + 48);
    v79 = *(a3 + 64);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    v47 = 40 * a5;
    v48 = (v45 + 40 * a5);
    while (v47)
    {
      v49 = sub_4D1F50(v74, *(&v74 + 1));
      v50 = *v49;
      v51 = *(v49 + 16);
      *(v45 + 32) = *(v49 + 32);
      *v45 = v50;
      *(v45 + 16) = v51;
      v45 += 40;
      v47 -= 40;
      sub_3E3AF4(&v74);
    }

    if (v78[0])
    {
      v78[1] = v78[0];
      operator delete(v78[0]);
    }

    if (v76[0])
    {
      v76[1] = v76[0];
      operator delete(v76[0]);
    }

    v52 = *(a1 + 8) - v5;
    memcpy(v48, v5, v52);
    v53 = &v48[v52];
    *(a1 + 8) = v5;
    v54 = *a1;
    v55 = &v5[-*a1];
    v56 = v46 - v55;
    memcpy((v46 - v55), *a1, v55);
    *a1 = v56;
    *(a1 + 8) = v53;
    *(a1 + 16) = 0;
    if (v54)
    {
      operator delete(v54);
    }

    return v46;
  }

  v15 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - __src) >> 3);
  if (a5 <= v15)
  {
    v38 = &__src[40 * a5];
    v39 = &v10[-40 * a5];
    for (i = *(a1 + 8); v39 < v10; i += 40)
    {
      v41 = *v39;
      v42 = *(v39 + 1);
      *(i + 32) = *(v39 + 4);
      *i = v41;
      *(i + 16) = v42;
      v39 += 40;
    }

    *(a1 + 8) = i;
    if (v10 != v38)
    {
      memmove(&__src[40 * a5], __src, v10 - v38);
    }

    v80 = *a3;
    v43 = *(a3 + 24);
    v81 = *(a3 + 16);
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v44 = *(a3 + 32);
    if (v44 != v43)
    {
      if (((v44 - v43) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v85 = 0;
    v86 = 0;
    v87 = 0;
    v58 = *(a3 + 48);
    v57 = *(a3 + 56);
    if (v57 != v58)
    {
      if (((v57 - v58) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v59 = 0;
    v60 = sub_4D1F50(v80, *(&v80 + 1));
    v61 = *v60;
    v62 = *(v60 + 16);
    *(v5 + 4) = *(v60 + 32);
    *v5 = v61;
    *(v5 + 1) = v62;
    if (a5 != 1)
    {
      v63 = v5 + 40;
      v64 = a5 + 1;
      do
      {
        sub_3E3AF4(&v80);
        v65 = sub_4D1F50(v80, *(&v80 + 1));
        v66 = *v65;
        v67 = *(v65 + 16);
        *(v63 + 4) = *(v65 + 32);
        *v63 = v66;
        *(v63 + 1) = v67;
        v63 += 40;
        --v64;
      }

      while (v64 > 2);
      v59 = v85;
    }

    if (v59)
    {
      v86 = v59;
      operator delete(v59);
    }

    v68 = v82;
    if (v82)
    {
      v83 = v82;
LABEL_96:
      operator delete(v68);
    }
  }

  else
  {
    v72 = v10 - __src;
    v120 = *a3;
    v17 = *(a3 + 24);
    v121 = *(a3 + 16);
    v122 = 0;
    v123 = 0uLL;
    v18 = *(a3 + 32);
    if (v18 != v17)
    {
      if (((v18 - v17) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v124 = 0;
    v125 = 0uLL;
    v20 = *(a3 + 48);
    v19 = *(a3 + 56);
    if (v19 != v20)
    {
      if (((v19 - v20) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    sub_403378(&v120, v15);
    v126 = v120;
    v21 = v122;
    v127 = v121;
    v128 = v122;
    v22 = v123;
    v129 = v123;
    v122 = 0;
    v123 = 0uLL;
    v73 = v125;
    v131 = v125;
    v23 = v124;
    v130 = v124;
    v125 = 0uLL;
    v124 = 0;
    v112 = v120;
    v113 = v121;
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v71 = v22;
    if (v22 != v21)
    {
      if (((v22 - v21) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v118 = 0;
    v117 = 0;
    v119 = 0;
    v70 = v22 - v21;
    if (v73 != v23)
    {
      if (((v73 - v23) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v104 = *a4;
    v24 = *(a4 + 3);
    v105 = *(a4 + 2);
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v25 = *(a4 + 4);
    if (v25 != v24)
    {
      if (((v25 - v24) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    __p = 0;
    v110 = 0;
    v111 = 0;
    v27 = *(a4 + 6);
    v26 = *(a4 + 7);
    if (v26 != v27)
    {
      if (((v26 - v27) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    sub_40B218(a1, &v112, &v104);
    if (__p)
    {
      v110 = __p;
      operator delete(__p);
    }

    if (v106)
    {
      v107 = v106;
      operator delete(v106);
    }

    if (v117)
    {
      v118 = v117;
      operator delete(v117);
    }

    if (v114)
    {
      v115 = v114;
      operator delete(v114);
    }

    if (v72 >= 1)
    {
      v28 = &v5[40 * a5];
      v29 = *(a1 + 8);
      v30 = &v29[-40 * a5];
      for (j = v29; v30 < v10; j += 40)
      {
        v32 = *v30;
        v33 = *(v30 + 16);
        *(j + 4) = *(v30 + 32);
        *j = v32;
        *(j + 1) = v33;
        v30 += 40;
      }

      *(a1 + 8) = j;
      if (v29 != v28)
      {
        memmove(&v5[40 * a5], v5, v29 - v28);
      }

      v96 = *a3;
      v34 = *(a3 + 24);
      v97 = *(a3 + 16);
      v98 = 0;
      v99 = 0;
      v100 = 0;
      v35 = *(a3 + 32);
      if (v35 != v34)
      {
        if (((v35 - v34) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v101 = 0;
      v102 = 0;
      v103 = 0;
      v37 = *(a3 + 48);
      v36 = *(a3 + 56);
      if (v36 != v37)
      {
        if (((v36 - v37) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v88 = v126;
      v89 = v127;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      if (v71 != v21)
      {
        if ((v70 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v93 = 0;
      v94 = 0;
      v95 = 0;
      if (v73 != v23)
      {
        if (((v73 - v23) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      sub_40B33C(&v96, &v88, v5);
      if (v93)
      {
        v94 = v93;
        operator delete(v93);
      }

      if (v90)
      {
        v91 = v90;
        operator delete(v90);
      }

      if (v101)
      {
        v102 = v101;
        operator delete(v101);
      }

      if (v98)
      {
        v99 = v98;
        operator delete(v98);
      }
    }

    if (v23)
    {
      operator delete(v23);
    }

    if (v21)
    {
      v68 = v21;
      goto LABEL_96;
    }
  }

  return v5;
}

void sub_40AD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_3DB674(&a37);
  sub_3DB674(&a47);
  sub_3DB674((v47 - 176));
  _Unwind_Resume(a1);
}

void sub_40AE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = STACK[0x200];
  if (STACK[0x200])
  {
    STACK[0x208] = v72;
    operator delete(v72);
  }

  if (a70)
  {
    operator delete(a70);
    sub_3DB674((v70 - 176));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x40AE18);
}

void sub_40AE64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v29 = *(v27 - 208);
  if (v29)
  {
    operator delete(v29);
  }

  v30 = *(v27 - 232);
  if (v30)
  {
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_40AECC(__int128 *a1, __int128 *a2)
{
  v19 = *a1;
  v2 = *(a1 + 3);
  v20 = *(a1 + 2);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v3 = *(a1 + 4);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v5 = *(a1 + 6);
  v4 = *(a1 + 7);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *a2;
  v6 = *(a2 + 3);
  v12 = *(a2 + 2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v7 = *(a2 + 4);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v9 = *(a2 + 6);
  v8 = *(a2 + 7);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 0;
}

void sub_40B190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_40B218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v13 = *a2;
  v14 = *(a2 + 16);
  *v15 = *(a2 + 24);
  v16 = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *v17 = *(a2 + 48);
  v18 = *(a2 + 64);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v5 = *a3;
  v8 = *(a3 + 16);
  v7 = v5;
  *v9 = *(a3 + 24);
  v10 = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *__p = *(a3 + 48);
  v12 = *(a3 + 64);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  v6 = sub_40B608(a1, &v13, &v7, v4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  *(a1 + 8) = v6;
}

void sub_40B31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  *(v19 + 8) = v20;
  _Unwind_Resume(a1);
}

uint64_t sub_40B33C(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v21 = *a1;
  v3 = *(a1 + 3);
  v22 = *(a1 + 2);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v4 = *(a1 + 4);
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = *(a1 + 6);
  v5 = *(a1 + 7);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = *a2;
  v7 = *(a2 + 3);
  v14 = *(a2 + 2);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v8 = *(a2 + 4);
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  v10 = *(a2 + 6);
  v9 = *(a2 + 7);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_40BCE8(&v21, &v13, a3, v29);
  v11 = v34;
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return v11;
}

void sub_40B588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_40B5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (v19)
  {
    operator delete(v19);
    sub_3DB674(&a19);
    _Unwind_Resume(a1);
  }

  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_40B5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_40B608(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v42 = *a2;
  v5 = *(a2 + 2);
  v44 = *(a2 + 24);
  v6 = *(a2 + 5);
  v43 = v5;
  v45 = v6;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *v46 = a2[3];
  v47 = *(a2 + 8);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v7 = *(a3 + 2);
  v36 = *a3;
  v38 = *(a3 + 24);
  v8 = *(a3 + 5);
  v37 = v7;
  v39 = v8;
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  *__p = a3[3];
  v41 = *(a3 + 8);
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  sub_40B934(&v42, &v36, &v48);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v38)
  {
    *(&v38 + 1) = v38;
    operator delete(v38);
  }

  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  if (v44)
  {
    *(&v44 + 1) = v44;
    operator delete(v44);
  }

  v30 = v48;
  v31 = v49;
  *v32 = v50;
  v50 = 0uLL;
  v10 = v51;
  v9 = v52;
  v51 = 0;
  v52 = 0;
  v33 = v10;
  v34 = v9;
  v11 = v53;
  v35 = v53;
  v53 = 0uLL;
  v25 = v55;
  v24 = v54;
  *v26 = v56;
  v56 = 0uLL;
  v12 = v58;
  v27 = v57;
  v28 = v58;
  v29 = v59;
  v13 = v59;
  v57 = 0;
  v58 = 0;
  v59 = 0uLL;
  if (v9 == v11 || v12 == v13)
  {
    if ((v9 == v11) == (v12 == v13))
    {
      goto LABEL_18;
    }
  }

  else if (v31 == v25)
  {
    if (v30)
    {
      v14 = sub_4D1DC0(v30);
      v15 = *(&v30 + 1) < v14;
      v16 = v24;
      if (!v24)
      {
        if (*(&v30 + 1) >= v14)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v16 = v24;
      if (!v24)
      {
        goto LABEL_18;
      }

      v15 = 0;
    }

    v21 = sub_4D1DC0(v16);
    if (*(&v24 + 1) < v21 && v15)
    {
      v23 = sub_4D1F50(v30, *(&v30 + 1));
      if (v23 == sub_4D1F50(v24, *(&v24 + 1)))
      {
        goto LABEL_18;
      }
    }

    else if (v15 == *(&v24 + 1) < v21)
    {
      goto LABEL_18;
    }
  }

  do
  {
LABEL_17:
    v17 = sub_4D1F50(v30, *(&v30 + 1));
    v18 = *v17;
    v19 = *(v17 + 16);
    *(a4 + 32) = *(v17 + 32);
    *a4 = v18;
    *(a4 + 16) = v19;
    sub_3E3AF4(&v30);
    a4 += 40;
  }

  while (!sub_3E6794(&v30, &v24));
LABEL_18:
  if (v28)
  {
    *&v29 = v28;
    operator delete(v28);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (v34)
  {
    *&v35 = v34;
    operator delete(v34);
  }

  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }

  if (v58)
  {
    *&v59 = v58;
    operator delete(v58);
  }

  if (v56)
  {
    *(&v56 + 1) = v56;
    operator delete(v56);
  }

  if (v52)
  {
    *&v53 = v52;
    operator delete(v52);
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }

  return a4;
}

void sub_40B8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  sub_3DB6B8((v19 - 176));
  _Unwind_Resume(a1);
}

void sub_40B934(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *a1;
  v11 = *(a1 + 16);
  *v12 = *(a1 + 24);
  v13 = *(a1 + 40);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v3 = *a2;
  v5 = *(a2 + 16);
  v4 = v3;
  *v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *__p = *(a2 + 48);
  v9 = *(a2 + 64);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_40BA14(&v10, &v4, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void sub_40BA14(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *a1;
  v4 = *(a1 + 3);
  v17 = *(a1 + 2);
  v5 = *(a1 + 4);
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  v7 = *(a1 + 6);
  v6 = *(a1 + 7);
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  if (v5 != v4)
  {
    if (((v5 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = v15;
  v14 = v17;
  v16 = *a2;
  v8 = *(a2 + 3);
  v18 = *(a2 + 2);
  v9 = *(a2 + 4);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v10 = *(a2 + 6);
  v11 = *(a2 + 7);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  if (v9 != v8)
  {
    if (((v9 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = v11 - v10;
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a3 + 72) = v16;
  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 88) = v18;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  if (v8)
  {
    operator delete(v8);
  }

  if (v7)
  {
    operator delete(v7);
  }

  if (v4)
  {

    operator delete(v4);
  }
}

void sub_40BCA8(void *a1)
{
  if (v1)
  {
    operator delete(v1);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

void sub_40BCE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *a1;
  v12 = *(a1 + 16);
  *v13 = *(a1 + 24);
  v14 = *(a1 + 40);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v4 = *a2;
  v6 = *(a2 + 16);
  v5 = v4;
  *v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *__p = *(a2 + 48);
  v10 = *(a2 + 64);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_40BDEC(&v11, &v5, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }
}

void sub_40BDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_40BDEC(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = *a1;
  v7 = a1 + 24;
  v6 = *(a1 + 3);
  v55 = *(a1 + 2);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v8 = *(a1 + 4);
  if (v8 != v6)
  {
    if (((v8 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *(a1 + 6);
  v9 = *(a1 + 7);
  v10 = a1 + 3;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  if (v9 != v11)
  {
    if (((v9 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v48 = *a2;
  v12 = *(a2 + 2);
  v50 = *(a2 + 24);
  v13 = *(a2 + 5);
  v49 = v12;
  v51 = v13;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *__p = a2[3];
  v53 = *(a2 + 8);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  sub_40B934(&v54, &v48, &v62);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  v41 = v62;
  v42 = v63;
  *v43 = v64;
  v64 = 0uLL;
  v15 = v65;
  v14 = v66;
  v65 = 0;
  v66 = 0;
  v44 = v15;
  v45[0] = v14;
  v16 = v67;
  *&v45[1] = v67;
  v67 = 0uLL;
  v36 = v69;
  v35 = v68;
  *v37 = v70;
  v70 = 0uLL;
  v17 = v72;
  v38 = v71;
  v39 = v72;
  v40 = v73;
  v18 = v73;
  v71 = 0;
  v72 = 0;
  v73 = 0uLL;
  if (v14 == v16 || v17 == v18)
  {
    if ((v14 == v16) == (v17 == v18))
    {
      goto LABEL_24;
    }
  }

  else if (v42 == v36)
  {
    if (v41)
    {
      v19 = sub_4D1DC0(v41);
      v20 = *(&v41 + 1) < v19;
      v21 = v35;
      if (!v35)
      {
        if (*(&v41 + 1) >= v19)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v21 = v35;
      if (!v35)
      {
        goto LABEL_24;
      }

      v20 = 0;
    }

    v30 = sub_4D1DC0(v21);
    if (*(&v35 + 1) < v30 && v20)
    {
      v32 = sub_4D1F50(v41, *(&v41 + 1));
      if (v32 == sub_4D1F50(v35, *(&v35 + 1)))
      {
        goto LABEL_24;
      }
    }

    else if (v20 == *(&v35 + 1) < v30)
    {
      goto LABEL_24;
    }
  }

  do
  {
LABEL_23:
    v22 = sub_4D1F50(v41, *(&v41 + 1));
    v23 = *v22;
    v24 = *(v22 + 16);
    *(a3 + 32) = *(v22 + 32);
    *a3 = v23;
    *(a3 + 16) = v24;
    sub_3E3AF4(&v41);
    a3 += 40;
  }

  while (!sub_3E6794(&v41, &v35));
LABEL_24:
  v46 = v41;
  v47 = v42;
  v25 = *v43;
  v26 = v44;
  v43[0] = 0;
  v43[1] = 0;
  v33 = *v45;
  v34 = v25;
  v27 = v45[2];
  v44 = 0;
  memset(v45, 0, sizeof(v45));
  if (v39)
  {
    *&v40 = v39;
    operator delete(v39);
  }

  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  if (v45[0])
  {
    v45[1] = v45[0];
    operator delete(v45[0]);
  }

  if (v43[0])
  {
    v43[1] = v43[0];
    operator delete(v43[0]);
  }

  v28 = *v7;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  v29 = *v10;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 0;
  if (v29)
  {
    operator delete(v29);
  }

  if (v28)
  {
    operator delete(v28);
  }

  *a4 = v46;
  *(a4 + 16) = v47;
  *(a4 + 24) = v34;
  *(a4 + 40) = v26;
  *(a4 + 48) = v33;
  *(a4 + 64) = v27;
  *(a4 + 72) = a3;
  if (v72)
  {
    *&v73 = v72;
    operator delete(v72);
  }

  if (v70)
  {
    *(&v70 + 1) = v70;
    operator delete(v70);
  }

  if (v66)
  {
    *&v67 = v66;
    operator delete(v66);
  }

  if (v64)
  {
    *(&v64 + 1) = v64;
    operator delete(v64);
  }
}