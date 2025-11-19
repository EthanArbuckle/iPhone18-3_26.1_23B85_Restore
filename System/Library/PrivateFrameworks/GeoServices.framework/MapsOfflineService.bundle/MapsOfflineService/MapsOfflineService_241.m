void sub_EE33F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_840B0(v9);
  sub_EE3410(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_EE3410(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[10];
      if (v3 != -1)
      {
        (off_2674730[v3])(&v4, v1 + 4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t ***sub_EE3488(uint64_t ***result, char *a2)
{
  v2 = *a2;
  v3 = ***result;
  *(v3 + 16) |= 0x10u;
  *(v3 + 80) = v2;
  return result;
}

uint64_t ***sub_EE34AC(uint64_t ***result, uint64_t *a2)
{
  v2 = *a2;
  v3 = ***result;
  *(v3 + 16) |= 2u;
  *(v3 + 56) = v2;
  return result;
}

uint64_t ***sub_EE34D0(uint64_t ***result, uint64_t *a2)
{
  v2 = *a2;
  v3 = ***result;
  *(v3 + 16) |= 4u;
  *(v3 + 64) = v2;
  return result;
}

double sub_EE34F4(uint64_t ***a1, double *a2)
{
  result = *a2;
  v3 = ***a1;
  *(v3 + 16) |= 8u;
  *(v3 + 72) = result;
  return result;
}

std::string *sub_EE3518(uint64_t ***a1, __int128 *a2)
{
  v2 = ***a1;
  *(v2 + 16) |= 1u;
  v3 = *(v2 + 8);
  v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
  if (v3)
  {
    v4 = *v4;
  }

  return sub_194EA1C((v2 + 48), a2, v4);
}

void *sub_EE3550(void *a1, uint64_t *a2)
{
  v3 = 3735928559;
  v5 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      LOBYTE(v29) = 0;
      v30 = -1;
      v6 = *(v5 + 24);
      if (v6 != -1)
      {
        v32 = &v29;
        (off_2674760[v6])(&v32, v5);
        v30 = v6;
      }

      v7 = sub_83EC8(&v31, &v29);
      if (v30 != -1)
      {
        (off_2674730[v30])(&v32, &v29);
      }

      v3 ^= (v3 << 6) + (v3 >> 2) + v7 + 2654435769;
      v5 += 32;
    }

    while (v5 != v4);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_51;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v3;
    if (v3 >= *&v8)
    {
      v10 = v3 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v3;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_51:
    operator new();
  }

  if (v9.u32[0] >= 2uLL)
  {
    while (1)
    {
      v20 = v12[1];
      if (v20 == v3)
      {
        v22 = v12[2];
        v21 = v12[3];
        v23 = *a2;
        if (v21 - v22 == a2[1] - *a2)
        {
          if (v22 == v21)
          {
            return v12;
          }

          while (1)
          {
            v24 = *(v22 + 24);
            v25 = *(v23 + 24);
            if (v24 != -1 && v25 == v24)
            {
              v29 = &v32;
              if (((off_2674700[v24])(&v29, v22, v23) & 1) == 0)
              {
                break;
              }
            }

            else if (v25 != v24)
            {
              break;
            }

            v22 += 32;
            v23 += 32;
            if (v22 == v21)
            {
              return v12;
            }
          }
        }
      }

      else
      {
        if (v20 >= *&v8)
        {
          v20 %= *&v8;
        }

        if (v20 != v10)
        {
          goto LABEL_51;
        }
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 != v3)
    {
      if ((v13 & (*&v8 - 1)) != v10)
      {
        goto LABEL_51;
      }

      goto LABEL_19;
    }

    v15 = v12[2];
    v14 = v12[3];
    v16 = *a2;
    if (v14 - v15 == a2[1] - *a2)
    {
      break;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_51;
    }
  }

  for (; v15 != v14; v16 += 32)
  {
    v17 = *(v15 + 24);
    v18 = *(v16 + 24);
    if (v17 != -1 && v18 == v17)
    {
      v29 = &v32;
      if (((off_2674700[v17])(&v29, v15, v16) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v18 != v17)
    {
      goto LABEL_19;
    }

    v15 += 32;
  }

  return v12;
}

void sub_EE3A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_EE3A94(va);
  _Unwind_Resume(a1);
}

void sub_EE3A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_EE3A94(va);
  _Unwind_Resume(a1);
}

void sub_EE3A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_840B0(va);
  _Unwind_Resume(a1);
}

void sub_EE3A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_3ED1D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_EE3A94(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[2];
      if (v3)
      {
        v4 = v1[3];
        v5 = v1[2];
        if (v4 != v3)
        {
          do
          {
            v6 = v4 - 32;
            v7 = *(v4 - 8);
            if (v7 != -1)
            {
              (off_2674730[v7])(&v8, v4 - 32);
            }

            *(v4 - 8) = -1;
            v4 -= 32;
          }

          while (v6 != v3);
          v5 = v1[2];
        }

        v1[3] = v3;
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_EE3B64(uint64_t result, char a2, char a3, int a4, int a5)
{
  *result = a2;
  *(result + 1) = a3;
  *(result + 4) = a4;
  *(result + 8) = a5;
  return result;
}

void sub_EE3CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_D329A4((v18 + 1088));
  sub_47FF64(v19);
  _Unwind_Resume(a1);
}

void sub_EE3CDC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_4EE138(a5, 0);
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v9 = sub_68C590(a2);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v12 = sub_68C454(a2, v10);
      v13 = *(v12 + 1104);
      v14 = *(v12 + 1112);
      v15 = v13 + 654;
      if (v13 != v14 && v15 != v14)
      {
        v17 = *v13;
        do
        {
          v18 = v17 >= *v15;
          if (v17 <= *v15)
          {
            v17 = *v15;
          }

          if (!v18)
          {
            v13 = v15;
          }

          v15 += 654;
        }

        while (v15 != v14);
      }

      v19 = *v13;
      v20 = *(a4 + 8);
      if (v10 >= 0x8E38E38E38E38E39 * ((*(a4 + 16) - v20) >> 3))
      {
        v62 = 0;
        v60 = 0u;
        *v61 = 0u;
        *__p = 0u;
        *v59 = 0u;
      }

      else
      {
        sub_D3797C(__p, v20 + 72 * v10);
      }

      sub_EE433C(a1, v12, __p, &v63);
      v21 = v76;
      if (v76 >= v77)
      {
        v76 = sub_4FA044(&v75, &v63);
        if (v73)
        {
          *(&v73 + 1) = v73;
          operator delete(v73);
        }
      }

      else
      {
        v22 = v63;
        *(v76 + 24) = 0;
        *(v21 + 32) = 0;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *v21 = v22;
        *(v21 + 8) = *v64;
        *(v21 + 24) = v65;
        v64[0] = 0;
        v64[1] = 0;
        *(v21 + 40) = 0;
        *(v21 + 48) = 0;
        *(v21 + 32) = *v66;
        *(v21 + 48) = v67;
        v65 = 0;
        v66[0] = 0;
        v66[1] = 0;
        v67 = 0;
        v23 = v68;
        *(v21 + 72) = v69;
        *(v21 + 80) = 0;
        *(v21 + 56) = v23;
        v68 = 0uLL;
        *(v21 + 88) = 0;
        *(v21 + 96) = 0;
        *(v21 + 80) = *v70;
        *(v21 + 96) = v71;
        v69 = 0;
        v70[0] = 0;
        v70[1] = 0;
        v71 = 0;
        *(v21 + 104) = v72;
        *(v21 + 120) = 0;
        *(v21 + 128) = 0;
        *(v21 + 136) = 0;
        *(v21 + 120) = v73;
        *(v21 + 136) = v74;
        v73 = 0uLL;
        v74 = 0;
        v76 = v21 + 144;
      }

      v24 = v70[0];
      if (v70[0])
      {
        v25 = v70[1];
        v26 = v70[0];
        if (v70[1] != v70[0])
        {
          do
          {
            v27 = *(v25 - 6);
            if (v27)
            {
              *(v25 - 5) = v27;
              operator delete(v27);
            }

            v28 = (v25 - 80);
            if (*(v25 - 57) < 0)
            {
              operator delete(*v28);
            }

            v25 -= 80;
          }

          while (v28 != v24);
          v26 = v70[0];
        }

        v70[1] = v24;
        operator delete(v26);
      }

      if ((SHIBYTE(v69) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(v68);
      v29 = v66[0];
      if (v66[0])
      {
        goto LABEL_35;
      }

LABEL_36:
      if (v64[0])
      {
        v64[1] = v64[0];
        operator delete(v64[0]);
      }

      if (SHIBYTE(v62) < 0)
      {
        operator delete(v61[0]);
        v30 = v59[1];
        if (!v59[1])
        {
          goto LABEL_41;
        }

LABEL_40:
        *&v60 = v30;
        operator delete(v30);
        goto LABEL_41;
      }

      v30 = v59[1];
      if (v59[1])
      {
        goto LABEL_40;
      }

LABEL_41:
      v31 = __p[0];
      if (__p[0])
      {
        v32 = __p[1];
        v11 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v33 = *(v32 - 6);
            if (v33)
            {
              *(v32 - 5) = v33;
              operator delete(v33);
            }

            v34 = (v32 - 80);
            if (*(v32 - 57) < 0)
            {
              operator delete(*v34);
            }

            v32 -= 80;
          }

          while (v34 != v31);
          v11 = __p[0];
        }

        __p[1] = v31;
        operator delete(v11);
      }

      if (++v10 == v9)
      {
        goto LABEL_55;
      }
    }

    v29 = v66[0];
    if (!v66[0])
    {
      goto LABEL_36;
    }

LABEL_35:
    v66[1] = v29;
    operator delete(v29);
    goto LABEL_36;
  }

  v19 = 0;
LABEL_55:
  if (sub_68D7F4(a2) == 1)
  {
    v35 = *a3;
  }

  else
  {
    v35 = sub_68D7F4(a2);
  }

  v36 = sub_EE24F4(*a1);
  if (sub_68D7F4(a2) == 1)
  {
    v37 = *(a3 + 1);
  }

  else
  {
    v37 = v36;
  }

  v38 = sub_68D828(a2, 4);
  v39 = sub_68D828(a2, 5);
  v40 = sub_68D828(a2, 10);
  v41 = sub_68D828(a2, 2);
  v42 = v38 ^ 1u;
  if (!v39)
  {
    v42 |= 2uLL;
  }

  if (!v40)
  {
    v42 |= 4uLL;
  }

  if (v41)
  {
    v43 = v42;
  }

  else
  {
    v43 = v42 | 8;
  }

  __p[0] = 0;
  __p[1] = 0;
  v59[0] = 0;
  v44 = sub_68DB24(a2);
  v46 = *(a3 + 4);
  v45 = *(a3 + 8);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v47 = sub_73EC4(a2);
  sub_4F9688(&v63, v44, v35, v43, v36, v37, v46, v45, 0, &v55, v47, &v75, __p);
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  sub_4ECBD0(a5, &v63, v19);
  if (v72)
  {
    *(&v72 + 1) = v72;
    operator delete(v72);
  }

  v48 = v69;
  if (v69)
  {
    v49 = v70[0];
    v50 = v69;
    if (v70[0] != v69)
    {
      do
      {
        v49 = sub_4F0FB4(v49 - 144);
      }

      while (v49 != v48);
      v50 = v69;
    }

    v70[0] = v48;
    operator delete(v50);
  }

  if (v65)
  {
    v66[0] = v65;
    operator delete(v65);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v51 = v75;
  if (v75)
  {
    v52 = v76;
    v53 = v75;
    if (v76 != v75)
    {
      do
      {
        v52 = sub_4F0FB4(v52 - 144);
      }

      while (v52 != v51);
      v53 = v75;
    }

    v76 = v51;
    operator delete(v53);
  }
}

void sub_EE41FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_4EC1C8(&a29);
  if (!__p)
  {
    sub_4F0F58((v29 - 112));
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_4F0F58((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_EE42E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_4F0FB4(&a29);
  sub_4F39FC(&a19);
  sub_4F0F58((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_EE4320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_4F39FC(va);
  sub_4F0F58((v11 - 112));
  _Unwind_Resume(a1);
}

void sub_EE433C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_EE48BC(a1, a2, v16);
  sub_EE4AE8(a1, a2, __p);
  v8 = *(a2 + 10176);
  if (v8 == *(a2 + 10184))
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = sub_69B32C(a2);
    v10 = *(v8 + 8);
    v11 = v9 - v10;
    v12 = *(v8 + 16) - v10;
  }

  *&v14 = v11;
  *(&v14 + 1) = v12;
  v13 = sub_4D1DB8(a2);
  sub_4F8F24(a4, v13, v16, __p, a3, &v14, a3 + 3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }
}

void sub_EE440C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_EE4458(uint64_t a1, unsigned int ***a2, unsigned int a3, uint64_t *a4, unsigned __int8 *a5, int **a6, __n128 *a7)
{
  v7 = a7;
  v11 = 0;
  v12 = 0x7FFFFFFF;
  v13 = 8;
  if (a3 > 0xD)
  {
    v14 = 0x7FFFFFFFLL;
    v39 = a3;
    v18 = *a2;
    v17 = a2[1];
    if (*a2 != v17)
    {
LABEL_8:
      v41 = v12;
      v40 = v17;
      do
      {
        v43[0] = v13;
        v43[1] = v11;
        v44 = v12;
        v45 = v14;
        if (v13 == 8)
        {
          if (sub_68D7F4(v18) == 1)
          {
            v43[0] = 0;
            if (v44 != 0x7FFFFFFF)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v43[0] = sub_68D7F4(v18);
            if (v44 != 0x7FFFFFFF)
            {
LABEL_15:
              if (sub_68D058(v18))
              {
                goto LABEL_33;
              }

              goto LABEL_38;
            }
          }
        }

        else if (v12 != 0x7FFFFFFF)
        {
          goto LABEL_15;
        }

        v20 = v13;
        v21 = a6;
        v22 = v14;
        v23 = v7;
        v24 = sub_68C850(v18);
        v25 = sub_68C850(*a2);
        if (!sub_68F890(*a2) || v43[0])
        {
          v28 = (v24 - v25) & ~((v24 - v25) >> 31);
          v7 = v23;
          v14 = v22;
          goto LABEL_32;
        }

        v26 = *(a1 + 2496) * v25;
        if (v26 >= 0.0)
        {
          v7 = v23;
          if (v26 >= 4.50359963e15)
          {
            goto LABEL_30;
          }

          v27 = (v26 + v26) + 1;
        }

        else
        {
          v7 = v23;
          if (v26 <= -4.50359963e15)
          {
            goto LABEL_30;
          }

          v27 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
        }

        v26 = (v27 >> 1);
LABEL_30:
        v14 = v22;
        v28 = v26;
        if (*(a1 + 2488) > v26)
        {
          v28 = *(a1 + 2488);
        }

LABEL_32:
        a6 = v21;
        v17 = v40;
        v44 = v28;
        v13 = v20;
        v12 = v41;
        if (sub_68D058(v18))
        {
LABEL_33:
          if (v45 == 0x7FFFFFFF)
          {
            sub_68CC00(v18, __p);
            if (sub_4566B4(__p))
            {
              v29 = sub_456698(__p);
            }

            else
            {
              v29 = 0x7FFFFFFF;
            }

            v45 = v29;
          }
        }

LABEL_38:
        v30 = sub_68DB24(v18);
        if (atomic_load_explicit(&qword_2733CF0, memory_order_acquire))
        {
          v31 = *a6;
          v32 = a6[1];
          if (*a6 != v32)
          {
            goto LABEL_40;
          }
        }

        else
        {
          sub_21E5328();
          v31 = *a6;
          v32 = a6[1];
          if (*a6 != v32)
          {
LABEL_40:
            while (*v31 != v30)
            {
              v31 += 8;
              if (v31 == v32)
              {
                v19 = &dword_2733CD0;
                goto LABEL_12;
              }
            }
          }
        }

        if (v31 == v32)
        {
          v19 = &dword_2733CD0;
        }

        else
        {
          v19 = v31;
        }

LABEL_12:
        sub_EE3CDC(a1, v18, v43, v19, v7);
        v18 += 976;
      }

      while (v18 != v17);
    }
  }

  else
  {
    v14 = 0x7FFFFFFFLL;
    if (((1 << a3) & 0x3A82) != 0)
    {
      v15 = nullsub_1(a7);
      if (*(v15 + 128) == 1)
      {
        v16 = v15;
        v13 = sub_4F96B8(v15);
        v11 = sub_4F96C8(v16);
        v12 = sub_4F96D0(v16);
        v14 = sub_4F96D8(v16);
      }

      else
      {
        v11 = 0;
      }

      sub_4EC9D4(v7, __p);
      sub_D16C58(v7, __p);
      sub_5287C0(__p);
    }

    v39 = a3;
    v18 = *a2;
    v17 = a2[1];
    if (*a2 != v17)
    {
      goto LABEL_8;
    }
  }

  sub_4EE138(v7, 0);
  v33 = sub_74700();
  if (v39 <= 0xD)
  {
    if (((1 << v39) & 0x3C19) != 0)
    {
      v34 = sub_73EC4(v33);
      sub_4EC868(v7, v34);
      sub_4EC87C(v7, a4);
    }

    else if (((1 << v39) & 0x60) != 0)
    {
      sub_4EC760(v7, 1);
    }
  }

  sub_4EC810(v7, a5);
  result = sub_3CF23C(v7);
  v36 = *(result + 23);
  if ((v36 & 0x80u) != 0)
  {
    v36 = *(result + 8);
  }

  if (v39 == 1 || !v36)
  {
    sub_3E9608();
  }

  return result;
}

void sub_EE4898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EE48BC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 1104);
  v5 = *(a2 + 1112);
  if (v4 == v5 || *(*(a1 + 2480) + 3) == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = (v5 - v4) >> 3;
  v7 = 0x3795876FF3795877 * v6 - 1;
  if (0x3795876FF3795877 * v6 != 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1008;
    v19 = a3;
    do
    {
      v10 += *(*(a2 + 1104) + v11);
      if (sub_4D1DB8(a2) >= v10)
      {
        v12 = sub_4D1DB8(a2) - v10;
        a3 = v19;
        v13 = v19[2];
        if (v9 >= v13)
        {
LABEL_12:
          v14 = v9;
          v15 = v9 >> 3;
          v16 = v15 + 1;
          if ((v15 + 1) >> 61)
          {
            *v19 = 0;
            sub_1794();
          }

          if (v13 >> 2 > v16)
          {
            v16 = v13 >> 2;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            if (!(v17 >> 61))
            {
              operator new();
            }

            *v19 = 0;
            sub_1808();
          }

          v18 = (8 * v15);
          *v18 = v12;
          v9 = (v18 + 1);
          memcpy(0, 0, v14);
          a3 = v19;
          v19[1] = v9;
          v19[2] = 0;
          goto LABEL_7;
        }
      }

      else
      {
        v12 = 0;
        v13 = a3[2];
        if (v9 >= v13)
        {
          goto LABEL_12;
        }
      }

      *v9 = v12;
      v9 += 8;
LABEL_7:
      a3[1] = v9;
      v11 += 2616;
      --v7;
    }

    while (v7);
  }

  *a3 = 0;
}

void sub_EE4AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = v10;
  if (v10)
  {
    a10[1] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EE4AE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if ((*(*(result + 2480) + 3) & 1) == 0)
  {
    sub_47A6A8((result + 1088), a2, 0, v22);
    if (v24)
    {
      v4 = (v24 + 8);
    }

    else
    {
      v4 = 0;
    }

    if (v23)
    {
      v5 = 8 * v23;
      do
      {
        v6 = *v4;
        if (*(*v4 + 32))
        {
          v7 = *(*v4 + 32);
        }

        else
        {
          v7 = &off_2734B00;
        }

        v8 = *(v7 + 7);
        v9 = v8 / 10000000.0;
        v10 = -1;
        if (v8 / 10000000.0 <= 180.0)
        {
          v8 = *(v7 + 6) / 10000000.0;
          if (fabs(v8) <= 85.0511288 && v9 >= -180.0)
          {
            v11 = sin(fmin(fmax(v8, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
            LODWORD(v12) = ((log((v11 + 1.0) / (1.0 - v11)) / -12.5663706 + 0.5) * 4294967300.0);
            if (v12 >= 0xFFFFFFFE)
            {
              v12 = 4294967294;
            }

            else
            {
              v12 = v12;
            }

            v8 = (v9 + 180.0) / 360.0 * 4294967300.0;
            v10 = v8 | (v12 << 32);
          }
        }

        v20 = v10;
        v21 = 0x7FFFFFFF;
        LODWORD(v8) = *(v6 + 60);
        v13 = llround(*&v8 * 100.0) % 36000;
        if (v13 > 0xFFFF735F)
        {
          LOWORD(v13) = v13 - 29536;
        }

        v19 = v13;
        v18 = *(v6 + 48);
        v14 = *(v6 + 64);
        v16 = *(v6 + 68);
        v17 = v14;
        v15 = 0;
        sub_EE7BB0(a3, &v18, &v20, &v19, &v17, &v16, &v15);
        ++v4;
        v5 -= 8;
      }

      while (v5);
    }

    return sub_1218EBC(v22);
  }

  return result;
}

void sub_EE4D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1218EBC(va);
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_EE4D84(_DWORD *a1, void *a2)
{
  *a1 = 0x7FFFFFFF;
  v3 = 20;
  strcpy(__p, "familiar_route_logic");
  sub_5F5AC(a2, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_EE4EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EE5030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_D32888((v18 + 1088));
  sub_47FADC(v19);
  _Unwind_Resume(a1);
}

void sub_EE5068(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_4EE138(a5, 3);
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v9 = sub_68C590(a2);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v12 = sub_68C454(a2, v10);
      v13 = *(v12 + 1104);
      v14 = *(v12 + 1112);
      v15 = v13 + 654;
      if (v13 != v14 && v15 != v14)
      {
        v17 = *v13;
        do
        {
          v18 = v17 >= *v15;
          if (v17 <= *v15)
          {
            v17 = *v15;
          }

          if (!v18)
          {
            v13 = v15;
          }

          v15 += 654;
        }

        while (v15 != v14);
      }

      v19 = *v13;
      v20 = *(a4 + 8);
      if (v10 >= 0x8E38E38E38E38E39 * ((*(a4 + 16) - v20) >> 3))
      {
        v62 = 0;
        v60 = 0u;
        *v61 = 0u;
        *__p = 0u;
        *v59 = 0u;
      }

      else
      {
        sub_D3797C(__p, v20 + 72 * v10);
      }

      sub_EE56C8(a1, v12, __p, &v63);
      v21 = v76;
      if (v76 >= v77)
      {
        v76 = sub_4FA044(&v75, &v63);
        if (v73)
        {
          *(&v73 + 1) = v73;
          operator delete(v73);
        }
      }

      else
      {
        v22 = v63;
        *(v76 + 24) = 0;
        *(v21 + 32) = 0;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *v21 = v22;
        *(v21 + 8) = *v64;
        *(v21 + 24) = v65;
        v64[0] = 0;
        v64[1] = 0;
        *(v21 + 40) = 0;
        *(v21 + 48) = 0;
        *(v21 + 32) = *v66;
        *(v21 + 48) = v67;
        v65 = 0;
        v66[0] = 0;
        v66[1] = 0;
        v67 = 0;
        v23 = v68;
        *(v21 + 72) = v69;
        *(v21 + 80) = 0;
        *(v21 + 56) = v23;
        v68 = 0uLL;
        *(v21 + 88) = 0;
        *(v21 + 96) = 0;
        *(v21 + 80) = *v70;
        *(v21 + 96) = v71;
        v69 = 0;
        v70[0] = 0;
        v70[1] = 0;
        v71 = 0;
        *(v21 + 104) = v72;
        *(v21 + 120) = 0;
        *(v21 + 128) = 0;
        *(v21 + 136) = 0;
        *(v21 + 120) = v73;
        *(v21 + 136) = v74;
        v73 = 0uLL;
        v74 = 0;
        v76 = v21 + 144;
      }

      v24 = v70[0];
      if (v70[0])
      {
        v25 = v70[1];
        v26 = v70[0];
        if (v70[1] != v70[0])
        {
          do
          {
            v27 = *(v25 - 6);
            if (v27)
            {
              *(v25 - 5) = v27;
              operator delete(v27);
            }

            v28 = (v25 - 80);
            if (*(v25 - 57) < 0)
            {
              operator delete(*v28);
            }

            v25 -= 80;
          }

          while (v28 != v24);
          v26 = v70[0];
        }

        v70[1] = v24;
        operator delete(v26);
      }

      if ((SHIBYTE(v69) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(v68);
      v29 = v66[0];
      if (v66[0])
      {
        goto LABEL_35;
      }

LABEL_36:
      if (v64[0])
      {
        v64[1] = v64[0];
        operator delete(v64[0]);
      }

      if (SHIBYTE(v62) < 0)
      {
        operator delete(v61[0]);
        v30 = v59[1];
        if (!v59[1])
        {
          goto LABEL_41;
        }

LABEL_40:
        *&v60 = v30;
        operator delete(v30);
        goto LABEL_41;
      }

      v30 = v59[1];
      if (v59[1])
      {
        goto LABEL_40;
      }

LABEL_41:
      v31 = __p[0];
      if (__p[0])
      {
        v32 = __p[1];
        v11 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v33 = *(v32 - 6);
            if (v33)
            {
              *(v32 - 5) = v33;
              operator delete(v33);
            }

            v34 = (v32 - 80);
            if (*(v32 - 57) < 0)
            {
              operator delete(*v34);
            }

            v32 -= 80;
          }

          while (v34 != v31);
          v11 = __p[0];
        }

        __p[1] = v31;
        operator delete(v11);
      }

      if (++v10 == v9)
      {
        goto LABEL_55;
      }
    }

    v29 = v66[0];
    if (!v66[0])
    {
      goto LABEL_36;
    }

LABEL_35:
    v66[1] = v29;
    operator delete(v29);
    goto LABEL_36;
  }

  v19 = 0;
LABEL_55:
  if (sub_68D7F4(a2) == 1)
  {
    v35 = *a3;
  }

  else
  {
    v35 = sub_68D7F4(a2);
  }

  v36 = sub_EE24F4(*a1);
  if (sub_68D7F4(a2) == 1)
  {
    v37 = *(a3 + 1);
  }

  else
  {
    v37 = v36;
  }

  v38 = sub_68D828(a2, 4);
  v39 = sub_68D828(a2, 5);
  v40 = sub_68D828(a2, 10);
  v41 = sub_68D828(a2, 2);
  v42 = v38 ^ 1u;
  if (!v39)
  {
    v42 |= 2uLL;
  }

  if (!v40)
  {
    v42 |= 4uLL;
  }

  if (v41)
  {
    v43 = v42;
  }

  else
  {
    v43 = v42 | 8;
  }

  __p[0] = 0;
  __p[1] = 0;
  v59[0] = 0;
  v44 = sub_68DB24(a2);
  v46 = *(a3 + 4);
  v45 = *(a3 + 8);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v47 = sub_73EC4(a2);
  sub_4F9688(&v63, v44, v35, v43, v36, v37, v46, v45, 0, &v55, v47, &v75, __p);
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  sub_4ECBD0(a5, &v63, v19);
  if (v72)
  {
    *(&v72 + 1) = v72;
    operator delete(v72);
  }

  v48 = v69;
  if (v69)
  {
    v49 = v70[0];
    v50 = v69;
    if (v70[0] != v69)
    {
      do
      {
        v49 = sub_4F0FB4(v49 - 144);
      }

      while (v49 != v48);
      v50 = v69;
    }

    v70[0] = v48;
    operator delete(v50);
  }

  if (v65)
  {
    v66[0] = v65;
    operator delete(v65);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v51 = v75;
  if (v75)
  {
    v52 = v76;
    v53 = v75;
    if (v76 != v75)
    {
      do
      {
        v52 = sub_4F0FB4(v52 - 144);
      }

      while (v52 != v51);
      v53 = v75;
    }

    v76 = v51;
    operator delete(v53);
  }
}

void sub_EE5588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_4EC1C8(&a29);
  if (!__p)
  {
    sub_4F0F58((v29 - 112));
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_4F0F58((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_EE5674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_4F0FB4(&a29);
  sub_4F39FC(&a19);
  sub_4F0F58((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_EE56AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_4F39FC(va);
  sub_4F0F58((v11 - 112));
  _Unwind_Resume(a1);
}

void sub_EE56C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_EE5BD0(a1, a2, v16);
  sub_EE5DFC(a1, a2, __p);
  v8 = *(a2 + 10176);
  if (v8 == *(a2 + 10184))
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = sub_69B32C(a2);
    v10 = *(v8 + 8);
    v11 = v9 - v10;
    v12 = *(v8 + 16) - v10;
  }

  *&v14 = v11;
  *(&v14 + 1) = v12;
  v13 = sub_4D1DB8(a2);
  sub_4F8F24(a4, v13, v16, __p, a3, &v14, a3 + 3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }
}

void sub_EE5798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_EE57E4(uint64_t a1, unsigned int ***a2, unsigned int a3, uint64_t *a4, unsigned __int8 *a5, int **a6, __n128 *a7)
{
  v7 = a7;
  v10 = 0;
  v11 = 0x7FFFFFFF;
  v12 = 8;
  if (a3 > 0xD)
  {
    v13 = 0x7FFFFFFF;
    v16 = *a2;
    v17 = a2[1];
    if (*a2 != v17)
    {
LABEL_8:
      v38 = v11;
      v37 = v17;
      do
      {
        v40[0] = v12;
        v40[1] = v10;
        v41 = v11;
        v42 = v13;
        if (v12 == 8)
        {
          if (sub_68D7F4(v16) == 1)
          {
            v40[0] = 0;
            if (v41 != 0x7FFFFFFF)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v40[0] = sub_68D7F4(v16);
            if (v41 != 0x7FFFFFFF)
            {
LABEL_15:
              if (sub_6905BC(v16))
              {
                goto LABEL_33;
              }

              goto LABEL_38;
            }
          }
        }

        else if (v11 != 0x7FFFFFFF)
        {
          goto LABEL_15;
        }

        v19 = v12;
        v20 = v10;
        v21 = v7;
        v22 = sub_68C850(v16);
        v23 = sub_68C850(*a2);
        if (!sub_68F890(*a2) || v40[0])
        {
          v26 = (v22 - v23) & ~((v22 - v23) >> 31);
          v7 = v21;
          v10 = v20;
          goto LABEL_32;
        }

        v24 = *(a1 + 2496) * v23;
        if (v24 >= 0.0)
        {
          v7 = v21;
          if (v24 >= 4.50359963e15)
          {
            goto LABEL_30;
          }

          v25 = (v24 + v24) + 1;
        }

        else
        {
          v7 = v21;
          if (v24 <= -4.50359963e15)
          {
            goto LABEL_30;
          }

          v25 = (v24 + v24) - 1 + (((v24 + v24) - 1) >> 63);
        }

        v24 = (v25 >> 1);
LABEL_30:
        v10 = v20;
        v26 = v24;
        if (*(a1 + 2488) > v24)
        {
          v26 = *(a1 + 2488);
        }

LABEL_32:
        v12 = v19;
        v41 = v26;
        v11 = v38;
        v17 = v37;
        if (sub_6905BC(v16))
        {
LABEL_33:
          if (v42 == 0x7FFFFFFF)
          {
            sub_690164(v16, v43);
            if (sub_4566B4(v43))
            {
              v27 = sub_456698(v43);
            }

            else
            {
              v27 = 0x7FFFFFFF;
            }

            v42 = v27;
          }
        }

LABEL_38:
        v28 = sub_68DB24(v16);
        if (atomic_load_explicit(&qword_2733CF0, memory_order_acquire))
        {
          v29 = *a6;
          v30 = a6[1];
          if (*a6 != v30)
          {
            goto LABEL_40;
          }
        }

        else
        {
          sub_21E5328();
          v29 = *a6;
          v30 = a6[1];
          if (*a6 != v30)
          {
LABEL_40:
            while (*v29 != v28)
            {
              v29 += 8;
              if (v29 == v30)
              {
                v18 = &dword_2733CD0;
                goto LABEL_12;
              }
            }
          }
        }

        if (v29 == v30)
        {
          v18 = &dword_2733CD0;
        }

        else
        {
          v18 = v29;
        }

LABEL_12:
        sub_EE5068(a1, v16, v40, v18, v7);
        v16 += 976;
      }

      while (v16 != v17);
    }
  }

  else
  {
    v13 = 0x7FFFFFFF;
    if (((1 << a3) & 0x3A82) != 0)
    {
      v14 = nullsub_1(a7);
      if (*(v14 + 128) == 1)
      {
        v15 = v14;
        v12 = sub_4F96B8(v14);
        v10 = sub_4F96C8(v15);
        v11 = sub_4F96D0(v15);
        v13 = sub_4F96D8(v15);
      }

      else
      {
        v10 = 0;
      }

      sub_4EC9D4(v7, v43);
      sub_D16C58(v7, v43);
      sub_5287C0(v43);
    }

    v16 = *a2;
    v17 = a2[1];
    if (*a2 != v17)
    {
      goto LABEL_8;
    }
  }

  sub_4EE138(v7, 3);
  v31 = sub_74700();
  if (a3 <= 0xD)
  {
    if (((1 << a3) & 0x3C19) != 0)
    {
      v32 = sub_73EC4(v31);
      sub_4EC868(v7, v32);
      sub_4EC87C(v7, a4);
    }

    else if (((1 << a3) & 0x60) != 0)
    {
      sub_4EC760(v7, 1);
    }
  }

  return sub_4EC810(v7, a5);
}

void sub_EE5BD0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 1104);
  v5 = *(a2 + 1112);
  if (v4 == v5 || *(*(a1 + 2480) + 3) == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = (v5 - v4) >> 3;
  v7 = 0x3795876FF3795877 * v6 - 1;
  if (0x3795876FF3795877 * v6 != 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1008;
    v19 = a3;
    do
    {
      v10 += *(*(a2 + 1104) + v11);
      if (sub_4D1DB8(a2) >= v10)
      {
        v12 = sub_4D1DB8(a2) - v10;
        a3 = v19;
        v13 = v19[2];
        if (v9 >= v13)
        {
LABEL_12:
          v14 = v9;
          v15 = v9 >> 3;
          v16 = v15 + 1;
          if ((v15 + 1) >> 61)
          {
            *v19 = 0;
            sub_1794();
          }

          if (v13 >> 2 > v16)
          {
            v16 = v13 >> 2;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            if (!(v17 >> 61))
            {
              operator new();
            }

            *v19 = 0;
            sub_1808();
          }

          v18 = (8 * v15);
          *v18 = v12;
          v9 = (v18 + 1);
          memcpy(0, 0, v14);
          a3 = v19;
          v19[1] = v9;
          v19[2] = 0;
          goto LABEL_7;
        }
      }

      else
      {
        v12 = 0;
        v13 = a3[2];
        if (v9 >= v13)
        {
          goto LABEL_12;
        }
      }

      *v9 = v12;
      v9 += 8;
LABEL_7:
      a3[1] = v9;
      v11 += 2616;
      --v7;
    }

    while (v7);
  }

  *a3 = 0;
}

void sub_EE5DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = v10;
  if (v10)
  {
    a10[1] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EE5DFC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if ((*(*(result + 2480) + 3) & 1) == 0)
  {
    sub_477DA4((result + 1088), a2, 0, v22);
    if (v24)
    {
      v4 = (v24 + 8);
    }

    else
    {
      v4 = 0;
    }

    if (v23)
    {
      v5 = 8 * v23;
      do
      {
        v6 = *v4;
        if (*(*v4 + 32))
        {
          v7 = *(*v4 + 32);
        }

        else
        {
          v7 = &off_2734B00;
        }

        v8 = *(v7 + 7);
        v9 = v8 / 10000000.0;
        v10 = -1;
        if (v8 / 10000000.0 <= 180.0)
        {
          v8 = *(v7 + 6) / 10000000.0;
          if (fabs(v8) <= 85.0511288 && v9 >= -180.0)
          {
            v11 = sin(fmin(fmax(v8, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
            LODWORD(v12) = ((log((v11 + 1.0) / (1.0 - v11)) / -12.5663706 + 0.5) * 4294967300.0);
            if (v12 >= 0xFFFFFFFE)
            {
              v12 = 4294967294;
            }

            else
            {
              v12 = v12;
            }

            v8 = (v9 + 180.0) / 360.0 * 4294967300.0;
            v10 = v8 | (v12 << 32);
          }
        }

        v20 = v10;
        v21 = 0x7FFFFFFF;
        LODWORD(v8) = *(v6 + 60);
        v13 = llround(*&v8 * 100.0) % 36000;
        if (v13 > 0xFFFF735F)
        {
          LOWORD(v13) = v13 - 29536;
        }

        v19 = v13;
        v18 = *(v6 + 48);
        v14 = *(v6 + 64);
        v16 = *(v6 + 68);
        v17 = v14;
        v15 = 0;
        sub_EE7BB0(a3, &v18, &v20, &v19, &v17, &v16, &v15);
        ++v4;
        v5 -= 8;
      }

      while (v5);
    }

    return sub_1218EBC(v22);
  }

  return result;
}

void sub_EE6074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1218EBC(va);
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_EE6098(_DWORD *a1, void *a2)
{
  *a1 = 0x7FFFFFFF;
  v3 = 20;
  strcpy(__p, "familiar_route_logic");
  sub_5F5AC(a2, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_EE61F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EE6344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_D32AC0((v18 + 1088));
  sub_480074(v19);
  _Unwind_Resume(a1);
}

void sub_EE637C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_4EE138(a5, 2);
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v9 = sub_68C590(a2);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v12 = sub_68C454(a2, v10);
      v13 = *(v12 + 1104);
      v14 = *(v12 + 1112);
      v15 = v13 + 654;
      if (v13 != v14 && v15 != v14)
      {
        v17 = *v13;
        do
        {
          v18 = v17 >= *v15;
          if (v17 <= *v15)
          {
            v17 = *v15;
          }

          if (!v18)
          {
            v13 = v15;
          }

          v15 += 654;
        }

        while (v15 != v14);
      }

      v19 = *v13;
      v20 = *(a4 + 8);
      if (v10 >= 0x8E38E38E38E38E39 * ((*(a4 + 16) - v20) >> 3))
      {
        v62 = 0;
        v60 = 0u;
        *v61 = 0u;
        *__p = 0u;
        *v59 = 0u;
      }

      else
      {
        sub_D3797C(__p, v20 + 72 * v10);
      }

      sub_EE69DC(a1, v12, __p, &v63);
      v21 = v76;
      if (v76 >= v77)
      {
        v76 = sub_4FA044(&v75, &v63);
        if (v73)
        {
          *(&v73 + 1) = v73;
          operator delete(v73);
        }
      }

      else
      {
        v22 = v63;
        *(v76 + 24) = 0;
        *(v21 + 32) = 0;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *v21 = v22;
        *(v21 + 8) = *v64;
        *(v21 + 24) = v65;
        v64[0] = 0;
        v64[1] = 0;
        *(v21 + 40) = 0;
        *(v21 + 48) = 0;
        *(v21 + 32) = *v66;
        *(v21 + 48) = v67;
        v65 = 0;
        v66[0] = 0;
        v66[1] = 0;
        v67 = 0;
        v23 = v68;
        *(v21 + 72) = v69;
        *(v21 + 80) = 0;
        *(v21 + 56) = v23;
        v68 = 0uLL;
        *(v21 + 88) = 0;
        *(v21 + 96) = 0;
        *(v21 + 80) = *v70;
        *(v21 + 96) = v71;
        v69 = 0;
        v70[0] = 0;
        v70[1] = 0;
        v71 = 0;
        *(v21 + 104) = v72;
        *(v21 + 120) = 0;
        *(v21 + 128) = 0;
        *(v21 + 136) = 0;
        *(v21 + 120) = v73;
        *(v21 + 136) = v74;
        v73 = 0uLL;
        v74 = 0;
        v76 = v21 + 144;
      }

      v24 = v70[0];
      if (v70[0])
      {
        v25 = v70[1];
        v26 = v70[0];
        if (v70[1] != v70[0])
        {
          do
          {
            v27 = *(v25 - 6);
            if (v27)
            {
              *(v25 - 5) = v27;
              operator delete(v27);
            }

            v28 = (v25 - 80);
            if (*(v25 - 57) < 0)
            {
              operator delete(*v28);
            }

            v25 -= 80;
          }

          while (v28 != v24);
          v26 = v70[0];
        }

        v70[1] = v24;
        operator delete(v26);
      }

      if ((SHIBYTE(v69) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(v68);
      v29 = v66[0];
      if (v66[0])
      {
        goto LABEL_35;
      }

LABEL_36:
      if (v64[0])
      {
        v64[1] = v64[0];
        operator delete(v64[0]);
      }

      if (SHIBYTE(v62) < 0)
      {
        operator delete(v61[0]);
        v30 = v59[1];
        if (!v59[1])
        {
          goto LABEL_41;
        }

LABEL_40:
        *&v60 = v30;
        operator delete(v30);
        goto LABEL_41;
      }

      v30 = v59[1];
      if (v59[1])
      {
        goto LABEL_40;
      }

LABEL_41:
      v31 = __p[0];
      if (__p[0])
      {
        v32 = __p[1];
        v11 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v33 = *(v32 - 6);
            if (v33)
            {
              *(v32 - 5) = v33;
              operator delete(v33);
            }

            v34 = (v32 - 80);
            if (*(v32 - 57) < 0)
            {
              operator delete(*v34);
            }

            v32 -= 80;
          }

          while (v34 != v31);
          v11 = __p[0];
        }

        __p[1] = v31;
        operator delete(v11);
      }

      if (++v10 == v9)
      {
        goto LABEL_55;
      }
    }

    v29 = v66[0];
    if (!v66[0])
    {
      goto LABEL_36;
    }

LABEL_35:
    v66[1] = v29;
    operator delete(v29);
    goto LABEL_36;
  }

  v19 = 0;
LABEL_55:
  if (sub_68D7F4(a2) == 1)
  {
    v35 = *a3;
  }

  else
  {
    v35 = sub_68D7F4(a2);
  }

  v36 = sub_EE24F4(*a1);
  if (sub_68D7F4(a2) == 1)
  {
    v37 = *(a3 + 1);
  }

  else
  {
    v37 = v36;
  }

  v38 = sub_68D828(a2, 4);
  v39 = sub_68D828(a2, 5);
  v40 = sub_68D828(a2, 10);
  v41 = sub_68D828(a2, 2);
  v42 = v38 ^ 1u;
  if (!v39)
  {
    v42 |= 2uLL;
  }

  if (!v40)
  {
    v42 |= 4uLL;
  }

  if (v41)
  {
    v43 = v42;
  }

  else
  {
    v43 = v42 | 8;
  }

  __p[0] = 0;
  __p[1] = 0;
  v59[0] = 0;
  v44 = sub_68DB24(a2);
  v46 = *(a3 + 4);
  v45 = *(a3 + 8);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v47 = sub_73EC4(a2);
  sub_4F9688(&v63, v44, v35, v43, v36, v37, v46, v45, 0, &v55, v47, &v75, __p);
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  sub_4ECBD0(a5, &v63, v19);
  if (v72)
  {
    *(&v72 + 1) = v72;
    operator delete(v72);
  }

  v48 = v69;
  if (v69)
  {
    v49 = v70[0];
    v50 = v69;
    if (v70[0] != v69)
    {
      do
      {
        v49 = sub_4F0FB4(v49 - 144);
      }

      while (v49 != v48);
      v50 = v69;
    }

    v70[0] = v48;
    operator delete(v50);
  }

  if (v65)
  {
    v66[0] = v65;
    operator delete(v65);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v51 = v75;
  if (v75)
  {
    v52 = v76;
    v53 = v75;
    if (v76 != v75)
    {
      do
      {
        v52 = sub_4F0FB4(v52 - 144);
      }

      while (v52 != v51);
      v53 = v75;
    }

    v76 = v51;
    operator delete(v53);
  }
}

void sub_EE689C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_4EC1C8(&a29);
  if (!__p)
  {
    sub_4F0F58((v29 - 112));
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_4F0F58((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_EE6988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_4F0FB4(&a29);
  sub_4F39FC(&a19);
  sub_4F0F58((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_EE69C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_4F39FC(va);
  sub_4F0F58((v11 - 112));
  _Unwind_Resume(a1);
}

void sub_EE69DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_EE6EE4(a1, a2, v16);
  sub_EE7110(a1, a2, __p);
  v8 = *(a2 + 10176);
  if (v8 == *(a2 + 10184))
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = sub_69B32C(a2);
    v10 = *(v8 + 8);
    v11 = v9 - v10;
    v12 = *(v8 + 16) - v10;
  }

  *&v14 = v11;
  *(&v14 + 1) = v12;
  v13 = sub_4D1DB8(a2);
  sub_4F8F24(a4, v13, v16, __p, a3, &v14, a3 + 3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }
}

void sub_EE6AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_EE6AF8(uint64_t a1, unsigned int ***a2, unsigned int a3, uint64_t *a4, unsigned __int8 *a5, int **a6, __n128 *a7)
{
  v7 = a7;
  v10 = 0;
  v11 = 0x7FFFFFFF;
  v12 = 8;
  if (a3 > 0xD)
  {
    v13 = 0x7FFFFFFF;
    v16 = *a2;
    v17 = a2[1];
    if (*a2 != v17)
    {
LABEL_8:
      v38 = v11;
      v37 = v17;
      do
      {
        v40[0] = v12;
        v40[1] = v10;
        v41 = v11;
        v42 = v13;
        if (v12 == 8)
        {
          if (sub_68D7F4(v16) == 1)
          {
            v40[0] = 0;
            if (v41 != 0x7FFFFFFF)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v40[0] = sub_68D7F4(v16);
            if (v41 != 0x7FFFFFFF)
            {
LABEL_15:
              if (sub_6905BC(v16))
              {
                goto LABEL_33;
              }

              goto LABEL_38;
            }
          }
        }

        else if (v11 != 0x7FFFFFFF)
        {
          goto LABEL_15;
        }

        v19 = v12;
        v20 = v10;
        v21 = v7;
        v22 = sub_68C850(v16);
        v23 = sub_68C850(*a2);
        if (!sub_68F890(*a2) || v40[0])
        {
          v26 = (v22 - v23) & ~((v22 - v23) >> 31);
          v7 = v21;
          v10 = v20;
          goto LABEL_32;
        }

        v24 = *(a1 + 2496) * v23;
        if (v24 >= 0.0)
        {
          v7 = v21;
          if (v24 >= 4.50359963e15)
          {
            goto LABEL_30;
          }

          v25 = (v24 + v24) + 1;
        }

        else
        {
          v7 = v21;
          if (v24 <= -4.50359963e15)
          {
            goto LABEL_30;
          }

          v25 = (v24 + v24) - 1 + (((v24 + v24) - 1) >> 63);
        }

        v24 = (v25 >> 1);
LABEL_30:
        v10 = v20;
        v26 = v24;
        if (*(a1 + 2488) > v24)
        {
          v26 = *(a1 + 2488);
        }

LABEL_32:
        v12 = v19;
        v41 = v26;
        v11 = v38;
        v17 = v37;
        if (sub_6905BC(v16))
        {
LABEL_33:
          if (v42 == 0x7FFFFFFF)
          {
            sub_6918C4(v16, v43);
            if (sub_4566B4(v43))
            {
              v27 = sub_456698(v43);
            }

            else
            {
              v27 = 0x7FFFFFFF;
            }

            v42 = v27;
          }
        }

LABEL_38:
        v28 = sub_68DB24(v16);
        if (atomic_load_explicit(&qword_2733CF0, memory_order_acquire))
        {
          v29 = *a6;
          v30 = a6[1];
          if (*a6 != v30)
          {
            goto LABEL_40;
          }
        }

        else
        {
          sub_21E5328();
          v29 = *a6;
          v30 = a6[1];
          if (*a6 != v30)
          {
LABEL_40:
            while (*v29 != v28)
            {
              v29 += 8;
              if (v29 == v30)
              {
                v18 = &dword_2733CD0;
                goto LABEL_12;
              }
            }
          }
        }

        if (v29 == v30)
        {
          v18 = &dword_2733CD0;
        }

        else
        {
          v18 = v29;
        }

LABEL_12:
        sub_EE637C(a1, v16, v40, v18, v7);
        v16 += 976;
      }

      while (v16 != v17);
    }
  }

  else
  {
    v13 = 0x7FFFFFFF;
    if (((1 << a3) & 0x3A82) != 0)
    {
      v14 = nullsub_1(a7);
      if (*(v14 + 128) == 1)
      {
        v15 = v14;
        v12 = sub_4F96B8(v14);
        v10 = sub_4F96C8(v15);
        v11 = sub_4F96D0(v15);
        v13 = sub_4F96D8(v15);
      }

      else
      {
        v10 = 0;
      }

      sub_4EC9D4(v7, v43);
      sub_D16C58(v7, v43);
      sub_5287C0(v43);
    }

    v16 = *a2;
    v17 = a2[1];
    if (*a2 != v17)
    {
      goto LABEL_8;
    }
  }

  sub_4EE138(v7, 2);
  v31 = sub_74700();
  if (a3 <= 0xD)
  {
    if (((1 << a3) & 0x3C19) != 0)
    {
      v32 = sub_73EC4(v31);
      sub_4EC868(v7, v32);
      sub_4EC87C(v7, a4);
    }

    else if (((1 << a3) & 0x60) != 0)
    {
      sub_4EC760(v7, 1);
    }
  }

  return sub_4EC810(v7, a5);
}

void sub_EE6EE4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 1104);
  v5 = *(a2 + 1112);
  if (v4 == v5 || *(*(a1 + 2480) + 3) == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = (v5 - v4) >> 3;
  v7 = 0x3795876FF3795877 * v6 - 1;
  if (0x3795876FF3795877 * v6 != 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1008;
    v19 = a3;
    do
    {
      v10 += *(*(a2 + 1104) + v11);
      if (sub_4D1DB8(a2) >= v10)
      {
        v12 = sub_4D1DB8(a2) - v10;
        a3 = v19;
        v13 = v19[2];
        if (v9 >= v13)
        {
LABEL_12:
          v14 = v9;
          v15 = v9 >> 3;
          v16 = v15 + 1;
          if ((v15 + 1) >> 61)
          {
            *v19 = 0;
            sub_1794();
          }

          if (v13 >> 2 > v16)
          {
            v16 = v13 >> 2;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            if (!(v17 >> 61))
            {
              operator new();
            }

            *v19 = 0;
            sub_1808();
          }

          v18 = (8 * v15);
          *v18 = v12;
          v9 = (v18 + 1);
          memcpy(0, 0, v14);
          a3 = v19;
          v19[1] = v9;
          v19[2] = 0;
          goto LABEL_7;
        }
      }

      else
      {
        v12 = 0;
        v13 = a3[2];
        if (v9 >= v13)
        {
          goto LABEL_12;
        }
      }

      *v9 = v12;
      v9 += 8;
LABEL_7:
      a3[1] = v9;
      v11 += 2616;
      --v7;
    }

    while (v7);
  }

  *a3 = 0;
}

void sub_EE70D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = v10;
  if (v10)
  {
    a10[1] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EE7110@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if ((*(*(result + 2480) + 3) & 1) == 0)
  {
    sub_47AE70((result + 1088), a2, 0, v22);
    if (v24)
    {
      v4 = (v24 + 8);
    }

    else
    {
      v4 = 0;
    }

    if (v23)
    {
      v5 = 8 * v23;
      do
      {
        v6 = *v4;
        if (*(*v4 + 32))
        {
          v7 = *(*v4 + 32);
        }

        else
        {
          v7 = &off_2734B00;
        }

        v8 = *(v7 + 7);
        v9 = v8 / 10000000.0;
        v10 = -1;
        if (v8 / 10000000.0 <= 180.0)
        {
          v8 = *(v7 + 6) / 10000000.0;
          if (fabs(v8) <= 85.0511288 && v9 >= -180.0)
          {
            v11 = sin(fmin(fmax(v8, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
            LODWORD(v12) = ((log((v11 + 1.0) / (1.0 - v11)) / -12.5663706 + 0.5) * 4294967300.0);
            if (v12 >= 0xFFFFFFFE)
            {
              v12 = 4294967294;
            }

            else
            {
              v12 = v12;
            }

            v8 = (v9 + 180.0) / 360.0 * 4294967300.0;
            v10 = v8 | (v12 << 32);
          }
        }

        v20 = v10;
        v21 = 0x7FFFFFFF;
        LODWORD(v8) = *(v6 + 60);
        v13 = llround(*&v8 * 100.0) % 36000;
        if (v13 > 0xFFFF735F)
        {
          LOWORD(v13) = v13 - 29536;
        }

        v19 = v13;
        v18 = *(v6 + 48);
        v14 = *(v6 + 64);
        v16 = *(v6 + 68);
        v17 = v14;
        v15 = 0;
        sub_EE7BB0(a3, &v18, &v20, &v19, &v17, &v16, &v15);
        ++v4;
        v5 -= 8;
      }

      while (v5);
    }

    return sub_1218EBC(v22);
  }

  return result;
}

void sub_EE7388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1218EBC(va);
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_EE73AC(_DWORD *a1, void *a2)
{
  *a1 = 0x7FFFFFFF;
  v3 = 20;
  strcpy(__p, "familiar_route_logic");
  sub_5F5AC(a2, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_EE7504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EE7528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (*(nullsub_1(a4) + 128) == 1)
  {
    v8 = nullsub_1(v4);
    sub_4F970C(v8, &v53);
    v41 = v4;
    v9 = nullsub_1(v4);
    v10 = sub_4F96E0(v9);
    v51 = 0;
    v52 = 0;
    v50 = 0;
    __p = &v50;
    LOBYTE(v48) = 0;
    if (v10 != v53)
    {
      if (0x8E38E38E38E38E39 * ((v10 - v53) >> 4) < 0x1C71C71C71C71C8)
      {
        operator new();
      }

      sub_1794();
    }

    v11 = sub_5EBCF8(a2);
    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        v14 = sub_5EBC20(a2, i);
        v15 = *(a3 + 8);
        if (i >= 0x8E38E38E38E38E39 * ((*(a3 + 16) - v15) >> 3))
        {
          __p = 0;
          v48 = 0;
          v49 = 0;
        }

        else
        {
          __p = 0;
          v48 = 0;
          v49 = 0;
          sub_4F1814(&__p, *(v15 + 72 * i), *(v15 + 72 * i + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v15 + 72 * i + 8) - *(v15 + 72 * i)) >> 4));
        }

        sub_EE4AE8(a1, v14, v46);
        v16 = *(v14 + 10176);
        if (v16 == *(v14 + 10184))
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = sub_69B32C(v14);
          v18 = *(v16 + 8);
          v19 = v17 - v18;
          v20 = *(v16 + 16) - v18;
        }

        *&v45 = v19;
        *(&v45 + 1) = v20;
        v21 = *(a3 + 8);
        if (i >= 0x8E38E38E38E38E39 * ((*(a3 + 16) - v21) >> 3))
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v25 = (v10 + 144 * i);
          v26 = v51;
          if (v51 >= v52)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v22 = v21 + 72 * i;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v24 = *(v22 + 24);
          v23 = *(v22 + 32);
          if (v23 != v24)
          {
            if (((v23 - v24) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v25 = (v10 + 144 * i);
          v26 = v51;
          if (v51 >= v52)
          {
LABEL_23:
            v27 = sub_EE7A0C(&v50, v25, v25 + 1, v46, &__p, &v45, &v42);
            goto LABEL_24;
          }
        }

        sub_4F8F24(v26, *v25, v25 + 1, v46, &__p, &v45, &v42);
        v27 = v26 + 144;
LABEL_24:
        v51 = v27;
        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }

        if (v46[0])
        {
          v46[1] = v46[0];
          operator delete(v46[0]);
        }

        v28 = __p;
        if (__p)
        {
          v29 = v48;
          v13 = __p;
          if (v48 != __p)
          {
            do
            {
              v30 = *(v29 - 6);
              if (v30)
              {
                *(v29 - 5) = v30;
                operator delete(v30);
              }

              v31 = v29 - 10;
              if (*(v29 - 57) < 0)
              {
                operator delete(*v31);
              }

              v29 -= 10;
            }

            while (v31 != v28);
            v13 = __p;
            v4 = v41;
          }

          v48 = v28;
          operator delete(v13);
        }
      }
    }

    v32 = nullsub_1(v4);
    v33 = sub_4C5154(v32);
    sub_4ECCB8(v4, &v50, v33);
    v34 = sub_57478(a2);
    v35 = sub_73EC4(v34);
    sub_4ED5BC(v4, v35);
    v36 = sub_57478(a2);
    v37 = sub_68F328(v36);
    sub_4ECFBC(v4, *v37 == v37[1]);
    v38 = v50;
    if (v50)
    {
      v39 = v51;
      v40 = v50;
      if (v51 != v50)
      {
        do
        {
          v39 = sub_4F0FB4(v39 - 144);
        }

        while (v39 != v38);
        v40 = v50;
      }

      v51 = v38;
      operator delete(v40);
    }
  }
}

uint64_t sub_EE7A0C(uint64_t *a1, uint64_t *a2, void *a3, void *a4, uint64_t *a5, __int128 *a6, void *a7)
{
  v7 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v8 = v7 + 1;
  if (v7 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v8)
  {
    v8 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v10 = 0x1C71C71C71C71C7;
  }

  else
  {
    v10 = v8;
  }

  v19 = a1;
  if (v10)
  {
    if (v10 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v16 = 144 * v7;
  v17 = 144 * v7;
  v18 = 0;
  sub_4F8F24(144 * v7, *a2, a3, a4, a5, a6, a7);
  v17 = 144 * v7 + 144;
  sub_4FA214(a1, &__p);
  v11 = a1[1];
  v13 = v16;
  for (i = v17; v17 != v13; i = v17)
  {
    v17 = i - 144;
    sub_4F0FB4(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_EE7B9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4FA35C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_EE7BB0(uint64_t a1, void *a2, uint64_t *a3, __int16 *a4, unsigned __int8 *a5, int *a6, int *a7)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v9 >= v10)
  {
    v18 = *a1;
    v19 = v9 - *a1;
    v20 = v19 >> 5;
    v21 = (v19 >> 5) + 1;
    if (v21 >> 59)
    {
      sub_1794();
    }

    v22 = v10 - v18;
    if (v22 >> 4 > v21)
    {
      v21 = v22 >> 4;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFE0)
    {
      v23 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      if (!(v23 >> 59))
      {
        operator new();
      }

      sub_1808();
    }

    v24 = 32 * v20;
    v25 = *a3;
    v26 = *(a3 + 2);
    v27 = *a4;
    v28 = *a5;
    v29 = *a6;
    v30 = *a7;
    *v24 = *a2;
    *(v24 + 8) = v25;
    *(v24 + 16) = v26;
    *(v24 + 20) = v27;
    *(v24 + 22) = v28 & 0xFFFF00FF | (v29 << 8) | (v30 << 16);
    v17 = 32 * v20 + 32;
    memcpy(0, v18, v19);
    *a1 = 0;
    *(a1 + 8) = v17;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v11 = *a3;
    v12 = *(a3 + 2);
    v13 = *a4;
    v14 = *a5;
    v15 = *a6;
    v16 = *a7;
    *v9 = *a2;
    *(v9 + 8) = v11;
    *(v9 + 16) = v12;
    *(v9 + 20) = v13;
    *(v9 + 22) = v14 & 0xFFFF00FF | (v15 << 8) | (v16 << 16);
    v17 = v9 + 32;
  }

  *(a1 + 8) = v17;
  return v17 - 32;
}

void sub_EE7D54()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27BD2B0 = 0u;
  unk_27BD2C0 = 0u;
  dword_27BD2D0 = 1065353216;
  sub_3A9A34(&xmmword_27BD2B0, v0);
  sub_3A9A34(&xmmword_27BD2B0, v3);
  sub_3A9A34(&xmmword_27BD2B0, __p);
  sub_3A9A34(&xmmword_27BD2B0, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27BD288 = 0;
    qword_27BD290 = 0;
    qword_27BD280 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_EE7F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BD298)
  {
    qword_27BD2A0 = qword_27BD298;
    operator delete(qword_27BD298);
  }

  _Unwind_Resume(exception_object);
}

void *sub_EE8048(void *a1, int *a2)
{
  result = sub_EA7200(a1, a2);
  *result = &off_26747D0;
  return result;
}

void sub_EE807C(void (***a1)(void, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  sub_EA7354(a1, a2, a3);
  v6 = sub_68E508(a2);
  *(a3 + 40) |= 0x40u;
  v7 = *(a3 + 8);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
  if (v7)
  {
    v8 = *v8;
  }

  sub_194EA1C((a3 + 752), v6, v8);
  v9 = sub_68E634(a2);
  *(a3 + 40) |= 0x80u;
  v10 = *(a3 + 8);
  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
  if (v10)
  {
    v11 = *v11;
  }

  sub_194EA1C((a3 + 760), v9, v11);
  v12 = sub_68EA58(a2);
  v13 = *(v12 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v12 + 8);
  }

  if (v13)
  {
    *(a3 + 40) |= 0x8000u;
    v14 = *(a3 + 824);
    if (!v14)
    {
      v15 = *(a3 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_14BAE64(v16);
      v14 = v17;
      *(a3 + 824) = v17;
    }

    v18 = sub_68EA58(a2);
    sub_64E090(v14, v18);
  }

  v19 = nullsub_1(a2);
  v20 = *v19;
  v21 = *(v19 + 8);
  if (*v19 != v21)
  {
    do
    {
      sub_EE81BC(a1, v20, a3);
      v20 += 1582;
    }

    while (v20 != v21);
  }
}

void sub_EE81BC(void (***a1)(void, uint64_t, uint64_t), void *a2, uint64_t a3)
{
  sub_EE83E8(a1, a2, a3);
  v6 = a2[942];
  v7 = a2[943];
  while (v6 != v7)
  {
    v10 = *(a3 + 384);
    if (v10 && (v11 = *(a3 + 376), v11 < *v10))
    {
      *(a3 + 376) = v11 + 1;
      v9 = *&v10[2 * v11 + 2];
    }

    else
    {
      sub_14BB54C(*(a3 + 368));
      v9 = sub_19593CC(a3 + 368, v8);
    }

    sub_EE96B0(a1, v6, v9);
    v6 += 112;
  }

  v12 = a2[939];
  v13 = a2[940];
  while (v12 != v13)
  {
    v16 = *(a3 + 384);
    if (v16 && (v17 = *(a3 + 376), v17 < *v16))
    {
      *(a3 + 376) = v17 + 1;
      v15 = *&v16[2 * v17 + 2];
    }

    else
    {
      sub_14BB54C(*(a3 + 368));
      v15 = sub_19593CC(a3 + 368, v14);
    }

    sub_EE913C(a1, v12, v15);
    v12 += 280;
  }

  v18 = a2[945];
  v19 = a2[946];
  while (v18 != v19)
  {
    v22 = *(a3 + 384);
    if (v22 && (v23 = *(a3 + 376), v23 < *v22))
    {
      *(a3 + 376) = v23 + 1;
      v21 = *&v22[2 * v23 + 2];
    }

    else
    {
      sub_14BB54C(*(a3 + 368));
      v21 = sub_19593CC(a3 + 368, v20);
    }

    sub_EE9D4C(a1, v18, v21);
    v18 += 214;
  }

  sub_EE86F4(a1, a2, a3);
}

void sub_EE834C(void (***a1)(void, uint64_t, uint64_t), void *a2, uint64_t a3)
{
  v6 = nullsub_1(a2);
  v7 = -1189124953 * ((v6[1] - *v6) >> 4);
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a3 + 64) + 8 * v8 + 8);
      v10 = sub_68C454(a2, v8);
      sub_EE81BC(a1, v10, v9);
      ++v8;
    }

    while (v7 != v8);
  }
}

void sub_EE83E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_682474(a2 + 7584))
  {
    v5 = sub_68233C(a2 + 7584);
    *(a3 + 40) |= 0x40000u;
    v6 = *(a3 + 848);
    if (v6)
    {
      *(v6 + 16) |= 1u;
      v7 = *(v6 + 96);
      if (v7)
      {
LABEL_11:
        sub_64D110(v5, v7);
        goto LABEL_12;
      }
    }

    else
    {
      v8 = *(a3 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      v6 = sub_14BB0C4(v9);
      *(a3 + 848) = v6;
      *(v6 + 16) |= 1u;
      v7 = *(v6 + 96);
      if (v7)
      {
        goto LABEL_11;
      }
    }

    v10 = *(v6 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_14BAE64(v11);
    v7 = v12;
    *(v6 + 96) = v12;
    goto LABEL_11;
  }

LABEL_12:
  if (sub_681EB0(a2 + 7584))
  {
    v13 = sub_681D7C(a2 + 7584);
    v14 = *v13;
    v15 = *(v13 + 8);
    while (v14 != v15)
    {
      *(a3 + 40) |= 0x40000u;
      v18 = *(a3 + 848);
      if (v18)
      {
        v19 = *(v18 + 40);
        if (!v19)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v20 = *(a3 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v18 = sub_14BB0C4(*v21);
          *(a3 + 848) = v18;
          v19 = *(v18 + 40);
          if (!v19)
          {
LABEL_14:
            sub_14BAE64(*(v18 + 24));
            v17 = sub_19593CC(v18 + 24, v16);
            goto LABEL_15;
          }
        }

        else
        {
          v18 = sub_14BB0C4(v21);
          *(a3 + 848) = v18;
          v19 = *(v18 + 40);
          if (!v19)
          {
            goto LABEL_14;
          }
        }
      }

      v22 = *(v18 + 32);
      if (v22 >= *v19)
      {
        goto LABEL_14;
      }

      *(v18 + 32) = v22 + 1;
      v17 = *&v19[2 * v22 + 2];
LABEL_15:
      sub_64D110(v14, v17);
      v14 += 20;
    }
  }

  if (sub_682474(a2 + 8440))
  {
    v23 = sub_68233C(a2 + 8440);
    *(a3 + 40) |= 0x80000u;
    v24 = *(a3 + 856);
    if (v24)
    {
      *(v24 + 16) |= 1u;
      v25 = *(v24 + 96);
      if (v25)
      {
LABEL_36:
        sub_64D110(v23, v25);
        goto LABEL_37;
      }
    }

    else
    {
      v26 = *(a3 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v24 = sub_14BB0C4(v27);
      *(a3 + 856) = v24;
      *(v24 + 16) |= 1u;
      v25 = *(v24 + 96);
      if (v25)
      {
        goto LABEL_36;
      }
    }

    v28 = *(v24 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    sub_14BAE64(v29);
    v25 = v30;
    *(v24 + 96) = v30;
    goto LABEL_36;
  }

LABEL_37:
  if (sub_681EB0(a2 + 8440))
  {
    v31 = sub_681D7C(a2 + 8440);
    v32 = *v31;
    v33 = *(v31 + 8);
    while (1)
    {
      if (v32 == v33)
      {
        return;
      }

      *(a3 + 40) |= 0x80000u;
      v36 = *(a3 + 856);
      if (v36)
      {
        v37 = *(v36 + 40);
        if (!v37)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v38 = *(a3 + 8);
        v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v36 = sub_14BB0C4(*v39);
          *(a3 + 856) = v36;
          v37 = *(v36 + 40);
          if (!v37)
          {
LABEL_39:
            sub_14BAE64(*(v36 + 24));
            v35 = sub_19593CC(v36 + 24, v34);
            goto LABEL_40;
          }
        }

        else
        {
          v36 = sub_14BB0C4(v39);
          *(a3 + 856) = v36;
          v37 = *(v36 + 40);
          if (!v37)
          {
            goto LABEL_39;
          }
        }
      }

      v40 = *(v36 + 32);
      if (v40 >= *v37)
      {
        goto LABEL_39;
      }

      *(v36 + 32) = v40 + 1;
      v35 = *&v37[2 * v40 + 2];
LABEL_40:
      sub_64D110(v32, v35);
      v32 += 20;
    }
  }
}

void sub_EE86F4(void (***a1)(void, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 1112) - *(a2 + 1104);
  if (v3)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0x3795876FF3795877 * (v3 >> 3);
    do
    {
      v10 = sub_50EA30((a2 + 1104), v8);
      v11 = (v10 + 385);
      v12 = *(*(a3 + 72) + (v7 >> 29) + 8);
      if (!*(v10 + 386))
      {
        v11 = (a2 + 1097);
      }

      v13 = *v11;
      sub_EA79F0(a1, v10, *(*(a3 + 72) + (v7 >> 29) + 8));
      sub_EE8840(a1, v10, v13, v12);
      (**a1)(a1, v10, v12);
      sub_EE8AD0(a1, v10, v12);
      sub_EE8E20(a1, v10, v12);
      ++v8;
      v7 += 0x100000000;
    }

    while (v9 != v8);
  }
}

void sub_EE8840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1950D4C((a4 + 16), dword_278D0E8, 11, &off_2769CA8, 0);
  v9 = *(a2 + 1888);
  v10 = *(a2 + 1896);
  if (v9 != v10)
  {
    v11 = v8;
    while (!sub_80A4D8(v9))
    {
LABEL_6:
      v9 += 280;
      if (v9 == v10)
      {
        return;
      }
    }

    v14 = *(a4 + 144);
    if (v14 && (v15 = *(a4 + 136), v15 < *v14))
    {
      *(a4 + 136) = v15 + 1;
      v16 = *&v14[2 * v15 + 2];
      if (!sub_80A518(v9))
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_14BB54C(*(a4 + 128));
      v16 = sub_19593CC(a4 + 128, v17);
      if (!sub_80A518(v9))
      {
LABEL_11:
        sub_EE913C(a1, v9, v16);
        if (*(a1 + 11))
        {
LABEL_16:
          sub_682344(v9, __p);
          v19 = *(v11 + 64);
          if (v19)
          {
            v20 = *(v11 + 56);
            v21 = *v19;
            if (v20 < *v19)
            {
              *(v11 + 56) = v20 + 1;
              v12 = *&v19[2 * v20 + 2];
              if (*(v12 + 23) < 0)
              {
                operator delete(*v12);
              }

              v13 = *__p;
              *(v12 + 16) = v29;
              *v12 = v13;
              goto LABEL_6;
            }

            if (v21 != *(v11 + 60))
            {
              *v19 = v21 + 1;
              v22 = *(v11 + 48);
              if (!v22)
              {
                goto LABEL_23;
              }

LABEL_20:
              *v24 = v23;
              v24[1] = sub_195A650;
              v25 = *__p;
              *(v23 + 16) = v29;
              *v23 = v25;
              __p[1] = 0;
              v29 = 0;
              __p[0] = 0;
              v26 = *(v11 + 56);
              v27 = *(v11 + 64) + 8 * v26;
              *(v11 + 56) = v26 + 1;
              *(v27 + 8) = v23;
              if (SHIBYTE(v29) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_6;
            }
          }

          else
          {
            v21 = *(v11 + 60);
          }

          sub_1959254(v11 + 48, v21 + 1);
          ++**(v11 + 64);
          v22 = *(v11 + 48);
          if (!v22)
          {
LABEL_23:
            operator new();
          }

          goto LABEL_20;
        }

LABEL_15:
        v18 = *(a4 + 324);
        *(v16 + 16) |= 0x400u;
        *(v16 + 96) = v18;
        goto LABEL_16;
      }
    }

    sub_EE9EEC(a1, a2, v9, a3, v16);
    if (*(a1 + 11))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }
}

void sub_EE8AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EE8AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 1936);
  v4 = *(a2 + 1944);
  if (v3 != v4)
  {
    while (1)
    {
      v7 = *(a3 + 144);
      if (!v7)
      {
        break;
      }

      v8 = *(a3 + 136);
      if (v8 >= *v7)
      {
        break;
      }

      *(a3 + 136) = v8 + 1;
      v9 = *&v7[2 * v8 + 2];
      if (sub_681D38(v3))
      {
        goto LABEL_9;
      }

LABEL_10:
      v13 = sub_4DADB4(v3);
      v14 = nullsub_1(v13);
      v15 = sub_58BBC(v13);
      v16 = *(v9 + 16);
      if (*(a1 + 11) == 1)
      {
        v16 |= 0xC0000u;
        *(v9 + 132) = vmovn_s64(*v15);
      }

      v17 = v14[1];
      if (*v14 < 0)
      {
        v18 = -50;
      }

      else
      {
        v18 = 50;
      }

      v19 = *v14 / 100 + ((5243 * (v18 + *v14 % 100)) >> 19) + ((5243 * (v18 + *v14 % 100)) >> 31);
      v20 = v17 / 100;
      v21 = v17 % 100;
      if (v17 < 0)
      {
        v22 = -50;
      }

      else
      {
        v22 = 50;
      }

      *(v9 + 80) = v19;
      *(v9 + 84) = v20 + ((5243 * (v22 + v21)) >> 19) + ((5243 * (v22 + v21)) >> 31);
      *(v9 + 16) = v16 | 0x190;
      v23 = *(v9 + 56);
      if (v23)
      {
        if (sub_4D1F6C((v3 + 384)))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v25 = *(v9 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v23 = sub_14BBB28(v26);
        *(v9 + 56) = v23;
        if (sub_4D1F6C((v3 + 384)))
        {
LABEL_20:
          v24 = *(v3 + 567);
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }
      }

      *(v23 + 16) |= 2u;
      v27 = *(v23 + 56);
      if (v27)
      {
        sub_64D110((v3 + 384), v27);
        v24 = *(v3 + 567);
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v28 = *(v23 + 8);
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v29 = *v29;
        }

        sub_14BAE64(v29);
        *(v23 + 56) = v30;
        sub_64D110((v3 + 384), v30);
        v24 = *(v3 + 567);
        if ((v24 & 0x8000000000000000) == 0)
        {
LABEL_21:
          if (v24)
          {
            goto LABEL_33;
          }

          goto LABEL_36;
        }
      }

LABEL_32:
      if (*(v3 + 552))
      {
LABEL_33:
        *(v23 + 16) |= 1u;
        v31 = *(v23 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        sub_194EA1C((v23 + 48), (v3 + 544), v32);
      }

LABEL_36:
      v33 = *(v3 + 380);
      if (v33 == 2)
      {
        v34 = 2;
      }

      else
      {
        v34 = v33 == 1;
      }

      *(v23 + 16) |= 4u;
      *(v23 + 64) = v34;
      v35 = *(v3 + 680);
      v36 = *(v3 + 688);
      while (v35 != v36)
      {
        v41 = *(v23 + 40);
        if (v41 && (v42 = *(v23 + 32), v42 < *v41))
        {
          *(v23 + 32) = v42 + 1;
          v38 = *&v41[2 * v42 + 2];
        }

        else
        {
          v37 = sub_14BBAAC(*(v23 + 24));
          v38 = sub_19593CC(v23 + 24, v37);
        }

        v39 = *sub_58BBC(v35);
        v38[4] |= 4u;
        v38[8] = v39;
        v40 = *(sub_58BBC(v35) + 8);
        v38[4] |= 8u;
        v38[9] = v40;
        v35 += 56;
      }

      v3 += 704;
      if (v3 == v4)
      {
        return;
      }
    }

    sub_14BB54C(*(a3 + 128));
    v9 = sub_19593CC(a3 + 128, v10);
    if (!sub_681D38(v3))
    {
      goto LABEL_10;
    }

LABEL_9:
    v11 = sub_681D38(v3);
    v12 = sub_ECB8AC(v11);
    *(v9 + 16) |= 0x800u;
    *(v9 + 100) = v12;
    goto LABEL_10;
  }
}

void sub_EE8E20(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2[323] != -1 && a2[324] != -1 && a2[325] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = *(a3 + 144);
    if (v5 && (v6 = *(a3 + 136), v6 < *v5))
    {
      *(a3 + 136) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
      *(v7 + 16) |= 8u;
      if (*(v7 + 48))
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_14BB54C(*(a3 + 128));
      v7 = sub_19593CC(a3 + 128, v9);
      *(v7 + 16) |= 8u;
      if (*(v7 + 48))
      {
        goto LABEL_16;
      }
    }

    v10 = *(v7 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    *(v7 + 48) = sub_14BBBD0(v11);
LABEL_16:
    operator new();
  }
}

void sub_EE913C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *(a3 + 16) |= 1u;
  v6 = *(a3 + 24);
  if (!v6)
  {
    v7 = *(a3 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    v6 = sub_14BB6FC(v8);
    *(a3 + 24) = v6;
  }

  v9 = sub_4DADB4(a2);
  v10 = nullsub_1(v9);
  v11 = sub_58BBC(v9);
  v12 = *(a3 + 16);
  if (*(a1 + 11) == 1)
  {
    v12 |= 0xC0000u;
    *(a3 + 132) = vmovn_s64(*v11);
  }

  v13 = v10[1];
  if (*v10 < 0)
  {
    v14 = -50;
  }

  else
  {
    v14 = 50;
  }

  v15 = *v10 / 100 + ((5243 * (v14 + *v10 % 100)) >> 19) + ((5243 * (v14 + *v10 % 100)) >> 31);
  if (v13 < 0)
  {
    v16 = -50;
  }

  else
  {
    v16 = 50;
  }

  *(a3 + 16) = v12 | 0x180;
  *(a3 + 80) = v15;
  *(a3 + 84) = v13 / 100 + ((5243 * (v16 + v13 % 100)) >> 19) + ((5243 * (v16 + v13 % 100)) >> 31);
  if (sub_681EA0(a2))
  {
    v17 = sub_3F80(a2);
    *(a3 + 16) |= 0x2000u;
    *(a3 + 112) = v17;
  }

  v18 = sub_681D38(a2);
  v19 = sub_ECB8AC(v18);
  *(a3 + 16) |= 0x800u;
  *(a3 + 100) = v19;
  if (sub_80A4A8(a2) != -1)
  {
    v20 = sub_80A4A8(a2);
    *(v6 + 16) |= 0x10u;
    *(v6 + 124) = v20;
  }

  v21 = sub_68238C(a2);
  if (!sub_4D1F6C(v21))
  {
    v22 = sub_68238C(a2);
    v23 = *(v6 + 40);
    if (v23 && (v24 = *(v6 + 32), v24 < *v23))
    {
      *(v6 + 32) = v24 + 1;
      v25 = *&v23[2 * v24 + 2];
    }

    else
    {
      v26 = v22;
      sub_14BAE64(*(v6 + 24));
      v25 = sub_19593CC(v6 + 24, v27);
      v22 = v26;
    }

    sub_64D110(v22, v25);
  }

  v28 = sub_681D7C(a2);
  v29 = *v28;
  v30 = *(v28 + 8);
  while (v29 != v30)
  {
    v33 = *(v6 + 64);
    if (v33 && (v34 = *(v6 + 56), v34 < *v33))
    {
      *(v6 + 56) = v34 + 1;
      v32 = *&v33[2 * v34 + 2];
    }

    else
    {
      sub_14BAE64(*(v6 + 48));
      v32 = sub_19593CC(v6 + 48, v31);
    }

    sub_64D110(v29, v32);
    v29 += 20;
  }

  if (sub_80A4A0(a2))
  {
    v35 = sub_80A4A0(a2);
    v36 = sub_EC7E24(v35);
    *(v6 + 16) |= 8u;
    *(v6 + 120) = v36;
  }

  if (sub_80A528(a2))
  {
    v40 = sub_80A4D0(a2);
    *(v6 + 16) |= 2u;
    v41 = *(v6 + 104);
    if (v41)
    {
      sub_ECB694(v40, v41);
      v42 = sub_80A4B0(a2);
      if (sub_7345C4(v42))
      {
        goto LABEL_50;
      }
    }

    else
    {
      v43 = v40;
      v44 = *(v6 + 8);
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
      if (v44)
      {
        v45 = *v45;
      }

      v46 = sub_14BB658(v45);
      *(v6 + 104) = v46;
      sub_ECB694(v43, v46);
      v47 = sub_80A4B0(a2);
      if (sub_7345C4(v47))
      {
        goto LABEL_50;
      }
    }

LABEL_34:
    if (sub_681DB0(a2) == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_35;
    }

    goto LABEL_57;
  }

  v37 = sub_80A4B0(a2);
  if (!sub_7345C4(v37))
  {
    goto LABEL_34;
  }

LABEL_50:
  v48 = sub_80A4B0(a2);
  *(v6 + 16) |= 1u;
  v49 = *(v6 + 96);
  if (!v49)
  {
    v50 = *(v6 + 8);
    v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
    if (v50)
    {
      v51 = *v51;
    }

    v49 = sub_16F5CD4(v51);
    *(v6 + 96) = v49;
  }

  *(v49 + 40) |= 4u;
  v52 = *(v49 + 8);
  v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
  if (v52)
  {
    v53 = *v53;
  }

  sub_194EA1C((v49 + 64), (v48 + 8), v53);
  v54 = *v48;
  *(v49 + 40) |= 0x10u;
  *(v49 + 80) = v54;
  if (sub_681DB0(a2) == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_35:
    v38 = sub_682394(a2);
    v39 = v38[8];
    if (v39 <= 2)
    {
      goto LABEL_36;
    }

    goto LABEL_65;
  }

LABEL_57:
  if (*(a1 + 11) == 1)
  {
    v55 = sub_681D64(a2);
    if ((v56 & 1) == 0)
    {
      sub_4F0F0C();
    }

    v57 = 0x100000;
    v58 = 140;
  }

  else
  {
    v59 = sub_681DB0(a2);
    if (v59 < 0)
    {
      v60 = -50;
    }

    else
    {
      v60 = 50;
    }

    v55 = v59 / 100 + ((5243 * (v60 + v59 % 100)) >> 19) + ((5243 * (v60 + v59 % 100)) >> 31);
    v57 = 0x4000;
    v58 = 116;
  }

  *(a3 + 16) |= v57;
  *(a3 + v58) = v55;
  v38 = sub_682394(a2);
  v39 = v38[8];
  if (v39 <= 2)
  {
LABEL_36:
    if (v39 == 1)
    {
      if (*v38 == -1)
      {
        return;
      }
    }

    else if (v39 != 2 || v38[1] == -1 && *v38 == -1 && *(v38 + 1) == *(v38 + 2))
    {
      return;
    }

    goto LABEL_70;
  }

LABEL_65:
  if (v39 == 3 || v39 == 4)
  {
    v61 = *(v38 + 23);
    if ((v61 & 0x80u) != 0)
    {
      v61 = *(v38 + 1);
    }

    if (v61)
    {
LABEL_70:
      v62 = sub_682394(a2);
      *(v6 + 16) |= 4u;
      v64 = *(v6 + 112);
      if (!v64)
      {
        v65 = v62;
        v66 = *(v6 + 8);
        v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
        if (v66)
        {
          v67 = *v67;
        }

        v64 = sub_14BF484(v67);
        *(v6 + 112) = v64;
        v62 = v65;
      }

      sub_586C94(v62, v64, v63);
    }
  }
}

uint64_t sub_EE96B0(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = sub_4DADB4(a2);
  v7 = nullsub_1(v6);
  v8 = sub_58BBC(v6);
  v78 = a1;
  v9 = *(a3 + 16);
  if (*(a1 + 11) == 1)
  {
    v9 |= 0xC0000u;
    *(a3 + 132) = vmovn_s64(*v8);
  }

  v10 = v7[1];
  if (*v7 < 0)
  {
    v11 = -50;
  }

  else
  {
    v11 = 50;
  }

  v12 = *v7 / 100 + ((5243 * (v11 + *v7 % 100)) >> 19) + ((5243 * (v11 + *v7 % 100)) >> 31);
  if (v10 < 0)
  {
    v13 = -50;
  }

  else
  {
    v13 = 50;
  }

  *(a3 + 16) = v9 | 0x180;
  *(a3 + 80) = v12;
  *(a3 + 84) = v10 / 100 + ((5243 * (v13 + v10 % 100)) >> 19) + ((5243 * (v13 + v10 % 100)) >> 31);
  if (sub_681EA0(a2))
  {
    v14 = sub_3F80(a2);
    *(a3 + 16) |= 0x2000u;
    *(a3 + 112) = v14;
  }

  v15 = sub_681D38(a2);
  v16 = sub_ECB8AC(v15);
  *(a3 + 16) |= 0x800u;
  *(a3 + 100) = v16;
  v17 = sub_682A98(a2);
  *(a3 + 16) |= 0x8000u;
  *(a3 + 120) = v17;
  v18 = sub_681D74(a2);
  *(a3 + 16) |= 0x200000u;
  *(a3 + 144) = v18;
  v19 = sub_681D98(a2);
  if (*&v19 > -1 && ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v19 - 1) < 0xFFFFFFFFFFFFFLL || (*&v19 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v23 = sub_681D98(a2);
    *(a3 + 16) |= 0x200u;
    *(a3 + 88) = v23 / 3.6;
  }

  v24 = sub_681DA0(a2);
  if (*&v24 > -1 && ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v24 - 1) < 0xFFFFFFFFFFFFFLL || (*&v24 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v28 = sub_681DA0(a2);
    *(a3 + 16) |= 0x1000u;
    *(a3 + 104) = v28 / 3.6;
  }

  if (sub_682B14(a2) != -1)
  {
    v29 = sub_682B14(a2);
    *(a3 + 16) |= 0x20000u;
    *(a3 + 128) = v29;
  }

  v30 = sub_9351C(a2);
  v31 = *v30;
  v32 = *(v30 + 8);
  if (*v30 != v32)
  {
    *(a3 + 16) |= 0x20u;
    v33 = *(a3 + 64);
    if (!v33)
    {
      v34 = v30;
      v35 = *(a3 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      v33 = sub_14BB4B8(v36);
      *(a3 + 64) = v33;
      v37 = v34;
      v31 = *v34;
      v32 = v37[1];
    }

    if (v31 != v32)
    {
      v38 = (v33 + 16);
      v39 = *(v33 + 16);
      do
      {
        while (1)
        {
          v40 = *v31 == 1;
          if (v39 == *(v33 + 20))
          {
            break;
          }

          *(*(v33 + 24) + 4 * v39++) = v40;
          *v38 = v39;
          if (++v31 == v32)
          {
            goto LABEL_47;
          }
        }

        sub_1958E5C((v33 + 16), v39 + 1);
        *(*(v33 + 24) + 4 * v39++) = v40;
        *v38 = v39;
        ++v31;
      }

      while (v31 != v32);
    }
  }

LABEL_47:
  *(a3 + 16) |= 2u;
  v41 = *(a3 + 32);
  if (!v41)
  {
    v42 = *(a3 + 8);
    v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
    if (v42)
    {
      v43 = *v43;
    }

    v41 = sub_14BB828(v43);
    *(a3 + 32) = v41;
  }

  v44 = sub_681D7C(a2);
  sub_1959254(v41 + 24, -858993459 * ((v44[1] - *v44) >> 5));
  v45 = sub_681D7C(a2);
  v47 = *v45;
  v46 = *(v45 + 8);
  while (v47 != v46)
  {
    v50 = *(v41 + 40);
    if (v50 && (v51 = *(v41 + 32), v51 < *v50))
    {
      *(v41 + 32) = v51 + 1;
      v49 = *&v50[2 * v51 + 2];
    }

    else
    {
      sub_14BAE64(*(v41 + 24));
      v49 = sub_19593CC(v41 + 24, v48);
    }

    sub_64D110(v47, v49);
    v47 += 20;
  }

  v52 = sub_682A88(a2);
  *(v41 + 16) |= 8u;
  *(v41 + 84) = v52;
  v53 = sub_682A60(a2);
  *(v41 + 16) |= 0x10u;
  *(v41 + 88) = v53;
  v54 = sub_682A68(a2);
  if ((v54 - 1) >= 4)
  {
    v55 = 0;
  }

  else
  {
    v55 = v54;
  }

  *(v41 + 16) |= 0x80u;
  *(v41 + 100) = v55;
  v56 = sub_682A90(a2);
  *(v41 + 16) |= 0x20u;
  *(v41 + 92) = v56;
  if (!sub_682E20(a2))
  {
    v57 = sub_682A80(a2);
    if (!sub_681708(v57))
    {
      goto LABEL_63;
    }

LABEL_66:
    v63 = sub_682A70(a2);
    if (v63 < 0)
    {
      v64 = -5;
    }

    else
    {
      v64 = 5;
    }

    *(v41 + 16) |= 1u;
    *(v41 + 72) = v63 / 10 + (((103 * (v64 + v63 % 10)) >> 15) & 1) + ((103 * (v64 + v63 % 10)) >> 10);
    v65 = sub_682A78(a2);
    if (v65 < 0)
    {
      v66 = -5;
    }

    else
    {
      v66 = 5;
    }

    *(v41 + 16) |= 2u;
    *(v41 + 76) = v65 / 10 + (((103 * (v66 + v65 % 10)) >> 15) & 1) + ((103 * (v66 + v65 % 10)) >> 10);
    result = sub_93420(a2);
    v59 = *result;
    v60 = *(result + 8);
    if (*result == v60)
    {
      goto LABEL_84;
    }

    goto LABEL_80;
  }

  v61 = sub_682B24(a2);
  *(v41 + 16) |= 0x40u;
  *(v41 + 96) = v61;
  v62 = sub_682A80(a2);
  if (sub_681708(v62))
  {
    goto LABEL_66;
  }

LABEL_63:
  result = sub_93420(a2);
  v59 = *result;
  v60 = *(result + 8);
  if (*result == v60)
  {
    goto LABEL_84;
  }

  do
  {
LABEL_80:
    result = sub_681724(v59);
    if (result)
    {
      v74 = *(v41 + 64);
      if (v74 && (v75 = *(v41 + 56), v75 < *v74))
      {
        *(v41 + 56) = v75 + 1;
        result = *&v74[2 * v75 + 2];
      }

      else
      {
        v67 = sub_14BB7AC(*(v41 + 48));
        result = sub_19593CC(v41 + 48, v67);
      }

      v68 = *v59;
      v69 = *(result + 16);
      *(result + 16) = v69 | 1;
      v70 = v59[1];
      v71 = v70 / 10;
      v72 = v70 % 10;
      if (v70 < 0)
      {
        v73 = -5;
      }

      else
      {
        v73 = 5;
      }

      *(result + 16) = v69 | 3;
      *(result + 24) = v68;
      *(result + 28) = v71 + (((103 * (v73 + v72)) >> 15) & 1) + ((103 * (v73 + v72)) >> 10);
    }

    v59 += 3;
  }

  while (v59 != v60);
LABEL_84:
  if (*(v78 + 11))
  {
    result = sub_681D64(a2);
    if (v76)
    {
      result = sub_681D64(a2);
      if ((v77 & 1) == 0)
      {
        sub_4F0F0C();
      }

      *(a3 + 16) |= 0x100000u;
      *(a3 + 140) = result;
    }
  }

  return result;
}

void sub_EE9D4C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *(a3 + 16) |= 0x40u;
  v5 = *(a3 + 72);
  if (v5)
  {
    if (!sub_681EA0(a2))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = *(a3 + 8);
  v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
  if (v19)
  {
    v20 = *v20;
  }

  v5 = sub_14BB5DC(v20);
  *(a3 + 72) = v5;
  if (sub_681EA0(a2))
  {
LABEL_3:
    v6 = sub_3F80(a2);
    *(a3 + 16) |= 0x2000u;
    *(a3 + 112) = v6;
  }

LABEL_4:
  v7 = sub_681D38(a2);
  v8 = sub_ECB8AC(v7);
  *(a3 + 16) |= 0x800u;
  *(a3 + 100) = v8;
  if (sub_682474(a2))
  {
    v9 = sub_68233C(a2);
    *(v5 + 4) |= 1u;
    v10 = v5[3];
    if (!v10)
    {
      v11 = v9;
      v12 = v5[1];
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_14BAE64(v13);
      v10 = v14;
      v5[3] = v14;
      v9 = v11;
    }

    sub_64D110(v9, v10);
  }

  v15 = sub_681D7C(a2);
  if (*v15 != v15[1])
  {
    v16 = *sub_681D7C(a2);
    *(v5 + 4) |= 2u;
    v17 = v5[4];
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v21 = v5[1];
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_14BAE64(v22);
      v17 = v23;
      v5[4] = v23;
      v18 = v16;
    }

    sub_64D110(v18, v17);
  }
}

void sub_EE9EEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = sub_4DADB4(a3);
  v11 = nullsub_1(v10);
  v12 = sub_58BBC(v10);
  v13 = *(a5 + 16);
  if (*(a1 + 11) == 1)
  {
    v13 |= 0xC0000u;
    *(a5 + 132) = vmovn_s64(*v12);
  }

  v14 = v11[1];
  if (*v11 < 0)
  {
    v15 = -50;
  }

  else
  {
    v15 = 50;
  }

  v16 = *v11 / 100 + ((5243 * (v15 + *v11 % 100)) >> 19) + ((5243 * (v15 + *v11 % 100)) >> 31);
  if (v14 < 0)
  {
    v17 = -50;
  }

  else
  {
    v17 = 50;
  }

  *(a5 + 16) = v13 | 0x180;
  *(a5 + 80) = v16;
  *(a5 + 84) = v14 / 100 + ((5243 * (v17 + v14 % 100)) >> 19) + ((5243 * (v17 + v14 % 100)) >> 31);
  v18 = sub_681D38(a3);
  v19 = sub_ECB8AC(v18);
  *(a5 + 16) |= 0x800u;
  *(a5 + 100) = v19;
  v20 = *(a2 + 2008) + 360 * sub_80A4C8(a3);
  *(a5 + 16) |= 4u;
  v21 = *(a5 + 40);
  if (v21)
  {
    if (*(a1 + 13) == 1)
    {
      goto LABEL_11;
    }

LABEL_15:
    v25 = sub_68238C(a3);
    if (!sub_4D1F6C(v25))
    {
      goto LABEL_20;
    }

LABEL_16:
    v61 = a3;
    v26 = sub_6C6B88(v20);
    if (!v26)
    {
      goto LABEL_62;
    }

    goto LABEL_25;
  }

  v23 = *(a5 + 8);
  v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
  if (v23)
  {
    v21 = sub_14BB9FC(*v24);
    *(a5 + 40) = v21;
    if (*(a1 + 13) != 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v21 = sub_14BB9FC(v24);
    *(a5 + 40) = v21;
    if (*(a1 + 13) != 1)
    {
      goto LABEL_15;
    }
  }

LABEL_11:
  if (sub_6C7D24(v20))
  {
    v22 = *(a2 + 16);
  }

  else
  {
    LODWORD(v22) = sub_6C6B4C(v20);
  }

  *(v21 + 16) |= 1u;
  *(v21 + 96) = v22;
  v27 = sub_68238C(a3);
  if (sub_4D1F6C(v27))
  {
    goto LABEL_16;
  }

LABEL_20:
  v28 = sub_68238C(a3);
  v29 = *(v21 + 88);
  if (v29 && (v30 = *(v21 + 80), v30 < *v29))
  {
    *(v21 + 80) = v30 + 1;
    sub_64D110(v28, *&v29[2 * v30 + 2]);
    v61 = a3;
    v26 = sub_6C6B88(v20);
    if (!v26)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v31 = v28;
    sub_14BAE64(*(v21 + 72));
    v33 = sub_19593CC(v21 + 72, v32);
    sub_64D110(v31, v33);
    v61 = a3;
    v26 = sub_6C6B88(v20);
    if (!v26)
    {
      goto LABEL_62;
    }
  }

LABEL_25:
  v34 = 0;
  if (a4 == 1)
  {
    v35 = 16;
  }

  else
  {
    v35 = 256;
  }

  v36 = v26;
  do
  {
    while (1)
    {
      v37 = *(v21 + 40);
      if (v37 && (v38 = *(v21 + 32), v38 < *v37))
      {
        *(v21 + 32) = v38 + 1;
        v39 = *&v37[2 * v38 + 2];
      }

      else
      {
        v40 = sub_14BB8E8(*(v21 + 24));
        v39 = sub_19593CC(v21 + 24, v40);
      }

      v41 = sub_6C784C(v20, v34);
      *(v39 + 16) |= 1u;
      *(v39 + 48) = v41;
      v42 = sub_6C9088(v20, v34);
      *(v39 + 16) |= 2u;
      *(v39 + 49) = v42;
      v43 = sub_6C8244(v20, v34);
      v44 = *v43;
      v45 = v43[1];
      while (v44 != v45)
      {
        v48 = 128;
        switch(*v44)
        {
          case 1:
          case 7:
          case 0xA:
            goto LABEL_54;
          case 2:
          case 9:
          case 0xB:
            v48 = 2;
            v49 = *(v39 + 40);
            if (!v49)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 3:
            v48 = 64;
            v49 = *(v39 + 40);
            if (!v49)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 4:
            v48 = 4;
            v49 = *(v39 + 40);
            if (!v49)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 5:
            v48 = 32;
LABEL_54:
            v49 = *(v39 + 40);
            if (v49)
            {
              goto LABEL_55;
            }

            goto LABEL_36;
          case 6:
            v48 = 8;
            v49 = *(v39 + 40);
            if (!v49)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 8:
          case 0xC:
            v48 = 1;
            v49 = *(v39 + 40);
            if (!v49)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 0xD:
            v48 = v35;
            v49 = *(v39 + 40);
            if (!v49)
            {
              goto LABEL_36;
            }

LABEL_55:
            v50 = *(v39 + 32);
            if (v50 >= *v49)
            {
LABEL_36:
              v46 = sub_14BB984(*(v39 + 24));
              v47 = sub_19593CC(v39 + 24, v46);
            }

            else
            {
              *(v39 + 32) = v50 + 1;
              v47 = *&v49[2 * v50 + 2];
            }

            *(v47 + 16) |= 2u;
            *(v47 + 28) = v48;
            break;
          default:
            break;
        }

        ++v44;
      }

      if (!*(v39 + 32))
      {
        break;
      }

      if (++v34 == v36)
      {
        goto LABEL_62;
      }
    }

    v51 = *(v39 + 40);
    if (v51 && *v51 >= 1)
    {
      *(v39 + 32) = 1;
      v52 = *(v51 + 8);
    }

    else
    {
      v53 = sub_14BB984(*(v39 + 24));
      v52 = sub_19593CC(v39 + 24, v53);
    }

    *(v52 + 16) |= 2u;
    *(v52 + 28) = 1;
    ++v34;
  }

  while (v34 != v36);
LABEL_62:
  v54 = sub_681D7C(v61);
  v55 = *v54;
  v56 = *(v54 + 8);
  while (v55 != v56)
  {
    v59 = *(v21 + 64);
    if (v59 && (v60 = *(v21 + 56), v60 < *v59))
    {
      *(v21 + 56) = v60 + 1;
      v58 = *&v59[2 * v60 + 2];
    }

    else
    {
      sub_14BAE64(*(v21 + 48));
      v58 = sub_19593CC(v21 + 48, v57);
    }

    sub_64D110(v55, v58);
    v55 += 20;
  }
}

void sub_EEA444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1950D4C((a3 + 16), dword_278D0E8, 11, &off_2769CA8, 0);
  v7 = *(a2 + 1912);
  v8 = *(a2 + 1920);
  if (v7 != v8)
  {
    v9 = v6;
    do
    {
      v10 = *(a3 + 144);
      if (v10 && (v11 = *(a3 + 136), v11 < *v10))
      {
        *(a3 + 136) = v11 + 1;
        v12 = *&v10[2 * v11 + 2];
        sub_EE96B0(a1, v7, v12);
        if (*(a1 + 11))
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_14BB54C(*(a3 + 128));
        v12 = sub_19593CC(a3 + 128, v13);
        sub_EE96B0(a1, v7, v12);
        if (*(a1 + 11))
        {
          goto LABEL_19;
        }
      }

      if (*(a3 + 40) >= 0)
      {
        v14 = *(a3 + 324);
      }

      else
      {
        v14 = *(a3 + 320);
      }

      if (*(a3 + 44))
      {
        v15 = *(a3 + 324);
      }

      else
      {
        v15 = *(a3 + 320);
      }

      if (sub_682B0C(v7))
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      *(v12 + 16) |= 0x400u;
      *(v12 + 96) = v16;
LABEL_19:
      v17 = sub_681DA8(v7);
      v18 = *v17;
      v19 = *(v17 + 8);
      if (*v17 != v19)
      {
        while (1)
        {
          sub_67F320(v18, __p);
          v20 = *(v9 + 40);
          if (!v20)
          {
            break;
          }

          v21 = *(v9 + 32);
          v22 = *v20;
          if (v21 >= *v20)
          {
            if (v22 == *(v9 + 36))
            {
              goto LABEL_30;
            }

LABEL_31:
            *v20 = v22 + 1;
            v25 = *(v9 + 24);
            if (!v25)
            {
              operator new();
            }

            *v27 = v26;
            v27[1] = sub_195A650;
            v28 = *__p;
            *(v26 + 16) = v32;
            *v26 = v28;
            __p[1] = 0;
            v32 = 0;
            __p[0] = 0;
            v29 = *(v9 + 32);
            v30 = *(v9 + 40) + 8 * v29;
            *(v9 + 32) = v29 + 1;
            *(v30 + 8) = v26;
            if (SHIBYTE(v32) < 0)
            {
              operator delete(__p[0]);
            }

            v18 += 13;
            if (v18 == v19)
            {
              goto LABEL_3;
            }
          }

          else
          {
            *(v9 + 32) = v21 + 1;
            v23 = *&v20[2 * v21 + 2];
            if (*(v23 + 23) < 0)
            {
              operator delete(*v23);
            }

            v24 = *__p;
            *(v23 + 16) = v32;
            *v23 = v24;
            v18 += 13;
            if (v18 == v19)
            {
              goto LABEL_3;
            }
          }
        }

        v22 = *(v9 + 36);
LABEL_30:
        sub_1959254(v9 + 24, v22 + 1);
        v20 = *(v9 + 40);
        v22 = *v20;
        goto LABEL_31;
      }

LABEL_3:
      v7 += 112;
    }

    while (v7 != v8);
  }
}

void sub_EEA6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v15 = a1;
    operator delete(__p);
    a1 = v15;
  }

  _Unwind_Resume(a1);
}

void *sub_EEA6F4(void *a1, int *a2)
{
  result = sub_EA8604(a1, a2);
  *result = &off_26747E8;
  return result;
}

void sub_EEA728(void (***a1)(void, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  sub_EA7354(a1, a2, a3);
  v6 = sub_68E508(a2);
  *(a3 + 40) |= 0x40u;
  v7 = *(a3 + 8);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
  if (v7)
  {
    v8 = *v8;
  }

  sub_194EA1C((a3 + 752), v6, v8);
  v9 = sub_68E634(a2);
  *(a3 + 40) |= 0x80u;
  v10 = *(a3 + 8);
  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
  if (v10)
  {
    v11 = *v11;
  }

  sub_194EA1C((a3 + 760), v9, v11);
  v12 = sub_68EA58(a2);
  v13 = *(v12 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v12 + 8);
  }

  if (v13)
  {
    *(a3 + 40) |= 0x8000u;
    v14 = *(a3 + 824);
    if (!v14)
    {
      v15 = *(a3 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_14BAE64(v16);
      v14 = v17;
      *(a3 + 824) = v17;
    }

    v18 = sub_68EA58(a2);
    sub_64E090(v14, v18);
  }

  v19 = nullsub_1(a2);
  v20 = *v19;
  v21 = *(v19 + 8);
  if (*v19 != v21)
  {
    do
    {
      sub_EEA868(a1, v20, a3);
      v20 += 1582;
    }

    while (v20 != v21);
  }
}

void sub_EEA868(void (***a1)(void, uint64_t, uint64_t), void *a2, uint64_t a3)
{
  sub_EE83E8(a1, a2, a3);
  v6 = a2[942];
  v7 = a2[943];
  while (v6 != v7)
  {
    v10 = *(a3 + 384);
    if (v10 && (v11 = *(a3 + 376), v11 < *v10))
    {
      *(a3 + 376) = v11 + 1;
      v9 = *&v10[2 * v11 + 2];
    }

    else
    {
      sub_14BB54C(*(a3 + 368));
      v9 = sub_19593CC(a3 + 368, v8);
    }

    sub_EE96B0(a1, v6, v9);
    v6 += 112;
  }

  v12 = a2[939];
  v13 = a2[940];
  while (v12 != v13)
  {
    v16 = *(a3 + 384);
    if (v16 && (v17 = *(a3 + 376), v17 < *v16))
    {
      *(a3 + 376) = v17 + 1;
      v15 = *&v16[2 * v17 + 2];
    }

    else
    {
      sub_14BB54C(*(a3 + 368));
      v15 = sub_19593CC(a3 + 368, v14);
    }

    sub_EE913C(a1, v12, v15);
    v12 += 280;
  }

  v18 = a2[945];
  v19 = a2[946];
  while (v18 != v19)
  {
    v22 = *(a3 + 384);
    if (v22 && (v23 = *(a3 + 376), v23 < *v22))
    {
      *(a3 + 376) = v23 + 1;
      v21 = *&v22[2 * v23 + 2];
    }

    else
    {
      sub_14BB54C(*(a3 + 368));
      v21 = sub_19593CC(a3 + 368, v20);
    }

    sub_EE9D4C(a1, v18, v21);
    v18 += 214;
  }

  sub_EEAA94(a1, a2, a3);
}

void sub_EEA9F8(void (***a1)(void, uint64_t, uint64_t), void *a2, uint64_t a3)
{
  v6 = nullsub_1(a2);
  v7 = -1189124953 * ((v6[1] - *v6) >> 4);
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a3 + 64) + 8 * v8 + 8);
      v10 = sub_68C454(a2, v8);
      sub_EEA868(a1, v10, v9);
      ++v8;
    }

    while (v7 != v8);
  }
}

void sub_EEAA94(void (***a1)(void, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 1112) - *(a2 + 1104);
  if (v3)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0x3795876FF3795877 * (v3 >> 3);
    do
    {
      v10 = sub_50EA30((a2 + 1104), v8);
      v11 = (v10 + 385);
      v12 = *(*(a3 + 72) + (v7 >> 29) + 8);
      if (!*(v10 + 386))
      {
        v11 = (a2 + 1097);
      }

      v13 = *v11;
      sub_EA8938(a1, v10, *(*(a3 + 72) + (v7 >> 29) + 8));
      sub_EEABE0(a1, v10, v13, v12);
      (**a1)(a1, v10, v12);
      sub_EE8AD0(a1, v10, v12);
      sub_EE8E20(a1, v10, v12);
      ++v8;
      v7 += 0x100000000;
    }

    while (v9 != v8);
  }
}

void sub_EEABE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1950D4C((a4 + 16), dword_278D0E8, 11, &off_2769CA8, 0);
  v9 = *(a2 + 1888);
  v10 = *(a2 + 1896);
  if (v9 != v10)
  {
    v11 = v8;
    while (!sub_80A4D8(v9))
    {
LABEL_6:
      v9 += 280;
      if (v9 == v10)
      {
        return;
      }
    }

    v14 = *(a4 + 144);
    if (v14 && (v15 = *(a4 + 136), v15 < *v14))
    {
      *(a4 + 136) = v15 + 1;
      v16 = *&v14[2 * v15 + 2];
      if (!sub_80A518(v9))
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_14BB54C(*(a4 + 128));
      v16 = sub_19593CC(a4 + 128, v17);
      if (!sub_80A518(v9))
      {
LABEL_11:
        sub_EE913C(a1, v9, v16);
        if (*(a1 + 11))
        {
LABEL_16:
          sub_682344(v9, __p);
          v19 = *(v11 + 64);
          if (v19)
          {
            v20 = *(v11 + 56);
            v21 = *v19;
            if (v20 < *v19)
            {
              *(v11 + 56) = v20 + 1;
              v12 = *&v19[2 * v20 + 2];
              if (*(v12 + 23) < 0)
              {
                operator delete(*v12);
              }

              v13 = *__p;
              *(v12 + 16) = v29;
              *v12 = v13;
              goto LABEL_6;
            }

            if (v21 != *(v11 + 60))
            {
              *v19 = v21 + 1;
              v22 = *(v11 + 48);
              if (!v22)
              {
                goto LABEL_23;
              }

LABEL_20:
              *v24 = v23;
              v24[1] = sub_195A650;
              v25 = *__p;
              *(v23 + 16) = v29;
              *v23 = v25;
              __p[1] = 0;
              v29 = 0;
              __p[0] = 0;
              v26 = *(v11 + 56);
              v27 = *(v11 + 64) + 8 * v26;
              *(v11 + 56) = v26 + 1;
              *(v27 + 8) = v23;
              if (SHIBYTE(v29) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_6;
            }
          }

          else
          {
            v21 = *(v11 + 60);
          }

          sub_1959254(v11 + 48, v21 + 1);
          ++**(v11 + 64);
          v22 = *(v11 + 48);
          if (!v22)
          {
LABEL_23:
            operator new();
          }

          goto LABEL_20;
        }

LABEL_15:
        v18 = *(a4 + 324);
        *(v16 + 16) |= 0x400u;
        *(v16 + 96) = v18;
        goto LABEL_16;
      }
    }

    sub_EEAE70(a1, a2, v9, a3, v16);
    if (*(a1 + 11))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }
}

void sub_EEAE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EEAE70(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = sub_4DADB4(a3);
  v11 = nullsub_1(v10);
  v12 = sub_58BBC(v10);
  v13 = *(a5 + 16);
  if (*(a1 + 11) == 1)
  {
    v13 |= 0xC0000u;
    *(a5 + 132) = vmovn_s64(*v12);
  }

  v14 = v11[1];
  if (*v11 < 0)
  {
    v15 = -50;
  }

  else
  {
    v15 = 50;
  }

  v16 = *v11 / 100 + ((5243 * (v15 + *v11 % 100)) >> 19) + ((5243 * (v15 + *v11 % 100)) >> 31);
  if (v14 < 0)
  {
    v17 = -50;
  }

  else
  {
    v17 = 50;
  }

  *(a5 + 16) = v13 | 0x180;
  *(a5 + 80) = v16;
  *(a5 + 84) = v14 / 100 + ((5243 * (v17 + v14 % 100)) >> 19) + ((5243 * (v17 + v14 % 100)) >> 31);
  v18 = sub_681D38(a3);
  v19 = sub_ECB8AC(v18);
  *(a5 + 16) |= 0x800u;
  *(a5 + 100) = v19;
  v20 = *(a2 + 2008) + 360 * sub_80A4C8(a3);
  *(a5 + 16) |= 4u;
  v21 = *(a5 + 40);
  if (v21)
  {
    if (*(a1 + 13) == 1)
    {
      goto LABEL_11;
    }

LABEL_15:
    v25 = sub_68238C(a3);
    if (!sub_4D1F6C(v25))
    {
      goto LABEL_20;
    }

LABEL_16:
    v61 = a3;
    v26 = sub_6C6B88(v20);
    if (!v26)
    {
      goto LABEL_62;
    }

    goto LABEL_25;
  }

  v23 = *(a5 + 8);
  v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
  if (v23)
  {
    v21 = sub_14BB9FC(*v24);
    *(a5 + 40) = v21;
    if (*(a1 + 13) != 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v21 = sub_14BB9FC(v24);
    *(a5 + 40) = v21;
    if (*(a1 + 13) != 1)
    {
      goto LABEL_15;
    }
  }

LABEL_11:
  if (sub_6C7D24(v20))
  {
    v22 = *(a2 + 16);
  }

  else
  {
    LODWORD(v22) = sub_6C6B4C(v20);
  }

  *(v21 + 16) |= 1u;
  *(v21 + 96) = v22;
  v27 = sub_68238C(a3);
  if (sub_4D1F6C(v27))
  {
    goto LABEL_16;
  }

LABEL_20:
  v28 = sub_68238C(a3);
  v29 = *(v21 + 88);
  if (v29 && (v30 = *(v21 + 80), v30 < *v29))
  {
    *(v21 + 80) = v30 + 1;
    sub_64D110(v28, *&v29[2 * v30 + 2]);
    v61 = a3;
    v26 = sub_6C6B88(v20);
    if (!v26)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v31 = v28;
    sub_14BAE64(*(v21 + 72));
    v33 = sub_19593CC(v21 + 72, v32);
    sub_64D110(v31, v33);
    v61 = a3;
    v26 = sub_6C6B88(v20);
    if (!v26)
    {
      goto LABEL_62;
    }
  }

LABEL_25:
  v34 = 0;
  if (a4 == 1)
  {
    v35 = 16;
  }

  else
  {
    v35 = 256;
  }

  v36 = v26;
  do
  {
    while (1)
    {
      v37 = *(v21 + 40);
      if (v37 && (v38 = *(v21 + 32), v38 < *v37))
      {
        *(v21 + 32) = v38 + 1;
        v39 = *&v37[2 * v38 + 2];
      }

      else
      {
        v40 = sub_14BB8E8(*(v21 + 24));
        v39 = sub_19593CC(v21 + 24, v40);
      }

      v41 = sub_6C784C(v20, v34);
      *(v39 + 16) |= 1u;
      *(v39 + 48) = v41;
      v42 = sub_6C9088(v20, v34);
      *(v39 + 16) |= 2u;
      *(v39 + 49) = v42;
      v43 = sub_6C8244(v20, v34);
      v44 = *v43;
      v45 = v43[1];
      while (v44 != v45)
      {
        v48 = 128;
        switch(*v44)
        {
          case 1:
          case 7:
          case 0xA:
            goto LABEL_54;
          case 2:
          case 9:
          case 0xB:
            v48 = 2;
            v49 = *(v39 + 40);
            if (!v49)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 3:
            v48 = 64;
            v49 = *(v39 + 40);
            if (!v49)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 4:
            v48 = 4;
            v49 = *(v39 + 40);
            if (!v49)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 5:
            v48 = 32;
LABEL_54:
            v49 = *(v39 + 40);
            if (v49)
            {
              goto LABEL_55;
            }

            goto LABEL_36;
          case 6:
            v48 = 8;
            v49 = *(v39 + 40);
            if (!v49)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 8:
          case 0xC:
            v48 = 1;
            v49 = *(v39 + 40);
            if (!v49)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 0xD:
            v48 = v35;
            v49 = *(v39 + 40);
            if (!v49)
            {
              goto LABEL_36;
            }

LABEL_55:
            v50 = *(v39 + 32);
            if (v50 >= *v49)
            {
LABEL_36:
              v46 = sub_14BB984(*(v39 + 24));
              v47 = sub_19593CC(v39 + 24, v46);
            }

            else
            {
              *(v39 + 32) = v50 + 1;
              v47 = *&v49[2 * v50 + 2];
            }

            *(v47 + 16) |= 2u;
            *(v47 + 28) = v48;
            break;
          default:
            break;
        }

        ++v44;
      }

      if (!*(v39 + 32))
      {
        break;
      }

      if (++v34 == v36)
      {
        goto LABEL_62;
      }
    }

    v51 = *(v39 + 40);
    if (v51 && *v51 >= 1)
    {
      *(v39 + 32) = 1;
      v52 = *(v51 + 8);
    }

    else
    {
      v53 = sub_14BB984(*(v39 + 24));
      v52 = sub_19593CC(v39 + 24, v53);
    }

    *(v52 + 16) |= 2u;
    *(v52 + 28) = 1;
    ++v34;
  }

  while (v34 != v36);
LABEL_62:
  v54 = sub_681D7C(v61);
  v55 = *v54;
  v56 = *(v54 + 8);
  while (v55 != v56)
  {
    v59 = *(v21 + 64);
    if (v59 && (v60 = *(v21 + 56), v60 < *v59))
    {
      *(v21 + 56) = v60 + 1;
      v58 = *&v59[2 * v60 + 2];
    }

    else
    {
      sub_14BAE64(*(v21 + 48));
      v58 = sub_19593CC(v21 + 48, v57);
    }

    sub_64D110(v55, v58);
    v55 += 20;
  }
}

void sub_EEB3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1950D4C((a3 + 16), dword_278D0E8, 11, &off_2769CA8, 0);
  v7 = *(a2 + 1912);
  v8 = *(a2 + 1920);
  if (v7 != v8)
  {
    v9 = v6;
    do
    {
      v10 = *(a3 + 144);
      if (v10 && (v11 = *(a3 + 136), v11 < *v10))
      {
        *(a3 + 136) = v11 + 1;
        v12 = *&v10[2 * v11 + 2];
        sub_EE96B0(a1, v7, v12);
        if (*(a1 + 11))
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_14BB54C(*(a3 + 128));
        v12 = sub_19593CC(a3 + 128, v13);
        sub_EE96B0(a1, v7, v12);
        if (*(a1 + 11))
        {
          goto LABEL_19;
        }
      }

      if (*(a3 + 40) >= 0)
      {
        v14 = *(a3 + 324);
      }

      else
      {
        v14 = *(a3 + 320);
      }

      if (*(a3 + 44))
      {
        v15 = *(a3 + 324);
      }

      else
      {
        v15 = *(a3 + 320);
      }

      if (sub_682B0C(v7))
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      *(v12 + 16) |= 0x400u;
      *(v12 + 96) = v16;
LABEL_19:
      v17 = sub_681DA8(v7);
      v18 = *v17;
      v19 = *(v17 + 8);
      if (*v17 != v19)
      {
        while (1)
        {
          sub_67F320(v18, __p);
          v20 = *(v9 + 40);
          if (!v20)
          {
            break;
          }

          v21 = *(v9 + 32);
          v22 = *v20;
          if (v21 >= *v20)
          {
            if (v22 == *(v9 + 36))
            {
              goto LABEL_30;
            }

LABEL_31:
            *v20 = v22 + 1;
            v25 = *(v9 + 24);
            if (!v25)
            {
              operator new();
            }

            *v27 = v26;
            v27[1] = sub_195A650;
            v28 = *__p;
            *(v26 + 16) = v32;
            *v26 = v28;
            __p[1] = 0;
            v32 = 0;
            __p[0] = 0;
            v29 = *(v9 + 32);
            v30 = *(v9 + 40) + 8 * v29;
            *(v9 + 32) = v29 + 1;
            *(v30 + 8) = v26;
            if (SHIBYTE(v32) < 0)
            {
              operator delete(__p[0]);
            }

            v18 += 13;
            if (v18 == v19)
            {
              goto LABEL_3;
            }
          }

          else
          {
            *(v9 + 32) = v21 + 1;
            v23 = *&v20[2 * v21 + 2];
            if (*(v23 + 23) < 0)
            {
              operator delete(*v23);
            }

            v24 = *__p;
            *(v23 + 16) = v32;
            *v23 = v24;
            v18 += 13;
            if (v18 == v19)
            {
              goto LABEL_3;
            }
          }
        }

        v22 = *(v9 + 36);
LABEL_30:
        sub_1959254(v9 + 24, v22 + 1);
        v20 = *(v9 + 40);
        v22 = *v20;
        goto LABEL_31;
      }

LABEL_3:
      v7 += 112;
    }

    while (v7 != v8);
  }
}

void sub_EEB658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v15 = a1;
    operator delete(__p);
    a1 = v15;
  }

  _Unwind_Resume(a1);
}

void *sub_EEB678(void *a1, int *a2)
{
  result = sub_EA90C0(a1, a2);
  *result = &off_2674800;
  return result;
}

void sub_EEB6AC(void (***a1)(void, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  sub_EA7354(a1, a2, a3);
  v6 = sub_68E508(a2);
  *(a3 + 40) |= 0x40u;
  v7 = *(a3 + 8);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
  if (v7)
  {
    v8 = *v8;
  }

  sub_194EA1C((a3 + 752), v6, v8);
  v9 = sub_68E634(a2);
  *(a3 + 40) |= 0x80u;
  v10 = *(a3 + 8);
  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
  if (v10)
  {
    v11 = *v11;
  }

  sub_194EA1C((a3 + 760), v9, v11);
  v12 = sub_68EA58(a2);
  v13 = *(v12 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v12 + 8);
  }

  if (v13)
  {
    *(a3 + 40) |= 0x8000u;
    v14 = *(a3 + 824);
    if (!v14)
    {
      v15 = *(a3 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_14BAE64(v16);
      v14 = v17;
      *(a3 + 824) = v17;
    }

    v18 = sub_68EA58(a2);
    sub_64E090(v14, v18);
  }

  v19 = nullsub_1(a2);
  v20 = *v19;
  v21 = *(v19 + 8);
  if (*v19 != v21)
  {
    do
    {
      sub_EEB7EC(a1, v20, a3);
      v20 += 1582;
    }

    while (v20 != v21);
  }
}

void sub_EEB7EC(void (***a1)(void, uint64_t, uint64_t), void *a2, uint64_t a3)
{
  sub_EE83E8(a1, a2, a3);
  v6 = a2[942];
  v7 = a2[943];
  while (v6 != v7)
  {
    v10 = *(a3 + 384);
    if (v10 && (v11 = *(a3 + 376), v11 < *v10))
    {
      *(a3 + 376) = v11 + 1;
      v9 = *&v10[2 * v11 + 2];
    }

    else
    {
      sub_14BB54C(*(a3 + 368));
      v9 = sub_19593CC(a3 + 368, v8);
    }

    sub_EE96B0(a1, v6, v9);
    v6 += 112;
  }

  v12 = a2[939];
  v13 = a2[940];
  while (v12 != v13)
  {
    v16 = *(a3 + 384);
    if (v16 && (v17 = *(a3 + 376), v17 < *v16))
    {
      *(a3 + 376) = v17 + 1;
      v15 = *&v16[2 * v17 + 2];
    }

    else
    {
      sub_14BB54C(*(a3 + 368));
      v15 = sub_19593CC(a3 + 368, v14);
    }

    sub_EE913C(a1, v12, v15);
    v12 += 280;
  }

  v18 = a2[945];
  v19 = a2[946];
  while (v18 != v19)
  {
    v22 = *(a3 + 384);
    if (v22 && (v23 = *(a3 + 376), v23 < *v22))
    {
      *(a3 + 376) = v23 + 1;
      v21 = *&v22[2 * v23 + 2];
    }

    else
    {
      sub_14BB54C(*(a3 + 368));
      v21 = sub_19593CC(a3 + 368, v20);
    }

    sub_EE9D4C(a1, v18, v21);
    v18 += 214;
  }

  sub_EEBA18(a1, a2, a3);
}

void sub_EEB97C(void (***a1)(void, uint64_t, uint64_t), void *a2, uint64_t a3)
{
  v6 = nullsub_1(a2);
  v7 = -1189124953 * ((v6[1] - *v6) >> 4);
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a3 + 64) + 8 * v8 + 8);
      v10 = sub_68C454(a2, v8);
      sub_EEB7EC(a1, v10, v9);
      ++v8;
    }

    while (v7 != v8);
  }
}

void sub_EEBA18(void (***a1)(void, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 1112) - *(a2 + 1104);
  if (v3)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0x3795876FF3795877 * (v3 >> 3);
    do
    {
      v10 = sub_50EA30((a2 + 1104), v8);
      v11 = (v10 + 385);
      v12 = *(*(a3 + 72) + (v7 >> 29) + 8);
      if (!*(v10 + 386))
      {
        v11 = (a2 + 1097);
      }

      v13 = *v11;
      sub_EA93F4(a1, v10, *(*(a3 + 72) + (v7 >> 29) + 8));
      sub_EEBB64(a1, v10, v13, v12);
      (**a1)(a1, v10, v12);
      sub_EE8AD0(a1, v10, v12);
      sub_EE8E20(a1, v10, v12);
      ++v8;
      v7 += 0x100000000;
    }

    while (v9 != v8);
  }
}

void sub_EEBB64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1950D4C((a4 + 16), dword_278D0E8, 11, &off_2769CA8, 0);
  v9 = *(a2 + 1888);
  v10 = *(a2 + 1896);
  if (v9 != v10)
  {
    v11 = v8;
    while (!sub_80A4D8(v9))
    {
LABEL_6:
      v9 += 280;
      if (v9 == v10)
      {
        return;
      }
    }

    v14 = *(a4 + 144);
    if (v14 && (v15 = *(a4 + 136), v15 < *v14))
    {
      *(a4 + 136) = v15 + 1;
      v16 = *&v14[2 * v15 + 2];
      if (!sub_80A518(v9))
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_14BB54C(*(a4 + 128));
      v16 = sub_19593CC(a4 + 128, v17);
      if (!sub_80A518(v9))
      {
LABEL_11:
        sub_EE913C(a1, v9, v16);
        if (*(a1 + 11))
        {
LABEL_16:
          sub_682344(v9, __p);
          v19 = *(v11 + 64);
          if (v19)
          {
            v20 = *(v11 + 56);
            v21 = *v19;
            if (v20 < *v19)
            {
              *(v11 + 56) = v20 + 1;
              v12 = *&v19[2 * v20 + 2];
              if (*(v12 + 23) < 0)
              {
                operator delete(*v12);
              }

              v13 = *__p;
              *(v12 + 16) = v29;
              *v12 = v13;
              goto LABEL_6;
            }

            if (v21 != *(v11 + 60))
            {
              *v19 = v21 + 1;
              v22 = *(v11 + 48);
              if (!v22)
              {
                goto LABEL_23;
              }

LABEL_20:
              *v24 = v23;
              v24[1] = sub_195A650;
              v25 = *__p;
              *(v23 + 16) = v29;
              *v23 = v25;
              __p[1] = 0;
              v29 = 0;
              __p[0] = 0;
              v26 = *(v11 + 56);
              v27 = *(v11 + 64) + 8 * v26;
              *(v11 + 56) = v26 + 1;
              *(v27 + 8) = v23;
              if (SHIBYTE(v29) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_6;
            }
          }

          else
          {
            v21 = *(v11 + 60);
          }

          sub_1959254(v11 + 48, v21 + 1);
          ++**(v11 + 64);
          v22 = *(v11 + 48);
          if (!v22)
          {
LABEL_23:
            operator new();
          }

          goto LABEL_20;
        }

LABEL_15:
        v18 = *(a4 + 324);
        *(v16 + 16) |= 0x400u;
        *(v16 + 96) = v18;
        goto LABEL_16;
      }
    }

    sub_EEBDF4(a1, a2, v9, a3, v16);
    if (*(a1 + 11))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }
}

void sub_EEBDD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EEBDF4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = sub_4DADB4(a3);
  v11 = nullsub_1(v10);
  v12 = sub_58BBC(v10);
  v13 = *(a5 + 16);
  if (*(a1 + 11) == 1)
  {
    v13 |= 0xC0000u;
    *(a5 + 132) = vmovn_s64(*v12);
  }

  v14 = v11[1];
  if (*v11 < 0)
  {
    v15 = -50;
  }

  else
  {
    v15 = 50;
  }

  v16 = *v11 / 100 + ((5243 * (v15 + *v11 % 100)) >> 19) + ((5243 * (v15 + *v11 % 100)) >> 31);
  if (v14 < 0)
  {
    v17 = -50;
  }

  else
  {
    v17 = 50;
  }

  *(a5 + 16) = v13 | 0x180;
  *(a5 + 80) = v16;
  *(a5 + 84) = v14 / 100 + ((5243 * (v17 + v14 % 100)) >> 19) + ((5243 * (v17 + v14 % 100)) >> 31);
  v18 = sub_681D38(a3);
  v19 = sub_ECB8AC(v18);
  *(a5 + 16) |= 0x800u;
  *(a5 + 100) = v19;
  v20 = *(a2 + 2008) + 360 * sub_80A4C8(a3);
  *(a5 + 16) |= 4u;
  v21 = *(a5 + 40);
  if (v21)
  {
    if (*(a1 + 13) == 1)
    {
      goto LABEL_11;
    }

LABEL_15:
    v25 = sub_68238C(a3);
    if (!sub_4D1F6C(v25))
    {
      goto LABEL_20;
    }

LABEL_16:
    v61 = a3;
    v26 = sub_6C6B88(v20);
    if (!v26)
    {
      goto LABEL_62;
    }

    goto LABEL_25;
  }

  v23 = *(a5 + 8);
  v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
  if (v23)
  {
    v21 = sub_14BB9FC(*v24);
    *(a5 + 40) = v21;
    if (*(a1 + 13) != 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v21 = sub_14BB9FC(v24);
    *(a5 + 40) = v21;
    if (*(a1 + 13) != 1)
    {
      goto LABEL_15;
    }
  }

LABEL_11:
  if (sub_6C7D24(v20))
  {
    v22 = *(a2 + 16);
  }

  else
  {
    LODWORD(v22) = sub_6C6B4C(v20);
  }

  *(v21 + 16) |= 1u;
  *(v21 + 96) = v22;
  v27 = sub_68238C(a3);
  if (sub_4D1F6C(v27))
  {
    goto LABEL_16;
  }

LABEL_20:
  v28 = sub_68238C(a3);
  v29 = *(v21 + 88);
  if (v29 && (v30 = *(v21 + 80), v30 < *v29))
  {
    *(v21 + 80) = v30 + 1;
    sub_64D110(v28, *&v29[2 * v30 + 2]);
    v61 = a3;
    v26 = sub_6C6B88(v20);
    if (!v26)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v31 = v28;
    sub_14BAE64(*(v21 + 72));
    v33 = sub_19593CC(v21 + 72, v32);
    sub_64D110(v31, v33);
    v61 = a3;
    v26 = sub_6C6B88(v20);
    if (!v26)
    {
      goto LABEL_62;
    }
  }

LABEL_25:
  v34 = 0;
  if (a4 == 1)
  {
    v35 = 16;
  }

  else
  {
    v35 = 256;
  }

  v36 = v26;
  do
  {
    while (1)
    {
      v37 = *(v21 + 40);
      if (v37 && (v38 = *(v21 + 32), v38 < *v37))
      {
        *(v21 + 32) = v38 + 1;
        v39 = *&v37[2 * v38 + 2];
      }

      else
      {
        v40 = sub_14BB8E8(*(v21 + 24));
        v39 = sub_19593CC(v21 + 24, v40);
      }

      v41 = sub_6C784C(v20, v34);
      *(v39 + 16) |= 1u;
      *(v39 + 48) = v41;
      v42 = sub_6C9088(v20, v34);
      *(v39 + 16) |= 2u;
      *(v39 + 49) = v42;
      v43 = sub_6C8244(v20, v34);
      v44 = *v43;
      v45 = v43[1];
      while (v44 != v45)
      {
        v48 = 128;
        switch(*v44)
        {
          case 1:
          case 7:
          case 0xA:
            goto LABEL_54;
          case 2:
          case 9:
          case 0xB:
            v48 = 2;
            v49 = *(v39 + 40);
            if (!v49)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 3:
            v48 = 64;
            v49 = *(v39 + 40);
            if (!v49)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 4:
            v48 = 4;
            v49 = *(v39 + 40);
            if (!v49)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 5:
            v48 = 32;
LABEL_54:
            v49 = *(v39 + 40);
            if (v49)
            {
              goto LABEL_55;
            }

            goto LABEL_36;
          case 6:
            v48 = 8;
            v49 = *(v39 + 40);
            if (!v49)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 8:
          case 0xC:
            v48 = 1;
            v49 = *(v39 + 40);
            if (!v49)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 0xD:
            v48 = v35;
            v49 = *(v39 + 40);
            if (!v49)
            {
              goto LABEL_36;
            }

LABEL_55:
            v50 = *(v39 + 32);
            if (v50 >= *v49)
            {
LABEL_36:
              v46 = sub_14BB984(*(v39 + 24));
              v47 = sub_19593CC(v39 + 24, v46);
            }

            else
            {
              *(v39 + 32) = v50 + 1;
              v47 = *&v49[2 * v50 + 2];
            }

            *(v47 + 16) |= 2u;
            *(v47 + 28) = v48;
            break;
          default:
            break;
        }

        ++v44;
      }

      if (!*(v39 + 32))
      {
        break;
      }

      if (++v34 == v36)
      {
        goto LABEL_62;
      }
    }

    v51 = *(v39 + 40);
    if (v51 && *v51 >= 1)
    {
      *(v39 + 32) = 1;
      v52 = *(v51 + 8);
    }

    else
    {
      v53 = sub_14BB984(*(v39 + 24));
      v52 = sub_19593CC(v39 + 24, v53);
    }

    *(v52 + 16) |= 2u;
    *(v52 + 28) = 1;
    ++v34;
  }

  while (v34 != v36);
LABEL_62:
  v54 = sub_681D7C(v61);
  v55 = *v54;
  v56 = *(v54 + 8);
  while (v55 != v56)
  {
    v59 = *(v21 + 64);
    if (v59 && (v60 = *(v21 + 56), v60 < *v59))
    {
      *(v21 + 56) = v60 + 1;
      v58 = *&v59[2 * v60 + 2];
    }

    else
    {
      sub_14BAE64(*(v21 + 48));
      v58 = sub_19593CC(v21 + 48, v57);
    }

    sub_64D110(v55, v58);
    v55 += 20;
  }
}

void sub_EEC34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1950D4C((a3 + 16), dword_278D0E8, 11, &off_2769CA8, 0);
  v7 = *(a2 + 1912);
  v8 = *(a2 + 1920);
  if (v7 != v8)
  {
    v9 = v6;
    do
    {
      v10 = *(a3 + 144);
      if (v10 && (v11 = *(a3 + 136), v11 < *v10))
      {
        *(a3 + 136) = v11 + 1;
        v12 = *&v10[2 * v11 + 2];
        sub_EE96B0(a1, v7, v12);
        if (*(a1 + 11))
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_14BB54C(*(a3 + 128));
        v12 = sub_19593CC(a3 + 128, v13);
        sub_EE96B0(a1, v7, v12);
        if (*(a1 + 11))
        {
          goto LABEL_19;
        }
      }

      if (*(a3 + 40) >= 0)
      {
        v14 = *(a3 + 324);
      }

      else
      {
        v14 = *(a3 + 320);
      }

      if (*(a3 + 44))
      {
        v15 = *(a3 + 324);
      }

      else
      {
        v15 = *(a3 + 320);
      }

      if (sub_682B0C(v7))
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      *(v12 + 16) |= 0x400u;
      *(v12 + 96) = v16;
LABEL_19:
      v17 = sub_681DA8(v7);
      v18 = *v17;
      v19 = *(v17 + 8);
      if (*v17 != v19)
      {
        while (1)
        {
          sub_67F320(v18, __p);
          v20 = *(v9 + 40);
          if (!v20)
          {
            break;
          }

          v21 = *(v9 + 32);
          v22 = *v20;
          if (v21 >= *v20)
          {
            if (v22 == *(v9 + 36))
            {
              goto LABEL_30;
            }

LABEL_31:
            *v20 = v22 + 1;
            v25 = *(v9 + 24);
            if (!v25)
            {
              operator new();
            }

            *v27 = v26;
            v27[1] = sub_195A650;
            v28 = *__p;
            *(v26 + 16) = v32;
            *v26 = v28;
            __p[1] = 0;
            v32 = 0;
            __p[0] = 0;
            v29 = *(v9 + 32);
            v30 = *(v9 + 40) + 8 * v29;
            *(v9 + 32) = v29 + 1;
            *(v30 + 8) = v26;
            if (SHIBYTE(v32) < 0)
            {
              operator delete(__p[0]);
            }

            v18 += 13;
            if (v18 == v19)
            {
              goto LABEL_3;
            }
          }

          else
          {
            *(v9 + 32) = v21 + 1;
            v23 = *&v20[2 * v21 + 2];
            if (*(v23 + 23) < 0)
            {
              operator delete(*v23);
            }

            v24 = *__p;
            *(v23 + 16) = v32;
            *v23 = v24;
            v18 += 13;
            if (v18 == v19)
            {
              goto LABEL_3;
            }
          }
        }

        v22 = *(v9 + 36);
LABEL_30:
        sub_1959254(v9 + 24, v22 + 1);
        v20 = *(v9 + 40);
        v22 = *v20;
        goto LABEL_31;
      }

LABEL_3:
      v7 += 112;
    }

    while (v7 != v8);
  }
}

void sub_EEC5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v15 = a1;
    operator delete(__p);
    a1 = v15;
  }

  _Unwind_Resume(a1);
}

void sub_EEC5FC()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  LODWORD(v2) = 0;
  HIBYTE(v4[0]) = 14;
  strcpy(v3, "ROUTES_THROUGH");
  LODWORD(v4[1]) = 1;
  v6 = 9;
  strcpy(v5, "ROUTES_TO");
  LODWORD(v7) = 3;
  v9 = 11;
  strcpy(__p, "ROUTES_FROM");
  LODWORD(v10) = 2;
  xmmword_27BE340 = 0u;
  *algn_27BE350 = 0u;
  dword_27BE360 = 1065353216;
  sub_3A9A34(&xmmword_27BE340, v0);
  sub_3A9A34(&xmmword_27BE340, v3);
  sub_3A9A34(&xmmword_27BE340, v5);
  sub_3A9A34(&xmmword_27BE340, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_3:
      if ((SHIBYTE(v4[0]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v5[0]);
  if ((SHIBYTE(v4[0]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27BD2E0 = 0;
    qword_27BD2E8 = 0;
    qword_27BD2D8 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_EEF830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SLOBYTE(STACK[0x377]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x378]);
  if ((SLOBYTE(STACK[0x377]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(STACK[0x360]);
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((SLOBYTE(STACK[0x347]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x348]);
  if ((SLOBYTE(STACK[0x347]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(STACK[0x330]);
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((SLOBYTE(STACK[0x317]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x318]);
  if ((SLOBYTE(STACK[0x317]) & 0x80000000) == 0)
  {
LABEL_8:
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(STACK[0x300]);
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SLOBYTE(STACK[0x2E7]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(STACK[0x2E8]);
  if ((SLOBYTE(STACK[0x2E7]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(STACK[0x2D0]);
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SLOBYTE(STACK[0x2B7]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(STACK[0x2B8]);
  if ((SLOBYTE(STACK[0x2B7]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(STACK[0x2A0]);
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SLOBYTE(STACK[0x287]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(STACK[0x288]);
  if ((SLOBYTE(STACK[0x287]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SLOBYTE(STACK[0x26F]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(STACK[0x270]);
  if ((SLOBYTE(STACK[0x26F]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(STACK[0x258]);
  if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SLOBYTE(STACK[0x23F]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(STACK[0x240]);
  if ((SLOBYTE(STACK[0x23F]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(STACK[0x228]);
  if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SLOBYTE(STACK[0x20F]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(STACK[0x210]);
  if ((SLOBYTE(STACK[0x20F]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((a74 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(a75);
  if ((a74 & 0x80000000) == 0)
  {
LABEL_20:
    if ((a72 & 0x80000000) == 0)
    {
LABEL_42:
      if (a68 < 0)
      {
        operator delete(a63);
      }

      _Unwind_Resume(a1);
    }

LABEL_41:
    operator delete(a69);
    goto LABEL_42;
  }

LABEL_40:
  operator delete(a73);
  if ((a72 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  goto LABEL_41;
}

void sub_EEFAC8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  a1[1] = a2;
  a1[2] = sub_3AF6B4(a2);
  v6 = a1[1];
  v9[23] = 15;
  strcpy(v9, "ResponseBuilder");
  memset(v8, 0, sizeof(v8));
  v7 = sub_3AEC94(v6, v9, v8);
  sub_41D60C(v7, 3u, a4, &v10);
  sub_EFBBD4();
}

void sub_EEFE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_EEFE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1757EA4(a5, 0, 0);
  v10 = *(a2 + 8);
  if (*a2 == v10)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
LABEL_69:
      *(a5 + 40) |= 0x400000u;
      v60 = 20;
      goto LABEL_70;
    }

    sub_19594F8(&v68);
    sub_4A5C(&v68, "No routes found", 15);
    if ((v78 & 0x10) != 0)
    {
      v62 = v77;
      if (v77 < v74)
      {
        v77 = v74;
        v62 = v74;
      }

      v63 = v73;
      v41 = v62 - v73;
      if (v62 - v73 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_72;
      }
    }

    else
    {
      if ((v78 & 8) == 0)
      {
        v41 = 0;
        v67 = 0;
LABEL_64:
        *(&__dst + v41) = 0;
        sub_7E854(&__dst, 1u);
        if (v67 < 0)
        {
          operator delete(__dst);
        }

        if (v76 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v70);
        std::ostream::~ostream();
        result = std::ios::~ios();
        goto LABEL_69;
      }

      v63 = v71;
      v41 = v72 - v71;
      if ((v72 - v71) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_72:
        sub_3244();
      }
    }

    if (v41 >= 0x17)
    {
      operator new();
    }

    v67 = v41;
    if (v41)
    {
      memmove(&__dst, v63, v41);
    }

    goto LABEL_64;
  }

  v65 = a4;
  v11 = 0;
  v12 = 0x4FBCDA3AC10C9715 * ((v10 - *a2) >> 7);
  do
  {
    v13 = *a2;
    v14 = *(a5 + 296);
    if (v14 && (v15 = *(a5 + 288), v15 < *v14))
    {
      *(a5 + 288) = v15 + 1;
      v16 = *&v14[2 * v15 + 2];
    }

    else
    {
      v17 = sub_14BD4AC(*(a5 + 280));
      v16 = sub_19593CC(a5 + 280, v17);
    }

    v18 = (v13 + 7808 * v11);
    v19 = sub_68DB24(v18);
    v20 = v19;
    v21 = *a3;
    v22 = a3[1];
    if (*a3 != v22)
    {
      while (*v21 != v19)
      {
        v21 += 8;
        if (v21 == v22)
        {
          goto LABEL_12;
        }
      }
    }

    if (v21 == v22)
    {
LABEL_12:
      if (v22 >= a3[2])
      {
        sub_3E441C(a3);
        v23 = v24;
      }

      else
      {
        *v22 = -1;
        *(v22 + 16) = 0;
        *(v22 + 24) = 0;
        v23 = v22 + 32;
        *(v22 + 8) = 0;
      }

      a3[1] = v23;
      *(v23 - 32) = v20;
      v21 = (v23 - 32);
    }

    sub_EF05E0(a1, v18, v11++, v16, v21);
  }

  while (v11 != v12);
  sub_EF0BB0(a1, a5);
  sub_EF0D24(a1, a4, a5);
  v26 = *(a4 + 1088);
  for (i = *(a4 + 1096); v26 != i; v26 += 1120)
  {
    v28 = *(a5 + 136);
    if (v28 && (v29 = *(a5 + 128), v29 < *v28))
    {
      *(a5 + 128) = v29 + 1;
      v30 = *&v28[2 * v29 + 2];
    }

    else
    {
      v31 = sub_14BDE5C(*(a5 + 120));
      v30 = sub_19593CC(a5 + 120, v31);
    }

    sub_EC6F6C(v26, v30, 1, v25);
  }

  sub_EF0E80(a1, v65 + 1112, a5);
  v32 = sub_3B2A90(*(a1 + 8));
  v33 = *a2;
  v34 = *(a2 + 8);
  if (*a2 == v34)
  {
LABEL_29:
    v39 = 1;
  }

  else
  {
    v35 = v32;
    while (1)
    {
      v36 = nullsub_1(v33);
      v37 = *v36;
      v38 = v36[1];
      if (*v36 != v38)
      {
        break;
      }

LABEL_28:
      v33 += 7808;
      if (v33 == v34)
      {
        goto LABEL_29;
      }
    }

    while (sub_4B7810(v35, v37, *(*a1 + 40)) == 2)
    {
      v37 += 12656;
      if (v37 == v38)
      {
        goto LABEL_28;
      }
    }

    v39 = 0;
  }

  *(a5 + 40) |= 0x4000000u;
  *(a5 + 565) = v39;
  v42 = *a2;
  v43 = *(a2 + 8);
  if (*a2 == v43)
  {
LABEL_40:
    v47 = 0;
  }

  else
  {
    while (1)
    {
      v44 = nullsub_1(v42);
      v45 = *v44;
      v46 = *(v44 + 8);
      if (*v44 != v46)
      {
        break;
      }

LABEL_39:
      v42 += 7808;
      if (v42 == v43)
      {
        goto LABEL_40;
      }
    }

    while (1)
    {
      sub_4D1DDC(v45, &v68);
      __dst = a1;
      if (sub_F11230(v68, v69, v70.__locale_, v71, &__dst))
      {
        break;
      }

      v45 += 1582;
      if (v45 == v46)
      {
        goto LABEL_39;
      }
    }

    v47 = 1;
  }

  *(a5 + 40) |= 0x10000000u;
  *(a5 + 567) = v47;
  v48 = *a1;
  if (**a1 == 1)
  {
    sub_ECD4F0(*(a1 + 16), a2, a5);
    v48 = *a1;
  }

  v49 = *(v48 + 176);
  if (v49 == *(v48 + 184) || *v49 != 2 || *(a1 + 85) != 1)
  {
    *(a5 + 40) |= 0x20000u;
    v50 = *(a5 + 512);
    if (v50)
    {
      v51 = 0;
      goto LABEL_53;
    }

    v51 = 0;
    v52 = (a5 + 512);
    v53 = *(a5 + 8);
    v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
    if (v53)
    {
      goto LABEL_74;
    }

    goto LABEL_52;
  }

  *(a5 + 40) |= 0x20000u;
  v50 = *(a5 + 512);
  if (!v50)
  {
    v52 = (a5 + 512);
    v64 = *(a5 + 8);
    v54 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
    v51 = 1;
    if (v64)
    {
LABEL_74:
      v54 = *v54;
    }

LABEL_52:
    v50 = sub_14BF800(v54);
    *v52 = v50;
    goto LABEL_53;
  }

  v51 = 1;
LABEL_53:
  *(v50 + 16) |= 1u;
  *(v50 + 24) = v51;
  v55 = sub_1950D4C((a5 + 16), dword_278CFF0, 11, &off_2769490, 0);
  v56 = sub_68C454(*a2, 0);
  *(v55 + 16) |= 1u;
  v57 = *(v55 + 8);
  v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
  if (v57)
  {
    v58 = *v58;
  }

  sub_194EA1C((v55 + 48), (v56 + 7464), v58);
  v59 = sub_3AF114(*(a1 + 8));
  result = sub_2D5630(*v59);
  v60 = 0;
  v61 = *(a5 + 40);
  *(a5 + 566) = result;
  *(a5 + 40) = v61 | 0x8400000;
LABEL_70:
  *(a5 + 552) = v60;
  return result;
}

void sub_EF04E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1959728(&a17);
    sub_1758FB8(v17);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a17);
  sub_1758FB8(v17);
  _Unwind_Resume(a1);
}

void sub_EF05E0(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_68EF04(a2);
  v11 = sub_EC7E9C(v10);
  *(a4 + 40) |= 0x100u;
  *(a4 + 288) = v11;
  v12 = sub_68DB24(a2);
  *(a4 + 40) |= 0x40u;
  *(a4 + 280) = v12;
  v13 = sub_68F8AC();
  v14 = sub_EC7E7C(v13);
  *(a4 + 40) |= 0x80u;
  *(a4 + 284) = v14;
  v15 = sub_68D7F4(a2);
  v16 = sub_ECA8CC(v15);
  *(a4 + 40) |= 0x200u;
  *(a4 + 292) = v16;
  v17 = sub_68F890(a2);
  *(a4 + 40) |= 0x800u;
  v18 = *(a5 + 8);
  *(a4 + 300) = v17;
  v19 = 0x8E38E38E38E38E39 * ((*(a5 + 16) - v18) >> 3);
  if (v19 != sub_68C590(a2))
  {
    v20 = sub_68C590(a2);
    v21 = *(a5 + 8);
    v22 = *(a5 + 16);
    v23 = 0x8E38E38E38E38E39 * ((v22 - v21) >> 3);
    if (v20 <= v23)
    {
      if (v20 < v23)
      {
        v24 = v21 + 72 * v20;
        while (v22 != v24)
        {
          v22 -= 72;
          sub_3E4690(v22);
        }

        *(a5 + 16) = v24;
      }
    }

    else
    {
      sub_3E4818((a5 + 8), v20 - v23);
    }
  }

  v25 = nullsub_1(a2);
  v26 = v25[1] - *v25;
  if (v26)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0x5DDB1ADCB91F64A7 * (v26 >> 4);
    do
    {
      v32 = sub_68C454(a2, v28);
      v33 = sub_68D7F4(a2);
      v34 = *(a4 + 64);
      if (v34 && (v35 = *(a4 + 56), v35 < *v34))
      {
        *(a4 + 56) = v35 + 1;
        v31 = *&v34[2 * v35 + 2];
      }

      else
      {
        v30 = sub_14BD738(*(a4 + 48));
        v31 = sub_19593CC(a4 + 48, v30);
      }

      sub_EF0F6C(a1, v32, v33, a3, v28++, v31);
      v27 += 72;
    }

    while (v29 != v28);
  }

  sub_EF14D4(a1, a2, a4);
  v36 = sub_68C7DC(a2);
  if (v36 < 0)
  {
    v37 = -50;
  }

  else
  {
    v37 = 50;
  }

  v38 = *(a4 + 40);
  *(a4 + 296) = v36 / 100 + ((5243 * (v37 + v36 % 100)) >> 19) + ((5243 * (v37 + v36 % 100)) >> 31);
  *(a4 + 40) = v38 | 0x401;
  v39 = *(a4 + 232);
  if (!v39)
  {
    v40 = *(a4 + 8);
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    v39 = sub_14BCA7C(v41);
    *(a4 + 232) = v39;
  }

  if (*(a1 + 83))
  {
    v42 = 2;
  }

  else
  {
    v42 = 0;
  }

  sub_EF1590(a1, a2, v42, v39);
  *(a4 + 40) |= 0x20u;
  v43 = *(a4 + 272);
  if (!v43)
  {
    v44 = *(a4 + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    v43 = sub_14BCA7C(v45);
    *(a4 + 272) = v43;
  }

  sub_EF1590(a1, a2, 5, v43);
  *(a4 + 40) |= 2u;
  v46 = *(a4 + 240);
  if (v46)
  {
    if (sub_68D828(a2, 4))
    {
LABEL_31:
      v47 = 0;
      goto LABEL_36;
    }
  }

  else
  {
    v48 = *(a4 + 8);
    v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
    if (v48)
    {
      v49 = *v49;
    }

    v46 = sub_14BCAFC(v49);
    *(a4 + 240) = v46;
    if (sub_68D828(a2, 4))
    {
      goto LABEL_31;
    }
  }

  v47 = sub_68D828(a2, 9) ^ 1;
LABEL_36:
  *(v46 + 16) |= 1u;
  *(v46 + 24) = v47;
  v50 = sub_68D828(a2, 5);
  *(v46 + 16) |= 2u;
  *(v46 + 25) = v50 ^ 1;
  sub_EF1848(a1, a2, a3, a4);
  *__p = 0u;
  *v69 = 0u;
  v70 = 1065353216;
  sub_EF1A00(a1, a2, __p, a4);
  sub_EF1FD0(a1, a2, a4);
  sub_EF21A0(a1, a2, a4);
  sub_EF2320(a1, a2, a4, __p);
  sub_EF2510(a1, a2, __p, a4);
  sub_EF2658(a1, a2, a4);
  v51 = sub_68E830(a2);
  v52 = *v51;
  v53 = v51[1];
  if (*v51 != v53)
  {
    do
    {
      v54 = *(a4 + 208);
      if (v54 && (v55 = *(a4 + 200), v55 < *v54))
      {
        *(a4 + 200) = v55 + 1;
        v56 = *&v54[2 * v55 + 2];
      }

      else
      {
        sub_14BDC34(*(a4 + 192));
        v56 = sub_19593CC(a4 + 192, v57);
      }

      sub_EB1F70(v52, __p, *a1, v56);
      v52 += 816;
    }

    while (v52 != v53);
  }

  v58 = sub_68F744(a2);
  v59 = *v58;
  v60 = *(v58 + 8);
  while (v59 != v60)
  {
    v62 = sub_97230(*v59);
    v63 = v62;
    v64 = *(a4 + 216);
    if (v64 == *(a4 + 220))
    {
      v61 = v64 + 1;
      sub_1958E5C((a4 + 216), v64 + 1);
      *(*(a4 + 224) + 4 * v64) = v63;
    }

    else
    {
      *(*(a4 + 224) + 4 * v64) = v62;
      v61 = v64 + 1;
    }

    *(a4 + 216) = v61;
    ++v59;
  }

  v65 = v69[0];
  if (v69[0])
  {
    do
    {
      v67 = *v65;
      if (*(v65 + 39) < 0)
      {
        operator delete(v65[2]);
      }

      operator delete(v65);
      v65 = v67;
    }

    while (v67);
  }

  v66 = __p[0];
  __p[0] = 0;
  if (v66)
  {
    operator delete(v66);
  }
}

void sub_EF0BB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 288);
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v8 = *(*(a2 + 296) + 8 * v4 + 8);
      v9 = *(v8 + 56);
      if (v9 >= 1)
      {
        break;
      }

      v7 = v5;
LABEL_4:
      ++v4;
      v5 = v7;
      if (v4 == v2)
      {
        return;
      }
    }

    v10 = 0;
    while (1)
    {
      v11 = *(*(v8 + 64) + 8 * v10 + 8);
      *(v11 + 40) |= 4u;
      v12 = *(v11 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v18 = 4;
      LODWORD(__p) = v6;
      BYTE4(__p) = 0;
      sub_194EA1C((v11 + 720), &__p, v13);
      if (v18 < 0)
      {
        operator delete(__p);
        v14 = *(v11 + 64);
        if (v14 >= 1)
        {
LABEL_15:
          v15 = (*(v11 + 72) + 8);
          do
          {
            v16 = *v15++;
            v7 = (v5 + 1);
            *(v16 + 40) |= 0x400u;
            *(v16 + 256) = v5;
            LODWORD(v5) = v5 + 1;
            --v14;
          }

          while (v14);
          goto LABEL_8;
        }
      }

      else
      {
        v14 = *(v11 + 64);
        if (v14 >= 1)
        {
          goto LABEL_15;
        }
      }

      v7 = v5;
LABEL_8:
      ++v6;
      ++v10;
      v5 = v7;
      if (v10 == v9)
      {
        goto LABEL_4;
      }
    }
  }
}

void sub_EF0D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v15 = a1;
    operator delete(__p);
    a1 = v15;
  }

  _Unwind_Resume(a1);
}

void sub_EF0D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) |= 0x10000u;
  v4 = *(a3 + 504);
  if (v4)
  {
    v5 = *(a2 + 1064);
    i = *(a2 + 1072);
    if (v5 == i)
    {
      return;
    }

    goto LABEL_9;
  }

  v8 = *(a3 + 8);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
  if (v8)
  {
    v9 = *v9;
  }

  v4 = sub_14BCF4C(v9);
  *(a3 + 504) = v4;
  v5 = *(a2 + 1064);
  for (i = *(a2 + 1072); v5 != i; v5 += 496)
  {
LABEL_9:
    *__p = 0u;
    *v18 = 0u;
    v19 = 1065353216;
    v10 = *(v4 + 88);
    if (v10 && (v11 = *(v4 + 80), v11 < *v10))
    {
      *(v4 + 80) = v11 + 1;
      v12 = *&v10[2 * v11 + 2];
    }

    else
    {
      v13 = sub_14BCE94(*(v4 + 72));
      v12 = sub_19593CC(v4 + 72, v13);
    }

    sub_EC74E8(v5, __p, v12);
    v14 = v18[0];
    if (v18[0])
    {
      do
      {
        v16 = *v14;
        if (*(v14 + 39) < 0)
        {
          operator delete(v14[2]);
        }

        operator delete(v14);
        v14 = v16;
      }

      while (v16);
    }

    v15 = __p[0];
    __p[0] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }
}

void sub_EF0E80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (sub_5CC07C(a2))
  {
    *(a3 + 40) |= 0x40000u;
    v6 = *(a3 + 520);
    if (!v6)
    {
      v7 = *(a3 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_14BDC34(v8);
      v6 = v9;
      *(a3 + 520) = v9;
    }

    *__p = 0u;
    *v14 = 0u;
    v15 = 1065353216;
    sub_EB1F70(a2, __p, *a1, v6);
    v10 = v14[0];
    if (v14[0])
    {
      do
      {
        v12 = *v10;
        if (*(v10 + 39) < 0)
        {
          operator delete(v10[2]);
        }

        operator delete(v10);
        v10 = v12;
      }

      while (v12);
    }

    v11 = __p[0];
    __p[0] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }
}

void sub_EF0F6C(uint64_t *a1, uint64_t a2, int a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = sub_ECA8CC(a3);
  *(a6 + 40) |= 0x1000000u;
  *(a6 + 884) = v11;
  v12 = sub_EC7E7C(*(a2 + 1096));
  *(a6 + 40) |= 0x200000u;
  *(a6 + 872) = v12;
  v13 = sub_EC7E9C(*(a2 + 1097));
  *(a6 + 40) |= 0x2000000u;
  *(a6 + 888) = v13;
  v14 = sub_4D1DB8(a2);
  if (v14 < 0)
  {
    v15 = -50;
  }

  else
  {
    v15 = 50;
  }

  *(a6 + 40) |= 0x400000u;
  *(a6 + 876) = v14 / 100 + ((5243 * (v15 + v14 % 100)) >> 19) + ((5243 * (v15 + v14 % 100)) >> 31);
  sub_EF44A0(a1, a2, a6);
  sub_EF4750(a1, a2, a6);
  if (sub_4D20B0(a2, 4))
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_4D20B0(a2, 9) ^ 1;
  }

  *(a6 + 44) |= 1u;
  *(a6 + 916) = v16;
  v17 = sub_4D20B0(a2, 5);
  *(a6 + 44) |= 2u;
  *(a6 + 917) = v17 ^ 1;
  if (*(a2 + 12344) == *(a2 + 12352))
  {
    sub_EC6B44((a2 + 7392), a6);
  }

  else
  {
    sub_ECA0F4((a2 + 12344), a6);
  }

  sub_EF48A0(a1, a2, a4, a5, a6);
  sub_EF4A88(a1, a2, a6);
  sub_EF4B5C(a1, a2, a6);
  if (*(a2 + 12024) != *(a2 + 12032) && *(a2 + 12008) != 0x7FFFFFFFFFFFFFFFLL && *(a2 + 12016) != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(a6 + 40) |= 0x4000u;
    v18 = *(a6 + 816);
    if (!v18)
    {
      v19 = *(a6 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      sub_14BBF6C(v20);
      v18 = v21;
      *(a6 + 816) = v21;
    }

    sub_EC8758((a2 + 12008), v18);
  }

  sub_EF938C(a1, a2, a6);
  sub_EF9980(a1, a2, a6);
  sub_EF5DF0(a1, a2, a6);
  sub_EF5FE8(a1, a2, a6);
  v22 = *(a2 + 12376);
  v23 = *(a2 + 12384);
  if (v22 != v23)
  {
    v24 = (a6 + 560);
    do
    {
      while (1)
      {
        v25 = *v22 < 0 ? -50 : 50;
        v26 = *v22 / 100 + ((5243 * (v25 + *v22 % 100)) >> 19) + ((5243 * (v25 + *v22 % 100)) >> 31);
        v27 = *(a6 + 584);
        if (v27 == *(a6 + 588))
        {
          v28 = v27 + 1;
          sub_1958E5C((a6 + 584), v27 + 1);
          *(*(a6 + 592) + 4 * v27) = v26;
        }

        else
        {
          *(*(a6 + 592) + 4 * v27) = v26;
          v28 = v27 + 1;
        }

        *(a6 + 584) = v28;
        v29 = *(v22 + 8) ? 1 : 2;
        v30 = *(a6 + 560);
        if (v30 != *(a6 + 564))
        {
          break;
        }

        sub_1958E5C((a6 + 560), v30 + 1);
        *(*(a6 + 568) + 4 * v30) = v29;
        *v24 = v30 + 1;
        v22 += 16;
        if (v22 == v23)
        {
          goto LABEL_32;
        }
      }

      *(*(a6 + 568) + 4 * v30) = v29;
      *v24 = v30 + 1;
      v22 += 16;
    }

    while (v22 != v23);
  }

LABEL_32:
  v31 = *(a2 + 10176);
  for (i = *(a2 + 10184); v31 != i; v31 += 616)
  {
    while (1)
    {
      v35 = *(a6 + 624);
      if (v35)
      {
        v36 = *(a6 + 616);
        if (v36 < *v35)
        {
          break;
        }
      }

      v33 = sub_14BA560(*(a6 + 608));
      v34 = sub_19593CC(a6 + 608, v33);
      sub_ECB328(v31, v34);
      v31 += 616;
      if (v31 == i)
      {
        goto LABEL_38;
      }
    }

    *(a6 + 616) = v36 + 1;
    sub_ECB328(v31, *&v35[2 * v36 + 2]);
  }

LABEL_38:
  v37 = *(a2 + 10152);
  for (j = *(a2 + 10160); v37 != j; v37 += 616)
  {
    while (1)
    {
      v41 = *(a6 + 648);
      if (v41)
      {
        v42 = *(a6 + 640);
        if (v42 < *v41)
        {
          break;
        }
      }

      v39 = sub_14BA560(*(a6 + 632));
      v40 = sub_19593CC(a6 + 632, v39);
      sub_ECB328(v37, v40);
      v37 += 616;
      if (v37 == j)
      {
        goto LABEL_44;
      }
    }

    *(a6 + 640) = v42 + 1;
    sub_ECB328(v37, *&v41[2 * v42 + 2]);
  }

LABEL_44:
  v43 = *(a2 + 10200);
  for (k = *(a2 + 10208); v43 != k; v43 += 616)
  {
    while (1)
    {
      v47 = *(a6 + 624);
      if (v47)
      {
        v48 = *(a6 + 616);
        if (v48 < *v47)
        {
          break;
        }
      }

      v45 = sub_14BA560(*(a6 + 608));
      v46 = sub_19593CC(a6 + 608, v45);
      sub_ECB328(v43, v46);
      v43 += 616;
      if (v43 == k)
      {
        goto LABEL_50;
      }
    }

    *(a6 + 616) = v48 + 1;
    sub_ECB328(v43, *&v47[2 * v48 + 2]);
  }

LABEL_50:

  sub_EF6160(a1, a2, a6);
}

void sub_EF14D4(uint64_t *a1, void *a2, uint64_t a3)
{
  if (sub_68EC38(a2, *(*a1 + 39)))
  {
    v6 = sub_58BBC(a2);
    v7 = *v6;
    v8 = v6[1];
    while (v7 != v8)
    {
      v11 = *a1;
      v12 = *(a3 + 88);
      if (v12 && (v13 = *(a3 + 80), v13 < *v12))
      {
        *(a3 + 80) = v13 + 1;
        v10 = *&v12[2 * v13 + 2];
      }

      else
      {
        v9 = sub_16F5CD4(*(a3 + 72));
        v10 = sub_19593CC(a3 + 72, v9);
      }

      sub_ECAE3C(v7, v11, v10);
      v7 += 176;
    }
  }
}

uint64_t sub_EF1590(uint64_t a1, unsigned int **a2, int a3, _DWORD *a4)
{
  v7 = sub_4E4880(a2, 0, a3);
  v8 = sub_68C850(a2);
  if (v8 + v7 < 0 != __OFADD__(v8, v7))
  {
    v9 = -5;
  }

  else
  {
    v9 = 5;
  }

  a4[4] |= 1u;
  a4[6] = (v8 + v7) / 10 + (((103 * (v9 + (v8 + v7) % 10)) >> 15) & 1) + ((103 * (v9 + (v8 + v7) % 10)) >> 10);
  if (sub_68C99C(a2))
  {
    v11 = sub_4E4C04(a2, 2, a3);
    if (v11 < 0)
    {
      v12 = -5;
    }

    else
    {
      v12 = 5;
    }

    a4[4] |= 2u;
    a4[7] = v11 / 10 + (((103 * (v12 + v11 % 10)) >> 15) & 1) + ((103 * (v12 + v11 % 10)) >> 10);
    if (!sub_68C900(a2))
    {
LABEL_6:
      if (!sub_68CA38(a2))
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if (!sub_68C900(a2))
  {
    goto LABEL_6;
  }

  v13 = sub_4E4C04(a2, 1, a3);
  if (v13 < 0)
  {
    v14 = -5;
  }

  else
  {
    v14 = 5;
  }

  a4[4] |= 4u;
  a4[8] = v13 / 10 + (((103 * (v14 + v13 % 10)) >> 15) & 1) + ((103 * (v14 + v13 % 10)) >> 10);
  if (!sub_68CA38(a2))
  {
LABEL_7:
    result = sub_68CAD4(a2);
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_17:
  v15 = sub_4E4C04(a2, 4, a3);
  if (v15 < 0)
  {
    v16 = -5;
  }

  else
  {
    v16 = 5;
  }

  a4[4] |= 8u;
  a4[9] = v15 / 10 + (((103 * (v16 + v15 % 10)) >> 15) & 1) + ((103 * (v16 + v15 % 10)) >> 10);
  result = sub_68CAD4(a2);
  if (result)
  {
LABEL_21:
    result = sub_4E4C04(a2, 5, a3);
    if (result < 0)
    {
      v17 = -5;
    }

    else
    {
      v17 = 5;
    }

    a4[4] |= 0x10u;
    a4[10] = result / 10 + (((103 * (v17 + result % 10)) >> 15) & 1) + ((103 * (v17 + result % 10)) >> 10);
  }

  return result;
}

void sub_EF1848(_BYTE *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v8 = nullsub_1(a2);
  v9 = v8[1] - *v8;
  if (v9)
  {
    v10 = 0;
    v11 = 0x5DDB1ADCB91F64A7 * (v9 >> 4);
    while (1)
    {
      v12 = sub_68C454(a2, v10);
      v13 = *(v12 + 10320);
      v14 = *(v12 + 10328);
      if (v13 != v14)
      {
        break;
      }

LABEL_3:
      if (++v10 == v11)
      {
        return;
      }
    }

    v15 = v12;
    while (1)
    {
      if (!sub_6834F4(v13))
      {
        goto LABEL_6;
      }

      v16 = sub_4D1DC0(v15);
      v17 = *(v13 + 8);
      if (v17 >= v16 || v17 == v16 - 1 && sub_4D2140(v15) < 0x3B9ACA00)
      {
        goto LABEL_6;
      }

      if (sub_683A0C(v13))
      {
        if (a1[24])
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (!sub_445A90(v13))
        {
          if (!sub_683864(v13) && !sub_683854(v13) || a1[26] != 1)
          {
            goto LABEL_6;
          }

LABEL_20:
          sub_EF3FF0(a3, v10, v13, &__p);
          sub_EF34B4(a1, v13, &__p.__r_.__value_.__l.__data_, a4);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_6;
        }

        if (a1[25])
        {
          goto LABEL_20;
        }
      }

LABEL_6:
      v13 += 104;
      if (v13 == v14)
      {
        goto LABEL_3;
      }
    }
  }
}

void sub_EF19E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EF1A00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a3 + 24))
  {
    v6 = *(a3 + 16);
    if (v6)
    {
      do
      {
        v75 = *v6;
        if (*(v6 + 39) < 0)
        {
          operator delete(v6[2]);
        }

        operator delete(v6);
        v6 = v75;
      }

      while (v75);
    }

    v5[2] = 0;
    v7 = v5[1];
    if (v7)
    {
      bzero(*v5, 8 * *&v7);
    }

    v5[3] = 0;
  }

  v8 = nullsub_1(a2);
  v9 = 0x5DDB1ADCB91F64A7 * ((v8[1] - *v8) >> 4);
  if (v9 >= 1)
  {
    v10 = 0;
    v76 = v9 & 0x7FFFFFFF;
    v80 = a4;
    v85 = v5;
    do
    {
      v78 = v10;
      v11 = sub_68C454(a2, v10);
      v12 = *(v11 + 7416);
      v83 = *(v11 + 7424);
      if (v12 == v83)
      {
        goto LABEL_8;
      }

      v81 = (*(*(a4 + 64) + 8 * v78 + 8) + 272);
      v82 = *(*(a4 + 64) + 8 * v78 + 8);
      do
      {
LABEL_12:
        v13 = *(v12 + 71);
        if (v13 >= 0)
        {
          v14 = (v12 + 48);
        }

        else
        {
          v14 = *(v12 + 48);
        }

        if (v13 >= 0)
        {
          v15 = *(v12 + 71);
        }

        else
        {
          v15 = *(v12 + 56);
        }

        v16 = sub_AAD8(&v86, v14, v15);
        v17 = v5[1];
        if (!*&v17)
        {
          goto LABEL_57;
        }

        v18 = v16;
        v19 = vcnt_s8(v17);
        v19.i16[0] = vaddlv_u8(v19);
        if (v19.u32[0] > 1uLL)
        {
          v20 = v16;
          v21 = v85;
          if (v16 >= *&v17)
          {
            v20 = v16 % *&v17;
          }
        }

        else
        {
          v20 = (*&v17 - 1) & v16;
          v21 = v85;
        }

        v22 = *(*v21 + 8 * v20);
        if (!v22 || (v23 = *v22) == 0)
        {
LABEL_57:
          a4 = v80;
          v40 = *(v80 + 176);
          v39 = v85;
          *(sub_EB37EC(v85, v12 + 48) + 10) = v40;
          v42 = *(v80 + 184);
          if (v42 && (v43 = *(v80 + 176), v43 < *v42))
          {
            *(v80 + 176) = v43 + 1;
            v44 = *&v42[2 * v43 + 2];
          }

          else
          {
            v45 = sub_14BDE5C(*(v80 + 168));
            v44 = sub_19593CC(v80 + 168, v45);
          }

          sub_EC6F6C(v12, v44, 1, v41);
          v24 = *(v12 + 71);
          v26 = *(v12 + 48);
          v38 = *(v12 + 56);
          v25 = *(v12 + 71);
          goto LABEL_62;
        }

        v24 = *(v12 + 71);
        v25 = v24;
        v26 = *(v12 + 48);
        v79 = *(v12 + 56);
        if ((v24 & 0x80u) == 0)
        {
          v27 = *(v12 + 71);
        }

        else
        {
          v27 = *(v12 + 56);
        }

        if ((v24 & 0x80u) == 0)
        {
          v28 = (v12 + 48);
        }

        else
        {
          v28 = *(v12 + 48);
        }

        __s2 = v28;
        if (v19.u32[0] < 2uLL)
        {
          v29 = *&v17 - 1;
          while (1)
          {
            v34 = v23[1];
            if (v18 == v34)
            {
              v35 = *(v23 + 39);
              v36 = v35;
              if (v35 < 0)
              {
                v35 = v23[3];
              }

              if (v35 == v27)
              {
                v37 = v36 >= 0 ? (v23 + 2) : v23[2];
                if (!memcmp(v37, __s2, v27))
                {
                  goto LABEL_56;
                }
              }
            }

            else if ((v34 & v29) != v20)
            {
              goto LABEL_57;
            }

            v23 = *v23;
            if (!v23)
            {
              goto LABEL_57;
            }
          }
        }

        while (1)
        {
          v30 = v23[1];
          if (v18 == v30)
          {
            break;
          }

          if (v30 >= *&v17)
          {
            v30 %= *&v17;
          }

          if (v30 != v20)
          {
            goto LABEL_57;
          }

LABEL_34:
          v23 = *v23;
          if (!v23)
          {
            goto LABEL_57;
          }
        }

        v31 = *(v23 + 39);
        v32 = v31;
        if (v31 < 0)
        {
          v31 = v23[3];
        }

        if (v31 != v27)
        {
          goto LABEL_34;
        }

        v33 = v32 >= 0 ? (v23 + 2) : v23[2];
        if (memcmp(v33, __s2, v27))
        {
          goto LABEL_34;
        }

LABEL_56:
        v38 = v79;
        a4 = v80;
        v39 = v85;
LABEL_62:
        if (v25 >= 0)
        {
          v46 = (v12 + 48);
        }

        else
        {
          v46 = v26;
        }

        if (v25 >= 0)
        {
          v47 = v24;
        }

        else
        {
          v47 = v38;
        }

        v48 = sub_AAD8(&v87, v46, v47);
        v49 = v39[1];
        if (!*&v49)
        {
          goto LABEL_119;
        }

        v50 = v48;
        v51 = vcnt_s8(v49);
        v51.i16[0] = vaddlv_u8(v51);
        if (v51.u32[0] > 1uLL)
        {
          v52 = v48;
          if (v48 >= *&v49)
          {
            v52 = v48 % *&v49;
          }
        }

        else
        {
          v52 = (*&v49 - 1) & v48;
        }

        v53 = *(*v39 + 8 * v52);
        if (!v53 || (v54 = *v53) == 0)
        {
LABEL_119:
          sub_49EC("unordered_map::at: key not found");
        }

        v55 = *(v12 + 71);
        if (v55 >= 0)
        {
          v56 = *(v12 + 71);
        }

        else
        {
          v56 = *(v12 + 56);
        }

        if (v55 >= 0)
        {
          v57 = (v12 + 48);
        }

        else
        {
          v57 = *(v12 + 48);
        }

        if (v51.u32[0] < 2uLL)
        {
          v58 = *&v49 - 1;
          while (1)
          {
            v63 = v54[1];
            if (v63 == v50)
            {
              v64 = *(v54 + 39);
              v65 = v64;
              if ((v64 & 0x80u) != 0)
              {
                v64 = v54[3];
              }

              if (v64 == v56)
              {
                v66 = v65 >= 0 ? v54 + 2 : v54[2];
                if (!memcmp(v66, v57, v56))
                {
                  goto LABEL_106;
                }
              }
            }

            else if ((v63 & v58) != v52)
            {
              goto LABEL_119;
            }

            v54 = *v54;
            if (!v54)
            {
              goto LABEL_119;
            }
          }
        }

        while (2)
        {
          v59 = v54[1];
          if (v59 != v50)
          {
            if (v59 >= *&v49)
            {
              v59 %= *&v49;
            }

            if (v59 != v52)
            {
              goto LABEL_119;
            }

LABEL_84:
            v54 = *v54;
            if (!v54)
            {
              goto LABEL_119;
            }

            continue;
          }

          break;
        }

        v60 = *(v54 + 39);
        v61 = v60;
        if ((v60 & 0x80u) != 0)
        {
          v60 = v54[3];
        }

        if (v60 != v56)
        {
          goto LABEL_84;
        }

        v62 = v61 >= 0 ? v54 + 2 : v54[2];
        if (memcmp(v62, v57, v56))
        {
          goto LABEL_84;
        }

LABEL_106:
        v67 = *(v54 + 10);
        v68 = *(v12 + 464);
        if (v68 < 0)
        {
          v69 = -50;
        }

        else
        {
          v69 = 50;
        }

        v70 = *(v82 + 248);
        if (v70 == *(v82 + 252))
        {
          v71 = v70 + 1;
          sub_1958E5C((v82 + 248), v70 + 1);
          *(*(v82 + 256) + 4 * v70) = v67;
        }

        else
        {
          *(*(v82 + 256) + 4 * v70) = v67;
          v71 = v70 + 1;
        }

        v72 = 5243 * (v69 + v68 % 100);
        v73 = v68 / 100 + ((v72 >> 19) + (v72 >> 31));
        *(v82 + 248) = v71;
        v74 = *(v82 + 272);
        v5 = v85;
        if (v74 != *(v82 + 276))
        {
          *(*(v82 + 280) + 4 * v74) = v73;
          *v81 = v74 + 1;
          v12 += 1120;
          if (v12 == v83)
          {
            break;
          }

          goto LABEL_12;
        }

        sub_1958E5C(v81, v74 + 1);
        *(*(v82 + 280) + 4 * v74) = v73;
        *v81 = v74 + 1;
        v12 += 1120;
      }

      while (v12 != v83);
LABEL_8:
      v10 = v78 + 1;
    }

    while (v78 + 1 != v76);
  }
}

void sub_EF1FD0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = nullsub_1(a2);
  v5 = 0x5DDB1ADCB91F64A7 * ((v4[1] - *v4) >> 4);
  if (v5 >= 1)
  {
    v6 = 0;
    v23 = v5 & 0x7FFFFFFF;
    do
    {
      v7 = sub_68C454(a2, v6);
      if (*(v7 + 10248) != 0x7FFFFFFFFFFFFFFFLL && *(v7 + 10256) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = v7;
        v11 = *(*(a3 + 64) + 8 * v6 + 8);
        v12 = *(a3 + 104);
        *(v11 + 44) |= 8u;
        *(v11 + 920) = v12;
        v13 = *(a3 + 112);
        if (v13 && (v14 = *(a3 + 104), v14 < *v13))
        {
          *(a3 + 104) = v14 + 1;
          v15 = *&v13[2 * v14 + 2];
        }

        else
        {
          v16 = sub_14BE3A4(*(a3 + 96));
          v15 = sub_19593CC(a3 + 96, v16);
        }

        sub_ECA330(v10 + 1281, v15, v8);
        v17 = 0x3795876FF3795877 * ((v10[139] - v10[138]) >> 3);
        if (v17 >= 1)
        {
          v18 = 0;
          v19 = v17 & 0x7FFFFFFF;
          do
          {
            v20 = sub_50EA30(v10 + 138, v18);
            v21 = sub_1950D4C((*(*(v11 + 72) + 8 * v18 + 8) + 16), dword_278D0E8, 11, &off_2769CA8, 0);
            v22 = *(v20 + 2417);
            *(v21 + 16) |= 2u;
            *(v21 + 97) = v22;
            ++v18;
          }

          while (v19 != v18);
        }
      }

      ++v6;
    }

    while (v6 != v23);
  }
}

uint64_t *sub_EF21A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) |= 8u;
  v4 = *(a3 + 256);
  if (!v4)
  {
    v6 = *(a3 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    v4 = sub_14BCFFC(v7);
    *(a3 + 256) = v4;
  }

  v8 = sub_68DF0C(a2);
  v9 = *v8;
  v10 = v8[1];
  while (v9 != v10)
  {
    v13 = *(v4 + 64);
    if (v13 && (v14 = *(v4 + 56), v14 < *v13))
    {
      *(v4 + 56) = v14 + 1;
      v12 = *&v13[2 * v14 + 2];
    }

    else
    {
      sub_14BCC7C(*(v4 + 48));
      v12 = sub_19593CC(v4 + 48, v11);
    }

    sub_EC81D0(v9, v12);
    v9 += 32;
  }

  v15 = sub_68DF98(a2);
  v16 = sub_EC83A0(*v15);
  if (v16)
  {
    sub_19500C0(v4 + 16, qword_278D0C0, 14, v16, 0);
  }

  v17 = sub_68DFB8(a2);
  v18 = sub_EC83A0(*v17);
  if (v18)
  {
    sub_19500C0(v4 + 16, qword_278D0B8, 14, v18, 0);
  }

  v19 = sub_68DFD8(a2);
  result = sub_EC83A0(*v19);
  if (result)
  {
    v21 = qword_278D0C8;

    return sub_19500C0(v4 + 16, v21, 14, result, 0);
  }

  return result;
}

void sub_EF2320(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = nullsub_1(a2);
  v8 = 0x5DDB1ADCB91F64A7 * ((v7[1] - *v7) >> 4);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = v8 & 0x7FFFFFFF;
    while (1)
    {
      v12 = sub_68C454(a2, v9);
      v13 = *(*(a3 + 64) + 8 * v9 + 8);
      v22[2] = &v23;
      v23 = v13;
      v22[0] = a4;
      v22[1] = a3;
      sub_69B394(v12, &__p);
      v14 = __p;
      if (__p != v21)
      {
        sub_EF42D0(v22, __p);
      }

      if (!__p)
      {
        goto LABEL_5;
      }

      v15 = v21;
      v11 = __p;
      if (v21 != __p)
      {
        break;
      }

LABEL_4:
      v21 = v14;
      operator delete(v11);
LABEL_5:
      if (++v9 == v10)
      {
        return;
      }
    }

    while (1)
    {
      if (*(v15 - 9) < 0)
      {
        operator delete(*(v15 - 4));
        v16 = *(v15 - 8);
        if (!v16)
        {
LABEL_14:
          if ((*(v15 - 65) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_26;
        }
      }

      else
      {
        v16 = *(v15 - 8);
        if (!v16)
        {
          goto LABEL_14;
        }
      }

      v17 = *(v15 - 7);
      if (v17 == v16)
      {
        *(v15 - 7) = v16;
        operator delete(v16);
        if ((*(v15 - 65) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        do
        {
          v18 = *(v17 - 1);
          v17 -= 3;
          if (v18 < 0)
          {
            operator delete(*v17);
          }
        }

        while (v17 != v16);
        v19 = *(v15 - 8);
        *(v15 - 7) = v16;
        operator delete(v19);
        if ((*(v15 - 65) & 0x80000000) == 0)
        {
LABEL_15:
          if ((*(v15 - 89) & 0x80000000) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_27;
        }
      }

LABEL_26:
      operator delete(*(v15 - 11));
      if ((*(v15 - 89) & 0x80000000) == 0)
      {
LABEL_16:
        if (*(v15 - 137) < 0)
        {
          goto LABEL_28;
        }

        goto LABEL_11;
      }

LABEL_27:
      operator delete(*(v15 - 14));
      if (*(v15 - 137) < 0)
      {
LABEL_28:
        operator delete(*(v15 - 20));
      }

LABEL_11:
      v15 -= 21;
      if (v15 == v14)
      {
        v11 = __p;
        goto LABEL_4;
      }
    }
  }
}

void sub_EF24FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_51B6E0(va);
  _Unwind_Resume(a1);
}

void sub_EF2510(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *(a4 + 40) |= 4u;
  v7 = *(a4 + 248);
  if (!v7)
  {
    v9 = *(a4 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v7 = sub_14BD0D0(v10);
    *(a4 + 248) = v7;
  }

  sub_EF2A70(a1, a2, v7);
  v11 = sub_68EA58(a2);
  v12 = *(v11 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(v11 + 8);
  }

  if (v12)
  {
    *(v7 + 16) |= 4u;
    v13 = *(v7 + 64);
    if (!v13)
    {
      v14 = *(v7 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      sub_14BAE64(v15);
      v13 = v16;
      *(v7 + 64) = v16;
    }

    v17 = sub_68EA58(a2);
    sub_64E090(v13, v17);
  }

  sub_EF2D30(a1, a2, v7);
  sub_EF2F20(a1, a2, v7);
  sub_EF2FD8(a1, a2, v7);
  sub_EF3144(a1, a2, a3, v7);
  v18 = sub_68F800(a2);

  sub_EF33D0(v18, v7);
}

void sub_EF2658(int **a1, void *a2, uint64_t a3)
{
  if (*(*a1 + 32) == 1)
  {
    sub_EE8048(&v17, *a1);
    sub_EE834C(&v17, a2, a3);
    v17 = &off_2674490;
    v5 = __p;
    if (!__p)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(&v17);
    sub_4A5C(&v17, "Request that has supports_waypoint_routes set to true but supports_guidance_events set to false which shouldn't happen.", 119);
    if ((v28 & 0x10) != 0)
    {
      v8 = v27;
      if (v27 < v23)
      {
        v27 = v23;
        v8 = v23;
      }

      v9 = v22;
      v7 = v8 - v22;
      if (v8 - v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if ((v28 & 8) == 0)
      {
        v7 = 0;
        v16 = 0;
LABEL_25:
        *(&v15 + v7) = 0;
        sub_7E854(&v15, 3u);
        if (v16 < 0)
        {
          operator delete(v15);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v24);
        }

        std::locale::~locale(&v19);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_30;
      }

      v9 = v20;
      v7 = v21 - v20;
      if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_36:
        sub_3244();
      }
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v16 = v7;
    if (v7)
    {
      memmove(&v15, v9, v7);
    }

    goto LABEL_25;
  }

LABEL_30:
  sub_EA7200(&v17, *a1);
  v10 = nullsub_1(a2);
  v11 = -1189124953 * ((v10[1] - *v10) >> 4);
  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = *(*(a3 + 64) + 8 * v12 + 8);
      v14 = sub_68C454(a2, v12);
      sub_EA74EC(&v17, v14, v13);
      ++v12;
    }

    while (v11 != v12);
  }

  v17 = &off_2674490;
  v5 = __p;
  if (__p)
  {
LABEL_3:
    v34 = v5;
    operator delete(v5);
  }

LABEL_4:
  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }
}