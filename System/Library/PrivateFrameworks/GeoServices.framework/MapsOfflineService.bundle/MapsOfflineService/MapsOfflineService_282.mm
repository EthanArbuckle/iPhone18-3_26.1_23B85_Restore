void sub_11678E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v15)
  {
    operator delete(v15);
    v17 = *v14;
    if (!*v14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v17 = *v14;
    if (!*v14)
    {
      goto LABEL_3;
    }
  }

  *(v14 + 8) = v17;
  operator delete(v17);
  _Unwind_Resume(exception_object);
}

void sub_116792C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (!sub_3B8508(a3) || sub_F6FDC8(a1) || sub_83EB8(a1))
  {
    return;
  }

  v47 = sub_3AF6B4(a3);
  v8 = sub_F6F6F4(a1);
  v9 = sub_40E770(v47, v8, 1);
  v50 = v9;
  v51 = v10;
  v46 = a3;
  if (v9 == -1 && v9 > 0xFFFFFFFEFFFFFFFFLL || (sub_3B8540(a3, &v50) & 1) == 0)
  {
    sub_F6F6F4(a1);
    operator new();
  }

  v11 = 0;
  sub_4D0560();
  v13 = v12;
  v15 = v14;
  sub_F6F0F4();
  v17 = v16;
  v19 = v18;
  v20 = 0;
LABEL_9:
  v21 = v11;
  while (1)
  {
    ++v15;
    if (v13)
    {
      v22 = sub_F6FD88(v13);
      v23 = v15 < v22;
      if (!v17)
      {
        v11 = v21;
        if (v15 >= v22)
        {
          break;
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (!v17)
      {
        break;
      }

      v23 = 0;
    }

    v24 = sub_F6FD88(v17);
    if (v19 < v24 && v23)
    {
      v26 = sub_F6FE3C(v13, v15);
      v27 = v26 == sub_F6FE3C(v17, v19);
      v11 = v21;
      if (v27)
      {
        break;
      }

      goto LABEL_24;
    }

    v28 = v23 ^ (v19 < v24);
    v11 = v21;
    if ((v28 & 1) == 0)
    {
      break;
    }

LABEL_24:
    v20 += sub_F6FF10(v13, v15);
    if (v20 > a2)
    {
      v29 = sub_F6FE3C(v13, v15);
      v30 = sub_40E770(v47, v29, 0);
      v48 = v30;
      v49 = v31;
      if (v30 == -1 && v30 > 0xFFFFFFFEFFFFFFFFLL || (sub_3B8540(v46, &v48) & 1) == 0)
      {
        v32 = *(sub_F6FE3C(v13, v15) + 32);
        v33 = a4[2];
        if (v11 >= v33)
        {
          v34 = v11 >> 3;
          v35 = (v11 >> 3) + 1;
          if (v35 >> 61)
          {
            *a4 = 0;
            sub_1794();
          }

          if (v33 >> 2 > v35)
          {
            v35 = v33 >> 2;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFF8)
          {
            v35 = 0x1FFFFFFFFFFFFFFFLL;
          }

          if (v35)
          {
            if (!(v35 >> 61))
            {
              operator new();
            }

            *a4 = 0;
            sub_1808();
          }

          *(8 * v34) = v32;
          v36 = 8 * v34 + 8;
          memcpy(0, 0, v11);
          a4[1] = v36;
          a4[2] = 0;
          v11 = v36;
          a4[1] = v36;
        }

        else
        {
          *v11 = v32;
          v11 += 8;
          a4[1] = v11;
        }
      }

      goto LABEL_9;
    }
  }

  *a4 = 0;
  v37 = sub_F6F70C(a1);
  v38 = sub_40E770(v47, v37, 0);
  v48 = v38;
  v49 = v39;
  if (v38 == -1 && v38 > 0xFFFFFFFEFFFFFFFFLL || (sub_3B8540(v46, &v48) & 1) == 0)
  {
    v40 = *(sub_F6F70C(a1) + 32);
    v41 = a4[2];
    if (v11 >= v41)
    {
      v43 = v11 >> 3;
      v44 = (v11 >> 3) + 1;
      if (v44 >> 61)
      {
        sub_1794();
      }

      if (v41 >> 2 > v44)
      {
        v44 = v41 >> 2;
      }

      if (v41 >= 0x7FFFFFFFFFFFFFF8)
      {
        v45 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v45 = v44;
      }

      if (v45)
      {
        if (!(v45 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      *(8 * v43) = v40;
      memcpy(0, 0, v11);
      *a4 = 0;
      a4[1] = 8 * v43 + 8;
      v42 = 8 * v43 + 8;
      a4[2] = 0;
    }

    else
    {
      *v11 = v40;
      v42 = v11 + 8;
    }

    a4[1] = v42;
  }
}

void sub_1167D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    *(v14 + 8) = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1167DD0(void *a1@<X8>)
{
  v11 = 0;
  v9 = 0u;
  *__p = 0u;
  *v7 = 0u;
  *v8 = 0u;
  sub_116B430(a1, v7);
  v1 = __p[0];
  if (__p[0])
  {
    v2 = __p[1];
    v3 = __p[0];
    if (__p[1] != __p[0])
    {
      v4 = __p[1];
      do
      {
        v6 = *(v4 - 3);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 2) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v1);
      v3 = __p[0];
    }

    __p[1] = v1;
    operator delete(v3);
  }

  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

BOOL sub_1167E90(void *a1, uint64_t a2, void *a3)
{
  sub_68C448(a1, &v11);
  v5 = v11;
  v6 = v12;
  if (v11 == v12)
  {
    return 1;
  }

  do
  {
    sub_116792C(v5, a2, a3, &v13);
    v9 = v13;
    v10 = v14;
    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }

    result = v9 == v10;
    v5 += 552;
  }

  while (v9 == v10 && v5 != v6);
  return result;
}

void sub_1168184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11681B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_F69D6C(a2);
  if (result)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  v61[0] = off_2675878;
  v61[1] = a1;
  v62 = v61;
  v59[0] = off_2675908;
  v59[1] = v61;
  v60 = v59;
  sub_4D0560();
  v8 = v7;
  v10 = v9;
  sub_F6C0C8();
  v12 = v11;
  v14 = v13;
  v15 = v60;
  if (!v60)
  {
    goto LABEL_6;
  }

  if (v60 != v59)
  {
    v15 = (*(*v60 + 16))(v60);
LABEL_6:
    v58 = v15;
    goto LABEL_8;
  }

  v58 = v57;
  (*(*v60 + 24))(v60, v57);
LABEL_8:
  v16 = sub_1168910(v8, v10, v12, v14, v57);
  v18 = v17;
  if (v58 == v57)
  {
    (*(*v58 + 32))(v58);
  }

  else if (v58)
  {
    (*(*v58 + 40))();
  }

  sub_F6D0A4(a2, &v52);
  sub_4D1E24(a2, v48);
  v19 = v60;
  if (!v60)
  {
    goto LABEL_15;
  }

  if (v60 != v59)
  {
    v19 = (*(*v60 + 16))(v60);
LABEL_15:
    v56 = v19;
    goto LABEL_17;
  }

  v56 = v55;
  (*(*v60 + 24))(v60, v55);
LABEL_17:
  v20 = sub_1168B94(&v52, v48, v55, &v49);
  if (v56 == v55)
  {
    (*(*v56 + 32))(v56, v20);
  }

  else if (v56)
  {
    (*(*v56 + 40))(v20);
  }

  sub_4D1E24(a2, &v52);
  v21 = v50;
  v22 = v51;
  v23 = v53;
  if (!v50)
  {
    if (!v53)
    {
      goto LABEL_35;
    }

    v25 = 0;
LABEL_27:
    v26 = sub_F6D024(v23);
    if (*(&v23 + 1) < v26 && v25)
    {
      v28 = sub_F6D17C(v21, v22);
      if (v28 == sub_F6D17C(v23, *(&v23 + 1)))
      {
        goto LABEL_35;
      }
    }

    else if (v25 == *(&v23 + 1) < v26)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v24 = sub_F6D024(v50);
  v25 = v22 < v24;
  if (v23)
  {
    goto LABEL_27;
  }

  if (v22 >= v24)
  {
LABEL_35:
    sub_4D0560();
    v29 = v31;
    v30 = v32;
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (v32 <= v18)
    {
      goto LABEL_59;
    }

    goto LABEL_36;
  }

LABEL_32:
  v29 = v50;
  v30 = v51 - 1;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v30 <= v18)
  {
    goto LABEL_59;
  }

LABEL_36:
  if (!v16)
  {
    if (!v29 || v30 >= sub_F6D024(v29))
    {
      goto LABEL_59;
    }

    while (1)
    {
      v44 = sub_F6D17C(0, v18);
      v45 = *v44;
      v46 = *(v44 + 16);
      v54 = *(v44 + 32);
      v52 = v45;
      v53 = v46;
      if (!v62)
      {
        break;
      }

      if ((*(*v62 + 48))(v62, &v52))
      {
        v47 = *(sub_F6D17C(0, v18) + 32);
        v52.n128_u32[0] = v47;
        v52.n128_u8[6] = BYTE6(v47);
        v52.n128_u16[2] = WORD2(v47);
        sub_2B5AD0(a3, &v52);
      }

      ++v18;
      if (v30 >= sub_F6D024(v29))
      {
        goto LABEL_59;
      }
    }

LABEL_68:
    sub_2B7420();
  }

  if (v29)
  {
    while (1)
    {
      v37 = sub_F6D024(v16);
      v38 = sub_F6D024(v29);
      if (v18 >= v37 || v30 >= v38)
      {
        if (v18 < v37 == v30 < v38)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v39 = sub_F6D17C(v16, v18);
        if (v39 == sub_F6D17C(v29, v30))
        {
          goto LABEL_59;
        }
      }

      v40 = sub_F6D17C(v16, v18);
      v41 = *v40;
      v42 = *(v40 + 16);
      v54 = *(v40 + 32);
      v52 = v41;
      v53 = v42;
      if (!v62)
      {
        goto LABEL_68;
      }

      if ((*(*v62 + 48))(v62, &v52))
      {
        v43 = *(sub_F6D17C(v16, v18) + 32);
        v52.n128_u32[0] = v43;
        v52.n128_u8[6] = BYTE6(v43);
        v52.n128_u16[2] = WORD2(v43);
        sub_2B5AD0(a3, &v52);
      }

      ++v18;
    }
  }

  if (v18 < sub_F6D024(v16))
  {
    do
    {
      v33 = sub_F6D17C(v16, v18);
      v34 = *v33;
      v35 = *(v33 + 16);
      v54 = *(v33 + 32);
      v52 = v34;
      v53 = v35;
      if (!v62)
      {
        goto LABEL_68;
      }

      if ((*(*v62 + 48))(v62, &v52))
      {
        v36 = *(sub_F6D17C(v16, v18) + 32);
        v52.n128_u32[0] = v36;
        v52.n128_u8[6] = BYTE6(v36);
        v52.n128_u16[2] = WORD2(v36);
        sub_2B5AD0(a3, &v52);
      }
    }

    while (++v18 < sub_F6D024(v16));
  }

LABEL_59:
  if (v60 != v59)
  {
    if (v60)
    {
      (*(*v60 + 40))(v60);
    }

    result = v62;
    if (v62 != v61)
    {
      goto LABEL_63;
    }

    return (*(*result + 32))(result);
  }

  (*(*v60 + 32))(v60);
  result = v62;
  if (v62 == v61)
  {
    return (*(*result + 32))(result);
  }

LABEL_63:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_1168880(_Unwind_Exception *a1)
{
  sub_1168B08(v1 - 152);
  sub_1168B08(v1 - 120);
  _Unwind_Resume(a1);
}

void sub_11688D8(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  sub_1168B08(v2 - 152);
  sub_1168B08(v2 - 120);
  _Unwind_Resume(a1);
}

void *sub_1168910(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v10 = sub_F6D024(a1);
        v11 = sub_F6D024(a3);
        if (a2 >= v10 || a4 >= v11)
        {
          if (a2 < v10 == a4 < v11)
          {
            return a1;
          }
        }

        else
        {
          v12 = sub_F6D17C(a1, a2);
          if (v12 == sub_F6D17C(a3, a4))
          {
            return a1;
          }
        }

        v13 = sub_F6D17C(a1, a2);
        v14 = *(v13 + 32);
        v15 = *(v13 + 16);
        v26 = *v13;
        v27 = v15;
        v28 = v14;
        v16 = *(a5 + 24);
        if (!v16)
        {
          break;
        }

        if ((*(*v16 + 48))(v16, &v26))
        {
          return a1;
        }

        ++a2;
      }

      goto LABEL_22;
    }

    while (a2 < sub_F6D024(a1))
    {
      v17 = sub_F6D17C(a1, a2);
      v18 = *(v17 + 32);
      v19 = *(v17 + 16);
      v26 = *v17;
      v27 = v19;
      v28 = v18;
      v20 = *(a5 + 24);
      if (!v20)
      {
        goto LABEL_22;
      }

      if ((*(*v20 + 48))(v20, &v26))
      {
        break;
      }

      ++a2;
    }
  }

  else if (a3 && a4 < sub_F6D024(a3))
  {
    while (1)
    {
      v21 = sub_F6D17C(0, a2);
      v22 = *(v21 + 32);
      v23 = *(v21 + 16);
      v26 = *v21;
      v27 = v23;
      v28 = v22;
      v24 = *(a5 + 24);
      if (!v24)
      {
        break;
      }

      if (((*(*v24 + 48))(v24, &v26) & 1) == 0)
      {
        ++a2;
        if (a4 < sub_F6D024(a3))
        {
          continue;
        }
      }

      return a1;
    }

LABEL_22:
    sub_2B7420();
  }

  return a1;
}

uint64_t sub_1168B08(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

__n128 sub_1168B94@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v8 = a1[1].n128_u64[1];
  v9 = a1[1].n128_u64[0];
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_2:
  v12 = sub_F6D024(v9);
  v13 = v12;
  if (v11)
  {
    v14 = sub_F6D024(v11);
    if (v8 >= v13 || v10 >= v14)
    {
      if (v8 < v13 != v10 < v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = sub_F6D17C(v9, v8);
      if (v16 != sub_F6D17C(v11, v10))
      {
        do
        {
LABEL_16:
          v17 = sub_F6D17C(a1[1].n128_u64[0], a1[1].n128_u64[1] - 1);
          v18 = *(v17 + 32);
          v19 = *(v17 + 16);
          v23[0] = *v17;
          v23[1] = v19;
          v24 = v18;
          v20 = *(a3 + 24);
          if (!v20)
          {
            sub_2B7420();
          }

          if ((*(*v20 + 48))(v20, v23))
          {
            break;
          }

          v9 = a1[1].n128_u64[0];
          v8 = a1[1].n128_u64[1] - 1;
          a1[1].n128_u64[1] = v8;
          v11 = *(a2 + 16);
          v10 = *(a2 + 24);
          if (v9)
          {
            goto LABEL_2;
          }

LABEL_10:
          ;
        }

        while (v11 && v10 < sub_F6D024(v11));
      }
    }
  }

  else if (v8 < v12)
  {
    goto LABEL_16;
  }

  result = *a1;
  v22 = a1[1];
  *a4 = *a1;
  a4[1] = v22;
  return result;
}

void sub_1168CF4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v5 = sub_F6D024(a2);
  if (!v5)
  {
    return;
  }

  v82 = a3;
  v83 = v5;
  v6 = 0;
  v7 = 0;
  v84 = v3;
  do
  {
    v8 = *(sub_F6D17C(v3, v7) + 32);
    v9 = HIDWORD(v8);
    if (v6)
    {
      v10 = 0;
      while (1)
      {
        v11 = (16 * v10);
        v12 = dword_8[4 * v10];
        v13 = **(16 * v10);
        if (v12 == (*(*(16 * v10) + 8) - v13) >> 3)
        {
          goto LABEL_7;
        }

        v14 = v13 + 8 * v12;
        if (__PAIR64__(*(v14 + 4), *v14) == __PAIR64__(WORD2(v8), v8) && *(v14 + 6) == BYTE6(v8))
        {
          dword_8[4 * v10] = v12 + 1;
LABEL_7:
          if (++v10 >= v6 >> 4)
          {
            break;
          }
        }

        else
        {
          *__p = *v11;
          *v11 = *(v6 - 16);
          *(v6 - 16) = *__p;
          v6 -= 16;
          if (v10 >= v6 >> 4)
          {
            break;
          }
        }
      }
    }

    sub_438BE4(a1 + 16, v8 & 0xFFFFFFFFFFFFFFLL, __p);
    v15 = __p[0];
    for (i = __p[1]; v15 != i; v15 += 2)
    {
      v16 = *(**v15 + 464 * v15[1] + 8) - *(**v15 + 464 * v15[1]);
      if (v16)
      {
        v17 = 0;
        v18 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3);
        do
        {
          v19 = (*(**v15 + 464 * v15[1]) + v17);
          v20 = *v19;
          if (**v19 == v8 && *(v20 + 2) == v9 && *(v20 + 6) == BYTE6(v8))
          {
            v21 = (v6 >> 4) + 1;
            if (v21 >> 60)
            {
              sub_1794();
            }

            if (v6 >> 4 != -1)
            {
              if (!(v21 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v22 = 16 * (v6 >> 4);
            *v22 = v19;
            *(v22 + 8) = 1;
            *(v22 + 12) = v7;
            v23 = v22 + 16;
            memcpy(0, 0, v6);
            v6 = v23;
            v9 = HIDWORD(v8);
          }

          v17 += 24;
          --v18;
        }

        while (v18);
      }
    }

    v3 = v84;
    v24 = v7 + 1;
    if (v7 + 1 < sub_F6D024(v84))
    {
      v25 = sub_F6D17C(v84, v7 + 1);
      if (sub_43EF8C(a1 + 16, v8 & 0xFFFFFFFFFFFFFFLL, *(v25 + 32) & 0xFFFFFFFFFFFFFFLL))
      {
        v26 = sub_F6C648(v84, v7);
        v27 = v82;
        v29 = v82[4];
        v28 = v82[5];
        if (v29 >= v28)
        {
          v35 = v82[3];
          v36 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v35) >> 5) + 1;
          if (v36 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          v37 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v35) >> 5);
          if (2 * v37 > v36)
          {
            v36 = 2 * v37;
          }

          if (v37 >= 0x155555555555555)
          {
            v38 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v38 = v36;
          }

          if (v38)
          {
            if (v38 <= 0x2AAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v27 = v82;
          v39 = (32 * ((v29 - v35) >> 5));
          v40 = v26[1];
          *v39 = *v26;
          v39[1] = v40;
          v41 = v26[2];
          v42 = v26[3];
          v43 = v26[5];
          v39[4] = v26[4];
          v39[5] = v43;
          v39[2] = v41;
          v39[3] = v42;
          v34 = v39 + 6;
          v44 = v39 - (v29 - v35);
          memcpy(v44, v35, v29 - v35);
          v82[3] = v44;
          v82[4] = v34;
          v82[5] = 0;
          if (v35)
          {
            operator delete(v35);
          }

          v3 = v84;
        }

        else
        {
          v30 = v26[1];
          *v29 = *v26;
          *(v29 + 1) = v30;
          v31 = v26[2];
          v32 = v26[3];
          v33 = v26[5];
          *(v29 + 4) = v26[4];
          *(v29 + 5) = v33;
          *(v29 + 2) = v31;
          *(v29 + 3) = v32;
          v34 = v29 + 96;
        }

        v27[4] = v34;
      }
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v7 = v24;
  }

  while (v24 != v83);
  if (v6)
  {
    for (j = 0; j != v6; j += 4)
    {
      v51 = *j;
      v52 = *(*j + 8) - **j;
      if (j[2] == v52 >> 3)
      {
        if (v52 == 16)
        {
          v53 = sub_F6C648(v3, j[3]);
          v55 = v82[4];
          v54 = v82[5];
          if (v55 < v54)
          {
            v46 = v53[1];
            *v55 = *v53;
            *(v55 + 1) = v46;
            v47 = v53[2];
            v48 = v53[3];
            v49 = v53[5];
            *(v55 + 4) = v53[4];
            *(v55 + 5) = v49;
            *(v55 + 2) = v47;
            *(v55 + 3) = v48;
            v50 = v55 + 96;
          }

          else
          {
            v56 = v82[3];
            v57 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v56) >> 5) + 1;
            if (v57 > 0x2AAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            v58 = 0xAAAAAAAAAAAAAAABLL * ((v54 - v56) >> 5);
            if (2 * v58 > v57)
            {
              v57 = 2 * v58;
            }

            if (v58 >= 0x155555555555555)
            {
              v59 = 0x2AAAAAAAAAAAAAALL;
            }

            else
            {
              v59 = v57;
            }

            if (v59)
            {
              if (v59 <= 0x2AAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1808();
            }

            v76 = (32 * ((v55 - v56) >> 5));
            v77 = v53[1];
            *v76 = *v53;
            v76[1] = v77;
            v78 = v53[2];
            v79 = v53[3];
            v80 = v53[5];
            v76[4] = v53[4];
            v76[5] = v80;
            v76[2] = v78;
            v76[3] = v79;
            v50 = v76 + 6;
            v81 = v76 - (v55 - v56);
            memcpy(v81, v56, v55 - v56);
            v82[3] = v81;
            v82[4] = v50;
            v82[5] = 0;
            if (v56)
            {
              operator delete(v56);
            }
          }

          v82[4] = v50;
        }

        else
        {
          __p[1] = 0;
          v88 = 0;
          __p[0] = 0;
          v60 = v51[1];
          if (v60 != *v51)
          {
            if (((v60 - *v51) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v61 = *v51;
          v62 = v51[1];
          if (*v51 != v62)
          {
            v63 = __p[1];
            do
            {
              if (v63 < v88)
              {
                *v63 = *v61;
                v63 += 8;
              }

              else
              {
                v64 = __p[0];
                v65 = v63 - __p[0];
                v66 = (v63 - __p[0]) >> 3;
                v67 = v66 + 1;
                if ((v66 + 1) >> 61)
                {
                  sub_1794();
                }

                v68 = v88 - __p[0];
                if ((v88 - __p[0]) >> 2 > v67)
                {
                  v67 = v68 >> 2;
                }

                if (v68 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v69 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v69 = v67;
                }

                if (v69)
                {
                  if (!(v69 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v70 = v66;
                v71 = (8 * v66);
                v72 = &v71[-v70];
                *v71 = *v61;
                v63 = (v71 + 1);
                memcpy(v72, v64, v65);
                __p[0] = v72;
                __p[1] = v63;
                v88 = 0;
                if (v64)
                {
                  operator delete(v64);
                }
              }

              __p[1] = v63;
              ++v61;
            }

            while (v61 != v62);
          }

          v73 = v82[7];
          if (v73 >= v82[8])
          {
            v3 = v84;
            v74 = sub_52C28(v82 + 6, __p);
            v75 = __p[0];
            v82[7] = v74;
            if (v75)
            {
              __p[1] = v75;
              operator delete(v75);
            }
          }

          else
          {
            *v73 = 0;
            v73[1] = 0;
            v73[2] = 0;
            *v73 = *__p;
            v73[2] = v88;
            v82[7] = v73 + 3;
            v3 = v84;
          }
        }
      }
    }
  }
}

void sub_11694F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_4266B8(a10);
  if (!a16)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  _Unwind_Resume(a1);
}

void sub_11695C0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 4948))
  {
    v104 = 0uLL;
    v105 = 0;
    if (sub_F69D6C(a2) || sub_F695B8(a2))
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      v5 = v104;
      if (!v104)
      {
        return;
      }

      goto LABEL_50;
    }

    v41[0] = &unk_2290750;
    v41[1] = 0;
    v42 = 0u;
    v43 = 0;
    v44 = &unk_2290750;
    v45 = 0;
    v46 = 0u;
    v47 = 0;
    v48 = &unk_2290750;
    v49 = 0;
    v50 = 0u;
    v51 = 0;
    v52 = &unk_2290750;
    v53 = 0u;
    v55 = 0;
    v56 = &unk_2290750;
    v54 = 0;
    v58 = 0;
    v57 = 0u;
    v59 = 0;
    v60 = &unk_2290750;
    v63 = 0;
    v64 = &unk_2290750;
    v62 = 0;
    v61 = 0u;
    v65 = 0u;
    v66 = 0;
    v67 = 0;
    v68 = &unk_2290750;
    v69 = 0u;
    v71 = 0;
    v72 = &unk_2290750;
    v70 = 0;
    v73 = 0u;
    v74 = 0;
    v75 = 0;
    v76 = &unk_2290750;
    v77 = 0u;
    v79 = 0;
    v80 = &unk_2290750;
    v78 = 0;
    v83 = 0;
    v81 = 0u;
    v82 = 0;
    v84 = &unk_2290750;
    v87 = 0;
    v85 = 0u;
    v86 = 0;
    v88 = &unk_2290750;
    v91 = 0;
    v89 = 0u;
    v90 = 0;
    v92 = &unk_2290750;
    v95 = 0;
    v93 = 0u;
    v94 = 0;
    v96 = &unk_2290750;
    v99 = 0;
    v97 = 0u;
    v98 = 0;
    v100 = &unk_2290750;
    v103 = 0;
    v101 = 0u;
    v102 = 0;
    v6 = sub_F6A040(a2) != 1000000000;
    while (sub_F69D2C(a2) > v6)
    {
      v7 = sub_F69DE0(a2, v6);
      v40 = sub_311544(v7);
      sub_116BA18(v41, &v40, &v106);
      if (v106)
      {
        sub_585C38(v41, &v40, &v106);
        v10 = v106;
        if (v107 == 1)
        {
          v11 = *(v106 + 8) + 12 * *(&v106 + 1);
          *v11 = v40;
          *(v11 + 8) = 0;
        }

        v12 = *(*(v10 + 8) + 12 * *(&v106 + 1) + 8);
        while (sub_F69D2C(a2) > v6)
        {
          v13 = sub_F69DE0(a2, v6);
          v39 = sub_3116D0(v13);
          sub_116BA18(v41, &v39, &v106);
          if (!v106)
          {
            break;
          }

          ++v6;
        }

        v106 = 0uLL;
        v107 = 0;
        if (v12 < v6)
        {
          do
          {
            v16 = *(sub_F69DE0(a2, v12) + 32);
            v17 = *(&v106 + 1);
            if (*(&v106 + 1) < v107)
            {
              **(&v106 + 1) = v16 & 0xFFFFFFFFFFFFFFLL;
              v15 = (v17 + 8);
            }

            else
            {
              v18 = v106;
              v19 = *(&v106 + 1) - v106;
              v20 = (*(&v106 + 1) - v106) >> 3;
              v21 = v20 + 1;
              if ((v20 + 1) >> 61)
              {
                sub_1794();
              }

              v22 = v107 - v106;
              if ((v107 - v106) >> 2 > v21)
              {
                v21 = v22 >> 2;
              }

              if (v22 >= 0x7FFFFFFFFFFFFFF8)
              {
                v23 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v23 = v21;
              }

              if (v23)
              {
                if (!(v23 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v24 = (8 * v20);
              v25 = v16 & 0xFFFFFFFFFFFFFFLL;
              v26 = &v24[-((*(&v106 + 1) - v106) >> 3)];
              *v24 = v25;
              v15 = v24 + 1;
              memcpy(v26, v18, v19);
              *&v106 = v26;
              *(&v106 + 1) = v15;
              v107 = 0;
              if (v18)
              {
                operator delete(v18);
              }
            }

            *(&v106 + 1) = v15;
            ++v12;
          }

          while (v6 != v12);
        }

        v14 = *(&v104 + 1);
        if (*(&v104 + 1) >= v105)
        {
          *(&v104 + 1) = sub_52C28(&v104, &v106);
          if (v106)
          {
            *(&v106 + 1) = v106;
            operator delete(v106);
          }
        }

        else
        {
          **(&v104 + 1) = 0;
          *(v14 + 8) = 0;
          *(v14 + 16) = 0;
          *v14 = v106;
          *(v14 + 16) = v107;
          *(&v104 + 1) = v14 + 24;
        }

        v27 = v41;
        v28 = 768;
        do
        {
          if (v27[2])
          {
            v29 = v27[3];
            if (v29 >= 0x80)
            {
              operator delete(*v27);
              v27[5] = 0;
              *v27 = &unk_2290750;
              v27[1] = 0;
              v27[2] = 0;
              v27[3] = 0;
            }

            else if (v29)
            {
              v27[2] = 0;
              memset(*v27, 128, v29 + 8);
              *(*v27 + v29) = -1;
              v30 = v27[3];
              v31 = v30 - (v30 >> 3);
              v32 = v30 == 7;
              v33 = 6;
              if (!v32)
              {
                v33 = v31;
              }

              v27[5] = (v33 - v27[2]);
            }
          }

          v27 += 6;
          v28 -= 48;
        }

        while (v28);
      }

      else
      {
        sub_585C38(v41, &v40, &v106);
        v8 = v106;
        if (v107 == 1)
        {
          v9 = *(v106 + 8) + 12 * *(&v106 + 1);
          *v9 = v40;
          *(v9 + 8) = 0;
        }

        *(*(v8 + 8) + 12 * *(&v106 + 1) + 8) = v6++;
      }
    }

    *a3 = v104;
    a3[2] = v105;
    v105 = 0;
    v104 = 0uLL;
    sub_360988(v41);
    v5 = v104;
    if (v104)
    {
LABEL_50:
      v34 = *(&v104 + 1);
      v35 = v5;
      if (*(&v104 + 1) != v5)
      {
        v36 = *(&v104 + 1);
        do
        {
          v38 = *(v36 - 3);
          v36 -= 24;
          v37 = v38;
          if (v38)
          {
            *(v34 - 2) = v37;
            operator delete(v37);
          }

          v34 = v36;
        }

        while (v36 != v5);
        v35 = v104;
      }

      *(&v104 + 1) = v5;
      operator delete(v35);
    }
  }

  else
  {

    sub_1163BE8(a2, a3);
  }
}

void sub_1169B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_360988(va);
  sub_34BE0((v3 - 176));
  _Unwind_Resume(a1);
}

void sub_1169BAC(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8) == 2)
  {
    v3 = sub_3AF144(*a1);
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    sub_4D0560();
    v5 = v4;
    v7 = v6;
    sub_F6C0C8();
    v10 = v8;
    v11 = v9;
    if (v5)
    {
      if (v8)
      {
        while (1)
        {
          v14 = sub_F6D024(v5);
          v15 = sub_F6D024(v10);
          if (v7 >= v14 || v11 >= v15)
          {
            if (v7 < v14 == v11 < v15)
            {
              return;
            }
          }

          else
          {
            v16 = sub_F6D17C(v5, v7);
            if (v16 == sub_F6D17C(v10, v11))
            {
              return;
            }
          }

          v17 = sub_F6D17C(v5, v7);
          if (sub_2BDCDC(v3, *(v17 + 32) & 0xFFFFFFFFFFFFFFLL))
          {
            v18 = *(sub_F6D17C(v5, v7) + 32);
            LODWORD(v21) = v18;
            BYTE6(v21) = BYTE6(v18);
            WORD2(v21) = WORD2(v18);
            sub_2B5AD0(a2, &v21);
          }

          ++v7;
        }
      }

      for (; v7 < sub_F6D024(v5); ++v7)
      {
        v12 = sub_F6D17C(v5, v7);
        if (sub_2BDCDC(v3, *(v12 + 32) & 0xFFFFFFFFFFFFFFLL))
        {
          v13 = *(sub_F6D17C(v5, v7) + 32);
          LODWORD(v21) = v13;
          BYTE6(v21) = BYTE6(v13);
          WORD2(v21) = WORD2(v13);
          sub_2B5AD0(a2, &v21);
        }
      }
    }

    else if (v8 && v9 < sub_F6D024(v8))
    {
      do
      {
        v19 = sub_F6D17C(0, v7);
        if (sub_2BDCDC(v3, *(v19 + 32) & 0xFFFFFFFFFFFFFFLL))
        {
          v20 = *(sub_F6D17C(0, v7) + 32);
          LODWORD(v21) = v20;
          BYTE6(v21) = BYTE6(v20);
          WORD2(v21) = WORD2(v20);
          sub_2B5AD0(a2, &v21);
        }

        ++v7;
      }

      while (v11 < sub_F6D024(v10));
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_1169DF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1169E1C(uint64_t a1, void *a2)
{
  result = sub_F6A05C(a2);
  if (result)
  {
    v5[5] = a1;
    v5[6] = a2;
    sub_5F328(v5);
    operator new();
  }

  return result;
}

void sub_116A66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_3AD9F4(&a27);
  sub_5C010(v27 - 152);
  _Unwind_Resume(a1);
}

uint64_t sub_116A7AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (v1 > v2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = *(a1 + 16);
  v6 = *a1;
  if (*a1)
  {
    if (v5)
    {
      for (i = 0; ; i += sub_F6D254(v6, v1++))
      {
        v7 = sub_F6D024(v6);
        v8 = sub_F6D024(v5);
        if (v1 >= v7 || v2 >= v8)
        {
          if (v1 < v7 == v2 < v8)
          {
            return i;
          }
        }

        else
        {
          v9 = sub_F6D17C(v6, v1);
          if (v9 == sub_F6D17C(v5, v2))
          {
            return i;
          }
        }
      }
    }

    if (v1 < sub_F6D024(*a1))
    {
      i = 0;
      do
      {
        i += sub_F6D254(v6, v1++);
      }

      while (v1 < sub_F6D024(v6));
      return i;
    }
  }

  else if (v5 && v2 < sub_F6D024(*(a1 + 16)))
  {
    i = 0;
    do
    {
      i += sub_F6D254(0, v1++);
    }

    while (v2 < sub_F6D024(v5));
    return i;
  }

  return 0;
}

void sub_116A918(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  v13 = sub_3AF144(**a1);
  v14 = sub_3794D0();
  v15 = sub_2BD358(v13);
  sub_379AB4(v14, v15, &v48);
  if (a2)
  {
    if (*(a2 + 48))
    {
      sub_5AF20();
    }

    v16 = **(a2 + 32) + 464 * *(a2 + 40);
    if (*(v16 + 71) < 0)
    {
      sub_325C(&v46, *(v16 + 48), *(v16 + 56));
      if (*(a2 + 48))
      {
        sub_5AF20();
      }
    }

    else
    {
      v17 = *(v16 + 48);
      v47 = *(v16 + 64);
      v46 = v17;
    }

    v18 = **(a2 + 32) + 464 * *(a2 + 40);
    if (*(v18 + 311) < 0)
    {
      sub_325C(&v44, *(v18 + 288), *(v18 + 296));
    }

    else
    {
      v19 = *(v18 + 288);
      v45 = *(v18 + 304);
      v44 = v19;
    }
  }

  else
  {
    HIBYTE(v47) = 0;
    LOBYTE(v46) = 0;
    HIBYTE(v45) = 0;
    LOBYTE(v44) = 0;
  }

  if (a3)
  {
    if (*(a3 + 48))
    {
      sub_5AF20();
    }

    v20 = **(a3 + 32) + 464 * *(a3 + 40);
    if (*(v20 + 71) < 0)
    {
      sub_325C(&v42, *(v20 + 48), *(v20 + 56));
      if (*(a3 + 48))
      {
        sub_5AF20();
      }
    }

    else
    {
      v21 = *(v20 + 48);
      v43 = *(v20 + 64);
      v42 = v21;
    }

    v22 = **(a3 + 32) + 464 * *(a3 + 40);
    if (*(v22 + 311) < 0)
    {
      sub_325C(v40, *(v22 + 288), *(v22 + 296));
    }

    else
    {
      v23 = *(v22 + 288);
      v41 = *(v22 + 304);
      *v40 = v23;
    }
  }

  else
  {
    HIBYTE(v43) = 0;
    LOBYTE(v42) = 0;
    HIBYTE(v41) = 0;
    LOBYTE(v40[0]) = 0;
  }

  if (a4)
  {
    v24 = a3;
  }

  else
  {
    v24 = a2;
  }

  v25 = *(sub_F6D17C(*v24, *(v24 + 8)) + 32);
  v26 = sub_3AF6B4(*v12);
  if (v25)
  {
    v27 = v26;
    v28 = sub_31DDCC(v26, v25 & 0xFFFFFFFFFFFFFFLL);
    sub_40C59C(v27, v28, &v38);
  }

  else
  {
    v39 = 0;
    LOBYTE(v38) = 0;
  }

  v29 = sub_74700();
  sub_72D24(v29, &v37);
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(&v36.__r_.__value_.__s + 23) = 3;
    LODWORD(v36.__r_.__value_.__l.__data_) = 6712937;
  }

  else
  {
    if (a5 < 0)
    {
      v30 = -50;
    }

    else
    {
      v30 = 50;
    }

    std::to_string(&v36, a5 / 100 + (((5243 * (v30 + a5 % 100)) >> 19) + ((5243 * (v30 + a5 % 100)) >> 31)));
  }

  if (a6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(&v35.__r_.__value_.__s + 23) = 3;
    LODWORD(v35.__r_.__value_.__l.__data_) = 6712937;
  }

  else
  {
    if (a6 < 0)
    {
      v31 = -50;
    }

    else
    {
      v31 = 50;
    }

    std::to_string(&v35, a6 / 100 + (((5243 * (v31 + a6 % 100)) >> 19) + ((5243 * (v31 + a6 % 100)) >> 31)));
  }

  sub_74224(v29);
  sub_73EC4(v29);
  v32 = sub_7421C(v29);
  sub_7230C(&v32, &__p);
  sub_F6C814(*(a1 + 8));
  if (v34 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_39:
      if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_50;
    }
  }

  else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_40:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_51;
  }

LABEL_50:
  operator delete(v36.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_41:
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_52;
  }

LABEL_51:
  operator delete(v37.__r_.__value_.__l.__data_);
  if ((v39 & 0x80000000) == 0)
  {
LABEL_42:
    if ((SHIBYTE(v41) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_53;
  }

LABEL_52:
  operator delete(v38);
  if ((SHIBYTE(v41) & 0x80000000) == 0)
  {
LABEL_43:
    if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_54;
  }

LABEL_53:
  operator delete(v40[0]);
  if ((SHIBYTE(v43) & 0x80000000) == 0)
  {
LABEL_44:
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_55;
  }

LABEL_54:
  operator delete(v42);
  if ((SHIBYTE(v45) & 0x80000000) == 0)
  {
LABEL_45:
    if ((SHIBYTE(v47) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_56;
  }

LABEL_55:
  operator delete(v44);
  if ((SHIBYTE(v47) & 0x80000000) == 0)
  {
LABEL_46:
    if ((v49 & 0x80000000) == 0)
    {
      return;
    }

LABEL_57:
    operator delete(v48);
    return;
  }

LABEL_56:
  operator delete(v46);
  if (v49 < 0)
  {
    goto LABEL_57;
  }
}

void sub_116AD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(v52[4]);
    if ((*(v53 - 153) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v53 - 121) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v53 - 153) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v52[8]);
  if ((*(v53 - 121) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v53 - 97) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v52[12]);
  if ((*(v53 - 97) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v52[15]);
  _Unwind_Resume(exception_object);
}

void *sub_116AF38(void *result, void *a2)
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
    if ((0x2E8BA2E8BA2E8BA3 * ((v3 - v4) >> 3)) < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_1794();
  }

  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  v6 = a2[6];
  v5 = a2[7];
  if (v5 != v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_116B0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 56) = v10;
  sub_35390(&a9);
  v13 = *v11;
  if (*v11)
  {
    *(v9 + 32) = v13;
    operator delete(v13);
  }

  v14 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void *sub_116B134(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_116B218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_47D80(&a9);
  _Unwind_Resume(a1);
}

void *sub_116B240(void *result, void *a2)
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
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 5) < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  v6 = a2[6];
  v5 = a2[7];
  if (v5 != v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_116B3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 56) = v10;
  sub_35390(&a9);
  v13 = *v11;
  if (*v11)
  {
    *(v9 + 32) = v13;
    operator delete(v13);
  }

  v14 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void *sub_116B430(void *result, void *a2)
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
    if ((0x2E8BA2E8BA2E8BA3 * ((v3 - v4) >> 3)) < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_1794();
  }

  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  v6 = a2[6];
  v5 = a2[7];
  if (v5 != v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_116B5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 56) = v10;
  sub_35390(&a9);
  v13 = *v11;
  if (*v11)
  {
    *(v9 + 32) = v13;
    operator delete(v13);
  }

  v14 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void *sub_116B62C(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_116B710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_47D80(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_116B7A8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2675878;
  a2[1] = v2;
  return result;
}

BOOL sub_116B7D4(uint64_t a1, int **a2)
{
  sub_43EDF8(*(a1 + 8) + 16, a2, &v5);
  v2 = v5;
  v3 = v6;
  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  return v2 != v3;
}

uint64_t sub_116B824(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing12PathAnalyzerINS0_11DrivingModeEE39find_segments_with_no_through_incidentsERKNS0_7PathLegIS2_EEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing12PathAnalyzerINS0_11DrivingModeEE39find_segments_with_no_through_incidentsERKNS0_7PathLegIS2_EEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing12PathAnalyzerINS0_11DrivingModeEE39find_segments_with_no_through_incidentsERKNS0_7PathLegIS2_EEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing12PathAnalyzerINS0_11DrivingModeEE39find_segments_with_no_through_incidentsERKNS0_7PathLegIS2_EEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_116B90C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2675908;
  a2[1] = v2;
  return result;
}

uint64_t sub_116B938(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 24);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  if (!v2)
  {
    sub_2B7420();
  }

  return (*(*v2 + 48))(v2, v5) ^ 1;
}

uint64_t sub_116B9A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing12PathAnalyzerINS0_11DrivingModeEE39find_segments_with_no_through_incidentsERKNS0_7PathLegIS2_EEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing12PathAnalyzerINS0_11DrivingModeEE39find_segments_with_no_through_incidentsERKNS0_7PathLegIS2_EEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing12PathAnalyzerINS0_11DrivingModeEE39find_segments_with_no_through_incidentsERKNS0_7PathLegIS2_EEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing12PathAnalyzerINS0_11DrivingModeEE39find_segments_with_no_through_incidentsERKNS0_7PathLegIS2_EEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_116BA18@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = (v6 ^ ~(v6 >> 33)) + ((v6 ^ (v6 >> 33)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  v14 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v15 = v11 & v12;
    v16 = *(v13 + v15);
    v17 = ((v16 ^ v14) - 0x101010101010101) & ~(v16 ^ v14) & 0x8080808080808080;
    if (v17)
    {
      break;
    }

LABEL_8:
    if ((v16 & (~v16 << 6) & 0x8080808080808080) != 0)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = v13;
      a3[4] = 0;
      return result;
    }

    v3 += 8;
    v11 = v3 + v15;
  }

  while (1)
  {
    v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v12;
    v18 = v10[1];
    v20 = (v18 + 12 * v19);
    if (*v20 == v4 && v20[1] == HIDWORD(v4))
    {
      break;
    }

    v17 &= v17 - 1;
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  v22 = v12 == v19;
  v23 = v13 + v19;
  v24 = v13 + v12;
  v25 = result + 768;
  if (v12 == v19)
  {
    v23 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v26 = v10;
  }

  if (v22)
  {
    v27 = a3;
  }

  else
  {
    v27 = (v18 + 12 * v19);
  }

  if (v22)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  *a3 = v26;
  a3[1] = v25;
  a3[2] = v23;
  a3[3] = v27;
  a3[4] = v28;
  return result;
}

void sub_116BB8C(void ***a1, uint64_t a2)
{
  sub_437ECC((a1[1] + 2), a2, &v21);
  v4 = *a1;
  v5 = **a1;
  v6 = *a1;
  if (v5)
  {
    v4[1] = v5;
    operator delete(v5);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v6 = *a1;
  }

  *v4 = v21;
  v4[2] = v22;
  v7 = *v6;
  v8 = v6[1];
  if (*v6 != v8)
  {
    do
    {
      while (1)
      {
        v9 = a1[2];
        v10 = *(a2 + 32) & 0xFFFFFFFFFFFFFFLL;
        v21 = *v7;
        v11 = v9[1];
        v12 = v9[2];
        if (v11 >= v12)
        {
          break;
        }

        *v11 = v10;
        *(v11 + 8) = v21;
        v9[1] = v11 + 24;
        if (++v7 == v8)
        {
          goto LABEL_19;
        }
      }

      v13 = *v9;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *v9) >> 3);
      v15 = v14 + 1;
      if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3);
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x555555555555555)
      {
        v17 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1808();
      }

      v18 = 8 * ((v11 - *v9) >> 3);
      *v18 = v10;
      *(v18 + 8) = v21;
      v19 = 24 * v14 + 24;
      v20 = (24 * v14 - (v11 - v13));
      memcpy(v20, v13, v11 - v13);
      *v9 = v20;
      v9[1] = v19;
      v9[2] = 0;
      if (v13)
      {
        operator delete(v13);
      }

      v9[1] = v19;
      ++v7;
    }

    while (v7 != v8);
LABEL_19:
    v6 = *a1;
    v7 = **a1;
  }

  v6[1] = v7;
}

void sub_116BD64(void ***a1, uint64_t a2)
{
  sub_4389F4((a1[1] + 2), a2, &v21);
  v4 = *a1;
  v5 = **a1;
  v6 = *a1;
  if (v5)
  {
    v4[1] = v5;
    operator delete(v5);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v6 = *a1;
  }

  *v4 = v21;
  v4[2] = v22;
  v7 = *v6;
  v8 = v6[1];
  if (*v6 != v8)
  {
    do
    {
      while (1)
      {
        v9 = a1[2];
        v10 = *(a2 + 32) & 0xFFFFFFFFFFFFFFLL;
        v21 = *v7;
        v11 = v9[1];
        v12 = v9[2];
        if (v11 >= v12)
        {
          break;
        }

        *v11 = v10;
        *(v11 + 8) = v21;
        v9[1] = v11 + 24;
        if (++v7 == v8)
        {
          goto LABEL_19;
        }
      }

      v13 = *v9;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *v9) >> 3);
      v15 = v14 + 1;
      if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3);
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x555555555555555)
      {
        v17 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1808();
      }

      v18 = 8 * ((v11 - *v9) >> 3);
      *v18 = v10;
      *(v18 + 8) = v21;
      v19 = 24 * v14 + 24;
      v20 = (24 * v14 - (v11 - v13));
      memcpy(v20, v13, v11 - v13);
      *v9 = v20;
      v9[1] = v19;
      v9[2] = 0;
      if (v13)
      {
        operator delete(v13);
      }

      v9[1] = v19;
      ++v7;
    }

    while (v7 != v8);
LABEL_19:
    v6 = *a1;
    v7 = **a1;
  }

  v6[1] = v7;
}

void sub_116BF3C(void ***a1, uint64_t a2)
{
  sub_4393F4((a1[1] + 2), a2, &v21);
  v4 = *a1;
  v5 = **a1;
  v6 = *a1;
  if (v5)
  {
    v4[1] = v5;
    operator delete(v5);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v6 = *a1;
  }

  *v4 = v21;
  v4[2] = v22;
  v7 = *v6;
  v8 = v6[1];
  if (*v6 != v8)
  {
    do
    {
      while (1)
      {
        v9 = a1[2];
        v10 = *(a2 + 32);
        v21 = *v7;
        v11 = v9[1];
        v12 = v9[2];
        if (v11 >= v12)
        {
          break;
        }

        *v11 = v10;
        *(v11 + 8) = v21;
        v9[1] = v11 + 24;
        if (++v7 == v8)
        {
          goto LABEL_19;
        }
      }

      v13 = *v9;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *v9) >> 3);
      v15 = v14 + 1;
      if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3);
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x555555555555555)
      {
        v17 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1808();
      }

      v18 = 8 * ((v11 - *v9) >> 3);
      *v18 = v10;
      *(v18 + 8) = v21;
      v19 = 24 * v14 + 24;
      v20 = (24 * v14 - (v11 - v13));
      memcpy(v20, v13, v11 - v13);
      *v9 = v20;
      v9[1] = v19;
      v9[2] = 0;
      if (v13)
      {
        operator delete(v13);
      }

      v9[1] = v19;
      ++v7;
    }

    while (v7 != v8);
LABEL_19:
    v6 = *a1;
    v7 = **a1;
  }

  v6[1] = v7;
}

void sub_116C110()
{
  byte_27C3A4F = 3;
  LODWORD(qword_27C3A38) = 5136193;
  byte_27C3A67 = 3;
  LODWORD(qword_27C3A50) = 5136194;
  byte_27C3A7F = 3;
  LODWORD(qword_27C3A68) = 5136195;
  byte_27C3A97 = 15;
  strcpy(&qword_27C3A80, "vehicle_mass_kg");
  byte_27C3AAF = 21;
  strcpy(&xmmword_27C3A98, "vehicle_cargo_mass_kg");
  byte_27C3AC7 = 19;
  strcpy(&qword_27C3AB0, "vehicle_aux_power_w");
  byte_27C3ADF = 15;
  strcpy(&qword_27C3AC8, "dcdc_efficiency");
  strcpy(&qword_27C3AE0, "drive_train_efficiency");
  HIBYTE(word_27C3AF6) = 22;
  operator new();
}

void sub_116C2EC(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C3AF6) < 0)
  {
    sub_21E8E38();
  }

  sub_21E8E44();
  _Unwind_Resume(a1);
}

void sub_116C718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_5C010(&a9);
  sub_1A104(&a19);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_616CD4(v30 + 12832);
  sub_360B9C((v30 + v32));
  sub_CDE540(v31);
  _Unwind_Resume(a1);
}

void sub_116C7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void **a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a22);
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x116C7BCLL);
}

void *sub_116C800(void *a1, uint64_t a2)
{
  sub_F65170(a1, &v11);
  sub_F6526C(a1, &v6);
  v4 = sub_116D2A0(&v11, &v6, a2);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return v4;
}

void sub_116C898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_3DB674(&a9);
  sub_3DB674(&a18);
  _Unwind_Resume(a1);
}

void sub_116C8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_3DB674(va);
  _Unwind_Resume(a1);
}

uint64_t sub_116C8C8(void *a1, void *a2, char a3, char a4)
{
  v6 = sub_F69D2C(a2);
  v47 = sub_F6B804(a2);
  if (!v6)
  {
    return 0;
  }

  v59 = 0;
  v54 = 0;
  v55 = v6;
  v52 = 0;
  v7 = 0;
  v8 = 0;
  v49 = v6 - 1;
  v46 = v6;
  v50 = v6;
  while (2)
  {
    v58 = v7;
    v9 = sub_F69DE0(a2, v8);
    v10 = *(v9 + 32);
    v11 = *(v9 + 16);
    v70[0] = *v9;
    v70[1] = v11;
    v71 = v10;
    v57 = v8;
    v56 = sub_F69E5C(a2, v8);
    sub_437ECC((a1 + 1), v70, &v68);
    v12 = v69;
    v13 = v68;
    v53 = v68;
    if (v68 == v69)
    {
      goto LABEL_49;
    }

    do
    {
      v67 = *v13;
      v14 = sub_F6AF4C(a2);
      if (v14 == -1 || (v14 & 0xFFFF00000000) == 0xFFFF00000000 || (v14 & 0xFFFF000000000000) != 0x2000000000000)
      {
        v60 = v67;
        v61 = 0;
        sub_4C2A78(&v60, v64);
      }

      else
      {
        v62 = v67;
        v63 = 0;
        v15 = sub_F6AF4C(a2);
        sub_4C2ACC(&v62, v15, v64);
      }

      if (sub_4C2B70(v64))
      {
        v16 = sub_4C2BA0(v64);
      }

      else
      {
        if (!sub_4C2B80(v64))
        {
          if (sub_4C2B90(v64))
          {
            v21 = *(sub_4C2C1C(v64) + 8);
          }

          else
          {
            v21 = 0;
          }

          goto LABEL_17;
        }

        v16 = sub_4C2BC4(v64);
      }

      v18 = 0x9DDFEA08EB382D69 * ((8 * (v16 & 0x1FFFFFFF) + 8) ^ HIDWORD(v16));
      v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v18 >> 47) ^ v18);
      v20 = (0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
      v21 = (v17 + 2654435769 + (v20 << 6) + (v20 >> 2)) ^ v20;
LABEL_17:
      v22 = a1[1605];
      if (v22)
      {
        v23 = vcnt_s8(v22);
        v23.i16[0] = vaddlv_u8(v23);
        if (v23.u32[0] > 1uLL)
        {
          v24 = v21;
          if (v21 >= *&v22)
          {
            v24 = v21 % *&v22;
          }
        }

        else
        {
          v24 = (*&v22 - 1) & v21;
        }

        v25 = *(a1[1604] + 8 * v24);
        if (v25)
        {
          v26 = *v25;
          if (*v25)
          {
            if (v23.u32[0] < 2uLL)
            {
              v27 = *&v22 - 1;
              while (1)
              {
                v29 = v26[1];
                if (v29 == v21)
                {
                  if (sub_4C2D38((v26 + 2), v64))
                  {
                    goto LABEL_37;
                  }
                }

                else if ((v29 & v27) != v24)
                {
                  goto LABEL_38;
                }

                v26 = *v26;
                if (!v26)
                {
                  goto LABEL_38;
                }
              }
            }

            do
            {
              v28 = v26[1];
              if (v28 == v21)
              {
                if (sub_4C2D38((v26 + 2), v64))
                {
LABEL_37:
                  sub_4C2D98(v26 + 2, v64);
                  goto LABEL_39;
                }
              }

              else
              {
                if (v28 >= *&v22)
                {
                  v28 %= *&v22;
                }

                if (v28 != v24)
                {
                  break;
                }
              }

              v26 = *v26;
            }

            while (v26);
          }
        }
      }

LABEL_38:
      sub_D3B9CC(a1 + 1604, v64);
LABEL_39:
      v30 = __p;
      if (__p)
      {
        do
        {
          v31 = *v30;
          operator delete(v30);
          v30 = v31;
        }

        while (v31);
      }

      v32 = v65;
      v65 = 0;
      if (v32)
      {
        operator delete(v32);
      }

      ++v13;
    }

    while (v13 != v12);
    if (v53 == v12)
    {
LABEL_49:
      if (v59)
      {
        v34 = v55;
        v35 = v56;
        v36 = v56 + v52;
        v37 = v49;
        v38 = v50;
        v40 = v57;
        v39 = v58;
      }

      else
      {
        v40 = v57;
        v39 = v58;
        v41 = a3;
        if (!v57)
        {
          v41 = 0;
        }

        v37 = v49;
        v38 = v50;
        v35 = v56;
        if ((v41 & 1) != 0 || (v36 = v56, v34 = v57, v58 > a1[1610]))
        {
          v36 = v54;
          v34 = v55;
          goto LABEL_67;
        }
      }

      if (v40 == v37)
      {
        v33 = v35;
        if (v36 > v54)
        {
LABEL_57:
          v42 = v47 - (v39 + v33);
          v43 = a4;
          if (v40 == v37)
          {
            v43 = 0;
          }

          if (v42 <= a1[1611] && (v43 & 1) == 0)
          {
            v52 = 0;
            v46 = v34;
            goto LABEL_67;
          }
        }

        v52 = v36;
        v36 = v54;
        goto LABEL_67;
      }

      v7 = v35 + v39;
      v59 = 1;
      v52 = v36;
      v55 = v34;
      v44 = v68;
      if (v68)
      {
LABEL_70:
        v69 = v44;
        operator delete(v44);
      }

LABEL_3:
      v8 = v40 + 1;
      if (v8 == v38)
      {
        return v46;
      }

      continue;
    }

    break;
  }

  if ((v59 & (v52 > v54)) != 0)
  {
    v33 = 0;
    v34 = v55;
    v35 = v56;
    v36 = v52;
    v37 = v49;
    v38 = v50;
    v40 = v57;
    v39 = v58;
    goto LABEL_57;
  }

  v34 = v55;
  v35 = v56;
  v36 = v54;
  v38 = v50;
  v40 = v57;
  v39 = v58;
LABEL_67:
  if ((a3 & 1) == 0)
  {
    v7 = v35 + v39;
    if (v7 <= a1[1610])
    {
      v59 = 0;
      v54 = v36;
      v55 = v34;
      v44 = v68;
      if (v68)
      {
        goto LABEL_70;
      }

      goto LABEL_3;
    }
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  return v46;
}

void sub_116CDAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  v34 = *(v32 - 152);
  if (v34)
  {
    *(v32 - 144) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(exception_object);
}

void sub_116CDF0(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, int a5)
{
  v9 = sub_F69D2C(a2);
  if (a3 <= a4 && v9 > a4)
  {
    v10 = v9 - 1;
    if (!a3 && v10 == a4)
    {
      return;
    }

    if (a3 == a4)
    {
      v11 = sub_F69DE0(a2, a3);
      v12 = sub_F691B8(a2, a3);
      v13 = sub_F692C8(a2, a3);
      sub_F69060(a2, v12, v11, v13);
      if (v10 <= a4)
      {
LABEL_14:
        if (a3)
        {
          v23 = sub_73F1C(a2);
          v24 = *(v23 + 16);
          v28 = *v23;
          v29 = v24;
          v25 = *(v23 + 32);
          v26 = *(v23 + 48);
          v27 = *(v23 + 64);
          v33 = *(v23 + 80);
          v31 = v26;
          v32 = v27;
          v30 = v25;
          LODWORD(v28) = 0;
          sub_F68F20(a2, &v28);
          if (a5)
          {
            sub_F6BA80(a2, 14);
          }
        }

        return;
      }
    }

    else
    {
      v14 = (sub_5FC64(a2) + 88 * a4);
      v15 = sub_445EF4(a2);
      sub_F6B74C(a2, v14, v15, 0);
      v16 = sub_5FC64(a2);
      v17 = sub_5FC64(a2);
      sub_F6B74C(a2, v16, (v17 + 88 * a3), 0);
      if (v10 <= a4)
      {
        goto LABEL_14;
      }
    }

    v18 = sub_F69058(a2);
    v19 = *(v18 + 16);
    v28 = *v18;
    v29 = v19;
    v20 = *(v18 + 32);
    v21 = *(v18 + 48);
    v22 = *(v18 + 64);
    v33 = *(v18 + 80);
    v31 = v21;
    v32 = v22;
    v30 = v20;
    LODWORD(v28) = 1000000000;
    sub_F6901C(a2, &v28);
    if (a5)
    {
      sub_F6BA80(a2, 15);
    }

    goto LABEL_14;
  }

  sub_F687F4(a2);
}

uint64_t sub_116CFDC@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (*(result + 12872) == 1 && (*(result + 12873) & 1) != 0)
  {
    v9 = result;
    if ((*(result + 12877) & 1) == 0)
    {
      sub_F64EF0(&v20, a2);
    }

    if (*(result + 12856))
    {
      v10 = *(result + 12848);
      if (v10)
      {
        do
        {
          v16 = *v10;
          v17 = v10[8];
          if (v17)
          {
            do
            {
              v18 = *v17;
              operator delete(v17);
              v17 = v18;
            }

            while (v18);
          }

          v19 = v10[6];
          v10[6] = 0;
          if (v19)
          {
            operator delete(v19);
          }

          operator delete(v10);
          v10 = v16;
        }

        while (v16);
      }

      *(v9 + 12848) = 0;
      v11 = *(v9 + 12840);
      if (v11)
      {
        bzero(*(v9 + 12832), 8 * v11);
      }

      *(v9 + 12856) = 0;
    }

    v12 = sub_116C8C8(v9, a2, a3, a4);
    v14 = v12;
    v15 = v13;
    if (a3 && v12 || a4 && v13 != sub_F69D2C(a2) - 1)
    {
      sub_F687F4(a2);
    }

    else
    {
      sub_116CDF0(v9, a2, v14, v15, 1);
    }

    return sub_E09D08(a5, v9 + 12832);
  }

  else
  {
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 1065353216;
  }

  return result;
}

void sub_116D1C8(uint64_t a1, void *a2)
{
  if (*(a1 + 12872) == 1 && *(a1 + 12876) == 1 && !sub_F69D6C(a2) && !sub_F695B8(a2))
  {
    v4 = sub_F69D2C(a2);
    if (sub_F69E5C(a2, v4 - 1))
    {
      v5 = v4 - 1;
    }

    else
    {
      v5 = v4 - 2;
    }

    if (v5)
    {
      v6 = sub_F69E5C(a2, 0) == 0;
    }

    else
    {
      v6 = 0;
    }

    sub_116CDF0(a1, a2, v6, v5, 0);
  }
}

void *sub_116D2A0(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v29 = a3;
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

  v11 = sub_1171880(&v21, &v13, &v29);
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

void sub_116D4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_116D4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
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

void sub_116D534(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_116D54C(BOOL *a1, void *a2)
{
  v5 = 20;
  strcpy(__p, "enable_path_clipping");
  v3 = sub_5FBE4(a2, __p, a1);
  *a1 = v3;
  if ((v5 & 0x80000000) == 0)
  {
    if (!v3)
    {
      return;
    }

LABEL_5:
    operator new();
  }

  operator delete(*__p);
  if (*a1)
  {
    goto LABEL_5;
  }
}

void sub_116D918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_116D958(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  v7 = a1 + 6;
  sub_438678(a1 + 1, a2, a4);
  HIBYTE(v17[2]) = 19;
  strcpy(v17, "DrivingPathAnalyzer");
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v8 = sub_3AEC94(a2, v17, v22);
  HIBYTE(v21) = 7;
  strcpy(&__p, "default");
  v9 = sub_5F5AC(v8, &__p);
  sub_1164FE0(v7, a2, v9, a4);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  v10 = v22[0];
  if (v22[0])
  {
    v11 = v22[1];
    v12 = v22[0];
    if (v22[1] != v22[0])
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = v22[0];
    }

    v22[1] = v10;
    operator delete(v12);
  }

  if (SHIBYTE(v17[2]) < 0)
  {
    operator delete(v17[0]);
  }

  v14 = sub_3AF114(a2);
  v15 = v14[1];
  v18 = *v14;
  v19 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_3603F0((a1 + 625), &v18);
  v16 = v19;
  if (v19)
  {
    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }

  HIBYTE(v17[2]) = 18;
  strcpy(v17, "DrivingPathFinding");
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  sub_3AEC94(a2, v17, v22);
  operator new();
}

void sub_116DD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_5C010(&a9);
  sub_1A104(&a19);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_616CD4(v30 + 12832);
  sub_360B9C((v30 + v32));
  sub_CDE540(v31);
  _Unwind_Resume(a1);
}

void sub_116DE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void **a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a22);
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x116DE08);
}

_BYTE *sub_116DE4C@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result + 12288;
  if (result[12872] != 1 || (result[12873] & 1) == 0)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1065353216;
    return result;
  }

  v5 = result;
  if ((result[12877] & 1) == 0 && sub_116E138(a2, (result + 8)) || v3[590] == 1 && sub_116E200(v5, a2))
  {
    result = sub_F63D8C(a2);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1065353216;
    return result;
  }

  if (*(v5 + 12856))
  {
    v7 = *(v5 + 12848);
    if (v7)
    {
      do
      {
        v12 = *v7;
        v13 = v7[8];
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

        v15 = v7[6];
        v7[6] = 0;
        if (v15)
        {
          operator delete(v15);
        }

        operator delete(v7);
        v7 = v12;
      }

      while (v12);
    }

    *(v5 + 12848) = 0;
    v8 = *(v5 + 12840);
    if (v8)
    {
      bzero(*(v5 + 12832), 8 * v8);
    }

    *(v5 + 12856) = 0;
  }

  if (sub_F63FF4(a2) != 1)
  {
    if (sub_F63FF4(a2) < 3 || (v16 = sub_45AC50(a2) + 552, v17 = sub_588D8(a2) - 552, v16 == v17))
    {
LABEL_29:
      v25 = *nullsub_1(a2);
      v26 = sub_116E33C(v5, v25, 0, 1);
      v28 = v27;
      if (v27 == sub_F6D024(v25) - 1)
      {
        v29 = (*(nullsub_1(a2) + 8) - 552);
        if (!sub_116E33C(v5, v29, 1, 0))
        {
          v31 = v30;
          sub_116E864(v5, v25, v26, v28, 1);
          sub_116E864(v5, v29, 0, v31, 1);
          return sub_E09D08(a3, v5 + 12832);
        }
      }
    }

    else
    {
      v18 = v16;
      while (1)
      {
        sub_4D0560();
        v20 = v19;
        v22 = v21;
        sub_F6C0C8();
        v32[0] = v5;
        v32[1] = v16;
        if (sub_1171CB0(v20, v22, v23, v24, v32))
        {
          break;
        }

        v18 += 552;
        v16 += 552;
        if (v18 == v17)
        {
          goto LABEL_29;
        }
      }
    }

    sub_F63D8C(a2);
    return sub_E09D08(a3, v5 + 12832);
  }

  v9 = *nullsub_1(a2);
  v10 = sub_116E33C(v5, v9, 0, 0);
  sub_116E864(v5, v9, v10, v11, 1);

  return sub_E09D08(a3, v5 + 12832);
}

void *sub_116E138(void *a1, uint64_t a2)
{
  sub_F6371C(a1, &v11);
  sub_F63818(a1, &v6);
  v4 = sub_116F248(&v11, &v6, a2);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return v4;
}

void sub_116E1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_3DB674(&a9);
  sub_3DB674(&a18);
  _Unwind_Resume(a1);
}

void sub_116E1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_3DB674(va);
  _Unwind_Resume(a1);
}

BOOL sub_116E200(uint64_t a1, uint64_t a2)
{
  v4 = sub_45AC50(a2);
  v5 = sub_588D8(a2);
  if (v4 != v5)
  {
    v8 = v5;
    while (1)
    {
      sub_1168CF4(a1 + 48, v4, &v16);
      if (v16 == v17)
      {
        v10 = __p;
        if (v18 == v19)
        {
          v6 = __p != v21;
          if (__p)
          {
LABEL_16:
            v11 = v21;
            v12 = v10;
            if (v21 != v10)
            {
              v13 = v21;
              do
              {
                v15 = *(v13 - 3);
                v13 -= 24;
                v14 = v15;
                if (v15)
                {
                  *(v11 - 2) = v14;
                  operator delete(v14);
                }

                v11 = v13;
              }

              while (v13 != v10);
              v12 = __p;
            }

            v21 = v10;
            operator delete(v12);
          }
        }

        else
        {
          v6 = 1;
          if (__p)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        v6 = 1;
        v10 = __p;
        if (__p)
        {
          goto LABEL_16;
        }
      }

      if (v18)
      {
        v19 = v18;
        operator delete(v18);
      }

      if (v16)
      {
        v17 = v16;
        operator delete(v16);
      }

      v4 += 69;
      v9 = v4 == v8 || v6;
      if (v9 == 1)
      {
        return v6;
      }
    }
  }

  return 0;
}

unint64_t sub_116E33C(void *a1, void *a2, char a3, char a4)
{
  v6 = sub_F6D024(a2);
  v47 = sub_F6E3D4(a2);
  if (!v6)
  {
    return 0;
  }

  v59 = 0;
  v54 = 0;
  v55 = v6;
  v52 = 0;
  v7 = 0;
  v8 = 0;
  v49 = v6 - 1;
  v46 = v6;
  v50 = v6;
  while (2)
  {
    v58 = v7;
    v9 = sub_F6D17C(a2, v8);
    v10 = *(v9 + 32);
    v11 = *(v9 + 16);
    v70[0] = *v9;
    v70[1] = v11;
    v71 = v10;
    v57 = v8;
    v56 = sub_F6D254(a2, v8);
    sub_4389F4((a1 + 1), v70, &v68);
    v12 = v69;
    v13 = v68;
    v53 = v68;
    if (v68 == v69)
    {
      goto LABEL_49;
    }

    do
    {
      v67 = *v13;
      v14 = sub_F6AF4C(a2);
      if (v14 == -1 || (v14 & 0xFFFF00000000) == 0xFFFF00000000 || (v14 & 0xFFFF000000000000) != 0x2000000000000)
      {
        v60 = v67;
        v61 = 0;
        sub_4C2A78(&v60, v64);
      }

      else
      {
        v62 = v67;
        v63 = 0;
        v15 = sub_F6AF4C(a2);
        sub_4C2ACC(&v62, v15, v64);
      }

      if (sub_4C2B70(v64))
      {
        v16 = sub_4C2BA0(v64);
      }

      else
      {
        if (!sub_4C2B80(v64))
        {
          if (sub_4C2B90(v64))
          {
            v21 = *(sub_4C2C1C(v64) + 8);
          }

          else
          {
            v21 = 0;
          }

          goto LABEL_17;
        }

        v16 = sub_4C2BC4(v64);
      }

      v18 = 0x9DDFEA08EB382D69 * ((8 * (v16 & 0x1FFFFFFF) + 8) ^ HIDWORD(v16));
      v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v18 >> 47) ^ v18);
      v20 = (0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
      v21 = (v17 + 2654435769 + (v20 << 6) + (v20 >> 2)) ^ v20;
LABEL_17:
      v22 = a1[1605];
      if (v22)
      {
        v23 = vcnt_s8(v22);
        v23.i16[0] = vaddlv_u8(v23);
        if (v23.u32[0] > 1uLL)
        {
          v24 = v21;
          if (v21 >= *&v22)
          {
            v24 = v21 % *&v22;
          }
        }

        else
        {
          v24 = (*&v22 - 1) & v21;
        }

        v25 = *(a1[1604] + 8 * v24);
        if (v25)
        {
          v26 = *v25;
          if (*v25)
          {
            if (v23.u32[0] < 2uLL)
            {
              v27 = *&v22 - 1;
              while (1)
              {
                v29 = v26[1];
                if (v29 == v21)
                {
                  if (sub_4C2D38((v26 + 2), v64))
                  {
                    goto LABEL_37;
                  }
                }

                else if ((v29 & v27) != v24)
                {
                  goto LABEL_38;
                }

                v26 = *v26;
                if (!v26)
                {
                  goto LABEL_38;
                }
              }
            }

            do
            {
              v28 = v26[1];
              if (v28 == v21)
              {
                if (sub_4C2D38((v26 + 2), v64))
                {
LABEL_37:
                  sub_4C2D98(v26 + 2, v64);
                  goto LABEL_39;
                }
              }

              else
              {
                if (v28 >= *&v22)
                {
                  v28 %= *&v22;
                }

                if (v28 != v24)
                {
                  break;
                }
              }

              v26 = *v26;
            }

            while (v26);
          }
        }
      }

LABEL_38:
      sub_D3B9CC(a1 + 1604, v64);
LABEL_39:
      v30 = __p;
      if (__p)
      {
        do
        {
          v31 = *v30;
          operator delete(v30);
          v30 = v31;
        }

        while (v31);
      }

      v32 = v65;
      v65 = 0;
      if (v32)
      {
        operator delete(v32);
      }

      ++v13;
    }

    while (v13 != v12);
    if (v53 == v12)
    {
LABEL_49:
      if (v59)
      {
        v34 = v55;
        v35 = v56;
        v36 = v56 + v52;
        v37 = v49;
        v38 = v50;
        v40 = v57;
        v39 = v58;
      }

      else
      {
        v40 = v57;
        v39 = v58;
        v41 = a3;
        if (!v57)
        {
          v41 = 0;
        }

        v37 = v49;
        v38 = v50;
        v35 = v56;
        if ((v41 & 1) != 0 || (v36 = v56, v34 = v57, v58 > a1[1610]))
        {
          v36 = v54;
          v34 = v55;
          goto LABEL_67;
        }
      }

      if (v40 == v37)
      {
        v33 = v35;
        if (v36 > v54)
        {
LABEL_57:
          v42 = v47 - (v39 + v33);
          v43 = a4;
          if (v40 == v37)
          {
            v43 = 0;
          }

          if (v42 <= a1[1611] && (v43 & 1) == 0)
          {
            v52 = 0;
            v46 = v34;
            goto LABEL_67;
          }
        }

        v52 = v36;
        v36 = v54;
        goto LABEL_67;
      }

      v7 = v35 + v39;
      v59 = 1;
      v52 = v36;
      v55 = v34;
      v44 = v68;
      if (v68)
      {
LABEL_70:
        v69 = v44;
        operator delete(v44);
      }

LABEL_3:
      v8 = v40 + 1;
      if (v8 == v38)
      {
        return v46;
      }

      continue;
    }

    break;
  }

  if ((v59 & (v52 > v54)) != 0)
  {
    v33 = 0;
    v34 = v55;
    v35 = v56;
    v36 = v52;
    v37 = v49;
    v38 = v50;
    v40 = v57;
    v39 = v58;
    goto LABEL_57;
  }

  v34 = v55;
  v35 = v56;
  v36 = v54;
  v38 = v50;
  v40 = v57;
  v39 = v58;
LABEL_67:
  if ((a3 & 1) == 0)
  {
    v7 = v35 + v39;
    if (v7 <= a1[1610])
    {
      v59 = 0;
      v54 = v36;
      v55 = v34;
      v44 = v68;
      if (v68)
      {
        goto LABEL_70;
      }

      goto LABEL_3;
    }
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  return v46;
}

void sub_116E820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  v34 = *(v32 - 152);
  if (v34)
  {
    *(v32 - 144) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(exception_object);
}

void sub_116E864(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, int a5)
{
  v10 = sub_F6D024(a2);
  if (a3 > a4 || v10 <= a4)
  {

    sub_F687F4(a2);
    return;
  }

  v11 = v10 - 1;
  if (!a3 && v11 == a4)
  {
    return;
  }

  if (a3 != a4)
  {
    v15 = (sub_5FC64(a2) + 96 * a4);
    v16 = sub_445EF4(a2);
    sub_F6E314(a2, v15, v16, 0);
    v17 = sub_5FC64(a2);
    v18 = sub_5FC64(a2);
    sub_F6E314(a2, v17, (v18 + 96 * a3), 0);
    if (v11 <= a4)
    {
      goto LABEL_14;
    }

LABEL_12:
    v19 = sub_F69058(a2);
    v20 = *(v19 + 16);
    *__p = *v19;
    v44 = v20;
    v21 = *(v19 + 32);
    v22 = *(v19 + 48);
    v23 = *(v19 + 64);
    v48 = *(v19 + 80);
    v46 = v22;
    v47 = v23;
    v45 = v21;
    LODWORD(__p[0]) = 1000000000;
    sub_F6901C(a2, __p);
    if (a5)
    {
      sub_F6BA80(a2, 15);
    }

    goto LABEL_14;
  }

  v12 = sub_F6D17C(a2, a3);
  v13 = sub_F6C2B0(a2, a3);
  v14 = sub_F692C8(a2, a3);
  sub_F6C100(a2, v13, v12, v14);
  if (v11 > a4)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (a3)
  {
    v24 = sub_73F1C(a2);
    v25 = *(v24 + 16);
    *__p = *v24;
    v44 = v25;
    v26 = *(v24 + 32);
    v27 = *(v24 + 48);
    v28 = *(v24 + 64);
    v48 = *(v24 + 80);
    v46 = v27;
    v47 = v28;
    v45 = v26;
    LODWORD(__p[0]) = 0;
    sub_F68F20(a2, __p);
    if (a5)
    {
      sub_F6BA80(a2, 14);
    }
  }

  v29 = sub_73F1C(a2);
  v30 = *(a1 + 12824);
  if (*(v29 + 82))
  {
    v31 = 0x40000;
  }

  else
  {
    v31 = 0;
  }

  v34 = v30 > -1 && ((v30 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v30 - 1) < 0xFFFFFFFFFFFFFLL || (v30 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (v34 && *(v29 + 73) == 1 && *(v29 + 72) == 1)
  {
    v35 = *(v29 + 24);
    if ((*&v35 > -1 && ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v35 - 1) < 0xFFFFFFFFFFFFFLL || (*&v35 & 0x7FFFFFFFFFFFFFFFLL) == 0) && v35 > 0.0 && v35 > *(a1 + 12824))
    {
      v31 |= 0x20000uLL;
    }
  }

  sub_F6E648(a2, v31);
  sub_116528C(a1 + 48, a2, __p);
  v41 = __p[0];
  v42 = __p[0] != __p[1];
  if (__p[0] == __p[1])
  {
    v42 = 0;
  }

  else
  {
    while (*(*v41[1] + 464 * v41[2] + 352) != 1)
    {
      v41 += 3;
      if (v41 == __p[1])
      {
        goto LABEL_56;
      }
    }

    v42 |= 2uLL;
  }

LABEL_56:
  sub_F6E648(a2, v42);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_116EB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_116EB98(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (*(a1 + 12872) != 1 || (*(a1 + 12873) & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((*(a1 + 12877) & 1) == 0)
  {
    sub_F6349C(&v24, a2);
    v10 = sub_116E138(&v24, a1 + 8);
    if (v27 < 0)
    {
      operator delete(__p);
    }

    v11 = v24;
    if (v24)
    {
      v12 = v25;
      v13 = v24;
      if (v25 != v24)
      {
        do
        {
          v12 = sub_4547F0(v12 - 552);
        }

        while (v12 != v11);
        v13 = v24;
      }

      v25 = v11;
      operator delete(v13);
    }

    if (v10)
    {
      sub_F687F4(a2);
LABEL_13:
      *a5 = 0u;
      *(a5 + 16) = 0u;
      *(a5 + 32) = 1065353216;
      return;
    }
  }

  if (*(a1 + 12856))
  {
    v14 = *(a1 + 12848);
    if (v14)
    {
      do
      {
        v20 = *v14;
        v21 = v14[8];
        if (v21)
        {
          do
          {
            v22 = *v21;
            operator delete(v21);
            v21 = v22;
          }

          while (v22);
        }

        v23 = v14[6];
        v14[6] = 0;
        if (v23)
        {
          operator delete(v23);
        }

        operator delete(v14);
        v14 = v20;
      }

      while (v20);
    }

    *(a1 + 12848) = 0;
    v15 = *(a1 + 12840);
    if (v15)
    {
      bzero(*(a1 + 12832), 8 * v15);
    }

    *(a1 + 12856) = 0;
  }

  v16 = sub_116E33C(a1, a2, a3, a4);
  v18 = v16;
  v19 = v17;
  if (a3 && v16 || a4 && v17 != sub_F6D024(a2) - 1)
  {
    sub_F687F4(a2);
  }

  else
  {
    sub_116E864(a1, a2, v18, v19, 1);
  }

  sub_E09D08(a5, a1 + 12832);
}

void sub_116ED84(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12872) == 1 && *(a1 + 12876) == 1)
  {
    v3 = nullsub_1(a2);
    v4 = *v3;
    v5 = *(v3 + 8);
    if (*v3 != v5)
    {
      do
      {
        sub_116EDF8(a1, v4);
        v4 += 69;
      }

      while (v4 != v5);
    }
  }
}

void sub_116EDF8(uint64_t a1, void *a2)
{
  if (*(a1 + 12872) == 1 && *(a1 + 12876) == 1 && !sub_F69D6C(a2) && !sub_F695B8(a2))
  {
    v4 = sub_F6D024(a2);
    if (sub_F6D254(a2, v4 - 1))
    {
      v5 = v4 - 1;
    }

    else
    {
      v5 = v4 - 2;
    }

    if (v5)
    {
      v6 = sub_F6D254(a2, 0) == 0;
    }

    else
    {
      v6 = 0;
    }

    sub_116E864(a1, a2, v6, v5, 0);
  }
}

void sub_116EED0(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2);
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 != v5)
  {
    do
    {
      sub_116EF24(a1, v4);
      v4 += 69;
    }

    while (v4 != v5);
  }
}

void sub_116EF24(uint64_t a1, void *a2)
{
  if (*(a1 + 12872) != 1 || *(a1 + 12874) != 1 || sub_F69D6C(a2))
  {
    return;
  }

  v4 = sub_F69654(a2);
  v5 = *v4;
  v6 = (*v4 - **v4);
  v7 = *v6;
  if (*(v4 + 38))
  {
    if (v7 >= 0x9B)
    {
      v8 = v6[77];
      if (v8)
      {
        if ((*&v5[v8] & 2) != 0)
        {
          return;
        }
      }
    }
  }

  else if (v7 >= 0x9B)
  {
    v9 = v6[77];
    if (v9)
    {
      if (*&v5[v9])
      {
        return;
      }
    }
  }

  v10 = sub_5FC64(a2);
  v11 = sub_445EF4(a2);
  if (v10 != v11)
  {
    while (1)
    {
      v12 = (*v10 - **v10);
      v13 = *v12;
      if (*(v10 + 38))
      {
        if (v13 >= 0x9B)
        {
          v14 = v12[77];
          if (v14)
          {
            v15 = 2;
            goto LABEL_14;
          }
        }
      }

      else if (v13 >= 0x9B)
      {
        v14 = v12[77];
        if (v14)
        {
          v15 = 1;
LABEL_14:
          if ((*(*v10 + v14) & v15) != 0)
          {
            break;
          }
        }
      }

      v10 += 12;
      if (v10 == v11)
      {
        v10 = v11;
        break;
      }
    }
  }

  if (v10 == sub_445EF4(a2))
  {
    v16 = sub_F6C814(a2);
    v17 = (*v16 - **v16);
    v18 = *v17;
    if (*(v16 + 38))
    {
      if (v18 < 0x9B)
      {
        return;
      }

      v19 = v17[77];
      if (!v19)
      {
        return;
      }

      v20 = 2;
    }

    else
    {
      if (v18 < 0x9B)
      {
        return;
      }

      v19 = v17[77];
      if (!v19)
      {
        return;
      }

      v20 = 1;
    }

    if ((*(*v16 + v19) & v20) == 0 || !*sub_F69058(a2))
    {
      return;
    }
  }

  v21 = *(sub_73F1C(a2) + 40);
  if (v10 == sub_445EF4(a2))
  {
    v22 = sub_F6C7D0(a2);
    v23 = sub_F6C814(a2);
    v24 = sub_F6D008(a2);
    v25 = sub_F692C8(a2, v24);
    sub_F6C100(a2, v22, v23, v25);
  }

  else
  {
    v26 = sub_5FC64(a2);
    sub_F6E314(a2, v26, v10, 1);
  }

  v32 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v36 = 0;
  v38 = 1;
  v39 = 0;
  v40 = 0;
  v41[0] = 2359296000;
  *(v41 + 7) = 0;
  v37 = v21;
  sub_F68F20(a2, &v32);
  sub_F6BA80(a2, 16);
  if (*(sub_73F1C(a2) + 82))
  {
    v27 = 0x40000;
  }

  else
  {
    v27 = 0;
  }

  sub_F6E648(a2, v27);
  sub_116528C(a1 + 48, a2, &__p);
  v28 = __p;
  v29 = __p != v31;
  if (__p == v31)
  {
    v29 = 0;
  }

  else
  {
    while (*(*v28[1] + 464 * v28[2] + 352) != 1)
    {
      v28 += 3;
      if (v28 == v31)
      {
        goto LABEL_46;
      }
    }

    v29 |= 2uLL;
  }

LABEL_46:
  sub_F6E648(a2, v29);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }
}

void sub_116F22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_116F248(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v29 = a3;
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

  v11 = sub_1171F04(&v21, &v13, &v29);
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

void sub_116F488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_116F4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
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

void sub_116F4DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_116F4F4(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2);
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 != v5)
  {
    do
    {
      sub_116F548(a1, v4);
      v4 += 69;
    }

    while (v4 != v5);
  }
}

void sub_116F548(uint64_t a1, void *a2)
{
  if (*(a1 + 12872) == 1 && *(a1 + 12875) == 1 && !sub_F69D6C(a2))
  {
    if ((v4 = sub_F6C814(a2), v5 = *(v4 + 32) | (*(v4 + 36) << 32), v6 = sub_2B51D8(a1 + 5000, v5), v7 = (v6 - *v6), *v7 >= 0x2Fu) && (v8 = v7[23]) != 0 && *(v6 + v8) == 47 || (v9 = sub_2B51D8(a1 + 5000, v5), v10 = (v9 - *v9), *v10 >= 0x2Fu) && (v11 = v10[23]) != 0 && ((v12 = *(v9 + v11), v51 = v12 > 0x2D, v13 = (1 << v12) & 0x208040000000, !v51) ? (v14 = v13 == 0) : (v14 = 1), !v14))
    {
      sub_4C35E0(a2);
      v16 = v15;
      sub_4C35EC(a2);
      if (v16 != v17)
      {
        v18 = v17;
        while (1)
        {
          v19 = *(v16 - 16) | (*(v16 - 30) << 32);
          v20 = sub_2B51D8(a1 + 5000, v19);
          v21 = (v20 - *v20);
          if (*v21 < 0x2Fu || (v22 = v21[23]) == 0 || *(v20 + v22) != 47)
          {
            v23 = sub_2B51D8(a1 + 5000, v19);
            v24 = (v23 - *v23);
            if (*v24 < 0x2Fu)
            {
              break;
            }

            v25 = v24[23];
            if (!v25)
            {
              break;
            }

            v26 = *(v23 + v25);
            v51 = v26 > 0x2D;
            v27 = (1 << v26) & 0x208040000000;
            if (v51 || v27 == 0)
            {
              break;
            }
          }

          v16 -= 12;
          if (v16 == v18)
          {
            v16 = v18;
            break;
          }
        }
      }

      sub_4C35EC(a2);
      if (v16 != v29)
      {
        v30 = *(sub_F69058(a2) + 40);
        v31 = sub_445EF4(a2);
        sub_F6E314(a2, v16, v31, 0);
        v57 = 0;
        v59 = 0;
        v60 = 0;
        v58 = 0;
        v61 = 0;
        v63 = 1;
        v64 = 0;
        v65 = 0;
        v66[0] = 2359296000;
        *(v66 + 7) = 0;
        v32 = *(a1 + 12896);
        if (v32 < 0)
        {
          v33 = -50;
        }

        else
        {
          v33 = 50;
        }

        v34 = sub_F6C814(a2);
        v35 = (*v34 - **v34);
        if (*v35 >= 9u && (v36 = v35[4]) != 0)
        {
          v37 = *(*v34 + v36);
        }

        else
        {
          v37 = 0;
        }

        if (v37 % 0x64 <= 0x31)
        {
          v38 = v37 / 0x64uLL;
        }

        else
        {
          v38 = v37 / 0x64uLL + 1;
        }

        if (v38)
        {
          v39 = 5243 * (v33 + v32 % 100);
          v40 = (v32 / 100 + ((v39 >> 19) + (v39 >> 31))) / v38;
          if (v40 > 1.0)
          {
            v40 = 1.0;
          }

          v57 = sub_E71C4C(v40);
        }

        v62 = v30;
        sub_F6901C(a2, &v57);
        v41 = sub_73F1C(a2);
        v42 = *(a1 + 12824);
        if (*(v41 + 82))
        {
          v43 = 0x40000;
        }

        else
        {
          v43 = 0;
        }

        v46 = v42 > -1 && ((v42 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v42 - 1) < 0xFFFFFFFFFFFFFLL || (v42 & 0x7FFFFFFFFFFFFFFFLL) == 0;
        if (v46 && *(v41 + 73) == 1 && *(v41 + 72) == 1)
        {
          v47 = *(v41 + 24);
          v51 = (*&v47 <= -1 || ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v47 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v47 & 0x7FFFFFFFFFFFFFFFLL) != 0 || v47 <= 0.0;
          if (!v51 && v47 > *(a1 + 12824))
          {
            v43 |= 0x20000uLL;
          }
        }

        sub_F6E648(a2, v43);
        sub_116528C(a1 + 48, a2, &__p);
        v53 = __p;
        v54 = __p != v56;
        if (__p == v56)
        {
          v54 = 0;
        }

        else
        {
          while (*(*v53[1] + 464 * v53[2] + 352) != 1)
          {
            v53 += 3;
            if (v53 == v56)
            {
              goto LABEL_82;
            }
          }

          v54 |= 2uLL;
        }

LABEL_82:
        sub_F6E648(a2, v54);
        if (__p)
        {
          v56 = __p;
          operator delete(__p);
        }
      }
    }
  }
}

void sub_116F97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_116F998(BOOL *a1, void *a2)
{
  v5 = 20;
  strcpy(__p, "enable_path_clipping");
  v3 = sub_5FBE4(a2, __p, a1);
  *a1 = v3;
  if ((v5 & 0x80000000) == 0)
  {
    if (!v3)
    {
      return;
    }

LABEL_5:
    operator new();
  }

  operator delete(*__p);
  if (*a1)
  {
    goto LABEL_5;
  }
}

void sub_116FD64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_11701A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_5C010(&a9);
  sub_1A104(&a19);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_616CD4(v30 + 8672);
  sub_360B9C((v30 + 840));
  sub_D5B404(v31);
  _Unwind_Resume(a1);
}

void sub_1170250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void **a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a22);
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1170248);
}

_BYTE *sub_117028C@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result + 0x2000;
  if (result[8712] != 1 || (result[8713] & 1) == 0)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1065353216;
    return result;
  }

  v5 = result;
  if ((result[8717] & 1) == 0 && sub_1170578(a2, (result + 8)) || v3[526] == 1 && sub_1170640(v5, a2))
  {
    result = sub_F63D8C(a2);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1065353216;
    return result;
  }

  if (*(v5 + 8696))
  {
    v7 = *(v5 + 8688);
    if (v7)
    {
      do
      {
        v12 = *v7;
        v13 = v7[8];
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

        v15 = v7[6];
        v7[6] = 0;
        if (v15)
        {
          operator delete(v15);
        }

        operator delete(v7);
        v7 = v12;
      }

      while (v12);
    }

    *(v5 + 8688) = 0;
    v8 = *(v5 + 8680);
    if (v8)
    {
      bzero(*(v5 + 8672), 8 * v8);
    }

    *(v5 + 8696) = 0;
  }

  if (sub_F63FF4(a2) != 1)
  {
    if (sub_F63FF4(a2) < 3 || (v16 = sub_45AC50(a2) + 552, v17 = sub_588D8(a2) - 552, v16 == v17))
    {
LABEL_29:
      v25 = *nullsub_1(a2);
      v26 = sub_117077C(v5, v25, 0, 1);
      v28 = v27;
      if (v27 == sub_F6FD88(v25) - 1)
      {
        v29 = (*(nullsub_1(a2) + 8) - 552);
        if (!sub_117077C(v5, v29, 1, 0))
        {
          v31 = v30;
          sub_1170CA4(v5, v25, v26, v28, 1);
          sub_1170CA4(v5, v29, 0, v31, 1);
          return sub_E09D08(a3, v5 + 8672);
        }
      }
    }

    else
    {
      v18 = v16;
      while (1)
      {
        sub_4D0560();
        v20 = v19;
        v22 = v21;
        sub_F6F0F4();
        v32[0] = v5;
        v32[1] = v16;
        if (sub_1172334(v20, v22, v23, v24, v32))
        {
          break;
        }

        v18 += 552;
        v16 += 552;
        if (v18 == v17)
        {
          goto LABEL_29;
        }
      }
    }

    sub_F63D8C(a2);
    return sub_E09D08(a3, v5 + 8672);
  }

  v9 = *nullsub_1(a2);
  v10 = sub_117077C(v5, v9, 0, 0);
  sub_1170CA4(v5, v9, v10, v11, 1);

  return sub_E09D08(a3, v5 + 8672);
}

uint64_t sub_1170578(void *a1, uint64_t a2)
{
  sub_F6462C(a1, &v11);
  sub_F64728(a1, &v6);
  v4 = sub_11711C8(&v11, &v6, a2);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return v4;
}

void sub_1170610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_3DB674(&a9);
  sub_3DB674(&a18);
  _Unwind_Resume(a1);
}

void sub_117062C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_3DB674(va);
  _Unwind_Resume(a1);
}

BOOL sub_1170640(uint64_t a1, uint64_t a2)
{
  v3 = sub_45AC50(a2);
  v4 = sub_588D8(a2);
  if (v3 != v4)
  {
    v7 = v4;
    while (1)
    {
      sub_1163BD4(&v15);
      if (v15 == v16)
      {
        v9 = __p;
        if (v17 == v18)
        {
          v5 = __p != v20;
          if (__p)
          {
LABEL_16:
            v10 = v20;
            v11 = v9;
            if (v20 != v9)
            {
              v12 = v20;
              do
              {
                v14 = *(v12 - 3);
                v12 -= 24;
                v13 = v14;
                if (v14)
                {
                  *(v10 - 2) = v13;
                  operator delete(v13);
                }

                v10 = v12;
              }

              while (v12 != v9);
              v11 = __p;
            }

            v20 = v9;
            operator delete(v11);
          }
        }

        else
        {
          v5 = 1;
          if (__p)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        v5 = 1;
        v9 = __p;
        if (__p)
        {
          goto LABEL_16;
        }
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      if (v15)
      {
        v16 = v15;
        operator delete(v15);
      }

      v3 += 552;
      v8 = v3 == v7 || v5;
      if (v8 == 1)
      {
        return v5;
      }
    }
  }

  return 0;
}

uint64_t sub_117077C(void *a1, uint64_t a2, char a3, char a4)
{
  v6 = sub_F6FD88(a2);
  v47 = sub_F70F54(a2);
  if (!v6)
  {
    return 0;
  }

  v59 = 0;
  v54 = 0;
  v55 = v6;
  v52 = 0;
  v7 = 0;
  v8 = 0;
  v49 = v6 - 1;
  v46 = v6;
  v50 = v6;
  while (2)
  {
    v58 = v7;
    v9 = sub_F6FE3C(a2, v8);
    v10 = *(v9 + 32);
    v11 = *(v9 + 16);
    v70[0] = *v9;
    v70[1] = v11;
    v71 = v10;
    v57 = v8;
    v56 = sub_F6FF10(a2, v8);
    sub_4393F4((a1 + 1), v70, &v68);
    v12 = v69;
    v13 = v68;
    v53 = v68;
    if (v68 == v69)
    {
      goto LABEL_49;
    }

    do
    {
      v67 = *v13;
      v14 = sub_F6AF4C(a2);
      if (v14 == -1 || (v14 & 0xFFFF00000000) == 0xFFFF00000000 || (v14 & 0xFFFF000000000000) != 0x2000000000000)
      {
        v60 = v67;
        v61 = 0;
        sub_4C2A78(&v60, v64);
      }

      else
      {
        v62 = v67;
        v63 = 0;
        v15 = sub_F6AF4C(a2);
        sub_4C2ACC(&v62, v15, v64);
      }

      if (sub_4C2B70(v64))
      {
        v16 = sub_4C2BA0(v64);
      }

      else
      {
        if (!sub_4C2B80(v64))
        {
          if (sub_4C2B90(v64))
          {
            v21 = *(sub_4C2C1C(v64) + 8);
          }

          else
          {
            v21 = 0;
          }

          goto LABEL_17;
        }

        v16 = sub_4C2BC4(v64);
      }

      v18 = 0x9DDFEA08EB382D69 * ((8 * (v16 & 0x1FFFFFFF) + 8) ^ HIDWORD(v16));
      v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v18 >> 47) ^ v18);
      v20 = (0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
      v21 = (v17 + 2654435769 + (v20 << 6) + (v20 >> 2)) ^ v20;
LABEL_17:
      v22 = a1[1085];
      if (v22)
      {
        v23 = vcnt_s8(v22);
        v23.i16[0] = vaddlv_u8(v23);
        if (v23.u32[0] > 1uLL)
        {
          v24 = v21;
          if (v21 >= *&v22)
          {
            v24 = v21 % *&v22;
          }
        }

        else
        {
          v24 = (*&v22 - 1) & v21;
        }

        v25 = *(a1[1084] + 8 * v24);
        if (v25)
        {
          v26 = *v25;
          if (*v25)
          {
            if (v23.u32[0] < 2uLL)
            {
              v27 = *&v22 - 1;
              while (1)
              {
                v29 = v26[1];
                if (v29 == v21)
                {
                  if (sub_4C2D38((v26 + 2), v64))
                  {
                    goto LABEL_37;
                  }
                }

                else if ((v29 & v27) != v24)
                {
                  goto LABEL_38;
                }

                v26 = *v26;
                if (!v26)
                {
                  goto LABEL_38;
                }
              }
            }

            do
            {
              v28 = v26[1];
              if (v28 == v21)
              {
                if (sub_4C2D38((v26 + 2), v64))
                {
LABEL_37:
                  sub_4C2D98(v26 + 2, v64);
                  goto LABEL_39;
                }
              }

              else
              {
                if (v28 >= *&v22)
                {
                  v28 %= *&v22;
                }

                if (v28 != v24)
                {
                  break;
                }
              }

              v26 = *v26;
            }

            while (v26);
          }
        }
      }

LABEL_38:
      sub_D3B9CC(a1 + 1084, v64);
LABEL_39:
      v30 = __p;
      if (__p)
      {
        do
        {
          v31 = *v30;
          operator delete(v30);
          v30 = v31;
        }

        while (v31);
      }

      v32 = v65;
      v65 = 0;
      if (v32)
      {
        operator delete(v32);
      }

      ++v13;
    }

    while (v13 != v12);
    if (v53 == v12)
    {
LABEL_49:
      if (v59)
      {
        v34 = v55;
        v35 = v56;
        v36 = v56 + v52;
        v37 = v49;
        v38 = v50;
        v40 = v57;
        v39 = v58;
      }

      else
      {
        v40 = v57;
        v39 = v58;
        v41 = a3;
        if (!v57)
        {
          v41 = 0;
        }

        v37 = v49;
        v38 = v50;
        v35 = v56;
        if ((v41 & 1) != 0 || (v36 = v56, v34 = v57, v58 > a1[1090]))
        {
          v36 = v54;
          v34 = v55;
          goto LABEL_67;
        }
      }

      if (v40 == v37)
      {
        v33 = v35;
        if (v36 > v54)
        {
LABEL_57:
          v42 = v47 - (v39 + v33);
          v43 = a4;
          if (v40 == v37)
          {
            v43 = 0;
          }

          if (v42 <= a1[1091] && (v43 & 1) == 0)
          {
            v52 = 0;
            v46 = v34;
            goto LABEL_67;
          }
        }

        v52 = v36;
        v36 = v54;
        goto LABEL_67;
      }

      v7 = v35 + v39;
      v59 = 1;
      v52 = v36;
      v55 = v34;
      v44 = v68;
      if (v68)
      {
LABEL_70:
        v69 = v44;
        operator delete(v44);
      }

LABEL_3:
      v8 = v40 + 1;
      if (v8 == v38)
      {
        return v46;
      }

      continue;
    }

    break;
  }

  if ((v59 & (v52 > v54)) != 0)
  {
    v33 = 0;
    v34 = v55;
    v35 = v56;
    v36 = v52;
    v37 = v49;
    v38 = v50;
    v40 = v57;
    v39 = v58;
    goto LABEL_57;
  }

  v34 = v55;
  v35 = v56;
  v36 = v54;
  v38 = v50;
  v40 = v57;
  v39 = v58;
LABEL_67:
  if ((a3 & 1) == 0)
  {
    v7 = v35 + v39;
    if (v7 <= a1[1090])
    {
      v59 = 0;
      v54 = v36;
      v55 = v34;
      v44 = v68;
      if (v68)
      {
        goto LABEL_70;
      }

      goto LABEL_3;
    }
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  return v46;
}

void sub_1170C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  v34 = *(v32 - 152);
  if (v34)
  {
    *(v32 - 144) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(exception_object);
}

void sub_1170CA4(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, int a5)
{
  v9 = sub_F6FD88(a2);
  if (a3 <= a4 && v9 > a4)
  {
    v10 = v9 - 1;
    if (!a3 && v10 == a4)
    {
      return;
    }

    if (a3 == a4)
    {
      v11 = sub_F6FE3C(a2, a3);
      v12 = sub_F6F134(a2, a3);
      v13 = sub_F692C8(a2, a3);
      sub_F69060(a2, v12, v11, v13);
      if (v10 <= a4)
      {
LABEL_14:
        if (a3)
        {
          v23 = sub_73F1C(a2);
          v24 = *(v23 + 16);
          v28 = *v23;
          v29 = v24;
          v25 = *(v23 + 32);
          v26 = *(v23 + 48);
          v27 = *(v23 + 64);
          v33 = *(v23 + 80);
          v31 = v26;
          v32 = v27;
          v30 = v25;
          LODWORD(v28) = 0;
          sub_F68F20(a2, &v28);
          if (a5)
          {
            sub_F6BA80(a2, 14);
          }
        }

        return;
      }
    }

    else
    {
      v14 = (sub_5FC64(a2) + 88 * a4);
      v15 = sub_445EF4(a2);
      sub_F70DF4(a2, v14, v15, 0);
      v16 = sub_5FC64(a2);
      v17 = sub_5FC64(a2);
      sub_F70DF4(a2, v16, (v17 + 88 * a3), 0);
      if (v10 <= a4)
      {
        goto LABEL_14;
      }
    }

    v18 = sub_F69058(a2);
    v19 = *(v18 + 16);
    v28 = *v18;
    v29 = v19;
    v20 = *(v18 + 32);
    v21 = *(v18 + 48);
    v22 = *(v18 + 64);
    v33 = *(v18 + 80);
    v31 = v21;
    v32 = v22;
    v30 = v20;
    LODWORD(v28) = 1000000000;
    sub_F6901C(a2, &v28);
    if (a5)
    {
      sub_F6BA80(a2, 15);
    }

    goto LABEL_14;
  }

  sub_F6E9D8(a2);
}

uint64_t sub_1170E90@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (*(result + 8712) == 1 && (*(result + 8713) & 1) != 0)
  {
    v9 = result;
    if ((*(result + 8717) & 1) == 0)
    {
      sub_F64294(&v20, a2);
    }

    if (*(result + 8696))
    {
      v10 = *(result + 8688);
      if (v10)
      {
        do
        {
          v16 = *v10;
          v17 = v10[8];
          if (v17)
          {
            do
            {
              v18 = *v17;
              operator delete(v17);
              v17 = v18;
            }

            while (v18);
          }

          v19 = v10[6];
          v10[6] = 0;
          if (v19)
          {
            operator delete(v19);
          }

          operator delete(v10);
          v10 = v16;
        }

        while (v16);
      }

      *(v9 + 8688) = 0;
      v11 = *(v9 + 8680);
      if (v11)
      {
        bzero(*(v9 + 8672), 8 * v11);
      }

      *(v9 + 8696) = 0;
    }

    v12 = sub_117077C(v9, a2, a3, a4);
    v14 = v12;
    v15 = v13;
    if (a3 && v12 || a4 && v13 != sub_F6FD88(a2) - 1)
    {
      sub_F6E9D8(a2);
    }

    else
    {
      sub_1170CA4(v9, a2, v14, v15, 1);
    }

    return sub_E09D08(a5, v9 + 8672);
  }

  else
  {
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 1065353216;
  }

  return result;
}

void sub_117107C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8712) == 1 && *(a1 + 8716) == 1)
  {
    v3 = nullsub_1(a2);
    v4 = *v3;
    v5 = *(v3 + 8);
    if (*v3 != v5)
    {
      do
      {
        sub_11710F0(a1, v4);
        v4 += 69;
      }

      while (v4 != v5);
    }
  }
}

void sub_11710F0(uint64_t a1, void *a2)
{
  if (*(a1 + 8712) == 1 && *(a1 + 8716) == 1 && !sub_F6FDC8(a2) && !sub_83EB8(a2))
  {
    v4 = sub_F6FD88(a2);
    if (sub_F6FF10(a2, v4 - 1))
    {
      v5 = v4 - 1;
    }

    else
    {
      v5 = v4 - 2;
    }

    if (v5)
    {
      v6 = sub_F6FF10(a2, 0) == 0;
    }

    else
    {
      v6 = 0;
    }

    sub_1170CA4(a1, a2, v6, v5, 0);
  }
}

uint64_t sub_11711C8(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v29 = a3;
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

  v11 = sub_1172588(&v21, &v13, &v29);
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

void sub_1171408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_1171424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
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

void sub_117145C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1171474(BOOL *a1, void *a2)
{
  v5 = 20;
  strcpy(__p, "enable_path_clipping");
  v3 = sub_5FBE4(a2, __p, a1);
  *a1 = v3;
  if ((v5 & 0x80000000) == 0)
  {
    if (!v3)
    {
      return;
    }

LABEL_5:
    operator new();
  }

  operator delete(*__p);
  if (*a1)
  {
    goto LABEL_5;
  }
}

void sub_1171840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1171880(void **a1, uint64_t a2, uint64_t *a3)
{
LABEL_1:
  while (2)
  {
    v6 = a1[6];
    v7 = a1[7];
    v8 = *(a2 + 48);
    v9 = *(a2 + 56);
    if (v6 == v7 || v8 == v9)
    {
      if ((v6 == v7) != (v8 == v9))
      {
        goto LABEL_22;
      }

      return 0;
    }

    if (a1[2] == *(a2 + 16))
    {
      result = *a1;
      if (*a1)
      {
        v12 = a1[1];
        v13 = sub_F69D2C(result);
        v14 = v12 < v13;
        v15 = *a2;
        if (!*a2)
        {
          if (v12 >= v13)
          {
            return 0;
          }

          goto LABEL_22;
        }
      }

      else
      {
        v14 = 0;
        v15 = *a2;
        if (!*a2)
        {
          return result;
        }
      }

      v16 = *(a2 + 8);
      v17 = sub_F69D2C(v15);
      if (!v14 || v16 >= v17)
      {
        if (v14 == v16 < v17)
        {
          return 0;
        }

        goto LABEL_22;
      }

      v19 = sub_F69DE0(*a1, a1[1]);
      if (v19 == sub_F69DE0(*a2, *(a2 + 8)))
      {
        return 0;
      }
    }

LABEL_22:
    v20 = sub_F69DE0(*a1, a1[1]);
    if (!sub_1171A84(a3, v20))
    {
      v21 = a1[2];
      a1[1] = (a1[1] + 1);
      while (1)
      {
        v23 = a1[6];
        if (v21 >= ((a1[7] - v23) >> 4) - 1)
        {
          goto LABEL_1;
        }

        v24 = &v23[16 * v21];
        if (!*a1)
        {
          break;
        }

        v25 = a1[1];
        v26 = sub_F69D2C(*a1);
        v27 = v25 < v26;
        if (*v24)
        {
          v28 = *(v24 + 1);
          v29 = sub_F69D2C(*v24);
          if (!v27 || v28 >= v29)
          {
            goto LABEL_24;
          }

          v31 = sub_F69DE0(*a1, a1[1]);
          if (v31 != sub_F69DE0(*v24, *(v24 + 1)))
          {
            goto LABEL_1;
          }
        }

        else if (v25 < v26)
        {
          goto LABEL_1;
        }

LABEL_25:
        v22 = a1[3];
        v21 = a1[2] + 1;
        a1[2] = v21;
        *a1 = *&v22[2 * v21];
      }

      if (!*v24)
      {
        goto LABEL_25;
      }

      v27 = 0;
      v28 = *(v24 + 1);
      v29 = sub_F69D2C(*v24);
LABEL_24:
      if ((v27 ^ (v28 < v29)))
      {
        continue;
      }

      goto LABEL_25;
    }

    return (&dword_0 + 1);
  }
}

BOOL sub_1171A84(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 32);
  v9[0] = off_26759D0;
  v10 = v9;
  sub_437D8C(v2, v3 & 0xFFFFFFFFFFFFFFLL, v9, &v7);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
    v4 = v7;
    v5 = v8;
    if (!v7)
    {
      return v4 != v5;
    }

    goto LABEL_5;
  }

  if (v10)
  {
    (*(*v10 + 40))();
  }

  v4 = v7;
  v5 = v8;
  if (v7)
  {
LABEL_5:
    v8 = v4;
    operator delete(v4);
  }

  return v4 != v5;
}

void sub_1171B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3E6D10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1171C38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3msl7routing11PathClipperINS0_11CyclingModeEE19has_walking_closureERKNS0_4PathIS2_EERKNS0_24TrafficIncidentsAccessorIS2_EEENKUlRKNS_4data11RoadSegmentINSC_21DirectedRoadSegmentIdEEEE_clESH_EUlRKNSC_8IncidentEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3msl7routing11PathClipperINS0_11CyclingModeEE19has_walking_closureERKNS0_4PathIS2_EERKNS0_24TrafficIncidentsAccessorIS2_EEENKUlRKNS_4data11RoadSegmentINSC_21DirectedRoadSegmentIdEEEE_clESH_EUlRKNSC_8IncidentEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3msl7routing11PathClipperINS0_11CyclingModeEE19has_walking_closureERKNS0_4PathIS2_EERKNS0_24TrafficIncidentsAccessorIS2_EEENKUlRKNS_4data11RoadSegmentINSC_21DirectedRoadSegmentIdEEEE_clESH_EUlRKNSC_8IncidentEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3msl7routing11PathClipperINS0_11CyclingModeEE19has_walking_closureERKNS0_4PathIS2_EERKNS0_24TrafficIncidentsAccessorIS2_EEENKUlRKNS_4data11RoadSegmentINSC_21DirectedRoadSegmentIdEEEE_clESH_EUlRKNSC_8IncidentEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL sub_1171CB0(void *a1, unint64_t a2, void *a3, unint64_t a4, void *a5)
{
  if (a1)
  {
    if (!a3)
    {
      while (1)
      {
        v16 = sub_F6D024(a1);
        v17 = a2 >= v16;
        result = a2 < v16;
        if (v17)
        {
          return result;
        }

        v19 = sub_F6D17C(a1, a2);
        sub_4389F4(*a5 + 8, v19, &__p);
        v20 = __p;
        if (__p != v27)
        {
          break;
        }

        v21 = sub_F6E658(a5[1], 1);
        v20 = __p;
        if (__p)
        {
          goto LABEL_21;
        }

LABEL_15:
        ++a2;
        if (v21)
        {
          return 1;
        }
      }

      v21 = 1;
      if (!__p)
      {
        goto LABEL_15;
      }

LABEL_21:
      v27 = v20;
      operator delete(v20);
      goto LABEL_15;
    }

    while (1)
    {
      v10 = sub_F6D024(a1);
      v11 = sub_F6D024(a3);
      if (a2 >= v10 || a4 >= v11)
      {
        if (a2 < v10 == a4 < v11)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_F6D17C(a1, a2);
        if (v12 == sub_F6D17C(a3, a4))
        {
          return 0;
        }
      }

      v13 = sub_F6D17C(a1, a2);
      sub_4389F4(*a5 + 8, v13, &__p);
      v14 = __p;
      if (__p != v27)
      {
        break;
      }

      v15 = sub_F6E658(a5[1], 1);
      v14 = __p;
      if (__p)
      {
        goto LABEL_14;
      }

LABEL_4:
      ++a2;
      if (v15)
      {
        return 1;
      }
    }

    v15 = 1;
    if (!__p)
    {
      goto LABEL_4;
    }

LABEL_14:
    v27 = v14;
    operator delete(v14);
    goto LABEL_4;
  }

  if (a3)
  {
    while (1)
    {
      v22 = sub_F6D024(a3);
      v17 = a4 >= v22;
      result = a4 < v22;
      if (v17)
      {
        return result;
      }

      v23 = sub_F6D17C(0, a2);
      sub_4389F4(*a5 + 8, v23, &__p);
      v24 = __p;
      if (__p != v27)
      {
        break;
      }

      v25 = sub_F6E658(a5[1], 1);
      v24 = __p;
      if (__p)
      {
        goto LABEL_31;
      }

LABEL_25:
      ++a2;
      if (v25)
      {
        return 1;
      }
    }

    v25 = 1;
    if (!__p)
    {
      goto LABEL_25;
    }

LABEL_31:
    v27 = v24;
    operator delete(v24);
    goto LABEL_25;
  }

  return 0;
}

void sub_1171EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1171F04(void **a1, uint64_t a2, uint64_t *a3)
{
LABEL_1:
  while (2)
  {
    v6 = a1[6];
    v7 = a1[7];
    v8 = *(a2 + 48);
    v9 = *(a2 + 56);
    if (v6 == v7 || v8 == v9)
    {
      if ((v6 == v7) != (v8 == v9))
      {
        goto LABEL_22;
      }

      return 0;
    }

    if (a1[2] == *(a2 + 16))
    {
      result = *a1;
      if (*a1)
      {
        v12 = a1[1];
        v13 = sub_F6D024(result);
        v14 = v12 < v13;
        v15 = *a2;
        if (!*a2)
        {
          if (v12 >= v13)
          {
            return 0;
          }

          goto LABEL_22;
        }
      }

      else
      {
        v14 = 0;
        v15 = *a2;
        if (!*a2)
        {
          return result;
        }
      }

      v16 = *(a2 + 8);
      v17 = sub_F6D024(v15);
      if (!v14 || v16 >= v17)
      {
        if (v14 == v16 < v17)
        {
          return 0;
        }

        goto LABEL_22;
      }

      v19 = sub_F6D17C(*a1, a1[1]);
      if (v19 == sub_F6D17C(*a2, *(a2 + 8)))
      {
        return 0;
      }
    }

LABEL_22:
    v20 = sub_F6D17C(*a1, a1[1]);
    if (!sub_1172108(a3, v20))
    {
      v21 = a1[2];
      a1[1] = (a1[1] + 1);
      while (1)
      {
        v23 = a1[6];
        if (v21 >= ((a1[7] - v23) >> 4) - 1)
        {
          goto LABEL_1;
        }

        v24 = &v23[16 * v21];
        if (!*a1)
        {
          break;
        }

        v25 = a1[1];
        v26 = sub_F6D024(*a1);
        v27 = v25 < v26;
        if (*v24)
        {
          v28 = *(v24 + 1);
          v29 = sub_F6D024(*v24);
          if (!v27 || v28 >= v29)
          {
            goto LABEL_24;
          }

          v31 = sub_F6D17C(*a1, a1[1]);
          if (v31 != sub_F6D17C(*v24, *(v24 + 1)))
          {
            goto LABEL_1;
          }
        }

        else if (v25 < v26)
        {
          goto LABEL_1;
        }

LABEL_25:
        v22 = a1[3];
        v21 = a1[2] + 1;
        a1[2] = v21;
        *a1 = *&v22[2 * v21];
      }

      if (!*v24)
      {
        goto LABEL_25;
      }

      v27 = 0;
      v28 = *(v24 + 1);
      v29 = sub_F6D024(*v24);
LABEL_24:
      if ((v27 ^ (v28 < v29)))
      {
        continue;
      }

      goto LABEL_25;
    }

    return (&dword_0 + 1);
  }
}

BOOL sub_1172108(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 32);
  v9[0] = off_2675A50;
  v10 = v9;
  sub_43867C(v2, v3 & 0xFFFFFFFFFFFFFFLL, v9, &v7);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
    v4 = v7;
    v5 = v8;
    if (!v7)
    {
      return v4 != v5;
    }

    goto LABEL_5;
  }

  if (v10)
  {
    (*(*v10 + 40))();
  }

  v4 = v7;
  v5 = v8;
  if (v7)
  {
LABEL_5:
    v8 = v4;
    operator delete(v4);
  }

  return v4 != v5;
}

void sub_1172218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3E6D10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_11722BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3msl7routing11PathClipperINS0_11DrivingModeEE19has_walking_closureERKNS0_4PathIS2_EERKNS0_24TrafficIncidentsAccessorIS2_EEENKUlRKNS_4data11RoadSegmentINSC_21DirectedRoadSegmentIdEEEE_clESH_EUlRKNSC_8IncidentEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3msl7routing11PathClipperINS0_11DrivingModeEE19has_walking_closureERKNS0_4PathIS2_EERKNS0_24TrafficIncidentsAccessorIS2_EEENKUlRKNS_4data11RoadSegmentINSC_21DirectedRoadSegmentIdEEEE_clESH_EUlRKNSC_8IncidentEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3msl7routing11PathClipperINS0_11DrivingModeEE19has_walking_closureERKNS0_4PathIS2_EERKNS0_24TrafficIncidentsAccessorIS2_EEENKUlRKNS_4data11RoadSegmentINSC_21DirectedRoadSegmentIdEEEE_clESH_EUlRKNSC_8IncidentEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3msl7routing11PathClipperINS0_11DrivingModeEE19has_walking_closureERKNS0_4PathIS2_EERKNS0_24TrafficIncidentsAccessorIS2_EEENKUlRKNS_4data11RoadSegmentINSC_21DirectedRoadSegmentIdEEEE_clESH_EUlRKNSC_8IncidentEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL sub_1172334(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a1)
  {
    if (!a3)
    {
      while (1)
      {
        v16 = sub_F6FD88(a1);
        v17 = a2 >= v16;
        result = a2 < v16;
        if (v17)
        {
          return result;
        }

        v19 = sub_F6FE3C(a1, a2);
        sub_4393F4(*a5 + 8, v19, &__p);
        v20 = __p;
        if (__p != v27)
        {
          break;
        }

        v21 = sub_F6E658(a5[1], 1);
        v20 = __p;
        if (__p)
        {
          goto LABEL_21;
        }

LABEL_15:
        ++a2;
        if (v21)
        {
          return 1;
        }
      }

      v21 = 1;
      if (!__p)
      {
        goto LABEL_15;
      }

LABEL_21:
      v27 = v20;
      operator delete(v20);
      goto LABEL_15;
    }

    while (1)
    {
      v10 = sub_F6FD88(a1);
      v11 = sub_F6FD88(a3);
      if (a2 >= v10 || a4 >= v11)
      {
        if (a2 < v10 == a4 < v11)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_F6FE3C(a1, a2);
        if (v12 == sub_F6FE3C(a3, a4))
        {
          return 0;
        }
      }

      v13 = sub_F6FE3C(a1, a2);
      sub_4393F4(*a5 + 8, v13, &__p);
      v14 = __p;
      if (__p != v27)
      {
        break;
      }

      v15 = sub_F6E658(a5[1], 1);
      v14 = __p;
      if (__p)
      {
        goto LABEL_14;
      }

LABEL_4:
      ++a2;
      if (v15)
      {
        return 1;
      }
    }

    v15 = 1;
    if (!__p)
    {
      goto LABEL_4;
    }

LABEL_14:
    v27 = v14;
    operator delete(v14);
    goto LABEL_4;
  }

  if (a3)
  {
    while (1)
    {
      v22 = sub_F6FD88(a3);
      v17 = a4 >= v22;
      result = a4 < v22;
      if (v17)
      {
        return result;
      }

      v23 = sub_F6FE3C(0, a2);
      sub_4393F4(*a5 + 8, v23, &__p);
      v24 = __p;
      if (__p != v27)
      {
        break;
      }

      v25 = sub_F6E658(a5[1], 1);
      v24 = __p;
      if (__p)
      {
        goto LABEL_31;
      }

LABEL_25:
      ++a2;
      if (v25)
      {
        return 1;
      }
    }

    v25 = 1;
    if (!__p)
    {
      goto LABEL_25;
    }

LABEL_31:
    v27 = v24;
    operator delete(v24);
    goto LABEL_25;
  }

  return 0;
}

void sub_1172564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1172588(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
LABEL_1:
  while (2)
  {
    v6 = a1[6];
    v7 = a1[7];
    v8 = a2[6];
    v9 = a2[7];
    if (v6 == v7 || v8 == v9)
    {
      if ((v6 == v7) != (v8 == v9))
      {
        goto LABEL_22;
      }

      return 0;
    }

    if (a1[2] == a2[2])
    {
      result = *a1;
      if (*a1)
      {
        v12 = a1[1];
        v13 = sub_F6FD88(result);
        v14 = v12 < v13;
        v15 = *a2;
        if (!*a2)
        {
          if (v12 >= v13)
          {
            return 0;
          }

          goto LABEL_22;
        }
      }

      else
      {
        v14 = 0;
        v15 = *a2;
        if (!*a2)
        {
          return result;
        }
      }

      v16 = a2[1];
      v17 = sub_F6FD88(v15);
      if (!v14 || v16 >= v17)
      {
        if (v14 == v16 < v17)
        {
          return 0;
        }

        goto LABEL_22;
      }

      v19 = sub_F6FE3C(*a1, a1[1]);
      if (v19 == sub_F6FE3C(*a2, a2[1]))
      {
        return 0;
      }
    }

LABEL_22:
    v20 = sub_F6FE3C(*a1, a1[1]);
    if (!sub_117278C(a3, v20))
    {
      v21 = a1[2];
      ++a1[1];
      while (1)
      {
        v23 = a1[6];
        if (v21 >= ((a1[7] - v23) >> 4) - 1)
        {
          goto LABEL_1;
        }

        v24 = v23 + 16 * v21;
        if (!*a1)
        {
          break;
        }

        v25 = a1[1];
        v26 = sub_F6FD88(*a1);
        v27 = v25 < v26;
        if (*v24)
        {
          v28 = *(v24 + 8);
          v29 = sub_F6FD88(*v24);
          if (!v27 || v28 >= v29)
          {
            goto LABEL_24;
          }

          v31 = sub_F6FE3C(*a1, a1[1]);
          if (v31 != sub_F6FE3C(*v24, *(v24 + 8)))
          {
            goto LABEL_1;
          }
        }

        else if (v25 < v26)
        {
          goto LABEL_1;
        }

LABEL_25:
        v22 = a1[3];
        v21 = a1[2] + 1;
        a1[2] = v21;
        *a1 = *(v22 + 16 * v21);
      }

      if (!*v24)
      {
        goto LABEL_25;
      }

      v27 = 0;
      v28 = *(v24 + 8);
      v29 = sub_F6FD88(*v24);
LABEL_24:
      if ((v27 ^ (v28 < v29)))
      {
        continue;
      }

      goto LABEL_25;
    }

    return 1;
  }
}

BOOL sub_117278C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = ((*(a2 + 36) & 0x20000000) << 19) | (*(a2 + 36) << 32) | *(a2 + 32);
  v9[0] = off_2675AD0;
  v10 = v9;
  sub_4392B4(v2, v3 ^ 0x1000000000000, v9, &v7);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
    v4 = v7;
    v5 = v8;
    if (!v7)
    {
      return v4 != v5;
    }

    goto LABEL_5;
  }

  if (v10)
  {
    (*(*v10 + 40))();
  }

  v4 = v7;
  v5 = v8;
  if (v7)
  {
LABEL_5:
    v8 = v4;
    operator delete(v4);
  }

  return v4 != v5;
}

void sub_11728B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3E6D10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1172954(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3msl7routing11PathClipperINS0_11WalkingModeEE19has_walking_closureERKNS0_4PathIS2_EERKNS0_24TrafficIncidentsAccessorIS2_EEENKUlRKNS_4data11RoadSegmentINSC_26DirectedSidedWalkSegmentIdEEEE_clESH_EUlRKNSC_8IncidentEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3msl7routing11PathClipperINS0_11WalkingModeEE19has_walking_closureERKNS0_4PathIS2_EERKNS0_24TrafficIncidentsAccessorIS2_EEENKUlRKNS_4data11RoadSegmentINSC_26DirectedSidedWalkSegmentIdEEEE_clESH_EUlRKNSC_8IncidentEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3msl7routing11PathClipperINS0_11WalkingModeEE19has_walking_closureERKNS0_4PathIS2_EERKNS0_24TrafficIncidentsAccessorIS2_EEENKUlRKNS_4data11RoadSegmentINSC_26DirectedSidedWalkSegmentIdEEEE_clESH_EUlRKNSC_8IncidentEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3msl7routing11PathClipperINS0_11WalkingModeEE19has_walking_closureERKNS0_4PathIS2_EERKNS0_24TrafficIncidentsAccessorIS2_EEENKUlRKNS_4data11RoadSegmentINSC_26DirectedSidedWalkSegmentIdEEEE_clESH_EUlRKNSC_8IncidentEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1172A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_404134(v15);
    _Unwind_Resume(a1);
  }

  sub_404134(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1172AD0(uint64_t a1, void *a2, int a3)
{
  v5 = a3 == 2;
  sub_F8DE84(a1, a3 == 2);
  *(a1 + 4320) = v5;
  sub_1172B38(a1, a2);

  return sub_1172EDC(a1, a2);
}

void sub_1172B38(uint64_t a1, void *a2)
{
  if (sub_F69D6C(a2))
  {
    return;
  }

  v4 = sub_F695C8(a2);
  v5 = sub_F69654(a2);
  v6 = v5;
  if (*(a1 + 4320) != 1 || (v7 = sub_2BBF84(*(a1 + 4312), *(v5 + 32) & 0xFFFFFFFFFFFFFFLL, 0), (v8 & 1) == 0))
  {
    v7 = sub_30F984(a1 + 4312, v6);
  }

  v9 = v7;
  if (!sub_F695B8(a2))
  {
    sub_4C35D4(a2, &v39);
    v14 = v39;
    v15 = v40;
    if (v39 == v40)
    {
      return;
    }

    LOBYTE(v16) = v4 & (v9 != 0);
    while (1)
    {
      if (*(a1 + 4320) != 1 || (v22 = sub_2BBF84(*(a1 + 4312), *(v14 + 32) & 0xFFFFFFFFFFFFFFLL, 0), (v23 & 1) == 0))
      {
        v22 = sub_30F984(a1 + 4312, v14);
      }

      v24 = v22;
      if (*(a1 + 4320) != 1 || (v25 = sub_2BBF84(*(a1 + 4312), *(v14 + 72) & 0xFFFFFFFFFFFFFFLL, 0), (v26 & 1) == 0))
      {
        v25 = sub_30F984(a1 + 4312, (v14 + 40));
      }

      v27 = v25;
      if (*(a1 + 4320) != 1 || (v28 = sub_2BBF84(*(a1 + 4312), *(v14 + 72) & 0xFFFFFFFFFFFFFFLL, 0), (v29 & 1) == 0))
      {
        v28 = sub_30F984(a1 + 4312, (v14 + 40));
      }

      if (v24 == v27)
      {
        v30 = 0;
        v31 = *(v14 + 84) & 0xFE | v16 & 1;
        *(v14 + 84) = v31;
LABEL_46:
        v17 = 0;
        v19 = 0;
        v18 = 0;
        if ((v31 & (v28 != 0)) != 1)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v32 = *(a1 + 4328);
      v33 = v27 & v24;
      if ((v27 & v24) == v27)
      {
LABEL_30:
        v34 = 0;
        if (v33 == v24)
        {
          goto LABEL_44;
        }
      }

      else
      {
        for (i = *v32; i != *(v32 + 8); i += 4)
        {
          if ((i[3] & v24) == i[2] && (i[1] & v27) == *i)
          {
            goto LABEL_30;
          }
        }

        v34 = 1;
        if (v33 == v24)
        {
LABEL_44:
          v30 = 0;
          goto LABEL_45;
        }
      }

      for (j = *v32; j != *(v32 + 8); j += 4)
      {
        if ((j[1] & v24) == *j && (j[3] & v27) == j[2])
        {
          goto LABEL_44;
        }
      }

      v38 = *(v32 + 24);
      v37 = *(v32 + 32);
      if (v38 != v37)
      {
        while ((*(v38 + 8) & v24) != *v38 || (*(v38 + 24) & v27) != *(v38 + 16))
        {
          v38 += 40;
          if (v38 == v37)
          {
            v31 = *(v14 + 84) & 0xFE | v16 & 1;
            *(v14 + 84) = v31;
            v30 = 1;
            v17 = 1;
            if (v34)
            {
              goto LABEL_13;
            }

            goto LABEL_46;
          }
        }
      }

      v30 = v38 == v37 || *(v38 + 32) != 0;
LABEL_45:
      v31 = *(v14 + 84) & 0xFE | v16 & 1;
      *(v14 + 84) = v31;
      if ((v34 & 1) == 0)
      {
        goto LABEL_46;
      }

      v17 = 1;
LABEL_13:
      v18 = 2;
      v19 = v17;
LABEL_14:
      v20 = v31 & 0xF5;
      if (v30 | v19)
      {
        v21 = 8;
      }

      else
      {
        v21 = 0;
      }

      *(v14 + 84) = v18 | v21 | v20;
      sub_30F6FC(a1 + 4312, v14);
      sub_30F6FC(a1 + 4312, (v14 + 40));
      v16 = (*(v14 + 84) >> 1) & 1;
      v14 += 88;
      if (v14 == v15)
      {
        return;
      }
    }
  }

  v10 = sub_F695C8(a2);
  v11 = v4 & (v9 == 0);
  v12 = sub_F69654(a2);
  v13 = sub_F6AF38(a2);

  sub_F69060(a2, v10 ^ v11, v12, v13);
}

uint64_t sub_1172EDC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v3 = sub_F69D08(a2);
  v74 = v3;
  if (!v3)
  {
    LOBYTE(v5) = 1;
    return v5 & 1;
  }

  v4 = 0;
  v5 = 1;
  v77 = v2;
  do
  {
    v6 = sub_F69AE4(v2, v4);
    v7 = *(v6 + 80) & 0x3FFF;
    if ((v4 || !v7) && (v7 || (*(v6 + 80) & 0x3FFF0000) == 0))
    {
      goto LABEL_4;
    }

    LODWORD(v9) = v4;
    do
    {
      v10 = v9;
      v9 = (v9 + 1);
    }

    while (sub_F69D08(v2) > v9 && (*(sub_F695B0(v2, v10 + 1) + 80) & 0x3FFF) != 0);
    v95 = 0u;
    v96 = 0u;
    v94 = 0u;
    v80 = v10 + 1;
    v75 = v10;
    v76 = v5;
    if (v4)
    {
      v11 = 1;
      goto LABEL_16;
    }

    v22 = *(v6 + 32);
    v23 = sub_30C50C(*(a1 + 4304), v22, 1);
    if (!v23 || (v24 = &v23[-*v23], *v24 < 5u) || !*(v24 + 2) || (v25 = &v23[*(v24 + 2) + *&v23[*(v24 + 2)]], *v25 <= WORD2(v22)) || (v26 = &v25[4 * WORD2(v22) + 4 + *&v25[4 * WORD2(v22) + 4]], v27 = &v26[-*v26], *v27 < 0x23u) || (v28 = *(v27 + 17)) == 0)
    {
LABEL_44:
      v13 = 0;
      v21 = *(&v96 + 1);
      v79 = 0;
      if (*(&v96 + 1))
      {
        goto LABEL_50;
      }

LABEL_45:
      if (!sub_7E7E4(2u))
      {
        goto LABEL_90;
      }

      sub_19594F8(&v84);
      v38 = sub_4A5C(&v84, "could not verify virtual sub path ", 34);
      v39 = sub_F69AE4(v2, v4);
      v40 = sub_421CD4(v38, (((*(v39 + 32) >> 16) & 0xFFFF0000 | (*(v39 + 32) << 32) | (2 * ((*(v39 + 32) & 0xFF000000000000) == 0))) + 4 * *(v39 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v39 + 84) & 1);
      v41 = sub_4A5C(v40, " and ", 5);
      v42 = sub_F69AE4(v2, v75);
      sub_421CD4(v41, (((*(v42 + 72) >> 16) & 0xFFFF0000 | (*(v42 + 72) << 32) | (2 * ((*(v42 + 72) & 0xFF000000000000) == 0))) + 4 * *(v42 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v42 + 84) >> 1) & 1);
      if ((v93 & 0x10) != 0)
      {
        v66 = v92;
        v67 = &v88;
        if (v92 < v89)
        {
          v92 = v89;
          v66 = v89;
          v67 = &v88;
        }
      }

      else
      {
        if ((v93 & 8) == 0)
        {
          v43 = 0;
          v83 = 0;
LABEL_85:
          *(&__dst + v43) = 0;
          sub_7E854(&__dst, 2u);
          if (v83 < 0)
          {
            operator delete(__dst);
          }

          v84 = v73;
          *(&v84 + *(v73 - 3)) = v72;
          if (v91 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v86);
          std::ostream::~ostream();
          std::ios::~ios();
LABEL_90:
          v62 = 0;
          v63 = *(&v94 + 1);
          v64 = v95;
          *(&v96 + 1) = 0;
          v65 = (v95 - *(&v94 + 1)) >> 3;
          if (v65 < 3)
          {
            goto LABEL_92;
          }

          do
          {
LABEL_91:
            operator delete(*v63);
            v64 = v95;
            v63 = (*(&v94 + 1) + 8);
            *(&v94 + 1) = v63;
            v65 = (v95 - v63) >> 3;
          }

          while (v65 > 2);
          goto LABEL_92;
        }

        v66 = v87[2];
        v67 = v87;
      }

      v68 = *v67;
      v43 = v66 - *v67;
      if (v43 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v43 >= 0x17)
      {
        operator new();
      }

      v83 = v66 - *v67;
      if (v43)
      {
        memmove(&__dst, v68, v43);
      }

      goto LABEL_85;
    }

    v29 = &v26[v28 + *&v26[v28]];
    v30 = &v29[-*v29];
    v31 = *v30;
    if ((v22 & 0xFF000000000000) != 0)
    {
      if (v31 < 7)
      {
        goto LABEL_44;
      }

      v32 = *(v30 + 3);
      if (!v32)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v31 < 5)
      {
        goto LABEL_44;
      }

      v32 = *(v30 + 2);
      if (!v32)
      {
        goto LABEL_44;
      }
    }

    v33 = &v29[v32 + *&v29[v32]];
    v34 = &v33[-*v33];
    if (*v34 < 9u)
    {
      goto LABEL_44;
    }

    v35 = *(v34 + 4);
    if (!v35)
    {
      goto LABEL_44;
    }

    v36 = &v33[v35];
    v37 = *v36;
    v11 = *&v36[v37];
    if (!*&v36[v37])
    {
      goto LABEL_44;
    }

LABEL_16:
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *(&v94 + 1);
      if (v95 == *(&v94 + 1))
      {
        v15 = 0;
      }

      else
      {
        v15 = ((v95 - *(&v94 + 1)) << 7) - 1;
      }

      v16 = *(&v96 + 1);
      v17 = *(&v96 + 1) + v96;
      if (v15 == *(&v96 + 1) + v96)
      {
        sub_1175264(&v94);
        v16 = *(&v96 + 1);
        v14 = *(&v94 + 1);
        v17 = v96 + *(&v96 + 1);
      }

      v18 = v13;
      v19 = v13 >> 4;
      *(*(v14 + ((v17 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v17 & 0x3FF)) = v13 >> 4;
      *(&v96 + 1) = v16 + 1;
      if (((v13 >> 4) + 1) >> 60)
      {
        sub_1794();
      }

      if (v13 >> 4 != -1)
      {
        if (!(((v13 >> 4) + 1) >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v20 = 16 * v19;
      *v20 = v4;
      *(v20 + 8) = v12;
      *(v20 + 12) = -1;
      v13 = 16 * v19 + 16;
      memcpy(0, 0, v18);
      ++v12;
    }

    while (v12 != v11);
    v21 = *(&v96 + 1);
    v79 = v4;
    if (!*(&v96 + 1))
    {
      goto LABEL_45;
    }

    while (1)
    {
LABEL_50:
      v81 = *(*(*(&v94 + 1) + (((v96 + v21 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v96 + v21 - 1) & 0x3FF));
      if (v95 == *(&v94 + 1))
      {
        v44 = 0;
      }

      else
      {
        v44 = ((v95 - *(&v94 + 1)) << 7) - 1;
      }

      *(&v96 + 1) = v21 - 1;
      if ((v44 - (v21 + v96) + 1) >= 0x800)
      {
        operator delete(*(v95 - 8));
        *&v95 = v95 - 8;
      }

      v45 = *(16 * v81);
      v46 = LOWORD(dword_8[4 * v81]);
      if (v45 == v80)
      {
        break;
      }

      v47 = sub_F69AE4(v2, *(16 * v81));
      sub_F8ED58(a1, (*(v47 + 84) & 1 | (4 * v46)) + ((((*(v47 + 32) >> 16) & 0xFFFF0000 | (*(v47 + 32) << 32) | (2 * ((*(v47 + 32) & 0xFF000000000000) == 0))) + 4 * *(v47 + 80)) & 0xFFFFFFFFFFFF0003), 0, &v97, 0);
      v48 = v97;
      v49 = v98;
      if (v97 != v98)
      {
        v50 = v45 + 1;
        do
        {
          if (((((*(v48 + 9) >> 16) & 0xFFFF0000 | (*(v48 + 9) << 32) | (2 * ((*(v48 + 9) & 0xFF000000000000) == 0))) + 4 * v48[41]) & 0xFFFFFFFFFFFF0003 | (*(v48 + 84) >> 1) & 1) == ((((*(v47 + 72) >> 16) & 0xFFFF0000 | (*(v47 + 72) << 32) | (2 * ((*(v47 + 72) & 0xFF000000000000) == 0))) + 4 * *(v47 + 82)) & 0xFFFFFFFFFFFF0003 | (*(v47 + 84) >> 1) & 1))
          {
            v51 = *(&v94 + 1);
            if (v95 == *(&v94 + 1))
            {
              v52 = 0;
            }

            else
            {
              v52 = ((v95 - *(&v94 + 1)) << 7) - 1;
            }

            v53 = *(&v96 + 1);
            v54 = *(&v96 + 1) + v96;
            if (v52 == *(&v96 + 1) + v96)
            {
              sub_1175264(&v94);
              v53 = *(&v96 + 1);
              v51 = *(&v94 + 1);
              v54 = v96 + *(&v96 + 1);
            }

            v55 = v13;
            v56 = v13 >> 4;
            *(*(v51 + ((v54 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v54 & 0x3FF)) = v13 >> 4;
            *(&v96 + 1) = v53 + 1;
            v57 = v48[41] & 0x3FFF;
            if (((v13 >> 4) + 1) >> 60)
            {
              sub_1794();
            }

            if (v13 >> 4 != -1)
            {
              if (!(((v13 >> 4) + 1) >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v58 = 16 * v56;
            *v58 = v50;
            *(v58 + 8) = v57;
            *(v58 + 12) = v81;
            v13 = 16 * v56 + 16;
            memcpy(0, 0, v55);
          }

          v48 += 44;
        }

        while (v48 != v49);
      }

      v21 = *(&v96 + 1);
      v2 = v77;
      v4 = v79;
      if (!*(&v96 + 1))
      {
        goto LABEL_45;
      }
    }

    v59 = dword_C[4 * v81];
    if (sub_F69D08(v2) > v80)
    {
      *(sub_F69AE4(v2, v80) + 80) = v46;
    }

    for (; v59 != 0xFFFFFFFFLL; LODWORD(v46) = v61)
    {
      v60 = (16 * v59);
      v61 = LOWORD(dword_8[4 * v59]);
      v59 = dword_C[4 * v59];
      *(sub_F69AE4(v2, *v60) + 80) = v61 | (v46 << 16);
    }

    v62 = 1;
    v63 = *(&v94 + 1);
    v64 = v95;
    *(&v96 + 1) = 0;
    v65 = (v95 - *(&v94 + 1)) >> 3;
    if (v65 >= 3)
    {
      goto LABEL_91;
    }

LABEL_92:
    if (v65 == 1)
    {
      v69 = 512;
    }

    else
    {
      if (v65 != 2)
      {
        goto LABEL_97;
      }

      v69 = 1024;
    }

    *&v96 = v69;
LABEL_97:
    if (v63 != v64)
    {
      do
      {
        v70 = *v63++;
        operator delete(v70);
      }

      while (v63 != v64);
      if (v95 != *(&v94 + 1))
      {
        *&v95 = v95 + ((*(&v94 + 1) - v95 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    if (v94)
    {
      operator delete(v94);
    }

    v5 = v76 & v62;
LABEL_4:
    ++v4;
  }

  while (v4 != v74);
  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  return v5 & 1;
}

void sub_1173960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  v31 = *(v29 - 120);
  if (v31)
  {
    *(v29 - 112) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1173B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_404134(v15);
    _Unwind_Resume(a1);
  }

  sub_404134(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1173BDC(uint64_t a1, void *a2, int a3)
{
  v5 = a3 == 2;
  sub_F8DE84(a1, a3 == 2);
  *(a1 + 4320) = v5;
  sub_1173C44(a1, a2);

  return sub_1174000(a1, a2);
}

void sub_1173C44(uint64_t a1, void *a2)
{
  if (sub_F69D6C(a2))
  {
    return;
  }

  v4 = sub_F6C788(a2);
  v5 = sub_F69654(a2);
  v6 = v5;
  if (*(a1 + 4320) != 1 || (v7 = sub_2BC10C(*(a1 + 4312), *(v5 + 32) & 0xFFFFFFFFFFFFFFLL, 0), (v8 & 1) == 0))
  {
    v7 = sub_30F8F8(a1 + 4312, v6);
  }

  v9 = v7;
  if (!sub_F695B8(a2))
  {
    sub_4C35D4(a2, &v37);
    v14 = v37;
    v15 = v38;
    if (v37 == v38)
    {
      return;
    }

    LOBYTE(v16) = v4 & (v9 != 0);
    while (1)
    {
      if (*(a1 + 4320) != 1 || (v20 = sub_2BC10C(*(a1 + 4312), *(v14 + 32) & 0xFFFFFFFFFFFFFFLL, 0), (v21 & 1) == 0))
      {
        v20 = sub_30F8F8(a1 + 4312, v14);
      }

      v22 = v20;
      if (*(a1 + 4320) != 1 || (v23 = sub_2BC10C(*(a1 + 4312), *(v14 + 72) & 0xFFFFFFFFFFFFFFLL, 0), (v24 & 1) == 0))
      {
        v23 = sub_30F8F8(a1 + 4312, (v14 + 40));
      }

      v25 = v23;
      if (*(a1 + 4320) != 1 || (v26 = sub_2BC10C(*(a1 + 4312), *(v14 + 72) & 0xFFFFFFFFFFFFFFLL, 0), (v27 & 1) == 0))
      {
        v26 = sub_30F8F8(a1 + 4312, (v14 + 40));
      }

      if (v22 == v25)
      {
        v28 = 0;
        v29 = *(v14 + 88) & 0xFE | v16 & 1;
        *(v14 + 88) = v29;
        goto LABEL_54;
      }

      v30 = *(a1 + 4328);
      v31 = v25 & v22;
      if ((v25 & v22) == v25)
      {
LABEL_27:
        v32 = 0;
        if (v31 == v22)
        {
          goto LABEL_41;
        }
      }

      else
      {
        for (i = *v30; i != *(v30 + 8); i += 4)
        {
          if ((i[3] & v22) == i[2] && (i[1] & v25) == *i)
          {
            goto LABEL_27;
          }
        }

        v32 = 1;
        if (v31 == v22)
        {
LABEL_41:
          v28 = 0;
          goto LABEL_42;
        }
      }

      for (j = *v30; j != *(v30 + 8); j += 4)
      {
        if ((j[1] & v22) == *j && (j[3] & v25) == j[2])
        {
          goto LABEL_41;
        }
      }

      v36 = *(v30 + 24);
      v35 = *(v30 + 32);
      if (v36 != v35)
      {
        while ((*(v36 + 8) & v22) != *v36 || (*(v36 + 24) & v25) != *(v36 + 16))
        {
          v36 += 40;
          if (v36 == v35)
          {
            v29 = *(v14 + 88) & 0xFE | v16 & 1;
            *(v14 + 88) = v29;
            if (v32)
            {
              v17 = v29 & 0x9D | 2;
              v18 = 32;
              goto LABEL_13;
            }

            v28 = 1;
            goto LABEL_54;
          }
        }
      }

      v28 = v36 == v35 || *(v36 + 32) != 0;
LABEL_42:
      v29 = *(v14 + 88) & 0xFE | v16 & 1;
      *(v14 + 88) = v29;
      if (v32)
      {
        v18 = 32;
        v17 = v29 & 0x9D | 2;
        if (!v28)
        {
          goto LABEL_56;
        }

        goto LABEL_13;
      }

LABEL_54:
      if ((v29 & (v26 != 0)) == 1)
      {
        v18 = 0;
        v17 = v29 & 0x9D | 2;
        if (!v28)
        {
LABEL_56:
          v19 = 0;
          goto LABEL_14;
        }
      }

      else
      {
        v18 = 0;
        v19 = 0;
        v17 = v29 & 0x9D;
        if (!v28)
        {
          goto LABEL_14;
        }
      }

LABEL_13:
      v19 = 64;
LABEL_14:
      *(v14 + 88) = v18 | v19 | v17;
      sub_30F868(a1 + 4312, v14);
      sub_30F868(a1 + 4312, (v14 + 40));
      v16 = (*(v14 + 88) >> 1) & 1;
      v14 += 96;
      if (v14 == v15)
      {
        return;
      }
    }
  }

  v10 = sub_F6C788(a2);
  v11 = v4 & (v9 == 0);
  v12 = sub_F69654(a2);
  v13 = sub_F6AF38(a2);

  sub_F6C100(a2, v10 ^ v11, v12, v13);
}

uint64_t sub_1174000(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v3 = sub_F6D008(a2);
  v74 = v3;
  if (!v3)
  {
    LOBYTE(v5) = 1;
    return v5 & 1;
  }

  v4 = 0;
  v5 = 1;
  v77 = v2;
  do
  {
    v6 = sub_F6CDE4(v2, v4);
    v7 = *(v6 + 80) & 0x3FFF;
    if ((v4 || !v7) && (v7 || (*(v6 + 80) & 0x3FFF0000) == 0))
    {
      goto LABEL_4;
    }

    LODWORD(v9) = v4;
    do
    {
      v10 = v9;
      v9 = (v9 + 1);
    }

    while (sub_F6D008(v2) > v9 && (*(sub_F6C648(v2, v10 + 1) + 80) & 0x3FFF) != 0);
    v95 = 0u;
    v96 = 0u;
    v94 = 0u;
    v80 = v10 + 1;
    v75 = v10;
    v76 = v5;
    if (v4)
    {
      v11 = 1;
      goto LABEL_16;
    }

    v22 = *(v6 + 32);
    v23 = sub_30C50C(*(a1 + 4304), v22, 1);
    if (!v23 || (v24 = &v23[-*v23], *v24 < 5u) || !*(v24 + 2) || (v25 = &v23[*(v24 + 2) + *&v23[*(v24 + 2)]], *v25 <= WORD2(v22)) || (v26 = &v25[4 * WORD2(v22) + 4 + *&v25[4 * WORD2(v22) + 4]], v27 = &v26[-*v26], *v27 < 0x25u) || (v28 = *(v27 + 18)) == 0)
    {
LABEL_44:
      v13 = 0;
      v21 = *(&v96 + 1);
      v79 = 0;
      if (*(&v96 + 1))
      {
        goto LABEL_50;
      }

LABEL_45:
      if (!sub_7E7E4(2u))
      {
        goto LABEL_90;
      }

      sub_19594F8(&v84);
      v38 = sub_4A5C(&v84, "could not verify virtual sub path ", 34);
      v39 = sub_F6CDE4(v2, v4);
      v40 = sub_421CD4(v38, (((*(v39 + 32) >> 16) & 0xFFFF0000 | (*(v39 + 32) << 32) | (2 * ((*(v39 + 32) & 0xFF000000000000) == 0))) + 4 * *(v39 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v39 + 88) & 1);
      v41 = sub_4A5C(v40, " and ", 5);
      v42 = sub_F6CDE4(v2, v75);
      sub_421CD4(v41, (((*(v42 + 72) >> 16) & 0xFFFF0000 | (*(v42 + 72) << 32) | (2 * ((*(v42 + 72) & 0xFF000000000000) == 0))) + 4 * *(v42 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v42 + 88) >> 1) & 1);
      if ((v93 & 0x10) != 0)
      {
        v66 = v92;
        v67 = &v88;
        if (v92 < v89)
        {
          v92 = v89;
          v66 = v89;
          v67 = &v88;
        }
      }

      else
      {
        if ((v93 & 8) == 0)
        {
          v43 = 0;
          v83 = 0;
LABEL_85:
          *(&__dst + v43) = 0;
          sub_7E854(&__dst, 2u);
          if (v83 < 0)
          {
            operator delete(__dst);
          }

          v84 = v73;
          *(&v84 + *(v73 - 3)) = v72;
          if (v91 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v86);
          std::ostream::~ostream();
          std::ios::~ios();
LABEL_90:
          v62 = 0;
          v63 = *(&v94 + 1);
          v64 = v95;
          *(&v96 + 1) = 0;
          v65 = (v95 - *(&v94 + 1)) >> 3;
          if (v65 < 3)
          {
            goto LABEL_92;
          }

          do
          {
LABEL_91:
            operator delete(*v63);
            v64 = v95;
            v63 = (*(&v94 + 1) + 8);
            *(&v94 + 1) = v63;
            v65 = (v95 - v63) >> 3;
          }

          while (v65 > 2);
          goto LABEL_92;
        }

        v66 = v87[2];
        v67 = v87;
      }

      v68 = *v67;
      v43 = v66 - *v67;
      if (v43 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v43 >= 0x17)
      {
        operator new();
      }

      v83 = v66 - *v67;
      if (v43)
      {
        memmove(&__dst, v68, v43);
      }

      goto LABEL_85;
    }

    v29 = &v26[v28 + *&v26[v28]];
    v30 = &v29[-*v29];
    v31 = *v30;
    if ((v22 & 0xFF000000000000) != 0)
    {
      if (v31 < 7)
      {
        goto LABEL_44;
      }

      v32 = *(v30 + 3);
      if (!v32)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v31 < 5)
      {
        goto LABEL_44;
      }

      v32 = *(v30 + 2);
      if (!v32)
      {
        goto LABEL_44;
      }
    }

    v33 = &v29[v32 + *&v29[v32]];
    v34 = &v33[-*v33];
    if (*v34 < 9u)
    {
      goto LABEL_44;
    }

    v35 = *(v34 + 4);
    if (!v35)
    {
      goto LABEL_44;
    }

    v36 = &v33[v35];
    v37 = *v36;
    v11 = *&v36[v37];
    if (!*&v36[v37])
    {
      goto LABEL_44;
    }

LABEL_16:
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *(&v94 + 1);
      if (v95 == *(&v94 + 1))
      {
        v15 = 0;
      }

      else
      {
        v15 = ((v95 - *(&v94 + 1)) << 7) - 1;
      }

      v16 = *(&v96 + 1);
      v17 = *(&v96 + 1) + v96;
      if (v15 == *(&v96 + 1) + v96)
      {
        sub_1175264(&v94);
        v16 = *(&v96 + 1);
        v14 = *(&v94 + 1);
        v17 = v96 + *(&v96 + 1);
      }

      v18 = v13;
      v19 = v13 >> 4;
      *(*(v14 + ((v17 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v17 & 0x3FF)) = v13 >> 4;
      *(&v96 + 1) = v16 + 1;
      if (((v13 >> 4) + 1) >> 60)
      {
        sub_1794();
      }

      if (v13 >> 4 != -1)
      {
        if (!(((v13 >> 4) + 1) >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v20 = 16 * v19;
      *v20 = v4;
      *(v20 + 8) = v12;
      *(v20 + 12) = -1;
      v13 = 16 * v19 + 16;
      memcpy(0, 0, v18);
      ++v12;
    }

    while (v12 != v11);
    v21 = *(&v96 + 1);
    v79 = v4;
    if (!*(&v96 + 1))
    {
      goto LABEL_45;
    }

    while (1)
    {
LABEL_50:
      v81 = *(*(*(&v94 + 1) + (((v96 + v21 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v96 + v21 - 1) & 0x3FF));
      if (v95 == *(&v94 + 1))
      {
        v44 = 0;
      }

      else
      {
        v44 = ((v95 - *(&v94 + 1)) << 7) - 1;
      }

      *(&v96 + 1) = v21 - 1;
      if ((v44 - (v21 + v96) + 1) >= 0x800)
      {
        operator delete(*(v95 - 8));
        *&v95 = v95 - 8;
      }

      v45 = *(16 * v81);
      v46 = LOWORD(dword_8[4 * v81]);
      if (v45 == v80)
      {
        break;
      }

      v47 = sub_F6CDE4(v2, *(16 * v81));
      sub_F90350(a1, (*(v47 + 88) & 1 | (4 * v46)) + ((((*(v47 + 32) >> 16) & 0xFFFF0000 | (*(v47 + 32) << 32) | (2 * ((*(v47 + 32) & 0xFF000000000000) == 0))) + 4 * *(v47 + 80)) & 0xFFFFFFFFFFFF0003), 0, &v97, 0);
      v48 = v97;
      v49 = v98;
      if (v97 != v98)
      {
        v50 = v45 + 1;
        do
        {
          if (((((*(v48 + 9) >> 16) & 0xFFFF0000 | (*(v48 + 9) << 32) | (2 * ((*(v48 + 9) & 0xFF000000000000) == 0))) + 4 * v48[41]) & 0xFFFFFFFFFFFF0003 | (*(v48 + 88) >> 1) & 1) == ((((*(v47 + 72) >> 16) & 0xFFFF0000 | (*(v47 + 72) << 32) | (2 * ((*(v47 + 72) & 0xFF000000000000) == 0))) + 4 * *(v47 + 82)) & 0xFFFFFFFFFFFF0003 | (*(v47 + 88) >> 1) & 1))
          {
            v51 = *(&v94 + 1);
            if (v95 == *(&v94 + 1))
            {
              v52 = 0;
            }

            else
            {
              v52 = ((v95 - *(&v94 + 1)) << 7) - 1;
            }

            v53 = *(&v96 + 1);
            v54 = *(&v96 + 1) + v96;
            if (v52 == *(&v96 + 1) + v96)
            {
              sub_1175264(&v94);
              v53 = *(&v96 + 1);
              v51 = *(&v94 + 1);
              v54 = v96 + *(&v96 + 1);
            }

            v55 = v13;
            v56 = v13 >> 4;
            *(*(v51 + ((v54 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v54 & 0x3FF)) = v13 >> 4;
            *(&v96 + 1) = v53 + 1;
            v57 = v48[41] & 0x3FFF;
            if (((v13 >> 4) + 1) >> 60)
            {
              sub_1794();
            }

            if (v13 >> 4 != -1)
            {
              if (!(((v13 >> 4) + 1) >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v58 = 16 * v56;
            *v58 = v50;
            *(v58 + 8) = v57;
            *(v58 + 12) = v81;
            v13 = 16 * v56 + 16;
            memcpy(0, 0, v55);
          }

          v48 += 48;
        }

        while (v48 != v49);
      }

      v21 = *(&v96 + 1);
      v2 = v77;
      v4 = v79;
      if (!*(&v96 + 1))
      {
        goto LABEL_45;
      }
    }

    v59 = dword_C[4 * v81];
    if (sub_F6D008(v2) > v80)
    {
      *(sub_F6CDE4(v2, v80) + 80) = v46;
    }

    for (; v59 != 0xFFFFFFFFLL; LODWORD(v46) = v61)
    {
      v60 = (16 * v59);
      v61 = LOWORD(dword_8[4 * v59]);
      v59 = dword_C[4 * v59];
      *(sub_F6CDE4(v2, *v60) + 80) = v61 | (v46 << 16);
    }

    v62 = 1;
    v63 = *(&v94 + 1);
    v64 = v95;
    *(&v96 + 1) = 0;
    v65 = (v95 - *(&v94 + 1)) >> 3;
    if (v65 >= 3)
    {
      goto LABEL_91;
    }

LABEL_92:
    if (v65 == 1)
    {
      v69 = 512;
    }

    else
    {
      if (v65 != 2)
      {
        goto LABEL_97;
      }

      v69 = 1024;
    }

    *&v96 = v69;
LABEL_97:
    if (v63 != v64)
    {
      do
      {
        v70 = *v63++;
        operator delete(v70);
      }

      while (v63 != v64);
      if (v95 != *(&v94 + 1))
      {
        *&v95 = v95 + ((*(&v94 + 1) - v95 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    if (v94)
    {
      operator delete(v94);
    }

    v5 = v76 & v62;
LABEL_4:
    ++v4;
  }

  while (v4 != v74);
  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  return v5 & 1;
}

void sub_1174A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  v31 = *(v29 - 120);
  if (v31)
  {
    *(v29 - 112) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1174BFC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = nullsub_1(a2);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*v5 == v7)
  {
    return 1;
  }

  LODWORD(v8) = 1;
  do
  {
    sub_F8DE84(a1, a3 == 2);
    *(a1 + 4320) = a3 == 2;
    sub_1173C44(a1, v6);
    v8 = v8 & sub_1174000(a1, v6);
    v6 += 69;
  }

  while (v6 != v7);
  return v8;
}

uint64_t sub_1174CA4(uint64_t a1, uint64_t *a2)
{
  sub_F92178(a1, a2, 1);
  *(a1 + 136) = sub_3AF6B4(a2);
  *(a1 + 144) = sub_3B06A4(a2);
  *(a1 + 152) = sub_3AF144(a2);
  *(a1 + 160) = 0;
  v8 = 8;
  strcpy(__p, "standard");
  v4 = sub_3AF30C(a2, __p);
  if (v8 < 0)
  {
    v5 = v4;
    operator delete(__p[0]);
    v4 = v5;
  }

  *(a1 + 168) = v4 + 480;
  return a1;
}

void sub_1174D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_3BFA2C(v15);
    _Unwind_Resume(a1);
  }

  sub_3BFA2C(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1174DA4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3 == 2;
  sub_F9223C(a1, a3 == 2);
  *(a1 + 160) = v5;
  sub_1174DF4(a1, a2);
  return 1;
}

void sub_1174DF4(uint64_t a1, uint64_t a2)
{
  if (sub_F6FDC8(a2))
  {
    return;
  }

  v4 = sub_F6F638(a2);
  v5 = sub_F6F6F4(a2);
  v6 = v5;
  if (*(a1 + 160) != 1 || (v7 = sub_2BC294(*(a1 + 152), (((*(v5 + 36) & 0x20000000) << 19) | (*(v5 + 36) << 32) | *(v5 + 32)) ^ 0x1000000000000, 0), (v8 & 1) == 0))
  {
    v7 = sub_30FA10(a1 + 152, v6);
  }

  v9 = v7;
  if (!sub_83EB8(a2))
  {
    sub_4C35D4(a2, &v44);
    v17 = v44;
    v18 = v45;
    if (v44 == v45)
    {
      return;
    }

    LOBYTE(v20) = v4 < 0 && v9 != 0;
    while (1)
    {
      if (*(a1 + 160) != 1 || (v26 = sub_2BC294(*(a1 + 152), (((*(v17 + 36) & 0x20000000) << 19) | (*(v17 + 36) << 32) | *(v17 + 32)) ^ 0x1000000000000, 0), (v27 & 1) == 0))
      {
        v26 = sub_30FA10(a1 + 152, v17);
      }

      v28 = v26;
      if (*(a1 + 160) != 1 || (v29 = sub_2BC294(*(a1 + 152), (((*(v17 + 76) & 0x20000000) << 19) | (*(v17 + 76) << 32) | *(v17 + 72)) ^ 0x1000000000000, 0), (v30 & 1) == 0))
      {
        v29 = sub_30FA10(a1 + 152, (v17 + 40));
      }

      v31 = v29;
      if (*(a1 + 160) != 1 || (v32 = sub_2BC294(*(a1 + 152), (((*(v17 + 76) & 0x20000000) << 19) | (*(v17 + 76) << 32) | *(v17 + 72)) ^ 0x1000000000000, 0), (v33 & 1) == 0))
      {
        v32 = sub_30FA10(a1 + 152, (v17 + 40));
      }

      if (v28 != v31)
      {
        break;
      }

      if (v20)
      {
        v34 = 0x100000000000000;
      }

      else
      {
        v34 = 0;
      }

      v35 = *(v17 + 80) & 0xFEFFFFFFFFFFFFFFLL | v34;
      *(v17 + 80) = v35;
LABEL_71:
      if ((v20 & (v32 != 0)) != 1)
      {
        v21 = 0;
        goto LABEL_28;
      }

LABEL_27:
      v21 = 0x200000000000000;
LABEL_28:
      *(v17 + 80) = v35 & 0xFDFFFFFFFFFFFFFFLL | v21;
      v22 = sub_30F7C8(a1 + 152, v17);
      v23 = sub_30F7C8(a1 + 152, (v17 + 40));
      v24 = *(v17 + 80);
      if (v22 != v23)
      {
        v25 = 0x2000000000000000;
      }

      else
      {
        v25 = 0;
      }

      *(v17 + 80) = v24 & 0xDFFFFFFFFFFFFFFFLL | v25;
      v20 = (v24 >> 57) & 1;
      v17 += 88;
      if (v17 == v18)
      {
        return;
      }
    }

    v36 = *(a1 + 168);
    v37 = v31 & v28;
    if ((v31 & v28) == v31)
    {
LABEL_47:
      v38 = 0;
      if (v37 == v28)
      {
        goto LABEL_67;
      }
    }

    else
    {
      for (i = *v36; i != *(v36 + 8); i += 4)
      {
        if ((i[3] & v28) == i[2] && (i[1] & v31) == *i)
        {
          goto LABEL_47;
        }
      }

      v38 = 1;
      if (v37 == v28)
      {
LABEL_67:
        if (v20)
        {
          v43 = 0x100000000000000;
        }

        else
        {
          v43 = 0;
        }

        v35 = *(v17 + 80) & 0xFEFFFFFFFFFFFFFFLL | v43;
        *(v17 + 80) = v35;
        if (v38)
        {
          goto LABEL_27;
        }

        goto LABEL_71;
      }
    }

    for (j = *v36; j != *(v36 + 8); j += 4)
    {
      if ((j[1] & v28) == *j && (j[3] & v31) == j[2])
      {
        goto LABEL_67;
      }
    }

    v42 = *(v36 + 24);
    for (k = *(v36 + 32); v42 != k; v42 += 5)
    {
      if ((v42[1] & v28) == *v42 && (v42[3] & v31) == v42[2])
      {
        break;
      }
    }

    goto LABEL_67;
  }

  v10 = sub_F6F638(a2);
  v11 = v10;
  if (v4 < 0)
  {
    v12 = (2 * HIDWORD(v10)) & 0x40000000;
    v13 = (HIDWORD(v10) & 0x60000000) == 0x40000000 && v12 == 0;
    v14 = v13 ? 0x40000000 : 0;
    if (!v9)
    {
      v11 = v10 | (((HIDWORD(v10) & 0x9FFFFFFF | (v12 >> 1) | v14) ^ 0x80000000) << 32);
    }
  }

  v15 = sub_F6F6F4(a2);
  v16 = sub_F6AF38(a2);

  sub_F69060(a2, v11, v15, v16);
}

uint64_t sub_11751E4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = nullsub_1(a2);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 != v7)
  {
    do
    {
      sub_F9223C(a1, a3 == 2);
      *(a1 + 160) = a3 == 2;
      sub_1174DF4(a1, v6);
      v6 += 552;
    }

    while (v6 != v7);
  }

  return 1;
}

void *sub_1175264(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
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
  return sub_1D3194(a1, &v11);
}

void sub_11755D4(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_117562C(void *a1, void *a2)
{
  *a1 = a2;
  sub_10104C4(a1 + 1, a2);
  sub_10B73A8(a1 + 679, a2, 0);
  sub_D7B0((a1 + 1356));
  a1[1391] = sub_3AF6B4(a2);
  return a1;
}

void sub_1175690(_Unwind_Exception *a1)
{
  sub_DBE4(v1 + v2);
  if (*(v1 + 10816) == 1)
  {
    sub_3E3DF0((v1 + 5504));
    if (*(v1 + 5400) != 1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (*(v1 + 5400) != 1)
  {
    goto LABEL_3;
  }

  sub_3E3DF0((v1 + 88));
  _Unwind_Resume(a1);
}

uint64_t sub_1175714(int32x2_t *a1, char **a2, int *a3, int a4, uint64_t a5)
{
  result = sub_F63D58(a2);
  if ((result & 1) == 0)
  {
    if (sub_F63FF4(a2) == 1)
    {
      v11 = sub_45AC50(a2);
      sub_11759C0(a1, v11, a3, a4, a5);
      v12 = sub_45AC50(a2);
      result = sub_58BBC(a2);
      if (result != v12)
      {
        v13 = *(v12 + 23);
        if (*(result + 23) < 0)
        {
          if (v13 >= 0)
          {
            v22 = v12;
          }

          else
          {
            v22 = *v12;
          }

          if (v13 >= 0)
          {
            v23 = *(v12 + 23);
          }

          else
          {
            v23 = *(v12 + 8);
          }

          return sub_13B38(result, v22, v23);
        }

        else if ((*(v12 + 23) & 0x80) != 0)
        {
          v26 = *v12;
          v27 = *(v12 + 8);

          return sub_13A68(result, v26, v27);
        }

        else
        {
          v14 = *v12;
          *(result + 16) = *(v12 + 16);
          *result = v14;
        }
      }
    }

    else
    {
      v15 = sub_45AC50(a2);
      sub_49EA74(&v32, v15);
      v16 = sub_F63FF4(a2);
      if (v16 >= 2)
      {
        for (i = 1; i != v16; ++i)
        {
          v18 = sub_F63CBC(a2, i);
          sub_F6DDE0(&v32, v18);
        }
      }

      v19 = sub_58BBC(a2);
      if (&v32 != v19)
      {
        v20 = *(v19 + 23);
        if (SHIBYTE(v33) < 0)
        {
          if (v20 >= 0)
          {
            v24 = v19;
          }

          else
          {
            v24 = *v19;
          }

          if (v20 >= 0)
          {
            v25 = *(v19 + 23);
          }

          else
          {
            v25 = *(v19 + 8);
          }

          sub_13B38(&v32, v24, v25);
        }

        else if ((*(v19 + 23) & 0x80) != 0)
        {
          sub_13A68(&v32, *v19, *(v19 + 8));
        }

        else
        {
          v21 = *v19;
          v33 = *(v19 + 16);
          v32 = v21;
        }
      }

      sub_11759C0(a1, &v32, a3, a4, a5);
      v28 = sub_58BBC(a2);
      if (v28 != &v32)
      {
        if (*(v28 + 23) < 0)
        {
          if (v33 >= 0)
          {
            v30 = &v32;
          }

          else
          {
            v30 = v32;
          }

          if (v33 >= 0)
          {
            v31 = HIBYTE(v33);
          }

          else
          {
            v31 = *(&v32 + 1);
          }

          sub_13B38(v28, v30, v31);
        }

        else if (v33 < 0)
        {
          sub_13A68(v28, v32, *(&v32 + 1));
        }

        else
        {
          v29 = v32;
          *(v28 + 16) = v33;
          *v28 = v29;
        }
      }

      return sub_4547F0(&v32);
    }
  }

  return result;
}

void sub_11759C0(int32x2_t *a1, uint64_t a2, int *a3, int a4, uint64_t a5)
{
  v5 = a5;
  v36 = a4;
  v9 = sub_10104F4(a1 + 1, a2, a3, &v36, a5, 0);
  v10 = *(v9 + 1);
  v31 = *v9;
  v32 = v10;
  v34 = 0;
  v35 = 0;
  __p = 0;
  v12 = *(v9 + 4);
  v11 = *(v9 + 5);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  std::ios_base::clear((&a1[1356] + *(*&a1[1356] - 24)), 0);
  v13 = &a1[1367];
  if (a1[1369].i8[7] < 0)
  {
    operator delete(*v13);
  }

  *v13 = 0;
  a1[1368] = 0;
  a1[1369] = 0;
  sub_195CB10(&a1[1359]);
  *(&a1[1358] + *(*&a1[1356] - 24)) = 9;
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v17 = sub_4A5C(&a1[1358], v15, v16);
  v18 = *(a2 + 23);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 8);
  }

  v19 = v18 == 0;
  v20 = v18 != 0;
  if (v19)
  {
    v21 = "";
  }

  else
  {
    v21 = ", ";
  }

  sub_4A5C(v17, v21, 2 * v20);
  v22 = sub_4A5C(&a1[1358], "total_cost: ", 15);
  std::ostream::operator<<();
  sub_4A5C(v22, ",", 1);
  v23 = std::ostream::operator<<();
  sub_4A5C(v23, ",", 1);
  std::ostream::operator<<();
  sub_4A5C(v22, ", ", 3);
  sub_4C35D4(a2, &__dst);
  sub_1175D1C(a1, &__dst, a2, &__p, a3, v36, v5);
  v24 = a1[1371].i32[0];
  if ((v24 & 0x10) != 0)
  {
    v26 = a1[1370];
    v27 = a1[1365];
    if (*&v26 < *&v27)
    {
      a1[1370] = v27;
      v26 = v27;
    }

    v28 = a1[1364];
    v25 = *&v26 - v28;
    if (*&v26 - v28 >= 0x7FFFFFFFFFFFFFF8uLL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v25 = 0;
      HIBYTE(v30) = 0;
      goto LABEL_28;
    }

    v28 = a1[1361];
    v25 = *&a1[1363] - v28;
    if (v25 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_34:
      sub_3244();
    }
  }

  if (v25 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v30) = v25;
  if (v25)
  {
    memmove(&__dst, v28, v25);
  }

LABEL_28:
  *(&__dst + v25) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = __dst;
  *(a2 + 16) = v30;
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }
}

void sub_1175CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1175D1C(void *a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, int a6, int a7)
{
  sub_4A5C(a1 + 1358, "arcs:[", 8);
  v14 = *a2;
  v15 = a2[1] - *a2;
  if (v15)
  {
    v16 = a2[1] - *a2;
    v45 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 5);
    v17 = *(*a4 + 24) - *(*a4 + 8);
    v48 = (*(*a4 + 16) - **a4) | ((*(*a4 + 20) - *(*a4 + 4)) << 32);
    v49 = v17;
    v18 = sub_F6A040(a3);
    if (a6 == 0x7FFFFFFF)
    {
      v19 = v18;
      sub_4A5C(a1 + 1358, "", 0);
      sub_1176060(a1, v14, &v48, v19, a5, 0x7FFFFFFF, a7);
      if (v16 != 96)
      {
        v20 = 0;
        v21 = v45 - 1;
        v22 = 96;
        do
        {
          v23 = *a4 + v20;
          v24 = (*(v23 + 32) - *(v23 + 16));
          v25 = *a2;
          v26 = (*(v23 + 36) - *(v23 + 20));
          v27 = *(v23 + 40) - *(v23 + 24);
          v48 = v24 | (v26 << 32);
          v49 = v27;
          sub_4A5C(a1 + 1358, ",", 1);
          sub_1176060(a1, v22 + v25, &v48, 0x3B9ACA00u, a5, 0x7FFFFFFF, a7);
          v20 += 16;
          v22 += 96;
          --v21;
        }

        while (v21);
      }
    }

    else
    {
      v28 = *(*a4 + 4);
      v44 = v18;
      v29 = v28 / 10;
      v30 = v28 % 10;
      if (v28 < 0)
      {
        v31 = -5;
      }

      else
      {
        v31 = 5;
      }

      v32 = v29 + a6 + (((103 * (v31 + v30)) >> 15) & 1) + ((103 * (v31 + v30)) >> 10);
      v46 = a6;
      v47 = a4;
      sub_4A5C(a1 + 1358, "", 0);
      sub_1176060(a1, v14, &v48, v44, a5, v32, a7);
      if (v16 != 96)
      {
        v33 = 0;
        v34 = v45 - 1;
        v35 = 96;
        do
        {
          v36 = *a2;
          v37 = *v47 + v33;
          v38 = *(v37 + 40) - *(v37 + 24);
          v48 = (*(v37 + 32) - *(v37 + 16)) | ((*(v37 + 36) - *(v37 + 20)) << 32);
          v49 = v38;
          LODWORD(v37) = *(v37 + 20);
          v39 = v37 / 10;
          v40 = v37 % 10;
          if (v37 < 0)
          {
            v41 = -5;
          }

          else
          {
            v41 = 5;
          }

          v42 = v39 + v46 + (((103 * (v41 + v40)) >> 15) & 1) + ((103 * (v41 + v40)) >> 10);
          sub_4A5C(a1 + 1358, ",", 1);
          sub_1176060(a1, v35 + v36, &v48, 0x3B9ACA00u, a5, v42, a7);
          v33 += 16;
          v35 += 96;
          --v34;
        }

        while (v34);
      }
    }
  }

  return sub_4A5C(a1 + 1358, "]", 1);
}

void *sub_1176060(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, signed int a6, int a7)
{
  sub_2B7A20(a1[1391], *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, __p);
  v13 = __p[1];
  if (__p[1] != v38)
  {
    v14 = sub_31AA0C(__p) >> 32;
    v13 = __p[1];
    v15 = v14 * 6.28318531;
    if (!__p[1])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = 2.69860754e10;
  if (__p[1])
  {
LABEL_3:
    *&v38 = v13;
    operator delete(v13);
  }

LABEL_4:
  sub_2B7A20(a1[1391], *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, __p);
  v16 = __p[1];
  if (__p[1] == v38)
  {
    v18 = 2.69860754e10;
    if (!__p[1])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v17 = sub_31A76C(__p) >> 32;
  v16 = __p[1];
  v18 = v17 * 6.28318531;
  if (__p[1])
  {
LABEL_6:
    *&v38 = v16;
    operator delete(v16);
  }

LABEL_7:
  sub_4A5C(a1 + 1358, "{", 1);
  v19 = sub_4A5C(a1 + 1358, "cost:", 8);
  std::ostream::operator<<();
  sub_4A5C(v19, ",", 1);
  v20 = std::ostream::operator<<();
  sub_4A5C(v20, ",", 1);
  std::ostream::operator<<();
  sub_4A5C(v19, ",", 2);
  v21 = sub_4A5C(a1 + 1358, "tail:", 8);
  v22 = sub_30E900(v21, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL);
  sub_4A5C(v22, ",", 2);
  v23 = sub_4A5C(a1 + 1358, "head:", 8);
  v24 = sub_30E900(v23, *(a2 + 72) & 0xFFFFFFFFFFFFFFLL);
  sub_4A5C(v24, ",", 2);
  sub_4A5C(a1 + 1358, "junction_coord:", 18);
  v25 = exp(3.14159265 - v15 / 4294967300.0);
  atan((v25 - 1.0 / v25) * 0.5);
  v26 = std::ostream::operator<<();
  sub_4A5C(v26, ",", 1);
  v27 = std::ostream::operator<<();
  sub_4A5C(v27, ",", 2);
  sub_4A5C(a1 + 1358, "segment_coord:", 17);
  v28 = exp(3.14159265 - v18 / 4294967300.0);
  atan((v28 - 1.0 / v28) * 0.5);
  v29 = std::ostream::operator<<();
  sub_4A5C(v29, ",", 1);
  v30 = std::ostream::operator<<();
  sub_4A5C(v30, ",", 2);
  v51[0] = a6;
  *__p = 0u;
  v38 = 0u;
  __asm { FMOV            V1.2D, #1.0 }

  v39 = _Q1;
  v40 = 0x3FF0000000000000;
  v41 = 1;
  v42 = 0u;
  v43 = 0u;
  v44 = 1065353216;
  v45 = 0u;
  v46 = 0u;
  v47 = 1065353216;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  sub_10B1E88((a1 + 679), __p, a2, a4, a5, v51, a7);
  sub_1176484(a1, __p);
  sub_1178C78(__p);
  return sub_4A5C(a1 + 1358, "}", 1);
}

void sub_117643C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_117645C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1178C78(va);
  _Unwind_Resume(a1);
}

void sub_1176470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1178C78(va);
  _Unwind_Resume(a1);
}

void *sub_1176484(void *a1, uint64_t a2)
{
  sub_4A5C(a1 + 1358, "properties:{", 14);
  v4 = sub_4A5C(a1 + 1358, "SEGMENT_COST_TIME_LENGTH:", 28);
  std::ostream::operator<<();
  sub_4A5C(v4, ",", 1);
  v5 = std::ostream::operator<<();
  sub_4A5C(v5, ",", 1);
  std::ostream::operator<<();
  sub_4A5C(v4, "", 1);
  for (i = *(a2 + 120); i; i = *i)
  {
    sub_1176598(a1, i + 5, (i + 2));
  }

  for (j = *(a2 + 80); j; j = *j)
  {
    sub_1176648(a1, (j + 5), (j + 2));
  }

  return sub_4A5C(a1 + 1358, "}", 1);
}

void *sub_1176598(void *result, double *a2, uint64_t a3)
{
  if (*a2 != 1.0 || a2[1] != 1.0 || a2[2] != 1.0)
  {
    v8 = sub_4A5C(result + 1358, ",", 2);
    v9 = *(a3 + 23);
    if (v9 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    if (v9 >= 0)
    {
      v11 = *(a3 + 23);
    }

    else
    {
      v11 = *(a3 + 8);
    }

    v12 = sub_4A5C(v8, v10, v11);
    v13 = sub_4A5C(v12, ":", 3);
    v14 = sub_70638(v13, a2);

    return sub_4A5C(v14, "", 1);
  }

  return result;
}

void *sub_1176648(void *result, uint64_t a2, uint64_t a3)
{
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 4) == 0;
  }

  if (!v4 || *(a2 + 8) != 0)
  {
    v7 = sub_4A5C(result + 1358, ",", 2);
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (v8 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    v11 = sub_4A5C(v7, v9, v10);
    v12 = sub_4A5C(v11, ":", 3);
    std::ostream::operator<<();
    sub_4A5C(v12, ",", 1);
    v13 = std::ostream::operator<<();
    sub_4A5C(v13, ",", 1);
    std::ostream::operator<<();

    return sub_4A5C(v12, "", 1);
  }

  return result;
}

void *sub_1176734(void *a1, void *a2)
{
  *a1 = a2;
  v4 = (a1 + 11);
  sub_100E954(a1 + 1, a2);
  sub_10AC4E0(v4, a2);
  sub_D7B0((a1 + 20));
  a1[55] = sub_3AF6B4(a2);
  return a1;
}

void sub_1176798(_Unwind_Exception *a1)
{
  sub_DBE4((v1 + 20));
  v3 = v1[17];
  if (v3)
  {
    v1[18] = v3;
    operator delete(v3);
    v4 = v1[8];
    if (!v4)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = v1[8];
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  v1[9] = v4;
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_11767F8(uint64_t a1, char **a2, int *a3, int a4, uint64_t a5)
{
  result = sub_F63D58(a2);
  if ((result & 1) == 0)
  {
    if (sub_F63FF4(a2) == 1)
    {
      v11 = sub_45AC50(a2);
      sub_1176AA4(a1, v11, a3, a4, a5);
      v12 = sub_45AC50(a2);
      result = sub_58BBC(a2);
      if (result != v12)
      {
        v13 = *(v12 + 23);
        if (*(result + 23) < 0)
        {
          if (v13 >= 0)
          {
            v22 = v12;
          }

          else
          {
            v22 = *v12;
          }

          if (v13 >= 0)
          {
            v23 = *(v12 + 23);
          }

          else
          {
            v23 = *(v12 + 8);
          }

          return sub_13B38(result, v22, v23);
        }

        else if ((*(v12 + 23) & 0x80) != 0)
        {
          v26 = *v12;
          v27 = *(v12 + 8);

          return sub_13A68(result, v26, v27);
        }

        else
        {
          v14 = *v12;
          *(result + 16) = *(v12 + 16);
          *result = v14;
        }
      }
    }

    else
    {
      v15 = sub_45AC50(a2);
      sub_49D2CC(&v32, v15);
      v16 = sub_F63FF4(a2);
      if (v16 >= 2)
      {
        for (i = 1; i != v16; ++i)
        {
          v18 = sub_F63CBC(a2, i);
          sub_F6B1A0(&v32, v18);
        }
      }

      v19 = sub_58BBC(a2);
      if (&v32 != v19)
      {
        v20 = *(v19 + 23);
        if (SHIBYTE(v33) < 0)
        {
          if (v20 >= 0)
          {
            v24 = v19;
          }

          else
          {
            v24 = *v19;
          }

          if (v20 >= 0)
          {
            v25 = *(v19 + 23);
          }

          else
          {
            v25 = *(v19 + 8);
          }

          sub_13B38(&v32, v24, v25);
        }

        else if ((*(v19 + 23) & 0x80) != 0)
        {
          sub_13A68(&v32, *v19, *(v19 + 8));
        }

        else
        {
          v21 = *v19;
          v33 = *(v19 + 16);
          v32 = v21;
        }
      }

      sub_1176AA4(a1, &v32, a3, a4, a5);
      v28 = sub_58BBC(a2);
      if (v28 != &v32)
      {
        if (*(v28 + 23) < 0)
        {
          if (v33 >= 0)
          {
            v30 = &v32;
          }

          else
          {
            v30 = v32;
          }

          if (v33 >= 0)
          {
            v31 = HIBYTE(v33);
          }

          else
          {
            v31 = *(&v32 + 1);
          }

          sub_13B38(v28, v30, v31);
        }

        else if (v33 < 0)
        {
          sub_13A68(v28, v32, *(&v32 + 1));
        }

        else
        {
          v29 = v32;
          *(v28 + 16) = v33;
          *v28 = v29;
        }
      }

      return sub_4547F0(&v32);
    }
  }

  return result;
}