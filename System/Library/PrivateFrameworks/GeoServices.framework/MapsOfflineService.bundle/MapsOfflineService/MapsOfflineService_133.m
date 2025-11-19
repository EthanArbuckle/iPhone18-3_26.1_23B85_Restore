void sub_84D3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_84D434(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 1928);
  v5 = "Waypoint_Stop";
  if (v4 == 84)
  {
    v5 = "Waypoint_Stop_On_Right";
  }

  if (v4 == 83)
  {
    v6 = "Waypoint_Stop_On_Left";
  }

  else
  {
    v6 = v5;
  }

  if ((v6[23] & 0x80000000) == 0)
  {
    *v18 = *v6;
    v19 = *(v6 + 2);
    v7 = *(a1 + 1007);
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_325C(v18, *v6, *(v6 + 1));
  v7 = *(a1 + 1007);
  if (v7 < 0)
  {
LABEL_8:
    v7 = *(a1 + 992);
  }

LABEL_9:
  if (v7)
  {
    v8 = "_Charge_Station_Name";
  }

  else
  {
    v8 = "_Charge_Station";
  }

  v17 = *(v8 + 2);
  *__p = *v8;
  if (v19 >= 0)
  {
    v9 = HIBYTE(v19);
  }

  else
  {
    v9 = v18[1];
  }

  v10 = SHIBYTE(v17);
  if (v17 >= 0)
  {
    v11 = HIBYTE(v17);
  }

  else
  {
    v11 = __p[1];
  }

  v12 = v11 + v9;
  if (v11 + v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v12 > 0x16)
  {
    operator new();
  }

  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  *(a2 + 23) = v12;
  if (v9)
  {
    if (v19 >= 0)
    {
      v13 = v18;
    }

    else
    {
      v13 = v18[0];
    }

    memmove(a2, v13, v9);
  }

  v14 = a2 + v9;
  if (v11)
  {
    if (v10 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    memmove(v14, v15, v11);
  }

  v14[v11] = 0;
  if ((v10 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      return;
    }

LABEL_37:
    operator delete(v18[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v19) < 0)
  {
    goto LABEL_37;
  }
}

void sub_84D61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18 < 0)
  {
    operator delete(__p);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a13);
  _Unwind_Resume(exception_object);
}

double sub_84D654(uint64_t a1, char *a2)
{
  v3 = a2[23];
  LOBYTE(v4) = v3;
  v5 = *a2;
  v6 = *(a2 + 1);
  if ((v3 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v3 & 0x80u) == 0)
  {
    v8 = a2[23];
  }

  else
  {
    v8 = *(a2 + 1);
  }

  if (v8 >= 13)
  {
    v9 = &v7[v8];
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v12 = memchr(v11, 95, v10 - 12);
      if (!v12)
      {
        goto LABEL_30;
      }

      if (*v12 == 0x65737265746E495FLL && *(v12 + 5) == 0x6E6F697463657372)
      {
        break;
      }

      v11 = v12 + 1;
      v10 = v9 - v11;
      if (v9 - v11 < 13)
      {
        goto LABEL_30;
      }
    }

    if (v12 != v9 && v12 - v7 != -1)
    {
      if (v8 >= (v12 - v7 + 13))
      {
        v15 = v12 - v7 + 13;
      }

      else
      {
        v15 = v8;
      }

      if (v15 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_139;
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v49) = v15;
      if (v12 - v7 != -13)
      {
        memmove(&__dst, v7, v15);
      }

      *(&__dst + v15) = 0;
      if (a2[23] < 0)
      {
        operator delete(*a2);
      }

      result = *&__dst;
      *a2 = __dst;
      v16 = v49;
      *(a2 + 2) = v49;
      v3 = HIBYTE(v16);
      v5 = *a2;
      v6 = *(a2 + 1);
      v4 = HIBYTE(v16);
    }
  }

LABEL_30:
  if ((v4 & 0x80u) == 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = v5;
  }

  if ((v4 & 0x80u) == 0)
  {
    v18 = v3;
  }

  else
  {
    v18 = v6;
  }

  if (v18 >= 8)
  {
    v19 = &v17[v18];
    v20 = v18;
    v21 = v17;
    while (1)
    {
      v22 = memchr(v21, 95, v20 - 7);
      if (!v22)
      {
        goto LABEL_56;
      }

      if (*v22 == 0x676E696B7261505FLL)
      {
        break;
      }

      v21 = v22 + 1;
      v20 = v19 - v21;
      if (v19 - v21 < 8)
      {
        goto LABEL_56;
      }
    }

    if (v22 != v19 && v22 - v17 != -1)
    {
      if (v18 >= (v22 - v17 + 8))
      {
        v23 = v22 - v17 + 8;
      }

      else
      {
        v23 = v18;
      }

      if (v23 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_139;
      }

      if (v23 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v49) = v23;
      if (v22 - v17 != -8)
      {
        memmove(&__dst, v17, v23);
      }

      *(&__dst + v23) = 0;
      if (a2[23] < 0)
      {
        operator delete(*a2);
      }

      result = *&__dst;
      *a2 = __dst;
      v24 = v49;
      *(a2 + 2) = v49;
      v3 = HIBYTE(v24);
      v5 = *a2;
      v6 = *(a2 + 1);
      v4 = HIBYTE(v24);
    }
  }

LABEL_56:
  if ((v4 & 0x80u) == 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = v5;
  }

  if ((v4 & 0x80u) == 0)
  {
    v26 = v3;
  }

  else
  {
    v26 = v6;
  }

  if (v26 >= 5)
  {
    v27 = &v25[v26];
    v28 = v26;
    v29 = v25;
    while (1)
    {
      v30 = memchr(v29, 95, v28 - 4);
      if (!v30)
      {
        goto LABEL_85;
      }

      if (*v30 == 1634685535 && v30[4] == 100)
      {
        break;
      }

      v29 = v30 + 1;
      v28 = v27 - v29;
      if (v27 - v29 < 5)
      {
        goto LABEL_85;
      }
    }

    if (v30 != v27 && v30 - v25 != -1)
    {
      if (v26 >= (v30 - v25 + 5))
      {
        v32 = v30 - v25 + 5;
      }

      else
      {
        v32 = v26;
      }

      if (v32 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_139;
      }

      if (v32 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v49) = v32;
      if (v30 - v25 != -5)
      {
        memmove(&__dst, v25, v32);
      }

      *(&__dst + v32) = 0;
      if (a2[23] < 0)
      {
        operator delete(*a2);
      }

      result = *&__dst;
      *a2 = __dst;
      v33 = v49;
      *(a2 + 2) = v49;
      v3 = HIBYTE(v33);
      v5 = *a2;
      v6 = *(a2 + 1);
      v4 = HIBYTE(v33);
    }
  }

LABEL_85:
  if ((v4 & 0x80u) == 0)
  {
    v34 = a2;
  }

  else
  {
    v34 = v5;
  }

  if ((v4 & 0x80u) == 0)
  {
    v35 = v3;
  }

  else
  {
    v35 = v6;
  }

  if (v35 >= 8)
  {
    v36 = &v34[v35];
    v37 = v35;
    v38 = v34;
    while (1)
    {
      v39 = memchr(v38, 95, v37 - 7);
      if (!v39)
      {
        goto LABEL_111;
      }

      if (*v39 == 0x796177656572465FLL)
      {
        break;
      }

      v38 = v39 + 1;
      v37 = v36 - v38;
      if (v36 - v38 < 8)
      {
        goto LABEL_111;
      }
    }

    if (v39 != v36 && v39 - v34 != -1)
    {
      if (v35 >= (v39 - v34 + 8))
      {
        v40 = v39 - v34 + 8;
      }

      else
      {
        v40 = v35;
      }

      if (v40 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_139;
      }

      if (v40 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v49) = v40;
      if (v39 - v34 != -8)
      {
        memmove(&__dst, v34, v40);
      }

      *(&__dst + v40) = 0;
      if (a2[23] < 0)
      {
        operator delete(*a2);
      }

      result = *&__dst;
      *a2 = __dst;
      v41 = v49;
      *(a2 + 2) = v49;
      v3 = HIBYTE(v41);
      v5 = *a2;
      v6 = *(a2 + 1);
      v4 = HIBYTE(v41);
    }
  }

LABEL_111:
  if ((v4 & 0x80u) == 0)
  {
    v42 = a2;
  }

  else
  {
    v42 = v5;
  }

  if ((v4 & 0x80u) != 0)
  {
    v3 = v6;
  }

  if (v3 >= 10)
  {
    v43 = &v42[v3];
    v44 = v3;
    v45 = v42;
    while (1)
    {
      v46 = memchr(v45, 95, v44 - 9);
      if (!v46)
      {
        return result;
      }

      if (*v46 == 0x736F706E6769535FLL && *(v46 + 4) == 12660)
      {
        break;
      }

      v45 = v46 + 1;
      v44 = v43 - v45;
      if (v43 - v45 < 10)
      {
        return result;
      }
    }

    if (v46 != v43 && v46 - v42 != -1)
    {
      if (v3 >= v46 - v42 + 10)
      {
        v3 = v46 - v42 + 10;
      }

      if (v3 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v3 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v49) = v3;
        if (v46 - v42 != -10)
        {
          memmove(&__dst, v42, v3);
        }

        *(&__dst + v3) = 0;
        if (a2[23] < 0)
        {
          operator delete(*a2);
        }

        result = *&__dst;
        *a2 = __dst;
        *(a2 + 2) = v49;
        return result;
      }

LABEL_139:
      sub_3244();
    }
  }

  return result;
}

double sub_84DC78(uint64_t a1, char *a2)
{
  sub_84D654(a1, a2);
  v3 = a2[23];
  LOBYTE(v4) = v3;
  v5 = *(a2 + 1);
  if ((v3 & 0x80u) == 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if ((v3 & 0x80u) == 0)
  {
    v7 = a2[23];
  }

  else
  {
    v7 = *(a2 + 1);
  }

  if (v7 < 17)
  {
    goto LABEL_21;
  }

  v8 = &v6[v7];
  v9 = v7;
  v10 = v6;
  while (1)
  {
    v11 = memchr(v10, 95, v9 - 16);
    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = *v11 == 0x5F6E656B6F70535FLL && *(v11 + 1) == 0x7261646E6F636553;
    if (v12 && v11[16] == 121)
    {
      break;
    }

    v10 = v11 + 1;
    v9 = v8 - v10;
    if (v8 - v10 < 17)
    {
      goto LABEL_21;
    }
  }

  if (v11 == v8 || v11 - v6 == -1)
  {
LABEL_21:
    if ((v7 + 17) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_47;
    }

    if ((v7 + 17) >= 0x17)
    {
      operator new();
    }

    v21 = 0;
    v20 = 0uLL;
    HIBYTE(v21) = v7 + 17;
    if (v7)
    {
      v14 = a2[23];
      if (v14 >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      memmove(&v20, v15, v7);
    }

    else
    {
      LOBYTE(v14) = a2[23];
    }

    strcpy(&v20 + v7, "_Spoken_Secondary");
    if ((v14 & 0x80) != 0)
    {
      operator delete(*a2);
    }

    *a2 = v20;
    v16 = v21;
    *(a2 + 2) = v21;
    v3 = HIBYTE(v16);
    v5 = *(a2 + 1);
    v4 = HIBYTE(v16);
  }

  if ((v4 & 0x80u) == 0)
  {
    v17 = v3;
  }

  else
  {
    v17 = v5;
  }

  if (v17 + 5 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_47:
    sub_3244();
  }

  if (v17 + 5 >= 0x17)
  {
    operator new();
  }

  HIDWORD(v20) = 0;
  v21 = 0;
  HIBYTE(v21) = v17 + 5;
  *(&v20 + 4) = 95;
  LODWORD(v20) = 1954047310;
  if (v17)
  {
    if ((v4 & 0x80u) == 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    memmove(&v20 + 5, v18, v17);
  }

  *(&v20 + v17 + 5) = 0;
  if (a2[23] < 0)
  {
    operator delete(*a2);
  }

  result = *&v20;
  *a2 = v20;
  *(a2 + 2) = v21;
  return result;
}

uint64_t sub_84DF2C(uint64_t result, uint64_t a2, int a3)
{
  if (*(*(result + 2112) + 2545) == 1)
  {
    result = sub_683CD4(result + 2296);
    if (result)
    {
      v4 = 6;
      if (a3)
      {
        v4 = 3;
      }

      v5 = &qword_27AEFF8;
      if (a3)
      {
        v5 = &qword_27AEFE0;
      }

      v6 = &unk_27AF00F;
      if (a3)
      {
        v6 = &unk_27AEFF7;
      }

      if (*v6 < 0)
      {
        v7 = qword_27AEFC8[v4];
        v8 = 6;
        if (a3)
        {
          v8 = 3;
        }

        sub_325C(v14, v7, qword_27AEFC8[v8 + 1]);
      }

      else
      {
        *v14 = *v5;
        v15 = v5[2];
      }

      if (v15 >= 0)
      {
        v9 = HIBYTE(v15);
      }

      else
      {
        v9 = v14[1];
      }

      if (v9 + 4 < 0x7FFFFFFFFFFFFFF8)
      {
        if (v9 + 4 >= 0x17)
        {
          operator new();
        }

        v11[1] = 0;
        v12 = 0;
        HIBYTE(v12) = v9 + 4;
        v11[0] = 978732356;
        if (v9)
        {
          if (v15 >= 0)
          {
            v10 = v14;
          }

          else
          {
            v10 = v14[0];
          }

          memmove(v11 + 4, v10, v9);
        }

        *(v11 + v9 + 4) = 0;
        sub_67E494(v13, v11);
        operator new();
      }

      sub_3244();
    }
  }

  return result;
}

void sub_84E45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  sub_540798(&a18);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_84E504(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
    if ((*(a1 + 143) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 119) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a1 + 143) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 120));
  if ((*(a1 + 119) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(a1 + 96));
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_13;
  }

LABEL_11:
  operator delete(*(a1 + 56));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_13:
  operator delete(*a1);
  return a1;
}

uint64_t sub_84E5C0(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(result + 1939) == 1)
  {
    v4 = *(result + 1928);
    v5 = v4 > 0x3F;
    v6 = (1 << v4) & 0xC000000000300008;
    if (v5 || v6 == 0)
    {
      v8 = "Use_Crosswalk_Spoken";
    }

    else
    {
      if (!sub_734C10(result + 760) | a4)
      {
        v8 = "Cross_Street_Spoken";
      }

      else
      {
        v8 = "Cross_Road_Spoken";
      }

      if (v8[23] < 0)
      {
        sub_325C(&v10, *v8, *(v8 + 1));
LABEL_13:
        sub_67E494(&v9, &v10);
        operator new();
      }
    }

    v10 = *v8;
    v11 = *(v8 + 2);
    goto LABEL_13;
  }

  return result;
}

void sub_84E9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_540798(va);
  if (*(v13 - 57) < 0)
  {
    operator delete(*(v13 - 80));
  }

  _Unwind_Resume(a1);
}

void sub_84EA5C(uint64_t a1, uint64_t *a2, int a3)
{
  if (*(a1 + 1940) == 1)
  {
    sub_681008(a2, &__p);
    v5 = __p;
    v6 = v25;
    if (__p != v25)
    {
      for (i = __p; i != v6; i += 3)
      {
        v8 = *(i + 23);
        if (v8 < 0)
        {
          v9 = *i;
          v8 = i[1];
          if (v8 >= 5)
          {
LABEL_9:
            v10 = &v9[v8];
            v11 = v9;
            do
            {
              v12 = memchr(v11, 67, v8 - 4);
              if (!v12)
              {
                break;
              }

              if (*v12 == 1936683587 && v12[4] == 115)
              {
                if (v12 == v10 || v12 - v9 == -1)
                {
                  break;
                }

                if (a3)
                {
                  v14 = 2;
                }

                else
                {
                  v14 = sub_681030(a2);
                }

                sub_680670(a2, v14);
                v15 = 0;
                v5 = __p;
                if (__p)
                {
                  goto LABEL_22;
                }

                goto LABEL_29;
              }

              v11 = v12 + 1;
              v8 = v10 - v11;
            }

            while (v10 - v11 >= 5);
          }
        }

        else
        {
          v9 = i;
          if (v8 >= 5)
          {
            goto LABEL_9;
          }
        }
      }
    }

    v15 = 1;
    if (v5)
    {
LABEL_22:
      v16 = v25;
      v17 = v5;
      if (v25 != v5)
      {
        do
        {
          v18 = *(v16 - 1);
          v16 -= 3;
          if (v18 < 0)
          {
            operator delete(*v16);
          }
        }

        while (v16 != v5);
        v17 = __p;
      }

      v25 = v5;
      operator delete(v17);
    }

LABEL_29:
    if (v15)
    {
      v19 = 138;
      if (a3)
      {
        v19 = 141;
      }

      v20 = &qword_27AE440;
      if (!a3)
      {
        v20 = &qword_27AE428;
      }

      v21 = &algn_27AE430[15];
      if (a3)
      {
        v21 = &xmmword_27AE448 + 15;
      }

      if (*v21 < 0)
      {
        v22 = qword_27ADFD8[v19];
        v23 = 138;
        if (a3)
        {
          v23 = 141;
        }

        sub_325C(v27, v22, qword_27ADFD8[v23 + 1]);
      }

      else
      {
        *v27 = *v20;
        v28 = v20[2];
      }

      if (SHIBYTE(v28) < 0)
      {
        sub_325C(&v31, v27[0], v27[1]);
      }

      else
      {
        v31 = *v27;
        *&v32 = v28;
      }

      memset(v26, 0, sizeof(v26));
      v29 = v26;
      v30 = 0;
      operator new();
    }
  }
}

void sub_84EF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_84EFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_746A0(&a11);
  sub_99B5C((v32 - 160));
  if (*(v32 - 105) < 0)
  {
    operator delete(*(v32 - 128));
  }

  if (a32 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_84F03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  *a1 = off_266B680;
  *(a1 + 8) = 0u;
  v12 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 72) = 1;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 1;
  v103 = (a1 + 80);
  sub_734CE0(a1 + 152);
  sub_734CE0(a1 + 304);
  sub_734CE0(a1 + 456);
  sub_734CE0(a1 + 608);
  sub_734CE0(a1 + 760);
  __dst = (a1 + 984);
  v107 = a1 + 1008;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 1008) = -1;
  *(a1 + 1016) = 0x7FFFFFFF;
  *(a1 + 1024) = -1;
  *(a1 + 1032) = -1;
  *(a1 + 1040) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1048) = 0;
  *(a1 + 1056) = -1935635296;
  *(a1 + 1064) = 0;
  *(a1 + 1071) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1112) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1120) = 100;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1152) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1176) = 0;
  *(a1 + 1160) = 0u;
  *(a1 + 1184) = 1;
  *(a1 + 1192) = 0;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1320) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1304) = 0u;
  *(a1 + 1400) = -1;
  *(a1 + 1392) = -1;
  *(a1 + 1408) = 0u;
  *(a1 + 1432) = 0;
  *(a1 + 1424) = 0;
  *(a1 + 1440) = 0;
  *(a1 + 1444) = 0u;
  *(a1 + 1460) = 0u;
  sub_64B998(a1 + 1480);
  *(a1 + 1672) = 0;
  *(a1 + 1680) = -1;
  *(a1 + 1683) = -1;
  *(a1 + 1687) = 0;
  *(a1 + 1711) = 0;
  *(a1 + 1695) = 0u;
  *(a1 + 1720) = 0;
  *(a1 + 1728) = 0u;
  *(a1 + 1744) = 0;
  v104 = (a1 + 1752);
  *(a1 + 1752) = -1;
  *(a1 + 1754) = 0;
  *(a1 + 1760) = 0u;
  *(a1 + 1774) = 0;
  *(a1 + 1784) = 0x7FFFFFFF;
  *(a1 + 1800) = 0u;
  *(a1 + 1792) = 0x7FFFFFFF;
  *(a1 + 1796) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 1816) = 0x8000000080000000;
  *(a1 + 1872) = 0;
  *(a1 + 1856) = 0u;
  *(a1 + 1840) = 0u;
  *(a1 + 1824) = 0u;
  *(a1 + 1876) = 0x7FFFFFFF;
  *(a1 + 1880) = 0x8000000080000000;
  *(a1 + 1896) = 0;
  *(a1 + 1904) = xmmword_2297C00;
  *(a1 + 1920) = -1;
  *(a1 + 1928) = *(sub_50EA30((a4 + 1104), a5) + 160);
  *(a1 + 1932) = 0;
  *(a1 + 1934) = 0;
  v13 = (a1 + 1944);
  *(a1 + 1936) = 0;
  *&v14 = -1;
  *(&v14 + 1) = -1;
  *(a1 + 1944) = v14;
  *(a1 + 1960) = v14;
  *(a1 + 1976) = v14;
  *(a1 + 1992) = -1;
  *(a1 + 2000) = 0;
  *(a1 + 2008) = -1;
  *(a1 + 2016) = 0;
  *(a1 + 2024) = 0;
  *(a1 + 2108) = 0;
  *(a1 + 2032) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2089) = 0u;
  *(a1 + 2112) = a2;
  *(a1 + 2120) = a3;
  *(a1 + 2128) = a4 + 7440;
  *(a1 + 2152) = 0;
  v105 = (a1 + 2136);
  *(a1 + 2136) = 0u;
  *(a1 + 2160) = 1;
  *(a1 + 2164) = 0;
  *(a1 + 2168) = -1;
  *(a1 + 2176) = -1;
  *(a1 + 2184) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2192) = 0u;
  *(a1 + 2208) = 0u;
  *(a1 + 2224) = 0u;
  *(a1 + 2240) = 0;
  *(a1 + 2248) = 0xBFF0000000000000;
  *(a1 + 2256) = 0;
  *(a1 + 2279) = 0;
  *(a1 + 2264) = 0u;
  *(a1 + 2288) = a6 + 1;
  *(a1 + 2304) = -1;
  *(a1 + 2296) = -1;
  *(a1 + 2312) = 0x7FFFFFFF;
  *(a1 + 2320) = 0;
  *(a1 + 2328) = 0;
  *(a1 + 2348) = 0;
  *(a1 + 2356) = 0;
  v15 = (a1 + 2360);
  *(a1 + 2332) = 0u;
  sub_734CE0(a1 + 2360);
  v16 = *(a4 + 1104) + 2616 * a5;
  *(a1 + 1933) = *(v16 + 616);
  *(a1 + 1934) = *(v16 + 1028);
  v17 = *(v16 + 384);
  if ((v17 & 0xFE) == 4)
  {
    v17 = *(a3 + 1176);
  }

  *(a1 + 1935) = v17;
  v18 = (v17 == 3 || !v17) && *(v16 + 624) == -1 && *(v16 + 632) == -1 && *(v16 + 640) == -1 && *(v16 + 648) == -1 && *(v16 + 656) == -1 && *(v16 + 664) == -1 && *(v16 + 672) == -1;
  *(a1 + 1936) = v18;
  *(a1 + 1937) = *(v16 + 360);
  *(a1 + 1941) = *(v16 + 816);
  *(a1 + 1942) = *(v16 + 376);
  if (*(*(a1 + 2112) + 2467) == 1)
  {
    v19 = *(v16 + 289);
  }

  else
  {
    v19 = 0;
  }

  *(a1 + 1943) = v19 & 1;
  *v13 = *(v16 + 624);
  v20 = *(v16 + 640);
  v21 = *(v16 + 656);
  v22 = *(v16 + 672);
  *(a1 + 2004) = *(v16 + 684);
  *(a1 + 1976) = v21;
  *(a1 + 1992) = v22;
  *(a1 + 1960) = v20;
  *(a1 + 2024) = *(v16 + 704);
  if (a1 + 2024 != v16 + 704)
  {
    sub_31F64((a1 + 2032), *(v16 + 712), *(v16 + 720), (*(v16 + 720) - *(v16 + 712)) >> 3);
    sub_31F64((a1 + 2056), *(v16 + 736), *(v16 + 744), (*(v16 + 744) - *(v16 + 736)) >> 3);
    sub_31F64((a1 + 2080), *(v16 + 760), *(v16 + 768), (*(v16 + 768) - *(v16 + 760)) >> 3);
  }

  *(a1 + 2104) = *(v16 + 784);
  if (*(v16 + 2418))
  {
    v23 = 1;
  }

  else
  {
    v23 = *(v16 + 2419);
  }

  v24 = (a1 + 2160);
  *(a1 + 2285) = v23 & 1;
  *(a1 + 2286) = (*(v16 + 160) - 41) < 0x13;
  v25 = (v16 + 2064);
  if (v105 == (v16 + 2064))
  {
    v27 = *(v16 + 2104);
    *v24 = *(v16 + 2088);
    *(a1 + 2176) = v27;
  }

  else
  {
    sub_5FCEE0(v105, *(v16 + 2064), *(v16 + 2072), 0x84BDA12F684BDA13 * ((*(v16 + 2072) - *(v16 + 2064)) >> 4));
    v26 = *(v16 + 2104);
    *v24 = *(v16 + 2088);
    *(a1 + 2176) = v26;
    sub_5FD2CC((a1 + 2192), *(v16 + 2120), *(v16 + 2128), 0xD37A6F4DE9BD37A7 * ((*(v16 + 2128) - *(v16 + 2120)) >> 3));
  }

  v28 = *(v16 + 2144);
  v29 = *(v16 + 2160);
  *(a1 + 2241) = *(v16 + 2169);
  *(a1 + 2216) = v28;
  *(a1 + 2232) = v29;
  *(a1 + 2264) = *(v16 + 2192);
  if (*(a1 + 1935) == 2 && (v30 = *(v16 + 160), v30 <= 0x23))
  {
    v31 = 0x7FBFFFFEFuLL >> v30;
    if (*(*(a1 + 2120) + 1413) != 1)
    {
      goto LABEL_36;
    }
  }

  else
  {
    LOBYTE(v31) = 1;
    if (*(*(a1 + 2120) + 1413) != 1)
    {
LABEL_36:
      *(a1 + 1938) = 0;
LABEL_37:
      v32 = 0;
      *(a1 + 1939) = 0;
      goto LABEL_38;
    }
  }

  if (*(*(a1 + 2112) + 2378) != 1 || (v31 & *(v16 + 360) & 1) == 0 || *v13 != -1 || *(a1 + 1952) != -1 || *(a1 + 1960) != -1 || *(a1 + 1968) != -1 || *(a1 + 1976) != -1 || *(a1 + 1984) != -1)
  {
    goto LABEL_36;
  }

  v101 = *(a1 + 1992);
  *(a1 + 1938) = v101 == -1;
  if (v101 != -1)
  {
    goto LABEL_37;
  }

  v102 = *(a1 + 1936);
  *(a1 + 1939) = v102;
  v32 = v102 ^ 1;
LABEL_38:
  *(a1 + 1940) = v32 & 1;
  sub_850030(a1, v16);
  v33 = sub_69B1B0(a4);
  if (__dst != v33)
  {
    v34 = *(v33 + 23);
    if (*(a1 + 1007) < 0)
    {
      if (v34 >= 0)
      {
        v36 = v33;
      }

      else
      {
        v36 = *v33;
      }

      if (v34 >= 0)
      {
        v37 = *(v33 + 23);
      }

      else
      {
        v37 = *(v33 + 8);
      }

      sub_13B38(__dst, v36, v37);
    }

    else if ((*(v33 + 23) & 0x80) != 0)
    {
      sub_13A68(__dst, *v33, *(v33 + 8));
    }

    else
    {
      v35 = *v33;
      *(a1 + 1000) = *(v33 + 16);
      *__dst = v35;
    }
  }

  v38 = sub_4D1DB0(a4);
  v39 = v38;
  *v104 = *v38;
  v40 = *(v38 + 8);
  *(a1 + 1774) = *(v38 + 22);
  *(a1 + 1760) = v40;
  v41 = *(v38 + 32);
  v42 = *(v38 + 48);
  *(a1 + 1816) = *(v38 + 64);
  *(a1 + 1784) = v41;
  *(a1 + 1800) = v42;
  if (v104 != v38)
  {
    sub_4D88D0((a1 + 1824), *(v38 + 72), *(v38 + 80), (*(v38 + 80) - *(v38 + 72)) >> 4);
    sub_4D88D0((a1 + 1848), *(v39 + 96), *(v39 + 104), (*(v39 + 104) - *(v39 + 96)) >> 4);
  }

  v43 = *(v39 + 120);
  v44 = *(v39 + 136);
  *(a1 + 1904) = *(v39 + 152);
  *(a1 + 1888) = v44;
  *(a1 + 1872) = v43;
  *(a1 + 1920) = *(v39 + 168);
  sub_5FFC40(v107, a4 + 11088);
  if (v107 != a4 + 11088)
  {
    sub_516FFC((a1 + 1448), *(a4 + 11528), *(a4 + 11536), 0x8E38E38E38E38E39 * ((*(a4 + 11536) - *(a4 + 11528)) >> 3));
  }

  *(a1 + 1472) = *(a4 + 11552);
  sub_594568(a1 + 1480, a4 + 11560);
  sub_5410A0(a1 + 1640, a4 + 11720);
  sub_850408(a1, v108);
  v45 = *v12;
  if (*v12)
  {
    v46 = *(a1 + 16);
    v47 = *v12;
    if (v46 != v45)
    {
      do
      {
        v48 = *(v46 - 1);
        v46 -= 3;
        if (v48 < 0)
        {
          operator delete(*v46);
        }
      }

      while (v46 != v45);
      v47 = *v12;
    }

    *(a1 + 16) = v45;
    operator delete(v47);
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
  }

  *(a1 + 8) = *v108;
  *(a1 + 24) = v109;
  v108[1] = 0;
  v109 = 0;
  v108[0] = 0;
  sub_593214(a1 + 32, __p);
  *(a1 + 72) = v113;
  v49 = v111[0];
  if (v111[0])
  {
    do
    {
      v50 = *v49;
      sub_55F7FC((v49 + 2));
      operator delete(v49);
      v49 = v50;
    }

    while (v50);
  }

  v51 = __p[0];
  __p[0] = 0;
  if (v51)
  {
    operator delete(v51);
  }

  v52 = v108[0];
  if (v108[0])
  {
    v53 = v108[1];
    v54 = v108[0];
    if (v108[1] != v108[0])
    {
      do
      {
        v55 = *(v53 - 1);
        v53 -= 3;
        if (v55 < 0)
        {
          operator delete(*v53);
        }
      }

      while (v53 != v52);
      v54 = v108[0];
    }

    v108[1] = v52;
    operator delete(v54);
  }

  *(a1 + 2281) = sub_67F360(v12, "{Intersection}");
  *(a1 + 2280) = sub_67F360(v12, "{Freeway}");
  *(a1 + 2282) = sub_67F360(v12, "{Ferry}");
  *(a1 + 2283) = sub_67F360(v12, "{ShuttleName}");
  v56 = v108;
  sub_67F320(v12, v108);
  v57 = HIBYTE(v109);
  v58 = SHIBYTE(v109);
  v59 = v108[0];
  if (v109 < 0)
  {
    v56 = v108[0];
    v57 = v108[1];
  }

  v60 = v56 + v57;
  if (v57 >= 5)
  {
    v61 = v56;
    do
    {
      v62 = memchr(v61, 95, v57 - 4);
      if (!v62)
      {
        break;
      }

      v63 = *v62 == 1634685535 && v62[4] == 100;
      if (v63)
      {
        goto LABEL_85;
      }

      v61 = (v62 + 1);
      v57 = v60 - v61;
    }

    while (v60 - v61 > 4);
  }

  v62 = v60;
LABEL_85:
  v65 = v62 != v60 && v62 - v56 != -1;
  *(a1 + 2284) = v65;
  if ((v58 & 0x80000000) == 0)
  {
    if (*(*(a1 + 2112) + 2327) == 1)
    {
      goto LABEL_95;
    }

LABEL_105:
    v70 = 0;
    goto LABEL_106;
  }

  operator delete(v59);
  if (*(*(a1 + 2112) + 2327) != 1)
  {
    goto LABEL_105;
  }

LABEL_95:
  if (*(a1 + 1935) || (*(a1 + 2285) & 1) != 0 || (*(a1 + 1928) - 1) > 1)
  {
    goto LABEL_105;
  }

  if (!sub_6F390(v105) || (v66 = *(a1 + 2136), v67 = *(a1 + 2144), v66 == v67))
  {
    v70 = 1;
  }

  else
  {
    v68 = v66 + 432;
    do
    {
      v69 = *(v68 - 256) | *(v68 - 255);
      if (v69)
      {
        break;
      }

      v63 = v68 == v67;
      v68 += 432;
    }

    while (!v63);
    v70 = v69 ^ 1;
  }

LABEL_106:
  *(a1 + 1932) = v70 & 1;
  sub_67F320(v12, v129);
  v71 = v130;
  v72 = v130;
  v73 = v129[0];
  if ((v130 & 0x80u) == 0)
  {
    v74 = v129;
  }

  else
  {
    v74 = v129[0];
  }

  if ((v130 & 0x80u) != 0)
  {
    v71 = v129[1];
  }

  v75 = v74 + v71;
  if (v71 >= 8)
  {
    v76 = v74;
    do
    {
      v77 = memchr(v76, 87, v71 - 7);
      if (!v77)
      {
        break;
      }

      if (*v77 == 0x5F676E696B6C6157)
      {
        goto LABEL_117;
      }

      v76 = v77 + 1;
      v71 = v75 - v76;
    }

    while (v75 - v76 > 7);
  }

  v77 = v75;
LABEL_117:
  if (v72 < 0)
  {
    v78 = v77;
    operator delete(v73);
    v77 = v78;
  }

  v79 = "_Spoken_Primary";
  if (v77 - v74 != -1 && v77 != v75)
  {
    v79 = "_Spoken";
  }

  v127 = *v79;
  v128 = *(v79 + 2);
  sub_850C08(a1, 0, &v127, v108);
  v81 = *v103;
  if (*v103)
  {
    v82 = *(a1 + 88);
    v83 = *v103;
    if (v82 != v81)
    {
      do
      {
        v84 = *(v82 - 1);
        v82 -= 3;
        if (v84 < 0)
        {
          operator delete(*v82);
        }
      }

      while (v82 != v81);
      v83 = *v103;
    }

    *(a1 + 88) = v81;
    operator delete(v83);
    *v103 = 0;
    v103[1] = 0;
    v103[2] = 0;
  }

  *(a1 + 80) = *v108;
  *(a1 + 96) = v109;
  v108[1] = 0;
  v109 = 0;
  v108[0] = 0;
  sub_593214(a1 + 104, __p);
  *(a1 + 144) = v113;
  v85 = v111[0];
  if (v111[0])
  {
    do
    {
      v86 = *v85;
      sub_55F7FC((v85 + 2));
      operator delete(v85);
      v85 = v86;
    }

    while (v86);
  }

  v87 = __p[0];
  __p[0] = 0;
  if (v87)
  {
    operator delete(v87);
  }

  v88 = v108[0];
  if (v108[0])
  {
    v89 = v108[1];
    v90 = v108[0];
    if (v108[1] != v108[0])
    {
      do
      {
        v91 = *(v89 - 1);
        v89 -= 3;
        if (v91 < 0)
        {
          operator delete(*v89);
        }
      }

      while (v89 != v88);
      v90 = v108[0];
    }

    v108[1] = v88;
    operator delete(v90);
  }

  if (SHIBYTE(v128) < 0)
  {
    operator delete(v127);
  }

  sub_684350(v25, v108);
  v92 = v108[1];
  *(a1 + 2296) = v108[0];
  *(a1 + 2304) = v92;
  *(a1 + 2312) = v109;
  *(a1 + 2320) = *__p;
  v93 = *(a1 + 2336);
  if (v93)
  {
    *(a1 + 2344) = v93;
    operator delete(v93);
    *(a1 + 2336) = 0;
    *(a1 + 2344) = 0;
    *(a1 + 2352) = 0;
  }

  *(a1 + 2336) = *v111;
  *(a1 + 2352) = v112;
  v111[1] = 0;
  v112 = 0;
  v111[0] = 0;
  if (*(a1 + 2383) < 0)
  {
    operator delete(*v15);
  }

  *v15 = v113;
  *(a1 + 2376) = v114;
  HIBYTE(v114) = 0;
  LOBYTE(v113) = 0;
  *(a1 + 2384) = v115;
  v94 = (a1 + 2392);
  if (*(a1 + 2415) < 0)
  {
    operator delete(*v94);
  }

  *v94 = v116;
  *(a1 + 2408) = v117;
  HIBYTE(v117) = 0;
  LOBYTE(v116) = 0;
  *(a1 + 2416) = v118;
  *(a1 + 2424) = v119;
  v95 = (a1 + 2432);
  if (*(a1 + 2455) < 0)
  {
    operator delete(*v95);
  }

  *v95 = v120;
  *(a1 + 2448) = v121;
  HIBYTE(v121) = 0;
  LOBYTE(v120) = 0;
  v96 = (a1 + 2456);
  if (*(a1 + 2479) < 0)
  {
    operator delete(*v96);
  }

  *v96 = *v122;
  *(a1 + 2472) = v123;
  HIBYTE(v123) = 0;
  LOBYTE(v122[0]) = 0;
  *(a1 + 2480) = v124;
  v97 = (a1 + 2488);
  if (*(a1 + 2511) < 0)
  {
    operator delete(*v97);
    v99 = SHIBYTE(v123);
    *v97 = v125;
    *(a1 + 2504) = v126;
    HIBYTE(v126) = 0;
    LOBYTE(v125) = 0;
    if (v99 < 0)
    {
      operator delete(v122[0]);
      if ((SHIBYTE(v121) & 0x80000000) == 0)
      {
        goto LABEL_164;
      }
    }

    else if ((SHIBYTE(v121) & 0x80000000) == 0)
    {
      goto LABEL_164;
    }

LABEL_158:
    operator delete(v120);
    if (SHIBYTE(v117) < 0)
    {
      goto LABEL_159;
    }

    goto LABEL_165;
  }

  *v97 = v125;
  *(a1 + 2504) = v126;
  HIBYTE(v126) = 0;
  LOBYTE(v125) = 0;
  if (SHIBYTE(v121) < 0)
  {
    goto LABEL_158;
  }

LABEL_164:
  if (SHIBYTE(v117) < 0)
  {
LABEL_159:
    operator delete(v116);
    if (SHIBYTE(v114) < 0)
    {
      goto LABEL_160;
    }

    goto LABEL_166;
  }

LABEL_165:
  if (SHIBYTE(v114) < 0)
  {
LABEL_160:
    operator delete(v113);
    v98 = v111[0];
    if (!v111[0])
    {
      return a1;
    }

    goto LABEL_167;
  }

LABEL_166:
  v98 = v111[0];
  if (v111[0])
  {
LABEL_167:
    v111[1] = v98;
    operator delete(v98);
  }

  return a1;
}

void sub_84FEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void ***a11, void *a12, void *a13, void **a14, void **a15, uint64_t a16)
{
  sub_841FCC(v16 + 2296);
  sub_5940E0(a14);
  sub_5ED8EC(a13);
  sub_3EDA0C(a12);
  sub_5EC498(a16);
  if (*(v16 + 1007) < 0)
  {
    operator delete(*a15);
  }

  sub_593FC8((v16 + 960));
  sub_593FC8((v16 + 936));
  sub_593FC8((v16 + 912));
  sub_3E5388(v16 + 760);
  sub_3E5388(v16 + 608);
  sub_3E5388(v16 + 456);
  sub_3E5388(v16 + 304);
  sub_3E5388(v16 + 152);
  sub_53A58C(a11);
  sub_53A58C(v17);
  _Unwind_Resume(a1);
}

_OWORD *sub_850030(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1939) == 1)
  {
    v4 = *(a2 + 160);
    v5 = v4 > 0x3F;
    v6 = 0x3FFFFFFFFFCFFFF7uLL >> v4;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = (*(a1 + 1928) > 0x23uLL) | (0x7FBFFFFEFuLL >> *(a1 + 1928));
  v9 = (*(a2 + 361) ^ 1) & v7;
  v10 = *(a2 + 440);
  if (v10 != *(a2 + 448))
  {
    sub_52CB8C((a1 + 456), v10);
  }

  v11 = v8 & v9;
  v12 = *(a2 + 392);
  if (v12 != *(a2 + 400))
  {
    if (*(a1 + 1928) == 4)
    {
      sub_52CB8C((a1 + 304), *(a2 + 392));
    }

    else
    {
      if ((v11 & 1) != 0 && sub_734C10(*(a2 + 392)))
      {
        v13 = *(a1 + 944);
        if (v13 >= *(a1 + 952))
        {
          *(a1 + 944) = sub_6868D8((a1 + 936), v12);
          v14 = *(a2 + 416);
          v15 = *(a2 + 424);
          if (v14 == v15)
          {
            goto LABEL_46;
          }
        }

        else
        {
          sub_5139E8(*(a1 + 944), v12);
          *(a1 + 944) = v13 + 152;
          *(a1 + 944) = v13 + 152;
          v14 = *(a2 + 416);
          v15 = *(a2 + 424);
          if (v14 == v15)
          {
            goto LABEL_46;
          }
        }

        v20 = (a1 + 304);
        goto LABEL_34;
      }

      if (*(a1 + 1939) == 1)
      {
        v16 = *(a2 + 400);
        if (0x86BCA1AF286BCA1BLL * ((v16 - *(a2 + 392)) >> 3) >= 2)
        {
          v17 = (v16 - 152);
          v18 = *(a1 + 944);
          if (v18 >= *(a1 + 952))
          {
            v19 = sub_6868D8((a1 + 936), v17);
          }

          else
          {
            sub_5139E8(*(a1 + 944), v17);
            v19 = v18 + 152;
            *(a1 + 944) = v18 + 152;
          }

          *(a1 + 944) = v19;
        }
      }
    }
  }

  v14 = *(a2 + 416);
  v15 = *(a2 + 424);
  if (v14 == v15)
  {
    goto LABEL_46;
  }

  v20 = (a1 + 304);
  if ((v11 & 1) == 0)
  {
    do
    {
      if (sub_734C10(v14) && *(v14 + 120) == 4 && !sub_734C10(a1 + 304))
      {
        sub_52CB8C((a1 + 304), v14);
      }

      v14 += 152;
    }

    while (v14 != v15);
    goto LABEL_46;
  }

  do
  {
LABEL_34:
    if (sub_734C10(v14))
    {
      v21 = *(v14 + 120);
      if ((v21 - 2) < 2)
      {
        v22 = *(a1 + 968);
        if (v22 >= *(a1 + 976))
        {
          *(a1 + 968) = sub_6868D8((a1 + 960), v14);
        }

        else
        {
          sub_5139E8(*(a1 + 968), v14);
          *(a1 + 968) = v22 + 152;
          *(a1 + 968) = v22 + 152;
        }
      }

      else if (v21 == 1)
      {
        v23 = *(a1 + 944);
        if (v23 >= *(a1 + 952))
        {
          v24 = sub_6868D8((a1 + 936), v14);
        }

        else
        {
          sub_5139E8(*(a1 + 944), v14);
          v24 = v23 + 152;
          *(a1 + 944) = v23 + 152;
        }

        *(a1 + 944) = v24;
      }

      else if (v21 == 4 && !sub_734C10(v20))
      {
        sub_52CB8C(v20, v14);
      }
    }

    v14 += 152;
  }

  while (v14 != v15);
LABEL_46:
  v25 = *(a1 + 936);
  if (v25 != *(a1 + 944))
  {
    sub_52CB8C((a1 + 152), v25);
  }

  sub_52CB8C((a1 + 608), (a2 + 848));
  v26 = *(a2 + 824);
  v27 = *(a2 + 832);
  if (v26 != v27)
  {
    v28 = *(a1 + 920);
    do
    {
      while (v28 >= *(a1 + 928))
      {
        v28 = sub_6868D8((a1 + 912), v26);
        *(a1 + 920) = v28;
        v26 += 10;
        if (v26 == v27)
        {
          goto LABEL_53;
        }
      }

      sub_5139E8(v28, v26);
      v28 += 152;
      *(a1 + 920) = v28;
      *(a1 + 920) = v28;
      v26 += 10;
    }

    while (v26 != v27);
  }

LABEL_53:
  v29 = (a2 + 464);
  result = sub_734C10(a2 + 464);
  if ((result & 1) != 0 || (v7 & 1) == 0 && (v29 = *(a2 + 392), v29 != *(a2 + 400)))
  {

    return sub_52CB8C((a1 + 760), v29);
  }

  return result;
}

_OWORD *sub_850408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = 1065353216;
  *(a2 + 64) = 1;
  v4 = "Roundabout_First_Exit";
  v5 = "Waypoint_Stop";
  v6 = "Exit_Ferry";
  switch(*(a1 + 1928))
  {
    case 0:
    case 3:
    case 5:
    case 0xC:
      goto LABEL_2;
    case 1:
      v8 = *(a1 + 1936);
      v9 = "Walking_Left_Turn";
      v10 = "Left_Turn";
      goto LABEL_99;
    case 2:
      v8 = *(a1 + 1936);
      v9 = "Walking_Right_Turn";
      v10 = "Right_Turn";
      goto LABEL_99;
    case 4:
      sub_8427D8(a1, a2);
      return sub_84307C(a1, a2);
    case 6:
      sub_851DE0(a1, a2);
      return sub_84307C(a1, a2);
    case 7:
      goto LABEL_4;
    case 0xB:
      if ((*(a1 + 1936) & 1) == 0)
      {
        goto LABEL_2;
      }

      v14 = "Off_Ramp";
      goto LABEL_62;
    case 0x10:
      sub_851C2C(a1, a2);
      return sub_84307C(a1, a2);
    case 0x11:
      sub_851634(a1, a2);
      return sub_84307C(a1, a2);
    case 0x12:
      v16 = *(a1 + 2120);
      if (*(v16 + 1562) == 1 && !*(v16 + 1560) && *(a1 + 1473) == 1 && *(a1 + 2288) == 1)
      {
        v6 = "First_Stop";
        goto LABEL_111;
      }

      v11 = *(a1 + 1473);
      v12 = "Destination";
      v13 = "Next_Stop";
      goto LABEL_108;
    case 0x14:
      v8 = *(a1 + 1936);
      v9 = "Walking_Left_Turn";
      if (*(*(a1 + 2112) + 2346))
      {
        v9 = &qword_27AE230;
      }

      v10 = "Keep_Left";
      goto LABEL_99;
    case 0x15:
      v8 = *(a1 + 1936);
      v9 = "Walking_Right_Turn";
      if (*(*(a1 + 2112) + 2346))
      {
        v9 = &qword_27AE248;
      }

      v10 = "Keep_Right";
      goto LABEL_99;
    case 0x16:
      sub_842848(a1, a2, (a1 + 152));
      return sub_84307C(a1, a2);
    case 0x17:
      goto LABEL_111;
    case 0x18:
      sub_8428A4(a1, a2, (a1 + 152));
      return sub_84307C(a1, a2);
    case 0x19:
      sub_8516CC(a1, a2);
      return sub_84307C(a1, a2);
    case 0x1A:
      v11 = *(a1 + 1936);
      v12 = &qword_27AE158;
      v13 = "U_Turn_At_Roundabout";
      goto LABEL_108;
    case 0x1B:
      v8 = *(a1 + 1936);
      v9 = "Walking_Left_Turn";
      v10 = "Left_Turn_At_End";
      goto LABEL_99;
    case 0x1C:
      v8 = *(a1 + 1936);
      v9 = "Walking_Right_Turn";
      v10 = "Right_Turn_At_End";
      goto LABEL_99;
    case 0x1D:
      if ((*(a1 + 1936) & 1) == 0)
      {
        goto LABEL_2;
      }

      v14 = "Off_Ramp_On_Left";
      goto LABEL_62;
    case 0x1E:
      if (*(a1 + 1936) != 1)
      {
        goto LABEL_2;
      }

      v14 = "Off_Ramp_On_Right";
LABEL_62:
      sub_8520D4(a1, v14, a2);
      return sub_84307C(a1, a2);
    case 0x21:
      v17 = *(a1 + 2120);
      if (*(v17 + 1562) == 1 && !*(v17 + 1560) && *(a1 + 1473) == 1 && *(a1 + 2288) == 1)
      {
        v6 = "First_Stop_On_left";
        goto LABEL_111;
      }

      v11 = *(a1 + 1473);
      v12 = "Destination_On_left";
      v13 = "Next_Stop_On_left";
      goto LABEL_108;
    case 0x22:
      v15 = *(a1 + 2120);
      if (*(v15 + 1562) == 1 && !*(v15 + 1560) && *(a1 + 1473) == 1 && *(a1 + 2288) == 1)
      {
        v6 = "First_Stop_On_Right";
      }

      else
      {
        v11 = *(a1 + 1473);
        v12 = "Destination_On_Right";
        v13 = "Next_Stop_On_Right";
LABEL_108:
        if (v11)
        {
          v6 = v13;
        }

        else
        {
          v6 = v12;
        }
      }

LABEL_111:
      sub_67E35C(a2, v6);
      return sub_84307C(a1, a2);
    case 0x23:
      v11 = *(a1 + 1936);
      v12 = &qword_27AE170;
      v13 = "U_Turn_When_Possible";
      goto LABEL_108;
    case 0x27:
      sub_851C94(a1, a2);
      return sub_84307C(a1, a2);
    case 0x29:
      goto LABEL_88;
    case 0x2A:
      v4 = "Roundabout_Second_Exit";
      goto LABEL_88;
    case 0x2B:
      v4 = "Roundabout_Third_Exit";
      goto LABEL_88;
    case 0x2C:
      v4 = "Roundabout_Fourth_Exit";
      goto LABEL_88;
    case 0x2D:
      v4 = "Roundabout_Fifth_Exit";
      goto LABEL_88;
    case 0x2E:
      v4 = "Roundabout_Sixth_Exit";
      goto LABEL_88;
    case 0x2F:
      v4 = &qword_27AE008;
      goto LABEL_88;
    case 0x30:
      v4 = "Roundabout_Eighth_Exit";
      goto LABEL_88;
    case 0x31:
      v4 = "Roundabout_Ninth_Exit";
      goto LABEL_88;
    case 0x32:
      v4 = "Roundabout_Tenth_Exit";
      goto LABEL_88;
    case 0x33:
      v4 = &qword_27AE020;
      goto LABEL_88;
    case 0x34:
      v4 = &qword_27AE038;
      goto LABEL_88;
    case 0x35:
      v4 = &qword_27AE050;
      goto LABEL_88;
    case 0x36:
      v4 = &qword_27AE068;
      goto LABEL_88;
    case 0x37:
      v4 = &qword_27AE080;
      goto LABEL_88;
    case 0x38:
      v4 = &qword_27AE098;
      goto LABEL_88;
    case 0x39:
      v4 = &qword_27AE0B0;
      goto LABEL_88;
    case 0x3A:
      v4 = &qword_27AE0C8;
      goto LABEL_88;
    case 0x3B:
      v4 = &qword_27AE0E0;
LABEL_88:
      sub_851F60(a1, v4, a2);
      return sub_84307C(a1, a2);
    case 0x3C:
      v8 = *(a1 + 1936);
      v9 = "Walking_Left_Turn";
      if (*(*(a1 + 2112) + 2346))
      {
        v9 = &qword_27AE200;
      }

      v10 = "Sharp_Left_Turn";
      goto LABEL_99;
    case 0x3D:
      v8 = *(a1 + 1936);
      v9 = "Walking_Right_Turn";
      if (*(*(a1 + 2112) + 2346))
      {
        v9 = &qword_27AE218;
      }

      v10 = "Sharp_Right_Turn";
      goto LABEL_99;
    case 0x3E:
      v8 = *(a1 + 1936);
      v9 = "Walking_Left_Turn";
      if (*(*(a1 + 2112) + 2346))
      {
        v9 = &qword_27AE230;
      }

      v10 = "Slight_Left_Turn";
      goto LABEL_99;
    case 0x3F:
      v8 = *(a1 + 1936);
      v9 = "Walking_Right_Turn";
      if (*(*(a1 + 2112) + 2346))
      {
        v9 = &qword_27AE248;
      }

      v10 = "Slight_Right_Turn";
LABEL_99:
      if (v8)
      {
        v18 = v10;
      }

      else
      {
        v18 = v9;
      }

      sub_851AA0(a1, v18, a2);
      return sub_84307C(a1, a2);
    case 0x40:
      if ((*(a1 + 1936) & 1) == 0)
      {
        goto LABEL_2;
      }

      v7 = "Change_Highway";
      goto LABEL_93;
    case 0x41:
      if ((*(a1 + 1936) & 1) == 0)
      {
        goto LABEL_2;
      }

      v7 = "Change_Highway_On_Left";
      goto LABEL_93;
    case 0x42:
      if (*(a1 + 1936) == 1)
      {
        v7 = &qword_27AE0F8;
LABEL_93:
        sub_852150(a1, v7, a2);
      }

      else
      {
LABEL_2:
        sub_8514D8(a1, a2, 1u);
      }

      return sub_84307C(a1, a2);
    case 0x52:
      goto LABEL_82;
    case 0x53:
      v5 = "Waypoint_Stop_On_Left";
      goto LABEL_82;
    case 0x54:
      v5 = "Waypoint_Stop_On_Right";
LABEL_82:
      sub_67E35C(a2, v5);
      sub_85AC60(a1, a2);
      return sub_84307C(a1, a2);
    case 0x55:
      sub_851734(a1, a2);
      return sub_84307C(a1, a2);
    case 0x56:
      if ((*(a1 + 1936) & 1) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_4;
    case 0x57:
      if (*(a1 + 1936) == 1)
      {
LABEL_4:
        sub_851E8C(a1, a2);
      }

      else
      {
LABEL_86:
        sub_852064(a1, a2);
      }

      return sub_84307C(a1, a2);
    case 0x58:
      sub_851818(a1, a2);
      return sub_84307C(a1, a2);
    case 0x59:
      v6 = "Enter_Detour";
      goto LABEL_111;
    case 0x5A:
      v6 = "Exit_Detour";
      goto LABEL_111;
    case 0x5B:
      sub_842900(a1, a2, (a1 + 152));
      return sub_84307C(a1, a2);
    case 0x5C:
      v6 = "Exit_Railway_Shuttle";
      goto LABEL_111;
    case 0x5D:
      sub_84295C(a1, a2, (a1 + 152));
      return sub_84307C(a1, a2);
    case 0x5E:
      sub_8429B8(a1, a2, (a1 + 152));
      return sub_84307C(a1, a2);
    case 0x5F:
      v6 = "Exit_Shuttle";
      goto LABEL_111;
    case 0x60:
      sub_842A14(a1, a2, (a1 + 152));
      return sub_84307C(a1, a2);
    case 0x61:
      v6 = "Walking_Turnaround";
      goto LABEL_111;
    default:
      return sub_84307C(a1, a2);
  }
}

void sub_850C08(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_5F0850(a4, a1 + 8);
  v54 = a4;
  sub_856DF8(a1, &__p);
  v53 = a3;
  if (*(a1 + 1933) == 1)
  {
    sub_848054(a1, &__p);
  }

  v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v9 = *&__p.__r_.__value_.__l.__data_;
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v12 = p_p + size;
  if (size >= 10)
  {
    v13 = size;
    v14 = p_p;
    do
    {
      v15 = memchr(v14, 95, v13 - 9);
      if (!v15)
      {
        break;
      }

      if (*v15 == 0x736F706E6769535FLL && *(v15 + 4) == 12916)
      {
        goto LABEL_18;
      }

      v14 = (v15 + 1);
      v13 = v12 - v14;
    }

    while (v12 - v14 > 9);
  }

  v15 = p_p + size;
LABEL_18:
  if (v15 == v12)
  {
    v17 = -1;
  }

  else
  {
    v17 = v15 - p_p;
  }

  v18 = *(a1 + 1928);
  if ((v18 - 33) < 2 || v18 == 18)
  {
    v20 = a2;
    if (a2)
    {
      goto LABEL_74;
    }

    v21 = *(a1 + 2120);
    if (*(v21 + 1562) == 1)
    {
      v22 = *(a1 + 1752);
    }

    else
    {
      v22 = *(a1 + 1752);
      if (v22 == 0xFFFF)
      {
        LOWORD(v22) = -1;
      }

      else if (*(v21 + 1216) == 2)
      {
        v22 = *(a1 + 1752);
      }

      else
      {
        LOWORD(v22) = v22 - 1;
      }
    }

    v25 = sub_84CB70(v21, v22);
    v26 = a2;
    if (sub_84CFD0(*(a1 + 2120), *(a1 + 1752)))
    {
      if ((v25 & 0x100) == 0)
      {
        if ((*(*(a1 + 2112) + 2505) & 1) != 0 || (v25 & 0x1000000) == 0)
        {
          goto LABEL_117;
        }

LABEL_46:
        __dst.__r_.__value_.__r.__words[2] = 0x700000000000000;
        *&__dst.__r_.__value_.__l.__data_ = *"Address";
        v27 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
LABEL_47:
          v27 = __p.__r_.__value_.__l.__size_;
          if ((__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1 == __p.__r_.__value_.__l.__size_)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

LABEL_53:
            operator new();
          }

          v28 = __p.__r_.__value_.__r.__words[0];
LABEL_92:
          v28->__r_.__value_.__s.__data_[v27] = 95;
          v38 = v27 + 1;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            __p.__r_.__value_.__l.__size_ = v38;
          }

          else
          {
            *(&__p.__r_.__value_.__s + 23) = v38 & 0x7F;
          }

          v28->__r_.__value_.__s.__data_[v38] = 0;
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v40 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v40 = __dst.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, p_dst, v40);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          goto LABEL_117;
        }

LABEL_52:
        v28 = &__p;
        if (v27 == 22)
        {
          goto LABEL_53;
        }

        goto LABEL_92;
      }
    }

    else
    {
      if ((*(*(a1 + 2112) + 2505) & 1) == 0 && (v25 & 0x1000000) != 0)
      {
        goto LABEL_46;
      }

      if ((v25 & 0x100) == 0)
      {
        goto LABEL_117;
      }
    }

    __dst.__r_.__value_.__r.__words[2] = 0x400000000000000;
    *&__dst.__r_.__value_.__l.__data_ = *"Name";
    v27 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_52;
  }

  v20 = a2;
  if (v18 == 17 && *(a1 + 1936) == 1)
  {
    v23 = *(a1 + 2128);
    v24 = *(v23 + 23);
    if (v24 < 0)
    {
      if (!*(v23 + 8))
      {
        goto LABEL_74;
      }
    }

    else if (!*(v23 + 23))
    {
      goto LABEL_74;
    }

    v30 = *(&xmmword_27AE668 + 1);
    v29 = xmmword_27AE668;
    if (xmmword_27AE668 != *(&xmmword_27AE668 + 1))
    {
      if (v24 >= 0)
      {
        v31 = *(v23 + 23);
      }

      else
      {
        v31 = *(v23 + 8);
      }

      if (v24 >= 0)
      {
        v32 = *(a1 + 2128);
      }

      else
      {
        v32 = *v23;
      }

      while (1)
      {
        v33 = *(v29 + 23);
        v34 = v33;
        if ((v33 & 0x80u) != 0)
        {
          v33 = *(v29 + 8);
        }

        if (v33 == v31)
        {
          v35 = v34 >= 0 ? v29 : *v29;
          if (!memcmp(v35, v32, v31))
          {
            break;
          }
        }

        v29 += 24;
        if (v29 == v30)
        {
          goto LABEL_74;
        }
      }
    }

    if (v29 != v30)
    {
      if ((v8 & 0x80) != 0)
      {
        v8 = *(&v9 + 1);
        if ((__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1 == *(&v9 + 1))
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

LABEL_105:
          operator new();
        }

        v36 = v9;
      }

      else
      {
        v36 = &__p;
        if (v8 == 22)
        {
          goto LABEL_105;
        }
      }

      v36->__r_.__value_.__s.__data_[v8] = 95;
      v41 = v8 + 1;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        __p.__r_.__value_.__l.__size_ = v8 + 1;
      }

      else
      {
        *(&__p.__r_.__value_.__s + 23) = v41 & 0x7F;
      }

      v26 = v20;
      v36->__r_.__value_.__s.__data_[v41] = 0;
      v42 = *(a1 + 2128);
      v43 = *(v42 + 23);
      if (v43 >= 0)
      {
        v44 = *(a1 + 2128);
      }

      else
      {
        v44 = *v42;
      }

      if (v43 >= 0)
      {
        v45 = *(v42 + 23);
      }

      else
      {
        v45 = *(v42 + 8);
      }

      std::string::append(&__p, v44, v45);
      goto LABEL_117;
    }
  }

LABEL_74:
  v26 = v20;
  if (v17 != -1 && ((*(a1 + 2280) & 1) != 0 || (*(a1 + 2281) & 1) != 0 || (*(a1 + 2284) & 1) != 0 || (*(a1 + 2282) & 1) != 0 || *(a1 + 2283) == 1))
  {
    if (size >= v17)
    {
      v37 = v17;
    }

    else
    {
      v37 = size;
    }

    if (v37 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v37 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v37;
    if (v37)
    {
      memmove(&__dst, p_p, v37);
      __dst.__r_.__value_.__s.__data_[v37] = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_87;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_87:
        __p = __dst;
        goto LABEL_117;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_87;
  }

LABEL_117:
  v46 = v54;
  if (*(a1 + 1943) == 1 && (v26 & 1) == 0)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v47 = __p.__r_.__value_.__l.__size_;
    }

    if (v47 + 6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v47 + 6 >= 0x17)
    {
      operator new();
    }

    __dst.__r_.__value_.__r.__words[2] = 0;
    *(&__dst.__r_.__value_.__s + 23) = v47 + 6;
    *&__dst.__r_.__value_.__l.__data_ = 0x5F7265746E45uLL;
    if (v47)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = &__p;
      }

      else
      {
        v48 = __p.__r_.__value_.__r.__words[0];
      }

      memmove(__dst.__r_.__value_.__r.__words + 6, v48, v47);
    }

    *(__dst.__r_.__value_.__r.__words + v47 + 6) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = __dst;
  }

  sub_856FA0(a1, &__p.__r_.__value_.__l.__data_, v53, &__dst);
  sub_67E58C(v46, &__dst);
  v49 = __dst.__r_.__value_.__r.__words[0];
  if (__dst.__r_.__value_.__r.__words[0])
  {
    v50 = __dst.__r_.__value_.__l.__size_;
    v51 = __dst.__r_.__value_.__r.__words[0];
    if (__dst.__r_.__value_.__l.__size_ != __dst.__r_.__value_.__r.__words[0])
    {
      do
      {
        v52 = *(v50 - 1);
        v50 -= 3;
        if (v52 < 0)
        {
          operator delete(*v50);
        }
      }

      while (v50 != v49);
      v51 = __dst.__r_.__value_.__r.__words[0];
    }

    __dst.__r_.__value_.__l.__size_ = v49;
    operator delete(v51);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_8513F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void ***a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
    sub_53A58C(a12);
    _Unwind_Resume(a1);
  }

  sub_53A58C(a12);
  _Unwind_Resume(a1);
}

void sub_8514D8(std::string *a1, __int128 **a2, unsigned __int8 a3)
{
  if ((a1[80].__r_.__value_.__s.__data_[20] & a3) != 0)
  {
    v5 = "Walking_Continue_Cross";
  }

  else
  {
    v5 = "Walking_Continue";
  }

  if (a1[80].__r_.__value_.__s.__data_[16])
  {
    v5 = "Continue";
  }

  *__p = *v5;
  v8 = *(v5 + 2);
  sub_67E35C(a2, __p);
  sub_67F210(a2, "_Intersection", "{Intersection}", &a1[12].__r_.__value_.__r.__words[2]);
  if (a1[80].__r_.__value_.__s.__data_[14] == 1 && a1[80].__r_.__value_.__s.__data_[16] == 1)
  {
    sub_67F210(a2, "_Freeway", "{Freeway}", &a1[6].__r_.__value_.__l.__size_);
    sub_67F2AC(a2, "{Shield1}", &a1[6].__r_.__value_.__l.__size_, 1);
  }

  else
  {
    sub_85A840(a1, a2, &a1[6].__r_.__value_.__l.__size_, a1[81].__r_.__value_.__r.__words);
  }

  v6 = nullsub_1(a2);
  sub_84C518(a1, *v6);
  sub_84C13C(a1, a2, &a1[81]);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_851614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_851634(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1936))
  {
    v4 = "Start_Route";
  }

  else
  {
    v5 = *(a1 + 1928);
    v6 = v5 > 0x23;
    v7 = (1 << v5) & 0x804000010;
    if (v6 || v7 == 0)
    {
      v4 = "Start_Route";
    }

    else
    {
      v4 = "Walking_Start_Route";
    }
  }

  sub_67E35C(a2, v4);

  sub_85A840(a1, a2, (a1 + 152), (a1 + 1944));
}

void sub_8516CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1936))
  {
    v4 = "Start_Route_U_Turn";
  }

  else
  {
    v4 = &qword_27AE140;
  }

  sub_67E35C(a2, v4);

  sub_85A840(a1, a2, (a1 + 152), (a1 + 1944));
}

void sub_851734(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 1936) & 1) != 0 || ((v5 = *(a1 + 1928), v6 = v5 > 0x23, v7 = (1 << v5) & 0x804000010, !v6) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    if (*(*(a1 + 2120) + 1560) == 11)
    {
      v4 = "Resume_Route";
    }

    else
    {
      v4 = "Continue_Route";
    }
  }

  else
  {
    v4 = "Walking_Start_Route";
  }

  *__p = *v4;
  v10 = *(v4 + 2);
  sub_67E35C(a2, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  sub_85A840(a1, a2, (a1 + 152), (a1 + 1944));
}

void sub_8517FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_851818(void *a1, uint64_t a2)
{
  if (*(a1[265] + 1560) == 11)
  {
    v4 = "Resume_Route";
  }

  else
  {
    v4 = "Continue_Route";
  }

  v11 = *(v4 + 2);
  *v10 = *v4;
  v5 = SHIBYTE(v11);
  if ((SHIBYTE(v11) & 0x8000000000000000) != 0)
  {
    v5 = v10[1];
    v6 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v6 - v10[1] < 7)
    {
      if ((0x7FFFFFFFFFFFFFF7 - (v11 & 0x7FFFFFFFFFFFFFFFLL)) < v10[1] - v6 + 7)
      {
        sub_3244();
      }

LABEL_9:
      operator new();
    }

    v7 = v10[0];
  }

  else
  {
    if ((SHIBYTE(v11) - 16) < 7)
    {
      goto LABEL_9;
    }

    v7 = v10;
  }

  v8 = v5 + v7;
  *(v8 + 3) = 1852994900;
  *v8 = 1415533919;
  v9 = v5 + 7;
  if (SHIBYTE(v11) < 0)
  {
    v10[1] = v5 + 7;
  }

  else
  {
    HIBYTE(v11) = v9 & 0x7F;
  }

  v9[v7] = 0;
  *__p = *v10;
  v13 = v11;
  v10[1] = 0;
  v11 = 0;
  v10[0] = 0;
  sub_67E35C(a2, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v11) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    operator delete(v10[0]);
    goto LABEL_17;
  }

  if (SHIBYTE(v11) < 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  sub_85A840(a1, a2, a1 + 19, a1 + 243);
}

void sub_851A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_851AA0(std::string *a1, char *a2, std::string **a3)
{
  sub_67E35C(a3, a2);
  if (a1[80].__r_.__value_.__s.__data_[20] == 1)
  {
    sub_67EAA4(a3, "_Cross");
  }

  sub_67F210(a3, "_Intersection", "{Intersection}", &a1[12].__r_.__value_.__r.__words[2]);
  if (a1[80].__r_.__value_.__s.__data_[14] == 1 && a1[80].__r_.__value_.__s.__data_[16] == 1)
  {
    sub_67F210(a3, "_Freeway", "{Freeway}", &a1[6].__r_.__value_.__l.__size_);
    sub_67F2AC(a3, "{Shield1}", &a1[6].__r_.__value_.__l.__size_, 1);
  }

  else
  {
    sub_85A840(a1, a3, &a1[6].__r_.__value_.__l.__size_, a1[81].__r_.__value_.__r.__words);
  }

  v5 = nullsub_1(a3);
  sub_84C518(a1, *v5);
  sub_84C13C(a1, a3, &a1[81]);
  if (a1[80].__r_.__value_.__s.__data_[21] == 1 && a1[80].__r_.__value_.__s.__data_[16] == 1 && !sub_734C10(&a1[6].__r_.__value_.__l.__size_) && !sub_734C10(&a1[12].__r_.__value_.__r.__words[2]) && !sub_734C10(&a1[19]) && !sub_734C10(&a1[25].__r_.__value_.__l.__size_) && a1[38].__r_.__value_.__r.__words[0] == a1[38].__r_.__value_.__l.__size_ && a1[39].__r_.__value_.__r.__words[0] == a1[39].__r_.__value_.__l.__size_ && a1[40].__r_.__value_.__r.__words[0] == a1[40].__r_.__value_.__l.__size_)
  {

    sub_67EAA4(a3, "_Parking");
  }
}

void sub_851C2C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1935))
  {
    v4 = &qword_27AE1D0;
  }

  else
  {
    v4 = "End_Of_Navigation";
  }

  sub_67E35C(a2, v4);

  sub_85A840(a1, a2, (a1 + 152), (a1 + 1944));
}

void sub_851C94(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1935))
  {
    v4 = &qword_27AE1E8;
  }

  else
  {
    v4 = "End_Of_Navigation";
  }

  sub_67E35C(a2, v4);

  sub_85A840(a1, a2, (a1 + 152), (a1 + 1944));
}

void sub_851CFC(uint64_t a1, std::string **a2)
{
  sub_67E35C(a2, "Waypoint_Stop");

  sub_85AC60(a1, a2);
}

void sub_851D48(uint64_t a1, std::string **a2)
{
  sub_67E35C(a2, "Waypoint_Stop_On_Left");

  sub_85AC60(a1, a2);
}

void sub_851D94(uint64_t a1, std::string **a2)
{
  sub_67E35C(a2, "Waypoint_Stop_On_Right");

  sub_85AC60(a1, a2);
}

void sub_851DE0(void *a1, uint64_t a2)
{
  sub_67E35C(a2, "Enter_Roundabout");
  if (sub_734C10((a1 + 19)))
  {

    sub_85A840(a1, a2, a1 + 19, a1 + 243);
  }

  else if (sub_734C10((a1 + 38)))
  {

    sub_67F210(a2, "_Intersection", "{Intersection}", a1 + 38);
  }
}

void sub_851E8C(uint64_t a1, uint64_t a2)
{
  sub_67E35C(a2, "Leave_Roundabout");
  sub_67F210(a2, "_Intersection", "{Intersection}", (a1 + 304));
  if (*(a1 + 1934) == 1 && *(a1 + 1936) == 1)
  {
    sub_67F210(a2, "_Freeway", "{Freeway}", (a1 + 152));

    sub_67F2AC(a2, "{Shield1}", (a1 + 152), 1);
  }

  else
  {

    sub_85A840(a1, a2, (a1 + 152), (a1 + 1944));
  }
}

void sub_851F60(uint64_t a1, char *a2, uint64_t a3)
{
  if (*(a1 + 1936) == 1)
  {
    sub_67E35C(a3, a2);
    sub_67F210(a3, "_Intersection", "{Intersection}", (a1 + 304));
    if (*(a1 + 1934) == 1 && *(a1 + 1936) == 1)
    {
      sub_67F210(a3, "_Freeway", "{Freeway}", (a1 + 152));

      sub_67F2AC(a3, "{Shield1}", (a1 + 152), 1);
      return;
    }
  }

  else
  {
    v5 = *(a1 + 1928);
    v6 = &qword_27AE1B8;
    if (v5 != 87)
    {
      v6 = &qword_27AE188;
    }

    if (v5 == 86)
    {
      v7 = &qword_27AE1A0;
    }

    else
    {
      v7 = v6;
    }

    sub_67E35C(a3, v7);
  }

  sub_85A840(a1, a3, (a1 + 152), (a1 + 1944));
}

void sub_852064(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1928);
  v5 = &qword_27AE1B8;
  if (v4 != 87)
  {
    v5 = &qword_27AE188;
  }

  if (v4 == 86)
  {
    v6 = &qword_27AE1A0;
  }

  else
  {
    v6 = v5;
  }

  sub_67E35C(a2, v6);

  sub_85A840(a1, a2, (a1 + 152), (a1 + 1944));
}

void sub_8520D4(uint64_t a1, char *a2, uint64_t a3)
{
  sub_67E35C(a3, a2);
  sub_67F210(a3, "_ExitNumber", "{ExitNumber}", (a1 + 456));
  sub_67F210(a3, "_Intersection", "{Intersection}", (a1 + 304));

  sub_85AACC(a1, a3);
}

void sub_852150(uint64_t a1, char *a2, uint64_t a3)
{
  sub_67E35C(a3, a2);
  sub_67F210(a3, "_ExitNumber", "{ExitNumber}", (a1 + 456));
  sub_67F210(a3, "_Intersection", "{Intersection}", (a1 + 304));
  if (*(a1 + 1934) == 1 && *(a1 + 1936) == 1)
  {
    sub_67F210(a3, "_Freeway", "{Freeway}", (a1 + 152));

    sub_67F2AC(a3, "{Shield1}", (a1 + 152), 1);
  }

  else
  {

    sub_85A840(a1, a3, (a1 + 152), (a1 + 1944));
  }
}

void sub_852248(uint64_t a1@<X0>, __int128 **a2@<X8>)
{
  sub_5F0850(a2, a1 + 8);
  sub_67F320(a2, &__p);
  v3 = SHIBYTE(v10);
  if ((SHIBYTE(v10) & 0x8000000000000000) != 0)
  {
    v3 = v9;
    v4 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v4 - v9) < 5)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v10 & 0x7FFFFFFFFFFFFFFFuLL) < v9 + 5 - v4)
      {
        sub_3244();
      }

LABEL_6:
      operator new();
    }

    p_p = __p;
  }

  else
  {
    if ((SHIBYTE(v10) - 18) < 5)
    {
      goto LABEL_6;
    }

    p_p = &__p;
  }

  v6 = &p_p[v3];
  v6[4] = 116;
  *v6 = 1936280671;
  v7 = v3 + 5;
  if (SHIBYTE(v10) < 0)
  {
    v9 = v3 + 5;
  }

  else
  {
    HIBYTE(v10) = v7 & 0x7F;
  }

  p_p[v7] = 0;
  sub_67E35C(a2, &__p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }
}

void sub_85242C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C(v15);
  _Unwind_Resume(a1);
}

void sub_852450(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 24))(&v13);
  v11 = 0;
  v12 = 0;
  sub_680484(a2, &v13, 1, &v11);
  v3 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = v16;
  if (v16)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v13;
  if (v13)
  {
    v8 = v14;
    v9 = v13;
    if (v14 != v13)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v13;
    }

    v14 = v7;
    operator delete(v9);
  }
}

void sub_85257C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  _Unwind_Resume(a1);
}

void sub_852598(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *v28 = *"Merge";
  v29 = 0x500000000000000;
  *v25 = 0u;
  v26 = 0u;
  v27 = 1065353216;
  if (sub_734C10(a1 + 608))
  {
    __p[0] = "{Road}";
    v4 = sub_666FBC(v25, "{Road}");
    sub_52CB8C(v4 + 5, (a1 + 608));
  }

  if (!*(&v26 + 1))
  {
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 56) = 1065353216;
    *(a2 + 64) = 1;
    goto LABEL_33;
  }

  v5 = SHIBYTE(v29);
  if ((SHIBYTE(v29) & 0x8000000000000000) != 0)
  {
    v5 = v28[1];
    v6 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v6 - v28[1] < 5)
    {
      if ((0x7FFFFFFFFFFFFFF7 - (v29 & 0x7FFFFFFFFFFFFFFFLL)) >= v28[1] - v6 + 5)
      {
        goto LABEL_10;
      }

      goto LABEL_40;
    }

    v7 = v28[0];
  }

  else
  {
    if ((SHIBYTE(v29) - 18) < 5)
    {
LABEL_10:
      operator new();
    }

    v7 = v28;
  }

  v9 = v5 + v7;
  v9[4] = 100;
  *v9 = 1634685535;
  v10 = v5 + 5;
  if (SHIBYTE(v29) < 0)
  {
    v28[1] = v5 + 5;
    v10[v7] = 0;
    v11 = SHIBYTE(v29);
    if ((SHIBYTE(v29) & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    HIBYTE(v29) = v10 & 0x7F;
    v10[v7] = 0;
    v11 = SHIBYTE(v29);
    if ((SHIBYTE(v29) & 0x8000000000000000) != 0)
    {
LABEL_18:
      v11 = v28[1];
      v12 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v12 - v28[1] < 5)
      {
        if ((0x7FFFFFFFFFFFFFF7 - (v29 & 0x7FFFFFFFFFFFFFFFLL)) >= v28[1] - v12 + 5)
        {
          goto LABEL_20;
        }

LABEL_40:
        sub_3244();
      }

      v8 = v28[0];
      goto LABEL_24;
    }
  }

  if (v11 - 18 < &dword_4 + 1)
  {
LABEL_20:
    operator new();
  }

  v8 = v28;
LABEL_24:
  v13 = v11 + v8;
  v13[4] = 110;
  *v13 = 1734955871;
  v14 = v11 + 5;
  if (SHIBYTE(v29) < 0)
  {
    v28[1] = v11 + 5;
  }

  else
  {
    HIBYTE(v29) = v14 & 0x7F;
  }

  v14[v8] = 0;
  *__p = 0u;
  v23 = 0u;
  v24 = 1065353216;
  if (sub_734C10(a1 + 608))
  {
    v30 = "{Road}";
    v15 = sub_666FBC(__p, "{Road}");
    sub_52CB8C(v15 + 5, (a1 + 608));
  }

  sub_67E4F8(a2, v28, __p);
  v16 = v23;
  if (v23)
  {
    do
    {
      v17 = *v16;
      sub_55F7FC((v16 + 2));
      operator delete(v16);
      v16 = v17;
    }

    while (v17);
  }

  v18 = __p[0];
  __p[0] = 0;
  if (v18)
  {
    operator delete(v18);
  }

LABEL_33:
  v19 = v26;
  if (v26)
  {
    do
    {
      v20 = *v19;
      sub_55F7FC((v19 + 2));
      operator delete(v19);
      v19 = v20;
    }

    while (v20);
  }

  v21 = v25[0];
  v25[0] = 0;
  if (v21)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }
}

void sub_852A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_540798(&a9);
  sub_540798(&a15);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_852A44(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 1928);
  v5 = v4 > 0x22 || ((1 << v4) & 0x600040000) == 0;
  if (!v5 || v4 - 82 <= 2)
  {

    sub_852CEC(a1, a3);
    return;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = *(a1 + 936);
  v8 = *(a1 + 944);
  if (v7 != v8)
  {
    if (v8 - v7 == 152)
    {
      goto LABEL_11;
    }

LABEL_16:
    v12 = *(a1 + 1928);
    if (((1 << v12) & 0x60000800) != 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = 1;
    }

    if (v12 <= 0x1E)
    {
      v9 = v13;
    }

    else
    {
      v9 = 1;
    }

    if ((*(a1 + 2282) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v10 = "Ferry";
    goto LABEL_24;
  }

  v11 = a1;
  if (!sub_734C10(a1 + 304))
  {
    return;
  }

  a1 = v11;
  if (*(v11 + 944) - *(v11 + 936) != 152)
  {
    goto LABEL_16;
  }

LABEL_11:
  v9 = 1;
  if (*(a1 + 2282))
  {
    goto LABEL_23;
  }

LABEL_12:
  if (*(a1 + 2283))
  {
    v10 = "ShuttleName";
  }

  else if (*(a1 + 2281))
  {
    v10 = "Intersection";
  }

  else if (*(a1 + 2280))
  {
    v10 = "Freeway";
  }

  else
  {
    v10 = "Road";
  }

LABEL_24:
  if (v10[23] < 0)
  {
    sub_325C(__p, *v10, *(v10 + 1));
  }

  else
  {
    *__p = *v10;
    v21 = *(v10 + 2);
  }

  v14 = "Road1";
  if (v9)
  {
    v14 = __p;
  }

  if (v14 != a3)
  {
    v15 = HIBYTE(v21);
    if (!v9)
    {
      v15 = 5;
    }

    if (*(a3 + 23) < 0)
    {
      v16 = __p[1];
      if (!v9)
      {
        v16 = 0;
      }

      if (v15 >= 0)
      {
        v17 = v14;
      }

      else
      {
        v17 = *v14;
      }

      if (v15 >= 0)
      {
        v18 = v15;
      }

      else
      {
        v18 = v16;
      }

      sub_13B38(a3, v17, v18);
    }

    else if (v15 < 0)
    {
      if (v9)
      {
        v19 = __p[1];
      }

      else
      {
        v19 = 0;
      }

      sub_13A68(a3, *v14, v19);
    }

    else
    {
      *a3 = *v14;
      *(a3 + 16) = v14[2];
    }
  }

  if (((v9 | a2) & 1) == 0)
  {
    std::string::append(a3, "_Road2", 6uLL);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_852C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if ((*(v14 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v14);
  _Unwind_Resume(exception_object);
}

void sub_852CEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 1928) - 82) <= 2)
  {

    sub_85AEF8(a1, a2);
    return;
  }

  v4 = *(a1 + 2120);
  if (*(v4 + 1562) == 1)
  {
    v5 = *(a1 + 1752);
  }

  else
  {
    v5 = *(a1 + 1752);
    if (v5 == 0xFFFF)
    {
      LOWORD(v5) = -1;
    }

    else if (*(v4 + 1216) == 2)
    {
      v5 = *(a1 + 1752);
    }

    else
    {
      LOWORD(v5) = v5 - 1;
    }
  }

  v6 = sub_84CB70(v4, v5);
  if (sub_84CFD0(*(a1 + 2120), *(a1 + 1752)))
  {
    if ((v6 & 1) == 0)
    {
      if ((v6 & 0x10000) == 0)
      {
        goto LABEL_40;
      }

LABEL_17:
      v7 = "Address";
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ((v6 & 0x10000) != 0)
  {
    goto LABEL_17;
  }

  if (v6)
  {
LABEL_21:
    v7 = "Name";
    goto LABEL_22;
  }

LABEL_40:
  v7 = &xmmword_22A2550;
LABEL_22:
  *__p = *v7;
  v19 = *(v7 + 2);
  if (v19 >= 0)
  {
    v8 = HIBYTE(v19);
  }

  else
  {
    v8 = __p[1];
  }

  if (!v8)
  {
    sub_8561D0(a1, a2);
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      return;
    }

LABEL_60:
    operator delete(__p[0]);
    return;
  }

  v9 = *(a1 + 2120);
  if (*(v9 + 1562) == 1 && !*(v9 + 1560) && *(a1 + 1473) == 1 && *(a1 + 2288) == 1)
  {
    v10 = *(a1 + 1928);
    if (v10 == 34)
    {
      BYTE1(v17[1]) = 0;
      WORD1(v17[1]) = 24320;
      DWORD1(v17[1]) = 335544320;
      v11 = 20;
      strcpy(v17, "First_Stop_On_Ri");
    }

    else if (v10 == 33)
    {
      v11 = 19;
      DWORD1(v17[1]) = 0;
      strcpy(v17, "First_Stop_On_left_");
    }

    else
    {
      HIDWORD(v17[0]) = 0;
      *&v17[1] = 0xB00000000000000;
      v11 = 11;
      strcpy(v17, "First_Stop_");
    }

    v14 = &v8[v11];
    if (&v8[v11] > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v14 > 0x16)
    {
      operator new();
    }
  }

  else if (*(a1 + 1473) == 1)
  {
    v12 = *(a1 + 1928);
    if (v12 == 34)
    {
      v11 = 19;
      DWORD1(v17[1]) = 0;
      strcpy(v17, "Next_Stop_On_Right_");
    }

    else if (v12 == 33)
    {
      BYTE3(v17[1]) = 0;
      DWORD1(v17[1]) = 301989888;
      v11 = 18;
      strcpy(v17, "Next_Stop_On_left_");
    }

    else
    {
      BYTE11(v17[0]) = 0;
      HIDWORD(v17[0]) = 0;
      *&v17[1] = 0xA00000000000000;
      v11 = 10;
      strcpy(v17, "Next_Stop_");
    }

    v14 = &v8[v11];
    if (&v8[v11] > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v14 > 0x16)
    {
      operator new();
    }
  }

  else
  {
    v13 = *(a1 + 1928);
    if (v13 == 34)
    {
      v17[0] = *"On_Right_";
      *&v17[1] = 0x900000000000000;
      v11 = 9;
    }

    else if (v13 == 33)
    {
      *&v17[1] = 0x800000000000000;
      v17[0] = *"On_Left_";
      v11 = 8;
    }

    else
    {
      BYTE9(v17[0]) = 0;
      WORD5(v17[0]) = 24320;
      HIDWORD(v17[0]) = 0;
      *&v17[1] = 0xC00000000000000;
      v11 = 12;
      strcpy(v17, "Destinat");
    }

    v14 = &v8[v11];
    if (&v8[v11] > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v14 > 0x16)
    {
      operator new();
    }
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 23) = v14;
  memcpy(a2, v17, v11);
  v15 = a2 + v11;
  if (v19 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  memmove(v15, v16, v8);
  v8[v15] = 0;
  if (SHIBYTE(v19) < 0)
  {
    goto LABEL_60;
  }
}

void sub_8531D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_8531F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  return v2 != 0;
}

std::string *sub_853218@<X0>(std::string *result@<X0>, char a2@<W1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  data = result[40].__r_.__value_.__l.__data_;
  size = result[40].__r_.__value_.__l.__size_;
  if (data != size)
  {
    v6 = size - data;
    if (a3 != "Signpost1")
    {
      *&a3->__r_.__value_.__l.__data_ = *"Signpost1";
      a3->__r_.__value_.__r.__words[2] = 0x900000000000000;
    }

    if (v6 != 152 && (a2 & 1) == 0)
    {
      return std::string::append(a3, "_Signpost2", 0xAuLL);
    }
  }

  return result;
}

void sub_853294(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_8532F8(uint64_t a1)
{
  sub_67F320((a1 + 8), __p);
  v129 = a1;
  v2 = *(a1 + 1936);
  v3 = HIBYTE(v139);
  LOBYTE(v4) = HIBYTE(v139);
  v5 = __p[0];
  v6 = __p[1];
  if (v139 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v139 >= 0)
  {
    v8 = HIBYTE(v139);
  }

  else
  {
    v8 = __p[1];
  }

  v9 = v7 + v8;
  if (v2 != 1)
  {
    if (v8 < 13)
    {
LABEL_25:
      v18 = 0;
    }

    else
    {
      v14 = v8;
      v15 = v7;
      while (1)
      {
        v16 = memchr(v15, 95, v14 - 12);
        if (!v16)
        {
          goto LABEL_25;
        }

        if (*v16 == 0x65737265746E495FLL && *(v16 + 5) == 0x6E6F697463657372)
        {
          break;
        }

        v15 = (v16 + 1);
        v14 = v9 - v15;
        if (v9 - v15 < 13)
        {
          goto LABEL_25;
        }
      }

      v18 = 0;
      if (v16 != v9 && v16 - v7 != -1)
      {
        v23 = v8;
        v24 = v7;
        while (1)
        {
          v25 = memchr(v24, 87, v23 - 7);
          if (!v25)
          {
            goto LABEL_25;
          }

          if (*v25 == 0x5F676E696B6C6157)
          {
            break;
          }

          v18 = 0;
          v24 = (v25 + 1);
          v23 = v9 - v24;
          if (v9 - v24 < 8)
          {
            goto LABEL_26;
          }
        }

        if (v25 - v7 == -1 || v25 == v9)
        {
          v18 = 0;
        }

        else
        {
          v18 = 13;
        }
      }
    }

LABEL_26:
    if (v8 >= 5)
    {
      v19 = v8;
      v20 = v7;
      while (1)
      {
        v21 = memchr(v20, 95, v19 - 4);
        if (!v21)
        {
          goto LABEL_92;
        }

        if (*v21 == 1634685535 && v21[4] == 100)
        {
          break;
        }

        v20 = (v21 + 1);
        v19 = v9 - v20;
        if (v9 - v20 < 5)
        {
          goto LABEL_92;
        }
      }

      if (v21 != v9 && v21 - v7 != -1)
      {
        if (v8 >= v18 + v21 - v7 + 6)
        {
          v8 = v18 + v21 - v7 + 6;
        }

        if (v8 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v8 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v143) = v8;
        if (v18 + v21 - v7 != -6)
        {
          memmove(&__dst, v7, v8);
        }

        *(&__dst + v8) = 0;
        if (SHIBYTE(v139) < 0)
        {
          operator delete(__p[0]);
        }

        v139 = v143;
        *__p = __dst;
        v3 = HIBYTE(v143);
        v6 = *(&__dst + 1);
        v5 = __dst;
        v4 = HIBYTE(v143);
      }
    }

LABEL_92:
    if ((v4 & 0x80u) == 0)
    {
      v34 = __p;
    }

    else
    {
      v34 = v5;
    }

    if ((v4 & 0x80u) == 0)
    {
      v35 = v3;
    }

    else
    {
      v35 = v6;
    }

    if (v35 >= 8)
    {
      v36 = v34 + v35;
      v37 = v35;
      v38 = v34;
      while (1)
      {
        v39 = memchr(v38, 95, v37 - 7);
        if (!v39)
        {
          goto LABEL_268;
        }

        if (*v39 == 0x796177656572465FLL)
        {
          break;
        }

        v38 = (v39 + 1);
        v37 = v36 - v38;
        if (v36 - v38 < 8)
        {
          goto LABEL_268;
        }
      }

      if (v39 != v36 && v39 - v34 != -1)
      {
        v40 = v18 + v39 - v34 + 9;
        if (v35 >= v40)
        {
          v41 = v18 + v39 - v34 + 9;
        }

        else
        {
          v41 = v35;
        }

        if (v41 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v41 >= 0x17)
        {
          operator new();
        }

        goto LABEL_258;
      }
    }

LABEL_268:
    v86 = *(v129 + 1928);
    v87 = v86 > 0x22;
    v88 = (1 << v86) & 0x600040000;
    if (v87 || v88 == 0)
    {
LABEL_328:
      if (v139 >= 0)
      {
        v102 = HIBYTE(v139);
      }

      else
      {
        v102 = __p[1];
      }

      if (v102 + 5 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v102 + 5 >= 0x17)
      {
        operator new();
      }

      v143 = 0;
      __dst = 0uLL;
      HIBYTE(v143) = v102 + 5;
      if (v102)
      {
        v103 = HIBYTE(v139);
        if (v139 >= 0)
        {
          v104 = __p;
        }

        else
        {
          v104 = __p[0];
        }

        memmove(&__dst, v104, v102);
      }

      else
      {
        v103 = HIBYTE(v139);
      }

      strcpy(&__dst + v102, "_Sign");
      if (v103 < 0)
      {
        operator delete(__p[0]);
        v139 = v143;
        *__p = __dst;
        v105 = HIBYTE(v143);
        if ((SHIBYTE(v143) & 0x80000000) == 0)
        {
          goto LABEL_341;
        }
      }

      else
      {
        v139 = v143;
        *__p = __dst;
        v105 = HIBYTE(v143);
        if ((SHIBYTE(v143) & 0x80000000) == 0)
        {
LABEL_341:
          __dst = *__p;
          v143 = v139;
          goto LABEL_344;
        }
      }

      sub_325C(&__dst, __p[0], __p[1]);
      v105 = HIBYTE(v139);
LABEL_344:
      if ((v105 & 0x80u) == 0)
      {
        v106 = v105;
      }

      else
      {
        v106 = __p[1];
      }

      if (v106 + 6 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v106 + 6 >= 0x17)
      {
        operator new();
      }

      v144[1] = 0;
      v145 = 0;
      v144[0] = 0;
      HIBYTE(v145) = v106 + 6;
      if (v106)
      {
        if ((v105 & 0x80u) == 0)
        {
          v107 = __p;
        }

        else
        {
          v107 = __p[0];
        }

        memmove(v144, v107, v106);
      }

      strcpy(v144 + v106, "_Short");
      if ((v105 & 0x80u) == 0)
      {
        v108 = v105;
      }

      else
      {
        v108 = __p[1];
      }

      if (v108 + 6 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v108 + 6 >= 0x17)
      {
        operator new();
      }

      v134[1] = 0;
      v135 = 0;
      v134[0] = 0;
      HIBYTE(v135) = v108 + 6;
      if (v108)
      {
        if (v139 >= 0)
        {
          v109 = __p;
        }

        else
        {
          v109 = __p[0];
        }

        memmove(v134, v109, v108);
      }

      strcpy(v134 + v108, "_Short");
      v110 = SHIBYTE(v135);
      if ((SHIBYTE(v135) & 0x8000000000000000) != 0)
      {
        v110 = v134[1];
        v111 = (v135 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v111 - v134[1] < 6)
        {
          if ((0x7FFFFFFFFFFFFFF7 - (v135 & 0x7FFFFFFFFFFFFFFFLL)) < v134[1] - v111 + 6)
          {
            sub_3244();
          }

LABEL_371:
          operator new();
        }

        v112 = v134[0];
      }

      else
      {
        if ((SHIBYTE(v135) - 17) < 6)
        {
          goto LABEL_371;
        }

        v112 = v134;
      }

      v113 = v110 + v112;
      *(v113 + 2) = 29810;
      *v113 = 1869108063;
      v114 = v110 + 6;
      if (SHIBYTE(v135) < 0)
      {
        v134[1] = v110 + 6;
      }

      else
      {
        HIBYTE(v135) = v114 & 0x7F;
      }

      v114[v112] = 0;
      v146 = *v134;
      v147 = v135;
      v134[1] = 0;
      v135 = 0;
      v134[0] = 0;
      if (v139 >= 0)
      {
        v115 = HIBYTE(v139);
      }

      else
      {
        v115 = __p[1];
      }

      if (v115 + 6 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v115 + 6 >= 0x17)
      {
        operator new();
      }

      v130[1] = 0;
      v131 = 0;
      v130[0] = 0;
      HIBYTE(v131) = v115 + 6;
      if (v115)
      {
        if (v139 >= 0)
        {
          v116 = __p;
        }

        else
        {
          v116 = __p[0];
        }

        memmove(v130, v116, v115);
      }

      strcpy(v130 + v115, "_Short");
      v117 = SHIBYTE(v131);
      if ((SHIBYTE(v131) & 0x8000000000000000) != 0)
      {
        v117 = v130[1];
        v118 = (v131 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v118 - v130[1] < 6)
        {
          if ((0x7FFFFFFFFFFFFFF7 - (v131 & 0x7FFFFFFFFFFFFFFFLL)) < v130[1] - v118 + 6)
          {
            sub_3244();
          }

LABEL_397:
          operator new();
        }

        v119 = v130[0];
      }

      else
      {
        if ((SHIBYTE(v131) - 17) < 6)
        {
          goto LABEL_397;
        }

        v119 = v130;
      }

      v120 = v117 + v119;
      *(v120 + 2) = 29810;
      *v120 = 1869108063;
      v121 = v117 + 6;
      if (SHIBYTE(v131) < 0)
      {
        v130[1] = v117 + 6;
      }

      else
      {
        HIBYTE(v131) = v121 & 0x7F;
      }

      v121[v119] = 0;
      v133 = v131;
      *v132 = *v130;
      v130[1] = 0;
      v131 = 0;
      v130[0] = 0;
      v122 = SHIBYTE(v133);
      if ((SHIBYTE(v133) & 0x8000000000000000) != 0)
      {
        v122 = v132[1];
        v123 = (v133 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v123 - v132[1] < 6)
        {
          if ((0x7FFFFFFFFFFFFFF7 - (v133 & 0x7FFFFFFFFFFFFFFFLL)) < v132[1] - v123 + 6)
          {
            sub_3244();
          }

LABEL_408:
          operator new();
        }

        v124 = v132[0];
      }

      else
      {
        if ((SHIBYTE(v133) - 17) < 6)
        {
          goto LABEL_408;
        }

        v124 = v132;
      }

      v125 = v122 + v124;
      *(v125 + 2) = 29810;
      *v125 = 1869108063;
      v126 = v122 + 6;
      if (SHIBYTE(v133) < 0)
      {
        v132[1] = v122 + 6;
      }

      else
      {
        HIBYTE(v133) = v126 & 0x7F;
      }

      v126[v124] = 0;
      v148 = *v132;
      v149 = v133;
      v132[1] = 0;
      v133 = 0;
      v132[0] = 0;
      v136[1] = 0;
      v137 = 0;
      v136[0] = 0;
      v140 = v136;
      v141 = 0;
      operator new();
    }

    v90 = *(v129 + 2120);
    if (*(v90 + 1562) == 1)
    {
      v91 = *(v129 + 1752);
    }

    else
    {
      v91 = *(v129 + 1752);
      if (v91 == 0xFFFF)
      {
        LOWORD(v91) = -1;
      }

      else if (*(v90 + 1216) == 2)
      {
        v91 = *(v129 + 1752);
      }

      else
      {
        LOWORD(v91) = v91 - 1;
      }
    }

    v92 = sub_84CB70(v90, v91);
    if (sub_84CFD0(*(v129 + 2120), *(v129 + 1752)))
    {
      if ((v92 & 1) == 0)
      {
        if ((v92 & 0x10000) == 0)
        {
          goto LABEL_303;
        }

LABEL_284:
        v93 = "Address";
        goto LABEL_289;
      }
    }

    else
    {
      if ((v92 & 0x10000) != 0)
      {
        goto LABEL_284;
      }

      if ((v92 & 1) == 0)
      {
LABEL_303:
        v93 = &xmmword_22A2550;
LABEL_289:
        __dst = *v93;
        v143 = *(v93 + 2);
        if ((SHIBYTE(v143) & 0x8000000000000000) != 0)
        {
          v94 = *(&__dst + 1);
          if (!*(&__dst + 1))
          {
            sub_325C(v136, __dst, 0);
            goto LABEL_306;
          }
        }

        else
        {
          if (!HIBYTE(v143))
          {
            *v136 = __dst;
            v137 = v143;
            goto LABEL_306;
          }

          v94 = *(&__dst + 1);
        }

        if ((v143 & 0x8000000000000000) == 0)
        {
          v95 = SHIBYTE(v143);
        }

        else
        {
          v95 = v94;
        }

        if (v95 + 1 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v95 + 1 >= 0x17)
        {
          operator new();
        }

        v136[1] = 0;
        v137 = 0;
        HIBYTE(v137) = v95 + 1;
        v136[0] = &stru_20 + 63;
        if (v95)
        {
          if ((v143 & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          memmove(v136 + 1, p_dst, v95);
        }

        *(v136 + v95 + 1) = 0;
LABEL_306:
        if (v139 >= 0)
        {
          v97 = HIBYTE(v139);
        }

        else
        {
          v97 = __p[1];
        }

        if (v137 >= 0)
        {
          v98 = HIBYTE(v137);
        }

        else
        {
          v98 = v136[1];
        }

        if (v98 + v97 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v98 + v97 > 0x16)
        {
          operator new();
        }

        v151 = 0;
        v150 = 0uLL;
        HIBYTE(v151) = v98 + v97;
        if (v97)
        {
          if (v139 >= 0)
          {
            v99 = __p;
          }

          else
          {
            v99 = __p[0];
          }

          memmove(&v150, v99, v97);
        }

        v100 = &v150 + v97;
        if (v98)
        {
          if (v137 >= 0)
          {
            v101 = v136;
          }

          else
          {
            v101 = v136[0];
          }

          memmove(v100, v101, v98);
        }

        v100[v98] = 0;
        if (SHIBYTE(v139) < 0)
        {
          operator delete(__p[0]);
          *__p = v150;
          v139 = v151;
          if ((SHIBYTE(v137) & 0x80000000) == 0)
          {
LABEL_327:
            if ((SHIBYTE(v143) & 0x80000000) == 0)
            {
              goto LABEL_328;
            }

LABEL_375:
            operator delete(__dst);
            goto LABEL_328;
          }
        }

        else
        {
          *__p = v150;
          v139 = v151;
          if ((SHIBYTE(v137) & 0x80000000) == 0)
          {
            goto LABEL_327;
          }
        }

        operator delete(v136[0]);
        if ((SHIBYTE(v143) & 0x80000000) == 0)
        {
          goto LABEL_328;
        }

        goto LABEL_375;
      }
    }

    v93 = "Name";
    goto LABEL_289;
  }

  if (v8 >= 13)
  {
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v12 = memchr(v11, 95, v10 - 12);
      if (!v12)
      {
        goto LABEL_63;
      }

      if (*v12 == 0x65737265746E495FLL && *(v12 + 5) == 0x6E6F697463657372)
      {
        break;
      }

      v11 = (v12 + 1);
      v10 = v9 - v11;
      if (v9 - v11 < 13)
      {
        goto LABEL_63;
      }
    }

    if (v12 != v9 && v12 - v7 != -1)
    {
      if (v8 >= v12 - v7 + 13)
      {
        v8 = v12 - v7 + 13;
      }

      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v8 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v143) = v8;
      if (v12 - v7 != -13)
      {
        memmove(&__dst, v7, v8);
      }

      *(&__dst + v8) = 0;
      if (SHIBYTE(v139) < 0)
      {
        operator delete(__p[0]);
      }

      v139 = v143;
      *__p = __dst;
      v3 = HIBYTE(v143);
      v6 = *(&__dst + 1);
      v5 = __dst;
      v4 = HIBYTE(v143);
    }
  }

LABEL_63:
  if ((v4 & 0x80u) == 0)
  {
    v26 = __p;
  }

  else
  {
    v26 = v5;
  }

  if ((v4 & 0x80u) == 0)
  {
    v27 = v3;
  }

  else
  {
    v27 = v6;
  }

  if (v27 >= 5)
  {
    v28 = v26 + v27;
    v29 = v27;
    v30 = v26;
    while (1)
    {
      v31 = memchr(v30, 95, v29 - 4);
      if (!v31)
      {
        goto LABEL_117;
      }

      if (*v31 == 1634685535 && v31[4] == 100)
      {
        break;
      }

      v30 = (v31 + 1);
      v29 = v28 - v30;
      if (v28 - v30 < 5)
      {
        goto LABEL_117;
      }
    }

    if (v31 != v28 && v31 - v26 != -1)
    {
      if (v27 >= (v31 - v26 + 5))
      {
        v33 = v31 - v26 + 5;
      }

      else
      {
        v33 = v27;
      }

      if (v33 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v33 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v143) = v33;
      if (v31 - v26 != -5)
      {
        memmove(&__dst, v26, v33);
      }

      *(&__dst + v33) = 0;
      if (SHIBYTE(v139) < 0)
      {
        operator delete(__p[0]);
      }

      v139 = v143;
      *__p = __dst;
      v3 = HIBYTE(v143);
      v6 = *(&__dst + 1);
      v5 = __dst;
      v4 = HIBYTE(v143);
    }
  }

LABEL_117:
  if ((v4 & 0x80u) == 0)
  {
    v42 = __p;
  }

  else
  {
    v42 = v5;
  }

  if ((v4 & 0x80u) == 0)
  {
    v43 = v3;
  }

  else
  {
    v43 = v6;
  }

  if (v43 >= 8)
  {
    v44 = v42 + v43;
    v45 = v43;
    v46 = v42;
    while (1)
    {
      v47 = memchr(v46, 95, v45 - 7);
      if (!v47)
      {
        goto LABEL_143;
      }

      if (*v47 == 0x796177656572465FLL)
      {
        break;
      }

      v46 = (v47 + 1);
      v45 = v44 - v46;
      if (v44 - v46 < 8)
      {
        goto LABEL_143;
      }
    }

    if (v47 != v44 && v47 - v42 != -1)
    {
      if (v43 >= (v47 - v42 + 8))
      {
        v48 = v47 - v42 + 8;
      }

      else
      {
        v48 = v43;
      }

      if (v48 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v48 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v143) = v48;
      if (v47 - v42 != -8)
      {
        memmove(&__dst, v42, v48);
      }

      *(&__dst + v48) = 0;
      if (SHIBYTE(v139) < 0)
      {
        operator delete(__p[0]);
      }

      v139 = v143;
      *__p = __dst;
      v3 = HIBYTE(v143);
      v6 = *(&__dst + 1);
      v5 = __dst;
      v4 = HIBYTE(v143);
    }
  }

LABEL_143:
  if ((v4 & 0x80u) == 0)
  {
    v49 = __p;
  }

  else
  {
    v49 = v5;
  }

  if ((v4 & 0x80u) == 0)
  {
    v50 = v3;
  }

  else
  {
    v50 = v6;
  }

  if (v50 >= 12)
  {
    v51 = v49 + v50;
    v52 = v50;
    v53 = v49;
    while (1)
    {
      v54 = memchr(v53, 95, v52 - 11);
      if (!v54)
      {
        goto LABEL_172;
      }

      if (*v54 == 0x465F79727265465FLL && *(v54 + 2) == 2037543525)
      {
        break;
      }

      v53 = (v54 + 1);
      v52 = v51 - v53;
      if (v51 - v53 < 12)
      {
        goto LABEL_172;
      }
    }

    if (v54 != v51 && v54 - v49 != -1)
    {
      if (v50 >= (v54 - v49 + 12))
      {
        v56 = v54 - v49 + 12;
      }

      else
      {
        v56 = v50;
      }

      if (v56 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v56 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v143) = v56;
      if (v54 - v49 != -12)
      {
        memmove(&__dst, v49, v56);
      }

      *(&__dst + v56) = 0;
      if (SHIBYTE(v139) < 0)
      {
        operator delete(__p[0]);
      }

      v139 = v143;
      *__p = __dst;
      v3 = HIBYTE(v143);
      v6 = *(&__dst + 1);
      v5 = __dst;
      v4 = HIBYTE(v143);
    }
  }

LABEL_172:
  if ((v4 & 0x80u) == 0)
  {
    v57 = __p;
  }

  else
  {
    v57 = v5;
  }

  if ((v4 & 0x80u) == 0)
  {
    v58 = v3;
  }

  else
  {
    v58 = v6;
  }

  if (v58 >= 20)
  {
    v59 = v57 + v58;
    v60 = v58;
    v61 = v57;
    while (1)
    {
      v62 = memchr(v61, 95, v60 - 19);
      if (!v62)
      {
        goto LABEL_204;
      }

      v63 = *v62 == 0x656C74747568535FLL && *(v62 + 1) == 0x656C74747568535FLL;
      if (v63 && *(v62 + 4) == 1701667150)
      {
        break;
      }

      v61 = (v62 + 1);
      v60 = v59 - v61;
      if (v59 - v61 < 20)
      {
        goto LABEL_204;
      }
    }

    if (v62 != v59 && v62 - v57 != -1)
    {
      if (v58 >= (v62 - v57 + 20))
      {
        v65 = v62 - v57 + 20;
      }

      else
      {
        v65 = v58;
      }

      if (v65 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v65 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v143) = v65;
      if (v62 - v57 != -20)
      {
        memmove(&__dst, v57, v65);
      }

      *(&__dst + v65) = 0;
      if (SHIBYTE(v139) < 0)
      {
        operator delete(__p[0]);
      }

      v139 = v143;
      *__p = __dst;
      v3 = HIBYTE(v143);
      v6 = *(&__dst + 1);
      v5 = __dst;
      v4 = HIBYTE(v143);
    }
  }

LABEL_204:
  if ((v4 & 0x80u) == 0)
  {
    v66 = __p;
  }

  else
  {
    v66 = v5;
  }

  if ((v4 & 0x80u) == 0)
  {
    v67 = v3;
  }

  else
  {
    v67 = v6;
  }

  if (byte_27AE277 >= 0)
  {
    v68 = &qword_27AE260;
  }

  else
  {
    v68 = qword_27AE260;
  }

  if (byte_27AE277 >= 0)
  {
    v69 = byte_27AE277;
  }

  else
  {
    v69 = unk_27AE268;
  }

  if (v69)
  {
    if (v67 < v69)
    {
      goto LABEL_233;
    }

    v70 = v66;
    v71 = &v67[v66];
    v72 = *v68;
    v73 = v67;
    v128 = v70;
    while (1)
    {
      v74 = &v73[-v69];
      if (v74 == -1)
      {
        goto LABEL_233;
      }

      v75 = memchr(v70, v72, (v74 + 1));
      if (!v75)
      {
        goto LABEL_233;
      }

      v76 = v75;
      if (!memcmp(v75, v68, v69))
      {
        break;
      }

      v70 = (v76 + 1);
      v73 = (v71 - (v76 + 1));
      if (v73 < v69)
      {
        goto LABEL_233;
      }
    }

    if (v76 == v71 || (v66 = v128, v77 = v76 - v128, v76 - v128 == -1))
    {
LABEL_233:
      if ((v4 & 0x80u) == 0)
      {
        v34 = __p;
      }

      else
      {
        v34 = v5;
      }

      if ((v4 & 0x80u) == 0)
      {
        v80 = v3;
      }

      else
      {
        v80 = v6;
      }

      if (v80 >= 10)
      {
        v81 = v34 + v80;
        v82 = v80;
        v83 = v34;
        while (1)
        {
          v84 = memchr(v83, 95, v82 - 9);
          if (!v84)
          {
            goto LABEL_268;
          }

          if (*v84 == 0x736F706E6769535FLL && *(v84 + 4) == 12660)
          {
            break;
          }

          v83 = (v84 + 1);
          v82 = v81 - v83;
          if (v81 - v83 < 10)
          {
            goto LABEL_268;
          }
        }

        if (v84 != v81 && v84 - v34 != -1)
        {
          v40 = v84 - v34 + 10;
          if (v80 >= v40)
          {
            v41 = v84 - v34 + 10;
          }

          else
          {
            v41 = v80;
          }

          if (v41 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v41 >= 0x17)
          {
            operator new();
          }

LABEL_258:
          HIBYTE(v143) = v41;
          if (v40)
          {
            memmove(&__dst, v34, v41);
          }

          *(&__dst + v41) = 0;
          if (SHIBYTE(v139) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = __dst;
          v139 = v143;
          goto LABEL_268;
        }
      }

      goto LABEL_268;
    }
  }

  else
  {
    v77 = 0;
  }

  v78 = v77 + v69;
  if (v67 >= v78)
  {
    v79 = v78;
  }

  else
  {
    v79 = v67;
  }

  if (v79 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v79 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v143) = v79;
  if (v79)
  {
    memmove(&__dst, v66, v79);
    *(&__dst + v79) = 0;
    if ((SHIBYTE(v139) & 0x80000000) == 0)
    {
      goto LABEL_232;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    if ((SHIBYTE(v139) & 0x80000000) == 0)
    {
LABEL_232:
      v139 = v143;
      *__p = __dst;
      v3 = HIBYTE(v143);
      v6 = *(&__dst + 1);
      v5 = __dst;
      v4 = HIBYTE(v143);
      goto LABEL_233;
    }
  }

  operator delete(__p[0]);
  goto LABEL_232;
}

void sub_855154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_855384(uint64_t result)
{
  if (*(*(result + 2112) + 2380) == 1)
  {
    v1 = result;
    if (*(result + 1944) != -1 || *(result + 1952) != -1 || *(result + 1960) != -1 || *(result + 1968) != -1 || *(result + 1976) != -1 || *(result + 1984) != -1 || *(result + 1992) != -1 || *(result + 1940) == 1)
    {
      sub_8561D0(result, &v43);
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_325C(&v42, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_325C(&v41, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
LABEL_14:
          sub_852A44(v1, 1, &v38);
          if (*(v1 + 1940) == 1)
          {
            v37 = 0x600000000000000;
            v2 = "_Cross";
LABEL_18:
            *v36 = *v2;
            goto LABEL_19;
          }

          if (*(v1 + 1944) != -1)
          {
            v37 = 0x700000000000000;
            v2 = "_Stairs";
            goto LABEL_18;
          }

          if (*(v1 + 1960) == -1)
          {
            if (*(v1 + 1952) == -1)
            {
              if (*(v1 + 1992) == -1)
              {
                if (*(v1 + 1968) != -1)
                {
                  v37 = 0x700000000000000;
                  v2 = "_Bridge";
                  goto LABEL_18;
                }

                if (*(v1 + 1976) != -1)
                {
                  v37 = 0x700000000000000;
                  v2 = "_Tunnel";
                  goto LABEL_18;
                }

                if (*(v1 + 1984) == -1)
                {
                  v36[0] = 0;
                  v36[1] = 0;
                  v37 = 0;
LABEL_19:
                  v3 = v40;
                  if ((v40 & 0x80u) != 0)
                  {
                    v3 = v39;
                  }

                  if (v3)
                  {
                    size = SHIBYTE(v42.__r_.__value_.__r.__words[2]);
                    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                    {
                      size = v42.__r_.__value_.__l.__size_;
                      v6 = (v42.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                      if (v6 == v42.__r_.__value_.__l.__size_)
                      {
                        if ((v42.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF7)
                        {
                          goto LABEL_27;
                        }

                        goto LABEL_125;
                      }

                      v5 = v42.__r_.__value_.__r.__words[0];
                    }

                    else
                    {
                      v5 = &v42;
                      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) == 22)
                      {
LABEL_27:
                        operator new();
                      }
                    }

                    v5->__r_.__value_.__s.__data_[size] = 95;
                    v8 = size + 1;
                    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
                    {
                      v42.__r_.__value_.__l.__size_ = v8;
                    }

                    else
                    {
                      *(&v42.__r_.__value_.__s + 23) = v8 & 0x7F;
                    }

                    v5->__r_.__value_.__s.__data_[v8] = 0;
                    if ((v40 & 0x80u) == 0)
                    {
                      v9 = &v38;
                    }

                    else
                    {
                      v9 = v38;
                    }

                    if ((v40 & 0x80u) == 0)
                    {
                      v10 = v40;
                    }

                    else
                    {
                      v10 = v39;
                    }

                    std::string::append(&v42, v9, v10);
                  }

                  v11 = SHIBYTE(v42.__r_.__value_.__r.__words[2]);
                  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                  {
                    v11 = v42.__r_.__value_.__l.__size_;
                    v12 = (v42.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                    if (v12 - v42.__r_.__value_.__l.__size_ < 5)
                    {
                      if (0x7FFFFFFFFFFFFFF7 - (v42.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) >= v42.__r_.__value_.__l.__size_ + 5 - v12)
                      {
                        goto LABEL_47;
                      }

                      goto LABEL_125;
                    }

                    v13 = v42.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) - 18) < 5)
                    {
LABEL_47:
                      operator new();
                    }

                    v13 = &v42;
                  }

                  v14 = v13 + v11;
                  v14[4] = 110;
                  *v14 = 1734955871;
                  v15 = v11 + 5;
                  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v42.__r_.__value_.__l.__size_ = v11 + 5;
                  }

                  else
                  {
                    *(&v42.__r_.__value_.__s + 23) = v15 & 0x7F;
                  }

                  v13->__r_.__value_.__s.__data_[v15] = 0;
                  if (v37 >= 0)
                  {
                    v16 = v36;
                  }

                  else
                  {
                    v16 = v36[0];
                  }

                  if (v37 >= 0)
                  {
                    v17 = HIBYTE(v37);
                  }

                  else
                  {
                    v17 = v36[1];
                  }

                  std::string::append(&v41, v16, v17);
                  v18 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
                  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
                  {
                    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) - 18) < 5)
                    {
LABEL_64:
                      operator new();
                    }

                    v20 = &v41;
LABEL_68:
                    v21 = v20 + v18;
                    v21[4] = 110;
                    *v21 = 1734955871;
                    v22 = v18 + 5;
                    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
                    {
                      v41.__r_.__value_.__l.__size_ = v18 + 5;
                      v20->__r_.__value_.__s.__data_[v22] = 0;
                      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
                      {
                        goto LABEL_70;
                      }
                    }

                    else
                    {
                      *(&v41.__r_.__value_.__s + 23) = v22 & 0x7F;
                      v20->__r_.__value_.__s.__data_[v22] = 0;
                      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
                      {
LABEL_70:
                        sub_325C(&v46, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
LABEL_71:
                        v23 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
                        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
                        {
                          sub_325C(&v47, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
                          v23 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v47 = v42;
                        }

                        if ((v23 & 0x80u) == 0)
                        {
                          v24 = v23;
                        }

                        else
                        {
                          v24 = v42.__r_.__value_.__l.__size_;
                        }

                        if (v24 + 6 > 0x7FFFFFFFFFFFFFF7)
                        {
                          sub_3244();
                        }

                        if (v24 + 6 >= 0x17)
                        {
                          operator new();
                        }

                        v48[1] = 0;
                        v49 = 0;
                        v48[0] = 0;
                        HIBYTE(v49) = v24 + 6;
                        if (v24)
                        {
                          if ((v23 & 0x80u) == 0)
                          {
                            v25 = &v42;
                          }

                          else
                          {
                            v25 = v42.__r_.__value_.__r.__words[0];
                          }

                          memmove(v48, v25, v24);
                        }

                        strcpy(v48 + v24, "_Short");
                        if ((v23 & 0x80u) == 0)
                        {
                          v26 = v23;
                        }

                        else
                        {
                          v26 = v42.__r_.__value_.__l.__size_;
                        }

                        if (v26 + 6 > 0x7FFFFFFFFFFFFFF7)
                        {
                          sub_3244();
                        }

                        if (v26 + 6 >= 0x17)
                        {
                          operator new();
                        }

                        v33[1] = 0;
                        v34 = 0;
                        v33[0] = 0;
                        HIBYTE(v34) = v26 + 6;
                        if (v26)
                        {
                          if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v27 = &v42;
                          }

                          else
                          {
                            v27 = v42.__r_.__value_.__r.__words[0];
                          }

                          memmove(v33, v27, v26);
                        }

                        strcpy(v33 + v26, "_Short");
                        v28 = SHIBYTE(v34);
                        if ((SHIBYTE(v34) & 0x8000000000000000) != 0)
                        {
                          v28 = v33[1];
                          v29 = (v34 & 0x7FFFFFFFFFFFFFFFLL) - 1;
                          if (v29 - v33[1] < 6)
                          {
                            if ((0x7FFFFFFFFFFFFFF7 - (v34 & 0x7FFFFFFFFFFFFFFFLL)) < v33[1] - v29 + 6)
                            {
                              sub_3244();
                            }

LABEL_101:
                            operator new();
                          }

                          v30 = v33[0];
                        }

                        else
                        {
                          if ((SHIBYTE(v34) - 17) < 6)
                          {
                            goto LABEL_101;
                          }

                          v30 = v33;
                        }

                        v31 = v28 + v30;
                        *(v31 + 2) = 29810;
                        *v31 = 1869108063;
                        v32 = v28 + 6;
                        if (SHIBYTE(v34) < 0)
                        {
                          v33[1] = v28 + 6;
                        }

                        else
                        {
                          HIBYTE(v34) = v32 & 0x7F;
                        }

                        v32[v30] = 0;
                        v50 = *v33;
                        v51 = v34;
                        v33[1] = 0;
                        v34 = 0;
                        v33[0] = 0;
                        memset(__p, 0, sizeof(__p));
                        v44 = __p;
                        v45 = 0;
                        operator new();
                      }
                    }

                    v46 = v41;
                    goto LABEL_71;
                  }

                  v18 = v41.__r_.__value_.__l.__size_;
                  v19 = (v41.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                  if (v19 - v41.__r_.__value_.__l.__size_ >= 5)
                  {
                    v20 = v41.__r_.__value_.__r.__words[0];
                    goto LABEL_68;
                  }

                  if (0x7FFFFFFFFFFFFFF7 - (v41.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) >= v41.__r_.__value_.__l.__size_ + 5 - v19)
                  {
                    goto LABEL_64;
                  }

LABEL_125:
                  sub_3244();
                }

                v7 = "_Roundabout";
              }

              else
              {
                v7 = "_Ramp";
              }
            }

            else
            {
              v7 = "_Elevator";
            }
          }

          else
          {
            v7 = "_Escalator";
          }

          *v36 = *v7;
          v37 = *(v7 + 2);
          goto LABEL_19;
        }
      }

      else
      {
        v42 = v43;
      }

      v41 = v43;
      goto LABEL_14;
    }
  }

  return result;
}

void sub_856014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, char a49, uint64_t a50, char a51)
{
  if (a42 < 0)
  {
    operator delete(a37);
    if (a48 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a48 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

void sub_8561D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = "Enter_Ferry";
  switch(*(a1 + 1928))
  {
    case 0:
    case 3:
    case 5:
    case 0xC:
      v4 = "Walking_Continue";
      if (*(a1 + 1936))
      {
        v4 = "Continue";
      }

      if (v4 != a2)
      {
        *a2 = *v4;
        v5 = *(v4 + 2);
        goto LABEL_95;
      }

      return;
    case 1:
      v6 = *(a1 + 1936);
      v7 = "Walking_Left_Turn";
      v8 = "Left_Turn";
      goto LABEL_115;
    case 2:
      v6 = *(a1 + 1936);
      v7 = "Walking_Right_Turn";
      v8 = "Right_Turn";
      goto LABEL_115;
    case 4:
      v6 = *(a1 + 1936);
      v7 = "Walking_U_Turn";
      v8 = "U_Turn";
      goto LABEL_115;
    case 6:
      v3 = "Enter_Roundabout";
      goto LABEL_118;
    case 7:
      v3 = "Leave_Roundabout";
      goto LABEL_118;
    case 0xB:
      v6 = *(a1 + 1936);
      v7 = "Walking_Continue";
      v8 = "Off_Ramp";
      goto LABEL_115;
    case 0x10:
      v17 = *(a1 + 1935);
      v18 = &qword_27AE1D0;
      v19 = "End_Of_Navigation";
      goto LABEL_51;
    case 0x11:
      v6 = *(a1 + 1936);
      v7 = "Walking_Start_Route";
      v8 = "Start_Route";
      goto LABEL_115;
    case 0x12:
      v3 = "Destination";
      goto LABEL_118;
    case 0x14:
      v12 = *(a1 + 1936);
      if (*(*(a1 + 2112) + 2346))
      {
        v13 = &qword_27AE230;
      }

      else
      {
        v13 = "Walking_Left_Turn";
      }

      v14 = "Keep_Left";
      goto LABEL_132;
    case 0x15:
      v12 = *(a1 + 1936);
      if (*(*(a1 + 2112) + 2346))
      {
        v13 = &qword_27AE248;
      }

      else
      {
        v13 = "Walking_Right_Turn";
      }

      v14 = "Keep_Right";
      goto LABEL_132;
    case 0x16:
      goto LABEL_118;
    case 0x17:
      v3 = "Exit_Ferry";
      goto LABEL_118;
    case 0x18:
      v3 = "Change_Ferry";
      goto LABEL_118;
    case 0x19:
      v6 = *(a1 + 1936);
      v7 = &qword_27AE140;
      v8 = "Start_Route_U_Turn";
      goto LABEL_115;
    case 0x1A:
      v6 = *(a1 + 1936);
      v7 = &qword_27AE158;
      v8 = "U_Turn_At_Roundabout";
      goto LABEL_115;
    case 0x1B:
      v6 = *(a1 + 1936);
      v7 = "Walking_Left_Turn";
      v8 = "Left_Turn_At_End";
      goto LABEL_115;
    case 0x1C:
      v6 = *(a1 + 1936);
      v7 = "Walking_Right_Turn";
      v8 = "Right_Turn_At_End";
      goto LABEL_115;
    case 0x1D:
      v6 = *(a1 + 1936);
      v7 = "Walking_Continue";
      v8 = "Off_Ramp_On_Left";
      goto LABEL_115;
    case 0x1E:
      v6 = *(a1 + 1936);
      v7 = "Walking_Continue";
      v8 = "Off_Ramp_On_Right";
      goto LABEL_115;
    case 0x21:
      v3 = "Destination_On_left";
      goto LABEL_118;
    case 0x22:
      v3 = "Destination_On_Right";
      goto LABEL_118;
    case 0x23:
      v6 = *(a1 + 1936);
      v7 = &qword_27AE170;
      v8 = "U_Turn_When_Possible";
      goto LABEL_115;
    case 0x27:
      v17 = *(a1 + 1935);
      v18 = &qword_27AE1E8;
      v19 = "End_Of_Navigation";
LABEL_51:
      if (v17)
      {
        v3 = v18;
      }

      else
      {
        v3 = v19;
      }

      goto LABEL_118;
    case 0x29:
      v6 = *(a1 + 1936);
      v7 = &qword_27AE188;
      v8 = "Roundabout_First_Exit";
      goto LABEL_115;
    case 0x2A:
      v6 = *(a1 + 1936);
      v7 = &qword_27AE188;
      v8 = "Roundabout_Second_Exit";
      goto LABEL_115;
    case 0x2B:
      v6 = *(a1 + 1936);
      v7 = &qword_27AE188;
      v8 = "Roundabout_Third_Exit";
      goto LABEL_115;
    case 0x2C:
      v6 = *(a1 + 1936);
      v7 = &qword_27AE188;
      v8 = "Roundabout_Fourth_Exit";
      goto LABEL_115;
    case 0x2D:
      v6 = *(a1 + 1936);
      v7 = &qword_27AE188;
      v8 = "Roundabout_Fifth_Exit";
      goto LABEL_115;
    case 0x2E:
      v6 = *(a1 + 1936);
      v7 = &qword_27AE188;
      v8 = "Roundabout_Sixth_Exit";
      goto LABEL_115;
    case 0x2F:
      v9 = *(a1 + 1936) == 0;
      v10 = 432;
      v11 = 48;
      goto LABEL_101;
    case 0x30:
      v6 = *(a1 + 1936);
      v7 = &qword_27AE188;
      v8 = "Roundabout_Eighth_Exit";
      goto LABEL_115;
    case 0x31:
      v6 = *(a1 + 1936);
      v7 = &qword_27AE188;
      v8 = "Roundabout_Ninth_Exit";
      goto LABEL_115;
    case 0x32:
      v6 = *(a1 + 1936);
      v7 = &qword_27AE188;
      v8 = "Roundabout_Tenth_Exit";
      goto LABEL_115;
    case 0x33:
      v9 = *(a1 + 1936) == 0;
      v10 = 432;
      v11 = 72;
      goto LABEL_101;
    case 0x34:
      v9 = *(a1 + 1936) == 0;
      v10 = 432;
      v11 = 96;
      goto LABEL_101;
    case 0x35:
      v9 = *(a1 + 1936) == 0;
      v10 = 432;
      v11 = 120;
      goto LABEL_101;
    case 0x36:
      v9 = *(a1 + 1936) == 0;
      v10 = 432;
      v11 = 144;
      goto LABEL_101;
    case 0x37:
      v9 = *(a1 + 1936) == 0;
      v10 = 432;
      v11 = 168;
      goto LABEL_101;
    case 0x38:
      v9 = *(a1 + 1936) == 0;
      v10 = 432;
      v11 = 192;
      goto LABEL_101;
    case 0x39:
      v9 = *(a1 + 1936) == 0;
      v10 = 432;
      v11 = 216;
      goto LABEL_101;
    case 0x3A:
      v9 = *(a1 + 1936) == 0;
      v10 = 432;
      v11 = 240;
      goto LABEL_101;
    case 0x3B:
      v9 = *(a1 + 1936) == 0;
      v10 = 432;
      v11 = 264;
LABEL_101:
      if (!v9)
      {
        v10 = v11;
      }

      v3 = (qword_27ADFD8 + v10);
      goto LABEL_118;
    case 0x3C:
      v12 = *(a1 + 1936);
      if (*(*(a1 + 2112) + 2346))
      {
        v13 = &qword_27AE200;
      }

      else
      {
        v13 = "Walking_Left_Turn";
      }

      v14 = "Sharp_Left_Turn";
      goto LABEL_132;
    case 0x3D:
      v12 = *(a1 + 1936);
      if (*(*(a1 + 2112) + 2346))
      {
        v13 = &qword_27AE218;
      }

      else
      {
        v13 = "Walking_Right_Turn";
      }

      v14 = "Sharp_Right_Turn";
      goto LABEL_132;
    case 0x3E:
      v12 = *(a1 + 1936);
      if (*(*(a1 + 2112) + 2346))
      {
        v13 = &qword_27AE230;
      }

      else
      {
        v13 = "Walking_Left_Turn";
      }

      v14 = "Slight_Left_Turn";
      goto LABEL_132;
    case 0x3F:
      v12 = *(a1 + 1936);
      if (*(*(a1 + 2112) + 2346))
      {
        v13 = &qword_27AE248;
      }

      else
      {
        v13 = "Walking_Right_Turn";
      }

      v14 = "Slight_Right_Turn";
LABEL_132:
      if (v12)
      {
        v3 = v14;
      }

      else
      {
        v3 = v13;
      }

      goto LABEL_118;
    case 0x40:
      v6 = *(a1 + 1936);
      v7 = "Walking_Continue";
      v8 = "Change_Highway";
      goto LABEL_115;
    case 0x41:
      v6 = *(a1 + 1936);
      v7 = "Walking_Continue";
      v8 = "Change_Highway_On_Left";
      goto LABEL_115;
    case 0x42:
      v6 = *(a1 + 1936);
      v7 = "Walking_Continue";
      v8 = &qword_27AE0F8;
      goto LABEL_115;
    case 0x52:
      v20 = *(a1 + 1007);
      if (v20 < 0)
      {
        v20 = *(a1 + 992);
      }

      if (v20)
      {
        v21 = "_Charge_Station_Name";
      }

      else
      {
        v21 = "_Charge_Station";
      }

      sub_83F92C("Waypoint_Stop", v21, &__p);
      goto LABEL_92;
    case 0x53:
      v22 = *(a1 + 1007);
      if (v22 < 0)
      {
        v22 = *(a1 + 992);
      }

      if (v22)
      {
        v23 = "_Charge_Station_Name";
      }

      else
      {
        v23 = "_Charge_Station";
      }

      sub_83F92C("Waypoint_Stop_On_Left", v23, &__p);
      goto LABEL_92;
    case 0x54:
      v15 = *(a1 + 1007);
      if (v15 < 0)
      {
        v15 = *(a1 + 992);
      }

      if (v15)
      {
        v16 = "_Charge_Station_Name";
      }

      else
      {
        v16 = "_Charge_Station";
      }

      sub_83F92C("Waypoint_Stop_On_Right", v16, &__p);
LABEL_92:
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = *&__p.__r_.__value_.__l.__data_;
      v5 = __p.__r_.__value_.__r.__words[2];
LABEL_95:
      *(a2 + 16) = v5;
      return;
    case 0x55:
      v24 = *(*(a1 + 2120) + 1560);
      v25 = v24 == 11;
      if (v24 == 11)
      {
        v26 = "oute";
      }

      else
      {
        v26 = "_Route";
      }

      v27 = 0x65756E69746E6F43;
      if (v25)
      {
        v27 = 0x525F656D75736552;
      }

      v28 = *v26;
      v29 = *(v26 + 7);
      *a2 = v27;
      *(a2 + 8) = v28;
      *(a2 + 15) = v29;
      if (v25)
      {
        v30 = 12;
      }

      else
      {
        v30 = 14;
      }

      *(a2 + 23) = v30;
      return;
    case 0x56:
      v6 = *(a1 + 1936);
      v7 = &qword_27AE1A0;
      goto LABEL_99;
    case 0x57:
      v6 = *(a1 + 1936);
      v7 = &qword_27AE1B8;
LABEL_99:
      v8 = "Leave_Roundabout";
LABEL_115:
      if (v6)
      {
        v3 = v8;
      }

      else
      {
        v3 = v7;
      }

      goto LABEL_118;
    case 0x58:
      if (*(*(a1 + 2120) + 1560) == 11)
      {
        v31 = "Resume_Route";
      }

      else
      {
        v31 = "Continue_Route";
      }

      __p = *v31;
      v32 = std::string::append(&__p, "_U_Turn", 7uLL);
      v33 = v32->__r_.__value_.__r.__words[0];
      v37[0] = v32->__r_.__value_.__l.__size_;
      *(v37 + 7) = *(&v32->__r_.__value_.__r.__words[1] + 7);
      v34 = HIBYTE(v32->__r_.__value_.__r.__words[2]);
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      v35 = v37[0];
      *a2 = v33;
      *(a2 + 8) = v35;
      *(a2 + 15) = *(v37 + 7);
      *(a2 + 23) = v34;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return;
    case 0x59:
      v3 = "Enter_Detour";
      goto LABEL_118;
    case 0x5A:
      v3 = "Exit_Detour";
      goto LABEL_118;
    case 0x5B:
      v3 = "Enter_Railway_Shuttle";
      goto LABEL_118;
    case 0x5C:
      v3 = "Exit_Railway_Shuttle";
      goto LABEL_118;
    case 0x5D:
      v3 = "Change_Railway_Shuttle";
      goto LABEL_118;
    case 0x5E:
      v3 = "Enter_Shuttle";
      goto LABEL_118;
    case 0x5F:
      v3 = "Exit_Shuttle";
      goto LABEL_118;
    case 0x60:
      v3 = "Change_Shuttle";
      goto LABEL_118;
    case 0x61:
      v3 = "Walking_Turnaround";
LABEL_118:
      std::string::operator=(a2, v3);
      break;
    default:
      return;
  }
}

void sub_8569A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v14 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v14 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v14);
  _Unwind_Resume(exception_object);
}

void sub_856B88(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 1;
  strcpy(v2, "d");
  v2[2] = 0;
  v3 = 301989888;
  *__p = *"ContinueStage";
  strcpy(&__p[13], "_Ro");
  operator new();
}

void sub_856C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C(v14);
  _Unwind_Resume(a1);
}

void sub_856CB0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 72))(&v13);
  v11 = 0;
  v12 = 0;
  sub_680484(a2, &v13, 1, &v11);
  v3 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = v16;
  if (v16)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v13;
  if (v13)
  {
    v8 = v14;
    v9 = v13;
    if (v14 != v13)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v13;
    }

    v14 = v7;
    operator delete(v9);
  }
}

void sub_856DDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  _Unwind_Resume(a1);
}

uint64_t *sub_856DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_67F320((a1 + 8), a2);
  if (*(a1 + 1940) == 1)
  {
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = v6;
    if (v5 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    v9 = v8;
    v10 = (v6 + v8);
    if (v8 >= 22)
    {
      v11 = v8;
      result = v6;
      do
      {
        result = memchr(result, 87, v11 - 21);
        if (!result)
        {
          break;
        }

        if (*result == 0x5F676E696B6C6157 && result[1] == 0x65756E69746E6F43 && *(result + 14) == 0x73736F72435F6575)
        {
          if (result == v10 || (result - v6) == -1)
          {
LABEL_20:
            while (1)
            {
              result = memchr(v7, 95, v9 - 5);
              if (!result)
              {
                break;
              }

              if (*result == 1869759327 && *(result + 2) == 29555)
              {
                if (result != v10)
                {
                  v15 = result - v6;
                  if ((result - v6) != -1)
                  {
                    if (v8 < v15)
                    {
                      sub_49D4();
                    }

                    return sub_148E0(a2, v15, 6uLL);
                  }
                }

                return result;
              }

              v7 = result + 1;
              v9 = v10 - (result + 1);
              if (v9 < 6)
              {
                return result;
              }
            }
          }

          return result;
        }

        result = (result + 1);
        v11 = v10 - result;
      }

      while (v10 - result >= 22);
    }

    if (v8 >= 6)
    {
      goto LABEL_20;
    }
  }

  return result;
}

void sub_856F84(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_856FA0(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  memset(&v118, 0, sizeof(v118));
  if (*(*(a1 + 2112) + 2344) == 1 && *(a1 + 1936) == 1 && *(a1 + 1933) == 1)
  {
    v8 = *(a1 + 1928);
    if (v8 <= 0x3F && ((1 << v8) & 0xF00000000030000ELL) != 0)
    {
      v118.__r_.__value_.__r.__words[2] = 0x700000000000000;
      *&v118.__r_.__value_.__l.__data_ = *"_StayOn";
    }
  }

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

  std::string::append(&v118, v10, v11);
  if (*(a2 + 23) >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = a2[1];
  }

  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v118.__r_.__value_.__l.__size_;
  }

  if (size + v12 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (size + v12 > 0x16)
  {
    operator new();
  }

  __p[1] = 0;
  v117 = 0;
  __p[0] = 0;
  HIBYTE(v117) = size + v12;
  if (v12)
  {
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    memmove(__p, v14, v12);
  }

  v15 = __p + v12;
  if (size)
  {
    if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v118;
    }

    else
    {
      v16 = v118.__r_.__value_.__r.__words[0];
    }

    memmove(v15, v16, size);
  }

  v15[size] = 0;
  sub_794D4(a4, __p);
  if (SHIBYTE(v117) < 0)
  {
    operator delete(__p[0]);
    if ((*(a1 + 1936) & 1) == 0)
    {
      goto LABEL_298;
    }
  }

  else if ((*(a1 + 1936) & 1) == 0)
  {
    goto LABEL_298;
  }

  v17 = *(a2 + 23);
  if (v17 >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = *a2;
  }

  if (v17 >= 0)
  {
    v19 = *(a2 + 23);
  }

  else
  {
    v19 = a2[1];
  }

  v20 = &v18[v19];
  if (v19 >= 13)
  {
    v21 = v19;
    v22 = v18;
    do
    {
      v23 = memchr(v22, 95, v21 - 12);
      if (!v23)
      {
        break;
      }

      if (*v23 == 0x65737265746E495FLL && *(v23 + 5) == 0x6E6F697463657372)
      {
        goto LABEL_51;
      }

      v22 = v23 + 1;
      v21 = v20 - v22;
    }

    while (v20 - v22 > 12);
  }

  v23 = &v18[v19];
LABEL_51:
  if (v23 == v20)
  {
    v25 = -1;
  }

  else
  {
    v25 = v23 - v18;
  }

  if (v19 < 5)
  {
    v113 = -1;
    v114 = -1;
    v112 = -1;
LABEL_56:
    v26 = &v18[v19];
    goto LABEL_79;
  }

  v27 = v19;
  v28 = v18;
  do
  {
    v29 = memchr(v28, 95, v27 - 4);
    if (!v29)
    {
      break;
    }

    if (*v29 == 1634685535 && v29[4] == 100)
    {
      goto LABEL_65;
    }

    v28 = v29 + 1;
    v27 = v20 - v28;
  }

  while (v20 - v28 > 4);
  v29 = &v18[v19];
LABEL_65:
  v31 = v29 - v18;
  if (v29 == v20)
  {
    v31 = -1;
  }

  v112 = v31;
  if (v19 >= 8)
  {
    v32 = v19;
    v33 = v18;
    do
    {
      v34 = memchr(v33, 95, v32 - 7);
      if (!v34)
      {
        break;
      }

      if (*v34 == 0x796177656572465FLL)
      {
        goto LABEL_74;
      }

      v33 = v34 + 1;
      v32 = v20 - v33;
    }

    while (v20 - v33 > 7);
    v34 = &v18[v19];
LABEL_74:
    v35 = v34 - v18;
    if (v34 == v20)
    {
      v35 = -1;
    }

    v113 = v35;
    if (v19 >= 10)
    {
      v68 = v19;
      v69 = v18;
      while (1)
      {
        v70 = memchr(v69, 95, v68 - 9);
        if (!v70)
        {
LABEL_184:
          v114 = -1;
          goto LABEL_283;
        }

        if (*v70 == 0x736F706E6769535FLL && *(v70 + 4) == 12660)
        {
          break;
        }

        v69 = v70 + 1;
        v68 = v20 - v69;
        if (v20 - v69 <= 9)
        {
          goto LABEL_184;
        }
      }

      v107 = v70 - v18;
      if (v70 == v20)
      {
        v107 = -1;
      }

      v114 = v107;
LABEL_283:
      v108 = v19;
      v109 = v18;
      while (1)
      {
        v26 = memchr(v109, 95, v108 - 9);
        if (!v26)
        {
          goto LABEL_56;
        }

        if (*v26 == 0x736F706E6769535FLL && *(v26 + 4) == 12916)
        {
          goto LABEL_79;
        }

        v109 = v26 + 1;
        v108 = v20 - v109;
        if (v20 - v109 <= 9)
        {
          goto LABEL_56;
        }
      }
    }

    v114 = -1;
  }

  else
  {
    v113 = -1;
    v114 = -1;
  }

  v26 = &v18[v19];
LABEL_79:
  if (v26 == v20)
  {
    v36 = -1;
  }

  else
  {
    v36 = v26 - v18;
  }

  if (v19 <= 5)
  {
    v37 = -1;
    if (v36 == -1)
    {
      goto LABEL_113;
    }

LABEL_97:
    if (v19 >= v36)
    {
      v19 = v36;
    }

    if (v19 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v19;
    if (v19)
    {
      memmove(&__dst, v18, v19);
    }

    __dst.__r_.__value_.__s.__data_[v19] = 0;
    if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v118;
    }

    else
    {
      v42 = v118.__r_.__value_.__r.__words[0];
    }

    if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v43 = v118.__r_.__value_.__l.__size_;
    }

    v44 = std::string::append(&__dst, v42, v43);
    v45 = *&v44->__r_.__value_.__l.__data_;
    v117 = v44->__r_.__value_.__r.__words[2];
    *__p = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    sub_794D4(a4, __p);
    if (SHIBYTE(v117) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_113;
      }
    }

    else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_113;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    v46 = v114;
    if (v114 == -1)
    {
      goto LABEL_142;
    }

    goto LABEL_114;
  }

  v38 = v19;
  v39 = v18;
  do
  {
    v40 = memchr(v39, 95, v38 - 5);
    if (!v40)
    {
      break;
    }

    if (*v40 == 1634685535 && *(v40 + 2) == 12900)
    {
      goto LABEL_93;
    }

    v39 = v40 + 1;
    v38 = v20 - v39;
  }

  while (v20 - v39 > 5);
  v40 = &v18[v19];
LABEL_93:
  if (v40 == v20)
  {
    v37 = -1;
  }

  else
  {
    v37 = v40 - v18;
  }

  if (v36 != -1)
  {
    goto LABEL_97;
  }

LABEL_113:
  v46 = v114;
  if (v114 == -1)
  {
    goto LABEL_142;
  }

LABEL_114:
  v47 = *(a2 + 23);
  v48 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v47 = a2[1];
  }

  if (v48 >= 0)
  {
    v49 = a2;
  }

  else
  {
    v49 = *a2;
  }

  if (v47 >= v46)
  {
    v50 = v46;
  }

  else
  {
    v50 = v47;
  }

  if (v50 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v50 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v50;
  if (v50)
  {
    memmove(&__dst, v49, v50);
  }

  __dst.__r_.__value_.__s.__data_[v50] = 0;
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = &v118;
  }

  else
  {
    v51 = v118.__r_.__value_.__r.__words[0];
  }

  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v52 = v118.__r_.__value_.__l.__size_;
  }

  v53 = std::string::append(&__dst, v51, v52);
  v54 = *&v53->__r_.__value_.__l.__data_;
  v117 = v53->__r_.__value_.__r.__words[2];
  *__p = v54;
  v53->__r_.__value_.__l.__size_ = 0;
  v53->__r_.__value_.__r.__words[2] = 0;
  v53->__r_.__value_.__r.__words[0] = 0;
  sub_794D4(a4, __p);
  if (SHIBYTE(v117) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_142;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_142;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_142:
  if (v113 == -1)
  {
    if (v37 == -1)
    {
      goto LABEL_196;
    }

    v59 = *(a2 + 23);
    v60 = v59;
    if ((v59 & 0x80u) != 0)
    {
      v59 = a2[1];
    }

    if (v60 >= 0)
    {
      v61 = a2;
    }

    else
    {
      v61 = *a2;
    }

    if (v59 >= v37 - 1)
    {
      v62 = v37 - 1;
    }

    else
    {
      v62 = v59;
    }

    if (v62 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v62 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v62;
    if (v62)
    {
      memmove(&__dst, v61, v62);
    }

    __dst.__r_.__value_.__s.__data_[v62] = 0;
    if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v72 = &v118;
    }

    else
    {
      v72 = v118.__r_.__value_.__r.__words[0];
    }

    if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v73 = v118.__r_.__value_.__l.__size_;
    }

    v74 = std::string::append(&__dst, v72, v73);
    v75 = *&v74->__r_.__value_.__l.__data_;
    v117 = v74->__r_.__value_.__r.__words[2];
    *__p = v75;
    v74->__r_.__value_.__l.__size_ = 0;
    v74->__r_.__value_.__r.__words[2] = 0;
    v74->__r_.__value_.__r.__words[0] = 0;
    sub_794D4(a4, __p);
  }

  else
  {
    v55 = *(a2 + 23);
    v56 = v55;
    if ((v55 & 0x80u) != 0)
    {
      v55 = a2[1];
    }

    if (v56 >= 0)
    {
      v57 = a2;
    }

    else
    {
      v57 = *a2;
    }

    if (v55 >= v113)
    {
      v58 = v113;
    }

    else
    {
      v58 = v55;
    }

    if (v58 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v58 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v58;
    if (v58)
    {
      memmove(&__dst, v57, v58);
    }

    __dst.__r_.__value_.__s.__data_[v58] = 0;
    v63 = *(a3 + 23);
    if (v63 >= 0)
    {
      v64 = a3;
    }

    else
    {
      v64 = *a3;
    }

    if (v63 >= 0)
    {
      v65 = *(a3 + 23);
    }

    else
    {
      v65 = *(a3 + 8);
    }

    v66 = std::string::append(&__dst, v64, v65);
    v67 = *&v66->__r_.__value_.__l.__data_;
    v117 = v66->__r_.__value_.__r.__words[2];
    *__p = v67;
    v66->__r_.__value_.__l.__size_ = 0;
    v66->__r_.__value_.__r.__words[2] = 0;
    v66->__r_.__value_.__r.__words[0] = 0;
    sub_794D4(a4, __p);
  }

  if ((SHIBYTE(v117) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_196;
    }

LABEL_199:
    operator delete(__dst.__r_.__value_.__l.__data_);
    v76 = v112;
    if (v112 == -1)
    {
      goto LABEL_222;
    }

LABEL_200:
    v77 = v76;
    v78 = *(a2 + 23);
    v79 = v78;
    if ((v78 & 0x80u) != 0)
    {
      v78 = a2[1];
    }

    if (v79 >= 0)
    {
      v80 = a2;
    }

    else
    {
      v80 = *a2;
    }

    if (v78 >= v77)
    {
      v81 = v77;
    }

    else
    {
      v81 = v78;
    }

    if (v81 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v81 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v81;
    if (v81)
    {
      memmove(&__dst, v80, v81);
    }

    __dst.__r_.__value_.__s.__data_[v81] = 0;
    v82 = *(a3 + 23);
    if (v82 >= 0)
    {
      v83 = a3;
    }

    else
    {
      v83 = *a3;
    }

    if (v82 >= 0)
    {
      v84 = *(a3 + 23);
    }

    else
    {
      v84 = *(a3 + 8);
    }

    v85 = std::string::append(&__dst, v83, v84);
    v86 = *&v85->__r_.__value_.__l.__data_;
    v117 = v85->__r_.__value_.__r.__words[2];
    *__p = v86;
    v85->__r_.__value_.__l.__size_ = 0;
    v85->__r_.__value_.__r.__words[2] = 0;
    v85->__r_.__value_.__r.__words[0] = 0;
    sub_794D4(a4, __p);
    if (SHIBYTE(v117) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_222;
      }
    }

    else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_222;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    if (v25 == -1)
    {
      goto LABEL_250;
    }

    goto LABEL_223;
  }

  operator delete(__p[0]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_199;
  }

LABEL_196:
  v76 = v112;
  if (v112 != -1)
  {
    goto LABEL_200;
  }

LABEL_222:
  if (v25 == -1)
  {
    goto LABEL_250;
  }

LABEL_223:
  v87 = *(a2 + 23);
  v88 = v87;
  if ((v87 & 0x80u) != 0)
  {
    v87 = a2[1];
  }

  if (v88 >= 0)
  {
    v89 = a2;
  }

  else
  {
    v89 = *a2;
  }

  if (v87 >= v25)
  {
    v90 = v25;
  }

  else
  {
    v90 = v87;
  }

  if (v90 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v90 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v90;
  if (v90)
  {
    memmove(&__dst, v89, v90);
  }

  __dst.__r_.__value_.__s.__data_[v90] = 0;
  v91 = *(a3 + 23);
  if (v91 >= 0)
  {
    v92 = a3;
  }

  else
  {
    v92 = *a3;
  }

  if (v91 >= 0)
  {
    v93 = *(a3 + 23);
  }

  else
  {
    v93 = *(a3 + 8);
  }

  v94 = std::string::append(&__dst, v92, v93);
  v95 = *&v94->__r_.__value_.__l.__data_;
  v117 = v94->__r_.__value_.__r.__words[2];
  *__p = v95;
  v94->__r_.__value_.__l.__size_ = 0;
  v94->__r_.__value_.__r.__words[2] = 0;
  v94->__r_.__value_.__r.__words[0] = 0;
  sub_794D4(a4, __p);
  if (SHIBYTE(v117) < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_255;
    }
  }

  else if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_255:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if (*(a1 + 1928) != 17)
    {
      goto LABEL_298;
    }

    goto LABEL_251;
  }

LABEL_250:
  if (*(a1 + 1928) != 17)
  {
    goto LABEL_298;
  }

LABEL_251:
  if (*(a1 + 1936) != 1)
  {
    goto LABEL_298;
  }

  v96 = *(a1 + 2128);
  v97 = *(v96 + 23);
  if (v97 < 0)
  {
    if (!v96[1])
    {
      goto LABEL_298;
    }
  }

  else if (!*(v96 + 23))
  {
    goto LABEL_298;
  }

  v99 = *(&xmmword_27AE668 + 1);
  v98 = xmmword_27AE668;
  if (xmmword_27AE668 != *(&xmmword_27AE668 + 1))
  {
    if (v97 >= 0)
    {
      v100 = *(v96 + 23);
    }

    else
    {
      v100 = v96[1];
    }

    if (v97 >= 0)
    {
      v101 = v96;
    }

    else
    {
      v101 = *v96;
    }

    while (1)
    {
      v102 = *(v98 + 23);
      v103 = v102;
      if ((v102 & 0x80u) != 0)
      {
        v102 = *(v98 + 8);
      }

      if (v102 == v100)
      {
        v104 = v103 >= 0 ? v98 : *v98;
        if (!memcmp(v104, v101, v100))
        {
          break;
        }
      }

      v98 += 24;
      if (v98 == v99)
      {
        goto LABEL_298;
      }
    }
  }

  if (v98 != v99)
  {
    v105 = *(a3 + 23);
    if (v105 >= 0)
    {
      v106 = *(a3 + 23);
    }

    else
    {
      v106 = *(a3 + 8);
    }

    if (v106 + 11 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v106 + 11 >= 0x17)
    {
      operator new();
    }

    __p[1] = 0;
    v117 = 0;
    *(__p + 7) = 1702131055;
    HIBYTE(v117) = v106 + 11;
    __p[0] = *"Start_Route";
    if (v106)
    {
      if ((v105 & 0x80u) == 0)
      {
        v111 = a3;
      }

      else
      {
        v111 = *a3;
      }

      memmove(&__p[1] + 3, v111, v106);
    }

    *(&__p[1] + v106 + 3) = 0;
    sub_794D4(a4, __p);
    if (SHIBYTE(v117) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_298:
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }
}

void sub_857CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  sub_1A104(v32);
  _Unwind_Resume(a1);
}

void sub_857D88(uint64_t a1@<X8>)
{
  *__p = 0u;
  v8 = 0u;
  v9 = 1065353216;
  v5 = 0;
  v6 = 0;
  sub_68070C(a1, qword_27AE458, __p, 4, &v5);
  v1 = v6;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  v2 = v8;
  if (v8)
  {
    do
    {
      v3 = *v2;
      sub_55F7FC((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = __p[0];
  __p[0] = 0;
  if (v4)
  {
    operator delete(v4);
  }
}

void sub_857E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1F1A8(&a9);
  sub_540798(&a11);
  _Unwind_Resume(a1);
}

void sub_857E74(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 1940) != 1)
  {
    sub_67F320((a1 + 80), __p);
    v6 = sub_58BBC(a1 + 80);
    v8 = 0;
    v9 = 0;
    sub_68070C(a2, __p, v6, 2, &v8);
    v7 = v9;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((v13 & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((v13 & 0x80000000) == 0)
    {
      return;
    }

    operator delete(__p[0]);
    return;
  }

  sub_67F320((a1 + 80), __p);
  v4 = sub_58BBC(a1 + 80);
  v10 = 0;
  v11 = 0;
  sub_68070C(a2, __p, v4, 1, &v10);
  v5 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((v13 & 0x80000000) == 0)
    {
LABEL_5:
      if (*(a1 + 1940) == 1)
      {
LABEL_6:
        sub_85BB8C(a1, a2, 1);
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(__p[0]);
  if (*(a1 + 1940) == 1)
  {
    goto LABEL_6;
  }

LABEL_13:
  if (*(a1 + 1939) == 1)
  {
    sub_85B6F0(a1, a2, 1, 0);
  }
}

void sub_85804C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_1F1A8(&a10);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_858088(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (*(a1 + 1940) == 1)
  {
    sub_85BB8C(a1, a2, a3);
  }

  else if (*(a1 + 1939) == 1)
  {
    sub_85B6F0(a1, a2, a3, a4);
  }
}

void sub_8580D0(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    sub_5F0850(&v17, a1 + 80);
  }

  else
  {
    sub_8494C8(a1, __p);
    sub_850C08(a1, 1, __p, &v17);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v13 = 0;
  v14 = 0;
  sub_680484(a3, &v17, 1, &v13);
  v5 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = v20;
  if (v20)
  {
    do
    {
      v7 = *v6;
      sub_55F7FC((v6 + 2));
      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  v8 = v19;
  v19 = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = v17;
  if (v17)
  {
    v10 = v18;
    v11 = v17;
    if (v18 != v17)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v17;
    }

    v18 = v9;
    operator delete(v11);
  }
}

void sub_85821C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_858254(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 1936) == 1)
  {
    sub_858268();
  }

  sub_8594BC(a1, a2, a3, a4);
}

void sub_858268()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_8592B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void **a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void **a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1A104(&a32);
  sub_662AC8(&a37);
  if (a55 < 0)
  {
    operator delete(__p);
  }

  sub_662AC8(&a58);
  if (a73 < 0)
  {
    operator delete(a72);
  }

  sub_53A58C(&STACK[0x200]);
  if (*(v73 - 217) < 0)
  {
    operator delete(*(v73 - 240));
  }

  if (*(v73 - 193) < 0)
  {
    operator delete(*(v73 - 216));
  }

  sub_53A58C((v73 - 192));
  sub_1F1A8(v73 - 120);
  sub_681738(v73 - 104);
  _Unwind_Resume(a1);
}

void sub_8594BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = 32;
  if (*(*(a1 + 2120) + 1064))
  {
    v8 = 40;
  }

  v9 = *(*(a1 + 2112) + v8);
  sub_67F320((a1 + 80), v53);
  v10 = HIBYTE(v54);
  v11 = SHIBYTE(v54);
  v12 = v53[0];
  if (v54 >= 0)
  {
    v13 = v53;
  }

  else
  {
    v13 = v53[0];
  }

  if (v54 < 0)
  {
    v10 = v53[1];
  }

  v14 = v13 + v10;
  if (v10 >= 8)
  {
    v15 = v13;
    do
    {
      v16 = memchr(v15, 67, v10 - 7);
      if (!v16)
      {
        break;
      }

      if (*v16 == 0x65756E69746E6F43)
      {
        goto LABEL_14;
      }

      v15 = (v16 + 1);
      v10 = v14 - v15;
    }

    while (v14 - v15 > 7);
  }

  v16 = v14;
LABEL_14:
  v17 = v16 - v13;
  if (v11 < 0)
  {
    v18 = v16;
    operator delete(v12);
    v16 = v18;
  }

  v20 = v16 == v14 || v17 == -1;
  if (*(*(a2 + 1104) + 2616 * a3 + 1008) >= v9 && v20)
  {
    (*(*a1 + 120))(v53, a1);
    v21 = a4[1];
    if (v21 >= a4[2])
    {
      v36 = sub_6872EC(a4, v53);
      v37 = *(&v62 + 1);
      a4[1] = v38;
      if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v37->__on_zero_shared)(v37, v36);
        std::__shared_weak_count::__release_weak(v37);
      }
    }

    else
    {
      *v21 = 0;
      *(v21 + 8) = 0;
      *(v21 + 16) = 0;
      *v21 = *v53;
      *(v21 + 16) = v54;
      v53[0] = 0;
      v53[1] = 0;
      v22 = __p;
      v54 = 0;
      __p = 0;
      *(v21 + 24) = v22;
      *(v21 + 32) = v56;
      v56 = 0;
      v23 = v57;
      *(v21 + 40) = v57;
      v24 = v58;
      *(v21 + 48) = v58;
      *(v21 + 56) = v59;
      if (v24)
      {
        v25 = v23[1];
        v26 = *(v21 + 32);
        if ((v26 & (v26 - 1)) != 0)
        {
          if (v25 >= v26)
          {
            v25 %= v26;
          }
        }

        else
        {
          v25 &= v26 - 1;
        }

        v22[v25] = v21 + 40;
        v57 = 0;
        v58 = 0;
      }

      *(v21 + 64) = v60;
      *(v21 + 72) = v61;
      *(v21 + 80) = v62;
      v62 = 0uLL;
      v47 = v64;
      *(v21 + 96) = v63;
      *(v21 + 98) = v47;
      a4[1] = v21 + 104;
    }

    v48 = v57;
    if (v57)
    {
      do
      {
        v49 = *v48;
        sub_55F7FC((v48 + 2));
        operator delete(v48);
        v48 = v49;
      }

      while (v49);
    }

    v50 = __p;
    __p = 0;
    if (v50)
    {
      operator delete(v50);
    }

    v43 = v53[0];
    if (v53[0])
    {
      v51 = v53[1];
      v45 = v53[0];
      if (v53[1] == v53[0])
      {
        goto LABEL_67;
      }

      do
      {
        v52 = *(v51 - 1);
        v51 -= 3;
        if (v52 < 0)
        {
          operator delete(*v51);
        }
      }

      while (v51 != v43);
      goto LABEL_66;
    }
  }

  else
  {
    (*(*a1 + 128))(v53, a1, a2, a3);
    v27 = a4[1];
    if (v27 >= a4[2])
    {
      v33 = sub_6872EC(a4, v53);
      v34 = *(&v62 + 1);
      a4[1] = v35;
      if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v34->__on_zero_shared)(v34, v33);
        std::__shared_weak_count::__release_weak(v34);
      }
    }

    else
    {
      *v27 = 0;
      *(v27 + 8) = 0;
      *(v27 + 16) = 0;
      *v27 = *v53;
      *(v27 + 16) = v54;
      v53[0] = 0;
      v53[1] = 0;
      v28 = __p;
      v54 = 0;
      __p = 0;
      *(v27 + 24) = v28;
      *(v27 + 32) = v56;
      v56 = 0;
      v29 = v57;
      *(v27 + 40) = v57;
      v30 = v58;
      *(v27 + 48) = v58;
      *(v27 + 56) = v59;
      if (v30)
      {
        v31 = v29[1];
        v32 = *(v27 + 32);
        if ((v32 & (v32 - 1)) != 0)
        {
          if (v31 >= v32)
          {
            v31 %= v32;
          }
        }

        else
        {
          v31 &= v32 - 1;
        }

        v28[v31] = v27 + 40;
        v57 = 0;
        v58 = 0;
      }

      *(v27 + 64) = v60;
      *(v27 + 72) = v61;
      *(v27 + 80) = v62;
      v62 = 0uLL;
      v39 = v64;
      *(v27 + 96) = v63;
      *(v27 + 98) = v39;
      a4[1] = v27 + 104;
    }

    v40 = v57;
    if (v57)
    {
      do
      {
        v41 = *v40;
        sub_55F7FC((v40 + 2));
        operator delete(v40);
        v40 = v41;
      }

      while (v41);
    }

    v42 = __p;
    __p = 0;
    if (v42)
    {
      operator delete(v42);
    }

    v43 = v53[0];
    if (v53[0])
    {
      v44 = v53[1];
      v45 = v53[0];
      if (v53[1] == v53[0])
      {
        goto LABEL_67;
      }

      do
      {
        v46 = *(v44 - 1);
        v44 -= 3;
        if (v46 < 0)
        {
          operator delete(*v44);
        }
      }

      while (v44 != v43);
LABEL_66:
      v45 = v53[0];
LABEL_67:
      v53[1] = v43;
      operator delete(v45);
    }
  }
}

void sub_85998C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_662AC8(&a9);
  sub_681738(v9);
  _Unwind_Resume(a1);
}

void sub_8599E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_67F360(a1 + 8, "{ExitNumber}");
  v5 = *(a1 + 1928);
  v6 = v5 > 0x1E || ((1 << v5) & 0x60000800) == 0;
  if (!v6 || v5 - 64 < 3 && v4)
  {
    v7 = 1953069125;
    if (v4)
    {
      v7 = 0x6978455F74697845;
    }

    v8 = 0x7265626D754E74;
    if (v4)
    {
      v9 = 15;
    }

    else
    {
      v8 = 0;
      v9 = 4;
    }

    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = 0;
    *(a2 + 19) = 0;
    *(a2 + 23) = v9;
  }

  else if (v5 <= 0x19 && ((1 << v5) & 0x20200C0) != 0 || v5 - 86 < 2 || v5 - 41 < 0x13 || v5 - 85 <= 0xB && ((1 << (v5 - 85)) & 0xFC9) != 0 || v5 <= 0x27 && ((1 << v5) & 0x8001C10000) != 0 || v5 - 89 <= 1)
  {
    sub_8561D0(a1, a2);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

void sub_859B74(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_8561D0(a1, &v9);
  sub_8494C8(a1, __p);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v9, v4, v5);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if ((v8 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(v9.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_11;
  }
}

void sub_859C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

BOOL sub_859C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_67F360(a2, "{Road}") || !sub_67F360(a3, "{Road}"))
  {
    goto LABEL_26;
  }

  v5 = sub_58BBC(a2);
  v6 = sub_668F0C(v5, "{Road}");
  if (!v6)
  {
    goto LABEL_48;
  }

  sub_734D90(&v32, v6 + 5);
  v7 = sub_58BBC(a3);
  v8 = sub_668F0C(v7, "{Road}");
  if (!v8)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  sub_734D90(&__p, v8 + 5);
  v9 = v34;
  if ((v34 & 0x80u) == 0)
  {
    v10 = v34;
  }

  else
  {
    v10 = v33;
  }

  v11 = v31;
  v12 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v11 = v30;
  }

  if (v10 != v11)
  {
    v15 = 0;
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ((v34 & 0x80u) == 0)
  {
    v13 = &v32;
  }

  else
  {
    v13 = v32;
  }

  if ((v31 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v15 = memcmp(v13, p_p, v10) == 0;
  if (v12 < 0)
  {
LABEL_20:
    operator delete(__p);
    v9 = v34;
  }

LABEL_21:
  if ((v9 & 0x80) != 0)
  {
    operator delete(v32);
    if (v15)
    {
      return 1;
    }
  }

  else if (v15)
  {
    return 1;
  }

LABEL_26:
  result = sub_67F360(a2, "{Freeway}");
  if (result)
  {
    result = sub_67F360(a3, "{Freeway}");
    if (result)
    {
      v17 = sub_58BBC(a2);
      v18 = sub_668F0C(v17, "{Freeway}");
      if (v18)
      {
        sub_734D90(&v32, v18 + 5);
        v19 = sub_58BBC(a3);
        v20 = sub_668F0C(v19, "{Freeway}");
        if (!v20)
        {
          sub_49EC("unordered_map::at: key not found");
        }

        sub_734D90(&__p, v20 + 5);
        v21 = v34;
        if ((v34 & 0x80u) == 0)
        {
          v22 = v34;
        }

        else
        {
          v22 = v33;
        }

        v23 = v31;
        v24 = v31;
        if ((v31 & 0x80u) != 0)
        {
          v23 = v30;
        }

        if (v22 == v23)
        {
          if ((v34 & 0x80u) == 0)
          {
            v25 = &v32;
          }

          else
          {
            v25 = v32;
          }

          if ((v31 & 0x80u) == 0)
          {
            v26 = &__p;
          }

          else
          {
            v26 = __p;
          }

          result = memcmp(v25, v26, v22) == 0;
          if ((v24 & 0x80000000) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          result = 0;
          if ((v31 & 0x80000000) == 0)
          {
            goto LABEL_46;
          }
        }

        v27 = result;
        operator delete(__p);
        result = v27;
        v21 = v34;
LABEL_46:
        if ((v21 & 0x80) != 0)
        {
          v28 = result;
          operator delete(v32);
          return v28;
        }

        return result;
      }

LABEL_48:
      sub_49EC("unordered_map::at: key not found");
    }
  }

  return result;
}

void sub_859F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_859F2C(uint64_t a1, __int128 **a2)
{
  sub_67F320(a2, __p);
  sub_84DC78(a1, __p);
  sub_67E700(a2);
  sub_67E35C(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_859FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_859FC0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = 0;
  v6 = 0;
  sub_680484(a2, a1 + 80, 8, &v5);
  v4 = v6;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (*(a1 + 1940) == 1)
    {
      goto LABEL_4;
    }
  }

  else if (*(a1 + 1940) == 1)
  {
LABEL_4:
    sub_85BB8C(a1, a2, 0);
    return;
  }

  if (*(a1 + 1939) == 1)
  {
    sub_85B6F0(a1, a2, 0, 0);
  }
}

void sub_85A5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void **a33)
{
  sub_662AC8(v33);
  sub_662AC8(&a14);
  sub_53A58C(&a33);
  sub_1F1A8(v34 - 96);
  _Unwind_Resume(a1);
}

void sub_85A678(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_8561D0(a1, &v19);
  v4 = v20;
  sub_67F320((a1 + 8), v20);
  v5 = v21;
  v6 = v21;
  v7 = v20[0];
  if ((v21 & 0x80u) != 0)
  {
    v4 = v20[0];
    v5 = v20[1];
  }

  v8 = v4 + v5;
  if (v5 >= 8)
  {
    v9 = v4;
    do
    {
      v10 = memchr(v9, 87, v5 - 7);
      if (!v10)
      {
        break;
      }

      if (*v10 == 0x5F676E696B6C6157)
      {
        goto LABEL_9;
      }

      v9 = v10 + 1;
      v5 = v8 - v9;
    }

    while (v8 - v9 > 7);
  }

  v10 = v8;
LABEL_9:
  if (v6 < 0)
  {
    v11 = v10;
    operator delete(v7);
    v10 = v11;
  }

  v12 = v10 - v4 == -1 || v10 == v8;
  v13 = "_Spoken_Primary";
  if (!v12)
  {
    v13 = "_Spoken";
  }

  v18 = *(v13 + 2);
  *__p = *v13;
  if (v18 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if (v18 >= 0)
  {
    v15 = HIBYTE(v18);
  }

  else
  {
    v15 = __p[1];
  }

  v16 = std::string::append(&v19, v14, v15);
  *a2 = *v16;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_26:
    operator delete(v19.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_26;
  }
}

void sub_85A7F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void sub_85A840(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*a4 == -1)
  {
    if (a4[2] == -1)
    {
      if (a4[1] == -1)
      {
        if (a4[6] == -1)
        {
          memset(&v16[2], 0, 15);
          v6 = 0x64616F525FLL;
          memset(v16, 0, 15);
          v7 = 0x7D64616F527BLL;
          v8 = 5;
          v9 = 6;
        }

        else
        {
          *(&v16[2] + 7) = 0;
          v16[2] = 101;
          *(v16 + 7) = 0;
          v16[0] = 32101;
          v6 = 0x6D614E706D61525FLL;
          v7 = 0x6D614E706D61527BLL;
          v8 = 9;
          v9 = 10;
        }
      }

      else
      {
        *(&v16[2] + 7) = 0;
        v16[2] = 0x656D614E72;
        v16[0] = 0x7D656D614E72;
        *(v16 + 7) = 0;
        v6 = 0x6F746176656C455FLL;
        v7 = 0x6F746176656C457BLL;
        v8 = 13;
        v9 = 14;
      }
    }

    else
    {
      *(&v16[2] + 7) = 0;
      v16[2] = 0x656D614E726FLL;
      *(v16 + 7) = 0;
      strcpy(v16, "orName}");
      v6 = 0x74616C616373455FLL;
      v7 = 0x74616C616373457BLL;
      v8 = 14;
      v9 = 15;
    }
  }

  else
  {
    *(&v16[2] + 7) = 0;
    v16[2] = 6647137;
    *(v16 + 7) = 0;
    v16[0] = 2103799137;
    v6 = 0x4E7372696174535FLL;
    v7 = 0x4E7372696174537BLL;
    v8 = 11;
    v9 = 12;
  }

  v13 = v6;
  *v14 = v16[2];
  *&v14[7] = *(&v16[2] + 7);
  v15 = v8;
  __p = v7;
  *v11 = v16[0];
  *&v11[7] = *(v16 + 7);
  v12 = v9;
  sub_67F210(a2, &v13, &__p, a3);
  sub_67F2AC(a2, "{Shield1}", a3, 1);
  if ((v12 & 0x80000000) == 0)
  {
    if ((v15 & 0x80000000) == 0)
    {
      return;
    }

LABEL_14:
    operator delete(v13);
    return;
  }

  operator delete(__p);
  if (v15 < 0)
  {
    goto LABEL_14;
  }
}

void sub_85AA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void sub_85AACC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 936);
  v3 = *(a1 + 944);
  if (v2 != v3)
  {
    if (0x86BCA1AF286BCA1BLL * (v3 - v2) < 2)
    {
      if (*(a1 + 1934) == 1 && *(a1 + 1936) == 1)
      {
        sub_67F210(a2, "_Freeway", "{Freeway}", (a1 + 152));

        sub_67F2AC(a2, "{Shield1}", (a1 + 152), 1);
      }

      else
      {

        sub_85A840(a1, a2, (a1 + 152), (a1 + 1944));
      }
    }

    else
    {
      sub_67F210(a2, "_Road1", "{Road1}", v2);
      sub_67F2AC(a2, "{Shield1}", v2, 1);
      v6 = *(a1 + 936);
      sub_67F210(a2, "_Road2", "{Road2}", (v6 + 152));
      sub_67F2AC(a2, "{Shield2}", (v6 + 152), 1);

      sub_67F114(a2, "{Road}", (a1 + 152));
    }
  }
}

void sub_85AC60(uint64_t a1, std::string **a2)
{
  if ((*(a1 + 1007) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 992))
    {
      goto LABEL_3;
    }

LABEL_7:

    sub_67EAA4(a2, "_Charge_Station");
    return;
  }

  if (!*(a1 + 1007))
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = 0xFFFFFFFFLL;
  *v3 = 0u;
  *__p = 0u;
  v5 = 0u;
  sub_67F164(a2, "_Charge_Station_Name", "{ChargeStationName}", a1 + 984, (a1 + 984), &v2);
  if ((SHIBYTE(v5) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(v3[0]);
    return;
  }

  operator delete(__p[1]);
  if (SHIBYTE(__p[0]) < 0)
  {
    goto LABEL_11;
  }
}

void sub_85AD3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_513574(va);
  _Unwind_Resume(a1);
}

uint64_t sub_85AD50(uint64_t a1)
{
  v2 = *(a1 + 1928);
  v3 = 1;
  if (v2 > 0x1E || ((1 << v2) & 0x60000800) == 0)
  {
    v3 = sub_67F360(a1 + 8, "{ExitNumber}");
    v2 = *(a1 + 1928);
  }

  v5 = v2 - 86 < 2 || v2 - 41 < 0x13;
  v6 = v2 - 6 < 2 || v5;
  v7 = v2 - 22;
  v8 = v2 - 91;
  v10 = v2 == 96 || (v2 & 0xFFFFFFFE) == 94;
  if (v8 < 3)
  {
    v10 = 1;
  }

  if (v7 < 3)
  {
    v10 = 1;
  }

  return v3 | v6 | v10;
}

const char *sub_85AE04(uint64_t a1)
{
  v2 = *(a1 + 2120);
  if (*(v2 + 1562) == 1)
  {
    v3 = *(a1 + 1752);
  }

  else
  {
    v3 = *(a1 + 1752);
    if (v3 == 0xFFFF)
    {
      LOWORD(v3) = -1;
    }

    else if (*(v2 + 1216) == 2)
    {
      v3 = *(a1 + 1752);
    }

    else
    {
      LOWORD(v3) = v3 - 1;
    }
  }

  v4 = sub_84CB70(v2, v3);
  if (sub_84CFD0(*(a1 + 2120), *(a1 + 1752)))
  {
    if ((v4 & 1) == 0)
    {
      if ((v4 & 0x10000) == 0)
      {
        return &xmmword_22A2550;
      }

      return "Address";
    }

    return "Name";
  }

  if ((v4 & 0x10000) != 0)
  {
    return "Address";
  }

  if (v4)
  {
    return "Name";
  }

  return &xmmword_22A2550;
}

void sub_85AEF8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 1928);
  v5 = "Waypoint_Stop";
  if (v4 == 84)
  {
    v5 = "Waypoint_Stop_On_Right";
  }

  if (v4 == 83)
  {
    v6 = "Waypoint_Stop_On_Left";
  }

  else
  {
    v6 = v5;
  }

  if ((v6[23] & 0x80000000) == 0)
  {
    *v18 = *v6;
    v19 = *(v6 + 2);
    v7 = *(a1 + 1007);
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_325C(v18, *v6, *(v6 + 1));
  v7 = *(a1 + 1007);
  if (v7 < 0)
  {
LABEL_8:
    v7 = *(a1 + 992);
  }

LABEL_9:
  if (v7)
  {
    v8 = "_Charge_Station_Name";
  }

  else
  {
    v8 = "_Charge_Station";
  }

  v17 = *(v8 + 2);
  *__p = *v8;
  if (v19 >= 0)
  {
    v9 = HIBYTE(v19);
  }

  else
  {
    v9 = v18[1];
  }

  v10 = SHIBYTE(v17);
  if (v17 >= 0)
  {
    v11 = HIBYTE(v17);
  }

  else
  {
    v11 = __p[1];
  }

  v12 = v11 + v9;
  if (v11 + v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v12 > 0x16)
  {
    operator new();
  }

  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  *(a2 + 23) = v12;
  if (v9)
  {
    if (v19 >= 0)
    {
      v13 = v18;
    }

    else
    {
      v13 = v18[0];
    }

    memmove(a2, v13, v9);
  }

  v14 = a2 + v9;
  if (v11)
  {
    if (v10 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    memmove(v14, v15, v11);
  }

  v14[v11] = 0;
  if ((v10 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      return;
    }

LABEL_37:
    operator delete(v18[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v19) < 0)
  {
    goto LABEL_37;
  }
}

void sub_85B0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18 < 0)
  {
    operator delete(__p);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a13);
  _Unwind_Resume(exception_object);
}

uint64_t sub_85B118(uint64_t result, uint64_t a2, int a3)
{
  if (*(*(result + 2112) + 2545) == 1)
  {
    result = sub_683CD4(result + 2296);
    if (result)
    {
      v4 = 6;
      if (a3)
      {
        v4 = 3;
      }

      v5 = &qword_27AEFF8;
      if (a3)
      {
        v5 = &qword_27AEFE0;
      }

      v6 = &unk_27AF00F;
      if (a3)
      {
        v6 = &unk_27AEFF7;
      }

      if (*v6 < 0)
      {
        v7 = qword_27AEFC8[v4];
        v8 = 6;
        if (a3)
        {
          v8 = 3;
        }

        sub_325C(v14, v7, qword_27AEFC8[v8 + 1]);
      }

      else
      {
        *v14 = *v5;
        v15 = v5[2];
      }

      if (v15 >= 0)
      {
        v9 = HIBYTE(v15);
      }

      else
      {
        v9 = v14[1];
      }

      if (v9 + 4 < 0x7FFFFFFFFFFFFFF8)
      {
        if (v9 + 4 >= 0x17)
        {
          operator new();
        }

        v11[1] = 0;
        v12 = 0;
        HIBYTE(v12) = v9 + 4;
        v11[0] = 978732356;
        if (v9)
        {
          if (v15 >= 0)
          {
            v10 = v14;
          }

          else
          {
            v10 = v14[0];
          }

          memmove(v11 + 4, v10, v9);
        }

        *(v11 + v9 + 4) = 0;
        sub_67E494(v13, v11);
        operator new();
      }

      sub_3244();
    }
  }

  return result;
}

void sub_85B648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  sub_540798(&a18);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}