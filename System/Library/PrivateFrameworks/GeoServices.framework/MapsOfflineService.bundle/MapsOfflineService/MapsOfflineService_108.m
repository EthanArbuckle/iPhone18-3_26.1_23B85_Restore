uint64_t sub_6DB978(double *a1, uint64_t a2, int **a3, void *a4, unint64_t a5, unint64_t a6)
{
  v11 = sub_605E3C(a4, a5);
  sub_70E6C0((a1 + 179), a2, a3, v11);
  v13 = v12;
  v15 = v14;
  if (sub_7102E4((a1 + 179), a3, v11))
  {
    return 4;
  }

  v17 = v13;
  v16 = sub_70DD90(a1 + 179, v15 & 1, v13);
  v18 = sub_70DE94((a1 + 179), a3, v11);
  v19 = sub_3116D0(a3);
  if (v19 != sub_311544(v11))
  {
    v20 = fabs(v17);
    if (v18 <= 0.0)
    {
      v21 = v16;
    }

    else
    {
      v21 = 61;
    }

    if (v18 < 0.0)
    {
      v21 = 60;
    }

    if (v20 >= a1[123])
    {
      v16 = v21;
    }

    else
    {
      v16 = v16;
    }
  }

  if (a6 != -1)
  {
    v22 = sub_605E3C(a4, a6);
    v23 = sub_6DAFB0(a1, a3, v22, v11);
    if (v17 >= 0.0 && v24 < v23 && fabs(v17) < a1[38])
    {
      v16 = 20;
    }

    if (v17 <= 0.0 && v24 > v23 && fabs(v17) < a1[38])
    {
      return 21;
    }
  }

  return v16;
}

uint64_t sub_6DBAF4(uint64_t a1, char **a2, void *a3, unint64_t a4, unint64_t a5)
{
  if (a5 != -1)
  {
    if ((v9 = sub_605E3C(a3, a5), v10 = sub_605E3C(a3, a4), v11 = &(*a2)[-**a2], *v11 < 0x2Fu) || (v12 = *(v11 + 23)) == 0 || ((v13 = (*a2)[v12], v14 = v13 > 0x2A, v15 = (1 << v13) & 0x50426810004, !v14) ? (v16 = v15 == 0) : (v16 = 1), v16 || (v17 = &(*v9)[-**v9], *v17 < 0x2Fu) || (v18 = *(v17 + 23)) == 0 || (v19 = (*v9)[v18] - 2, v19 >= 0x29) || ((0x14109A04001uLL >> v19) & 1) == 0))
    {
      sub_6D3D8C(*a1, *(v10 + 8) | (*(v10 + 18) << 32), &__p);
      v21 = __p;
      v22 = v38;
      v36[0] = a1;
      v36[1] = a2;
      v36[2] = v10;
      if (__p != v38)
      {
        while (!sub_70337C(v36, v21))
        {
          if (++v21 == v22)
          {
            v21 = v22;
            break;
          }
        }

        v22 = v38;
      }

      if (v21 != v22)
      {
LABEL_19:
        v20 = 1;
        v23 = __p;
        if (!__p)
        {
          return v20;
        }

LABEL_20:
        v38 = v23;
        operator delete(v23);
        return v20;
      }

      v25 = &(*a2)[-**a2];
      if (*v25 >= 0x2Fu)
      {
        v26 = *(v25 + 23);
        if (v26)
        {
          if (!(*a2)[v26])
          {
            v27 = &(*v10)[-**v10];
            if (*v27 >= 0x2Fu)
            {
              v28 = *(v27 + 23);
              if (v28)
              {
                v29 = (*v10)[v28];
                v14 = v29 > 0x2A;
                v30 = (1 << v29) & 0x50426810004;
                if (!v14 && v30 != 0)
                {
                  v32 = &(*v9)[-**v9];
                  if (*v32 < 0x2Fu)
                  {
                    goto LABEL_36;
                  }

                  v33 = *(v32 + 23);
                  if (!v33)
                  {
                    goto LABEL_36;
                  }

                  v34 = (*v9)[v33];
                  if (v34 - 2) < 0x29 && ((0x14109A04001uLL >> (v34 - 2)))
                  {
                    goto LABEL_39;
                  }

                  if ((*v9)[v33])
                  {
LABEL_36:
                    v35 = sub_70E748(a1 + 1432, v10);
                    if (v35 < sub_70E748(a1 + 1432, v9))
                    {
                      goto LABEL_39;
                    }
                  }

                  if (sub_70E748(a1 + 1432, v10) >= *(a1 + 456) || sub_70E748(a1 + 1432, a2) <= *(a1 + 456))
                  {
                    goto LABEL_19;
                  }
                }
              }
            }
          }
        }
      }

LABEL_39:
      v20 = 0;
      v23 = __p;
      if (!__p)
      {
        return v20;
      }

      goto LABEL_20;
    }
  }

  return 0;
}

void sub_6DBD80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6DBDA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a4 - 3) >= 0xFFFFFFFE)
  {
    memset(v5, 0, sizeof(v5));
    sub_73F798(a1 + 7480, a3, v5);
  }

  return 0;
}

void sub_6DBF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6DBF88(uint64_t a1, void *a2, unint64_t a3, int **a4, uint64_t a5, int a6)
{
  *(a5 + 24) = 0;
  *(a5 + 8) = *a5;
  *(a5 + 48) = *(a5 + 40);
  *(a5 + 64) = 0;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  *(a5 + 72) = v9;
  *(a5 + 88) = v9;
  *(a5 + 104) = v9;
  *(a5 + 120) = -1;
  *(a5 + 128) = 0;
  *(a5 + 136) = -1;
  *(a5 + 144) = 0;
  *(a5 + 152) = 0;
  *(a5 + 160) = vnegq_f64(v9);
  *(a5 + 176) = 0;
  *(a5 + 184) = 98;
  *(a5 + 192) = 0;
  *(a5 + 200) = 0;
  *(a5 + 208) = xmmword_229B660;
  *(a5 + 232) = 0;
  *(a5 + 245) = 0;
  *(a5 + 224) = 0;
  v47 = a4[13];
  v10 = sub_605E3C(a4 + 10, v47);
  v11 = sub_4D1DC0(a2);
  if (a3 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = a3;
  }

  v46 = a3;
  if (v11 > a3)
  {
    do
    {
      while (1)
      {
        v14 = *(sub_4D1F50(a2, a3) + 32);
        v16 = *(a5 + 8);
        v15 = *(a5 + 16);
        if (v16 >= v15)
        {
          v18 = *a5;
          v19 = v16 - *a5;
          v20 = v19 >> 3;
          v21 = (v19 >> 3) + 1;
          if (v21 >> 61)
          {
            sub_1794();
          }

          v22 = v15 - v18;
          if (v22 >> 2 > v21)
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

          *(8 * v20) = v14 & 0xFFFFFFFFFFFFFFLL;
          v17 = 8 * v20 + 8;
          memcpy(0, v18, v19);
          *a5 = 0;
          *(a5 + 8) = v17;
          *(a5 + 16) = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v16 = v14 & 0xFFFFFFFFFFFFFFLL;
          v17 = (v16 + 1);
        }

        *(a5 + 8) = v17;
        v13 = *(v10 + 32);
        if (v13 == v14)
        {
          break;
        }

        if (++a3 == v12)
        {
          goto LABEL_26;
        }
      }

      ++a3;
    }

    while ((HIDWORD(v13) & 0xFFFFFF) != (HIDWORD(v14) & 0xFFFFFF) && a3 != v12);
  }

  else
  {
    v13 = *(v10 + 32);
  }

LABEL_26:
  v25 = sub_31EE90(*a1, a4[4] & 0xFFFFFFFFFFFFFFLL, v13 & 0xFFFFFFFFFFFFFFLL);
  if (v25)
  {
    v26 = a6;
    v27 = v47;
    if (sub_6DC420(a1, a4))
    {
      LOBYTE(v25) = 1;
    }

    else
    {
      LOBYTE(v25) = sub_6DC420(a1, v10);
    }
  }

  else
  {
    v26 = a6;
    v27 = v47;
  }

  *(a5 + 244) = v25;
  result = sub_6D446C(a1, a2, a4, a4 + 10, v27, 1, 1, v26);
  *(a5 + 24) = result;
  if (result)
  {
    result = sub_6DC668(a1, a2, v46, v10, a5);
    if (result)
    {
      *(a5 + 24) = 0;
      goto LABEL_34;
    }

    if (*(a1 + 1074) == 1 && *(a5 + 24) == 3)
    {
      v30 = *a4;
      v31 = (*a4 - **a4);
      v32 = *v31;
      if (v32 < 0x2F || !v31[23])
      {
        goto LABEL_60;
      }

      v33 = v30[v31[23]];
      if (v33 > 0x2A)
      {
        if (v33 == 44)
        {
          goto LABEL_34;
        }

        if (v33 != 43)
        {
          goto LABEL_60;
        }
      }

      else if (v33 != 6 && v33 != 12)
      {
        goto LABEL_60;
      }

      if (v32 < 0x9B)
      {
        goto LABEL_34;
      }

      v35 = v31[77];
      if (!v35 || (v30[v35 + 2] & 0x20) == 0)
      {
        goto LABEL_34;
      }

LABEL_60:
      result = sub_605E3C(a4 + 10, v27);
      v36 = *result;
      v37 = (*result - **result);
      v38 = *v37;
      if (*(result + 38))
      {
        if (v38 < 0x47)
        {
          goto LABEL_34;
        }

        v39 = v37[35];
        if (!v37[35])
        {
          goto LABEL_34;
        }

        v40 = 2;
      }

      else
      {
        if (v38 < 0x47)
        {
          goto LABEL_34;
        }

        v39 = v37[35];
        if (!v37[35])
        {
          goto LABEL_34;
        }

        v40 = 1;
      }

      v41 = *(v36 + v39);
      if ((v41 & v40) == 0 || !v37[23])
      {
        goto LABEL_34;
      }

      v42 = *(v36 + v37[23]);
      if (v42 > 0x2A)
      {
        if (v42 == 44)
        {
          goto LABEL_80;
        }

        if (v42 != 43)
        {
          goto LABEL_34;
        }
      }

      else if (v42 != 6 && v42 != 12)
      {
        goto LABEL_34;
      }

      if (v38 >= 0x9B)
      {
        v44 = v37[77];
        if (v44)
        {
          if ((*(v36 + v44 + 2) & 0x20) != 0)
          {
            goto LABEL_34;
          }
        }
      }

LABEL_80:
      if (*(result + 38))
      {
        if ((v41 & 0x141510) != 0)
        {
          goto LABEL_86;
        }

        v45 = 64;
      }

      else
      {
        if ((v41 & 0xA0A88) != 0)
        {
          goto LABEL_86;
        }

        v45 = 32;
      }

      if ((v45 & v41) == 0)
      {
        goto LABEL_34;
      }

LABEL_86:
      *(a5 + 245) = 1;
    }
  }

LABEL_34:
  if (*(a1 + 763) == 1)
  {
    result = sub_31C0F0(*a1, a4[4] & 0xFFFFFFFFFFFFFFLL);
    if (result)
    {
      result = sub_31C0F0(*a1, *(v10 + 32) & 0xFFFFFFFFFFFFFFLL);
      if (result)
      {
        if (*(a5 + 24))
        {
          *(a5 + 227) = 1;
          *(a5 + 24) = 0;
        }
      }
    }
  }

  if (v26)
  {
    v29 = *(a5 + 24);
    if (v29 <= 0x15 && ((1 << v29) & 0x300001) != 0)
    {
      v29 = 3;
    }

    *(a5 + 24) = v29;
  }

  return result;
}

uint64_t sub_6DC420(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1072) != 1)
  {
    return 0;
  }

  sub_5E94A4(*a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, 1, &__p);
  if (__p == v12)
  {
    v20 = 0u;
    *v18 = 0u;
    memset(v19, 0, sizeof(v19));
    v16 = 0u;
    *v17 = 0u;
    v14 = 0u;
    *v15 = 0u;
    *v13 = 0u;
    *(&v16 + 1) = sub_12331FC();
    v20 = 0uLL;
    v19[3] = 0;
    *v17 = 0u;
    *v18 = 0u;
    memset(v19, 0, 19);
    v3 = __p;
    if (!__p)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = __p;
    while (*v2)
    {
      v2 += 144;
      if (v2 == v12)
      {
        v2 = __p;
        break;
      }
    }

    sub_704AE0(v13, v2);
    v3 = __p;
    if (!__p)
    {
LABEL_8:
      v4 = LOBYTE(v19[2]);
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  v7 = v12;
  v8 = v3;
  if (v12 != v3)
  {
    do
    {
      v7 = sub_310F30(v7 - 144);
    }

    while (v7 != v3);
    v8 = __p;
  }

  v12 = v3;
  operator delete(v8);
  v4 = LOBYTE(v19[2]);
  if ((SHIBYTE(v20) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v19[1]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    operator delete(v18[1]);
    v5 = v17[0];
    if (!v17[0])
    {
LABEL_11:
      if (SBYTE7(v16) < 0)
      {
        goto LABEL_32;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  operator delete(v19[3]);
  if (SHIBYTE(v19[1]) < 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  v5 = v17[0];
  if (!v17[0])
  {
    goto LABEL_11;
  }

LABEL_22:
  v9 = v17[1];
  if (v17[1] == v5)
  {
    v17[1] = v5;
    operator delete(v5);
    if ((SBYTE7(v16) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_32:
    operator delete(v15[0]);
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return v4;
    }

    goto LABEL_33;
  }

  do
  {
    if (*(v9 - 9) < 0)
    {
      operator delete(*(v9 - 4));
      v10 = v9 - 7;
      if ((*(v9 - 33) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v10 = v9 - 7;
      if ((*(v9 - 33) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }
    }

    operator delete(*v10);
LABEL_25:
    v9 = v10;
  }

  while (v10 != v5);
  v17[1] = v5;
  operator delete(v17[0]);
  if (SBYTE7(v16) < 0)
  {
    goto LABEL_32;
  }

LABEL_12:
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
    return v4;
  }

LABEL_33:
  operator delete(v13[1]);
  return v4;
}

void sub_6DC640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5E9738(va);
  _Unwind_Resume(a1);
}

void sub_6DC654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5E9738(va);
  _Unwind_Resume(a1);
}

BOOL sub_6DC668(uint64_t a1, void *a2, unint64_t a3, int **a4, uint64_t a5)
{
  if (*(a1 + 870) != 1)
  {
    return 0;
  }

  result = sub_70EE0C(a1 + 1432, a4);
  if (result)
  {
    v11 = (*a4 - **a4);
    if (*v11 < 0x2Fu || (v12 = v11[23]) == 0 || (result = 0, v13 = *(*a4 + v12), v13 != 14) && v13 != 44)
    {
      result = 0;
      v14 = *(a5 + 24);
      if (v14 - 91 >= 6 && (v14 > 0x18 || ((1 << v14) & 0x1C00008) == 0))
      {
        v15 = sub_4D1F50(a2, a3);
        v16 = *a1;
        v17 = *(v15 + 32);
        v18 = sub_2B51D8(*a1, v17 & 0xFFFFFFFFFFFFLL);
        if (*(v16 + 7772) == 1)
        {
          v19 = sub_30C50C(v16 + 3896, v17, 0);
          v20 = &v19[-*v19];
          if (*v20 < 5u)
          {
            v21 = 0;
          }

          else
          {
            v21 = *(v20 + 2);
            if (v21)
            {
              v21 += &v19[*&v19[v21]];
            }
          }

          v22 = v21 + ((v17 >> 30) & 0x3FFFC) + 4 + *(v21 + ((v17 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v22 = 0;
        }

        v61[0] = v18;
        v61[1] = v22;
        v61[2] = sub_31D7E8(v16, v17 & 0xFFFFFFFFFFFFLL, 1);
        v61[3] = v23;
        v61[4] = v17 & 0xFFFFFFFFFFFFFFLL;
        __p = 0;
        v59 = 0;
        v60 = 0;
        v24 = sub_4D1DC0(a2);
        if (a3 <= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = a3;
        }

        if (v24 > a3)
        {
          do
          {
            v26 = sub_4D1F50(a2, a3);
            v27 = a4[4];
            v28 = *(v26 + 32);
            v30 = v27 == v28;
            v29 = HIDWORD(v27) & 0xFFFFFF;
            v30 = v30 && v29 == (HIDWORD(v28) & 0xFFFFFF);
            if (v30)
            {
              break;
            }

            v31 = *a1;
            v32 = sub_2B51D8(*a1, v28 & 0xFFFFFFFFFFFFLL);
            if (*(v31 + 7772) == 1)
            {
              v33 = sub_30C50C(v31 + 3896, v28, 0);
              v34 = &v33[-*v33];
              if (*v34 < 5u)
              {
                v35 = 0;
              }

              else
              {
                v35 = *(v34 + 2);
                if (v35)
                {
                  v35 += &v33[*&v33[v35]];
                }
              }

              v36 = v35 + ((v28 >> 30) & 0x3FFFC) + 4 + *(v35 + ((v28 >> 30) & 0x3FFFC) + 4);
            }

            else
            {
              v36 = 0;
            }

            v37 = sub_31D7E8(v31, v28 & 0xFFFFFFFFFFFFLL, 1);
            v53 = v32;
            v54 = v36;
            v55 = v37;
            v56 = v38;
            v57 = v28 & 0xFFFFFFFFFFFFFFLL;
            if (!sub_70EE0C(a1 + 1432, &v53))
            {
              goto LABEL_50;
            }

            v39 = (v53 - *v53);
            if (*v39 >= 0x2Fu)
            {
              v40 = v39[23];
              if (v40)
              {
                v41 = *(v53 + v40);
                if (v41 == 14 || v41 == 44)
                {
                  goto LABEL_50;
                }
              }
            }

            v42 = *a1;
            v43 = *(v26 + 32);
            v44 = sub_2B51D8(*a1, v43 & 0xFFFFFFFFFFFFLL);
            if (*(v42 + 7772) == 1)
            {
              v45 = sub_30C50C(v42 + 3896, v43, 0);
              v46 = &v45[-*v45];
              if (*v46 < 5u)
              {
                v47 = 0;
              }

              else
              {
                v47 = *(v46 + 2);
                if (v47)
                {
                  v47 += &v45[*&v45[v47]];
                }
              }

              v48 = v47 + ((v43 >> 30) & 0x3FFFC) + 4 + *(v47 + ((v43 >> 30) & 0x3FFFC) + 4);
            }

            else
            {
              v48 = 0;
            }

            v49 = sub_31D7E8(v42, v43 & 0xFFFFFFFFFFFFLL, 1);
            v53 = v44;
            v54 = v48;
            v55 = v49;
            v56 = v50;
            v57 = v43 & 0xFFFFFFFFFFFFFFLL;
            sub_31B8F4(v42, &v53, &__p);
            if (sub_6E3EF8(a1, v61, &__p, a4) != 1)
            {
LABEL_50:
              result = 0;
              v51 = __p;
              if (!__p)
              {
                return result;
              }

              goto LABEL_51;
            }

            ++a3;
          }

          while (v25 != a3);
        }

        result = 1;
        v51 = __p;
        if (__p)
        {
LABEL_51:
          v59 = v51;
          v52 = result;
          operator delete(v51);
          return v52;
        }
      }
    }
  }

  return result;
}

void sub_6DCA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6DCA68(uint64_t a1, uint64_t a2, char **a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a7 + 8) = *a7;
  *(a7 + 24) = 0;
  v8 = a4[1] - *a4;
  if (v8)
  {
    v9 = a6;
    v11 = a4;
    v14 = a1;
    v15 = 0;
    v16 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
    v50 = v16;
    do
    {
      v18 = sub_605E3C(v11, v15);
      v19 = *a3;
      v20 = &(*a3)[-**a3];
      v21 = *v20;
      if (*(a3 + 38))
      {
        if (v21 < 0x9B)
        {
          goto LABEL_34;
        }

        v22 = *(v20 + 77);
        if (!v22 || (*&v19[v22] & 2) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v21 < 0x9B)
        {
          goto LABEL_34;
        }

        v23 = *(v20 + 77);
        if (!v23 || (*&v19[v23] & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v24 = *v18;
      v25 = (*v18 - **v18);
      v26 = *v25;
      if (*(v18 + 38))
      {
        if (v26 < 0x9B)
        {
          goto LABEL_33;
        }

        v27 = v25[77];
        if (!v27)
        {
          goto LABEL_33;
        }

        if ((v24[v27] & 2) == 0 && (*&v24[v27] & 1) == 0 && a5 != v15)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v26 < 0x9B || (v29 = v25[77]) == 0)
        {
LABEL_33:
          if (a5 != v15)
          {
            goto LABEL_5;
          }

          goto LABEL_34;
        }

        if ((v24[v29] & 1) == 0 && (*&v24[v29] & 2) == 0 && a5 != v15)
        {
          goto LABEL_5;
        }
      }

LABEL_34:
      v31 = sub_6D446C(v14, a2, a3, v11, v15, 1, 1, 0);
      if (v31 != 4)
      {
        v32 = v31;
        if (*(v9 + 32) && *v9 && *(v9 + 8))
        {
          v32 = sub_6D446C(v14, a2, v9, v11, v15, 1, 1, 0);
        }

        result = sub_6DCDD8(v14, v32);
        if ((result & 0x10000) == 0)
        {
          *(a7 + 8) = *a7;
          *(a7 + 24) = 0;
          return result;
        }

        v34 = a5 == v15;
        v36 = *(a7 + 8);
        v35 = *(a7 + 16);
        if (v36 < v35)
        {
          *v36 = result;
          *(v36 + 2) = v34;
          v17 = v36 + 4;
        }

        else
        {
          v37 = *a7;
          v38 = v36 - *a7;
          v39 = v38 >> 2;
          v40 = (v38 >> 2) + 1;
          if (v40 >> 62)
          {
            sub_1794();
          }

          v41 = a2;
          v42 = a5;
          v43 = v35 - v37;
          if (v43 >> 1 > v40)
          {
            v40 = v43 >> 1;
          }

          if (v43 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v44 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v44 = v40;
          }

          if (v44)
          {
            if (!(v44 >> 62))
            {
              operator new();
            }

            sub_1808();
          }

          v45 = 4 * v39;
          *v45 = result;
          *(v45 + 2) = v34;
          v17 = 4 * v39 + 4;
          v46 = (v45 - 4 * (v38 >> 2));
          memcpy(v46, v37, v38);
          *a7 = v46;
          *(a7 + 8) = v17;
          *(a7 + 16) = 0;
          if (v37)
          {
            operator delete(v37);
          }

          a5 = v42;
          a2 = v41;
          v11 = a4;
          v9 = a6;
          v14 = a1;
        }

        *(a7 + 8) = v17;
        v16 = v50;
      }

LABEL_5:
      ++v15;
    }

    while (v16 != v15);
  }

  return sub_6D8760(a7, sub_6D88A4, sub_6D88C4);
}

uint64_t sub_6DCDD8(uint64_t a1, int a2)
{
  v2 = 0;
  v3 = 792;
  switch(a2)
  {
    case 0:
    case 3:
    case 5:
    case 12:
    case 89:
    case 90:
      goto LABEL_2;
    case 1:
      v3 = 816;
      goto LABEL_2;
    case 2:
      v3 = 848;
      goto LABEL_2;
    case 20:
      v3 = 800;
      goto LABEL_2;
    case 21:
      v3 = 832;
      goto LABEL_2;
    case 60:
      v3 = 824;
      goto LABEL_2;
    case 61:
      v3 = 856;
      goto LABEL_2;
    case 62:
      v3 = 808;
      goto LABEL_2;
    case 63:
      v3 = 840;
LABEL_2:
      v2 = *(a1 + v3) | 0x10000u;
      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t sub_6DCFD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = (*(a2 + 8) - *a2) >> 3;
    if (v3 < 3)
    {
      return 0;
    }

    if (v2 == 12)
    {
      return v3 - 2;
    }

    if (v2 != 4)
    {
      if (v2 != 3)
      {
        if (v3 <= 0x666666666666666)
        {
          operator new();
        }

        sub_1794();
      }

      return v3 - 2;
    }
  }

  return -1;
}

void sub_6DD34C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    if (!v12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6DD3AC(uint64_t a1, char **a2, int **a3, uint64_t a4, int a5)
{
  if (a5 == 2)
  {
    v20 = *a2;
    v21 = &(*a2)[-**a2];
    v22 = *v21;
    if (v22 < 0x9B || !*(v21 + 77) || (v20[*(v21 + 77) + 3] & 0x80) == 0)
    {
      v23 = (*a3 - **a3);
      if (*v23 >= 0x9Bu)
      {
        v24 = v23[77];
        if (v24)
        {
          if ((*(*a3 + v24 + 3) & 0x80) != 0)
          {
            v41 = 94;
            if (!*(a1 + 1113))
            {
              v41 = 22;
            }

            return v41 | 0x100000000;
          }
        }
      }

      if (v22 < 0x9B)
      {
        goto LABEL_61;
      }
    }

    if (*(v21 + 77))
    {
      if (v20[*(v21 + 77) + 3] < 0)
      {
        v37 = (*a3 - **a3);
        if (*v37 < 0x9Bu || (v38 = v37[77]) == 0 || (*(*a3 + v38 + 3) & 0x80) == 0)
        {
          v39 = 95;
          if (!*(a1 + 1113))
          {
            v39 = 23;
          }

          return v39 | 0x100000000;
        }
      }
    }

    v18 = *(v21 + 77);
    if (v18)
    {
      if ((v20[v18 + 3] & 0x80) == 0)
      {
        goto LABEL_61;
      }

      v25 = (*a3 - **a3);
      if (*v25 < 0x9Bu)
      {
        goto LABEL_61;
      }

      v18 = v25[77];
      if (v18)
      {
        if ((*(*a3 + v18 + 3) & 0x80) != 0)
        {
          goto LABEL_53;
        }

        goto LABEL_61;
      }
    }

    return v18;
  }

  if (a5 != 1)
  {
    if (a5)
    {
      goto LABEL_61;
    }

    v5 = *a2;
    v6 = &(*a2)[-**a2];
    v7 = *v6;
    if (v7 < 0x9B || !*(v6 + 77) || (*&v5[*(v6 + 77)] & 0x80000208) != 8)
    {
      v8 = (*a3 - **a3);
      if (*v8 >= 0x9Bu && (v9 = v8[77]) != 0)
      {
        v10 = (*(*a3 + v9) & 0x80000208) == 8;
        v11 = v10 << 32;
        v12 = 22;
        if (v10)
        {
          return v12 | v11;
        }

        v12 = 0;
        if (v7 < 0x9B)
        {
          return v12 | v11;
        }
      }

      else if (v7 < 0x9B)
      {
        goto LABEL_61;
      }
    }

    if (*(v6 + 77))
    {
      if ((*&v5[*(v6 + 77)] & 0x80000208) == 8)
      {
        v26 = (*a3 - **a3);
        if (*v26 < 0x9Bu)
        {
          return 0x100000017;
        }

        v27 = v26[77];
        if (!v27 || (*(*a3 + v27) & 0x80000208) != 8)
        {
          return 0x100000017;
        }
      }
    }

    if (!*(v6 + 77))
    {
      return *(v6 + 77);
    }

    if ((*&v5[*(v6 + 77)] & 0x80000208) != 8 || (v28 = (*a3 - **a3), *v28 < 0x9Bu))
    {
LABEL_61:
      v11 = 0;
      v12 = 0;
      return v12 | v11;
    }

    v18 = v28[77];
    if (v18)
    {
      if ((*(*a3 + v18) & 0x80000208) == 8)
      {
        goto LABEL_53;
      }

      goto LABEL_61;
    }

    return v18;
  }

  v13 = *a2;
  v14 = &(*a2)[-**a2];
  v15 = *v14;
  if (v15 < 0x9B || !*(v14 + 77) || (v13[*(v14 + 77) + 1] & 2) == 0)
  {
    v16 = (*a3 - **a3);
    if (*v16 >= 0x9Bu)
    {
      v17 = v16[77];
      if (v17)
      {
        if ((*(*a3 + v17 + 1) & 2) != 0)
        {
          v40 = 91;
          if (!*(a1 + 1112))
          {
            v40 = 22;
          }

          return v40 | 0x100000000;
        }
      }
    }

    if (v15 < 0x9B)
    {
      goto LABEL_61;
    }
  }

  if (*(v14 + 77))
  {
    if ((v13[*(v14 + 77) + 1] & 2) != 0)
    {
      v34 = (*a3 - **a3);
      if (*v34 < 0x9Bu || (v35 = v34[77]) == 0 || (*(*a3 + v35 + 1) & 2) == 0)
      {
        v36 = 92;
        if (!*(a1 + 1112))
        {
          v36 = 23;
        }

        return v36 | 0x100000000;
      }
    }
  }

  v18 = *(v14 + 77);
  if (!v18)
  {
    return v18;
  }

  if ((v13[v18 + 1] & 2) == 0)
  {
    goto LABEL_61;
  }

  v19 = (*a3 - **a3);
  if (*v19 < 0x9Bu)
  {
    goto LABEL_61;
  }

  v18 = v19[77];
  if (!v18)
  {
    return v18;
  }

  if ((*(*a3 + v18 + 1) & 2) == 0)
  {
    goto LABEL_61;
  }

LABEL_53:
  v29 = *a4;
  v30 = *(a4 + 8);
  if (*a4 == v30)
  {
    return 0x100000000;
  }

  if (a5)
  {
    if (a5 == 1)
    {
      while (1)
      {
        v31 = (*v29 - **v29);
        if (*v31 < 0x9Bu)
        {
          break;
        }

        v32 = v31[77];
        if (!v32 || (*(*v29 + v32 + 1) & 2) == 0)
        {
          break;
        }

        v29 += 5;
        if (v29 == v30)
        {
          return 0x100000000;
        }
      }
    }

    else
    {
      while (1)
      {
        v43 = (*v29 - **v29);
        if (*v43 < 0x9Bu)
        {
          break;
        }

        v42 = v43[77];
        if (!v42 || (*(*v29 + v42 + 3) & 0x80) == 0)
        {
          break;
        }

        v29 += 5;
        if (v29 == v30)
        {
          return 0x100000000;
        }
      }
    }
  }

  else
  {
    while (1)
    {
      v47 = (*v29 - **v29);
      if (*v47 < 0x9Bu)
      {
        break;
      }

      v48 = v47[77];
      if (!v48 || (*(*v29 + v48) & 0x80000208) != 8)
      {
        break;
      }

      v29 += 5;
      if (v29 == v30)
      {
        return 0x100000000;
      }
    }
  }

  if (sub_31EE90(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL, a3[4] & 0xFFFFFFFFFFFFFFLL))
  {
    return 0x100000000;
  }

  if (!a5)
  {
    return 0x100000018;
  }

  if (a5 == 2)
  {
    v49 = 96;
    if (!*(a1 + 1113))
    {
      v49 = 24;
    }

    return v49 | 0x100000000;
  }

  else
  {
    v46 = 93;
    if (!*(a1 + 1112))
    {
      v46 = 24;
    }

    return v46 | 0x100000000;
  }
}

uint64_t sub_6DD944(uint64_t a1, int **a2, uint64_t *a3, uint64_t a4, double a5)
{
  if (*(a1 + 708) != 1)
  {
    return 0;
  }

  v9 = sub_70E7C4(a1 + 1432, a2, a3, -1, a5);
  if (v9 != -1 && v9 == a4)
  {
    return 0;
  }

  result = sub_31EE90(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL, *(*a3 + 40 * a4 + 32) & 0xFFFFFFFFFFFFFFLL);
  if (result)
  {
    v11 = (*a2 - **a2);
    if (*v11 < 0x2Fu)
    {
      return 0;
    }

    v12 = v11[23];
    if (!v12)
    {
      return 0;
    }

    v13 = *(*a2 + v12);
    v14 = v13 > 0x2B;
    v15 = (1 << v13) & 0x80000001040;
    if (v14 || v15 == 0)
    {
      return 0;
    }

    v17 = *a3;
    v18 = a3[1];
    if (*a3 != v18)
    {
      result = 1;
      while (1)
      {
        v19 = (*v17 - **v17);
        if (*v19 < 0x2Fu)
        {
          break;
        }

        v20 = v19[23];
        if (!v20)
        {
          break;
        }

        v21 = *(*v17 + v20);
        v14 = v21 > 0x2B;
        v22 = (1 << v21) & 0x80000001040;
        if (v14 || v22 == 0)
        {
          break;
        }

        v17 += 5;
        if (v17 == v18)
        {
          return result;
        }
      }

      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_6DDAC0(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (sub_6DEE8C(a1, a3, a4) > 1)
  {
    return 1;
  }

  if (*(a1 + 1114) != 1 || a5 != -1 && a5 != a6)
  {
    return 0;
  }

  v13 = sub_605E3C(a4, a6);
  v14 = *v13;
  v15 = *(v13 + 16);
  v53 = *(v13 + 32);
  v52[0] = v14;
  v52[1] = v15;
  v16 = *a3;
  v17 = (*a3 - **a3);
  v18 = *v17;
  if (v18 >= 0x2F && v17[23])
  {
    v19 = *(v16 + v17[23]);
    if (v19 <= 0x2A)
    {
      if (v19 != 6 && v19 != 12)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (v19 == 44)
    {
      return 0;
    }

    if (v19 == 43)
    {
LABEL_17:
      if (v18 >= 0x9B)
      {
        v21 = v17[77];
        if (v21)
        {
          if ((*(v16 + v21 + 2) & 0x20) != 0)
          {
            goto LABEL_20;
          }
        }
      }

      return 0;
    }
  }

LABEL_20:
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v22 = *(a4 + 8) - *a4;
  if (v22)
  {
    if (0xCCCCCCCCCCCCCCCDLL * (v22 >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v23 = sub_708D84(0, 0, a1);
  v25 = v49;
  v24 = v50;
  if (v23 != v50)
  {
    v24 = v23;
    v50 = v23;
  }

  if (0xCCCCCCCCCCCCCCCDLL * (v24 - v49) < 2)
  {
    return 0;
  }

  v27 = v49;
  if (v49 != v24)
  {
    v27 = v49;
    while (__PAIR64__(*(v27 + 18), *(v27 + 8)) != __PAIR64__(WORD2(v53), v53) || *(v27 + 38) != BYTE6(v53))
    {
      v27 += 5;
      if (v27 == v24)
      {
        return 0;
      }
    }
  }

  if (v27 == v24)
  {
    return 0;
  }

  v28 = v49[4];
  if (v53 == v28 && WORD2(v53) == WORD2(v28) && BYTE6(v53) == BYTE6(v28))
  {
    v25 = sub_6B8D68(&v49, 1uLL);
  }

  v29 = *v25;
  v30 = *(v25 + 16);
  v48 = *(v25 + 32);
  v47[0] = v29;
  v47[1] = v30;
  v31 = *a3;
  v32 = (*a3 - **a3);
  v33 = *v32;
  if (*(a3 + 38))
  {
    if (v33 < 0x47)
    {
      goto LABEL_50;
    }

    v34 = v32[35];
    if (!v34)
    {
      goto LABEL_50;
    }

    v35 = *(v31 + v34);
    if ((v35 & 0x141510) == 0)
    {
      v36 = 64;
      goto LABEL_47;
    }
  }

  else
  {
    if (v33 < 0x47)
    {
      goto LABEL_50;
    }

    v37 = v32[35];
    if (!v37)
    {
      goto LABEL_50;
    }

    v35 = *(v31 + v37);
    if ((v35 & 0xA0A88) == 0)
    {
      v36 = 32;
LABEL_47:
      if ((v35 & v36) == 0)
      {
        goto LABEL_50;
      }
    }
  }

  if (sub_3139A0(v52) && !sub_3139A0(v47))
  {
    goto LABEL_61;
  }

LABEL_50:
  v38 = (*&v47[0] - **&v47[0]);
  if (*v38 >= 0x9Bu && (v39 = v38[77]) != 0 && (*(*&v47[0] + v39 + 2) & 2) != 0 || (sub_30F868(a1 + 7264, v47) & 1) != 0 || (sub_30F6FC(a1 + 7264, v47) & 1) != 0 || (v41 = (*&v47[0] - **&v47[0]), *v41 >= 0x2Fu) && (v42 = v41[23]) != 0 && (v43 = *(*&v47[0] + v42) - 15, v43 < 0x21) && ((0x1C5C08009uLL >> v43) & 1) != 0 || (v44 = sub_70E484(a1 + 1432, a2, a3, v52, 1, v40), v45 = sub_6DEB50(a1, a2, a3, v52, v47, v44), fabs(v44) < *(a1 + 184)) || fabs(v45) > *(a1 + 400))
  {
LABEL_61:
    result = 0;
    v46 = v49;
    if (!v49)
    {
      return result;
    }

LABEL_27:
    v50 = v46;
    v26 = result;
    operator delete(v46);
    return v26;
  }

  result = 1;
  v46 = v49;
  if (v49)
  {
    goto LABEL_27;
  }

  return result;
}

void sub_6DDF18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6DDF50(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0xFF000000000000;
  v3 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v4 = (v3 - *v3);
  v5 = *v4;
  if (!v2)
  {
    if (v5 < 0x27)
    {
      return 0;
    }

    v6 = v4[19];
    if (!v6)
    {
      return 0;
    }

    return *(v3 + v6 + *(v3 + v6));
  }

  if (v5 >= 0x29)
  {
    v6 = v4[20];
    if (v6)
    {
      return *(v3 + v6 + *(v3 + v6));
    }
  }

  return 0;
}

uint64_t sub_6DDFC8(uint64_t a1, int **a2, uint64_t *a3, unint64_t a4)
{
  v8 = sub_605E3C(a3, a4);
  v10 = (*v8 - **v8);
  if (*v10 < 0x2Fu)
  {
    return 0;
  }

  v11 = v10[23];
  if (!v11)
  {
    return 0;
  }

  v12 = *(*v8 + v11);
  v13 = v12 > 0x2A;
  v14 = (1 << v12) & 0x50426810004;
  if (v13 || v14 == 0)
  {
    return 0;
  }

  v16 = sub_70E7C4(a1 + 1432, a2, a3, -1, v9);
  result = 0;
  if (v16 != -1 && v16 != a4)
  {
    operator new();
  }

  return result;
}

void sub_6DEA70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    operator delete(a35);
    v38 = *(v36 - 128);
    if (!v38)
    {
LABEL_5:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v38 = *(v36 - 128);
    if (!v38)
    {
      goto LABEL_5;
    }
  }

  *(v36 - 120) = v38;
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

double sub_6DEBC0(uint64_t a1, uint64_t a2, int **a3, int **a4, int **a5)
{
  if (sub_71A0D0(a1 + 1432, a3, a4, a5))
  {
    return *(a1 + 416);
  }

  v12 = fabs(sub_70E484(a1 + 1432, a2, a3, a5, 0, v10));
  if (v12 < *(a1 + 408))
  {
    return *(a1 + 400);
  }

  LODWORD(v12) = *(a1 + 736);
  if (sub_4346FC(*a1, a3, a5, *(a1 + 1136), *(a1 + 1128), *&v12, *(a1 + 1120)))
  {
    return *(a1 + 392);
  }

  LODWORD(v13) = *(a1 + 736);
  v14 = sub_4346FC(*a1, a3, a4, *(a1 + 1136), *(a1 + 1128), v13, *(a1 + 1120));
  v15 = 400;
  if (v14)
  {
    v15 = 392;
  }

  return *(a1 + v15);
}

unint64_t sub_6DECF4(uint64_t a1, void *a2)
{
  v2 = (*a2 - **a2);
  if (*v2 >= 0x2Fu && (v3 = v2[23]) != 0 && (v4 = *(*a2 + v3), v4 <= 0x2C))
  {
    return (0x7FFFFFFAFBFuLL >> v4) & 1;
  }

  else
  {
    return 1;
  }
}

BOOL sub_6DED40(uint64_t a1, void *a2, void *a3)
{
  v3 = (*a2 - **a2);
  if (*v3 >= 0x2Fu && (v4 = v3[23]) != 0 && !*(*a2 + v4) && (v5 = (*a3 - **a3), *v5 >= 0x2Fu) && (v6 = v5[23]) != 0)
  {
    return *(*a3 + v6) == 38;
  }

  else
  {
    return 0;
  }
}

BOOL sub_6DEDA0(uint64_t a1, int **a2, void *a3, int **a4)
{
  v4 = *a2;
  v5 = (*a2 - **a2);
  v6 = *v5;
  if (v6 < 0x2F)
  {
    return 0;
  }

  if (!v5[23])
  {
    return 0;
  }

  if (*(v4 + v5[23]))
  {
    return 0;
  }

  v7 = (*a3 - **a3);
  if (*v7 < 0x2Fu)
  {
    return 0;
  }

  v8 = v7[23];
  if (!v8)
  {
    return 0;
  }

  if (*(*a3 + v8))
  {
    return 0;
  }

  v9 = (*a4 - **a4);
  if (*v9 < 0x2Fu)
  {
    return 0;
  }

  v10 = v9[23];
  if (!v10 || *(*a4 + v10) != 26)
  {
    return 0;
  }

  if (v5[10])
  {
    if (*(v4 + v5[10]) == 1)
    {
      return 0;
    }

    if (*(v4 + v5[10]))
    {
      return sub_312B7C(a2, a4[4] & 0xFFFFFFFFFFFFFFLL) == 1;
    }
  }

  if (v6 >= 0x9B)
  {
    v11 = v5[77];
    if (v11)
    {
      if ((~*(v4 + v11) & 3) == 0)
      {
        return sub_312B7C(a2, a4[4] & 0xFFFFFFFFFFFFFFLL) == 1;
      }
    }
  }

  return 0;
}

uint64_t sub_6DEE8C(uint64_t a1, int **a2, int ***a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    v7 = 0;
    while (1)
    {
      while (1)
      {
        v8 = *a2;
        v9 = (*a2 - **a2);
        v10 = *v9;
        if (v10 >= 0x2F)
        {
          if (v9[23])
          {
            break;
          }
        }

        v14 = 0;
        v15 = *v3;
        v16 = (*v3 - **v3);
        v17 = *v16;
        if (v17 < 0x2F)
        {
          goto LABEL_27;
        }

LABEL_16:
        if (!v16[23])
        {
          goto LABEL_27;
        }

        v18 = *(v15 + v16[23]);
        v19 = v18 > 0x2B || ((1 << v18) & 0x80000001040) == 0;
        if (v19 || v17 >= 0x9B && (v20 = v16[77]) != 0 && (*(v15 + v20 + 2) & 0x20) != 0)
        {
          if ((v14 ^ (v18 == 44)))
          {
            goto LABEL_28;
          }
        }

        else if (!v14)
        {
          goto LABEL_28;
        }

LABEL_3:
        v7 += fabs(sub_70E2E0(a1 + 1432, a2, v3)) < *(a1 + 200);
        v3 += 5;
        if (v3 == v4)
        {
          return v7;
        }
      }

      v11 = *(v8 + v9[23]);
      if (v11 <= 0x2B && ((1 << v11) & 0x80000001040) != 0 && (v10 < 0x9B || (v13 = v9[77]) == 0 || (*(v8 + v13 + 2) & 0x20) == 0))
      {
        v14 = 1;
        v15 = *v3;
        v16 = (*v3 - **v3);
        v17 = *v16;
        if (v17 < 0x2F)
        {
          goto LABEL_27;
        }

        goto LABEL_16;
      }

      v14 = v11 == 44;
      v15 = *v3;
      v16 = (*v3 - **v3);
      v17 = *v16;
      if (v17 >= 0x2F)
      {
        goto LABEL_16;
      }

LABEL_27:
      if (!v14)
      {
        goto LABEL_3;
      }

LABEL_28:
      v3 += 5;
      if (v3 == v4)
      {
        return v7;
      }
    }
  }

  return 0;
}

uint64_t sub_6DF044(uint64_t a1, void *a2, unint64_t a3, int **a4)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  __p = 0;
  v40 = 0;
  v41 = 0;
  v7 = (*a4 - **a4);
  if (*v7 >= 9u && (v8 = v7[4]) != 0)
  {
    v9 = *(*a4 + v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4 + 1);
  v36 = *a4;
  v37 = v10;
  v38 = a4[4];
  if (v9 < *(a1 + 448))
  {
    while (1)
    {
      sub_740664((a1 + 7480), &v36, &v42);
      if (v42 == v43 || fabs(sub_710C1C(a1 + 1432, a2, &v36, v42)) > *(a1 + 200))
      {
        break;
      }

      v11 = *(v42 + 4);
      v12 = *(v42 + 1);
      v36 = *v42;
      v37 = v12;
      v38 = v11;
      v13 = v40;
      if (v40 >= v41)
      {
        v15 = __p;
        v16 = v40 - __p;
        v17 = (v40 - __p) >> 3;
        v18 = v17 + 1;
        if ((v17 + 1) >> 61)
        {
          sub_1794();
        }

        v19 = v41 - __p;
        if ((v41 - __p) >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          if (!(v20 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v21 = (8 * v17);
        v22 = v11 & 0xFFFFFFFFFFFFFFLL;
        v23 = &v21[-((v40 - __p) >> 3)];
        *v21 = v22;
        v14 = v21 + 1;
        memcpy(v23, v15, v16);
        __p = v23;
        v41 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v40 = v11 & 0xFFFFFFFFFFFFFFLL;
        v14 = v13 + 1;
      }

      v40 = v14;
      v24 = (v36 - *v36);
      if (*v24 >= 9u && (v25 = v24[4]) != 0)
      {
        v9 += *(v36 + v25);
        if (v9 >= *(a1 + 448))
        {
          break;
        }
      }

      else if (v9 >= *(a1 + 448))
      {
        break;
      }
    }
  }

  sub_3120CC(&__p);
  for (i = sub_4D23F8(a2, a3, v26); i < *(a1 + 448); i += sub_4D23F8(a2, a3, v30))
  {
    if (a3 >= sub_4D1DC0(a2) - 1)
    {
      break;
    }

    v28 = sub_4D1F50(a2, a3++);
    v29 = sub_4D1F50(a2, a3);
    v30 = fabs(sub_70E2E0(a1 + 1432, v28, v29));
    if (v30 > *(a1 + 200))
    {
      break;
    }

    v31 = __p;
    if (__p != v40)
    {
      v32 = *(v29 + 32);
      while (__PAIR64__(*(v31 + 2), *v31) != __PAIR64__(WORD2(v32), v32) || *(v31 + 6) != BYTE6(v32))
      {
        if (++v31 == v40)
        {
          goto LABEL_35;
        }
      }
    }

    if (v31 != v40)
    {
      v33 = 1;
      v34 = __p;
      if (__p)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

LABEL_35:
    ;
  }

  v33 = 0;
  v34 = __p;
  if (__p)
  {
LABEL_37:
    v40 = v34;
    operator delete(v34);
  }

LABEL_38:
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v33;
}

void sub_6DF388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
    v20 = a18;
    if (!a18)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v20 = a18;
    if (!a18)
    {
      goto LABEL_3;
    }
  }

  operator delete(v20);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6DF3E4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1794();
    }

    v10 = v3 - v6;
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

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
  return v5 - 8;
}

uint64_t sub_6DF4EC(uint64_t a1, int **a2, int **a3, char a4)
{
  v8 = sub_3116D0(a2);
  if (v8 == sub_311544(a3))
  {
    return 0;
  }

  *&v28[0] = sub_3116D0(a2);
  if (sub_420B0C((a1 + 8), v28))
  {
    return 0;
  }

  v30 = sub_311544(a3);
  if (sub_420B0C((a1 + 8), &v30))
  {
    return 0;
  }

  v9 = sub_31ACAC(*a1, a2, a3);
  v10 = *a1;
  v29 = a2[4];
  v11 = *(a2 + 1);
  v28[0] = *a2;
  v28[1] = v11;
  BYTE6(v29) = BYTE6(v29) == 0;
  v12 = sub_31ACAC(v10, a3, v28);
  if (v12 < v9)
  {
    v9 = v12;
  }

  if (((a4 & 1) != 0 || (v13 = (*a2 - **a2), *v13 >= 0x2Fu) && (v14 = v13[23]) != 0 && ((v15 = *(*a2 + v14), v16 = v15 > 0x2A, v17 = (1 << v15) & 0x50426810004, !v16) ? (v18 = v17 == 0) : (v18 = 1), !v18 && ((v19 = sub_31DDCC(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL), v19 > 0xFFFFFFFEFFFFFFFFLL) || !v19)) || (v20 = (*a3 - **a3), *v20 >= 0x2Fu) && (v21 = v20[23]) != 0 && ((v22 = *(*a3 + v21), v16 = v22 > 0x2A, v23 = (1 << v22) & 0x50426810004, !v16) ? (v24 = v23 == 0) : (v24 = 1), !v24 && ((v25 = sub_31DDCC(*a1, a3[4] & 0xFFFFFFFFFFFFFFLL), v25 > 0xFFFFFFFEFFFFFFFFLL) || !v25)) || fabs(sub_70DE94(a1 + 1432, a2, a3)) <= *(a1 + 1048) || v9 <= *(a1 + 1032) / 100.0) && ((v26 = sub_70E2E0(a1 + 1432, a2, a3), v9 <= *(a1 + 1040) / 100.0) || fabs(v26) >= *(a1 + 1048)))
  {
    return 0;
  }

  else
  {
    return 1;
  }
}

double sub_6DF738(int **a1, int **a2)
{
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 < 0x49)
    {
      goto LABEL_11;
    }

    v4 = v2[36];
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else if (v3 < 0x4B || (v4 = v2[37]) == 0)
  {
LABEL_11:
    v5 = -1;
    v6 = *a2;
    v7 = (*a2 - **a2);
    v8 = *v7;
    if (*(a2 + 38))
    {
      goto LABEL_12;
    }

LABEL_8:
    if (v8 >= 0x49)
    {
      v9 = v7[36];
      if (v9)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

  v5 = *(*a1 + v4);
  v6 = *a2;
  v7 = (*a2 - **a2);
  v8 = *v7;
  if (!*(a2 + 38))
  {
    goto LABEL_8;
  }

LABEL_12:
  if (v8 >= 0x4B)
  {
    v9 = v7[37];
    if (v9)
    {
LABEL_14:
      v10 = *&v6[v9];
      goto LABEL_16;
    }
  }

LABEL_15:
  v10 = 0xFFFF;
LABEL_16:
  v11 = v5 + 18000;
  v12 = v5 - 18000;
  if ((v11 >> 5) < 0x465u)
  {
    v12 = v11;
  }

  v13 = v10 - v12;
  if (v13 > 18000)
  {
    v13 -= 36000;
  }

  if (v13 < -17999)
  {
    v13 += 36000;
  }

  return v13 / 100.0;
}

void sub_6DF834(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  sub_605E3C(a3, a4);
  v19 = 0u;
  v20 = 0u;
  v21 = 0x1000000000000;
  v16 = 0u;
  v17 = 0u;
  v18 = 0x1000000000000;
  v13 = 0u;
  v14 = 0u;
  v15 = 0x1000000000000;
  v10 = 0u;
  v11 = 0u;
  v12 = 0x1000000000000;
  v7 = 0u;
  v8 = 0u;
  v9 = 0x1000000000000;
  v4 = 0;
  __dst = 0;
  v6 = 0;
  operator new();
}

void sub_6E0034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45)
{
  if (__p)
  {
    operator delete(__p);
    v46 = a38;
    if (!a38)
    {
LABEL_3:
      v47 = a41;
      if (!a41)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v46 = a38;
    if (!a38)
    {
      goto LABEL_3;
    }
  }

  operator delete(v46);
  v47 = a41;
  if (!a41)
  {
LABEL_4:
    v48 = a44;
    if (!a44)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v47);
  v48 = a44;
  if (!a44)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v48);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6E0128(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = *a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      sub_1794();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v13 = 8 * ((v3 - *a1) >> 3);
    v14 = a2[1];
    *v13 = *a2;
    *(v13 + 16) = v14;
    *(v13 + 32) = *(a2 + 4);
    v7 = 40 * v9 + 40;
    v15 = 40 * v9 - (v3 - v8);
    memcpy((v13 - (v3 - v8)), v8, v3 - v8);
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
  }

  *(a1 + 8) = v7;
  return v7 - 40;
}

void *sub_6E0264(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_6E032C(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) - 1;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) - 1;
  }

  if (v4 < 2)
  {
    v6 = 0;
    v7 = -1;
    if (a1[64] != 0x7FFFFFFFFFFFFFFFLL && a1[64] != 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_37;
    }

    return v7;
  }

  v6 = 0;
  v7 = -1;
  v10 = 1;
  v11 = 1.79769313e308;
  do
  {
    v29 = -1;
    v30 = 0x7FFFFFFF;
    v14 = sub_605E3C(a2, v10);
    sub_2B7A20(*a1, *(v14 + 32) & 0xFFFFFFFFFFFFFFLL, &v25);
    v15 = sub_31BF20(&v25, __p).n128_u64[0];
    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }

    sub_6D5084(__p, a3, 0, 0, &v25, v15);
    v16 = v25;
    v29 = v26;
    v30 = v27;
    if (v25 < v11)
    {
      sub_47190(&v29, __p);
      sub_605E3C(a2, v10);
      v7 = v10;
      v11 = v16;
    }

    v17 = sub_605E3C(a2, v10);
    v18 = (*v17 - **v17);
    if (*v18 < 9u || (v19 = v18[4]) == 0)
    {
      v12 = 0;
      v13 = __p[0];
      if (!__p[0])
      {
        goto LABEL_11;
      }

LABEL_10:
      __p[1] = v13;
      operator delete(v13);
      goto LABEL_11;
    }

    v12 = *(*v17 + v19);
    v13 = __p[0];
    if (__p[0])
    {
      goto LABEL_10;
    }

LABEL_11:
    v6 += v12;
    ++v10;
  }

  while (v5 != v10);
  v20 = v11 * 100.0;
  if (v11 * 100.0 >= 0.0)
  {
    v21 = v11 * 100.0;
    if (v20 < 4.50359963e15)
    {
      v22 = (v20 + v20) + 1;
LABEL_25:
      v21 = (v22 >> 1);
    }
  }

  else
  {
    v21 = v11 * 100.0;
    if (v20 > -4.50359963e15)
    {
      v22 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
      goto LABEL_25;
    }
  }

  if (v21 >= 9.22337204e18)
  {
    if (a1[64] != 0x7FFFFFFFFFFFFFFFLL && a1[64] != 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (v20 >= 0.0)
    {
      if (v20 < 4.50359963e15)
      {
        v23 = (v20 + v20) + 1;
LABEL_35:
        v20 = (v23 >> 1);
      }
    }

    else if (v20 > -4.50359963e15)
    {
      v23 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
      goto LABEL_35;
    }

    if (v20 > a1[64])
    {
LABEL_37:
      if (v6 > a1[65])
      {
        return -1;
      }
    }
  }

  return v7;
}

void sub_6E0680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_6E06BC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v8;
  *(a1 + 16) = v9;
  v10 = *a3;
  v11 = a3[1];
  *(a1 + 72) = *(a3 + 4);
  *(a1 + 56) = v11;
  *(a1 + 40) = v10;
  result = (a1 + 80);
  if (result != a5)
  {
    result = sub_4D7AD4(result, *a5, *(a5 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a5 + 8) - *a5) >> 3));
  }

  *(a1 + 104) = -1;
  v13 = *(a5 + 8);
  if (*a5 == v13)
  {
    v14 = *a5;
  }

  else
  {
    v14 = *a5;
    while ((*(v14 + 4) & 0xFFFFFFFFFFFFFFLL) != (*(a4 + 32) & 0xFFFFFFFFFFFFFFLL))
    {
      v14 += 40;
      if (v14 == v13)
      {
        goto LABEL_7;
      }
    }
  }

  if (v14 == v13)
  {
LABEL_7:
    *(a1 + 112) = 3;
  }

  else
  {
    *(a1 + 104) = 0xCCCCCCCCCCCCCCCDLL * (&v14[-*a5] >> 3);
    *(a1 + 112) = 3;
  }

  return result;
}

void sub_6E07B8(uint64_t a1, int **a2, void *a3)
{
  a3[1] = *a3;
  v6 = (*a2 - **a2);
  if (*v6 < 0x9Bu || (v7 = v6[77]) == 0 || (*(*a2 + v7) & 4) == 0)
  {
    __p = 0;
    v38 = 0;
    v39 = 0;
    sub_31B8F4(*a1, a2, &__p);
    v8 = sub_709188(__p, v38);
    v10 = __p;
    v9 = v38;
    if (v8 != v38)
    {
      v9 = v8;
      v38 = v8;
    }

    if (v9 - __p != 80)
    {
      goto LABEL_60;
    }

    v11 = *__p;
    v12 = (*__p - **__p);
    if (*v12 < 0x9Bu)
    {
      goto LABEL_60;
    }

    if (!v12[77])
    {
      goto LABEL_60;
    }

    if ((*(v11 + v12[77]) & 1) == ((*(v11 + v12[77]) >> 1) & 1))
    {
      goto LABEL_60;
    }

    v13 = v9 - 5;
    v14 = *(v9 - 5);
    v15 = (v14 - *v14);
    if (*v15 < 0x9Bu)
    {
      goto LABEL_60;
    }

    if (!v15[77])
    {
      goto LABEL_60;
    }

    v16 = *(v14 + v15[77]);
    if (((v16 ^ (v16 >> 1) & 1) & 1) == 0)
    {
      goto LABEL_60;
    }

    v17 = *a2;
    v18 = (*a2 - **a2);
    v19 = *v18;
    if (*(a2 + 38))
    {
      if (v19 < 0x49 || (v20 = v18[36]) == 0)
      {
LABEL_20:
        v21 = -1;
LABEL_21:
        if (*(__p + 38))
        {
          v22 = v12[37];
          if (v22)
          {
LABEL_23:
            v23 = *(v11 + v22);
            goto LABEL_26;
          }
        }

        else
        {
          v22 = v12[36];
          if (v22)
          {
            goto LABEL_23;
          }
        }

        v23 = 0xFFFF;
LABEL_26:
        v24 = v21 + 18000;
        v25 = v21 - 18000;
        if ((v24 >> 5) < 0x465u)
        {
          v25 = v24;
        }

        v26 = v23 - v25;
        if (v26 > 18000)
        {
          v26 -= 36000;
        }

        if (v26 < -17999)
        {
          v26 += 36000;
        }

        v27 = v26 / 100.0;
        v28 = fabs(v27);
        LOWORD(v27) = *(a1 + 504);
        v29 = vmovl_s16(*&v27).i32[0];
        if (v28 > v29)
        {
          goto LABEL_60;
        }

        if (*(a2 + 38))
        {
          if (v19 < 0x49 || (v30 = v18[36]) == 0)
          {
LABEL_40:
            v31 = -1;
LABEL_41:
            if (*(v9 - 2))
            {
              v32 = v15[37];
              if (v15[37])
              {
LABEL_43:
                v33 = *(v14 + v32);
                goto LABEL_46;
              }
            }

            else
            {
              v32 = v15[36];
              if (v15[36])
              {
                goto LABEL_43;
              }
            }

            v33 = 0xFFFF;
LABEL_46:
            v34 = v31 + 18000;
            v35 = v31 - 18000;
            if ((v34 >> 5) >= 0x465u)
            {
              v34 = v35;
            }

            v36 = v33 - v34;
            if (v36 > 18000)
            {
              v36 -= 36000;
            }

            if (v36 < -17999)
            {
              v36 += 36000;
            }

            if (fabs(v36 / 100.0) > v29)
            {
              goto LABEL_60;
            }

            if (sub_312DF0(__p) && sub_312E54(v13))
            {
              sub_6E0128(a3, v10);
            }

            else
            {
              if (!sub_312E54(v10) || !sub_312DF0(v13))
              {
                goto LABEL_60;
              }

              sub_6E0128(a3, v13);
              v13 = v10;
            }

            sub_6E0128(a3, v13);
LABEL_60:
            if (__p)
            {
              v38 = __p;
              operator delete(__p);
            }

            return;
          }
        }

        else
        {
          if (v19 < 0x4B)
          {
            goto LABEL_40;
          }

          v30 = v18[37];
          if (!v30)
          {
            goto LABEL_40;
          }
        }

        v31 = *&v17[v30];
        goto LABEL_41;
      }
    }

    else
    {
      if (v19 < 0x4B)
      {
        goto LABEL_20;
      }

      v20 = v18[37];
      if (!v18[37])
      {
        goto LABEL_20;
      }
    }

    v21 = *&v17[v20];
    goto LABEL_21;
  }
}

void sub_6E0AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6E0B18(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v7 = *a4;
  a4[1] = *a4;
  v8 = a4[2];
  if (v7 >= v8)
  {
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= 1)
    {
      v12 = 1;
    }

    if (v11 >= 0x333333333333333)
    {
      v13 = 0x666666666666666;
    }

    else
    {
      v13 = v12;
    }

    if (v13 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v9 = *a2;
  v10 = *(a2 + 16);
  *(v7 + 32) = *(a2 + 32);
  *v7 = v9;
  *(v7 + 16) = v10;
  v14 = 0;
  a4[1] = v7 + 40;
  v15 = *(a2 + 16);
  v33 = *a2;
  v34 = v15;
  v35 = *(a2 + 32);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  while (1)
  {
    v16 = v30;
    if (0xCCCCCCCCCCCCCCCDLL * (v31 - v30) > 1)
    {
      break;
    }

    v17 = (v33 - *v33);
    v18 = *v17;
    if (v18 < 9)
    {
      v19 = 0;
    }

    else
    {
      v19 = v17[4];
      if (v17[4])
      {
        v19 = *(v33 + v19);
      }
    }

    v14 += v19;
    if (v14 > *a3 || v18 <= 0x2E)
    {
      goto LABEL_31;
    }

    v20 = v17[23];
    if ((!v17[23] || *(v33 + v20) != 23) && (v18 < 0x9B || (v21 = v17[77]) == 0 || (*(v33 + v21) & 4) == 0))
    {
      if (!v20)
      {
        goto LABEL_31;
      }

      v22 = *(v33 + v20);
      v23 = v22 > 0x2A;
      v24 = (1 << v22) & 0x50426810004;
      if (v23 || v24 == 0)
      {
        goto LABEL_31;
      }
    }

    sub_740664((a1 + 7480), &v33, &v30);
    v26 = sub_709188(v30, v31);
    v16 = v30;
    v27 = v31;
    if (v26 != v31)
    {
      v27 = v26;
      v31 = v26;
    }

    if (v30 == v27)
    {
LABEL_31:
      a4[1] = *a4;
      break;
    }

    v28 = *v30;
    v29 = *(v30 + 1);
    v35 = v30[4];
    v33 = v28;
    v34 = v29;
    sub_69B1E0(a4, &v33);
  }

  if (v16)
  {
    v31 = v16;
    operator delete(v16);
  }
}

void sub_6E0DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6E0DCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = 0;
  a5[1] = *a5;
  __p = 0;
  v29 = 0;
  v30 = 0;
  v10 = *(a2 + 16);
  v25 = *a2;
  v26 = v10;
  v27 = *(a2 + 32);
  while (v9 < *a4)
  {
    v11 = (v25 - *v25);
    if (*v11 >= 0x2Fu)
    {
      v12 = v11[23];
      if (v12)
      {
        v13 = *(v25 + v12);
        v14 = v13 > 0x36;
        v15 = (1 << v13) & 0x44000000000008;
        if (!v14 && v15 != 0)
        {
          break;
        }
      }
    }

    sub_740664((a1 + 7480), &v25, &__p);
    if (__p == v29)
    {
      break;
    }

    v18 = *__p;
    v17 = *(__p + 1);
    v27 = *(__p + 4);
    v25 = v18;
    v26 = v17;
    v19 = (v18 - *v18);
    if (*v19 >= 9u && (v20 = v19[4]) != 0)
    {
      v21 = *(v18 + v20);
      v22 = HIDWORD(v27);
      v23 = *(a3 + 32);
      if (v27 != v23)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v21 = 0;
      v22 = HIDWORD(v27);
      v23 = *(a3 + 32);
      if (v27 != v23)
      {
        goto LABEL_3;
      }
    }

    if ((v22 & 0xFFFFFF) == (HIDWORD(v23) & 0xFFFFFF))
    {
      v24 = __p;
      if (!__p)
      {
        return;
      }

      goto LABEL_20;
    }

LABEL_3:
    v9 += v21;
    sub_69B1E0(a5, &v25);
  }

  a5[1] = *a5;
  v24 = __p;
  if (__p)
  {
LABEL_20:
    v29 = v24;
    operator delete(v24);
  }
}

void sub_6E0F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6E0F70(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = sub_4D1F50(a2, a3);
  v7 = a3 + 1;
  v8 = sub_4D1F50(a2, v7);
  v9 = (*v6 - **v6);
  if (*v9 >= 0x2Fu && (v10 = v9[23]) != 0 && (v11 = *(*v6 + v10) - 2, v11 < 0x29) && ((0x14109A04001uLL >> v11) & 1) != 0 || (v12 = (*v8 - **v8), *v12 < 0x2Fu) || (v13 = v12[23]) == 0 || ((v14 = *(*v8 + v13), v15 = v14 > 0x2A, v16 = (1 << v14) & 0x50426810004, !v15) ? (v17 = v16 == 0) : (v17 = 1), v17))
  {
    v20 = 0;
  }

  else
  {
    __p = 0;
    v43 = 0;
    v44 = 0;
    v18 = sub_4D1DC0(a2);
    if (v7 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v7;
    }

    if (v7 >= v18)
    {
LABEL_38:
      v20 = 0;
    }

    else
    {
      v20 = 1;
      while (1)
      {
        v22 = sub_4D1F50(a2, v7);
        v23 = *a1;
        v24 = *(v22 + 32);
        v25 = sub_2B51D8(*a1, v24 & 0xFFFFFFFFFFFFLL);
        if (*(v23 + 7772) == 1)
        {
          v26 = sub_30C50C(v23 + 3896, v24, 0);
          v27 = &v26[-*v26];
          if (*v27 < 5u)
          {
            v28 = 0;
          }

          else
          {
            v28 = *(v27 + 2);
            if (v28)
            {
              v28 += &v26[*&v26[v28]];
            }
          }

          v29 = (v28 + ((v24 >> 30) & 0x3FFFC) + 4 + *(v28 + ((v24 >> 30) & 0x3FFFC) + 4));
        }

        else
        {
          v29 = 0;
        }

        v30 = sub_31D7E8(v23, v24 & 0xFFFFFFFFFFFFLL, 1);
        v41[0] = v25;
        v41[1] = v29;
        v41[2] = v30;
        v41[3] = v31;
        v41[4] = (v24 & 0xFFFFFFFFFFFFFFLL);
        sub_31B8F4(*a1, v41, &__p);
        v33 = (v41[0] - *v41[0]);
        if (*v33 < 0x2Fu)
        {
          break;
        }

        v34 = v33[23];
        if (!v34)
        {
          break;
        }

        v35 = *(v41[0] + v34);
        if (v35 > 0x2A || ((1 << v35) & 0x50426810004) == 0)
        {
          v20 |= v35 == 0;
          v40 = __p;
          if (__p)
          {
            goto LABEL_40;
          }

          return v20 & 1;
        }

        v37 = sub_70E7C4((a1 + 179), v41, &__p, -1, v32);
        if (++v7 < sub_4D1DC0(a2))
        {
          if (v37 == -1 || (v38 = *(sub_6B8D68(&__p, v37) + 32), v39 = *(sub_4D1F50(a2, v7) + 32), v38 != v39) || (HIDWORD(v38) & 0xFFFFFF) != (HIDWORD(v39) & 0xFFFFFF))
          {
            v20 = 0;
          }
        }

        if (v19 == v7)
        {
          goto LABEL_38;
        }
      }
    }

    v40 = __p;
    if (__p)
    {
LABEL_40:
      v43 = v40;
      operator delete(v40);
    }
  }

  return v20 & 1;
}

void sub_6E1240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6E1268(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  *(a4 + 24) = 0;
  v5 = (a4 + 24);
  *(a4 + 8) = *a4;
  *(a4 + 48) = *(a4 + 40);
  *(a4 + 64) = 0;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  *(a4 + 72) = v6;
  v7 = (a4 + 72);
  *(a4 + 88) = v6;
  *(a4 + 104) = v6;
  *(a4 + 120) = -1;
  *(a4 + 128) = 0;
  *(a4 + 136) = -1;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  *(a4 + 160) = vnegq_f64(v6);
  *(a4 + 176) = 0;
  *(a4 + 184) = 98;
  *(a4 + 192) = 0;
  *(a4 + 200) = 0;
  *(a4 + 208) = xmmword_229B660;
  *(a4 + 232) = 0;
  *(a4 + 245) = 0;
  *(a4 + 224) = 0;
  sub_6D9708(a1, a2, a3, 1, __p);
  v8 = *a4;
  if (*a4)
  {
    *(a4 + 8) = v8;
    operator delete(v8);
  }

  *a4 = *__p;
  *(a4 + 16) = v18;
  __p[1] = 0;
  v18 = 0;
  __p[0] = 0;
  *v5 = v19;
  v9 = *(a4 + 40);
  if (v9)
  {
    *(a4 + 48) = v9;
    operator delete(v9);
    v9 = __p[0];
  }

  *(a4 + 40) = v20;
  *(a4 + 56) = v21;
  v21 = 0;
  v20 = 0uLL;
  *(a4 + 64) = v22;
  v10 = v30;
  v11 = v32[0];
  v7[8] = v31;
  v7[9] = v11;
  *(v7 + 158) = *(v32 + 14);
  v12 = v26;
  v13 = v28;
  v7[4] = v27;
  v7[5] = v13;
  v7[6] = v29;
  v7[7] = v10;
  v14 = v24;
  *v7 = v23;
  v7[1] = v14;
  v7[2] = v25;
  v7[3] = v12;
  if (v9)
  {
    __p[1] = v9;
    operator delete(v9);
  }

  if (*v5 == 20)
  {
    v15 = 62;
    goto LABEL_11;
  }

  if (*v5 == 21)
  {
    v15 = 63;
LABEL_11:
    *v5 = v15;
  }

  *(a4 + 152) = 1;
  return 1;
}

uint64_t sub_6E140C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v7 = sub_4D1F50(a2, a3);
  v8 = *a1;
  v9 = *(v7 + 32);
  v10 = sub_2B51D8(*a1, v9 & 0xFFFFFFFFFFFFLL);
  if (*(v8 + 7772) == 1)
  {
    v11 = sub_30C50C(v8 + 3896, v9, 0);
    v12 = &v11[-*v11];
    if (*v12 < 5u)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 + 2);
      if (v13)
      {
        v13 += &v11[*&v11[v13]];
      }
    }

    v14 = (v13 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v13 + ((v9 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v14 = 0;
  }

  v15 = v9 & 0xFFFFFFFFFFFFFFLL;
  v91[0] = v10;
  v91[1] = v14;
  v91[2] = sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
  v91[3] = v16;
  v91[4] = (v9 & 0xFFFFFFFFFFFFFFLL);
  v17 = sub_4D1F50(a2, v4 + 1);
  v18 = *a1;
  v19 = *(v17 + 32);
  v20 = sub_2B51D8(*a1, v19 & 0xFFFFFFFFFFFFLL);
  if (*(v18 + 7772) == 1)
  {
    sub_30C50C(v18 + 3896, v19, 0);
  }

  sub_31D7E8(v18, v19 & 0xFFFFFFFFFFFFLL, 1);
  v21 = (v10 - *v10);
  if (*v21 >= 0x2Fu)
  {
    v22 = v21[23];
    if (v22)
    {
      v23 = *(v10 + v22);
      v24 = v23 > 0x36;
      v25 = (1 << v23) & 0x44000000000008;
      if (!v24 && v25 != 0)
      {
        return 0;
      }
    }
  }

  v27 = (v20 - *v20);
  if (*v27 >= 0x2Fu)
  {
    v28 = v27[23];
    if (v28)
    {
      if (*(v20 + v28) == 54)
      {
        *(a4 + 24) = 6;
        v30 = *(a4 + 8);
        v29 = *(a4 + 16);
        if (v30 >= v29)
        {
          v48 = *a4;
          v49 = v30 - *a4;
          v50 = v49 >> 3;
          v51 = (v49 >> 3) + 1;
          if (v51 >> 61)
          {
            goto LABEL_108;
          }

          v52 = v29 - v48;
          if (v52 >> 2 > v51)
          {
            v51 = v52 >> 2;
          }

          if (v52 >= 0x7FFFFFFFFFFFFFF8)
          {
            v53 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v51;
          }

          if (v53)
          {
            if (!(v53 >> 61))
            {
              operator new();
            }

            goto LABEL_109;
          }

          *(8 * v50) = v15;
          v31 = (8 * v50 + 8);
          memcpy(0, v48, v49);
          *a4 = 0;
          *(a4 + 8) = v31;
          *(a4 + 16) = 0;
          if (v48)
          {
            operator delete(v48);
          }
        }

        else
        {
          *v30 = v15;
          v31 = v30 + 1;
        }

        *(a4 + 8) = v31;
        v54 = *(a4 + 16);
        if (v31 < v54)
        {
          *v31 = v19 & 0xFFFFFFFFFFFFFFLL;
          v55 = (v31 + 1);
LABEL_70:
          *(a4 + 8) = v55;
          return 1;
        }

        v56 = *a4;
        v57 = v31 - *a4;
        v58 = v57 >> 3;
        v59 = (v57 >> 3) + 1;
        if (!(v59 >> 61))
        {
          v60 = v54 - v56;
          if (v60 >> 2 > v59)
          {
            v59 = v60 >> 2;
          }

          if (v60 >= 0x7FFFFFFFFFFFFFF8)
          {
            v61 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v61 = v59;
          }

          if (!v61)
          {
            *(8 * v58) = v19 & 0xFFFFFFFFFFFFFFLL;
            v55 = 8 * v58 + 8;
            memcpy(0, v56, v57);
            *a4 = 0;
            *(a4 + 8) = v55;
            *(a4 + 16) = 0;
            if (v56)
            {
              operator delete(v56);
            }

            goto LABEL_70;
          }

          if (!(v61 >> 61))
          {
            operator new();
          }

LABEL_109:
          sub_1808();
        }

LABEL_108:
        sub_1794();
      }
    }
  }

  v32 = 0;
  v33 = v4 + 1;
  while (1)
  {
    v34 = sub_4D1F50(a2, v33);
    v35 = *a1;
    v36 = *(v34 + 32);
    v37 = sub_2B51D8(*a1, v36 & 0xFFFFFFFFFFFFLL);
    if (*(v35 + 7772) == 1)
    {
      sub_30C50C(v35 + 3896, v36, 0);
    }

    sub_31D7E8(v35, v36 & 0xFFFFFFFFFFFFLL, 1);
    v38 = (v37 - *v37);
    v39 = *v38;
    if (v39 >= 0x2F)
    {
      break;
    }

    if (v39 < 9)
    {
      if (v32 > a1[77])
      {
        return 0;
      }

      goto LABEL_35;
    }

LABEL_30:
    v40 = v38[4];
    if (v40)
    {
      v40 = *(v37 + v40);
    }

    v32 += v40;
    if (v32 > a1[77])
    {
      return 0;
    }

LABEL_35:
    if (++v33 == sub_4D1DC0(a2))
    {
      return 0;
    }
  }

  if (!v38[23] || *(v37 + v38[23]) != 54)
  {
    goto LABEL_30;
  }

  v88 = 0;
  v89 = 0;
  v90 = 0;
  sub_31B8F4(*a1, v91, &v88);
  v42 = v88;
  if (v89 - v88 == 80)
  {
    if (sub_6DEE8C(a1, v91, &v88) == 2)
    {
      v43 = sub_6B8D68(&v88, 0);
      v44 = sub_4D1F50(a2, v4 + 1);
      v45 = *a1;
      v46 = *(v44 + 32);
      sub_2B51D8(*a1, v46 & 0xFFFFFFFFFFFFLL);
      if (*(v45 + 7772) == 1)
      {
        sub_30C50C(v45 + 3896, v46, 0);
      }

      sub_31D7E8(v45, v46 & 0xFFFFFFFFFFFFLL, 1);
      v47 = __PAIR64__(*(v43 + 36), *(v43 + 32)) == __PAIR64__(WORD2(v46), v46) && *(v43 + 38) == BYTE6(v46);
      v62 = sub_6B8D68(&v88, v47);
      v63 = 0;
      while (1)
      {
        v64 = *v62;
        v65 = *(v62 + 16);
        v87 = *(v62 + 32);
        v86[0] = v64;
        v86[1] = v65;
        v89 = v88;
        sub_31B8F4(*a1, v86, &v88);
        v67 = v88;
        if (v88 != v89)
        {
          while (1)
          {
            v68 = (*v67 - **v67);
            if (*v68 >= 0x2Fu)
            {
              v69 = v68[23];
              if (v69)
              {
                if (*(*v67 + v69) == 54)
                {
                  break;
                }
              }
            }

            v67 += 5;
            if (v67 == v89)
            {
              goto LABEL_80;
            }
          }
        }

        if (v67 != v89)
        {
          break;
        }

LABEL_80:
        v70 = (*&v86[0] - **&v86[0]);
        if (*v70 >= 9u && (v71 = v70[4]) != 0)
        {
          v63 += *(*&v86[0] + v71);
          if (v63 > a1[77])
          {
            goto LABEL_87;
          }
        }

        else if (v63 > a1[77])
        {
          goto LABEL_87;
        }

        v72 = sub_70E7C4((a1 + 179), v86, &v88, -1, v66);
        if (v72 == -1)
        {
          goto LABEL_87;
        }

        v62 = sub_6B8D68(&v88, v72);
      }

      v74 = a4;
      for (*(a4 + 24) = 6; v4 <= v33; ++v4)
      {
        while (1)
        {
          v75 = *(sub_4D1F50(a2, v4) + 32);
          v77 = *(v74 + 8);
          v76 = *(v74 + 16);
          if (v77 >= v76)
          {
            break;
          }

          *v77 = v75 & 0xFFFFFFFFFFFFFFLL;
          *(v74 + 8) = v77 + 1;
          if (++v4 > v33)
          {
            goto LABEL_107;
          }
        }

        v78 = *v74;
        v79 = v77 - *v74;
        v80 = (v79 >> 3) + 1;
        if (v80 >> 61)
        {
          sub_1794();
        }

        v81 = v76 - v78;
        if (v81 >> 2 > v80)
        {
          v80 = v81 >> 2;
        }

        if (v81 >= 0x7FFFFFFFFFFFFFF8)
        {
          v82 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v82 = v80;
        }

        if (v82)
        {
          if (!(v82 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v83 = (8 * (v79 >> 3));
        *v83 = v75 & 0xFFFFFFFFFFFFFFLL;
        v84 = v83 + 1;
        memcpy(0, v78, v79);
        *a4 = 0;
        *(a4 + 8) = v84;
        *(a4 + 16) = 0;
        if (v78)
        {
          operator delete(v78);
        }

        v74 = a4;
        *(a4 + 8) = v84;
      }

LABEL_107:
      result = 1;
    }

    else
    {
LABEL_87:
      result = 0;
    }

    v42 = v88;
  }

  else
  {
    result = 0;
  }

  if (v42)
  {
    v89 = v42;
    v73 = result;
    operator delete(v42);
    return v73;
  }

  return result;
}

void sub_6E1B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6E1BA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 728) != 1)
  {
    return 0;
  }

  if (sub_6E2E00(a1, a2, a3, a4))
  {
    return 1;
  }

  v10 = sub_4D1F50(a2, a3);
  v11 = *a1;
  v231 = v10;
  v12 = *(v10 + 32);
  v13 = sub_2B51D8(*a1, v12 & 0xFFFFFFFFFFFFLL);
  v230 = a3;
  if (*(v11 + 7772) == 1)
  {
    v14 = sub_30C50C(v11 + 3896, v12, 0);
    v15 = &v14[-*v14];
    if (*v15 < 5u)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v15 + 2);
      if (v16)
      {
        v16 += &v14[*&v14[v16]];
      }
    }

    v17 = v16 + ((v12 >> 30) & 0x3FFFC) + 4 + *(v16 + ((v12 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v17 = 0;
  }

  v232 = a4;
  v251 = v13;
  v252 = v17;
  v253 = sub_31D7E8(v11, v12 & 0xFFFFFFFFFFFFLL, 1);
  v254 = v18;
  v255 = v12 & 0xFFFFFFFFFFFFFFLL;
  sub_4D0568();
  v20 = v19;
  v22 = v21;
  sub_4D0568();
  v240 = v23;
  v237 = v24;
  sub_4D0560();
  v233 = v26 + v230;
  v235 = v25;
  sub_4D0560();
  v28 = v27;
  v239 = 0;
  v30 = v29 + v230 + 1;
  while (1)
  {
    v31 = v30;
    sub_4D0568();
    v34 = v32;
    v35 = v33;
    if (v28)
    {
      v36 = sub_4D1DC0(v28);
      v37 = v36;
      if (v34)
      {
        v38 = v31 < v36;
        v39 = sub_4D1DC0(v34);
        if (v35 < v39 && v38)
        {
          v41 = sub_4D1F50(v28, v31);
          if (v41 == sub_4D1F50(v34, v35))
          {
            goto LABEL_75;
          }
        }

        else if (v31 < v37 == v35 < v39)
        {
          goto LABEL_75;
        }
      }

      else if (v31 >= v36)
      {
        goto LABEL_75;
      }
    }

    else if (!v32 || v33 >= sub_4D1DC0(v32))
    {
      goto LABEL_75;
    }

    v42 = sub_4D1F50(v28, v31);
    v43 = (*v42 - **v42);
    if (*v43 >= 0x2Fu)
    {
      v44 = v43[23];
      if (v44)
      {
        v45 = *(*v42 + v44);
        v46 = v45 > 0x36;
        v47 = (1 << v45) & 0x44000000000008;
        if (!v46 && v47 != 0)
        {
          return 0;
        }
      }
    }

    v49 = *a1;
    v50 = *(sub_4D1F50(v28, v31) + 32);
    v51 = sub_2B51D8(v49, v50 & 0xFFFFFFFFFFFFLL);
    if (*(v49 + 7772) == 1)
    {
      v52 = sub_30C50C(v49 + 3896, v50, 0);
      v53 = &v52[-*v52];
      if (*v53 < 5u)
      {
        v54 = 0;
      }

      else
      {
        v54 = *(v53 + 2);
        if (v54)
        {
          v54 += &v52[*&v52[v54]];
        }
      }

      v55 = v54 + ((v50 >> 30) & 0x3FFFC) + 4 + *(v54 + ((v50 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v55 = 0;
    }

    v56 = sub_31D7E8(v49, v50 & 0xFFFFFFFFFFFFLL, 1);
    *&v256 = v51;
    *(&v256 + 1) = v55;
    *&v257 = v56;
    *(&v257 + 1) = v57;
    v258 = v50 & 0xFFFFFFFFFFFFFFLL;
    v58 = sub_4D1F50(v28, v31);
    v59 = *a1;
    v60 = *(v58 + 32);
    v61 = sub_2B51D8(*a1, v60 & 0xFFFFFFFFFFFFLL);
    if (*(v59 + 7772) == 1)
    {
      sub_30C50C(v59 + 3896, v60, 0);
    }

    sub_31D7E8(v59, v60 & 0xFFFFFFFFFFFFLL, 1);
    v62 = (v61 - *v61);
    if (*v62 >= 0x2Fu && (v63 = v62[23]) != 0 && *(v61 + v63) == 14)
    {
      v64 = 1;
      if (!v239)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v64 = sub_7106B4(a1 + 1432, &v251, &v256);
      if (!v239)
      {
LABEL_47:
        v239 = sub_7106B4(a1 + 1432, &v251, &v256);
        goto LABEL_50;
      }
    }

    v239 = 1;
LABEL_50:
    sub_4D0568();
    v66 = v65;
    v68 = v67;
    if (v20)
    {
      v69 = v22 < sub_4D1DC0(v20);
      if (!v66)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v69 = 0;
      if (!v65)
      {
LABEL_58:
        v71 = 0;
        goto LABEL_59;
      }
    }

    v70 = sub_4D1DC0(v66);
    v71 = v68 < v70;
    if (v68 < v70 && v69)
    {
      v73 = sub_4D1F50(v20, v22);
      v74 = v73 == sub_4D1F50(v66, v68);
      goto LABEL_60;
    }

LABEL_59:
    v74 = v69 ^ v71 ^ 1;
LABEL_60:
    if ((v74 & v64) != 0)
    {
      v20 = v28;
      v22 = v31;
    }

    sub_4D0568();
    v76 = v75;
    v78 = v77;
    if (v240)
    {
      v79 = v237 < sub_4D1DC0(v240);
      if (!v76)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v79 = 0;
      if (!v75)
      {
LABEL_71:
        v81 = 0;
        goto LABEL_72;
      }
    }

    v80 = sub_4D1DC0(v76);
    v81 = v78 < v80;
    if (v78 < v80 && v79)
    {
      v83 = sub_4D1F50(v240, v237);
      if (v83 != sub_4D1F50(v76, v78) || v64)
      {
        goto LABEL_12;
      }

      goto LABEL_73;
    }

LABEL_72:
    if ((v79 ^ v81 | v64))
    {
      goto LABEL_12;
    }

LABEL_73:
    v84 = sub_4D1F50(v28, v31);
    if ((sub_6A9E6C(a1 + 3680, v84) & 1) == 0)
    {
      break;
    }

LABEL_12:
    v30 = v31 + 1;
    v233 = v31;
    v235 = v28;
  }

  v240 = v28;
  v237 = v31;
LABEL_75:
  sub_4D0568();
  v87 = v85;
  v88 = v86;
  if (v20)
  {
    v89 = sub_4D1DC0(v20);
    v90 = v89;
    if (v87)
    {
      v91 = v22 < v89;
      v92 = sub_4D1DC0(v87);
      if (v88 < v92 && v91)
      {
        v94 = sub_4D1F50(v20, v22);
        if (v94 == sub_4D1F50(v87, v88))
        {
          goto LABEL_122;
        }
      }

      else if (v22 < v90 == v88 < v92)
      {
        goto LABEL_122;
      }

LABEL_89:
      sub_4D0568();
      v97 = v95;
      v98 = v96;
      if (v240)
      {
        v99 = sub_4D1DC0(v240);
        v100 = v99;
        if (v97)
        {
          v101 = v237 < v99;
          v102 = sub_4D1DC0(v97);
          if (v98 < v102 && v101)
          {
            v104 = sub_4D1F50(v240, v237);
            if (v104 != sub_4D1F50(v97, v98))
            {
              goto LABEL_122;
            }
          }

          else if (v237 < v100 != v98 < v102)
          {
            goto LABEL_122;
          }

LABEL_103:
          v105 = *a1;
          v106 = v231[4];
          v107 = sub_2B51D8(*a1, v106 & 0xFFFFFFFFFFFFLL);
          if (*(v105 + 7772) == 1)
          {
            v108 = sub_30C50C(v105 + 3896, v106, 0);
            v109 = &v108[-*v108];
            if (*v109 < 5u)
            {
              v110 = 0;
            }

            else
            {
              v110 = *(v109 + 2);
              if (v110)
              {
                v110 += &v108[*&v108[v110]];
              }
            }

            v111 = v110 + ((v106 >> 30) & 0x3FFFC) + 4 + *(v110 + ((v106 >> 30) & 0x3FFFC) + 4);
          }

          else
          {
            v111 = 0;
          }

          v112 = sub_31D7E8(v105, v106 & 0xFFFFFFFFFFFFLL, 1);
          *&v256 = v107;
          *(&v256 + 1) = v111;
          *&v257 = v112;
          *(&v257 + 1) = v113;
          v258 = v106 & 0xFFFFFFFFFFFFFFLL;
          v114 = sub_4D1F50(v235, v233);
          v115 = *a1;
          v116 = *(v114 + 32);
          v117 = sub_2B51D8(*a1, v116 & 0xFFFFFFFFFFFFLL);
          if (*(v115 + 7772) == 1)
          {
            v118 = sub_30C50C(v115 + 3896, v116, 0);
            v119 = &v118[-*v118];
            if (*v119 < 5u)
            {
              v120 = 0;
            }

            else
            {
              v120 = *(v119 + 2);
              if (v120)
              {
                v120 += &v118[*&v118[v120]];
              }
            }

            v121 = v120 + ((v116 >> 30) & 0x3FFFC) + 4 + *(v120 + ((v116 >> 30) & 0x3FFFC) + 4);
          }

          else
          {
            v121 = 0;
          }

          *&v248 = v117;
          *(&v248 + 1) = v121;
          *&v249 = sub_31D7E8(v115, v116 & 0xFFFFFFFFFFFFLL, 1);
          *(&v249 + 1) = v122;
          v250 = v116 & 0xFFFFFFFFFFFFFFLL;
          v123 = sub_71A018(a1 + 1432, &v256, &v248);
          v124 = v240;
          if (v123)
          {
            v124 = v235;
          }

          v240 = v124;
          v125 = v237;
          if (v123)
          {
            v125 = v233;
          }

          v237 = v125;
        }

        else if (v237 >= v99)
        {
          goto LABEL_103;
        }
      }

      else if (!v95 || v96 >= sub_4D1DC0(v95))
      {
        goto LABEL_103;
      }
    }

    else if (v22 < v89)
    {
      goto LABEL_89;
    }
  }

  else if (v85 && v86 < sub_4D1DC0(v85))
  {
    goto LABEL_89;
  }

LABEL_122:
  sub_4D0568();
  v128 = v126;
  v129 = v127;
  if (!v20)
  {
    if (v126 && v127 < sub_4D1DC0(v126))
    {
      goto LABEL_136;
    }

    return 0;
  }

  v130 = sub_4D1DC0(v20);
  v131 = v130;
  if (!v128)
  {
    if (v22 < v130)
    {
      goto LABEL_136;
    }

    return 0;
  }

  v132 = v22 < v130;
  v133 = sub_4D1DC0(v128);
  if (v129 < v133 && v132)
  {
    v135 = sub_4D1F50(v20, v22);
    if (v135 == sub_4D1F50(v128, v129))
    {
      return 0;
    }
  }

  else if (v22 < v131 == v129 < v133)
  {
    return 0;
  }

LABEL_136:
  sub_4D0568();
  v137 = v136;
  v139 = v138;
  if (v240)
  {
    v140 = v237 < sub_4D1DC0(v240);
    if (v137)
    {
      goto LABEL_138;
    }

LABEL_145:
    v142 = 0;
    goto LABEL_146;
  }

  v140 = 0;
  if (!v136)
  {
    goto LABEL_145;
  }

LABEL_138:
  v141 = sub_4D1DC0(v137);
  v142 = v139 < v141;
  if (v139 < v141)
  {
    v143 = v140;
  }

  else
  {
    v143 = 0;
  }

  if (v143 == 1)
  {
    v144 = sub_4D1F50(v240, v237);
    v145 = sub_4D1F50(v137, v139);
    v9 = 0;
    if (v144 == v145)
    {
      return v9;
    }

LABEL_147:
    if (v22 < v237)
    {
      sub_4D0560();
      v147 = v146;
      v148 = sub_4D1F50(v240, v237);
      v149 = *v148;
      v150 = *(v148 + 16);
      v250 = *(v148 + 32);
      v248 = v149;
      v249 = v150;
      v151 = *a1;
      v152 = sub_4D1F50(v240, v237);
      sub_6D6D8C(v151, *(v152 + 32) & 0xFFFFFFFFFFFFFFLL, 1, 1, &v245);
      v243 = 0;
      v244 = 0;
      v153 = sub_4D1DC0(a2);
      v154 = v237 - v147;
      v155 = v230;
      if (v230 <= v153)
      {
        v156 = v153;
      }

      else
      {
        v156 = v230;
      }

      v234 = v156;
      if (v153 > v230)
      {
        v157 = 0;
        v238 = 0;
        LOBYTE(v158) = 0;
        v159 = 0.0;
        v228 = v154;
        while (1)
        {
          v236 = v157;
          v162 = sub_4D1F50(a2, v155);
          v163 = v162[4];
          v161 = v232;
          v165 = *(v232 + 8);
          v164 = *(v232 + 16);
          v241 = v163;
          if (v165 >= v164)
          {
            v166 = *v232;
            v167 = v165 - *v232;
            v168 = (v167 >> 3) + 1;
            if (v168 >> 61)
            {
              sub_1794();
            }

            v169 = v164 - v166;
            if (v169 >> 2 > v168)
            {
              v168 = v169 >> 2;
            }

            if (v169 >= 0x7FFFFFFFFFFFFFF8)
            {
              v170 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v170 = v168;
            }

            if (v170)
            {
              if (!(v170 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v161 = v232;
            v171 = (8 * (v167 >> 3));
            *v171 = v241 & 0xFFFFFFFFFFFFFFLL;
            v172 = v171 + 1;
            memcpy(0, v166, v167);
            *v232 = 0;
            *(v232 + 8) = v172;
            *(v232 + 16) = 0;
            if (v166)
            {
              operator delete(v166);
            }

            v154 = v228;
            *(v232 + 8) = v172;
            if (v158)
            {
LABEL_157:
              v158 = 1;
              goto LABEL_178;
            }
          }

          else
          {
            *v165 = v163 & 0xFFFFFFFFFFFFFFLL;
            *(v232 + 8) = v165 + 1;
            if (v158)
            {
              goto LABEL_157;
            }
          }

          v173 = *a1;
          v174 = v162[4];
          v175 = sub_2B51D8(*a1, v174 & 0xFFFFFFFFFFFFLL);
          if (*(v173 + 7772) == 1)
          {
            v176 = sub_30C50C(v173 + 3896, v174, 0);
            v177 = &v176[-*v176];
            if (*v177 < 5u)
            {
              v178 = 0;
            }

            else
            {
              v178 = *(v177 + 2);
              if (v178)
              {
                v178 += &v176[*&v176[v178]];
              }
            }

            v179 = v178 + ((v174 >> 30) & 0x3FFFC) + 4 + *(v178 + ((v174 >> 30) & 0x3FFFC) + 4);
          }

          else
          {
            v179 = 0;
          }

          v180 = sub_31D7E8(v173, v174 & 0xFFFFFFFFFFFFLL, 1);
          *&v256 = v175;
          *(&v256 + 1) = v179;
          *&v257 = v180;
          *(&v257 + 1) = v181;
          v258 = v174 & 0xFFFFFFFFFFFFFFLL;
          v158 = !sub_70EE0C(a1 + 1432, &v256);
          v161 = v232;
LABEL_178:
          if (v154 == v155)
          {
            goto LABEL_232;
          }

          v182 = sub_4D1DC0(a2);
          v183 = 0.0;
          if (v155 < v182 - 1)
          {
            v184 = sub_4D1F50(a2, v155 + 1);
            v185 = (*v162 - **v162);
            v186 = *v185;
            if (*(v162 + 38))
            {
              if (v186 < 0x49)
              {
                goto LABEL_190;
              }

              v187 = v185[36];
              if (!v187)
              {
                goto LABEL_190;
              }

LABEL_186:
              v188 = *(*v162 + v187);
              v189 = *v184;
              v190 = (*v184 - **v184);
              v191 = *v190;
              if (!*(v184 + 38))
              {
                goto LABEL_187;
              }

LABEL_191:
              if (v191 >= 0x4B)
              {
                v192 = v190[37];
                if (v192)
                {
                  goto LABEL_193;
                }
              }

LABEL_194:
              v193 = 0xFFFF;
            }

            else
            {
              if (v186 >= 0x4B)
              {
                v187 = v185[37];
                if (v187)
                {
                  goto LABEL_186;
                }
              }

LABEL_190:
              v188 = -1;
              v189 = *v184;
              v190 = (*v184 - **v184);
              v191 = *v190;
              if (*(v184 + 38))
              {
                goto LABEL_191;
              }

LABEL_187:
              if (v191 < 0x49)
              {
                goto LABEL_194;
              }

              v192 = v190[36];
              if (!v192)
              {
                goto LABEL_194;
              }

LABEL_193:
              v193 = *&v189[v192];
            }

            v194 = v188 + 18000;
            v195 = v188 - 18000;
            if ((v194 >> 5) < 0x465u)
            {
              v195 = v194;
            }

            v196 = v193 - v195;
            if (v196 > 18000)
            {
              v196 -= 36000;
            }

            if (v196 < -17999)
            {
              v196 += 36000;
            }

            v183 = v196 / 100.0;
          }

          v197 = fabs(v183);
          if (v197 >= v159)
          {
            v159 = v197;
          }

          v198 = (*v231 - **v231);
          v199 = *v198;
          if (*(v231 + 38))
          {
            if (v199 >= 0x49)
            {
              v200 = v198[36];
              v201 = v241;
              if (v200)
              {
                goto LABEL_207;
              }

LABEL_213:
              v202 = -1;
              v203 = *v162;
              v204 = (*v162 - **v162);
              v205 = *v204;
              if (!*(v162 + 38))
              {
                goto LABEL_208;
              }

              goto LABEL_216;
            }
          }

          else if (v199 >= 0x4B)
          {
            v200 = v198[37];
            v201 = v241;
            if (v200)
            {
LABEL_207:
              v202 = *(*v231 + v200);
              v203 = *v162;
              v204 = (*v162 - **v162);
              v205 = *v204;
              if (!*(v162 + 38))
              {
                goto LABEL_208;
              }

              goto LABEL_216;
            }

            goto LABEL_213;
          }

          v202 = -1;
          v201 = v241;
          v203 = *v162;
          v204 = (*v162 - **v162);
          v205 = *v204;
          if (!*(v162 + 38))
          {
LABEL_208:
            if (v205 < 0x49)
            {
              goto LABEL_219;
            }

            v206 = v204[36];
            if (!v206)
            {
              goto LABEL_219;
            }

            goto LABEL_218;
          }

LABEL_216:
          if (v205 < 0x4B || (v206 = v204[37]) == 0)
          {
LABEL_219:
            v207 = 0xFFFF;
            goto LABEL_220;
          }

LABEL_218:
          v207 = *&v203[v206];
LABEL_220:
          v208 = v202 + 18000;
          v209 = v202 - 18000;
          if ((v208 >> 5) < 0x465u)
          {
            v209 = v208;
          }

          v210 = v207 - v209;
          if (v210 > 18000)
          {
            v210 -= 36000;
          }

          if (v210 < -17999)
          {
            v210 += 36000;
          }

          v211 = 0x4059000000000000;
          v212 = fabs(v210 / 100.0);
          v211.i16[0] = *(a1 + 760);
          if (v212 >= vmovl_s16(v211).i32[0])
          {
            v213 = sub_4D23F8(a2, v155, v212);
            v201 = v241;
          }

          else
          {
            v213 = 0;
          }

          v238 += v213;
          v244 = v238;
          if ((v201 & 0xFFFFFFFFFFFFFFLL) == (v255 & 0xFFFFFFFFFFFFFFLL))
          {
            v160 = 0;
          }

          else
          {
            v160 = sub_4D23F8(a2, v155, v212);
          }

          v161 = v232;
          v157 = v236 + v160;
          v243 = v236 + v160;
          if (v234 == ++v155)
          {
            goto LABEL_232;
          }
        }
      }

      v158 = 0;
      v159 = 0.0;
      v161 = v232;
LABEL_232:
      if (sub_6E3410(a1, v231, &v248, v161, &v244, v159))
      {
        *(v232 + 24) = 3;
        v214 = *(sub_605E3C((a5 + 80), *(a5 + 104)) + 32);
        if (v247 == v214 && WORD2(v247) == WORD2(v214) && BYTE6(v247) == BYTE6(v214) && !v158)
        {
          sub_6DBF88(a1, a2, v230, a5, v232, 1);
          v215 = (v252 - *v252);
          v216 = 0.0;
          v217 = 0.0;
          if (*v215 >= 0x13u)
          {
            v218 = v215[9];
            if (v218)
            {
              LOWORD(v217) = *(v252 + v218);
              v217 = *&v217;
            }
          }

          v219 = (*(&v245 + 1) - **(&v245 + 1));
          if (*v219 >= 0x13u)
          {
            v220 = v219[9];
            if (v220)
            {
              LOWORD(v216) = *(*(&v245 + 1) + v220);
              v216 = *&v216;
            }
          }

          if (v217 >= v216)
          {
            v216 = v217;
          }

          LODWORD(v217) = *(a1 + 732);
          v221 = *(v232 + 24);
          if (v216 > *&v217)
          {
            v221 = 3;
          }

          *(v232 + 24) = v221;
          *(v232 + 232) = sub_6DCFD0(a1, v232);
        }

        v256 = v245;
        v257 = v246;
        v258 = v247;
        v9 = 1;
        sub_704450((a1 + 144), &v256, v259, 1uLL);
        *(a1 + 168) = 0;
        *(a1 + 176) = 4;
        *(v232 + 224) = 1;
        return v9;
      }

      if (!sub_59DB7C(a1, &v251, &v245, &v243))
      {
        sub_6D86EC(v232);
        return 0;
      }

      sub_6D6D8C(*a1, v247 & 0xFFFFFFFFFFFFFFLL, 1, 1, &v256);
      if (sub_7102E4(a1 + 1432, &v251, &v256))
      {
        v222 = v232;
        *(v232 + 24) = 4;
        goto LABEL_251;
      }

      if (!v239 && !v158 && (v225 = *(sub_605E3C((a5 + 80), *(a5 + 104)) + 32), v247 == v225) && WORD2(v247) == WORD2(v225) && BYTE6(v247) == BYTE6(v225))
      {
        sub_6DBF88(a1, a2, v230, a5, v232, 1);
        v226 = sub_6DCFD0(a1, v232);
        v222 = v232;
        *(v232 + 232) = v226;
LABEL_251:
        v223 = v230;
      }

      else
      {
        v256 = v245;
        v257 = v246;
        v258 = v247;
        sub_6E38E4(__p, &v256, 1uLL);
        v227 = sub_6DB978(a1, a2, &v251, __p, 0, 0xFFFFFFFFFFFFFFFFLL);
        v222 = v232;
        *(v232 + 24) = v227;
        v223 = v230;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
          v223 = v230;
          v222 = v232;
        }
      }

      *(a1 + 176) = 4;
      *(v232 + 224) = sub_59D944(a1, a2, v223, v239 + v223, v154, v222);
      return 1;
    }
  }

  else
  {
LABEL_146:
    v9 = 0;
    if (v140 != v142)
    {
      goto LABEL_147;
    }
  }

  return v9;
}

void sub_6E2DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6E2E00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 867) != 1)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  v8 = sub_4D1F50(a2, a3);
  v9 = *v7;
  v10 = sub_31DDCC(*v7, *(v8 + 32) & 0xFFFFFFFFFFFFFFLL);
  sub_40C59C(v9, v10, &v77);
  v11 = v79;
  if ((v79 & 0x80u) != 0)
  {
    v11 = v78;
  }

  if (!v11)
  {
    result = 0;
    if ((v79 & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_93;
  }

  v12 = *(v8 + 32);
  v14 = *(a4 + 8);
  v13 = *(a4 + 16);
  v72 = v8;
  if (v14 >= v13)
  {
    v17 = *a4;
    v18 = v14 - *a4;
    v19 = v18 >> 3;
    v20 = (v18 >> 3) + 1;
    if (v20 >> 61)
    {
      sub_1794();
    }

    v21 = v13 - v17;
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

    *(8 * v19) = v12 & 0xFFFFFFFFFFFFFFLL;
    v15 = 8 * v19 + 8;
    memcpy(0, v17, v18);
    *a4 = 0;
    *(a4 + 8) = v15;
    *(a4 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v14 = v12 & 0xFFFFFFFFFFFFFFLL;
    v15 = (v14 + 1);
  }

  *(a4 + 8) = v15;
  v23 = sub_4D1DC0(v6);
  v73 = a3 + 1;
  if (a3 + 1 > v23)
  {
    v24 = a3 + 1;
  }

  else
  {
    v24 = v23;
  }

  if (a3 + 1 < v23)
  {
    v25 = 0;
    v26 = a3 + 1;
    v74 = v6;
    while (1)
    {
      v27 = sub_4D1F50(v6, v26);
      v28 = *(v27 + 32);
      v30 = *(a4 + 8);
      v29 = *(a4 + 16);
      if (v30 >= v29)
      {
        v32 = *a4;
        v33 = v30 - *a4;
        v34 = (v33 >> 3) + 1;
        if (v34 >> 61)
        {
          sub_1794();
        }

        v35 = v7;
        v36 = v24;
        v37 = v29 - v32;
        if (v37 >> 2 > v34)
        {
          v34 = v37 >> 2;
        }

        if (v37 >= 0x7FFFFFFFFFFFFFF8)
        {
          v38 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v34;
        }

        if (v38)
        {
          if (!(v38 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v39 = (8 * (v33 >> 3));
        *v39 = v28 & 0xFFFFFFFFFFFFFFLL;
        v31 = v39 + 1;
        memcpy(0, v32, v33);
        *a4 = 0;
        *(a4 + 8) = v31;
        *(a4 + 16) = 0;
        if (v32)
        {
          operator delete(v32);
        }

        v24 = v36;
        v7 = v35;
        v6 = v74;
      }

      else
      {
        *v30 = v28 & 0xFFFFFFFFFFFFFFLL;
        v31 = v30 + 1;
      }

      *(a4 + 8) = v31;
      v40 = *v7;
      v41 = *(v27 + 32);
      v42 = sub_2B51D8(*v7, v41 & 0xFFFFFFFFFFFFLL);
      if (*(v40 + 7772) == 1)
      {
        sub_30C50C(v40 + 3896, v41, 0);
      }

      sub_31D7E8(v40, v41 & 0xFFFFFFFFFFFFLL, 1);
      if (v25 > *(v7 + 752))
      {
        goto LABEL_92;
      }

      v44 = (v42 - *v42);
      if (*v44 < 0x2Fu)
      {
        break;
      }

      v45 = v44[23];
      if (!v45)
      {
        break;
      }

      v46 = *(v42 + v45);
      v47 = v46 > 0x2A;
      v48 = (1 << v46) & 0x50400004000;
      if (v47 || v48 == 0)
      {
        break;
      }

      v25 += sub_4D23F8(v6, v26++, v43);
      if (v24 == v26)
      {
        goto LABEL_92;
      }
    }

    v50 = *v7;
    v51 = sub_31DDCC(*v7, *(v27 + 32) & 0xFFFFFFFFFFFFFFLL);
    sub_40C59C(v50, v51, __p);
    v52 = v76;
    if ((v76 & 0x80u) == 0)
    {
      v53 = v76;
    }

    else
    {
      v53 = __p[1];
    }

    v54 = v79;
    if ((v79 & 0x80u) != 0)
    {
      v54 = v78;
    }

    if (v53 != v54 || ((v76 & 0x80u) == 0 ? (v55 = __p) : (v55 = __p[0]), (v79 & 0x80u) == 0 ? (v56 = &v77) : (v56 = v77), memcmp(v55, v56, v53)))
    {
      v26 = -1;
    }

    if (v52 < 0)
    {
      operator delete(__p[0]);
    }

    if (v26 == -1 || v26 <= v73)
    {
      goto LABEL_92;
    }

    v57 = sub_4D1F50(v6, v26);
    v58 = (*v72 - **v72);
    v59 = *v58;
    if (*(v72 + 38))
    {
      if (v59 < 0x49 || (v60 = v58[36]) == 0)
      {
LABEL_76:
        v61 = -1;
LABEL_77:
        v62 = (*v57 - **v57);
        v63 = *v62;
        if (*(v57 + 38))
        {
          if (v63 < 0x4B || (v64 = v62[37]) == 0)
          {
LABEL_84:
            v65 = 0xFFFF;
            goto LABEL_85;
          }
        }

        else
        {
          if (v63 < 0x49)
          {
            goto LABEL_84;
          }

          v64 = v62[36];
          if (!v64)
          {
            goto LABEL_84;
          }
        }

        v65 = *(*v57 + v64);
LABEL_85:
        v66 = v61 + 18000;
        v67 = v61 - 18000;
        if ((v66 >> 5) < 0x465u)
        {
          v67 = v66;
        }

        v68 = v65 - v67;
        if (v68 > 18000)
        {
          v68 -= 36000;
        }

        if (v68 < -17999)
        {
          v68 += 36000;
        }

        v69 = 0x4059000000000000;
        v69.i16[0] = *(v7 + 760);
        if (fabs(v68 / 100.0) >= vmovl_s16(v69).i32[0])
        {
          goto LABEL_92;
        }

        result = 1;
        *(a4 + 24) = 0;
        if ((v79 & 0x80000000) == 0)
        {
          return result;
        }

        goto LABEL_93;
      }
    }

    else
    {
      if (v59 < 0x4B)
      {
        goto LABEL_76;
      }

      v60 = v58[37];
      if (!v60)
      {
        goto LABEL_76;
      }
    }

    v61 = *(*v72 + v60);
    goto LABEL_77;
  }

LABEL_92:
  result = 0;
  *(a4 + 8) = *a4;
  *(a4 + 48) = *(a4 + 40);
  v70.f64[0] = NAN;
  v70.f64[1] = NAN;
  *(a4 + 72) = v70;
  *(a4 + 88) = v70;
  *(a4 + 104) = v70;
  *(a4 + 120) = -1;
  *(a4 + 136) = -1;
  *(a4 + 160) = vnegq_f64(v70);
  *(a4 + 184) = 98;
  *(a4 + 24) = 0;
  *(a4 + 64) = 0;
  *(a4 + 128) = 0;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  *(a4 + 176) = 0;
  *(a4 + 192) = 0;
  *(a4 + 200) = 0;
  *(a4 + 208) = xmmword_229B660;
  *(a4 + 232) = 0;
  *(a4 + 245) = 0;
  *(a4 + 224) = 0;
  if (v79 < 0)
  {
LABEL_93:
    v71 = result;
    operator delete(v77);
    return v71;
  }

  return result;
}

void sub_6E33D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6E3410(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t **a4, void *a5, double a6)
{
  v12 = *(a2 + 32);
  v13 = *a1;
  v14 = sub_2B51D8(*a1, v12 & 0xFFFFFFFFFFFFLL);
  if (*(v13 + 7772) == 1)
  {
    v15 = sub_30C50C(v13 + 3896, v12, 0);
    v16 = &v15[-*v15];
    if (*v16 < 5u)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v16 + 2);
      if (v17)
      {
        v17 += &v15[*&v15[v17]];
      }
    }

    v18 = (v17 + ((v12 >> 30) & 0x3FFFC) + 4 + *(v17 + ((v12 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v18 = 0;
  }

  v60[0] = v14;
  v60[1] = v18;
  v60[2] = sub_31D7E8(v13, v12 & 0xFFFFFFFFFFFFLL, 1);
  v60[3] = v19;
  v60[4] = (v12 & 0xFFFFFFFFFFFFFFLL);
  v20 = *(a3 + 32);
  v21 = *a1;
  v22 = sub_2B51D8(*a1, v20 & 0xFFFFFFFFFFFFLL);
  if (*(v21 + 7772) == 1)
  {
    v23 = sub_30C50C(v21 + 3896, v20, 0);
    v24 = &v23[-*v23];
    if (*v24 < 5u)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(v24 + 2);
      if (v25)
      {
        v25 += &v23[*&v23[v25]];
      }
    }

    v26 = (v25 + ((v20 >> 30) & 0x3FFFC) + 4 + *(v25 + ((v20 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v26 = 0;
  }

  v59[0] = v22;
  v59[1] = v26;
  v59[2] = sub_31D7E8(v21, v20 & 0xFFFFFFFFFFFFLL, 1);
  v59[3] = v27;
  v59[4] = (v20 & 0xFFFFFFFFFFFFFFLL);
  if (*(a1 + 1172) == 1 && sub_31B1CC(*a1, a4, *(a1 + 752), *(a1 + 216)))
  {
    v28 = 1;
    return v28 & 1;
  }

  v29 = sub_710788(a1 + 1432, a4, 1);
  v30 = sub_31ACAC(*a1, v60, v59) * 100.0;
  if (v30 >= 0.0)
  {
    v31 = v30;
    if (v30 >= 4.50359963e15)
    {
      goto LABEL_24;
    }

    v32 = (v30 + v30) + 1;
  }

  else
  {
    v31 = v30;
    if (v30 <= -4.50359963e15)
    {
      goto LABEL_24;
    }

    v32 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
  }

  v31 = (v32 >> 1);
LABEL_24:
  if (v31 < 9.22337204e18)
  {
    if (v30 >= 0.0)
    {
      if (v30 < 4.50359963e15)
      {
        v33 = (v30 + v30) + 1;
        goto LABEL_31;
      }
    }

    else if (v30 > -4.50359963e15)
    {
      v33 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
LABEL_31:
      v30 = (v33 >> 1);
    }

    v34 = v30;
    goto LABEL_33;
  }

  v34 = 0x7FFFFFFFFFFFFFFELL;
LABEL_33:
  v58 = v34;
  if (!sub_59D8C0(a1, v60, v59, &v58, v29) || (*(a1 + 1024) & 1) != 0)
  {
    goto LABEL_35;
  }

  v36 = sub_70DE94(a1 + 1432, v60, v59);
  v37 = sub_70E2E0(a1 + 1432, v60, v59);
  v28 = 0;
  v38 = *(a1 + 200);
  if (v38 <= a6 && fabs(v37) < v38)
  {
    if (fabs(v36) < *(a1 + 992))
    {
LABEL_35:
      v28 = 0;
      return v28 & 1;
    }

    v39 = *a1;
    v40 = *(a2 + 32);
    v41 = sub_2B51D8(*a1, v40 & 0xFFFFFFFFFFFFLL);
    if (*(v39 + 7772) == 1)
    {
      v42 = sub_30C50C(v39 + 3896, v40, 0);
      v43 = &v42[-*v42];
      if (*v43 < 5u)
      {
        v44 = 0;
      }

      else
      {
        v44 = *(v43 + 2);
        if (v44)
        {
          v44 += &v42[*&v42[v44]];
        }
      }

      v45 = (v44 + ((v40 >> 30) & 0x3FFFC) + 4 + *(v44 + ((v40 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v45 = 0;
    }

    v57[0] = v41;
    v57[1] = v45;
    v57[2] = sub_31D7E8(v39, v40 & 0xFFFFFFFFFFFFLL, 1);
    v57[3] = v46;
    v57[4] = (v40 & 0xFFFFFFFFFFFFFFLL);
    v47 = *a1;
    v48 = *(a3 + 32);
    v49 = sub_2B51D8(*a1, v48 & 0xFFFFFFFFFFFFLL);
    if (*(v47 + 7772) == 1)
    {
      v50 = sub_30C50C(v47 + 3896, v48, 0);
      v51 = &v50[-*v50];
      if (*v51 < 5u)
      {
        v52 = 0;
      }

      else
      {
        v52 = *(v51 + 2);
        if (v52)
        {
          v52 += &v50[*&v50[v52]];
        }
      }

      v53 = (v52 + ((v48 >> 30) & 0x3FFFC) + 4 + *(v52 + ((v48 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v53 = 0;
    }

    v28 = 1;
    v56[0] = v49;
    v56[1] = v53;
    v56[2] = sub_31D7E8(v47, v48 & 0xFFFFFFFFFFFFLL, 1);
    v56[3] = v54;
    v56[4] = (v48 & 0xFFFFFFFFFFFFFFLL);
    v55 = sub_71A018(a1 + 1432, v57, v56);
    if (*a5 < *(a1 + 1016))
    {
      v28 = (v58 > *(a1 + 1000)) | v55 | v29;
    }
  }

  return v28 & 1;
}

void *sub_6E38E4(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_6E39AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_6E39C8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_4D1F50(a2, a3);
  sub_4D1F50(a2, a4);
  if (*(a5 + 24) == 4)
  {
    return 1;
  }

  v11 = *a1;
  v12 = *(v9 + 32);
  v13 = sub_2B51D8(*a1, v12 & 0xFFFFFFFFFFFFLL);
  if (*(v11 + 7772) == 1)
  {
    v14 = sub_30C50C(v11 + 3896, v12, 0);
    v15 = &v14[-*v14];
    if (*v15 < 5u)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v15 + 2);
      if (v16)
      {
        v16 += &v14[*&v14[v16]];
      }
    }

    v17 = v16 + ((v12 >> 30) & 0x3FFFC) + 4 + *(v16 + ((v12 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v17 = 0;
  }

  v10 = 1;
  v28[0] = v13;
  v28[1] = v17;
  v28[2] = sub_31D7E8(v11, v12 & 0xFFFFFFFFFFFFLL, 1);
  v28[3] = v18;
  v28[4] = v12 & 0xFFFFFFFFFFFFFFLL;
  v27[0] = a1;
  v27[1] = v28;
  if (!sub_6E3BB0(a5, v27))
  {
    v19 = *a5;
    v20 = *(a5 + 8);
    if (*a5 == v20)
    {
      return 0;
    }

    else
    {
      while (1)
      {
        v21 = *v19;
        v22 = *a1;
        v23 = sub_2B51D8(*a1, *v19 & 0xFFFFFFFFFFFFLL);
        if (*(v22 + 7772) == 1)
        {
          sub_30C50C(v22 + 3896, v21, 0);
        }

        sub_31D7E8(v22, v21 & 0xFFFFFFFFFFFFLL, 1);
        v24 = (v23 - *v23);
        if (*v24 >= 0x2Fu)
        {
          v25 = v24[23];
          if (v25)
          {
            if (*(v23 + v25) == 14)
            {
              break;
            }
          }
        }

        if (++v19 == v20)
        {
          return 0;
        }
      }

      return sub_710788((a1 + 179), a5, 0);
    }
  }

  return v10;
}

BOOL sub_6E3BB0(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = *a1 + 8;
  do
  {
    v6 = *(v5 - 8);
    v7 = *v4;
    v8 = sub_2B51D8(*v4, v6 & 0xFFFFFFFFFFFFLL);
    if (*(v7 + 7772) == 1)
    {
      v9 = sub_30C50C(v7 + 3896, v6, 0);
      v10 = &v9[-*v9];
      if (*v10 < 5u)
      {
        v11 = 0;
      }

      else
      {
        v11 = *(v10 + 2);
        if (v11)
        {
          v11 += &v9[*&v9[v11]];
        }
      }

      v12 = (v11 + ((v6 >> 30) & 0x3FFFC) + 4 + *(v11 + ((v6 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_31D7E8(v7, v6 & 0xFFFFFFFFFFFFLL, 1);
    v17[0] = v8;
    v17[1] = v12;
    v17[2] = v13;
    v17[3] = v14;
    v17[4] = v6;
    result = sub_7106B4((v4 + 179), v3, v17);
    if (result)
    {
      break;
    }

    v16 = v5 == v2;
    v5 += 8;
  }

  while (!v16);
  return result;
}

unint64_t sub_6E3CD4(uint64_t *a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0x1000000000000;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0x1000000000000;
  *(a5 + 88) = *(a5 + 80);
  *(a5 + 104) = -1;
  *(a5 + 112) = 0;
  v10 = sub_4D1F50(a2, a3);
  v11 = *a1;
  v12 = *(v10 + 32);
  v13 = sub_2B51D8(*a1, v12 & 0xFFFFFFFFFFFFLL);
  if (*(v11 + 7772) == 1)
  {
    v14 = sub_30C50C(v11 + 3896, v12, 0);
    v15 = &v14[-*v14];
    if (*v15 < 5u)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v15 + 2);
      if (v16)
      {
        v16 += &v14[*&v14[v16]];
      }
    }

    v17 = v16 + ((v12 >> 30) & 0x3FFFC) + 4 + *(v16 + ((v12 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_31D7E8(v11, v12 & 0xFFFFFFFFFFFFLL, 1);
  *a5 = v13;
  *(a5 + 8) = v17;
  *(a5 + 16) = v18;
  *(a5 + 24) = v19;
  *(a5 + 32) = v12 & 0xFFFFFFFFFFFFFFLL;
  sub_73F0E4(a1 + 935, a2, a3, a4, &v29);
  v20 = *(a5 + 80);
  if (v20)
  {
    *(a5 + 88) = v20;
    operator delete(v20);
  }

  v28 = *(&v29 + 1);
  *(a5 + 80) = v29;
  *(a5 + 96) = v30;
  v21 = a3 + 1;
  result = sub_4D1DC0(a2);
  if (a3 + 1 > result)
  {
    v23 = a3 + 1;
  }

  else
  {
    v23 = result;
  }

  if (v21 < result)
  {
    while (1)
    {
      result = sub_4D1F50(a2, v21);
      v25 = *(a5 + 80);
      v26 = *(a5 + 88);
      v24 = v25;
      if (v25 != v26)
      {
        v24 = *(a5 + 80);
        while (*(result + 32) != *(v24 + 32) || (HIDWORD(*(result + 32)) & 0xFFFFFF) != (*(v24 + 36) & 0xFFFFFF))
        {
          v24 += 40;
          if (v24 == v26)
          {
            goto LABEL_16;
          }
        }
      }

      if (v24 != v26)
      {
        break;
      }

LABEL_16:
      if (++v21 == v23)
      {
        v24 = *(a5 + 88);
        break;
      }
    }
  }

  else
  {
    v24 = v28;
    v25 = *(a5 + 80);
  }

  *(a5 + 104) = 0xCCCCCCCCCCCCCCCDLL * ((v24 - v25) >> 3);
  return result;
}

uint64_t sub_6E3EF8(uint64_t a1, uint64_t a2, int ***a3, uint64_t a4)
{
  v19 = fabs(sub_70E2E0(a1 + 1432, a2, a4)) <= *(a1 + 200);
  v8 = sub_31DDCC(*a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL);
  v9 = v8 > 0xFFFFFFFEFFFFFFFFLL || v8 == 0;
  if (v9 || ((v10 = sub_31DDCC(*a1, *(a4 + 32) & 0xFFFFFFFFFFFFFFLL), v10 <= 0xFFFFFFFEFFFFFFFFLL) ? (v11 = v10 == 0) : (v11 = 1), v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_31EE90(*a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, *(a4 + 32) & 0xFFFFFFFFFFFFFFLL);
  }

  v18 = v12;
  v14 = *a3;
  v13 = a3[1];
  v17[0] = a4;
  v17[1] = a2;
  v17[2] = a1;
  v17[3] = &v19;
  v17[4] = &v18;
  if (v14 == v13)
  {
    return 0;
  }

  v15 = 0;
  do
  {
    v15 += sub_704640(v17, v14);
    v14 += 5;
  }

  while (v14 != v13);
  return v15;
}

BOOL sub_6E4010(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a1 != -1 && *a2 == -1;
  v4 = !v3;
  v3 = v2 == -1;
  v5 = v2 == -1;
  if (!v3 && v4 != 0)
  {
    v12 = *(a2 + 8) != -1;
    v13 = *(a1 + 16);
    v14 = v13 == -1;
    v15 = v13 == -1;
    if (!v14 && *(a2 + 8) != -1)
    {
      goto LABEL_16;
    }

LABEL_24:
    v9 = v15 & v12;
    v17 = *(a1 + 24);
    v3 = v17 == -1;
    v11 = (v17 == -1) & v9;
    if (v3)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v12 = v5 & v4;
  v7 = *(a1 + 16);
  v3 = v7 == -1;
  v15 = v7 == -1;
  if (v3 || v12 == 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  v9 = *(a2 + 16) != -1;
  v10 = *(a1 + 24);
  v3 = v10 == -1;
  v11 = (v10 == -1) & v9;
  if (v3)
  {
    goto LABEL_27;
  }

LABEL_25:
  if (v9)
  {
    v11 = *(a2 + 24) != -1;
  }

LABEL_27:
  v18 = *(a1 + 32);
  v3 = v18 == -1;
  v19 = (v18 == -1) & v11;
  if (!v3 && v11)
  {
    v19 = *(a2 + 32) != -1;
  }

  v20 = *(a1 + 40);
  v3 = v20 == -1;
  v21 = (v20 == -1) & v19;
  if (!v3 && v19)
  {
    v21 = *(a2 + 40) != -1;
  }

  v22 = *(a1 + 48);
  v3 = v22 == -1;
  v23 = (v22 == -1) & v21;
  if (!v3 && v21)
  {
    v23 = *(a2 + 48) != -1;
  }

  v24 = *(a1 + 56);
  result = (v24 == 0) & v23;
  if (v24)
  {
    if (v23)
    {
      return *(a2 + 56) != 0;
    }
  }

  return result;
}

uint64_t sub_6E414C(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  sub_2B365C(*a1, a2, 0, (*a1 + 7800));
  v3 = *(v2 + 7800);
  v4 = *(v2 + 7808);
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 0;
}

uint64_t sub_6E42AC(uint64_t a1, void *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  if (*(a1 + 1076) != 1)
  {
    return 0;
  }

  v8 = a3;
  *(a6 + 24) = 0;
  *(a6 + 8) = *a6;
  *(a6 + 48) = *(a6 + 40);
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  *(a6 + 72) = v11;
  v77 = a6 + 72;
  *(a6 + 64) = 0;
  *(a6 + 88) = v11;
  *(a6 + 104) = v11;
  *(a6 + 120) = -1;
  *(a6 + 128) = 0;
  *(a6 + 136) = -1;
  *(a6 + 144) = 0;
  *(a6 + 152) = 0;
  *(a6 + 160) = vnegq_f64(v11);
  *(a6 + 176) = 0;
  *(a6 + 184) = 98;
  *(a6 + 192) = 0;
  v78 = (a6 + 192);
  *(a6 + 200) = 0;
  *(a6 + 208) = xmmword_229B660;
  *(a6 + 232) = 0;
  *(a6 + 245) = 0;
  *(a6 + 224) = 0;
  v12 = sub_4D1F50(a2, a3);
  v13 = *a1;
  v14 = *(v12 + 32);
  v15 = sub_2B51D8(*a1, v14 & 0xFFFFFFFFFFFFLL);
  v16 = 0;
  if (*(v13 + 7772) == 1)
  {
    v17 = sub_30C50C(v13 + 3896, v14, 0);
    v18 = &v17[-*v17];
    if (*v18 < 5u)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v18 + 2);
      if (v19)
      {
        v19 += &v17[*&v17[v19]];
      }
    }

    v16 = (v19 + ((v14 >> 30) & 0x3FFFC) + 4 + *(v19 + ((v14 >> 30) & 0x3FFFC) + 4));
  }

  v81[0] = v15;
  v81[1] = v16;
  v81[2] = sub_31D7E8(v13, v14 & 0xFFFFFFFFFFFFLL, 1);
  v81[3] = v20;
  v82 = v14 & 0xFFFFFFFFFFFFFFLL;
  v21 = sub_605E3C(a4, a5);
  v22 = (v15 - *v15);
  v23 = *v22;
  if (v23 < 0x2F)
  {
    v28 = 0;
    goto LABEL_21;
  }

  if (!v22[23])
  {
    v28 = 0;
LABEL_21:
    v26 = a2;
    v29 = *v21;
    v30 = (*v21 - **v21);
    v31 = *v30;
    if (v31 < 0x2F)
    {
      goto LABEL_70;
    }

    goto LABEL_22;
  }

  v24 = *(v15 + v22[23]);
  v25 = v24 > 0x2B || ((1 << v24) & 0x80000001040) == 0;
  v26 = a2;
  if (v25 || v23 >= 0x9B && (v27 = v22[77]) != 0 && (*(v15 + v27 + 2) & 0x20) != 0)
  {
    v28 = v24 == 44;
    v29 = *v21;
    v30 = (*v21 - **v21);
    v31 = *v30;
    if (v31 < 0x2F)
    {
LABEL_70:
      if (!v28)
      {
        return 0;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v28 = 1;
    v29 = *v21;
    v30 = (*v21 - **v21);
    v31 = *v30;
    if (v31 < 0x2F)
    {
      goto LABEL_70;
    }
  }

LABEL_22:
  if (!v30[23])
  {
    goto LABEL_70;
  }

  v32 = *(v29 + v30[23]);
  if (v32 <= 0x2B && ((1 << v32) & 0x80000001040) != 0 && (v31 < 0x9B || (v34 = v30[77]) == 0 || (*(v29 + v34 + 2) & 0x20) == 0))
  {
    if (!v28)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (v28 == (v32 == 44))
  {
    return 0;
  }

LABEL_31:
  v80 = v21[4];
  v76 = v21;
  v35 = sub_70E2E0(a1 + 1432, v81, v21);
  v36 = sub_4D1DC0(v26);
  if (v8 <= v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = v8;
  }

  if (v36 <= v8)
  {
LABEL_53:
    if (sub_710788(a1 + 1432, a6, 1))
    {
      goto LABEL_102;
    }
  }

  else
  {
    while (1)
    {
      v38 = sub_4D1F50(v26, v8);
      v39 = *a1;
      v40 = *(v38 + 32);
      sub_2B51D8(*a1, v40 & 0xFFFFFFFFFFFFLL);
      if (*(v39 + 7772) == 1)
      {
        sub_30C50C(v39 + 3896, v40, 0);
      }

      sub_31D7E8(v39, v40 & 0xFFFFFFFFFFFFLL, 1);
      if ((v40 & 0xFFFFFFFFFFFFFFLL) == (v80 & 0xFFFFFFFFFFFFFFLL))
      {
        break;
      }

      v42 = *(a6 + 8);
      v41 = *(a6 + 16);
      if (v42 < v41)
      {
        *v42 = v40 & 0xFFFFFFFFFFFFFFLL;
        *(a6 + 8) = v42 + 1;
        if (v37 == ++v8)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v43 = *a6;
        v44 = v42 - *a6;
        v45 = (v44 >> 3) + 1;
        if (v45 >> 61)
        {
          goto LABEL_103;
        }

        v46 = v41 - v43;
        if (v46 >> 2 > v45)
        {
          v45 = v46 >> 2;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFF8)
        {
          v47 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v47 = v45;
        }

        if (v47)
        {
          if (!(v47 >> 61))
          {
            operator new();
          }

          goto LABEL_104;
        }

        v48 = (8 * (v44 >> 3));
        *v48 = v40 & 0xFFFFFFFFFFFFFFLL;
        v49 = v48 + 1;
        memcpy(0, v43, v44);
        *a6 = 0;
        *(a6 + 8) = v49;
        *(a6 + 16) = 0;
        if (v43)
        {
          operator delete(v43);
        }

        *(a6 + 8) = v49;
        if (v37 == ++v8)
        {
          goto LABEL_53;
        }
      }
    }

    v59 = v80 & 0xFFFFFFFFFFFFFFLL;
    v61 = *(a6 + 8);
    v60 = *(a6 + 16);
    if (v61 >= v60)
    {
      v63 = *a6;
      v64 = v61 - *a6;
      v65 = v64 >> 3;
      v66 = (v64 >> 3) + 1;
      if (v66 >> 61)
      {
LABEL_103:
        sub_1794();
      }

      v67 = v60 - v63;
      if (v67 >> 2 > v66)
      {
        v66 = v67 >> 2;
      }

      if (v67 >= 0x7FFFFFFFFFFFFFF8)
      {
        v68 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = v66;
      }

      if (v68)
      {
        if (!(v68 >> 61))
        {
          operator new();
        }

LABEL_104:
        sub_1808();
      }

      *(8 * v65) = v59;
      v74 = 8 * v65 + 8;
      memcpy(0, v63, v64);
      *a6 = 0;
      *(a6 + 8) = v74;
      *(a6 + 16) = 0;
      if (v63)
      {
        operator delete(v63);
      }

      *(a6 + 8) = v74;
      if (sub_710788(a1 + 1432, a6, 1))
      {
        goto LABEL_102;
      }
    }

    else
    {
      *v61 = v59;
      *(a6 + 8) = v61 + 1;
      if (sub_710788(a1 + 1432, a6, 1))
      {
        goto LABEL_102;
      }
    }
  }

  v50 = sub_31DDCC(*a1, v14 & 0xFFFFFFFFFFFFFFLL);
  v51 = 0;
  if (v50 > 0xFFFFFFFEFFFFFFFFLL)
  {
    v52 = v76;
    v55 = v81[0];
    v56 = (v81[0] - *v81[0]);
    v57 = *v56;
    if (v57 < 0x2F)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v52 = v76;
    if (v50)
    {
      v53 = sub_31DDCC(*a1, v76[4] & 0xFFFFFFFFFFFFFFLL);
      v51 = v53 < 0xFFFFFFFF00000000 && v53 != 0;
    }

    v55 = v81[0];
    v56 = (v81[0] - *v81[0]);
    v57 = *v56;
    if (v57 < 0x2F)
    {
      goto LABEL_84;
    }
  }

  v58 = v56[23];
  if (v56[23] && *(v55 + v56[23]) != 32)
  {
    goto LABEL_89;
  }

LABEL_84:
  v69 = (*v52 - **v52);
  if (*v69 < 0x2Fu || (v70 = v69[23]) == 0 || *(*v52 + v70) != 44)
  {
    if (v57 < 0x2F)
    {
      goto LABEL_102;
    }

    v58 = v56[23];
    if (!v56[23])
    {
      goto LABEL_102;
    }

LABEL_89:
    if (*(v55 + v58) != 44)
    {
      goto LABEL_102;
    }

    v71 = (*v52 - **v52);
    if (*v71 >= 0x2Fu)
    {
      v72 = v71[23];
      if (v72)
      {
        if (*(*v52 + v72) != 32)
        {
          goto LABEL_102;
        }
      }
    }
  }

  v73 = fabs(v35);
  if (v51 && sub_31EE90(*a1, v82 & 0xFFFFFFFFFFFFFFLL, v52[4] & 0xFFFFFFFFFFFFFFLL) && v73 < *(a1 + 1080))
  {
    *(a6 + 24) = 3;
    *(a6 + 225) = 257;
    *(a1 + 176) = 5;
    return 1;
  }

  if (v73 < *(a1 + 184))
  {
    *(a6 + 24) = 3;
    result = 1;
    *(a6 + 226) = 1;
    *(a1 + 176) = 5;
    return result;
  }

LABEL_102:
  result = 0;
  *(a6 + 8) = *a6;
  *(a6 + 48) = *(a6 + 40);
  v75.f64[0] = NAN;
  v75.f64[1] = NAN;
  *v77 = v75;
  *(v77 + 16) = v75;
  *(v77 + 32) = v75;
  *(v77 + 48) = -1;
  *(a6 + 24) = 0;
  *(a6 + 64) = 0;
  *(a6 + 128) = 0;
  *(a6 + 136) = -1;
  *(a6 + 144) = 0;
  *(a6 + 152) = 0;
  *(a6 + 160) = vnegq_f64(v75);
  *(a6 + 176) = 0;
  *(a6 + 184) = 98;
  *v78 = 0;
  v78[1] = 0;
  *(a6 + 208) = xmmword_229B660;
  *(a6 + 232) = 0;
  *(a6 + 245) = 0;
  *(a6 + 224) = 0;
  return result;
}

void sub_6E4A20(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_2B5518(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 8 * a2;
  }
}

void sub_6E4A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_605E3C((a3 + 80), *(a3 + 104));
  v4 = *(v3 + 16);
  v5 = *v3;
  v6 = v4;
  v7 = *(v3 + 32);
  operator new();
}

void sub_6E4B18(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6E4B34(uint64_t a1, double *a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 >= v6)
  {
    v9 = *a1;
    v10 = v5 - *a1;
    v11 = v10 >> 2;
    v12 = (v10 >> 2) + 1;
    if (v12 >> 62)
    {
      sub_1794();
    }

    v13 = v6 - v9;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    v15 = 4 * v11;
    v16 = *a3;
    *v15 = *a2;
    *(v15 + 2) = v16;
    v8 = 4 * v11 + 4;
    memcpy(0, v9, v10);
    *a1 = 0;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    v7 = *a3;
    *v5 = *a2;
    *(v5 + 2) = v7;
    v8 = v5 + 4;
  }

  *(a1 + 8) = v8;
  return v8 - 4;
}

void sub_6E4E14(_Unwind_Exception *a1)
{
  sub_5135D0(v2 + 179);
  v6 = *v4;
  if (*v4)
  {
    v2[19] = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_6D2C20(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v2[6] = v7;
  operator delete(v7);
  sub_6D2C20(v1);
  _Unwind_Resume(a1);
}

void sub_6E4EC4(uint64_t a1, void *a2, int a3)
{
  if (a2[1262] == a2[1263])
  {
    sub_710B30((a1 + 1432), a2);
    sub_6E6DC8(a1);
    sub_6E4FA8(a1, a2, a3);
    if (*(a1 + 2376))
    {
      v6 = *(a1 + 2368);
      if (v6)
      {
        do
        {
          v7 = *v6;
          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      *(a1 + 2368) = 0;
      v8 = *(a1 + 2360);
      if (v8)
      {
        bzero(*(a1 + 2352), 8 * v8);
      }

      *(a1 + 2376) = 0;
    }

    if (*(a1 + 2416))
    {
      v9 = *(a1 + 2408);
      if (v9)
      {
        do
        {
          v10 = *v9;
          operator delete(v9);
          v9 = v10;
        }

        while (v10);
      }

      *(a1 + 2408) = 0;
      v11 = *(a1 + 2400);
      if (v11)
      {
        bzero(*(a1 + 2392), 8 * v11);
      }

      *(a1 + 2416) = 0;
    }
  }
}

void sub_6E4FA8(uint64_t a1, void *a2, int a3)
{
  if (sub_4D1DC0(a2) != 1)
  {
    v5 = 0;
    v56 = (a1 + 7384);
    do
    {
      sub_6E7118(a1, a2, v5, &v76);
      v91[24] = sub_394BD0();
      sub_72FA14(a1 + 7208, a2, v5, &v76);
      sub_6E75D4(a1, a2, a1 + 64, &v76);
      v6 = (*(&v76 + 1) - v76) >> 3;
      v7 = v6 - 1;
      if (v6 == 1)
      {
        sub_D7B0(&v63);
        v48 = sub_4A5C(&v64[1], "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/routing/routing/src/guidance/ManeuverGenerator.cpp", 119);
        sub_4A5C(v48, ":", 1);
        v49 = std::ostream::operator<<();
        v50 = sub_4A5C(v49, ":", 1);
        sub_4A5C(v50, "Invalid maneuver with segment_delta of 0.", 41);
        exception = __cxa_allocate_exception(0x40uLL);
        sub_DAE4(&v63, &v58);
        if (SHIBYTE(v60) >= 0)
        {
          v52 = &v58;
        }

        else
        {
          v52 = v58;
        }

        if (SHIBYTE(v60) >= 0)
        {
          v53 = HIBYTE(v60);
        }

        else
        {
          v53 = v59;
        }

        v54 = sub_2D390(exception, v52, v53);
      }

      v8 = sub_4D1F50(a2, v5);
      v9 = *a1;
      v10 = *(v8 + 32);
      v11 = sub_2B51D8(*a1, v10 & 0xFFFFFFFFFFFFLL);
      if (*(v9 + 7772) == 1)
      {
        v12 = sub_30C50C(v9 + 3896, v10, 0);
        v13 = &v12[-*v12];
        if (*v13 < 5u)
        {
          v14 = 0;
        }

        else
        {
          v14 = *(v13 + 2);
          if (v14)
          {
            v14 += &v12[*&v12[v14]];
          }
        }

        v15 = v14 + ((v10 >> 30) & 0x3FFFC) + 4 + *(v14 + ((v10 >> 30) & 0x3FFFC) + 4);
      }

      else
      {
        v15 = 0;
      }

      v16 = sub_31D7E8(v9, v10 & 0xFFFFFFFFFFFFLL, 1);
      v58 = v11;
      v59 = v15;
      v60 = v16;
      v61 = v17;
      v18 = v7 + v5;
      v62 = v10 & 0xFFFFFFFFFFFFFFLL;
      v19 = sub_4D1F50(a2, v7 + v5);
      v20 = *a1;
      v21 = *(v19 + 32);
      v22 = sub_2B51D8(*a1, v21 & 0xFFFFFFFFFFFFLL);
      if (*(v20 + 7772) == 1)
      {
        v23 = sub_30C50C(v20 + 3896, v21, 0);
        v24 = &v23[-*v23];
        if (*v24 < 5u)
        {
          v25 = 0;
        }

        else
        {
          v25 = *(v24 + 2);
          if (v25)
          {
            v25 += &v23[*&v23[v25]];
          }
        }

        v26 = (v25 + ((v21 >> 30) & 0x3FFFC) + 4 + *(v25 + ((v21 >> 30) & 0x3FFFC) + 4));
      }

      else
      {
        v26 = 0;
      }

      v27 = sub_31D7E8(v20, v21 & 0xFFFFFFFFFFFFLL, 1);
      v57[0] = v22;
      v57[1] = v26;
      v57[2] = v27;
      v57[3] = v28;
      v57[4] = (v21 & 0xFFFFFFFFFFFFFFLL);
      *(&v78 + 1) = v5;
      v30 = (a1 + 7352);
      v29 = (a1 + 7320);
      if (v78 || (v91[11] & 1) != 0 || (v91[28] & 1) != 0 || (v30 = (a1 + 7352), v29 = (a1 + 7320), sub_6D5FB8(a1, &v58, v57, a3)))
      {
        v31 = a2[1263];
        if (v31 >= a2[1264])
        {
          v40 = sub_702C20(a2 + 1262, &v76);
          v30 = (a1 + 7352);
          v29 = (a1 + 7320);
        }

        else
        {
          *(v31 + 8) = 0;
          *(v31 + 16) = 0;
          *v31 = 0;
          *v31 = v76;
          *(v31 + 16) = v77;
          v76 = 0uLL;
          v77 = 0;
          *(v31 + 24) = v78;
          *(v31 + 48) = 0;
          *(v31 + 56) = 0;
          *(v31 + 40) = 0;
          *(v31 + 40) = v79;
          *(v31 + 56) = v80;
          v79 = 0uLL;
          v80 = 0;
          *(v31 + 64) = v81;
          v32 = v82;
          v33 = v83;
          *(v31 + 104) = v84;
          *(v31 + 88) = v33;
          *(v31 + 72) = v32;
          v34 = v85;
          v35 = v86;
          v36 = v87;
          *(v31 + 168) = v88;
          *(v31 + 152) = v36;
          *(v31 + 136) = v35;
          *(v31 + 120) = v34;
          v37 = v89;
          v38 = v90;
          v39 = *v91;
          *(v31 + 230) = *&v91[14];
          *(v31 + 216) = v39;
          *(v31 + 200) = v38;
          *(v31 + 184) = v37;
          v40 = v31 + 248;
        }

        a2[1263] = v40;
      }

      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0x1000000000000;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0x1000000000000;
      *(a1 + 152) = *(a1 + 144);
      *(a1 + 168) = -1;
      *(a1 + 176) = 0;
      sub_765658(a1 + 1176, &v63);
      *(a1 + 7288) = v63;
      v41 = *(a1 + 7296);
      if (v41)
      {
        *(a1 + 7304) = v41;
        operator delete(v41);
        *(a1 + 7296) = 0;
        *(a1 + 7304) = 0;
        *(a1 + 7312) = 0;
      }

      *(a1 + 7296) = *v64;
      *(a1 + 7312) = v65;
      v64[1] = 0;
      v65 = 0;
      v64[0] = 0;
      v42 = *(a1 + 7320);
      if (v42)
      {
        *(a1 + 7328) = v42;
        operator delete(v42);
        *v29 = 0;
        v29[1] = 0;
        v29[2] = 0;
      }

      *v29 = *v66;
      v43 = v68;
      *(a1 + 7336) = v67;
      v66[1] = 0;
      v67 = 0;
      v66[0] = 0;
      *(a1 + 7344) = v43;
      v44 = *(a1 + 7352);
      if (v44)
      {
        *(a1 + 7360) = v44;
        operator delete(v44);
        *v30 = 0;
        v30[1] = 0;
        v30[2] = 0;
      }

      *v30 = *__p;
      v45 = v71;
      *(a1 + 7368) = v70;
      __p[1] = 0;
      v70 = 0;
      __p[0] = 0;
      *(a1 + 7376) = v45;
      v46 = *(a1 + 7384);
      if (v46)
      {
        *(a1 + 7392) = v46;
        operator delete(v46);
        *v56 = 0;
        *(a1 + 7392) = 0;
        *(a1 + 7400) = 0;
      }

      *v56 = v72;
      v47 = v74;
      *(a1 + 7400) = v73;
      v73 = 0;
      v72 = 0uLL;
      *(a1 + 7408) = v47;
      *(a1 + 7416) = v75[0];
      *(a1 + 7426) = *(v75 + 10);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v66[0])
      {
        v66[1] = v66[0];
        operator delete(v66[0]);
      }

      if (v64[0])
      {
        v64[1] = v64[0];
        operator delete(v64[0]);
      }

      if (v79)
      {
        *(&v79 + 1) = v79;
        operator delete(v79);
      }

      if (v76)
      {
        *(&v76 + 1) = v76;
        operator delete(v76);
      }

      v5 = v18;
    }

    while (v18 < sub_4D1DC0(a2) - 1);
  }

  sub_6E78F4(a1, a2);
}

void sub_6E5578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_DBE4(&a29);
  sub_5ECFBC(&a64);
  _Unwind_Resume(a1);
}

void sub_6E5620(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, void *a4@<X8>)
{
  v4 = a3;
  v8 = *(a2 + 32);
  v9 = *(a1 + 7280);
  v44 = v8 & 0xFFFFFFFFFFFFFFLL;
  v45 = v9;
  v46 = a3;
  v47 = 0;
  v10 = ((v8 << 6) + WORD2(v8) + (v8 >> 2) + 2654435769u) ^ v8;
  v11 = ((v9 | (v10 << 6)) + (v10 >> 2) + 2654435769u) ^ v10;
  if (a3)
  {
    v12 = 2654435770;
  }

  else
  {
    v12 = 2654435769;
  }

  v13 = (v12 + (v11 << 6) + (v11 >> 2)) ^ v11;
  v14 = ((v13 << 6) + (v13 >> 2) + 2654435769u) ^ v13;
  v15 = (*(*(a1 + 32) + 16) + 272 * (bswap64(v14) % **(a1 + 32)));
  v36 = &v44;
  v37 = v14;
  sub_705EC8(v15, &v36, &v41);
  if (v43 != 1)
  {
    v17 = *a1;
    v18 = *(a2 + 32);
    v19 = sub_2B51D8(*a1, v18 & 0xFFFFFFFFFFFFLL);
    if (*(v17 + 7772) == 1)
    {
      v20 = sub_30C50C(v17 + 3896, v18, 0);
      v21 = &v20[-*v20];
      if (*v21 < 5u)
      {
        v22 = 0;
      }

      else
      {
        v22 = *(v21 + 2);
        if (v22)
        {
          v22 += &v20[*&v20[v22]];
        }
      }

      v23 = v22 + ((v18 >> 30) & 0x3FFFC) + 4 + *(v22 + ((v18 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v23 = 0;
    }

    v24 = sub_31D7E8(v17, v18 & 0xFFFFFFFFFFFFLL, 1);
    v36 = v19;
    v37 = v23;
    v38 = v24;
    v39 = v25;
    v40 = v18 & 0xFFFFFFFFFFFFFFLL;
    memset(v35, 0, sizeof(v35));
    if ((v4 & 1) == 0 && !sub_6ABAB4(a1 + 3680, a2))
    {
      sub_742140(a1 + 7480, &v36, v35);
    }

    sub_740664((a1 + 7480), &v36, v35);
    sub_6D3D8C(*a1, *(a2 + 32) | (*(a2 + 36) << 32), &__p);
    v26 = __p;
    v27 = v34;
    if (__p == v34)
    {
LABEL_31:
      operator new();
    }

    while (1)
    {
      v28 = *v26;
      v29 = sub_30CC30(*a1, *v26);
      v30 = (v29 - *v29);
      v31 = *v30;
      if (v31 < 0xF)
      {
        if (v31 < 5)
        {
          goto LABEL_30;
        }
      }

      else if (v30[7] && (*(v29 + v30[7]) & 1) == 0)
      {
        goto LABEL_20;
      }

      if ((!v30[2] || !*(v29 + v30[2])) && (v31 < 9 || !v30[4]))
      {
LABEL_30:
        sub_320200(*a1, v28, &__src);
        operator new();
      }

LABEL_20:
      if (++v26 == v27)
      {
        goto LABEL_31;
      }
    }
  }

  v16 = v42;
  *a4 = v41;
  a4[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = v42;
  if (v42)
  {
    if (!atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v32->__on_zero_shared)(v32);
      std::__shared_weak_count::__release_weak(v32);
    }
  }
}

void sub_6E5DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, _Unwind_Exception *exception_object, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
    if (!v23)
    {
LABEL_3:
      v25 = exception_object;
      if (!exception_object)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!v23)
  {
    goto LABEL_3;
  }

  operator delete(v23);
  v25 = exception_object;
  if (!exception_object)
  {
LABEL_4:
    sub_1F1A8(&a23);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v25);
  sub_1F1A8(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_6E5EEC(uint64_t a1, unsigned int *a2, void *a3, uint64_t a4)
{
  v8 = sub_2B51D8(*a1, *a2 | (*(a2 + 2) << 32));
  v9 = (v8 - *v8);
  if (*v9 < 0x9Bu)
  {
    return 0;
  }

  v10 = v9[77];
  if (!v10)
  {
    return 0;
  }

  if ((*(v8 + v10 + 3) & 2) == 0)
  {
    return 0;
  }

  if (*(a1 + 681) != 1)
  {
    return 0;
  }

  v11 = sub_2B51D8(*a1, *a2 | (*(a2 + 2) << 32));
  v12 = (v11 - *v11);
  if (*v12 < 0x21u || !v12[16])
  {
    return 0;
  }

  sub_6D3D8C(*a1, *a2 | (*(a2 + 2) << 32), &v30);
  v13 = v30;
  v14 = v31;
  if (v30 == v31)
  {
    result = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v16 = sub_30CC30(*a1, *v13);
    v17 = (v16 - *v16);
    if (*v17 < 0xDu)
    {
      goto LABEL_12;
    }

    v18 = v17[6];
    if (!v18)
    {
      goto LABEL_12;
    }

    v19 = (v16 + v18 + *(v16 + v18));
    v20 = (v19 - *v19);
    if (*v20 >= 5u && (v21 = v20[2]) != 0)
    {
      v22 = *(v19 + v21);
      if (v22 >= 0xF || ((0x7EFFu >> v22) & 1) == 0)
      {
        goto LABEL_12;
      }

      v23 = dword_229EB2C[v22];
    }

    else
    {
      v23 = 0;
    }

    sub_320200(*a1, *v13, &__p);
    v24 = __p;
    if (__PAIR64__(*(__p + 2), *__p) == __PAIR64__(WORD2(*a2), *a2) && *(__p + 6) == BYTE6(*a2))
    {
      v25 = v29;
      if (__PAIR64__(*(v29 - 2), *(v29 - 2)) == __PAIR64__(WORD2(*a3), *a3) && *(v29 - 2) == BYTE6(*a3))
      {
        break;
      }
    }

    v29 = __p;
    operator delete(__p);
LABEL_12:
    if (++v13 == v14)
    {
      result = 0;
      goto LABEL_29;
    }
  }

  *(a4 + 24) = v23;
  if (&__p == a4)
  {
    v29 = v24;
    v26 = v24;
LABEL_34:
    operator delete(v26);
  }

  else
  {
    sub_30945C(a4, v24, v25, (v25 - v24) >> 3);
    v26 = __p;
    if (__p)
    {
      v29 = __p;
      goto LABEL_34;
    }
  }

  result = 1;
LABEL_29:
  v13 = v30;
LABEL_31:
  if (v13)
  {
    v31 = v13;
    v27 = result;
    operator delete(v13);
    return v27;
  }

  return result;
}

void sub_6E6160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v14 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6E61B0(uint64_t a1, uint64_t a2, char **a3, uint64_t *a4, unint64_t a5, int a6, int a7, char a8)
{
  result = sub_6EA7B4(a1, a3, a4, a5);
  if (a7 && (result & 0x100000000) != 0)
  {
    return result;
  }

  if (sub_6EAA80(a1, a3, a4))
  {
    return 0;
  }

  result = sub_6DA060(a1, a3, a4, a5);
  if ((result & 0x100000000) != 0)
  {
    return result;
  }

  v18 = sub_7135C4(a1 + 1432, a3, a4, a5, v17);
  if (!sub_6EAC1C(a1, a2, a3, a4, v18, a5, a8))
  {
    v27 = 0;
    v20 = 1;
    goto LABEL_17;
  }

  v19 = sub_605E3C(a4, 0);
  v20 = 1;
  v21 = sub_605E3C(a4, 1uLL);
  v22 = sub_6DAFB0(a1, a3, v19, v21);
  if (a5 == 1)
  {
    v20 = 0;
    v24 = v22 < v23;
    v25 = 20;
    v26 = 21;
  }

  else
  {
    if (a5)
    {
      v27 = 0;
      goto LABEL_17;
    }

    v20 = 0;
    v24 = v22 < v23;
    v25 = 21;
    v26 = 20;
  }

  if (v24)
  {
    v27 = v26;
  }

  else
  {
    v27 = v25;
  }

LABEL_17:
  v28 = sub_605E3C(a4, a5);
  v29 = *(v28 + 32);
  v30 = *(v28 + 16);
  v58[0] = *v28;
  v58[1] = v30;
  v59 = v29;
  v57 = sub_3116D0(a3);
  v31 = sub_420B0C((a1 + 8), &v57);
  if (v18 == -1)
  {
    v33 = v27;
    if (!v31)
    {
      goto LABEL_42;
    }

LABEL_22:
    v34 = *a3;
    v35 = &(*a3)[-**a3];
    v36 = *v35;
    if (v36 >= 0x2F && (*(v35 + 23) && v34[*(v35 + 23)] == 23 || v36 >= 0x9B && (v37 = *(v35 + 77)) != 0 && (v34[v37] & 4) != 0) || (v38 = (*&v58[0] - **&v58[0]), v39 = *v38, v39 < 0x2F) || (!v38[23] || *(*&v58[0] + v38[23]) != 23) && (v39 < 0x9B || (v40 = v38[77]) == 0 || (*(*&v58[0] + v40) & 4) == 0))
    {
LABEL_42:
      if (!v20)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v56 = v31;
    v32 = (sub_31EE90(*a1, a3[4] & 0xFFFFFFFFFFFFFFLL, v59 & 0xFFFFFFFFFFFFFFLL) & 1) != 0 || fabs(sub_715540(a1 + 1432, a2, a3, v58, 1)) < *(a1 + 200);
    v33 = v27;
    LOBYTE(v31) = v56;
    goto LABEL_39;
  }

  v32 = v18 == a5;
  if (v18 == a5)
  {
    v33 = v27;
    goto LABEL_39;
  }

  v33 = v27;
  if (((v31 ^ 1) & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_39:
  if ((v20 & v32) != 1)
  {
    goto LABEL_42;
  }

  v41 = v31;
  if (sub_6EB9A8(a1, a3, a4, a5))
  {
    v33 = 3;
    goto LABEL_44;
  }

  if (sub_6EBF38(a1, a3, v58, a4, v41, v42))
  {
LABEL_43:
    v33 = sub_6EC10C(a1, a2, a3, a4, a5, v18);
    goto LABEL_44;
  }

  v33 = 0;
LABEL_44:
  v43 = v33;
  v44 = sub_6EC288(a1, a3, a4, a5, v18);
  result = v43;
  if (v44)
  {
    if (v43 > 61)
    {
      if (v43 != 62)
      {
        if (v43 != 63)
        {
          goto LABEL_48;
        }

        goto LABEL_55;
      }
    }

    else if (v43 != 20)
    {
      if (v43 != 21)
      {
        goto LABEL_48;
      }

LABEL_55:
      v52 = &(*a3)[-**a3];
      if (*v52 < 0x9Bu)
      {
        return 11;
      }

      v53 = *(v52 + 77);
      result = 11;
      if (v53)
      {
        if ((*&(*a3)[v53] & 0x8000) != 0)
        {
          return 30;
        }

        else
        {
          return 11;
        }
      }

      return result;
    }

    v54 = &(*a3)[-**a3];
    if (*v54 < 0x9Bu)
    {
      return 29;
    }

    v55 = *(v54 + 77);
    result = 29;
    if (v55)
    {
      if ((*&(*a3)[v55] & 0x8000) != 0)
      {
        return 11;
      }

      else
      {
        return 29;
      }
    }

    return result;
  }

LABEL_48:
  if (!a6)
  {
    return result;
  }

  if ((sub_6EC534(a1, a2, a3, v43) & 1) == 0)
  {
    return v43;
  }

  v46 = v45;
  v47 = sub_715540(a1 + 1432, a2, a3, v58, 1);
  v48 = fabs(v47);
  if (v48 > *(a1 + 280) || v48 >= v46)
  {
    result = v43;
    if (v48 < *(a1 + 296))
    {
      return result;
    }

    v49 = v47 < 0.0;
    v50 = 61;
    v51 = 60;
  }

  else
  {
    v49 = v47 < 0.0;
    v50 = 63;
    v51 = 62;
  }

  if (v49)
  {
    return v51;
  }

  else
  {
    return v50;
  }
}

uint64_t sub_6E663C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  sub_69CA74(v9);
  sub_6E5620(v5, v4, v2, v7);
  return sub_5C186C(v9);
}

uint64_t sub_6E66D8(uint64_t *a1, void *a2)
{
  v4 = sub_4D1DC0(a2) - 1;
  v5 = sub_69AE3C(a2);
  v6 = *(v5 + 8);
  v32 = *v5;
  v33 = v6;
  v7 = sub_69B010(a2);
  v8 = sub_69B0E0(a2);
  v9 = *a1;
  v10 = sub_4D1F50(a2, v4);
  sub_2B7A20(v9, *(v10 + 32) & 0xFFFFFFFFFFFFFFLL, &v26);
  sub_31BF20(&v26, v30);
  v11 = a1[5];
  if (v11)
  {
    a1[6] = v11;
    operator delete(v11);
    a1[5] = 0;
    a1[6] = 0;
    a1[7] = 0;
  }

  v12 = v30[0];
  *(a1 + 5) = *v30;
  a1[7] = v31;
  v30[1] = 0;
  v31 = 0;
  v30[0] = 0;
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    result = 82;
  }

  else
  {
    result = 18;
  }

  if (v32 != -1 && a1[5] != a1[6])
  {
    v25 = result;
    sub_6D5084((a1 + 5), &v32, 0, 0, &v26, v12);
    v14 = v26;
    v15 = a1[112];
    v16 = v15 / 100;
    v17 = v15 % 100;
    if (v15 < 0)
    {
      v18 = -50;
    }

    else
    {
      v18 = 50;
    }

    if (*&v26 >= (v16 + (((5243 * (v18 + v17)) >> 19) + ((5243 * (v18 + v17)) >> 31))))
    {
      v24 = v29;
      if (sub_69AE54(a2) || ((v19 = a1[113], v20 = v19 / 100, v21 = v19 % 100, v19 < 0) ? (v22 = -50) : (v22 = 50), *&v14 <= (v20 + (((5243 * (v22 + v21)) >> 19) + ((5243 * (v22 + v21)) >> 31)))))
      {
        v23 = sub_37268(a1 + 5, v24);
        v26 = *v23;
        LODWORD(__p) = *(v23 + 8);
        operator new();
      }

      result = v25;
      if ((v7 & 1) == 0)
      {
        if (sub_69AFD4(a2))
        {
          return 16;
        }

        else
        {
          return 39;
        }
      }
    }

    else
    {
      return v25;
    }
  }

  return result;
}

void sub_6E6D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v27);
  _Unwind_Resume(a1);
}

void sub_6E6DC8(uint64_t a1)
{
  if (*(a1 + 1173) != 1)
  {
    return;
  }

  if (*(a1 + 7544))
  {
    v2 = *(a1 + 7536);
    if (v2)
    {
      do
      {
        v3 = *v2;
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    *(a1 + 7536) = 0;
    v4 = *(a1 + 7528);
    if (v4)
    {
      bzero(*(a1 + 7520), 8 * v4);
    }

    *(a1 + 7544) = 0;
  }

  *__p = 0u;
  *v33 = 0u;
  v34 = 1065353216;
  sub_4D0560();
  v6 = v5;
  for (i = v7; ; ++i)
  {
    sub_4D0568();
    v10 = v9;
    v12 = v11;
    if (v6)
    {
      v13 = sub_4D1DC0(v6);
      v14 = i < v13;
      if (!v10)
      {
        if (i >= v13)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_27;
      }

      v14 = 0;
    }

    v15 = sub_4D1DC0(v10);
    if (v12 >= v15 || !v14)
    {
      break;
    }

    v17 = sub_4D1F50(v6, i);
    if (v17 == sub_4D1F50(v10, v12))
    {
      goto LABEL_27;
    }

LABEL_23:
    v18 = sub_4D1F50(v6, i);
    v31 = *(v18 + 32) | (*(v18 + 36) << 32);
    if (!sub_4D2148(v6, i))
    {
      v19 = sub_4D1F50(v6, i);
      v30 = sub_311544(v19);
      v35 = &v30;
      v20 = sub_70B418(__p, &v30);
      sub_2BB8F4(v20 + 3, &v31);
    }

    if (sub_4D21C8(v6, i) == 1000000000)
    {
      v21 = sub_4D1F50(v6, i);
      v30 = sub_3116D0(v21);
      v35 = &v30;
      v22 = sub_70B418(__p, &v30);
      sub_2BB8F4(v22 + 3, &v31);
    }
  }

  if ((v14 ^ (v12 < v15)))
  {
    goto LABEL_23;
  }

LABEL_27:
  v23 = v33[0];
  if (v33[0])
  {
    do
    {
      if (v23[6] >= 3uLL)
      {
        sub_70B7A8((a1 + 7520), v23 + 2);
      }

      v23 = *v23;
    }

    while (v23);
    v24 = v33[0];
    if (v33[0])
    {
      do
      {
        v26 = *v24;
        v27 = v24[5];
        if (v27)
        {
          do
          {
            v28 = *v27;
            operator delete(v27);
            v27 = v28;
          }

          while (v28);
        }

        v29 = v24[3];
        v24[3] = 0;
        if (v29)
        {
          operator delete(v29);
        }

        operator delete(v24);
        v24 = v26;
      }

      while (v26);
    }
  }

  v25 = __p[0];
  __p[0] = 0;
  if (v25)
  {
    operator delete(v25);
  }
}

void sub_6E7078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6E708C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6E70A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6E70B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6E70C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6E70DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6E70F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6E7104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6E7118(uint64_t *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  LODWORD(v39) = 0;
  v38 = 0;
  *(&v39 + 1) = -1;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  v42 = 0;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v43 = v8;
  v44 = v8;
  v45 = v8;
  *&v46 = -1;
  DWORD2(v46) = 0;
  *&v47 = -1;
  DWORD2(v47) = 0;
  *v48 = 0;
  *&v48[8] = vnegq_f64(v8);
  *&v48[24] = 0;
  LODWORD(v49) = 98;
  *(&v49 + 1) = 0;
  *v50 = 0;
  *&v50[8] = xmmword_229B660;
  *&v50[24] = 0;
  *&v50[32] = 0;
  *&v50[38] = 0;
  if (!a3 && !sub_4D2138(a2) || sub_4D1DC0(a2) - 2 == a3 && !sub_4D2140(a2))
  {
    v10 = *(sub_4D1F50(a2, a3) + 32);
    LODWORD(__src) = v10;
    BYTE6(__src) = BYTE6(v10);
    WORD2(__src) = WORD2(v10);
    v11 = *(sub_4D1F50(a2, a3 + 1) + 32);
    v52 = v11;
    v54 = BYTE6(v11);
    v53 = WORD2(v11);
    v12 = __p[0];
    if (v38 - __p[0] < 9)
    {
      v13 = v38 >> 2;
      if ((v38 >> 2) <= 2)
      {
        v13 = 2;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    if ((__p[1] - __p[0]) > dword_8)
    {
      v16 = __src;
      v17 = v52;
      v18 = v53;
      *(__p[0] + 14) = v54;
      v12[6] = v18;
      *(v12 + 2) = v17;
      *v12 = v16;
      v19 = (v12 + 8);
LABEL_27:
      LODWORD(v39) = 0;
      v28 = v38;
      *a4 = __p[0];
      *(a4 + 8) = v19;
      *(a4 + 16) = v28;
      v38 = 0;
      __p[0] = 0;
      __p[1] = 0;
      goto LABEL_28;
    }

    v14 = (&__src + __p[1] - __p[0]);
    v20 = __p[0] - __p[1] + 8;
    if (v20 < 0x38)
    {
      v15 = __p[1];
    }

    else
    {
      v15 = __p[1];
      if ((__p[0] - &__src) >= &stru_20)
      {
        v21 = (v20 >> 3) + 1;
        v22 = 8 * (v21 & 0x3FFFFFFFFFFFFFFCLL);
        v14 = (v14 + v22);
        v15 = __p[1] + v22;
        v23 = __p[1] + 16;
        v24 = (&__src + __p[1] - __p[0] + 16);
        v25 = v21 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v26 = *v24;
          *(v23 - 1) = *(v24 - 1);
          *v23 = v26;
          v23 += 2;
          v24 += 2;
          v25 -= 4;
        }

        while (v25);
        if (v21 == (v21 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }
    }

    do
    {
      v27 = *v14++;
      *v15 = v27;
      v15 += 8;
    }

    while (v14 != &v55);
LABEL_26:
    v19 = v15;
    goto LABEL_27;
  }

  if (sub_6E98B4(a1, a2, a3, __p) || (sub_605AB8(a1, a2, a3, __p), v9) || sub_6E9A7C(a1, a2, a3, __p) || sub_6D8F54(a1, a2, a3, __p) || sub_6E9D6C(a1, a2, a3, __p))
  {
    *a4 = *__p;
    *(a4 + 16) = v38;
    __p[1] = 0;
    v38 = 0;
    __p[0] = 0;
LABEL_28:
    *(a4 + 24) = v39;
    *(a4 + 40) = *v40;
    *(a4 + 56) = v41;
    v40[1] = 0;
    v41 = 0;
    v40[0] = 0;
    *(a4 + 64) = v42;
    v29 = v43;
    v30 = v44;
    *(a4 + 104) = v45;
    *(a4 + 88) = v30;
    *(a4 + 72) = v29;
    v31 = v46;
    v32 = v47;
    v33 = *v48;
    *(a4 + 168) = *&v48[16];
    *(a4 + 152) = v33;
    *(a4 + 136) = v32;
    *(a4 + 120) = v31;
    v34 = v49;
    v35 = *v50;
    v36 = *&v50[16];
    *(a4 + 230) = *&v50[30];
    *(a4 + 216) = v36;
    *(a4 + 200) = v35;
    *(a4 + 184) = v34;
    goto LABEL_29;
  }

  sub_6EA2C4(a1, a2, a3, 1, a4);
  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

LABEL_29:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t sub_6E75D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = **a4;
  v10 = sub_2B51D8(*a1, v9 & 0xFFFFFFFFFFFFLL);
  if (*(v8 + 7772) == 1)
  {
    v11 = sub_30C50C(v8 + 3896, v9, 0);
    v12 = &v11[-*v11];
    if (*v12 < 5u)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 + 2);
      if (v13)
      {
        v13 += &v11[*&v11[v13]];
      }
    }

    v14 = (v13 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v13 + ((v9 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v14 = 0;
  }

  v25[0] = v10;
  v25[1] = v14;
  v25[2] = sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
  v25[3] = v15;
  v25[4] = v9;
  v16 = *a1;
  v17 = *(*(a4 + 8) - 8);
  sub_2B51D8(*a1, v17 & 0xFFFFFFFFFFFFLL);
  if (*(v16 + 7772) == 1)
  {
    sub_30C50C(v16 + 3896, v17, 0);
  }

  sub_31D7E8(v16, v17 & 0xFFFFFFFFFFFFLL, 1);
  v18 = *(a4 + 24);
  result = sub_394BD0();
  if ((result & 1) == 0 && ((v18 - 4) > 0x3E || ((1 << (v18 - 4)) & 0x600000008003008DLL) == 0) && v18)
  {
    v20 = *(a3 + 112);
    if (v20 > 3)
    {
      switch(v20)
      {
        case 4:
          v23 = *(a3 + 104);
          v26 = 0u;
          v27 = 0u;
          v28 = 0x1000000000000;
          return sub_6ED1FC(a1, a2, a3, (a3 + 80), v23, &v26, a4 + 40);
        case 5:
          sub_6F3BD8(a1, a2, a3);
        case 6:
          return sub_766CE0(a1 + 7288, a4 + 40);
      }
    }

    else if ((v20 - 1) < 2)
    {
      *(a4 + 64) = 0;
      LOBYTE(v26) = 0;
      if (v20 == 1)
      {
        v22 = (a1 + 816);
      }

      else
      {
        v22 = (a1 + 792);
      }

      sub_6E4B34(a4 + 40, v22, &v26);
      LOBYTE(v26) = 1;
      return sub_6E4B34(a4 + 40, (a1 + 848), &v26);
    }

    else if (v20)
    {
      if (v20 == 3)
      {
        v21 = *(a3 + 104);
        if (v21 != -1)
        {
          return sub_6ED1FC(a1, a2, (a3 + 40), (a3 + 80), v21, a3, a4 + 40);
        }
      }
    }

    else
    {
      v24 = *(a3 + 104);
      v26 = 0u;
      v27 = 0u;
      v28 = 0x1000000000000;
      return sub_6ED1FC(a1, a2, v25, (a3 + 80), v24, &v26, a4 + 40);
    }
  }

  return result;
}

void sub_6E78F4(uint64_t a1, void *a2)
{
  v2 = a2[1263] - a2[1262];
  if (v2)
  {
    v4 = 0;
    v5 = 0xEF7BDEF7BDEF7BDFLL * (v2 >> 3);
    v6 = 2;
    v7 = 1;
    v114 = v5;
    do
    {
      v8 = sub_6D3F8C(a2 + 1262, v4);
      if (*v8 != *(v8 + 8))
      {
        v9 = v8;
        if ((*(v8 + 240) & 1) == 0)
        {
          v10 = *(a1 + 712);
          v11 = sub_6D3F8C(a2 + 1262, v4);
          v12 = v4 + 1;
          v13 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
          v115 = v4 + 1;
          if (v4 + 1 >= v13)
          {
            v19 = -1;
          }

          else
          {
            v14 = v11[4] + ((v11[1] - *v11) >> 3) - 1;
            if (v13 <= v7)
            {
              v15 = v7;
            }

            else
            {
              v15 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
            }

            while (1)
            {
              v16 = sub_6D3F8C(a2 + 1262, v12);
              if (*v16 != *(v16 + 8) && *(v16 + 24) != 0)
              {
                break;
              }

              if (v15 == ++v12)
              {
                v19 = -1;
                goto LABEL_22;
              }
            }

            if (sub_4D2544(a2, v14, 1, *(v16 + 32), 1u, v17) > v10)
            {
              v19 = -1;
            }

            else
            {
              v19 = v12;
            }

LABEL_22:
            v5 = v114;
          }

          v20.i64[0] = -1;
          v20.i64[1] = -1;
          if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(v9 + 72), v20), vceqq_s64(*(v9 + 88), v20))))) & 1) == 0 && (*(v9 + 104) & *(v9 + 112)) == -1 && *(v9 + 120) == -1)
          {
            if (v19 == -1 || (v22 = sub_6D3F8C(a2 + 1262, v19), v23.i64[0] = -1, v23.i64[1] = -1, (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(v22 + 72), v23), vceqq_s64(*(v22 + 88), v23))))) & 1) == 0) && ((*(v22 + 104) & *(v22 + 112)) == -1 ? (v24 = *(v22 + 120) == -1) : (v24 = 0), v24))
            {
              v25 = *(v9 + 24);
              if (v25 <= 11)
              {
                if (v25 != 3)
                {
                  if (v25 == 5)
                  {
                    v34 = sub_4D1DB8(a2);
                    v35 = *(a1 + 656);
                    v36 = sub_6D3F8C(a2 + 1262, v4);
                    v37 = v4;
                    while (v37)
                    {
                      v38 = sub_6D3F8C(a2 + 1262, --v37);
                      v40 = *(v38 + 8);
                      if (*v38 != v40 && *(v38 + 24) != 0)
                      {
                        v42 = *(v38 + 32);
                        if (v35)
                        {
                          v43 = v42 + 1;
                        }

                        else
                        {
                          v43 = v42 + ((v40 - *v38) >> 3) - 1;
                        }

                        if (sub_4D2544(a2, v43, 1, *(v36 + 32), 1u, v39) <= v34 && *(sub_6D3F8C(a2 + 1262, v37) + 24) == 5)
                        {
                          goto LABEL_121;
                        }

                        goto LABEL_122;
                      }
                    }
                  }

                  goto LABEL_122;
                }

                if (*(v9 + 224) & 1) != 0 || (*(v9 + 225) & 1) != 0 || (*(v9 + 226))
                {
LABEL_122:
                  v80 = *(a1 + 640);
                  v81 = sub_6D3F8C(a2 + 1262, v4);
                  v82 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
                  if (v115 < v82)
                  {
                    v116 = v81[4] + ((v81[1] - *v81) >> 3) - 1;
                    if (v82 <= v7)
                    {
                      v82 = v7;
                    }

                    v83 = 1 - v82;
                    v84 = v6;
                    while (1)
                    {
                      v85 = sub_6D3F8C(a2 + 1262, v84 - 1);
                      if (*v85 != *(v85 + 8) && *(v85 + 24) != 0)
                      {
                        break;
                      }

                      ++v84;
                      if (v83 + v84 == 2)
                      {
                        goto LABEL_137;
                      }
                    }

                    v88 = sub_4D2544(a2, v116, 1, *(v85 + 32), 1u, v86);
                    if (v84)
                    {
                      if (v88 <= v80)
                      {
                        v89 = sub_6D3F8C(a2 + 1262, v84 - 1);
                        if (sub_6E87C8(a1, v9, v89))
                        {
                          *(v9 + 24) = 0;
                          *(sub_6D3F8C(a2 + 1262, v84 - 1) + 24) = 0;
                        }
                      }
                    }
                  }

LABEL_137:
                  v90 = *(v9 + 24);
                  v5 = v114;
                  if (((v90 - 20) <= 0x2E && ((1 << (v90 - 20)) & 0x6F0000006783) != 0 || (v90 - 1) < 3) && (*(v9 + 224) & 1) == 0)
                  {
                    v91 = *(a1 + 648);
                    v92 = sub_6D3F8C(a2 + 1262, v4);
                    v93 = v4;
                    while (v93)
                    {
                      v94 = sub_6D3F8C(a2 + 1262, --v93);
                      v96 = *(v94 + 8);
                      if (*v94 != v96 && *(v94 + 24) != 0)
                      {
                        if (sub_4D2544(a2, *(v94 + 32) + ((v96 - *v94) >> 3) - 1, 1, *(v92 + 32), 1u, v95) <= v91)
                        {
                          v98 = sub_6D3F8C(a2 + 1262, v93);
                          v99.i64[0] = *(v98 + 120);
                          v99.i64[1] = *(v9 + 72);
                          v100.i64[0] = -1;
                          v100.i64[1] = -1;
                          if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(*(v98 + 72), v100), vceqq_s64(*(v98 + 88), v100)), vuzp1q_s32(vceqq_s64(*(v98 + 104), v100), vceqq_s64(v99, v100)))))) & 1) == 0)
                          {
                            v101.i64[0] = -1;
                            v101.i64[1] = -1;
                            v102 = (vaddvq_s32(vbicq_s8(xmmword_22671F0, vuzp1q_s32(vceqq_s64(*(v9 + 80), v101), vceqq_s64(*(v9 + 96), v101)))) & 0xF) == 0 && *(v9 + 112) == -1;
                            if (v102 && *(v9 + 120) == -1)
                            {
                              v104 = *(v98 + 24);
                              switch(v104)
                              {
                                case 1:
                                case 20:
                                case 27:
                                case 29:
                                case 33:
                                case 60:
                                case 62:
                                case 65:
                                  v105 = *(v9 + 24);
                                  if ((v105 - 20) <= 0x2D && ((1 << (v105 - 20)) & 0x250000002281) != 0 || v105 == 1)
                                  {
                                    goto LABEL_165;
                                  }

                                  goto LABEL_174;
                                case 2:
                                case 21:
                                case 28:
                                case 30:
                                case 34:
                                case 61:
                                case 63:
                                case 66:
                                  v105 = *(v9 + 24);
                                  if (((v105 - 21) > 0x2D || ((1 << (v105 - 21)) & 0x250000002281) == 0) && v105 != 2)
                                  {
                                    goto LABEL_174;
                                  }

                                  goto LABEL_165;
                                default:
                                  v105 = *(v9 + 24);
LABEL_174:
                                  if ((v104 - 41) < 0x13 || v105 == 3)
                                  {
LABEL_165:
                                    v106 = *(*(v9 + 8) - 8);
                                    v121 = v106;
                                    v107 = *(*(v98 + 8) - 8);
                                    v120 = v107;
                                    if (v106)
                                    {
                                      if (v107)
                                      {
                                        v108 = sub_31DDCC(*a1, v106);
                                        if (v108 <= 0xFFFFFFFEFFFFFFFFLL)
                                        {
                                          if (v108)
                                          {
                                            v109 = *a1;
                                            sub_6D6CBC(a1, &v121, v119);
                                            sub_6D6CBC(a1, &v120, v118);
                                            if (sub_31EE90(v109, v119[4] & 0xFFFFFFFFFFFFFFLL, v118[4] & 0xFFFFFFFFFFFFFFLL))
                                            {
                                              sub_6E8D50(a1, a2, v93, v4);
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }

                                  break;
                              }
                            }
                          }
                        }

                        goto LABEL_4;
                      }
                    }
                  }

                  goto LABEL_4;
                }
              }

              else if (v25 != 12)
              {
                if (v25 != 21)
                {
                  if (v25 == 20)
                  {
                    v26 = *(a1 + 592);
                    v27 = sub_6D3F8C(a2 + 1262, v4);
                    v28 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
                    if (v115 < v28)
                    {
                      v111 = v27[4] + ((v27[1] - *v27) >> 3) - 1;
                      if (v28 <= v7)
                      {
                        v28 = v7;
                      }

                      v29 = 1 - v28;
                      v30 = v6;
                      while (1)
                      {
                        v31 = sub_6D3F8C(a2 + 1262, v30 - 1);
                        if (*v31 != *(v31 + 8) && *(v31 + 24) != 0)
                        {
                          break;
                        }

                        ++v30;
                        if (v29 + v30 == 2)
                        {
                          goto LABEL_122;
                        }
                      }

                      v79 = sub_4D2544(a2, v111, 1, *(v31 + 32), 1u, v32);
                      if (v30 && v79 <= v26 && *(sub_6D3F8C(a2 + 1262, v30 - 1) + 24) == 1)
                      {
                        goto LABEL_121;
                      }
                    }
                  }

                  goto LABEL_122;
                }

                v44 = *(a1 + 592);
                v45 = sub_6D3F8C(a2 + 1262, v4);
                v46 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
                if (v115 >= v46)
                {
                  goto LABEL_122;
                }

                v112 = v45[4] + ((v45[1] - *v45) >> 3) - 1;
                if (v46 <= v7)
                {
                  v46 = v7;
                }

                v47 = 1 - v46;
                v48 = v6;
                while (1)
                {
                  v49 = sub_6D3F8C(a2 + 1262, v48 - 1);
                  if (*v49 != *(v49 + 8) && *(v49 + 24) != 0)
                  {
                    break;
                  }

                  ++v48;
                  if (v47 + v48 == 2)
                  {
                    goto LABEL_122;
                  }
                }

                v78 = sub_4D2544(a2, v112, 1, *(v49 + 32), 1u, v50);
                if (!v48 || v78 > v44 || *(sub_6D3F8C(a2 + 1262, v48 - 1) + 24) != 2)
                {
                  goto LABEL_122;
                }

LABEL_121:
                *(v9 + 24) = 0;
                goto LABEL_122;
              }

              v52 = *(a1 + 632);
              v53 = *(a1 + 656);
              v54 = sub_6D3F8C(a2 + 1262, v4);
              v55 = v4;
              do
              {
                if (!v55)
                {
                  v62 = -1;
                  goto LABEL_92;
                }

                v56 = sub_6D3F8C(a2 + 1262, --v55);
                v58 = *(v56 + 8);
              }

              while (*v56 == v58 || *(v56 + 24) == 0);
              v60 = *(v56 + 32);
              if (v53)
              {
                v61 = v60 + 1;
              }

              else
              {
                v61 = v60 + ((v58 - *v56) >> 3) - 1;
              }

              if (sub_4D2544(a2, v61, 1, *(v54 + 32), 1u, v57) > v52)
              {
                v62 = -1;
              }

              else
              {
                v62 = v55;
              }

LABEL_92:
              v63 = *(a1 + 624);
              v64 = sub_6D3F8C(a2 + 1262, v4);
              v65 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
              if (v115 < v65)
              {
                v110 = v63;
                v113 = v62;
                v66 = v64[4] + ((v64[1] - *v64) >> 3) - 1;
                if (v65 <= v7)
                {
                  v65 = v7;
                }

                v67 = 1 - v65;
                v68 = v6;
                while (1)
                {
                  v69 = v68 - 1;
                  v70 = sub_6D3F8C(a2 + 1262, v68 - 1);
                  if (*v70 != *(v70 + 8) && *(v70 + 24) != 0)
                  {
                    break;
                  }

                  ++v68;
                  if (v67 + v68 == 2)
                  {
                    v73 = 0;
                    v74 = -1;
LABEL_108:
                    v62 = v113;
                    goto LABEL_109;
                  }
                }

                v75 = sub_4D2544(a2, v66, 1, *(v70 + 32), 1u, v71);
                v73 = 0;
                v74 = -1;
                if (!v68)
                {
                  goto LABEL_108;
                }

                v62 = v113;
                if (v75 > v110)
                {
                  goto LABEL_109;
                }

                v5 = v114;
                if ((*(sub_6D3F8C(a2 + 1262, v69) + 245) & 1) == 0)
                {
                  v73 = 1;
                  v74 = v69;
                  goto LABEL_108;
                }

                goto LABEL_4;
              }

              v73 = 0;
              v74 = -1;
LABEL_109:
              if (v62 == -1 || (v76 = sub_6D3F8C(a2 + 1262, v62), *v76 == v76[1]))
              {
                if (!v73)
                {
                  goto LABEL_122;
                }

                v77 = sub_6D3F8C(a2 + 1262, v74);
                if (*v77 == v77[1])
                {
                  goto LABEL_122;
                }
              }

              goto LABEL_121;
            }
          }

          sub_6E846C(a1, a2, v4);
        }
      }

LABEL_4:
      ++v4;
      ++v7;
      ++v6;
    }

    while (v4 != v5);
  }
}

uint64_t sub_6E846C(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = a3;
  result = sub_6D3F8C(a2 + 1262, a3);
  if (*(result + 112) != -1)
  {
    return result;
  }

  v7 = result;
  v8 = *(a1 + 712);
  v9 = sub_6D3F8C(a2 + 1262, v3);
  v10 = v3 + 1;
  v11 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
  if (v3 + 1 > v11)
  {
    v12 = v3 + 1;
  }

  else
  {
    v12 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
  }

  if (v3 + 1 >= v11)
  {
LABEL_14:
    v10 = -1;
    if (*(v7 + 72) == -1)
    {
      goto LABEL_19;
    }

LABEL_39:
    if (*(v7 + 96) == -1 && *(v7 + 104) == -1 && v10 != -1)
    {
      v29 = sub_6D3F8C(a2 + 1262, v10);
      if (*(v29 + 96) != -1 || *(v29 + 104) != -1)
      {
        v30 = sub_6D3F8C(a2 + 1262, v10);
        *(v7 + 96) = v30[12];
        *(v7 + 104) = v30[13];
        *(v7 + 136) = v30[17];
      }
    }

    goto LABEL_49;
  }

  v13 = v9[4] + ((v9[1] - *v9) >> 3) - 1;
  while (1)
  {
    v14 = sub_6D3F8C(a2 + 1262, v10);
    if (*v14 != *(v14 + 8) && *(v14 + 24) != 0)
    {
      break;
    }

    if (v12 == ++v10)
    {
      goto LABEL_14;
    }
  }

  if (sub_4D2544(a2, v13, 1, *(v14 + 32), 1u, v15) > v8)
  {
    v10 = -1;
  }

  if (*(v7 + 72) != -1)
  {
    goto LABEL_39;
  }

LABEL_19:
  v17 = 0;
  v18.i64[0] = -1;
  v18.i64[1] = -1;
  v19 = *(v7 + 120);
  v20 = *(v7 + 88);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(v7 + 80), v18), vceqq_s64(*(v7 + 96), v18))))) & 1) != 0 || *(v7 + 112) != -1 || v19 != -1)
  {
    goto LABEL_34;
  }

  v17 = 0;
  if (*(v7 + 224))
  {
    v20 = -1;
    goto LABEL_34;
  }

  v20 = -1;
  if (v10 == -1)
  {
LABEL_34:
    if (!v17 && v20 == -1 && v19 == -1)
    {
      goto LABEL_49;
    }

    goto LABEL_39;
  }

  v21 = sub_6D3F8C(a2 + 1262, v10);
  if (v21[9] == -1 && v21[10] == -1 && v21[11] == -1 && v21[15] == -1 && v21[12] == -1 && v21[13] == -1)
  {
    v20 = *(v7 + 88);
    v19 = *(v7 + 120);
    v17 = *(v7 + 72) != -1;
    goto LABEL_34;
  }

  if (sub_72E82C(a1 + 7208, v7))
  {
    v22 = sub_6D3F8C(a2 + 1262, v10);
    *(v7 + 72) = *(v22 + 72);
    v23 = *(v22 + 104);
    v24 = *(v22 + 120);
    v25 = *(v22 + 132);
    *(v7 + 88) = *(v22 + 88);
    *(v7 + 132) = v25;
    *(v7 + 120) = v24;
    *(v7 + 104) = v23;
    sub_72FAF8(a1 + 7208, v7);
  }

LABEL_49:
  v31 = *(a1 + 712);
  v32 = *(a1 + 656);
  result = sub_6D3F8C(a2 + 1262, v3);
  v33 = result;
  while (v3)
  {
    result = sub_6D3F8C(a2 + 1262, --v3);
    v35 = *(result + 8);
    if (*result != v35 && *(result + 24) != 0)
    {
      v37 = *(result + 32);
      if (v32)
      {
        v38 = v37 + 1;
      }

      else
      {
        v38 = v37 + ((v35 - *result) >> 3) - 1;
      }

      result = sub_4D2544(a2, v38, 1, *(v33 + 32), 1u, v34);
      if (result <= v31)
      {
        v39 = sub_6D3F8C(a2 + 1262, v3);
        result = sub_6E4010(v7 + 72, v39 + 72);
        if (result)
        {
          *(v7 + 24) = 0;
        }
      }

      return result;
    }
  }

  return result;
}

BOOL sub_6E87C8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a2[28])
  {
    return 0;
  }

  v5 = *(a2 + 6);
  v6 = v5 - 20;
  v7 = (v5 - 20) > 0x2E || ((1 << (v5 - 20)) & 0x6F0000006783) == 0;
  if (v7 && (v5 - 1) >= 2)
  {
    return 0;
  }

  v8 = v6 > 0x2D;
  v9 = (1 << v6) & 0x250000002281;
  if (!v8 && v9 != 0 || v5 == 1)
  {
    v12 = *(a3 + 24);
    if (((v12 - 21) > 0x2D || ((1 << (v12 - 21)) & 0x250000002281) == 0) && v12 != 2)
    {
      return 0;
    }
  }

  else
  {
    v23 = *(a3 + 24);
    if (((v23 - 20) > 0x2D || ((1 << (v23 - 20)) & 0x250000002281) == 0) && v23 != 1)
    {
      return 0;
    }
  }

  if (*a2 == a2[1])
  {
    return 0;
  }

  v13 = *(a3 + 8);
  if (*a3 == v13)
  {
    return 0;
  }

  v15 = **a2;
  v16 = *(v13 - 8);
  v17 = *a1;
  v18 = sub_2B51D8(*a1, v16 & 0xFFFFFFFFFFFFLL);
  if (*(v17 + 7772) == 1)
  {
    v19 = sub_30C50C(v17 + 3896, v16, 0);
    v20 = &v19[-*v19];
    if (*v20 < 5u)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(v20 + 2);
      if (v21)
      {
        v21 += &v19[*&v19[v21]];
      }
    }

    v22 = v21 + ((v16 >> 30) & 0x3FFFC) + 4 + *(v21 + ((v16 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v22 = 0;
  }

  v64 = v18;
  v65[0] = v22;
  v65[1] = sub_31D7E8(v17, v16 & 0xFFFFFFFFFFFFLL, 1);
  v65[2] = v24;
  v65[3] = v16;
  result = sub_712D18((a1 + 179), &v64);
  if (result)
  {
    v26 = *a1;
    v27 = sub_2B51D8(*a1, v15 & 0xFFFFFFFFFFFFLL);
    if (*(v26 + 7772) == 1)
    {
      v28 = sub_30C50C(v26 + 3896, v15, 0);
      v29 = &v28[-*v28];
      if (*v29 < 5u)
      {
        v30 = 0;
      }

      else
      {
        v30 = *(v29 + 2);
        if (v30)
        {
          v30 += &v28[*&v28[v30]];
        }
      }

      v31 = (v30 + ((v15 >> 30) & 0x3FFFC) + 4 + *(v30 + ((v15 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v31 = 0;
    }

    v32 = sub_31D7E8(v26, v15 & 0xFFFFFFFFFFFFLL, 1);
    v68[0] = v27;
    v68[1] = v31;
    v68[2] = v32;
    v68[3] = v33;
    v69 = v15;
    v34 = *a1;
    v35 = sub_2B51D8(*a1, v16 & 0xFFFFFFFFFFFFLL);
    if (*(v34 + 7772) == 1)
    {
      v36 = sub_30C50C(v34 + 3896, v16, 0);
      v37 = &v36[-*v36];
      if (*v37 < 5u)
      {
        v38 = 0;
      }

      else
      {
        v38 = *(v37 + 2);
        if (v38)
        {
          v38 += &v36[*&v36[v38]];
        }
      }

      v39 = (v38 + ((v16 >> 30) & 0x3FFFC) + 4 + *(v38 + ((v16 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v39 = 0;
    }

    v40 = sub_31D7E8(v34, v16 & 0xFFFFFFFFFFFFLL, 1);
    v66[0] = v35;
    v66[1] = v39;
    v66[2] = v40;
    v66[3] = v41;
    v67 = v16;
    v42 = (v68[0] - *v68[0]);
    v43 = *v42;
    if (BYTE6(v69))
    {
      if (v43 < 0x47)
      {
        goto LABEL_57;
      }

      v44 = v42[35];
      if (!v44)
      {
        goto LABEL_57;
      }

      v45 = 4096;
    }

    else
    {
      if (v43 < 0x47)
      {
        goto LABEL_57;
      }

      v44 = v42[35];
      if (!v44)
      {
        goto LABEL_57;
      }

      v45 = 2048;
    }

    if ((*(v68[0] + v44) & v45) != 0)
    {
      v46 = BYTE6(v16);
      v47 = 1;
      goto LABEL_58;
    }

LABEL_57:
    v47 = sub_3137AC(v68);
    v35 = v66[0];
    v46 = BYTE6(v67);
LABEL_58:
    v48 = (v35 - *v35);
    v49 = *v48;
    if (v46)
    {
      if (v49 < 0x47)
      {
        goto LABEL_67;
      }

      v50 = v48[35];
      if (!v48[35])
      {
        goto LABEL_67;
      }

      v51 = 4096;
    }

    else
    {
      if (v49 < 0x47)
      {
        goto LABEL_67;
      }

      v50 = v48[35];
      if (!v48[35])
      {
        goto LABEL_67;
      }

      v51 = 2048;
    }

    if ((*(v35 + v50) & v51) != 0)
    {
      v52 = 1;
      goto LABEL_68;
    }

LABEL_67:
    v52 = sub_3137AC(v66);
LABEL_68:
    if (v47 == v52)
    {
      sub_5E94A4(*a1, v15, 1, &v62);
      sub_6E9730(&v62, &v64);
      sub_5E9738(&v62);
      sub_5E94A4(*a1, v16, 1, v61);
      sub_6E9730(v61, &v62);
      sub_5E9738(v61);
      if (sub_31052C(&v64) && sub_31052C(&v62) && sub_BB4E4(v65, v63) && (v53 = sub_6D89E0(*a1, v15 & 0xFFFFFFFFFFFFLL), v53 == sub_6D89E0(*a1, v16 & 0xFFFFFFFFFFFFLL)))
      {
        v60 = a1;
        v54 = sub_6E983C(&v60, a2, a2[29] + 1, (a2[1] - *a2) >> 3);
        if (v54)
        {
          v55 = *(a3 + 232);
          v56 = *a3;
          v61[0] = v60;
          if (v55)
          {
            v57 = &v56[v55];
            do
            {
              v54 = sub_704F54(v61, v56++);
              if (v56 == v57)
              {
                v58 = 0;
              }

              else
              {
                v58 = v54;
              }
            }

            while ((v58 & 1) != 0);
          }

          else
          {
            v54 = 1;
          }
        }

        v59 = v54;
      }

      else
      {
        v59 = 0;
      }

      sub_310F30(&v62);
      sub_310F30(&v64);
      return v59;
    }

    return 0;
  }

  return result;
}

void sub_6E8CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_310F30(&a13);
  sub_310F30(&a31);
  _Unwind_Resume(a1);
}

void sub_6E8D50(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = 0xEF7BDEF7BDEF7BDFLL * ((*(a2 + 10104) - *(a2 + 10096)) >> 3);
  if (v4 <= a3 || v4 <= a4)
  {
    return;
  }

  v10 = sub_6D3F8C((a2 + 10096), a3);
  v11 = sub_6D3F8C((a2 + 10096), a4);
  if (*v10 == *(v10 + 8))
  {
    return;
  }

  v12 = v11;
  if (*v11 == *(v11 + 8))
  {
    return;
  }

  if (!*(v10 + 24) || *(v11 + 24) == 0)
  {
    return;
  }

  sub_5EF9A8(&v37, v10);
  sub_6D7B84(&v37, v12, v14, v15);
  v34 = a1;
  if (a3 + 1 >= a4)
  {
    sub_4D0560();
    v23 = v22;
    v25 = v24;
    v26 = *(v10 + 32);
    v28 = *v10;
    v27 = *(v10 + 8);
    sub_4D0560();
    sub_6D7DBC(v23, v25 + v26 + ((v27 - v28) >> 3) - 1, v30, *(v12 + 32) + v29 + ((*(v12 + 8) - *v12) >> 3), &v37);
    sub_6D7F40(&v37);
    v31 = *(v10 + 24);
    if ((v31 - 6) >= 2)
    {
      v32 = v31 - 86;
      if ((v31 - 86) >= 2 && (v31 - 41) >= 0x13)
      {
        v33 = v31 - 7;
        if ((v33 > 0x3B || ((1 << v33) & 0xE00000000C38011) == 0) && v32 >= 2)
        {
          v39 = sub_6E918C(v34, a2, v10, v12);
          sub_6E94BC((v10 + 40), (v12 + 40), &v35);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          *__p = v35;
          v41 = v36;
        }
      }
    }

    sub_6D8620(v10, &v37);
    sub_6D86EC(v12);
    sub_706E58(0, 0, a2);
  }

  else
  {
    v16 = sub_6D3F8C((a2 + 10096), a3 + 1);
    v17 = *v16;
    v18 = *(v16 + 8);
    if (!*(v16 + 24))
    {
      v19 = v18 - v17;
      goto LABEL_22;
    }

    v19 = v18 - v17;
    v20 = *v12;
    if (v18 - v17 == *(v12 + 8) - *v12)
    {
      if (v17 != v18)
      {
        v21 = *v16;
        while (__PAIR64__(*(v21 + 2), *v21) == __PAIR64__(WORD2(*v20), *v20) && v21[6] == BYTE6(*v20))
        {
          v21 += 8;
          ++v20;
          if (v21 == v18)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_26;
      }

LABEL_22:
      sub_3790B0(&v37, __dst, v17, v18, v19 >> 3);
      operator new();
    }
  }

LABEL_26:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v37)
  {
    __dst = v37;
    operator delete(v37);
  }
}

void sub_6E9134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_5ECFBC(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_6E918C(uint64_t a1, uint64_t a2, unint64_t **a3, unint64_t **a4)
{
  v8 = *a1;
  v9 = **a3;
  v10 = sub_2B51D8(*a1, v9 & 0xFFFFFFFFFFFFLL);
  if (*(v8 + 7772) == 1)
  {
    v11 = sub_30C50C(v8 + 3896, v9, 0);
    v12 = &v11[-*v11];
    if (*v12 < 5u)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 + 2);
      if (v13)
      {
        v13 += &v11[*&v11[v13]];
      }
    }

    v14 = v13 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v13 + ((v9 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v14 = 0;
  }

  v48[0] = v10;
  v48[1] = v14;
  v48[2] = sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
  v48[3] = v15;
  v48[4] = v9;
  v16 = a3[1];
  v17 = *a1;
  v18 = *(v16 - 1);
  v19 = sub_2B51D8(*a1, v18 & 0xFFFFFFFFFFFFLL);
  if (*(v17 + 7772) == 1)
  {
    v20 = sub_30C50C(v17 + 3896, v18, 0);
    v21 = &v20[-*v20];
    if (*v21 < 5u)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v21 + 2);
      if (v22)
      {
        v22 += &v20[*&v20[v22]];
      }
    }

    v23 = v22 + ((v18 >> 30) & 0x3FFFC) + 4 + *(v22 + ((v18 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v23 = 0;
  }

  v47[0] = v19;
  v47[1] = v23;
  v47[2] = sub_31D7E8(v17, v18 & 0xFFFFFFFFFFFFLL, 1);
  v47[3] = v24;
  v47[4] = v18;
  v25 = *a1;
  v26 = **a4;
  v27 = sub_2B51D8(*a1, v26 & 0xFFFFFFFFFFFFLL);
  if (*(v25 + 7772) == 1)
  {
    v28 = sub_30C50C(v25 + 3896, v26, 0);
    v29 = &v28[-*v28];
    if (*v29 < 5u)
    {
      v30 = 0;
    }

    else
    {
      v30 = *(v29 + 2);
      if (v30)
      {
        v30 += &v28[*&v28[v30]];
      }
    }

    v31 = v30 + ((v26 >> 30) & 0x3FFFC) + 4 + *(v30 + ((v26 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v31 = 0;
  }

  v46[0] = v27;
  v46[1] = v31;
  v46[2] = sub_31D7E8(v25, v26 & 0xFFFFFFFFFFFFLL, 1);
  v46[3] = v32;
  v46[4] = v26;
  v33 = a4[1];
  v34 = *a1;
  v35 = *(v33 - 1);
  v36 = sub_2B51D8(*a1, v35 & 0xFFFFFFFFFFFFLL);
  if (*(v34 + 7772) == 1)
  {
    v37 = sub_30C50C(v34 + 3896, v35, 0);
    v38 = &v37[-*v37];
    if (*v38 < 5u)
    {
      v39 = 0;
    }

    else
    {
      v39 = *(v38 + 2);
      if (v39)
      {
        v39 += &v37[*&v37[v39]];
      }
    }

    v40 = v39 + ((v35 >> 30) & 0x3FFFC) + 4 + *(v39 + ((v35 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v40 = 0;
  }

  v45[0] = v36;
  v45[1] = v40;
  v45[2] = sub_31D7E8(v34, v35 & 0xFFFFFFFFFFFFLL, 1);
  v45[3] = v41;
  v45[4] = v35;
  v42 = sub_715540(a1 + 1432, a2, v48, v47, 0);
  v43 = sub_715540(a1 + 1432, a2, v46, v45, 0);
  return sub_70DD90((a1 + 1432), 0, v42 + v43);
}